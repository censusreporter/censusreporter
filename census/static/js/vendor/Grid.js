////////////////////////////////////
//
// Grid
// MIT-style license. Copyright 2012 Matt V. Murphy
//
////////////////////////////////////
(function(window, document, undefined) {
	"use strict";
	
	var GridProto;
	var Grid = function(element, options) {
		if ((this.element = (typeof(element) === "string") ? $(element) : element)) {
			this.css = { idRulePrefix : "#" + this.element.id + " ", sheet : null, rules : {} };
			this.columns = 0;
			this.columnWidths = [];
			this.cellData = { head : [], body : [], foot : [] };
			this.alignTimer = null;
			this.rawData = [];
			this.sortCache = {};
			this.lastSortedColumn = [-1, null];
			this.selectedIndexes = [];
			this.usesTouch = (window.ontouchstart !== undefined);
			this.startEvt = (this.usesTouch) ? "touchstart" : "mousedown";
			this.moveEvt = (this.usesTouch) ? "touchmove" : "mousemove";
			this.endEvt = (this.usesTouch) ? "touchend" : "mouseup";
			this.setOptions(options);
			this.init();
		}
	};
	
	//////////////////////////////////////////////////////////////////////////////////
	(GridProto = Grid.prototype).nothing = function(){};
	
	//////////////////////////////////////////////////////////////////////////////////
	GridProto.setOptions = function(options) {
		var hasOwnProp = Object.prototype.hasOwnProperty, 
		    option;
		
		this.options = {
			srcType : "", // "dom", "json", "xml"
			srcData : "", 
			allowGridResize : false, 
			allowColumnResize : false, 
			allowClientSideSorting : false, 
			allowSelections : false, 
			allowMultipleSelections : false, 
			showSelectionColumn : false, 
			onColumnSort : this.nothing, 
			onResizeGrid : this.nothing, 
			onResizeGridEnd : this.nothing, 
			onResizeColumn : this.nothing, 
			onResizeColumnEnd : this.nothing, 
			onRowSelect : this.nothing, 
			onLoad : this.nothing, 
			supportMultipleGridsInView : false, 
			fixedCols : 0, 
			selectedBgColor : "#eaf1f7", 
			fixedSelectedBgColor : "#dce7f0", 
			colAlign : [], // "left", "center", "right"
			colBGColors : [], 
			colSortTypes : [], // "string", "number", "date", "custom", "none"
			customSortCleaner : null
		};
		
		if (options) {
			for (option in this.options) {
				if (hasOwnProp.call(this.options, option) && options[option] !== undefined) {
					this.options[option] = options[option];
				}
			}
		}
		
		this.options.allowColumnResize = this.options.allowColumnResize && !this.usesTouch;
		this.options.allowMultipleSelections = this.options.allowMultipleSelections && this.options.allowSelections;
		this.options.showSelectionColumn = this.options.showSelectionColumn && this.options.allowSelections;
		this.options.fixedCols = (!this.usesTouch) ? this.options.fixedCols : 0;
	};
	
	//////////////////////////////////////////////////////////////////////////////////
	GridProto.init = function() {
		var srcType = this.options.srcType, 
		    srcData = this.options.srcData, 
		    data;
		
		this.generateSkeleton();
		this.addEvents();
		
		// DOM:
		if (srcType === "dom" && (srcData = (typeof(srcData) === "string") ? $(srcData) : srcData)) {
			this.convertData(this.convertDomDataToJsonData(srcData));
			
		// JSON:
		} else if (srcType === "json" && (data = parseJSON(srcData))) {
			this.convertData(data);
			
		// XML:
		} else if (srcType === "xml" && (data = parseXML(srcData))) {
			this.convertData(this.convertXmlDataToJsonData(data));
		}
		
		this.generateGrid();
		this.displayGrid();
	};
	
	//////////////////////////////////////////////////////////////////////////////////
	GridProto.generateSkeleton = function() {
		var doc = document, 
		    elems = [["base", "g_Base", "docFrag"], 
		             ["head", "g_Head", "base"], 
		             ["headFixed", "g_HeadFixed", "head"], 
		             ["headStatic", "g_HeadStatic", "head"], 
		             ["foot", "g_Foot", "base"], 
		             ["footFixed", "g_FootFixed", "foot"], 
		             ["footStatic", "g_FootStatic", "foot"], 
		             ["body", "g_Body", "base"], 
		             ["bodyFixed", "g_BodyFixed", "body"], 
		             ["bodyFixed2", "g_BodyFixed2", "bodyFixed"], 
		             ["bodyStatic", "g_BodyStatic", "body"]];
		
		this.parentDimensions = { x : this.element.offsetWidth, y : this.element.offsetHeight };
		this.docFrag = doc.createDocumentFragment();
		for (var i=0, elem; elem=elems[i]; i++) {
			(this[elem[0]] = doc.createElement("DIV")).className = elem[1];
			this[elem[2]].appendChild(this[elem[0]]);
		}
		
		if (this.options.allowGridResize) {
			(this.baseResize = doc.createElement("DIV")).className = "g_BaseResize";
			this.base.appendChild(this.baseResize);
		}
	};
	
	//////////////////////////////////////////////////////////////////////////////////
	GridProto.addEvents = function() {
		var wheelEvent;
		
		// Simulate mouse scrolling over non-scrollable content:
		if (this.options.fixedCols > 0 && !this.usesTouch && !msie) {
			try {
				wheelEvent = (WheelEvent("wheel")) ? "wheel" : undefined;
			} catch (e) {
				wheelEvent = (document.onmousewheel !== undefined) ? "mousewheel" : "DOMMouseScroll";
			}
			if (wheelEvent) {
				addEvent(this.bodyFixed, wheelEvent, bind(this.simulateMouseScroll, this));
			}
		}
		
		// Grid resizing:
		if (this.options.allowGridResize) {
			addEvent(this.baseResize, this.startEvt, bind(this.initResizeGrid, this));
		}
		
		// Column resizing and client side sorting:
		if (this.options.allowColumnResize || this.options.allowClientSideSorting) {
			addEvent(this.head, this.startEvt, bind(this.delegateHeaderEvent, this));
		}
		
		// Row selection:
		if (this.options.allowSelections) {
			addEvent(this.body, this.startEvt, bind(this.selectRange, this));
			if (this.options.showSelectionColumn) {
				addEvent(this.body, "click", bind(this.preventSelectionInputStateChange, this));
			}
		}
	};
	
	//////////////////////////////////////////////////////////////////////////////////
	GridProto.convertDomDataToJsonData = function(data) {
		var sections = { "thead" : "Head", "tbody" : "Body", "tfoot" : "Foot" }, 
		    section, rows, row, cells, arr, arr2, i, j, k, 
		    json = {};
		
		// Cycle through all table rows, change sections when needed:
		if (((data || {}).tagName || "").toLowerCase() === "table") {
			for (i=0, j=0, rows=data.rows; row=rows[i]; i++) {
				if (row.sectionRowIndex === 0 && (section = sections[row.parentNode.tagName.toLowerCase()])) {
					json[section] = arr = (json[section] || []);
					j = arr.length;
				}
				arr[j++] = arr2 = [];
				k = (cells = row.cells).length;
				while (k) { arr2[--k] = cells[k].innerHTML; }
			}
		}
		
		return json;
	};
	
	//////////////////////////////////////////////////////////////////////////////////
	GridProto.convertXmlDataToJsonData = function(data) {
		var sections = { "thead" : "Head", "tbody" : "Body", "tfoot" : "Foot" }, 
		    cellText = (msie < 9) ? "text" : "textContent", 
		    nodes, node, section, rows, row, cells, cell, tag, n, i, j, 
		    arr, arr2, a, a2, 
		    json = {};
		
		// By section:
		if ((nodes = (data.getElementsByTagName("table")[0] || {}).childNodes)) {
			for (n=0; node=nodes[n]; n++) {
				if ((section = sections[node.nodeName]) && (rows = node.childNodes)) {
					json[section] = arr = (json[section] || []);
					a = arr.length;
					
					// By row:
					for (i=0; row=rows[i]; i++) {
						if (row.nodeName === "tr" && (cells = row.childNodes)) {
							arr[a++] = arr2 = [];
							a2 = 0;
							
							// By cell:
							for (j=0; cell=cells[j]; j++) {
								if ((tag = cell.nodeName) === "td" || tag === "th") {
									arr2[a2++] = cell[cellText] || "";
								}
							}
						}
					}
				}
			}
		}
		
		return json;
	};
	
	//////////////////////////////////////////////////////////////////////////////////
	GridProto.convertData = function(data) {
		var base, cols, h, b, f;
		
		this.addSelectionColumn(data);
		this.rawData = data.Body || [];
		if ((base = data.Head || data.Body || data.Foot || null)) {
			cols = this.columns = base[0].length;
			h = this.cellData.head;
			b = this.cellData.body;
			f = this.cellData.foot;
			while (cols) { h[--cols] = []; b[cols] = []; f[cols] = []; }
			
			cols = this.columns;
			if (data.Head) {
				this.convertDataItem(h, data.Head, "<DIV class='g_C g_HR g_R", cols, this.options.allowColumnResize);
			} else {
				this.css.rules[".g_Head"] = { display : "none" };
			}
			if (data.Body) {
				this.convertDataItem(b, data.Body, "<DIV class='g_C g_BR g_R", cols, false);
			} else {
				this.css.rules[".g_BodyFixed"] = { display : "none" };
			}
			if (data.Foot) {
				this.convertDataItem(f, data.Foot, "<DIV class='g_C g_FR g_R", cols, false);
			} else {
				this.css.rules[".g_Foot"] = { display : "none" };
			}
		}
	};
	
	//////////////////////////////////////////////////////////////////////////////////
	GridProto.convertDataItem = function(arr, rows, rowClass, cols, allowColResize) {
		var rowIdx = rows.length, 
		    rowDiv, row, colIdx;
		
		while (rowIdx) {
			rowDiv = rowClass + (--rowIdx) + "'>";
			row = rows[rowIdx];
			colIdx = cols;
			while (colIdx) {
				arr[--colIdx][rowIdx] = rowDiv + (row[colIdx] || "&nbsp;");
			}
		}
		if (allowColResize && (rowIdx = rows.length)) {
			colIdx = cols;
			while (colIdx) {
				arr[--colIdx][0] = ("<SPAN class='g_RS g_RS" + colIdx + "'>&nbsp;</SPAN>") + arr[colIdx][0];
			}
		}
	};
	
	//////////////////////////////////////////////////////////////////////////////////
	GridProto.addSelectionColumn = function(data) {
		var html, rows, i;
		
		if (this.options.showSelectionColumn) {
			this.options.colBGColors.unshift(this.options.colBGColors[0] || "");
			this.options.colSortTypes.unshift("none");
			this.options.colAlign.unshift("left");
			if (!this.usesTouch) {
				this.options.fixedCols++;
			}
			
			if ((rows = data.Head) && (i = rows.length)) {
				while (i) { rows[--i].unshift(""); }
			}
			if ((rows = data.Body) && (i = rows.length)) {
				html = "<LABEL class=g_SH><INPUT tabIndex='-1' type=";
				html += ((this.options.allowMultipleSelections) ? "checkbox class=g_Cb" : "radio  class=g_Rd");
				html += ">&nbsp;</LABEL>";
				while (i) { rows[--i].unshift(html); }
			}
			if ((rows = data.Foot) && (i = rows.length)) {
				while (i) { rows[--i].unshift(""); }
			}
		}
	};
	
	//////////////////////////////////////////////////////////////////////////////////
	GridProto.generateGrid = function() {
		this.hasHead = ((this.cellData.head[0] || []).length > 0);
		this.hasBody = ((this.cellData.body[0] || []).length > 0);
		this.hasFoot = ((this.cellData.foot[0] || []).length > 0);
		this.hasHeadOrFoot = (this.hasHead || this.hasFoot);
		this.hasFixedCols = (this.options.fixedCols > 0);
		
		this.generateGridHead();
		this.generateGridBody();
		this.generateGridFoot();
	};
	
	//////////////////////////////////////////////////////////////////////////////////
	GridProto.generateGridHead = function() {
		var hHTML;
		
		if (this.hasHead) {
			hHTML = this.generateGridSection(this.cellData.head);
			this.headStatic.innerHTML = hHTML.fullHTML;
			if (this.hasFixedCols) {
				this.headFixed.innerHTML = hHTML.fixedHTML;
			}
		}
	};
	
	//////////////////////////////////////////////////////////////////////////////////
	GridProto.generateGridBody = function() {
		var bHTML;
		
		if (this.hasBody) {
			bHTML = this.generateGridSection(this.cellData.body);
			this.bodyStatic.innerHTML = bHTML.fullHTML;
			if (this.hasFixedCols) {
				this.bodyFixed2.innerHTML = bHTML.fixedHTML;
			}
		} else {
			this.bodyStatic.innerHTML = "<DIV class='g_EmptySetMsg'>No results returned.</DIV>";
		}
	};
	
	//////////////////////////////////////////////////////////////////////////////////
	GridProto.generateGridFoot = function() {
		var fHTML;
		
		if (this.hasFoot) {
			fHTML = this.generateGridSection(this.cellData.foot);
			this.footStatic.innerHTML = fHTML.fullHTML;
			if (this.hasFixedCols) {
				this.footFixed.innerHTML = fHTML.fixedHTML;
			}
		}
	};
	
	//////////////////////////////////////////////////////////////////////////////////
	GridProto.generateGridSection = function(cols) {
		var replaceFunc = function($1, $2) { return cols[parseInt($2, 10)].join("</DIV>"); }, 
		    replaceRgx = /@(\d+)@/g, 
		    fixedCols = this.options.fixedCols, 
		    fHtml = [], sHtml = [], 
		    colIdx = cols.length;
		
		while (colIdx) {
			if ((--colIdx) < fixedCols) {
				fHtml[colIdx] = "<DIV class='g_Cl g_Cl" + colIdx + " g_FCl'>@" + colIdx + "@</DIV></DIV>";
				sHtml[colIdx] = "<DIV class='g_Cl g_Cl" + colIdx + " g_FCl'></DIV>";
			} else {
				sHtml[colIdx] = "<DIV class='g_Cl g_Cl" + colIdx + "'>@" + colIdx + "@</DIV></DIV>";
			}
		}
		
		return { fixedHTML : (fixedCols) ? fHtml.join("").replace(replaceRgx, replaceFunc) : "", 
		         fullHTML : sHtml.join("").replace(replaceRgx, replaceFunc) };
	};
	
	//////////////////////////////////////////////////////////////////////////////////
	GridProto.displayGrid = function() {
		var srcType = this.options.srcType, 
		    srcData = this.options.srcData, 
		    replace = false;
		
		// Setup scrolling:
		this.lastScrollLeft = 0;
		this.lastScrollTop = 0;
		this.body.onscroll = bind(this.syncScrolls, this);
		
		// Prep style element:
		try {
			this.css.sheet.parentNode.removeChild(this.css.sheet);
		} catch (e) {
			(this.css.sheet = document.createElement("STYLE")).id = this.element.id + "SS";
			this.css.sheet.type = "text/css";
		}
		
		// Insert grid into DOM:
		if (srcType === "dom" && (srcData = (typeof(srcData) === "string") ? $(srcData) : srcData)) {
			if ((replace = (this.element === srcData.parentNode))) {
				this.element.replaceChild(this.docFrag, srcData);
			}
		}
		if (!replace) {
			this.element.appendChild(this.docFrag);
		}
		
		// Align columns:
		this.alignTimer = window.setTimeout(bind(this.alignColumns, this, false, true), 16);
	};
	
	//////////////////////////////////////////////////////////////////////////////////
	GridProto.alignColumns = function(reAlign, fromInit) {
		var sNodes = [this.headStatic.children || [], this.bodyStatic.children || [], this.footStatic.children || []], 
		    fNodes = [this.headFixed.children || [], this.bodyFixed2.children || [], this.footFixed.children || []], 
		    allowColumnResize = this.options.allowColumnResize, 
		    colBGColors = this.options.colBGColors, 
		    colAlign = this.options.colAlign, 
		    fixedCols = this.options.fixedCols, 
		    rules = this.css.rules, 
		    colWidth, nodes;
		
		// Compute base styles first, or remove old column width styling if realigning the columns:
		if (reAlign !== true) {
			this.computeBaseStyles();
		} else {
			for (var i=0, len=this.columns; i<len; i++) {
				rules[".g_Cl" + i].width = "auto";
			}
			this.setRules();
		}
		
		// Compute column width, alignment and background styles:
		this.columnWidths = [];
		for (var i=0, len=this.columns; i<len; i++) {
			nodes = (i < fixedCols) ? fNodes : sNodes;
			colWidth = Math.max((nodes[0][i] || {}).offsetWidth || 0, 
			                    (nodes[1][i] || {}).offsetWidth || 0, 
			                    (nodes[2][i] || {}).offsetWidth || 0);
			
			this.columnWidths[i] = colWidth;
			rules[".g_Cl" + i] = { "width" : colWidth + "px", "text-align" : (colAlign[i] || "left") };
			if ((colBGColors[i] || "#ffffff") !== "#ffffff") {
				rules[".g_Cl" + i]["background-color"] = colBGColors[i];
			}
			if (allowColumnResize) {
				rules[".g_RS" + i] = { "margin-left" : (colWidth - 2) + "px" };
			}
		}
		this.setRules();
		if (fromInit === true) {
			this.options.onLoad.call(this);
		}
	};
	
	//////////////////////////////////////////////////////////////////////////////////
	GridProto.computeBaseStyles = function() {
		var rules = this.css.rules, 
		    headHeight = (this.hasHead) ? this.head.offsetHeight : 0, 
		    footHeight = (this.hasFoot) ? this.foot.offsetHeight : 0, 
		    sBarSize = { "x" : this.body.offsetWidth - this.body.clientWidth, 
		                 "y" : this.body.offsetHeight - this.body.clientHeight };
		
		rules[".g_C"] = { "visibility" : "visible" };
		rules[".g_Cl"] = { "background-color" : "#fff" };
		rules[".g_BodyStatic"] = { "padding" : headHeight + "px 0px " + footHeight + "px 0px" };
		if (this.hasHead) {
			rules[".g_Head"] = { "right" : sBarSize.x + "px" };
		}
		if (this.hasFoot) {
			rules[".g_Foot"] = { "bottom" : sBarSize.y + "px", "right" : sBarSize.x + "px" };
		}
		if (this.hasFixedCols) {
			rules[".g_BodyFixed" + ((msie < 8) ? "2" : "")] = { "top" : headHeight + "px", "bottom" : sBarSize.y + "px" };
		}
		if (this.options.allowGridResize) {
			rules[".g_BaseResize"] = { "width" : sBarSize.x + "px", "height" : sBarSize.y + "px" };
		}
		if (this.options.allowColumnResize) {
			rules[".g_ResizeDragger"] = { "bottom" : sBarSize.y + "px" };
			rules[".g_RS"] = { "display" : "block", 
			                   "position" : "relative", 
			                   "margin-bottom" : (headHeight * -1) + "px", 
			                   "height" : headHeight + "px" };
		}
	};
	
	//////////////////////////////////////////////////////////////////////////////////
	GridProto.syncScrolls = function(event) {
		var sL = (this.hasHeadOrFoot) ? this.body.scrollLeft : 0, 
		    sT = (this.hasFixedCols) ? this.body.scrollTop : 0;
		
		if (sL !== this.lastScrollLeft) {
			this.lastScrollLeft = sL;
			if (this.hasHead) {
				this.headStatic.style.marginLeft = (-1 * sL) + "px";
			}
			if (this.hasFoot) {
				this.footStatic.style.marginLeft = (-1 * sL) + "px";
			}
		}
		if (sT !== this.lastScrollTop) {
			this.lastScrollTop = sT;
			this.bodyFixed2.style.marginTop = (-1 * sT) + "px";
		}
	};
	
	//////////////////////////////////////////////////////////////////////////////////
	GridProto.simulateMouseScroll = function(event) {
		var event = event || window.event, 
		    deltaY = 0;
		
		if (event.deltaY !== undefined) {
			deltaY = event.deltaY;
		} else if (event.wheelDelta !== undefined) {
			deltaY = event.wheelDelta * (-1/40);
		} else if (event.detail !== undefined) {
			deltaY = event.detail;
		}
		
		this.body.scrollTop += (deltaY * 33);
		this.syncScrolls();
	};
	
	//////////////////////////////////////////////////////////////////////////////////
	GridProto.setRules = function() {
		var idRulePrefix = (this.options.supportMultipleGridsInView) ? this.css.idRulePrefix : "", 
		    hasOwnProp = Object.prototype.hasOwnProperty, 
		    rules = this.css.rules, 
		    sheet = this.css.sheet, 
		    cssText = [], c = 0, 
		    rule, props, prop, 
		    doc = document;
		
		for (rule in rules) {
			if (hasOwnProp.call(rules, rule) && (props = rules[rule])) {
				cssText[c++] = idRulePrefix + rule + "{";
				for (prop in props) {
					if (hasOwnProp.call(props, prop)) {
						cssText[c++] = prop + ":" + props[prop] + ";";
					}
				}
				cssText[c++] = "} ";
			}
		}
		
		if (!sheet.styleSheet) {
			sheet.appendChild(doc.createTextNode(cssText.join("")));
		}
		if (!$(sheet.id)) {
			(doc.head || doc.getElementsByTagName("head")[0]).appendChild(sheet);
		}
		if (sheet.styleSheet) {
			sheet.styleSheet.cssText = cssText.join("");
		}
	};
	
	//////////////////////////////////////////////////////////////////////////////////
	GridProto.initResizeGrid = function(event) {
		var event = event || window.event, 
		    pagePos;
		
		if (event.button !== 2 && this.options.allowGridResize) {
			pagePos = getEventPositions(event, "page");
			
			this.tmp = {
				throttle : -1, 
				origX : pagePos.x, 
				origY : pagePos.y, 
				origWidth : this.parentDimensions.x, 
				origHeight : this.parentDimensions.y, 
				boundMoveEvt : bind(this.resizeGrid, this), 
				boundEndEvt : bind(this.endResizeGrid, this)
			};
			
			addEvent(document, this.moveEvt, this.tmp.boundMoveEvt);
			addEvent(document, this.endEvt, this.tmp.boundEndEvt);
			return stopEvent(event);
		}
	};
	
	//////////////////////////////////////////////////////////////////////////////////
	GridProto.resizeGrid = function(event) {
		var pagePos, xDif, yDif, newWidth, newHeight, elemStyle;
		
		if ((this.tmp.throttle++) & 1) {
			pagePos = getEventPositions(event || window.event, "page");
			xDif = pagePos.x - this.tmp.origX;
			yDif = pagePos.y - this.tmp.origY;
			newWidth = Math.max(60, (xDif > 0) ? this.tmp.origWidth + xDif : this.tmp.origWidth - Math.abs(xDif));
			newHeight = Math.max(30, (yDif > 0) ? this.tmp.origHeight + yDif : this.tmp.origHeight - Math.abs(yDif));
			
			elemStyle = this.element.style;
			elemStyle.width = newWidth + "px";
			elemStyle.height = newHeight + "px";
			
			this.parentDimensions = { x : newWidth, y : newHeight };
			this.syncScrolls();
			clearTextSelections();
			this.options.onResizeGrid.apply(this, [newWidth, newHeight]);
		}
	};
	
	//////////////////////////////////////////////////////////////////////////////////
	GridProto.endResizeGrid = function(event) {
		removeEvent(document, this.moveEvt, this.tmp.boundMoveEvt);
		removeEvent(document, this.endEvt, this.tmp.boundEndEvt);
		this.options.onResizeGridEnd.apply(this, [this.parentDimensions.x, this.parentDimensions.y]);
		this.tmp = undefined;
	};
	
	//////////////////////////////////////////////////////////////////////////////////
	GridProto.delegateHeaderEvent = function(event) {
		var event = event || window.event, 
		    target = event.target || event.srcElement, 
		    targetClass = target.className || "";
		
		if (event.button !== 2) {
			if (this.options.allowColumnResize && targetClass.indexOf("g_RS") > -1) {
				return this.initResizeColumn(event, target, targetClass);
			} else if (this.hasBody && this.options.allowClientSideSorting) {
				while (targetClass.indexOf("g_Cl") === -1 && targetClass !== "g_Head") {
					targetClass = (target = target.parentNode).className || "";
				}
				if (targetClass.indexOf("g_Cl") > -1) {
					this.sortColumn(parseInt(/g_Cl(\d+)/.exec(targetClass)[1], 10));
				}
			}
		}
	};
	
	//////////////////////////////////////////////////////////////////////////////////
	GridProto.initResizeColumn = function(event, target, targetClass) {
		var colIdx = parseInt(targetClass.replace(/g_RS/g, ""), 10), 
		    doc = document;
		
		this.tmp = {
			lastLeft : -1, 
			colIdx : colIdx, 
			origX : getEventPositions(event, "client").x, 
			origWidth : this.columnWidths[colIdx], 
			origLeft : target.offsetLeft, 
			boundMoveEvt : bind(this.resizeColumn, this), 
			boundEndEvt : bind(this.endResizeColumn, this), 
			dragger : doc.createElement("DIV")
		};
		
		this.tmp.dragger.className = "g_ResizeDragger";
		this.tmp.dragger.style.left = this.tmp.origLeft + "px";
		this.base.insertBefore(this.tmp.dragger, this.base.firstChild);
		
		addEvent(doc, this.moveEvt, this.tmp.boundMoveEvt);
		addEvent(doc, this.endEvt, this.tmp.boundEndEvt);
		return stopEvent(event);
	};
	
	//////////////////////////////////////////////////////////////////////////////////
	GridProto.resizeColumn = function(event) {
		var clientX = getEventPositions(event || window.event, "client").x, 
		    xDif = clientX - this.tmp.origX, 
		    newWidth = Math.max(15, (xDif > 0) ? this.tmp.origWidth + xDif : this.tmp.origWidth - Math.abs(xDif)), 
		    newLeft = (xDif > 0) ? this.tmp.origLeft + xDif : this.tmp.origLeft - Math.abs(xDif);
		
		this.tmp.newWidth = newWidth;
		if (this.tmp.lastLeft !== newLeft && newWidth > 15) {
			this.tmp.dragger.style.left = newLeft + "px";
			this.tmp.lastLeft = newLeft;
		}
		
		clearTextSelections();
		this.options.onResizeColumn.apply(this, [this.tmp.colIdx, newWidth]);
	};
	
	//////////////////////////////////////////////////////////////////////////////////
	GridProto.endResizeColumn = function(event) {
		var newWidth = this.tmp.newWidth || this.tmp.origWidth, 
		    colIdx = this.tmp.colIdx;
		
		removeEvent(document, this.moveEvt, this.tmp.boundMoveEvt);
		removeEvent(document, this.endEvt, this.tmp.boundEndEvt);
		
		this.tmp.dragger.parentNode.removeChild(this.tmp.dragger);
		this.css.rules[".g_Cl" + colIdx]["width"] = newWidth + "px";
		this.css.rules[".g_RS" + colIdx]["margin-left"] = (newWidth - 2) + "px";
		this.columnWidths[colIdx] = newWidth;
		this.setRules();
		this.syncScrolls();
		this.options.onResizeColumnEnd.apply(this, [colIdx, newWidth]);
		this.tmp = undefined;
	};
	
	//////////////////////////////////////////////////////////////////////////////////
	GridProto.sortColumn = function(colIdx, sortAsc) {
		var colIdx = parseInt(colIdx, 10) || ((colIdx === 0) ? 0 : -1), 
		    colSortAs = (colIdx > -1) ? this.options.colSortTypes[colIdx] || "string" : "none", 
		    lastCol = this.lastSortedColumn;
		
		if (colSortAs !== "none") {
			sortAsc = (sortAsc === undefined) ? ((colIdx === lastCol[0]) ? !lastCol[1] : true) : !!sortAsc;
			this.sortRawData(colIdx, colSortAs, sortAsc);
		}
	};
	
	//////////////////////////////////////////////////////////////////////////////////
	GridProto.sortRawData = function(colIdx, colSortAs, sortAsc) {
		var selIndexes, ltVal, gtVal, i, 
		    rawData = this.rawData, 
		    newSelIndexes = [], 
		    newIdxOrder = [], 
		    that = this;
		
		// Store prior index order:
		i = rawData.length;
		while (i) { rawData[--i].pIdx = i; }
		
		// Sort the body data by type:
		ltVal = (sortAsc) ? -1 : 1;
		gtVal = (sortAsc) ? 1 : -1;
		rawData.sort(function(a, b) {
			return that.getSortResult(colSortAs, colIdx, ltVal, gtVal, a[colIdx], b[colIdx]);
		});
		
		// Update the grid body HTML:
		this.convertDataItem(this.cellData.body, rawData, "<DIV class='g_C g_BR g_R", this.columns, false);
		this.generateGridBody();
		
		// Generate new sort order array:
		i = rawData.length;
		while (i) { newIdxOrder[--i] = rawData[i].pIdx; }
		
		// Update selected row indexes if applicable:
		if (this.options.allowSelections && (selIndexes = this.selectedIndexes.concat()).length) {
			i = selIndexes.length;
			while (i) { newSelIndexes[--i] = indexOf(newIdxOrder, selIndexes[i]); }
			this.highlightRows((this.selectedIndexes = newSelIndexes), []);
		}
		
		// Fire sort event:
		this.options.onColumnSort.apply(this, [newIdxOrder.concat(), colIdx, this.lastSortedColumn[0]]);
		this.lastSortedColumn = [colIdx, sortAsc];
	};
	
	//////////////////////////////////////////////////////////////////////////////////
	GridProto.getSortResult = function(type, colIdx, ltVal, gtVal, a, b, keyA, keyB) {
		if (a === b) {
			return 0;
		}
		
		if (this.sortCache[(keyA = type + "_" + a)] === undefined) {
			this.sortCache[keyA] = (type === "string") ? a : 
			                       (type === "number") ? parseFloat(a) || -Infinity : 
			                       (type === "date") ? new Date(a).getTime() || -Infinity : 
			                       (type === "custom") ? this.options.customSortCleaner(a, colIdx) : a;
		}
		if (this.sortCache[(keyB = type + "_" + b)] === undefined) {
			this.sortCache[keyB] = (type === "string") ? b : 
			                       (type === "number") ? parseFloat(b) || -Infinity : 
			                       (type === "date") ? new Date(b).getTime() || -Infinity : 
			                       (type === "custom") ? this.options.customSortCleaner(b, colIdx) : b;
		}
		
		return (this.sortCache[keyA] < this.sortCache[keyB]) ? ltVal : gtVal;
	};
	
	//////////////////////////////////////////////////////////////////////////////////
	GridProto.toggleSelectAll = function(toggle) {
		var selIndexes = this.selectedIndexes, 
		    toSelect = [], toRemove = [], 
		    i;
		
		if (this.hasBody && this.options.allowSelections) {
			if (toggle) {
				toSelect = [0];
				if (this.options.allowMultipleSelections) {
					i = this.rawData.length;
					while (i) { toSelect[--i] = i; }
				}
				this.selectIndexes(toSelect);
			} else if (selIndexes.length) {
				toRemove = selIndexes.concat();
				this.selectedIndexes = [];
				this.highlightRows(toSelect, toRemove);
				this.options.onRowSelect.apply(this, [toSelect, toRemove, -1]);
			}
		}
	};
	
	//////////////////////////////////////////////////////////////////////////////////
	GridProto.selectIndexes = function(rowIndexes) {
		var selIndexes = this.selectedIndexes, 
		    toSelect = [], toRemove = [], 
		    i = rowIndexes.length, 
		    j = 0;
		
		if (i && this.hasBody && this.options.allowSelections) {
			if (this.options.allowMultipleSelections) {
				while (i) {
					if (indexOf(selIndexes, rowIndexes[--i]) === -1) {
						toSelect[j++] = rowIndexes[i];
					}
				}
			} else {
				toRemove = selIndexes.concat();
				toSelect[0] = rowIndexes[0];
				selIndexes = [];
			}
			
			this.selectedIndexes = selIndexes.concat(toSelect);
			this.highlightRows(toSelect, toRemove);
			this.options.onRowSelect.apply(this, [toSelect, toRemove, -1]);
		}
	};
	
	//////////////////////////////////////////////////////////////////////////////////
	GridProto.selectRange = function(event) {
		var event = event || window.event, 
		    target = event.target || event.srcElement, 
		    targetClass, isSelCol, isCtrlKeyLike, update, rowIdx;
		
		if (event.button !== 2 && this.options.allowSelections) {
			targetClass = target.className || "";
			while (targetClass.indexOf("g_BR") === -1 && targetClass !== "g_Body") {
				targetClass = (target = target.parentNode).className || "";
			}
			if (targetClass.indexOf("g_BR") > -1) {
				update = true;
				rowIdx = parseInt(/g_R(\d+)/.exec(targetClass)[1], 10);
				targetClass = (target = target.parentNode).className || "";
				isSelCol = (this.options.showSelectionColumn && (targetClass.indexOf("g_Cl0") > -1));
				isCtrlKeyLike = this.usesTouch || isSelCol;
				
				if (this.usesTouch && this.options.showSelectionColumn && (update = isSelCol)) {
					stopEvent(event);
				}
				if (update) {
					this.updateSelectedIndexes(rowIdx, event.ctrlKey || isCtrlKeyLike, event.shiftKey);
				}
			}
		}
	};
	
	//////////////////////////////////////////////////////////////////////////////////
	GridProto.updateSelectedIndexes = function(rowIdx, ctrlPressed, shiftPressed) {
		var selIndexes = this.selectedIndexes.concat(), 
		    rowIdxSelected = (indexOf(selIndexes, rowIdx) > -1), 
		    toSelect = [], toRemove = [], 
		    startIdx, i, j, len;
		
		if (!this.options.allowMultipleSelections || !selIndexes.length || (!ctrlPressed && !shiftPressed)) {
			toSelect = (rowIdxSelected && selIndexes.length === 1) ? [] : [rowIdx];
			toRemove = selIndexes.concat();
		} else if (ctrlPressed) {
			toSelect = rowIdxSelected ? [] : [rowIdx];
			toRemove = rowIdxSelected ? [rowIdx] : [];
		} else if (shiftPressed) {
			if ((startIdx = selIndexes[0]) <= rowIdx) {
				for (i=startIdx + 1, j=0; i<=rowIdx; i++) {
					if (indexOf(selIndexes, i) === -1) { toSelect[j++] = i; }
				}
			} else {
				for (i=startIdx - 1, j=0; i>=rowIdx; i--) {
					if (indexOf(selIndexes, i) === -1) { toSelect[j++] = i; }
				}
			}
		}
		
		for (i=0, len=toRemove.length; i<len; i++) {
			if ((j = indexOf(selIndexes, toRemove[i])) > -1) { selIndexes.splice(j, 1); }
		}
		this.selectedIndexes = selIndexes.concat(toSelect);
		this.highlightRows(toSelect, toRemove);
		if (ctrlPressed || shiftPressed) {
			(!msie) ? clearTextSelections() : window.setTimeout(clearTextSelections, 25);
		}
		this.options.onRowSelect.apply(this, [toSelect, toRemove, rowIdx]);
	};
	
	//////////////////////////////////////////////////////////////////////////////////
	GridProto.highlightRows = function(toSelect, toRemove) {
		var nodes = [this.bodyFixed2.children, this.bodyStatic.children], 
		    fixedSelBgColor = this.options.fixedSelectedBgColor, 
		    selBgColor = this.options.selectedBgColor, 
		    fixedCols = this.options.fixedCols, 
		    colIdx = this.columns, 
		    bgColor, rows, inputs, i;
		
		while (colIdx) {
			rows = (((--colIdx) < fixedCols) ? nodes[0] : nodes[1])[colIdx].children;
			bgColor = (colIdx < fixedCols) ? fixedSelBgColor : selBgColor;
			
			i = toRemove.length;
			while (i) { rows[toRemove[--i]].style.backgroundColor = ""; }
			
			i = toSelect.length;
			while (i) { rows[toSelect[--i]].style.backgroundColor = bgColor; }
		}
		if (this.options.showSelectionColumn) {
			inputs = nodes[(!this.usesTouch) ? 0 : 1][0].getElementsByTagName("INPUT");
			
			i = toRemove.length;
			while (i) { inputs[toRemove[--i]].checked = false; }
			
			i = toSelect.length;
			while (i) { inputs[toSelect[--i]].checked = true; }
		}
	};
	
	//////////////////////////////////////////////////////////////////////////////////
	GridProto.preventSelectionInputStateChange = function(event) {
		var event = event || window.event, 
		    target = event.target || event.srcElement, 
		    targetClass = target.className || "", 
		    rowIdx;
		
		if (event.button !== 2) {
			if (targetClass.indexOf("g_Cb") > -1 || targetClass.indexOf("g_Rd") > -1) {
				do {
					targetClass = (target = target.parentNode).className || "";
				} while (targetClass.indexOf("g_BR") === -1 && targetClass !== "g_Body");
				
				if (targetClass.indexOf("g_BR") > -1) {
					rowIdx = parseInt(/g_R(\d+)/.exec(targetClass)[1], 10);
					(event.target || event.srcElement).checked = (indexOf(this.selectedIndexes, rowIdx) > -1);
				}
			}
		}
	};
	
	//////////////////////////////////////////////////////////////////////////////////
	GridProto.cleanUp = function() {
		this.alignTimer = (this.alignTimer) ? window.clearTimeout(this.alignTimer) : null;
		this.element.innerHTML = "";
		try { this.css.sheet.parentNode.removeChild(this.css.sheet); } catch (e) {}
		return null;
	};
	
	//////////////////////////////////
	//
	// Utility Methods
	//
	//////////////////////////////////////////////////////////////////////////////////
	var getIEVersion = function() {
		var nav, version;
		
		if ((nav = navigator).appName === "Microsoft Internet Explorer") {
			if (new RegExp("MSIE ([0-9]{1,}[\.0-9]{0,})").exec(nav.userAgent)) {
				version = parseFloat(RegExp.$1);
			}
		}
		return (version > 5) ? version : undefined;
	};
	
	//////////////////////////////////////////////////////////////////////////////////
	var parseJSON = function(source) {
		var sourceType, json, win;
		
		if ((sourceType = typeof(source)) === "string") {
			if (((win = window).JSON || {}).parse) {
				json = win.JSON.parse(source);
			} else {
				json = (function() { try { return (new Function("return " + source))(); } catch (e) { return; } })();
			}
		}
		
		return json || (sourceType === "object" && (json = source)) || null;
	};
	
	//////////////////////////////////////////////////////////////////////////////////
	var parseXML = function(source) {
		var sourceType, dE, xml;
		
		if ((sourceType = typeof(source)) === "string") {
			if (window.DOMParser) {
				xml = new DOMParser().parseFromString(source, "text/xml");
			} else if (window.ActiveXObject) {
				xml = new ActiveXObject("Microsoft.XMLDOM");
				xml.async = false;
				xml.loadXML(source);
			}
		} else if (sourceType === "object") {
			dE = (source.ownerDocument || source).documentElement || {};
			if (dE.nodeName && dE.nodeName.toUpperCase() !== "HTML") {
				xml = source;
			}
		}
		
		return xml || null;
	};
	
	//////////////////////////////////////////////////////////////////////////////////
	var addEvent = (document.addEventListener) ? 
	  function(elem, type, listener) { elem.addEventListener(type, listener, false); } : 
	  function(elem, type, listener) { elem.attachEvent("on" + type, listener); };
	
	//////////////////////////////////////////////////////////////////////////////////
	var stopEvent = function(event) {
		if (event.stopPropagation) {
			event.stopPropagation();
			event.preventDefault();
		} else {
			event.returnValue = false;
			event.cancelBubble = true;
		}
		return false;
	};
	
	//////////////////////////////////////////////////////////////////////////////////
	var removeEvent = (document.addEventListener) ? 
	  function(elem, type, listener) { elem.removeEventListener(type, listener, false); } : 
	  function(elem, type, listener) { elem.detachEvent("on" + type, listener); };
	
	//////////////////////////////////////////////////////////////////////////////////
	var getEventPositions = function(event, type) {
		var pageX = event.pageX, 
		    pageY = event.pageY, 
		    doc, elem;
		
		// Client position:
		if (type === "client") {
			if (pageX !== undefined || pageY !== undefined) {
				return { x : pageX - window.pageXOffset, y : pageY - window.pageYOffset };
			}
			return { x : event.clientX, y : event.clientY };
		}
		
		// Page position:
		if (pageX === undefined || pageY === undefined) {
			elem = ((doc = document).documentElement.scrollLeft !== undefined) ? doc.documentElement : doc.body;
			return { x : event.clientX + elem.scrollLeft, y : event.clientY + elem.scrollTop };
		}
		return { x : pageX, y : pageY };
	};
	
	//////////////////////////////////////////////////////////////////////////////////
	var bind = function(func, that) {
		var a = slice.call(arguments, 2);
		return function() { return func.apply(that, a.concat(slice.call(arguments))); };
	};
	
	//////////////////////////////////////////////////////////////////////////////////
	var indexOf = ([].indexOf) ? 
	  function(arr, item) { return arr.indexOf(item); } : 
	  function(arr, item) {
	  	for (var i=0, len=arr.length; i<len; i++) { if (arr[i] === item) { return i; } } return -1;
	  };
	
	//////////////////////////////////////////////////////////////////////////////////
	var clearTextSelections = (window.getSelection) ? 
		function() { window.getSelection().removeAllRanges(); return false; } : (document.selection) ? 
		function() { document.selection.empty(); return false; } : 
		function() { return false; };
	
	//////////////////////////////////////////////////////////////////////////////////
	var $ = function(elemId) { return document.getElementById(elemId); }, 
	    slice = Array.prototype.slice, 
	    msie = getIEVersion();
	
	// Expose:
	window.Grid = Grid;
	
})(this, this.document);

