--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: populationgroup_country; Type: TABLE; Schema: public; Owner: census; Tablespace: 
--

CREATE TABLE populationgroup_country (
    total integer NOT NULL,
    "population group" character varying(128) NOT NULL,
    country_code character varying(8) NOT NULL
);


ALTER TABLE public.populationgroup_country OWNER TO census;

--
-- Name: populationgroup_district; Type: TABLE; Schema: public; Owner: census; Tablespace: 
--

CREATE TABLE populationgroup_district (
    total integer NOT NULL,
    "population group" character varying(128) NOT NULL,
    district_code character varying(8) NOT NULL
);


ALTER TABLE public.populationgroup_district OWNER TO census;

--
-- Name: populationgroup_municipality; Type: TABLE; Schema: public; Owner: census; Tablespace: 
--

CREATE TABLE populationgroup_municipality (
    total integer NOT NULL,
    "population group" character varying(128) NOT NULL,
    municipality_code character varying(8) NOT NULL
);


ALTER TABLE public.populationgroup_municipality OWNER TO census;

--
-- Name: populationgroup_province; Type: TABLE; Schema: public; Owner: census; Tablespace: 
--

CREATE TABLE populationgroup_province (
    total integer NOT NULL,
    "population group" character varying(128) NOT NULL,
    province_code character varying(8) NOT NULL
);


ALTER TABLE public.populationgroup_province OWNER TO census;

--
-- Name: populationgroup_ward; Type: TABLE; Schema: public; Owner: census; Tablespace: 
--

CREATE TABLE populationgroup_ward (
    total integer NOT NULL,
    "population group" character varying(128) NOT NULL,
    ward_code character varying(8) NOT NULL
);


ALTER TABLE public.populationgroup_ward OWNER TO census;

--
-- Data for Name: populationgroup_country; Type: TABLE DATA; Schema: public; Owner: census
--

COPY populationgroup_country (total, "population group", country_code) FROM stdin;
41000938	Black African	ZA
4615401	Coloured	ZA
1286930	Indian or Asian	ZA
4586838	White	ZA
280454	Other	ZA
\.


--
-- Data for Name: populationgroup_district; Type: TABLE DATA; Schema: public; Owner: census
--

COPY populationgroup_district (total, "population group", district_code) FROM stdin;
240010	Black African	DC10
157120	Coloured	DC10
1518	Indian or Asian	DC10
48967	White	DC10
2970	Other	DC10
868017	Black African	DC12
13133	Coloured	DC12
1126	Indian or Asian	DC12
8949	White	DC12
1411	Other	DC12
742545	Black African	DC13
32767	Coloured	DC13
1787	Indian or Asian	DC13
16034	White	DC13
2328	Other	DC13
328002	Black African	DC14
12177	Coloured	DC14
632	Indian or Asian	DC14
8277	White	DC14
680	Other	DC14
1351789	Black African	DC15
6434	Coloured	DC15
2654	Indian or Asian	DC15
2641	White	DC15
1425	Other	DC15
794382	Black African	DC44
3307	Coloured	DC44
1132	Indian or Asian	DC44
1898	White	DC44
624	Other	DC44
642753	Black African	BUF
45442	Coloured	BUF
6241	Indian or Asian	BUF
58258	White	BUF
2506	Other	BUF
692731	Black African	NMA
271469	Coloured	NMA
12838	Indian or Asian	NMA
165426	White	NMA
9650	Other	NMA
114806	Black African	DC16
19239	Coloured	DC16
553	Indian or Asian	DC16
11143	White	DC16
517	Other	DC16
557950	Black African	DC18
11864	Coloured	DC18
2243	Indian or Asian	DC18
54208	White	DC18
1361	Other	DC18
690340	Black African	DC19
6188	Coloured	DC19
2881	Indian or Asian	DC19
35517	White	DC19
1312	Other	DC19
420054	Black African	DC20
9215	Coloured	DC20
1516	Indian or Asian	DC20
55867	White	DC20
1383	Other	DC20
622383	Black African	MAN
37337	Coloured	MAN
3204	Indian or Asian	MAN
82291	White	MAN
2217	Other	MAN
748657	Black African	DC42
11070	Coloured	DC42
9140	Indian or Asian	DC42
143380	White	DC42
4236	Other	DC42
650132	Black African	DC48
20550	Coloured	DC48
9433	Indian or Asian	DC48
137041	White	DC48
3838	Other	DC48
2502769	Black African	EKU
85910	Coloured	EKU
68058	Indian or Asian	EKU
502439	White	EKU
19294	Other	EKU
3389278	Black African	JHB
247276	Coloured	JHB
216198	Indian or Asian	JHB
544530	White	JHB
37545	Other	JHB
2202847	Black African	TSH
58788	Coloured	TSH
53744	Indian or Asian	TSH
586495	White	TSH
19614	Other	TSH
654773	Black African	DC21
6123	Coloured	DC21
24711	Indian or Asian	DC21
35723	White	DC21
1154	Other	DC21
862543	Black African	DC22
20538	Coloured	DC22
68029	Indian or Asian	DC22
63935	White	DC22
2718	Other	DC22
636394	Black African	DC23
3923	Coloured	DC23
16023	Indian or Asian	DC23
11437	White	DC23
1070	Other	DC23
618130	Black African	DC27
1153	Coloured	DC27
1390	Indian or Asian	DC27
4189	White	DC27
984	Other	DC27
856997	Black African	DC28
5025	Coloured	DC28
14632	Indian or Asian	DC28
29375	White	DC28
1489	Other	DC28
446408	Black African	DC43
7546	Coloured	DC43
1506	Indian or Asian	DC43
5356	White	DC43
603	Other	DC43
493456	Black African	DC24
2789	Coloured	DC24
6512	Indian or Asian	DC24
7390	White	DC24
691	Other	DC24
465142	Black African	DC25
3449	Coloured	DC25
13167	Indian or Asian	DC25
17030	White	DC25
1052	Other	DC25
787879	Black African	DC26
1701	Coloured	DC26
1775	Indian or Asian	DC26
11288	White	DC26
932	Other	DC26
550758	Black African	DC29
3222	Coloured	DC29
35911	Indian or Asian	DC29
14713	White	DC29
2205	Other	DC29
2540441	Black African	ETH
85908	Coloured	ETH
573334	Indian or Asian	ETH
228406	White	ETH
14272	Other	ETH
1059732	Black African	DC33
1781	Coloured	DC33
2730	Indian or Asian	DC33
26912	White	DC33
1352	Other	DC33
1271709	Black African	DC34
1833	Coloured	DC34
5267	Indian or Asian	DC34
14599	White	DC34
1314	Other	DC34
1211874	Black African	DC35
6271	Coloured	DC35
5234	Indian or Asian	DC35
35470	White	DC35
2613	Other	DC35
619889	Black African	DC36
3298	Coloured	DC36
2929	Indian or Asian	DC36
51362	White	DC36
1858	Other	DC36
1061550	Black African	DC47
1232	Coloured	DC47
1721	Indian or Asian	DC47
11015	White	DC47
1322	Other	DC47
923976	Black African	DC30
10767	Coloured	DC30
11002	Indian or Asian	DC30
94279	White	DC30
3171	Other	DC30
1150240	Black African	DC31
14871	Coloured	DC31
9549	Indian or Asian	DC31
129656	White	DC31
3813	Other	DC31
1588002	Black African	DC32
10974	Coloured	DC32
7366	Indian or Asian	DC32
79659	White	DC32
2613	Other	DC32
1377821	Black African	DC37
10931	Coloured	DC37
8576	Indian or Asian	DC37
105274	White	DC37
4904	Other	DC37
791251	Black African	DC38
13809	Coloured	DC38
4968	Indian or Asian	DC38
30950	White	DC38
1721	Other	DC38
423980	Black African	DC39
18346	Coloured	DC39
2003	Indian or Asian	DC39
18127	White	DC39
1358	Other	DC39
559011	Black African	DC40
28322	Coloured	DC40
5105	Indian or Asian	DC40
101034	White	DC40
2461	Other	DC40
7904	Black African	DC6
96360	Coloured	DC6
612	Indian or Asian	DC6
10113	White	DC6
853	Other	DC6
58614	Black African	DC7
110257	Coloured	DC7
1046	Indian or Asian	DC7
15064	White	DC7
1371	Other	DC7
69512	Black African	DC8
142916	Coloured	DC8
1707	Indian or Asian	DC8
19371	White	DC8
3278	Other	DC8
250238	Black African	DC9
91549	Coloured	DC9
3602	Indian or Asian	DC9
25552	White	DC9
11144	Other	DC9
190718	Black African	DC45
20818	Coloured	DC45
859	Indian or Asian	DC45
11146	White	DC45
1256	Other	DC45
64110	Black African	DC1
260850	Coloured	DC1
2181	Indian or Asian	DC1
61527	White	DC1
3098	Other	DC1
186472	Black African	DC2
489189	Coloured	DC2
3153	Indian or Asian	DC2
101491	White	DC2
7184	Other	DC2
66151	Black African	DC3
139825	Coloured	DC3
816	Indian or Asian	DC3
48692	White	DC3
2692	Other	DC3
141830	Black African	DC4
311178	Coloured	DC4
2526	Indian or Asian	DC4
110314	White	DC4
8418	Other	DC4
9045	Black African	DC5
54076	Coloured	DC5
300	Indian or Asian	DC5
7197	White	DC5
394	Other	DC5
1444939	Black African	CPT
1585286	Coloured	CPT
51786	Indian or Asian	CPT
585831	White	CPT
72184	Other	CPT
\.


--
-- Data for Name: populationgroup_municipality; Type: TABLE DATA; Schema: public; Owner: census
--

COPY populationgroup_municipality (total, "population group", municipality_code) FROM stdin;
12638	Black African	EC101
33054	Coloured	EC101
224	Indian or Asian	EC101
4877	White	EC101
201	Other	EC101
21247	Black African	EC102
11888	Coloured	EC102
118	Indian or Asian	EC102
2453	White	EC102
295	Other	EC102
3916	Black African	EC103
5757	Coloured	EC103
21	Indian or Asian	EC103
796	White	EC103
48	Other	EC103
62702	Black African	EC104
9725	Coloured	EC104
525	Indian or Asian	EC104
6974	White	EC104
464	Other	EC104
47556	Black African	EC105
4473	Coloured	EC105
144	Indian or Asian	EC105
8704	White	EC105
299	Other	EC105
39116	Black African	EC106
11644	Coloured	EC106
96	Indian or Asian	EC106
3209	White	EC106
439	Other	EC106
2128	Black African	EC107
14254	Coloured	EC107
33	Indian or Asian	EC107
1244	White	EC107
102	Other	EC107
38274	Black African	EC108
41989	Coloured	EC108
245	Indian or Asian	EC108
17376	White	EC108
674	Other	EC108
12434	Black African	EC109
24335	Coloured	EC109
113	Indian or Asian	EC109
3333	White	EC109
448	Other	EC109
253490	Black African	EC121
371	Coloured	EC121
288	Indian or Asian	EC121
418	White	EC121
341	Other	EC121
250833	Black African	EC122
487	Coloured	EC122
324	Indian or Asian	EC122
517	White	EC122
229	Other	EC122
35586	Black African	EC123
507	Coloured	EC123
42	Indian or Asian	EC123
2787	White	EC123
69	Other	EC123
118454	Black African	EC124
1516	Coloured	EC124
109	Indian or Asian	EC124
2493	White	EC124
206	Other	EC124
71635	Black African	EC126
155	Coloured	EC126
71	Indian or Asian	EC126
258	White	EC126
71	Other	EC126
120178	Black African	EC127
5088	Coloured	EC127
220	Indian or Asian	EC127
1296	White	EC127
332	Other	EC127
17841	Black African	EC128
5008	Coloured	EC128
72	Indian or Asian	EC128
1180	White	EC128
163	Other	EC128
36854	Black African	EC131
21089	Coloured	EC131
192	Indian or Asian	EC131
6888	White	EC131
538	Other	EC131
30271	Black African	EC132
1928	Coloured	EC132
49	Indian or Asian	EC132
917	White	EC132
115	Other	EC132
19572	Black African	EC133
895	Coloured	EC133
36	Indian or Asian	EC133
1352	White	EC133
116	Other	EC133
176577	Black African	EC134
7189	Coloured	EC134
915	Indian or Asian	EC134
5214	White	EC134
827	Other	EC134
144503	Black African	EC135
343	Coloured	EC135
180	Indian or Asian	EC135
161	White	EC135
185	Other	EC135
117672	Black African	EC136
691	Coloured	EC136
174	Indian or Asian	EC136
663	White	EC136
260	Other	EC136
154968	Black African	EC137
149	Coloured	EC137
118	Indian or Asian	EC137
127	White	EC137
152	Other	EC137
62129	Black African	EC138
483	Coloured	EC138
123	Indian or Asian	EC138
713	White	EC138
135	Other	EC138
135559	Black African	EC141
1323	Coloured	EC141
171	Indian or Asian	EC141
905	White	EC141
183	Other	EC141
130544	Black African	EC142
1609	Coloured	EC142
261	Indian or Asian	EC142
1532	White	EC142
204	Other	EC142
37356	Black African	EC143
3244	Coloured	EC143
108	Indian or Asian	EC143
2920	White	EC143
172	Other	EC143
24543	Black African	EC144
6000	Coloured	EC144
92	Indian or Asian	EC144
2920	White	EC144
121	Other	EC144
276343	Black African	EC153
1151	Coloured	EC153
412	Indian or Asian	EC153
280	White	EC153
296	Other	EC153
154966	Black African	EC154
628	Coloured	EC154
165	Indian or Asian	EC154
303	White	EC154
73	Other	EC154
288683	Black African	EC155
869	Coloured	EC155
341	Indian or Asian	EC155
297	White	EC155
199	Other	EC155
187026	Black African	EC156
382	Coloured	EC156
256	Indian or Asian	EC156
406	White	EC156
156	Other	EC156
444770	Black African	EC157
3403	Coloured	EC157
1480	Indian or Asian	EC157
1356	White	EC157
702	Other	EC157
199986	Black African	EC441
1773	Coloured	EC441
512	Indian or Asian	EC441
1372	White	EC441
199	Other	EC441
190444	Black African	EC442
569	Coloured	EC442
207	Indian or Asian	EC442
198	White	EC442
203	Other	EC442
280710	Black African	EC443
488	Coloured	EC443
303	Indian or Asian	EC443
265	White	EC443
139	Other	EC443
123243	Black African	EC444
478	Coloured	EC444
110	Indian or Asian	EC444
63	White	EC444
83	Other	EC444
642753	Black African	BUF
45442	Coloured	BUF
6241	Indian or Asian	BUF
58258	White	BUF
2506	Other	BUF
692731	Black African	NMA
271469	Coloured	NMA
12838	Indian or Asian	NMA
165426	White	NMA
9650	Other	NMA
26180	Black African	FS161
9045	Coloured	FS161
130	Indian or Asian	FS161
3120	White	FS161
153	Other	FS161
35143	Black African	FS162
8958	Coloured	FS162
211	Indian or Asian	FS162
4630	White	FS162
228	Other	FS162
31018	Black African	FS163
769	Coloured	FS163
93	Indian or Asian	FS163
2205	White	FS163
61	Other	FS163
22465	Black African	FS164
467	Coloured	FS164
119	Indian or Asian	FS164
1188	White	FS164
74	Other	FS164
58015	Black African	FS181
726	Coloured	FS181
209	Indian or Asian	FS181
4216	White	FS181
168	Other	FS181
24481	Black African	FS182
1328	Coloured	FS182
197	Indian or Asian	FS182
2883	White	FS182
98	Other	FS182
43450	Black African	FS183
576	Coloured	FS183
173	Indian or Asian	FS183
3301	White	FS183
125	Other	FS183
356351	Black African	FS184
8733	Coloured	FS184
1457	Indian or Asian	FS184
39132	White	FS184
788	Other	FS184
75653	Black African	FS185
501	Coloured	FS185
207	Indian or Asian	FS185
4677	White	FS185
182	Other	FS185
103956	Black African	FS191
1130	Coloured	FS191
893	Indian or Asian	FS191
6367	White	FS191
251	Other	FS191
112537	Black African	FS192
1990	Coloured	FS192
603	Indian or Asian	FS192
13326	White	FS192
248	Other	FS192
55154	Black African	FS193
184	Coloured	FS193
146	Indian or Asian	FS193
4701	White	FS193
139	Other	FS193
329795	Black African	FS194
684	Coloured	FS194
776	Indian or Asian	FS194
4256	White	FS194
273	Other	FS194
43773	Black African	FS195
193	Coloured	FS195
167	Indian or Asian	FS195
3499	White	FS195
141	Other	FS195
45125	Black African	FS196
2007	Coloured	FS196
297	Indian or Asian	FS196
3367	White	FS196
260	Other	FS196
139970	Black African	FS201
4593	Coloured	FS201
533	Indian or Asian	FS201
14968	White	FS201
469	Other	FS201
104221	Black African	FS203
3180	Coloured	FS203
350	Indian or Asian	FS203
12445	White	FS203
325	Other	FS203
122697	Black African	FS204
1070	Coloured	FS204
477	Indian or Asian	FS204
24390	White	FS204
473	Other	FS204
53167	Black African	FS205
372	Coloured	FS205
156	Indian or Asian	FS205
4064	White	FS205
116	Other	FS205
622383	Black African	MAN
37337	Coloured	MAN
3204	Indian or Asian	MAN
82291	White	MAN
2217	Other	MAN
616095	Black African	GT421
8356	Coloured	GT421
7078	Indian or Asian	GT421
86948	White	GT421
3186	Other	GT421
55643	Black African	GT422
1558	Coloured	GT422
750	Indian or Asian	GT422
36869	White	GT422
480	Other	GT422
76919	Black African	GT423
1156	Coloured	GT423
1313	Indian or Asian	GT423
19562	White	GT423
570	Other	GT423
273817	Black African	GT481
3052	Coloured	GT481
7879	Indian or Asian	GT481
75941	White	GT481
1731	Other	GT481
103272	Black African	GT482
14618	Coloured	GT482
648	Indian or Asian	GT482
29948	White	GT482
800	Other	GT482
102147	Black African	GT483
750	Coloured	GT483
342	Indian or Asian	GT483
7862	White	GT483
667	Other	GT483
170897	Black African	GT484
2130	Coloured	GT484
564	Indian or Asian	GT484
23291	White	GT484
639	Other	GT484
2502769	Black African	EKU
85910	Coloured	EKU
68058	Indian or Asian	EKU
502439	White	EKU
19294	Other	EKU
3389278	Black African	JHB
247276	Coloured	JHB
216198	Indian or Asian	JHB
544530	White	JHB
37545	Other	JHB
2202847	Black African	TSH
58788	Coloured	TSH
53744	Indian or Asian	TSH
586495	White	TSH
19614	Other	TSH
160288	Black African	KZN213
194	Coloured	KZN213
181	Indian or Asian	KZN213
171	White	KZN213
141	Other	KZN213
94494	Black African	KZN214
1084	Coloured	KZN214
372	Indian or Asian	KZN214
461	White	KZN214
145	Other	KZN214
51838	Black African	KZN215
112	Coloured	KZN215
104	Indian or Asian	KZN215
445	White	KZN215
41	Other	KZN215
211083	Black African	KZN216
3664	Coloured	KZN216
13165	Indian or Asian	KZN216
27688	White	KZN216
535	Other	KZN216
76555	Black African	KZN211
150	Coloured	KZN211
382	Indian or Asian	KZN211
254	White	KZN211
61	Other	KZN211
60514	Black African	KZN212
919	Coloured	KZN212
10507	Indian or Asian	KZN212
6704	White	KZN212
231	Other	KZN212
101172	Black African	KZN221
263	Coloured	KZN221
1823	Indian or Asian	KZN221
2862	White	KZN221
254	Other	KZN221
69525	Black African	KZN222
1430	Coloured	KZN222
3508	Indian or Asian	KZN222
18004	White	KZN222
244	Other	KZN222
35111	Black African	KZN223
227	Coloured	KZN223
678	Indian or Asian	KZN223
1968	White	KZN223
119	Other	KZN223
32753	Black African	KZN224
85	Coloured	KZN224
42	Indian or Asian	KZN224
174	White	KZN224
51	Other	KZN224
501506	Black African	KZN225
17758	Coloured	KZN225
60591	Indian or Asian	KZN225
36860	White	KZN225
1821	Other	KZN225
59840	Black African	KZN226
170	Coloured	KZN226
653	Indian or Asian	KZN226
2363	White	KZN226
115	Other	KZN226
62635	Black African	KZN227
605	Coloured	KZN227
735	Indian or Asian	KZN227
1705	White	KZN227
113	Other	KZN227
217855	Black African	KZN232
2329	Coloured	KZN232
10427	Indian or Asian	KZN232
6367	White	KZN232
458	Other	KZN232
102723	Black African	KZN233
92	Coloured	KZN233
187	Indian or Asian	KZN233
71	White	KZN233
44	Other	KZN233
75024	Black African	KZN234
1135	Coloured	KZN234
4836	Indian or Asian	KZN234
1907	White	KZN234
251	Other	KZN234
128263	Black African	KZN235
287	Coloured	KZN235
469	Indian or Asian	KZN235
2822	White	KZN235
227	Other	KZN235
112530	Black African	KZN236
79	Coloured	KZN236
105	Indian or Asian	KZN236
270	White	KZN236
90	Other	KZN236
155712	Black African	KZN271
141	Coloured	KZN271
192	Indian or Asian	KZN271
527	White	KZN271
164	Other	KZN271
184962	Black African	KZN272
184	Coloured	KZN272
444	Indian or Asian	KZN272
533	White	KZN272
380	Other	KZN272
33784	Black African	KZN273
111	Coloured	KZN273
86	Indian or Asian	KZN273
1138	White	KZN273
138	Other	KZN273
71524	Black African	KZN274
86	Coloured	KZN274
113	Indian or Asian	KZN274
89	White	KZN274
113	Other	KZN274
172148	Black African	KZN275
631	Coloured	KZN275
555	Indian or Asian	KZN275
1902	White	KZN275
189	Other	KZN275
293354	Black African	KZN282
3171	Coloured	KZN282
12651	Indian or Asian	KZN282
24563	White	KZN282
719	Other	KZN282
113923	Black African	KZN286
114	Coloured	KZN286
103	Indian or Asian	KZN286
167	White	KZN286
108	Other	KZN286
121396	Black African	KZN281
217	Coloured	KZN281
253	Indian or Asian	KZN281
927	White	KZN281
96	Other	KZN281
73904	Black African	KZN283
127	Coloured	KZN283
114	Indian or Asian	KZN283
116	White	KZN283
75	Other	KZN283
207330	Black African	KZN284
1183	Coloured	KZN284
1397	Indian or Asian	KZN284
3282	White	KZN284
410	Other	KZN284
47089	Black African	KZN285
214	Coloured	KZN285
114	Indian or Asian	KZN285
320	White	KZN285
81	Other	KZN285
99283	Black African	KZN431
242	Coloured	KZN431
113	Indian or Asian	KZN431
797	White	KZN431
113	Other	KZN431
11336	Black African	KZN432
110	Coloured	KZN432
51	Indian or Asian	KZN432
1350	White	KZN432
51	Other	KZN432
57498	Black African	KZN433
5402	Coloured	KZN433
733	Indian or Asian	KZN433
2194	White	KZN433
154	Other	KZN433
99188	Black African	KZN434
1172	Coloured	KZN434
385	Indian or Asian	KZN434
831	White	KZN434
114	Other	KZN434
179104	Black African	KZN435
620	Coloured	KZN435
224	Indian or Asian	KZN435
184	White	KZN435
171	Other	KZN435
54448	Black African	KZN241
1678	Coloured	KZN241
3811	Indian or Asian	KZN241
4683	White	KZN241
242	Other	KZN241
164752	Black African	KZN242
110	Coloured	KZN242
170	Indian or Asian	KZN242
128	White	KZN242
146	Other	KZN242
176781	Black African	KZN244
183	Coloured	KZN244
233	Indian or Asian	KZN244
268	White	KZN244
112	Other	KZN244
97475	Black African	KZN245
817	Coloured	KZN245
2298	Indian or Asian	KZN245
2311	White	KZN245
192	Other	KZN245
333657	Black African	KZN252
2733	Coloured	KZN252
11686	Indian or Asian	KZN252
14275	White	KZN252
886	Other	KZN252
31920	Black African	KZN253
431	Coloured	KZN253
42	Indian or Asian	KZN253
1968	White	KZN253
82	Other	KZN253
99566	Black African	KZN254
285	Coloured	KZN254
1439	Indian or Asian	KZN254
787	White	KZN254
84	Other	KZN254
201440	Black African	KZN263
1056	Coloured	KZN263
885	Indian or Asian	KZN263
7383	White	KZN263
297	Other	KZN263
80221	Black African	KZN261
65	Coloured	KZN261
169	Indian or Asian	KZN261
1452	White	KZN261
145	Other	KZN261
124867	Black African	KZN262
106	Coloured	KZN262
181	Indian or Asian	KZN262
1942	White	KZN262
142	Other	KZN262
194007	Black African	KZN265
270	Coloured	KZN265
306	Indian or Asian	KZN265
194	White	KZN265
131	Other	KZN265
187345	Black African	KZN266
204	Coloured	KZN266
234	Indian or Asian	KZN266
317	White	KZN266
217	Other	KZN266
96399	Black African	KZN294
78	Coloured	KZN294
94	Indian or Asian	KZN294
96	White	KZN294
57	Other	KZN294
133560	Black African	KZN291
718	Coloured	KZN291
2286	Indian or Asian	KZN291
1318	White	KZN291
195	Other	KZN291
182285	Black African	KZN292
2213	Coloured	KZN292
32530	Indian or Asian	KZN292
12885	White	KZN292
1274	Other	KZN292
138513	Black African	KZN293
212	Coloured	KZN293
1001	Indian or Asian	KZN293
414	White	KZN293
679	Other	KZN293
2540441	Black African	ETH
85908	Coloured	ETH
573334	Indian or Asian	ETH
228406	White	ETH
14272	Other	ETH
242942	Black African	LIM331
169	Coloured	LIM331
614	Indian or Asian	LIM331
334	White	LIM331
159	Other	LIM331
210215	Black African	LIM332
168	Coloured	LIM332
181	Indian or Asian	LIM332
1798	White	LIM332
339	Other	LIM332
375904	Black African	LIM333
674	Coloured	LIM333
1409	Indian or Asian	LIM333
11561	White	LIM333
546	Other	LIM333
140081	Black African	LIM334
477	Coloured	LIM334
309	Indian or Asian	LIM334
9628	White	LIM334
142	Other	LIM334
90590	Black African	LIM335
293	Coloured	LIM335
217	Indian or Asian	LIM335
3590	White	LIM335
166	Other	LIM335
91222	Black African	LIM342
86	Coloured	LIM342
69	Indian or Asian	LIM342
416	White	LIM342
77	Other	LIM342
614079	Black African	LIM343
403	Coloured	LIM343
3049	Indian or Asian	LIM343
442	White	LIM343
489	Other	LIM343
64285	Black African	LIM341
229	Coloured	LIM341
329	Indian or Asian	LIM341
3284	White	LIM341
231	Other	LIM341
502123	Black African	LIM344
1114	Coloured	LIM344
1819	Indian or Asian	LIM344
10457	White	LIM344
518	Other	LIM344
161075	Black African	LIM351
65	Coloured	LIM351
151	Indian or Asian	LIM351
1006	White	LIM351
332	Other	LIM351
130637	Black African	LIM352
76	Coloured	LIM352
107	Indian or Asian	LIM352
84	White	LIM352
259	Other	LIM352
106545	Black African	LIM353
139	Coloured	LIM353
134	Indian or Asian	LIM353
1210	White	LIM353
293	Other	LIM353
584153	Black African	LIM354
5820	Coloured	LIM354
4633	Indian or Asian	LIM354
32862	White	LIM354
1530	Other	LIM354
229463	Black African	LIM355
171	Coloured	LIM355
209	Indian or Asian	LIM355
308	White	LIM355
199	Other	LIM355
71845	Black African	LIM361
527	Coloured	LIM361
205	Indian or Asian	LIM361
12309	White	LIM361
347	Other	LIM361
104964	Black African	LIM362
1023	Coloured	LIM362
344	Indian or Asian	LIM362
9120	White	LIM362
317	Other	LIM362
30509	Black African	LIM364
131	Coloured	LIM364
70	Indian or Asian	LIM364
4721	White	LIM364
209	Other	LIM364
60373	Black African	LIM365
249	Coloured	LIM365
285	Indian or Asian	LIM365
7379	White	LIM365
227	Other	LIM365
56401	Black African	LIM366
965	Coloured	LIM366
379	Indian or Asian	LIM366
8560	White	LIM366
196	Other	LIM366
295796	Black African	LIM367
403	Coloured	LIM367
1646	Indian or Asian	LIM367
9274	White	LIM367
563	Other	LIM367
120881	Black African	LIM471
111	Coloured	LIM471
292	Indian or Asian	LIM471
2029	White	LIM471
335	Other	LIM471
244083	Black African	LIM472
339	Coloured	LIM472
502	Indian or Asian	LIM472
4042	White	LIM472
398	Other	LIM472
273565	Black African	LIM473
107	Coloured	LIM473
329	Indian or Asian	LIM473
153	White	LIM473
204	Other	LIM473
93212	Black African	LIM474
31	Coloured	LIM474
61	Indian or Asian	LIM474
383	White	LIM474
107	Other	LIM474
329810	Black African	LIM475
643	Coloured	LIM475
538	Indian or Asian	LIM475
4409	White	LIM475
277	Other	LIM475
181531	Black African	MP301
434	Coloured	MP301
755	Indian or Asian	MP301
2938	White	MP301
353	Other	MP301
131625	Black African	MP302
892	Coloured	MP302
1678	Indian or Asian	MP302
14707	White	MP302
476	Other	MP302
162832	Black African	MP303
894	Coloured	MP303
1417	Indian or Asian	MP303
6447	White	MP303
393	Other	MP303
75357	Black African	MP304
528	Coloured	MP304
958	Indian or Asian	MP304
6167	White	MP304
225	Other	MP304
97363	Black African	MP305
3304	Coloured	MP305
1395	Indian or Asian	MP305
13212	White	MP305
387	Other	MP305
38079	Black African	MP306
213	Coloured	MP306
393	Indian or Asian	MP306
3633	White	MP306
72	Other	MP306
237190	Black African	MP307
4502	Coloured	MP307
4406	Indian or Asian	MP307
47176	White	MP307
1264	Other	MP307
62089	Black African	MP311
810	Coloured	MP311
259	Indian or Asian	MP311
12060	White	MP311
235	Other	MP311
321668	Black African	MP312
6717	Coloured	MP312
3562	Indian or Asian	MP312
61893	White	MP312
1626	Other	MP312
169048	Black African	MP313
5987	Coloured	MP313
3700	Indian or Asian	MP313
50186	White	MP313
910	Other	MP313
41168	Black African	MP314
563	Coloured	MP314
330	Indian or Asian	MP314
5076	White	MP314
79	Other	MP314
307952	Black African	MP315
547	Coloured	MP315
1031	Indian or Asian	MP315
299	White	MP315
628	Other	MP315
248316	Black African	MP316
247	Coloured	MP316
668	Indian or Asian	MP316
141	White	MP316
334	Other	MP316
80285	Black African	MP321
2592	Coloured	MP321
595	Indian or Asian	MP321
14299	White	MP321
616	Other	MP321
526408	Black African	MP322
5592	Coloured	MP322
4223	Indian or Asian	MP322
51451	White	MP322
1120	Other	MP322
58446	Black African	MP323
1340	Coloured	MP323
689	Indian or Asian	MP323
6555	White	MP323
127	Other	MP323
384074	Black African	MP324
889	Coloured	MP324
1316	Indian or Asian	MP324
6301	White	MP324
450	Other	MP324
538790	Black African	MP325
561	Coloured	MP325
544	Indian or Asian	MP325
1053	White	MP325
300	Other	MP325
185828	Black African	NW371
286	Coloured	NW371
264	Indian or Asian	NW371
345	White	NW371
224	Other	NW371
426192	Black African	NW372
4292	Coloured	NW372
2445	Indian or Asian	NW372
42691	White	NW372
1761	Other	NW372
486411	Black African	NW373
4862	Coloured	NW373
4215	Indian or Asian	NW373
51840	White	NW373
2247	Other	NW373
40874	Black African	NW374
872	Coloured	NW374
451	Indian or Asian	NW374
8568	White	NW374
284	Other	NW374
238516	Black African	NW375
620	Coloured	NW375
1200	Indian or Asian	NW375
1829	White	NW375
389	Other	NW375
105414	Black African	NW381
750	Coloured	NW381
227	Indian or Asian	NW381
802	White	NW381
145	Other	NW381
114818	Black African	NW382
1788	Coloured	NW382
382	Indian or Asian	NW382
6948	White	NW382
281	Other	NW382
278282	Black African	NW383
6691	Coloured	NW383
2328	Indian or Asian	NW383
3770	White	NW383
457	Other	NW383
150515	Black African	NW384
3236	Coloured	NW384
935	Indian or Asian	NW384
13771	White	NW384
445	Other	NW384
142221	Black African	NW385
1345	Coloured	NW385
1096	Indian or Asian	NW385
5659	White	NW385
392	Other	NW385
49423	Black African	NW392
9827	Coloured	NW392
748	Indian or Asian	NW392
6352	White	NW392
429	Other	NW392
55195	Black African	NW393
1356	Coloured	NW393
290	Indian or Asian	NW393
3330	White	NW393
185	Other	NW393
174506	Black African	NW394
1770	Coloured	NW394
407	Indian or Asian	NW394
700	White	NW394
259	Other	NW394
43257	Black African	NW396
3925	Coloured	NW396
296	Indian or Asian	NW396
5561	White	NW396
209	Other	NW396
101600	Black African	NW397
1468	Coloured	NW397
262	Indian or Asian	NW397
2183	White	NW397
276	Other	NW397
51101	Black African	NW401
1539	Coloured	NW401
172	Indian or Asian	NW401
3346	White	NW401
544	Other	NW401
116011	Black African	NW402
11003	Coloured	NW402
1544	Indian or Asian	NW402
33539	White	NW402
665	Other	NW402
322871	Black African	NW403
13956	Coloured	NW403
3089	Indian or Asian	NW403
57741	White	NW403
1017	Other	NW403
69028	Black African	NW404
1824	Coloured	NW404
299	Indian or Asian	NW404
6408	White	NW404
234	Other	NW404
1568	Black African	NC061
9178	Coloured	NC061
58	Indian or Asian	NC061
1013	White	NC061
165	Other	NC061
1959	Black African	NC062
41425	Coloured	NC062
219	Indian or Asian	NC062
3084	White	NC062
353	Other	NC062
543	Black African	NC064
8722	Coloured	NC064
51	Indian or Asian	NC064
821	White	NC064
50	Other	NC064
945	Black African	NC065
17741	Coloured	NC065
147	Indian or Asian	NC065
2609	White	NC065
137	Other	NC065
694	Black African	NC066
9934	Coloured	NC066
83	Indian or Asian	NC066
1832	White	NC066
45	Other	NC066
2195	Black African	NC067
9359	Coloured	NC067
55	Indian or Asian	NC067
754	White	NC067
103	Other	NC067
3963	Black African	NC071
12977	Coloured	NC071
96	Indian or Asian	NC071
1408	White	NC071
157	Other	NC071
17752	Black African	NC072
8675	Coloured	NC072
156	Indian or Asian	NC072
1606	White	NC072
187	Other	NC072
14059	Black African	NC073
24436	Coloured	NC073
236	Indian or Asian	NC073
3388	White	NC073
237	Other	NC073
562	Black African	NC074
9936	Coloured	NC074
56	Indian or Asian	NC074
1062	White	NC074
58	Other	NC074
3616	Black African	NC075
6299	Coloured	NC075
58	Indian or Asian	NC075
942	White	NC075
63	Other	NC075
2391	Black African	NC076
11108	Coloured	NC076
82	Indian or Asian	NC076
2055	White	NC076
65	Other	NC076
4049	Black African	NC077
15525	Coloured	NC077
113	Indian or Asian	NC077
1827	White	NC077
77	Other	NC077
12221	Black African	NC078
21301	Coloured	NC078
250	Indian or Asian	NC078
2777	White	NC078
528	Other	NC078
277	Black African	NC081
6328	Coloured	NC081
44	Indian or Asian	NC081
311	White	NC081
43	Other	NC081
18657	Black African	NC082
40997	Coloured	NC082
524	Indian or Asian	NC082
4177	White	NC082
1514	Other	NC082
21590	Black African	NC083
60947	Coloured	NC083
623	Indian or Asian	NC083
9216	White	NC083
1119	Other	NC083
1144	Black African	NC084
14200	Coloured	NC084
167	Indian or Asian	NC084
901	White	NC084
226	Other	NC084
18528	Black African	NC085
13184	Coloured	NC085
224	Indian or Asian	NC085
2933	White	NC085
224	Other	NC085
9317	Black African	NC086
7260	Coloured	NC086
124	Indian or Asian	NC086
1833	White	NC086
153	Other	NC086
151919	Black African	NC091
67923	Coloured	NC091
2948	Indian or Asian	NC091
18662	White	NC091
6589	Other	NC091
27386	Black African	NC092
13340	Coloured	NC092
258	Indian or Asian	NC092
1697	White	NC092
4160	Other	NC092
19366	Black African	NC093
3357	Coloured	NC093
166	Indian or Asian	NC093
1240	White	NC093
76	Other	NC093
51567	Black African	NC094
6929	Coloured	NC094
231	Indian or Asian	NC094
3953	White	NC094
319	Other	NC094
86341	Black African	NC451
1754	Coloured	NC451
237	Indian or Asian	NC451
1045	White	NC451
154	Other	NC451
81483	Black African	NC452
7113	Coloured	NC452
365	Indian or Asian	NC452
4294	White	NC452
395	Other	NC452
22894	Black African	NC453
11951	Coloured	NC453
257	Indian or Asian	NC453
5807	White	NC453
708	Other	NC453
5705	Black African	WC011
50185	Coloured	WC011
397	Indian or Asian	WC011
9968	White	WC011
892	Other	WC011
6308	Black African	WC012
37651	Coloured	WC012
171	Indian or Asian	WC012
5462	White	WC012
175	Other	WC012
7001	Black African	WC013
43915	Coloured	WC013
256	Indian or Asian	WC013
10456	White	WC013
269	Other	WC013
24292	Black African	WC014
55345	Coloured	WC014
772	Indian or Asian	WC014
17861	White	WC014
923	Other	WC014
20805	Black African	WC015
73753	Coloured	WC015
585	Indian or Asian	WC015
17780	White	WC015
838	Other	WC015
29300	Black African	WC022
76450	Coloured	WC022
273	Indian or Asian	WC022
8944	White	WC022
979	Other	WC022
56963	Black African	WC023
157029	Coloured	WC023
998	Indian or Asian	WC023
33959	White	WC023
2313	Other	WC023
43716	Black African	WC024
81361	Coloured	WC024
623	Indian or Asian	WC024
28742	White	WC024
1290	Other	WC024
40612	Black African	WC025
105641	Coloured	WC025
947	Indian or Asian	WC025
17864	White	WC025
1761	Other	WC025
15882	Black African	WC026
68708	Coloured	WC026
312	Indian or Asian	WC026
11983	White	WC026
841	Other	WC026
4455	Black African	WC034
24716	Coloured	WC034
113	Indian or Asian	WC034
6239	White	WC034
393	Other	WC034
28757	Black African	WC031
68478	Coloured	WC031
387	Indian or Asian	WC031
10173	White	WC031
995	Other	WC031
29132	Black African	WC032
24969	Coloured	WC032
205	Indian or Asian	WC032
25131	White	WC032
995	Other	WC032
3808	Black African	WC033
21662	Coloured	WC033
111	Indian or Asian	WC033
7149	White	WC033
308	Other	WC033
1156	Black African	WC041
20963	Coloured	WC041
73	Indian or Asian	WC041
2448	White	WC041
128	Other	WC041
3906	Black African	WC042
36069	Coloured	WC042
199	Indian or Asian	WC042
12233	White	WC042
235	Other	WC042
26346	Black African	WC043
38892	Coloured	WC043
470	Indian or Asian	WC043
22776	White	WC043
946	Other	WC043
54674	Black African	WC044
97632	Coloured	WC044
924	Indian or Asian	WC044
38135	White	WC044
2306	Other	WC044
8740	Black African	WC045
74202	Coloured	WC045
316	Indian or Asian	WC045
11983	White	WC045
692	Other	WC045
22239	Black African	WC047
15344	Coloured	WC047
249	Indian or Asian	WC047
8307	White	WC047
3023	Other	WC047
24769	Black African	WC048
28076	Coloured	WC048
294	Indian or Asian	WC048
14432	White	WC048
1088	Other	WC048
578	Black African	WC051
6546	Coloured	WC051
20	Indian or Asian	WC051
1103	White	WC051
42	Other	WC051
365	Black African	WC052
11096	Coloured	WC052
38	Indian or Asian	WC052
1555	White	WC052
82	Other	WC052
8103	Black African	WC053
36433	Coloured	WC053
241	Indian or Asian	WC053
4539	White	WC053
270	Other	WC053
1444939	Black African	CPT
1585286	Coloured	CPT
51786	Indian or Asian	CPT
585831	White	CPT
72184	Other	CPT
\.


--
-- Data for Name: populationgroup_province; Type: TABLE DATA; Schema: public; Owner: census
--

COPY populationgroup_province (total, "population group", province_code) FROM stdin;
5660230	Black African	EC
541850	Coloured	EC
27929	Indian or Asian	EC
310450	White	EC
21595	Other	EC
2405533	Black African	FS
83844	Coloured	FS
10398	Indian or Asian	FS
239026	White	FS
6790	Other	FS
9493684	Black African	GT
423594	Coloured	GT
356574	Indian or Asian	GT
1913884	White	GT
84527	Other	GT
8912921	Black African	KZN
141376	Coloured	KZN
756991	Indian or Asian	KZN
428842	White	KZN
27170	Other	KZN
5224754	Black African	LIM
14415	Coloured	LIM
17881	Indian or Asian	LIM
139359	White	LIM
8459	Other	LIM
3662219	Black African	MP
36611	Coloured	MP
27917	Indian or Asian	MP
303595	White	MP
9597	Other	MP
3152063	Black African	NW
71409	Coloured	NW
20652	Indian or Asian	NW
255385	White	NW
10444	Other	NW
576986	Black African	NC
461899	Coloured	NC
7827	Indian or Asian	NC
81246	White	NC
17903	Other	NC
1912547	Black African	WC
2840404	Coloured	WC
60761	Indian or Asian	WC
915053	White	WC
93969	Other	WC
\.


--
-- Data for Name: populationgroup_ward; Type: TABLE DATA; Schema: public; Owner: census
--

COPY populationgroup_ward (total, "population group", ward_code) FROM stdin;
1514	Black African	21001001
6437	Coloured	21001001
32	Indian or Asian	21001001
730	White	21001001
31	Other	21001001
3421	Black African	21001002
1393	Coloured	21001002
21	Indian or Asian	21001002
2356	White	21001002
68	Other	21001002
471	Black African	21001003
5416	Coloured	21001003
9	Indian or Asian	21001003
3	White	21001003
20	Other	21001003
1051	Black African	21001004
8562	Coloured	21001004
72	Indian or Asian	21001004
563	White	21001004
33	Other	21001004
202	Black African	21001005
5757	Coloured	21001005
42	Indian or Asian	21001005
0	White	21001005
17	Other	21001005
5035	Black African	21001006
1384	Coloured	21001006
25	Indian or Asian	21001006
2	White	21001006
12	Other	21001006
943	Black African	21001007
4105	Coloured	21001007
23	Indian or Asian	21001007
1223	White	21001007
19	Other	21001007
3278	Black African	21002001
1143	Coloured	21002001
10	Indian or Asian	21002001
289	White	21002001
28	Other	21002001
3169	Black African	21002002
2370	Coloured	21002002
37	Indian or Asian	21002002
1128	White	21002002
44	Other	21002002
6493	Black African	21002003
378	Coloured	21002003
19	Indian or Asian	21002003
68	White	21002003
21	Other	21002003
2211	Black African	21002004
3365	Coloured	21002004
26	Indian or Asian	21002004
287	White	21002004
43	Other	21002004
1813	Black African	21002005
3387	Coloured	21002005
15	Indian or Asian	21002005
203	White	21002005
28	Other	21002005
4283	Black African	21002006
1246	Coloured	21002006
10	Indian or Asian	21002006
479	White	21002006
131	Other	21002006
524	Black African	21003001
1409	Coloured	21003001
4	Indian or Asian	21003001
523	White	21003001
8	Other	21003001
2070	Black African	21003002
1913	Coloured	21003002
6	Indian or Asian	21003002
37	White	21003002
18	Other	21003002
653	Black African	21003003
852	Coloured	21003003
9	Indian or Asian	21003003
43	White	21003003
8	Other	21003003
669	Black African	21003004
1583	Coloured	21003004
2	Indian or Asian	21003004
193	White	21003004
14	Other	21003004
2212	Black African	21004001
423	Coloured	21004001
3	Indian or Asian	21004001
313	White	21004001
3	Other	21004001
7034	Black African	21004002
13	Coloured	21004002
10	Indian or Asian	21004002
22	White	21004002
17	Other	21004002
2265	Black African	21004003
3349	Coloured	21004003
53	Indian or Asian	21004003
739	White	21004003
60	Other	21004003
2804	Black African	21004004
3191	Coloured	21004004
199	Indian or Asian	21004004
2180	White	21004004
96	Other	21004004
7836	Black African	21004005
435	Coloured	21004005
9	Indian or Asian	21004005
1	White	21004005
38	Other	21004005
4668	Black African	21004006
20	Coloured	21004006
8	Indian or Asian	21004006
3	White	21004006
8	Other	21004006
2880	Black African	21004007
34	Coloured	21004007
3	Indian or Asian	21004007
1	White	21004007
20	Other	21004007
2459	Black African	21004008
327	Coloured	21004008
70	Indian or Asian	21004008
1643	White	21004008
88	Other	21004008
4930	Black African	21004009
17	Coloured	21004009
3	Indian or Asian	21004009
30	White	21004009
30	Other	21004009
6627	Black African	21004010
44	Coloured	21004010
7	Indian or Asian	21004010
44	White	21004010
29	Other	21004010
6868	Black African	21004011
12	Coloured	21004011
11	Indian or Asian	21004011
2	White	21004011
21	Other	21004011
1656	Black African	21004012
150	Coloured	21004012
116	Indian or Asian	21004012
996	White	21004012
8	Other	21004012
5888	Black African	21004013
67	Coloured	21004013
3	Indian or Asian	21004013
516	White	21004013
20	Other	21004013
4574	Black African	21004014
1642	Coloured	21004014
29	Indian or Asian	21004014
482	White	21004014
25	Other	21004014
5654	Black African	21005001
6	Coloured	21005001
9	Indian or Asian	21005001
2	White	21005001
42	Other	21005001
3954	Black African	21005002
1687	Coloured	21005002
24	Indian or Asian	21005002
1234	White	21005002
49	Other	21005002
4956	Black African	21005003
839	Coloured	21005003
11	Indian or Asian	21005003
646	White	21005003
36	Other	21005003
4151	Black African	21005004
70	Coloured	21005004
10	Indian or Asian	21005004
932	White	21005004
31	Other	21005004
5691	Black African	21005005
99	Coloured	21005005
10	Indian or Asian	21005005
493	White	21005005
25	Other	21005005
6300	Black African	21005006
1544	Coloured	21005006
25	Indian or Asian	21005006
1117	White	21005006
4	Other	21005006
5349	Black African	21005007
12	Coloured	21005007
4	Indian or Asian	21005007
1	White	21005007
27	Other	21005007
4297	Black African	21005008
11	Coloured	21005008
3	Indian or Asian	21005008
1	White	21005008
20	Other	21005008
6295	Black African	21005009
43	Coloured	21005009
7	Indian or Asian	21005009
10	White	21005009
30	Other	21005009
910	Black African	21005010
162	Coloured	21005010
40	Indian or Asian	21005010
4269	White	21005010
34	Other	21005010
5849	Black African	21006001
103	Coloured	21006001
6	Indian or Asian	21006001
3	White	21006001
47	Other	21006001
3396	Black African	21006002
3180	Coloured	21006002
21	Indian or Asian	21006002
655	White	21006002
53	Other	21006002
4773	Black African	21006003
2615	Coloured	21006003
18	Indian or Asian	21006003
268	White	21006003
70	Other	21006003
4660	Black African	21006004
66	Coloured	21006004
10	Indian or Asian	21006004
63	White	21006004
33	Other	21006004
5069	Black African	21006005
49	Coloured	21006005
3	Indian or Asian	21006005
130	White	21006005
52	Other	21006005
5102	Black African	21006006
313	Coloured	21006006
2	Indian or Asian	21006006
276	White	21006006
46	Other	21006006
4331	Black African	21006007
2463	Coloured	21006007
26	Indian or Asian	21006007
1350	White	21006007
76	Other	21006007
5936	Black African	21006008
2854	Coloured	21006008
10	Indian or Asian	21006008
465	White	21006008
62	Other	21006008
194	Black African	21007001
1773	Coloured	21007001
4	Indian or Asian	21007001
333	White	21007001
17	Other	21007001
993	Black African	21007002
3347	Coloured	21007002
9	Indian or Asian	21007002
344	White	21007002
35	Other	21007002
745	Black African	21007003
6564	Coloured	21007003
15	Indian or Asian	21007003
328	White	21007003
38	Other	21007003
197	Black African	21007004
2570	Coloured	21007004
5	Indian or Asian	21007004
238	White	21007004
11	Other	21007004
1152	Black African	21008001
625	Coloured	21008001
3	Indian or Asian	21008001
343	White	21008001
3	Other	21008001
679	Black African	21008002
2420	Coloured	21008002
13	Indian or Asian	21008002
9	White	21008002
15	Other	21008002
67	Black African	21008003
19	Coloured	21008003
1	Indian or Asian	21008003
705	White	21008003
4	Other	21008003
1755	Black African	21008004
12353	Coloured	21008004
54	Indian or Asian	21008004
182	White	21008004
69	Other	21008004
473	Black African	21008005
2769	Coloured	21008005
13	Indian or Asian	21008005
2	White	21008005
3	Other	21008005
5790	Black African	21008006
116	Coloured	21008006
6	Indian or Asian	21008006
2	White	21008006
30	Other	21008006
3528	Black African	21008007
4549	Coloured	21008007
30	Indian or Asian	21008007
1263	White	21008007
45	Other	21008007
700	Black African	21008008
1156	Coloured	21008008
28	Indian or Asian	21008008
6266	White	21008008
69	Other	21008008
3972	Black African	21008009
5612	Coloured	21008009
14	Indian or Asian	21008009
245	White	21008009
65	Other	21008009
2470	Black African	21008010
4241	Coloured	21008010
20	Indian or Asian	21008010
111	White	21008010
90	Other	21008010
347	Black African	21008011
171	Coloured	21008011
8	Indian or Asian	21008011
2349	White	21008011
10	Other	21008011
2916	Black African	21008012
1291	Coloured	21008012
11	Indian or Asian	21008012
1874	White	21008012
40	Other	21008012
2659	Black African	21008013
3004	Coloured	21008013
1	Indian or Asian	21008013
767	White	21008013
54	Other	21008013
3354	Black African	21008014
2092	Coloured	21008014
9	Indian or Asian	21008014
1494	White	21008014
56	Other	21008014
8412	Black African	21008015
1571	Coloured	21008015
33	Indian or Asian	21008015
1764	White	21008015
119	Other	21008015
2848	Black African	21009001
7115	Coloured	21009001
31	Indian or Asian	21009001
473	White	21009001
190	Other	21009001
1018	Black African	21009002
3661	Coloured	21009002
37	Indian or Asian	21009002
1051	White	21009002
84	Other	21009002
989	Black African	21009003
4288	Coloured	21009003
8	Indian or Asian	21009003
194	White	21009003
16	Other	21009003
1789	Black African	21009004
3562	Coloured	21009004
13	Indian or Asian	21009004
882	White	21009004
78	Other	21009004
3375	Black African	21009005
3056	Coloured	21009005
8	Indian or Asian	21009005
429	White	21009005
34	Other	21009005
2416	Black African	21009006
2652	Coloured	21009006
16	Indian or Asian	21009006
304	White	21009006
46	Other	21009006
6810	Black African	21201001
106	Coloured	21201001
54	Indian or Asian	21201001
87	White	21201001
18	Other	21201001
8360	Black African	21201002
0	Coloured	21201002
4	Indian or Asian	21201002
2	White	21201002
30	Other	21201002
6971	Black African	21201003
5	Coloured	21201003
0	Indian or Asian	21201003
0	White	21201003
17	Other	21201003
6973	Black African	21201004
1	Coloured	21201004
1	Indian or Asian	21201004
0	White	21201004
4	Other	21201004
9179	Black African	21201005
9	Coloured	21201005
5	Indian or Asian	21201005
2	White	21201005
6	Other	21201005
7886	Black African	21201006
1	Coloured	21201006
6	Indian or Asian	21201006
1	White	21201006
7	Other	21201006
6859	Black African	21201007
0	Coloured	21201007
6	Indian or Asian	21201007
2	White	21201007
5	Other	21201007
7913	Black African	21201008
13	Coloured	21201008
12	Indian or Asian	21201008
18	White	21201008
2	Other	21201008
11373	Black African	21201009
42	Coloured	21201009
25	Indian or Asian	21201009
36	White	21201009
39	Other	21201009
7947	Black African	21201010
3	Coloured	21201010
6	Indian or Asian	21201010
6	White	21201010
7	Other	21201010
7562	Black African	21201011
1	Coloured	21201011
7	Indian or Asian	21201011
5	White	21201011
1	Other	21201011
8095	Black African	21201012
1	Coloured	21201012
4	Indian or Asian	21201012
1	White	21201012
5	Other	21201012
6951	Black African	21201013
30	Coloured	21201013
20	Indian or Asian	21201013
16	White	21201013
90	Other	21201013
7386	Black African	21201014
7	Coloured	21201014
16	Indian or Asian	21201014
3	White	21201014
5	Other	21201014
11504	Black African	21201015
7	Coloured	21201015
5	Indian or Asian	21201015
2	White	21201015
5	Other	21201015
10348	Black African	21201016
12	Coloured	21201016
3	Indian or Asian	21201016
7	White	21201016
1	Other	21201016
8911	Black African	21201017
9	Coloured	21201017
9	Indian or Asian	21201017
2	White	21201017
5	Other	21201017
6438	Black African	21201018
1	Coloured	21201018
5	Indian or Asian	21201018
3	White	21201018
2	Other	21201018
12411	Black African	21201019
23	Coloured	21201019
7	Indian or Asian	21201019
65	White	21201019
8	Other	21201019
8948	Black African	21201020
2	Coloured	21201020
7	Indian or Asian	21201020
24	White	21201020
7	Other	21201020
6657	Black African	21201021
5	Coloured	21201021
5	Indian or Asian	21201021
3	White	21201021
3	Other	21201021
7777	Black African	21201022
2	Coloured	21201022
8	Indian or Asian	21201022
0	White	21201022
0	Other	21201022
8638	Black African	21201023
1	Coloured	21201023
12	Indian or Asian	21201023
41	White	21201023
3	Other	21201023
6933	Black African	21201024
0	Coloured	21201024
8	Indian or Asian	21201024
2	White	21201024
5	Other	21201024
7671	Black African	21201025
24	Coloured	21201025
18	Indian or Asian	21201025
17	White	21201025
17	Other	21201025
9313	Black African	21201026
7	Coloured	21201026
9	Indian or Asian	21201026
2	White	21201026
5	Other	21201026
6206	Black African	21201027
2	Coloured	21201027
1	Indian or Asian	21201027
1	White	21201027
5	Other	21201027
9287	Black African	21201028
25	Coloured	21201028
8	Indian or Asian	21201028
26	White	21201028
29	Other	21201028
6377	Black African	21201029
27	Coloured	21201029
5	Indian or Asian	21201029
39	White	21201029
2	Other	21201029
8467	Black African	21201030
2	Coloured	21201030
14	Indian or Asian	21201030
0	White	21201030
3	Other	21201030
7337	Black African	21201031
0	Coloured	21201031
0	Indian or Asian	21201031
0	White	21201031
7	Other	21201031
5838	Black African	21202001
89	Coloured	21202001
129	Indian or Asian	21202001
88	White	21202001
19	Other	21202001
7789	Black African	21202002
95	Coloured	21202002
7	Indian or Asian	21202002
13	White	21202002
23	Other	21202002
7562	Black African	21202003
21	Coloured	21202003
10	Indian or Asian	21202003
7	White	21202003
5	Other	21202003
8199	Black African	21202004
21	Coloured	21202004
9	Indian or Asian	21202004
8	White	21202004
6	Other	21202004
9441	Black African	21202005
44	Coloured	21202005
14	Indian or Asian	21202005
70	White	21202005
10	Other	21202005
6029	Black African	21202006
57	Coloured	21202006
24	Indian or Asian	21202006
47	White	21202006
7	Other	21202006
8785	Black African	21202007
9	Coloured	21202007
9	Indian or Asian	21202007
5	White	21202007
4	Other	21202007
7160	Black African	21202008
2	Coloured	21202008
5	Indian or Asian	21202008
0	White	21202008
14	Other	21202008
7953	Black African	21202009
3	Coloured	21202009
2	Indian or Asian	21202009
1	White	21202009
0	Other	21202009
6465	Black African	21202010
1	Coloured	21202010
1	Indian or Asian	21202010
2	White	21202010
0	Other	21202010
7908	Black African	21202011
0	Coloured	21202011
5	Indian or Asian	21202011
2	White	21202011
1	Other	21202011
7436	Black African	21202012
1	Coloured	21202012
5	Indian or Asian	21202012
1	White	21202012
15	Other	21202012
7140	Black African	21202013
5	Coloured	21202013
4	Indian or Asian	21202013
4	White	21202013
2	Other	21202013
7412	Black African	21202014
9	Coloured	21202014
11	Indian or Asian	21202014
1	White	21202014
4	Other	21202014
6112	Black African	21202015
2	Coloured	21202015
2	Indian or Asian	21202015
1	White	21202015
2	Other	21202015
7367	Black African	21202016
1	Coloured	21202016
4	Indian or Asian	21202016
68	White	21202016
0	Other	21202016
7952	Black African	21202017
0	Coloured	21202017
8	Indian or Asian	21202017
3	White	21202017
12	Other	21202017
8507	Black African	21202018
37	Coloured	21202018
12	Indian or Asian	21202018
26	White	21202018
20	Other	21202018
7516	Black African	21202019
0	Coloured	21202019
0	Indian or Asian	21202019
6	White	21202019
0	Other	21202019
7391	Black African	21202020
6	Coloured	21202020
5	Indian or Asian	21202020
0	White	21202020
1	Other	21202020
7727	Black African	21202021
4	Coloured	21202021
2	Indian or Asian	21202021
1	White	21202021
3	Other	21202021
9673	Black African	21202022
7	Coloured	21202022
10	Indian or Asian	21202022
1	White	21202022
4	Other	21202022
7487	Black African	21202023
2	Coloured	21202023
2	Indian or Asian	21202023
2	White	21202023
1	Other	21202023
10175	Black African	21202024
2	Coloured	21202024
15	Indian or Asian	21202024
2	White	21202024
5	Other	21202024
11572	Black African	21202025
10	Coloured	21202025
6	Indian or Asian	21202025
6	White	21202025
17	Other	21202025
10472	Black African	21202026
5	Coloured	21202026
1	Indian or Asian	21202026
4	White	21202026
7	Other	21202026
9378	Black African	21202027
15	Coloured	21202027
2	Indian or Asian	21202027
56	White	21202027
8	Other	21202027
8742	Black African	21202028
11	Coloured	21202028
3	Indian or Asian	21202028
23	White	21202028
1	Other	21202028
8821	Black African	21202029
13	Coloured	21202029
10	Indian or Asian	21202029
41	White	21202029
7	Other	21202029
7485	Black African	21202030
12	Coloured	21202030
5	Indian or Asian	21202030
17	White	21202030
27	Other	21202030
9339	Black African	21202031
1	Coloured	21202031
1	Indian or Asian	21202031
6	White	21202031
1	Other	21202031
5495	Black African	21203001
14	Coloured	21203001
3	Indian or Asian	21203001
1158	White	21203001
4	Other	21203001
4314	Black African	21203002
1	Coloured	21203002
1	Indian or Asian	21203002
18	White	21203002
2	Other	21203002
5585	Black African	21203003
23	Coloured	21203003
6	Indian or Asian	21203003
27	White	21203003
1	Other	21203003
5947	Black African	21203004
6	Coloured	21203004
0	Indian or Asian	21203004
4	White	21203004
4	Other	21203004
5018	Black African	21203005
27	Coloured	21203005
6	Indian or Asian	21203005
285	White	21203005
10	Other	21203005
4664	Black African	21203006
72	Coloured	21203006
11	Indian or Asian	21203006
938	White	21203006
30	Other	21203006
4563	Black African	21203007
365	Coloured	21203007
15	Indian or Asian	21203007
359	White	21203007
18	Other	21203007
5452	Black African	21204001
17	Coloured	21204001
1	Indian or Asian	21204001
0	White	21204001
11	Other	21204001
7108	Black African	21204002
135	Coloured	21204002
13	Indian or Asian	21204002
15	White	21204002
45	Other	21204002
6004	Black African	21204003
5	Coloured	21204003
1	Indian or Asian	21204003
0	White	21204003
2	Other	21204003
5936	Black African	21204004
145	Coloured	21204004
11	Indian or Asian	21204004
497	White	21204004
15	Other	21204004
6758	Black African	21204005
1	Coloured	21204005
1	Indian or Asian	21204005
153	White	21204005
8	Other	21204005
6393	Black African	21204006
862	Coloured	21204006
16	Indian or Asian	21204006
256	White	21204006
17	Other	21204006
5587	Black African	21204007
0	Coloured	21204007
0	Indian or Asian	21204007
0	White	21204007
8	Other	21204007
6344	Black African	21204008
6	Coloured	21204008
2	Indian or Asian	21204008
1	White	21204008
4	Other	21204008
4890	Black African	21204009
29	Coloured	21204009
3	Indian or Asian	21204009
198	White	21204009
4	Other	21204009
5038	Black African	21204010
1	Coloured	21204010
4	Indian or Asian	21204010
8	White	21204010
10	Other	21204010
5125	Black African	21204011
7	Coloured	21204011
0	Indian or Asian	21204011
0	White	21204011
1	Other	21204011
7502	Black African	21204012
0	Coloured	21204012
4	Indian or Asian	21204012
2	White	21204012
1	Other	21204012
5028	Black African	21204013
0	Coloured	21204013
2	Indian or Asian	21204013
44	White	21204013
0	Other	21204013
6746	Black African	21204014
29	Coloured	21204014
10	Indian or Asian	21204014
293	White	21204014
9	Other	21204014
5648	Black African	21204015
2	Coloured	21204015
8	Indian or Asian	21204015
2	White	21204015
7	Other	21204015
7496	Black African	21204016
10	Coloured	21204016
7	Indian or Asian	21204016
4	White	21204016
27	Other	21204016
3915	Black African	21204017
211	Coloured	21204017
15	Indian or Asian	21204017
966	White	21204017
27	Other	21204017
5496	Black African	21204018
7	Coloured	21204018
7	Indian or Asian	21204018
50	White	21204018
5	Other	21204018
5610	Black African	21204019
28	Coloured	21204019
1	Indian or Asian	21204019
4	White	21204019
4	Other	21204019
6377	Black African	21204020
22	Coloured	21204020
2	Indian or Asian	21204020
0	White	21204020
1	Other	21204020
5534	Black African	21206001
7	Coloured	21206001
3	Indian or Asian	21206001
5	White	21206001
7	Other	21206001
5941	Black African	21206002
6	Coloured	21206002
11	Indian or Asian	21206002
5	White	21206002
0	Other	21206002
5814	Black African	21206003
0	Coloured	21206003
2	Indian or Asian	21206003
8	White	21206003
6	Other	21206003
5557	Black African	21206004
1	Coloured	21206004
0	Indian or Asian	21206004
1	White	21206004
0	Other	21206004
6042	Black African	21206005
6	Coloured	21206005
8	Indian or Asian	21206005
2	White	21206005
7	Other	21206005
5321	Black African	21206006
5	Coloured	21206006
12	Indian or Asian	21206006
2	White	21206006
4	Other	21206006
6020	Black African	21206007
8	Coloured	21206007
8	Indian or Asian	21206007
5	White	21206007
9	Other	21206007
5375	Black African	21206008
1	Coloured	21206008
6	Indian or Asian	21206008
4	White	21206008
5	Other	21206008
4871	Black African	21206009
5	Coloured	21206009
6	Indian or Asian	21206009
8	White	21206009
7	Other	21206009
4891	Black African	21206010
84	Coloured	21206010
5	Indian or Asian	21206010
20	White	21206010
11	Other	21206010
5822	Black African	21206011
5	Coloured	21206011
2	Indian or Asian	21206011
133	White	21206011
2	Other	21206011
4686	Black African	21206012
23	Coloured	21206012
3	Indian or Asian	21206012
63	White	21206012
7	Other	21206012
5761	Black African	21206013
5	Coloured	21206013
4	Indian or Asian	21206013
2	White	21206013
6	Other	21206013
4802	Black African	21207001
5	Coloured	21207001
4	Indian or Asian	21207001
7	White	21207001
5	Other	21207001
5779	Black African	21207002
6	Coloured	21207002
2	Indian or Asian	21207002
3	White	21207002
13	Other	21207002
5454	Black African	21207003
10	Coloured	21207003
3	Indian or Asian	21207003
1	White	21207003
8	Other	21207003
7187	Black African	21207004
64	Coloured	21207004
12	Indian or Asian	21207004
159	White	21207004
37	Other	21207004
5543	Black African	21207005
2	Coloured	21207005
2	Indian or Asian	21207005
3	White	21207005
10	Other	21207005
5371	Black African	21207006
693	Coloured	21207006
18	Indian or Asian	21207006
15	White	21207006
45	Other	21207006
5840	Black African	21207007
344	Coloured	21207007
2	Indian or Asian	21207007
15	White	21207007
3	Other	21207007
3513	Black African	21207008
3352	Coloured	21207008
53	Indian or Asian	21207008
144	White	21207008
35	Other	21207008
8011	Black African	21207009
158	Coloured	21207009
1	Indian or Asian	21207009
10	White	21207009
22	Other	21207009
5439	Black African	21207010
77	Coloured	21207010
16	Indian or Asian	21207010
332	White	21207010
15	Other	21207010
4515	Black African	21207011
73	Coloured	21207011
18	Indian or Asian	21207011
40	White	21207011
5	Other	21207011
5584	Black African	21207012
3	Coloured	21207012
4	Indian or Asian	21207012
5	White	21207012
9	Other	21207012
6544	Black African	21207013
6	Coloured	21207013
3	Indian or Asian	21207013
5	White	21207013
2	Other	21207013
5948	Black African	21207014
2	Coloured	21207014
7	Indian or Asian	21207014
2	White	21207014
2	Other	21207014
7328	Black African	21207015
88	Coloured	21207015
13	Indian or Asian	21207015
32	White	21207015
23	Other	21207015
6680	Black African	21207016
49	Coloured	21207016
16	Indian or Asian	21207016
19	White	21207016
19	Other	21207016
4822	Black African	21207017
10	Coloured	21207017
8	Indian or Asian	21207017
1	White	21207017
6	Other	21207017
6281	Black African	21207018
12	Coloured	21207018
6	Indian or Asian	21207018
13	White	21207018
15	Other	21207018
4992	Black African	21207019
6	Coloured	21207019
1	Indian or Asian	21207019
1	White	21207019
7	Other	21207019
4696	Black African	21207020
121	Coloured	21207020
24	Indian or Asian	21207020
483	White	21207020
31	Other	21207020
5850	Black African	21207021
6	Coloured	21207021
6	Indian or Asian	21207021
5	White	21207021
16	Other	21207021
4650	Black African	21208001
105	Coloured	21208001
40	Indian or Asian	21208001
513	White	21208001
58	Other	21208001
2703	Black African	21208002
1529	Coloured	21208002
18	Indian or Asian	21208002
0	White	21208002
20	Other	21208002
2756	Black African	21208003
333	Coloured	21208003
0	Indian or Asian	21208003
257	White	21208003
39	Other	21208003
7732	Black African	21208004
3041	Coloured	21208004
14	Indian or Asian	21208004
410	White	21208004
45	Other	21208004
6716	Black African	21301001
179	Coloured	21301001
7	Indian or Asian	21301001
0	White	21301001
27	Other	21301001
5284	Black African	21301002
255	Coloured	21301002
3	Indian or Asian	21301002
4	White	21301002
19	Other	21301002
4723	Black African	21301003
159	Coloured	21301003
4	Indian or Asian	21301003
0	White	21301003
30	Other	21301003
591	Black African	21301004
5841	Coloured	21301004
38	Indian or Asian	21301004
9	White	21301004
26	Other	21301004
2705	Black African	21301005
1575	Coloured	21301005
74	Indian or Asian	21301005
4331	White	21301005
65	Other	21301005
6747	Black African	21301006
4163	Coloured	21301006
14	Indian or Asian	21301006
1081	White	21301006
229	Other	21301006
913	Black African	21301007
7365	Coloured	21301007
30	Indian or Asian	21301007
74	White	21301007
19	Other	21301007
4535	Black African	21301008
708	Coloured	21301008
13	Indian or Asian	21301008
1069	White	21301008
49	Other	21301008
4638	Black African	21301009
843	Coloured	21301009
8	Indian or Asian	21301009
318	White	21301009
73	Other	21301009
7035	Black African	21302001
10	Coloured	21302001
8	Indian or Asian	21302001
30	White	21302001
19	Other	21302001
5529	Black African	21302002
17	Coloured	21302002
4	Indian or Asian	21302002
80	White	21302002
12	Other	21302002
7586	Black African	21302003
10	Coloured	21302003
8	Indian or Asian	21302003
1	White	21302003
24	Other	21302003
5130	Black African	21302004
634	Coloured	21302004
9	Indian or Asian	21302004
237	White	21302004
49	Other	21302004
4991	Black African	21302005
1257	Coloured	21302005
21	Indian or Asian	21302005
569	White	21302005
11	Other	21302005
4512	Black African	21303001
10	Coloured	21303001
1	Indian or Asian	21303001
2	White	21303001
16	Other	21303001
3942	Black African	21303002
803	Coloured	21303002
30	Indian or Asian	21303002
1140	White	21303002
74	Other	21303002
5590	Black African	21303003
71	Coloured	21303003
0	Indian or Asian	21303003
175	White	21303003
11	Other	21303003
5528	Black African	21303004
10	Coloured	21303004
4	Indian or Asian	21303004
35	White	21303004
15	Other	21303004
8751	Black African	21304001
11	Coloured	21304001
8	Indian or Asian	21304001
119	White	21304001
17	Other	21304001
6870	Black African	21304002
3	Coloured	21304002
6	Indian or Asian	21304002
12	White	21304002
28	Other	21304002
6667	Black African	21304003
16	Coloured	21304003
6	Indian or Asian	21304003
2	White	21304003
8	Other	21304003
5395	Black African	21304004
0	Coloured	21304004
5	Indian or Asian	21304004
1	White	21304004
22	Other	21304004
5867	Black African	21304005
76	Coloured	21304005
7	Indian or Asian	21304005
5	White	21304005
22	Other	21304005
5785	Black African	21304006
193	Coloured	21304006
161	Indian or Asian	21304006
953	White	21304006
34	Other	21304006
10387	Black African	21304007
10	Coloured	21304007
9	Indian or Asian	21304007
2	White	21304007
56	Other	21304007
6622	Black African	21304008
10	Coloured	21304008
17	Indian or Asian	21304008
1	White	21304008
35	Other	21304008
6887	Black African	21304009
1	Coloured	21304009
10	Indian or Asian	21304009
1	White	21304009
9	Other	21304009
4280	Black African	21304010
7	Coloured	21304010
0	Indian or Asian	21304010
2	White	21304010
15	Other	21304010
8166	Black African	21304011
12	Coloured	21304011
9	Indian or Asian	21304011
1	White	21304011
22	Other	21304011
5649	Black African	21304012
1	Coloured	21304012
6	Indian or Asian	21304012
0	White	21304012
13	Other	21304012
5467	Black African	21304013
15	Coloured	21304013
8	Indian or Asian	21304013
1	White	21304013
2	Other	21304013
5997	Black African	21304014
37	Coloured	21304014
5	Indian or Asian	21304014
7	White	21304014
21	Other	21304014
4787	Black African	21304015
4	Coloured	21304015
12	Indian or Asian	21304015
4	White	21304015
15	Other	21304015
6022	Black African	21304016
11	Coloured	21304016
22	Indian or Asian	21304016
9	White	21304016
28	Other	21304016
6969	Black African	21304017
9	Coloured	21304017
10	Indian or Asian	21304017
9	White	21304017
37	Other	21304017
10979	Black African	21304018
1211	Coloured	21304018
29	Indian or Asian	21304018
297	White	21304018
22	Other	21304018
5970	Black African	21304019
2797	Coloured	21304019
33	Indian or Asian	21304019
10	White	21304019
26	Other	21304019
6347	Black African	21304020
47	Coloured	21304020
18	Indian or Asian	21304020
8	White	21304020
15	Other	21304020
6017	Black African	21304021
49	Coloured	21304021
13	Indian or Asian	21304021
1	White	21304021
20	Other	21304021
5784	Black African	21304022
2104	Coloured	21304022
37	Indian or Asian	21304022
18	White	21304022
36	Other	21304022
4628	Black African	21304023
33	Coloured	21304023
6	Indian or Asian	21304023
1	White	21304023
8	Other	21304023
5202	Black African	21304024
35	Coloured	21304024
34	Indian or Asian	21304024
237	White	21304024
18	Other	21304024
8815	Black African	21304025
141	Coloured	21304025
75	Indian or Asian	21304025
330	White	21304025
67	Other	21304025
5603	Black African	21304026
294	Coloured	21304026
360	Indian or Asian	21304026
2920	White	21304026
212	Other	21304026
6664	Black African	21304027
59	Coloured	21304027
9	Indian or Asian	21304027
261	White	21304027
17	Other	21304027
7256	Black African	21305001
22	Coloured	21305001
8	Indian or Asian	21305001
4	White	21305001
15	Other	21305001
5675	Black African	21305002
16	Coloured	21305002
2	Indian or Asian	21305002
1	White	21305002
18	Other	21305002
6745	Black African	21305003
6	Coloured	21305003
2	Indian or Asian	21305003
0	White	21305003
7	Other	21305003
7699	Black African	21305004
13	Coloured	21305004
6	Indian or Asian	21305004
6	White	21305004
27	Other	21305004
7989	Black African	21305005
3	Coloured	21305005
12	Indian or Asian	21305005
4	White	21305005
7	Other	21305005
7240	Black African	21305006
0	Coloured	21305006
4	Indian or Asian	21305006
2	White	21305006
0	Other	21305006
6395	Black African	21305007
3	Coloured	21305007
12	Indian or Asian	21305007
2	White	21305007
4	Other	21305007
7310	Black African	21305008
58	Coloured	21305008
40	Indian or Asian	21305008
30	White	21305008
1	Other	21305008
5638	Black African	21305009
7	Coloured	21305009
1	Indian or Asian	21305009
10	White	21305009
3	Other	21305009
6134	Black African	21305010
1	Coloured	21305010
6	Indian or Asian	21305010
1	White	21305010
7	Other	21305010
5142	Black African	21305011
6	Coloured	21305011
3	Indian or Asian	21305011
0	White	21305011
0	Other	21305011
6393	Black African	21305012
1	Coloured	21305012
6	Indian or Asian	21305012
3	White	21305012
11	Other	21305012
7407	Black African	21305013
16	Coloured	21305013
12	Indian or Asian	21305013
2	White	21305013
9	Other	21305013
8636	Black African	21305014
40	Coloured	21305014
25	Indian or Asian	21305014
42	White	21305014
40	Other	21305014
7014	Black African	21305015
128	Coloured	21305015
8	Indian or Asian	21305015
23	White	21305015
8	Other	21305015
8418	Black African	21305016
2	Coloured	21305016
6	Indian or Asian	21305016
5	White	21305016
8	Other	21305016
7016	Black African	21305017
6	Coloured	21305017
5	Indian or Asian	21305017
2	White	21305017
5	Other	21305017
7406	Black African	21305018
1	Coloured	21305018
2	Indian or Asian	21305018
1	White	21305018
4	Other	21305018
5372	Black African	21305019
8	Coloured	21305019
8	Indian or Asian	21305019
0	White	21305019
0	Other	21305019
5955	Black African	21305020
3	Coloured	21305020
2	Indian or Asian	21305020
18	White	21305020
5	Other	21305020
7662	Black African	21305021
3	Coloured	21305021
12	Indian or Asian	21305021
2	White	21305021
6	Other	21305021
7020	Black African	21306001
1	Coloured	21306001
0	Indian or Asian	21306001
3	White	21306001
7	Other	21306001
5833	Black African	21306002
1	Coloured	21306002
4	Indian or Asian	21306002
1	White	21306002
7	Other	21306002
6869	Black African	21306003
6	Coloured	21306003
6	Indian or Asian	21306003
2	White	21306003
17	Other	21306003
6887	Black African	21306004
27	Coloured	21306004
23	Indian or Asian	21306004
8	White	21306004
15	Other	21306004
9553	Black African	21306005
17	Coloured	21306005
16	Indian or Asian	21306005
15	White	21306005
46	Other	21306005
7747	Black African	21306006
13	Coloured	21306006
12	Indian or Asian	21306006
0	White	21306006
6	Other	21306006
8261	Black African	21306007
3	Coloured	21306007
5	Indian or Asian	21306007
3	White	21306007
38	Other	21306007
7868	Black African	21306008
7	Coloured	21306008
18	Indian or Asian	21306008
3	White	21306008
9	Other	21306008
6743	Black African	21306009
2	Coloured	21306009
1	Indian or Asian	21306009
0	White	21306009
8	Other	21306009
5814	Black African	21306010
5	Coloured	21306010
4	Indian or Asian	21306010
36	White	21306010
13	Other	21306010
6547	Black African	21306011
282	Coloured	21306011
11	Indian or Asian	21306011
54	White	21306011
20	Other	21306011
6695	Black African	21306012
9	Coloured	21306012
9	Indian or Asian	21306012
24	White	21306012
7	Other	21306012
5790	Black African	21306013
8	Coloured	21306013
9	Indian or Asian	21306013
9	White	21306013
1	Other	21306013
7296	Black African	21306014
72	Coloured	21306014
29	Indian or Asian	21306014
329	White	21306014
25	Other	21306014
6776	Black African	21306015
3	Coloured	21306015
0	Indian or Asian	21306015
110	White	21306015
12	Other	21306015
5963	Black African	21306016
233	Coloured	21306016
22	Indian or Asian	21306016
62	White	21306016
22	Other	21306016
6010	Black African	21306017
2	Coloured	21306017
5	Indian or Asian	21306017
1	White	21306017
6	Other	21306017
6048	Black African	21307001
1	Coloured	21307001
3	Indian or Asian	21307001
2	White	21307001
4	Other	21307001
6658	Black African	21307002
1	Coloured	21307002
6	Indian or Asian	21307002
2	White	21307002
2	Other	21307002
5680	Black African	21307003
1	Coloured	21307003
4	Indian or Asian	21307003
1	White	21307003
7	Other	21307003
7268	Black African	21307004
0	Coloured	21307004
5	Indian or Asian	21307004
1	White	21307004
5	Other	21307004
6762	Black African	21307005
0	Coloured	21307005
1	Indian or Asian	21307005
5	White	21307005
0	Other	21307005
8084	Black African	21307006
0	Coloured	21307006
0	Indian or Asian	21307006
0	White	21307006
9	Other	21307006
7883	Black African	21307007
7	Coloured	21307007
2	Indian or Asian	21307007
1	White	21307007
18	Other	21307007
8583	Black African	21307008
7	Coloured	21307008
7	Indian or Asian	21307008
13	White	21307008
8	Other	21307008
7548	Black African	21307009
10	Coloured	21307009
4	Indian or Asian	21307009
19	White	21307009
6	Other	21307009
11387	Black African	21307010
50	Coloured	21307010
15	Indian or Asian	21307010
16	White	21307010
2	Other	21307010
5376	Black African	21307011
8	Coloured	21307011
36	Indian or Asian	21307011
17	White	21307011
40	Other	21307011
7652	Black African	21307012
5	Coloured	21307012
5	Indian or Asian	21307012
6	White	21307012
1	Other	21307012
7914	Black African	21307013
0	Coloured	21307013
0	Indian or Asian	21307013
1	White	21307013
1	Other	21307013
8055	Black African	21307014
6	Coloured	21307014
5	Indian or Asian	21307014
7	White	21307014
1	Other	21307014
9395	Black African	21307015
21	Coloured	21307015
4	Indian or Asian	21307015
10	White	21307015
6	Other	21307015
7789	Black African	21307016
11	Coloured	21307016
3	Indian or Asian	21307016
6	White	21307016
9	Other	21307016
8391	Black African	21307017
2	Coloured	21307017
1	Indian or Asian	21307017
3	White	21307017
7	Other	21307017
9025	Black African	21307018
3	Coloured	21307018
11	Indian or Asian	21307018
3	White	21307018
25	Other	21307018
8609	Black African	21307019
14	Coloured	21307019
3	Indian or Asian	21307019
9	White	21307019
0	Other	21307019
6862	Black African	21307020
1	Coloured	21307020
2	Indian or Asian	21307020
3	White	21307020
0	Other	21307020
7341	Black African	21308001
209	Coloured	21308001
58	Indian or Asian	21308001
623	White	21308001
25	Other	21308001
6991	Black African	21308002
163	Coloured	21308002
3	Indian or Asian	21308002
2	White	21308002
12	Other	21308002
8103	Black African	21308003
2	Coloured	21308003
1	Indian or Asian	21308003
45	White	21308003
22	Other	21308003
5613	Black African	21308004
43	Coloured	21308004
29	Indian or Asian	21308004
20	White	21308004
48	Other	21308004
8641	Black African	21308005
3	Coloured	21308005
10	Indian or Asian	21308005
9	White	21308005
16	Other	21308005
6156	Black African	21308006
9	Coloured	21308006
4	Indian or Asian	21308006
1	White	21308006
2	Other	21308006
6445	Black African	21308007
9	Coloured	21308007
4	Indian or Asian	21308007
5	White	21308007
1	Other	21308007
6582	Black African	21308008
39	Coloured	21308008
7	Indian or Asian	21308008
2	White	21308008
6	Other	21308008
6258	Black African	21308009
5	Coloured	21308009
7	Indian or Asian	21308009
6	White	21308009
2	Other	21308009
9297	Black African	21401001
76	Coloured	21401001
1	Indian or Asian	21401001
71	White	21401001
13	Other	21401001
9747	Black African	21401002
77	Coloured	21401002
11	Indian or Asian	21401002
7	White	21401002
16	Other	21401002
7481	Black African	21401003
442	Coloured	21401003
17	Indian or Asian	21401003
172	White	21401003
19	Other	21401003
6284	Black African	21401004
243	Coloured	21401004
18	Indian or Asian	21401004
382	White	21401004
19	Other	21401004
8131	Black African	21401005
294	Coloured	21401005
4	Indian or Asian	21401005
15	White	21401005
4	Other	21401005
5423	Black African	21401006
0	Coloured	21401006
3	Indian or Asian	21401006
3	White	21401006
2	Other	21401006
7584	Black African	21401007
8	Coloured	21401007
1	Indian or Asian	21401007
0	White	21401007
5	Other	21401007
6386	Black African	21401008
1	Coloured	21401008
0	Indian or Asian	21401008
0	White	21401008
5	Other	21401008
11114	Black African	21401009
16	Coloured	21401009
30	Indian or Asian	21401009
5	White	21401009
57	Other	21401009
8818	Black African	21401010
7	Coloured	21401010
14	Indian or Asian	21401010
2	White	21401010
3	Other	21401010
8609	Black African	21401011
2	Coloured	21401011
13	Indian or Asian	21401011
17	White	21401011
7	Other	21401011
7733	Black African	21401012
9	Coloured	21401012
6	Indian or Asian	21401012
12	White	21401012
1	Other	21401012
9543	Black African	21401013
4	Coloured	21401013
5	Indian or Asian	21401013
5	White	21401013
1	Other	21401013
6924	Black African	21401014
3	Coloured	21401014
0	Indian or Asian	21401014
0	White	21401014
4	Other	21401014
8593	Black African	21401015
2	Coloured	21401015
13	Indian or Asian	21401015
8	White	21401015
16	Other	21401015
7273	Black African	21401016
15	Coloured	21401016
12	Indian or Asian	21401016
13	White	21401016
2	Other	21401016
6619	Black African	21401017
124	Coloured	21401017
24	Indian or Asian	21401017
191	White	21401017
8	Other	21401017
6618	Black African	21402001
7	Coloured	21402001
7	Indian or Asian	21402001
5	White	21402001
9	Other	21402001
11822	Black African	21402002
2	Coloured	21402002
21	Indian or Asian	21402002
4	White	21402002
7	Other	21402002
5352	Black African	21402003
3	Coloured	21402003
10	Indian or Asian	21402003
7	White	21402003
7	Other	21402003
5011	Black African	21402004
2	Coloured	21402004
4	Indian or Asian	21402004
6	White	21402004
4	Other	21402004
5049	Black African	21402005
2	Coloured	21402005
5	Indian or Asian	21402005
9	White	21402005
1	Other	21402005
6620	Black African	21402006
10	Coloured	21402006
5	Indian or Asian	21402006
3	White	21402006
0	Other	21402006
7131	Black African	21402007
9	Coloured	21402007
5	Indian or Asian	21402007
6	White	21402007
5	Other	21402007
9849	Black African	21402008
25	Coloured	21402008
19	Indian or Asian	21402008
12	White	21402008
49	Other	21402008
6820	Black African	21402009
5	Coloured	21402009
11	Indian or Asian	21402009
12	White	21402009
19	Other	21402009
8904	Black African	21402010
73	Coloured	21402010
61	Indian or Asian	21402010
8	White	21402010
7	Other	21402010
7775	Black African	21402011
2	Coloured	21402011
14	Indian or Asian	21402011
1	White	21402011
1	Other	21402011
5596	Black African	21402012
6	Coloured	21402012
5	Indian or Asian	21402012
0	White	21402012
14	Other	21402012
6596	Black African	21402013
39	Coloured	21402013
13	Indian or Asian	21402013
9	White	21402013
6	Other	21402013
6093	Black African	21402014
733	Coloured	21402014
12	Indian or Asian	21402014
255	White	21402014
21	Other	21402014
6092	Black African	21402015
37	Coloured	21402015
6	Indian or Asian	21402015
348	White	21402015
2	Other	21402015
5178	Black African	21402016
31	Coloured	21402016
8	Indian or Asian	21402016
554	White	21402016
8	Other	21402016
6755	Black African	21402017
0	Coloured	21402017
17	Indian or Asian	21402017
1	White	21402017
8	Other	21402017
6003	Black African	21402018
8	Coloured	21402018
19	Indian or Asian	21402018
0	White	21402018
7	Other	21402018
7281	Black African	21402019
615	Coloured	21402019
20	Indian or Asian	21402019
293	White	21402019
29	Other	21402019
6545	Black African	21403001
179	Coloured	21403001
20	Indian or Asian	21403001
660	White	21403001
30	Other	21403001
6621	Black African	21403002
2072	Coloured	21403002
7	Indian or Asian	21403002
268	White	21403002
32	Other	21403002
5654	Black African	21403003
18	Coloured	21403003
10	Indian or Asian	21403003
4	White	21403003
9	Other	21403003
5339	Black African	21403004
823	Coloured	21403004
36	Indian or Asian	21403004
1258	White	21403004
38	Other	21403004
4009	Black African	21403005
132	Coloured	21403005
21	Indian or Asian	21403005
728	White	21403005
46	Other	21403005
9187	Black African	21403006
19	Coloured	21403006
13	Indian or Asian	21403006
1	White	21403006
18	Other	21403006
3610	Black African	21404001
2166	Coloured	21404001
18	Indian or Asian	21404001
364	White	21404001
25	Other	21404001
4072	Black African	21404002
615	Coloured	21404002
16	Indian or Asian	21404002
12	White	21404002
12	Other	21404002
5920	Black African	21404003
1609	Coloured	21404003
27	Indian or Asian	21404003
2540	White	21404003
53	Other	21404003
3808	Black African	21404004
1402	Coloured	21404004
24	Indian or Asian	21404004
3	White	21404004
12	Other	21404004
7134	Black African	21404005
207	Coloured	21404005
8	Indian or Asian	21404005
1	White	21404005
18	Other	21404005
6891	Black African	21503001
2	Coloured	21503001
10	Indian or Asian	21503001
8	White	21503001
0	Other	21503001
11325	Black African	21503002
5	Coloured	21503002
1	Indian or Asian	21503002
3	White	21503002
0	Other	21503002
8135	Black African	21503003
2	Coloured	21503003
9	Indian or Asian	21503003
3	White	21503003
1	Other	21503003
8619	Black African	21503004
6	Coloured	21503004
20	Indian or Asian	21503004
2	White	21503004
3	Other	21503004
9968	Black African	21503005
8	Coloured	21503005
8	Indian or Asian	21503005
13	White	21503005
4	Other	21503005
10224	Black African	21503006
34	Coloured	21503006
60	Indian or Asian	21503006
23	White	21503006
118	Other	21503006
9962	Black African	21503007
9	Coloured	21503007
5	Indian or Asian	21503007
26	White	21503007
7	Other	21503007
7296	Black African	21503008
7	Coloured	21503008
0	Indian or Asian	21503008
17	White	21503008
0	Other	21503008
9418	Black African	21503009
12	Coloured	21503009
6	Indian or Asian	21503009
1	White	21503009
4	Other	21503009
8234	Black African	21503010
16	Coloured	21503010
0	Indian or Asian	21503010
1	White	21503010
0	Other	21503010
9182	Black African	21503011
9	Coloured	21503011
12	Indian or Asian	21503011
8	White	21503011
0	Other	21503011
7605	Black African	21503012
7	Coloured	21503012
10	Indian or Asian	21503012
2	White	21503012
6	Other	21503012
9165	Black African	21503013
30	Coloured	21503013
20	Indian or Asian	21503013
6	White	21503013
11	Other	21503013
8529	Black African	21503014
142	Coloured	21503014
11	Indian or Asian	21503014
2	White	21503014
32	Other	21503014
6380	Black African	21503015
128	Coloured	21503015
71	Indian or Asian	21503015
27	White	21503015
57	Other	21503015
8091	Black African	21503016
22	Coloured	21503016
9	Indian or Asian	21503016
2	White	21503016
0	Other	21503016
7474	Black African	21503017
159	Coloured	21503017
19	Indian or Asian	21503017
22	White	21503017
4	Other	21503017
8168	Black African	21503018
6	Coloured	21503018
15	Indian or Asian	21503018
3	White	21503018
2	Other	21503018
10973	Black African	21503019
111	Coloured	21503019
19	Indian or Asian	21503019
10	White	21503019
18	Other	21503019
11177	Black African	21503020
80	Coloured	21503020
9	Indian or Asian	21503020
2	White	21503020
1	Other	21503020
11503	Black African	21503021
115	Coloured	21503021
15	Indian or Asian	21503021
14	White	21503021
2	Other	21503021
8780	Black African	21503022
32	Coloured	21503022
25	Indian or Asian	21503022
6	White	21503022
7	Other	21503022
6844	Black African	21503023
51	Coloured	21503023
5	Indian or Asian	21503023
20	White	21503023
2	Other	21503023
7841	Black African	21503024
17	Coloured	21503024
1	Indian or Asian	21503024
5	White	21503024
0	Other	21503024
8623	Black African	21503025
5	Coloured	21503025
1	Indian or Asian	21503025
9	White	21503025
1	Other	21503025
9146	Black African	21503026
27	Coloured	21503026
13	Indian or Asian	21503026
19	White	21503026
0	Other	21503026
6395	Black African	21503027
39	Coloured	21503027
5	Indian or Asian	21503027
2	White	21503027
2	Other	21503027
10481	Black African	21503028
31	Coloured	21503028
7	Indian or Asian	21503028
10	White	21503028
5	Other	21503028
9878	Black African	21503029
34	Coloured	21503029
11	Indian or Asian	21503029
7	White	21503029
3	Other	21503029
10775	Black African	21503030
1	Coloured	21503030
2	Indian or Asian	21503030
2	White	21503030
5	Other	21503030
9262	Black African	21503031
5	Coloured	21503031
12	Indian or Asian	21503031
2	White	21503031
1	Other	21503031
9292	Black African	21504001
17	Coloured	21504001
6	Indian or Asian	21504001
14	White	21504001
4	Other	21504001
8658	Black African	21504002
62	Coloured	21504002
14	Indian or Asian	21504002
34	White	21504002
3	Other	21504002
8739	Black African	21504003
29	Coloured	21504003
8	Indian or Asian	21504003
13	White	21504003
1	Other	21504003
7081	Black African	21504004
32	Coloured	21504004
4	Indian or Asian	21504004
6	White	21504004
8	Other	21504004
6773	Black African	21504005
48	Coloured	21504005
6	Indian or Asian	21504005
71	White	21504005
1	Other	21504005
5403	Black African	21504006
225	Coloured	21504006
40	Indian or Asian	21504006
72	White	21504006
7	Other	21504006
8159	Black African	21504007
8	Coloured	21504007
3	Indian or Asian	21504007
3	White	21504007
0	Other	21504007
6679	Black African	21504008
0	Coloured	21504008
9	Indian or Asian	21504008
3	White	21504008
4	Other	21504008
5873	Black African	21504009
27	Coloured	21504009
3	Indian or Asian	21504009
3	White	21504009
1	Other	21504009
8705	Black African	21504010
35	Coloured	21504010
6	Indian or Asian	21504010
27	White	21504010
3	Other	21504010
8632	Black African	21504011
26	Coloured	21504011
6	Indian or Asian	21504011
11	White	21504011
2	Other	21504011
9277	Black African	21504012
22	Coloured	21504012
8	Indian or Asian	21504012
1	White	21504012
5	Other	21504012
8223	Black African	21504013
17	Coloured	21504013
1	Indian or Asian	21504013
16	White	21504013
2	Other	21504013
6933	Black African	21504014
16	Coloured	21504014
5	Indian or Asian	21504014
6	White	21504014
4	Other	21504014
3996	Black African	21504015
11	Coloured	21504015
6	Indian or Asian	21504015
3	White	21504015
1	Other	21504015
6418	Black African	21504016
0	Coloured	21504016
12	Indian or Asian	21504016
5	White	21504016
2	Other	21504016
7326	Black African	21504017
17	Coloured	21504017
2	Indian or Asian	21504017
2	White	21504017
0	Other	21504017
8341	Black African	21504018
5	Coloured	21504018
9	Indian or Asian	21504018
3	White	21504018
0	Other	21504018
10595	Black African	21504019
6	Coloured	21504019
14	Indian or Asian	21504019
2	White	21504019
8	Other	21504019
9864	Black African	21504020
25	Coloured	21504020
5	Indian or Asian	21504020
6	White	21504020
15	Other	21504020
9884	Black African	21505001
13	Coloured	21505001
47	Indian or Asian	21505001
3	White	21505001
20	Other	21505001
8021	Black African	21505002
4	Coloured	21505002
5	Indian or Asian	21505002
7	White	21505002
4	Other	21505002
7458	Black African	21505003
13	Coloured	21505003
13	Indian or Asian	21505003
3	White	21505003
2	Other	21505003
7819	Black African	21505004
1	Coloured	21505004
2	Indian or Asian	21505004
3	White	21505004
0	Other	21505004
8626	Black African	21505005
3	Coloured	21505005
0	Indian or Asian	21505005
2	White	21505005
1	Other	21505005
9988	Black African	21505006
10	Coloured	21505006
17	Indian or Asian	21505006
3	White	21505006
0	Other	21505006
7951	Black African	21505007
73	Coloured	21505007
8	Indian or Asian	21505007
10	White	21505007
2	Other	21505007
7857	Black African	21505008
4	Coloured	21505008
8	Indian or Asian	21505008
6	White	21505008
0	Other	21505008
10269	Black African	21505009
77	Coloured	21505009
17	Indian or Asian	21505009
45	White	21505009
18	Other	21505009
10836	Black African	21505010
7	Coloured	21505010
5	Indian or Asian	21505010
9	White	21505010
6	Other	21505010
13189	Black African	21505011
20	Coloured	21505011
7	Indian or Asian	21505011
2	White	21505011
29	Other	21505011
10439	Black African	21505012
157	Coloured	21505012
7	Indian or Asian	21505012
7	White	21505012
20	Other	21505012
8457	Black African	21505013
10	Coloured	21505013
6	Indian or Asian	21505013
6	White	21505013
12	Other	21505013
8294	Black African	21505014
14	Coloured	21505014
6	Indian or Asian	21505014
9	White	21505014
7	Other	21505014
11802	Black African	21505015
29	Coloured	21505015
27	Indian or Asian	21505015
13	White	21505015
11	Other	21505015
8133	Black African	21505016
5	Coloured	21505016
1	Indian or Asian	21505016
6	White	21505016
1	Other	21505016
10242	Black African	21505017
8	Coloured	21505017
5	Indian or Asian	21505017
6	White	21505017
6	Other	21505017
8275	Black African	21505018
13	Coloured	21505018
6	Indian or Asian	21505018
1	White	21505018
0	Other	21505018
11041	Black African	21505019
23	Coloured	21505019
11	Indian or Asian	21505019
14	White	21505019
6	Other	21505019
11419	Black African	21505020
61	Coloured	21505020
48	Indian or Asian	21505020
46	White	21505020
7	Other	21505020
7324	Black African	21505021
43	Coloured	21505021
11	Indian or Asian	21505021
11	White	21505021
17	Other	21505021
10742	Black African	21505022
6	Coloured	21505022
25	Indian or Asian	21505022
8	White	21505022
0	Other	21505022
9385	Black African	21505023
4	Coloured	21505023
4	Indian or Asian	21505023
8	White	21505023
3	Other	21505023
7397	Black African	21505024
2	Coloured	21505024
6	Indian or Asian	21505024
1	White	21505024
0	Other	21505024
8486	Black African	21505025
24	Coloured	21505025
7	Indian or Asian	21505025
30	White	21505025
12	Other	21505025
11343	Black African	21505026
15	Coloured	21505026
8	Indian or Asian	21505026
16	White	21505026
3	Other	21505026
6580	Black African	21505027
9	Coloured	21505027
8	Indian or Asian	21505027
0	White	21505027
1	Other	21505027
8315	Black African	21505028
18	Coloured	21505028
6	Indian or Asian	21505028
2	White	21505028
1	Other	21505028
10151	Black African	21505029
34	Coloured	21505029
10	Indian or Asian	21505029
9	White	21505029
7	Other	21505029
10187	Black African	21505030
168	Coloured	21505030
8	Indian or Asian	21505030
6	White	21505030
1	Other	21505030
8773	Black African	21505031
2	Coloured	21505031
3	Indian or Asian	21505031
3	White	21505031
4	Other	21505031
7376	Black African	21506001
6	Coloured	21506001
1	Indian or Asian	21506001
8	White	21506001
0	Other	21506001
6597	Black African	21506002
36	Coloured	21506002
2	Indian or Asian	21506002
43	White	21506002
8	Other	21506002
7877	Black African	21506003
2	Coloured	21506003
3	Indian or Asian	21506003
3	White	21506003
5	Other	21506003
6994	Black African	21506004
0	Coloured	21506004
2	Indian or Asian	21506004
1	White	21506004
1	Other	21506004
6150	Black African	21506005
27	Coloured	21506005
10	Indian or Asian	21506005
7	White	21506005
2	Other	21506005
10257	Black African	21506006
135	Coloured	21506006
109	Indian or Asian	21506006
50	White	21506006
28	Other	21506006
5496	Black African	21506007
2	Coloured	21506007
0	Indian or Asian	21506007
1	White	21506007
2	Other	21506007
8376	Black African	21506008
6	Coloured	21506008
5	Indian or Asian	21506008
3	White	21506008
8	Other	21506008
5554	Black African	21506009
4	Coloured	21506009
9	Indian or Asian	21506009
6	White	21506009
2	Other	21506009
6328	Black African	21506010
1	Coloured	21506010
9	Indian or Asian	21506010
2	White	21506010
1	Other	21506010
7589	Black African	21506011
14	Coloured	21506011
5	Indian or Asian	21506011
1	White	21506011
4	Other	21506011
8138	Black African	21506012
18	Coloured	21506012
18	Indian or Asian	21506012
181	White	21506012
5	Other	21506012
8186	Black African	21506013
3	Coloured	21506013
5	Indian or Asian	21506013
4	White	21506013
6	Other	21506013
8111	Black African	21506014
39	Coloured	21506014
2	Indian or Asian	21506014
7	White	21506014
5	Other	21506014
8991	Black African	21506015
29	Coloured	21506015
6	Indian or Asian	21506015
6	White	21506015
48	Other	21506015
7435	Black African	21506016
1	Coloured	21506016
1	Indian or Asian	21506016
0	White	21506016
2	Other	21506016
8177	Black African	21506017
5	Coloured	21506017
17	Indian or Asian	21506017
3	White	21506017
2	Other	21506017
7108	Black African	21506018
1	Coloured	21506018
10	Indian or Asian	21506018
18	White	21506018
1	Other	21506018
6855	Black African	21506019
15	Coloured	21506019
6	Indian or Asian	21506019
6	White	21506019
2	Other	21506019
5740	Black African	21506020
2	Coloured	21506020
5	Indian or Asian	21506020
0	White	21506020
0	Other	21506020
6091	Black African	21506021
13	Coloured	21506021
10	Indian or Asian	21506021
12	White	21506021
10	Other	21506021
5923	Black African	21506022
1	Coloured	21506022
0	Indian or Asian	21506022
6	White	21506022
0	Other	21506022
7167	Black African	21506023
7	Coloured	21506023
8	Indian or Asian	21506023
23	White	21506023
4	Other	21506023
7686	Black African	21506024
0	Coloured	21506024
1	Indian or Asian	21506024
13	White	21506024
0	Other	21506024
7422	Black African	21506025
5	Coloured	21506025
6	Indian or Asian	21506025
1	White	21506025
0	Other	21506025
5400	Black African	21506026
8	Coloured	21506026
6	Indian or Asian	21506026
1	White	21506026
8	Other	21506026
10598	Black African	21507001
72	Coloured	21507001
59	Indian or Asian	21507001
65	White	21507001
17	Other	21507001
10113	Black African	21507002
28	Coloured	21507002
11	Indian or Asian	21507002
17	White	21507002
54	Other	21507002
12373	Black African	21507003
58	Coloured	21507003
11	Indian or Asian	21507003
3	White	21507003
60	Other	21507003
15526	Black African	21507004
276	Coloured	21507004
22	Indian or Asian	21507004
29	White	21507004
42	Other	21507004
8028	Black African	21507005
216	Coloured	21507005
91	Indian or Asian	21507005
164	White	21507005
22	Other	21507005
10295	Black African	21507006
667	Coloured	21507006
651	Indian or Asian	21507006
469	White	21507006
114	Other	21507006
1908	Black African	21507007
21	Coloured	21507007
77	Indian or Asian	21507007
5	White	21507007
5	Other	21507007
11712	Black African	21507008
274	Coloured	21507008
139	Indian or Asian	21507008
113	White	21507008
66	Other	21507008
11845	Black African	21507009
909	Coloured	21507009
95	Indian or Asian	21507009
53	White	21507009
40	Other	21507009
11142	Black African	21507010
28	Coloured	21507010
4	Indian or Asian	21507010
18	White	21507010
6	Other	21507010
23157	Black African	21507011
117	Coloured	21507011
42	Indian or Asian	21507011
99	White	21507011
70	Other	21507011
14138	Black African	21507012
16	Coloured	21507012
16	Indian or Asian	21507012
25	White	21507012
14	Other	21507012
9755	Black African	21507013
82	Coloured	21507013
11	Indian or Asian	21507013
10	White	21507013
6	Other	21507013
11624	Black African	21507014
73	Coloured	21507014
4	Indian or Asian	21507014
2	White	21507014
15	Other	21507014
11072	Black African	21507015
5	Coloured	21507015
12	Indian or Asian	21507015
2	White	21507015
18	Other	21507015
13305	Black African	21507016
13	Coloured	21507016
9	Indian or Asian	21507016
6	White	21507016
2	Other	21507016
11754	Black African	21507017
7	Coloured	21507017
6	Indian or Asian	21507017
1	White	21507017
6	Other	21507017
12244	Black African	21507018
29	Coloured	21507018
12	Indian or Asian	21507018
5	White	21507018
8	Other	21507018
13868	Black African	21507019
9	Coloured	21507019
19	Indian or Asian	21507019
13	White	21507019
4	Other	21507019
14980	Black African	21507020
17	Coloured	21507020
18	Indian or Asian	21507020
3	White	21507020
12	Other	21507020
13947	Black African	21507021
24	Coloured	21507021
10	Indian or Asian	21507021
17	White	21507021
5	Other	21507021
14335	Black African	21507022
12	Coloured	21507022
11	Indian or Asian	21507022
6	White	21507022
6	Other	21507022
15457	Black African	21507023
13	Coloured	21507023
27	Indian or Asian	21507023
11	White	21507023
3	Other	21507023
15671	Black African	21507024
69	Coloured	21507024
28	Indian or Asian	21507024
96	White	21507024
25	Other	21507024
19937	Black African	21507025
6	Coloured	21507025
6	Indian or Asian	21507025
23	White	21507025
2	Other	21507025
12496	Black African	21507026
7	Coloured	21507026
5	Indian or Asian	21507026
1	White	21507026
2	Other	21507026
12438	Black African	21507027
2	Coloured	21507027
2	Indian or Asian	21507027
2	White	21507027
1	Other	21507027
11987	Black African	21507028
6	Coloured	21507028
19	Indian or Asian	21507028
5	White	21507028
6	Other	21507028
13692	Black African	21507029
17	Coloured	21507029
16	Indian or Asian	21507029
17	White	21507029
7	Other	21507029
12490	Black African	21507030
228	Coloured	21507030
8	Indian or Asian	21507030
8	White	21507030
22	Other	21507030
12095	Black African	21507031
9	Coloured	21507031
6	Indian or Asian	21507031
14	White	21507031
2	Other	21507031
14113	Black African	21507032
30	Coloured	21507032
2	Indian or Asian	21507032
11	White	21507032
5	Other	21507032
12915	Black African	21507033
45	Coloured	21507033
11	Indian or Asian	21507033
11	White	21507033
12	Other	21507033
11686	Black African	21507034
10	Coloured	21507034
6	Indian or Asian	21507034
10	White	21507034
13	Other	21507034
12074	Black African	21507035
12	Coloured	21507035
13	Indian or Asian	21507035
20	White	21507035
11	Other	21507035
6383	Black African	24401001
24	Coloured	24401001
13	Indian or Asian	24401001
9	White	24401001
4	Other	24401001
13534	Black African	24401002
6	Coloured	24401002
20	Indian or Asian	24401002
3	White	24401002
11	Other	24401002
7785	Black African	24401003
4	Coloured	24401003
6	Indian or Asian	24401003
11	White	24401003
5	Other	24401003
8305	Black African	24401004
3	Coloured	24401004
10	Indian or Asian	24401004
5	White	24401004
1	Other	24401004
8358	Black African	24401005
11	Coloured	24401005
7	Indian or Asian	24401005
92	White	24401005
6	Other	24401005
7369	Black African	24401006
9	Coloured	24401006
8	Indian or Asian	24401006
3	White	24401006
9	Other	24401006
7585	Black African	24401007
11	Coloured	24401007
6	Indian or Asian	24401007
4	White	24401007
4	Other	24401007
9722	Black African	24401008
9	Coloured	24401008
9	Indian or Asian	24401008
6	White	24401008
1	Other	24401008
6581	Black African	24401009
7	Coloured	24401009
3	Indian or Asian	24401009
8	White	24401009
6	Other	24401009
8842	Black African	24401010
3	Coloured	24401010
6	Indian or Asian	24401010
6	White	24401010
7	Other	24401010
11392	Black African	24401011
7	Coloured	24401011
6	Indian or Asian	24401011
10	White	24401011
6	Other	24401011
6588	Black African	24401012
17	Coloured	24401012
12	Indian or Asian	24401012
8	White	24401012
0	Other	24401012
8198	Black African	24401013
13	Coloured	24401013
8	Indian or Asian	24401013
16	White	24401013
6	Other	24401013
6546	Black African	24401014
15	Coloured	24401014
2	Indian or Asian	24401014
13	White	24401014
10	Other	24401014
6691	Black African	24401015
3	Coloured	24401015
9	Indian or Asian	24401015
9	White	24401015
2	Other	24401015
6394	Black African	24401016
0	Coloured	24401016
4	Indian or Asian	24401016
2	White	24401016
5	Other	24401016
8500	Black African	24401017
6	Coloured	24401017
1	Indian or Asian	24401017
2	White	24401017
0	Other	24401017
7226	Black African	24401018
6	Coloured	24401018
8	Indian or Asian	24401018
4	White	24401018
9	Other	24401018
2292	Black African	24401019
994	Coloured	24401019
304	Indian or Asian	24401019
491	White	24401019
43	Other	24401019
11578	Black African	24401020
192	Coloured	24401020
23	Indian or Asian	24401020
14	White	24401020
9	Other	24401020
7066	Black African	24401021
19	Coloured	24401021
15	Indian or Asian	24401021
31	White	24401021
12	Other	24401021
6255	Black African	24401022
7	Coloured	24401022
4	Indian or Asian	24401022
18	White	24401022
3	Other	24401022
6335	Black African	24401023
2	Coloured	24401023
4	Indian or Asian	24401023
1	White	24401023
2	Other	24401023
5560	Black African	24401024
1	Coloured	24401024
0	Indian or Asian	24401024
7	White	24401024
2	Other	24401024
7031	Black African	24401025
10	Coloured	24401025
9	Indian or Asian	24401025
6	White	24401025
10	Other	24401025
7870	Black African	24401026
390	Coloured	24401026
15	Indian or Asian	24401026
593	White	24401026
25	Other	24401026
7666	Black African	24402001
11	Coloured	24402001
2	Indian or Asian	24402001
2	White	24402001
1	Other	24402001
5832	Black African	24402002
1	Coloured	24402002
2	Indian or Asian	24402002
6	White	24402002
2	Other	24402002
9161	Black African	24402003
16	Coloured	24402003
8	Indian or Asian	24402003
8	White	24402003
4	Other	24402003
7637	Black African	24402004
15	Coloured	24402004
3	Indian or Asian	24402004
1	White	24402004
0	Other	24402004
5686	Black African	24402005
5	Coloured	24402005
0	Indian or Asian	24402005
0	White	24402005
1	Other	24402005
6152	Black African	24402006
1	Coloured	24402006
7	Indian or Asian	24402006
5	White	24402006
1	Other	24402006
7870	Black African	24402007
80	Coloured	24402007
26	Indian or Asian	24402007
22	White	24402007
39	Other	24402007
6530	Black African	24402008
31	Coloured	24402008
6	Indian or Asian	24402008
11	White	24402008
1	Other	24402008
5971	Black African	24402009
10	Coloured	24402009
12	Indian or Asian	24402009
2	White	24402009
13	Other	24402009
7449	Black African	24402010
5	Coloured	24402010
6	Indian or Asian	24402010
6	White	24402010
1	Other	24402010
8252	Black African	24402011
2	Coloured	24402011
0	Indian or Asian	24402011
1	White	24402011
0	Other	24402011
6663	Black African	24402012
5	Coloured	24402012
2	Indian or Asian	24402012
8	White	24402012
1	Other	24402012
6235	Black African	24402013
16	Coloured	24402013
8	Indian or Asian	24402013
7	White	24402013
0	Other	24402013
7184	Black African	24402014
7	Coloured	24402014
9	Indian or Asian	24402014
3	White	24402014
4	Other	24402014
6525	Black African	24402015
27	Coloured	24402015
9	Indian or Asian	24402015
14	White	24402015
3	Other	24402015
8595	Black African	24402016
83	Coloured	24402016
1	Indian or Asian	24402016
2	White	24402016
5	Other	24402016
8132	Black African	24402017
43	Coloured	24402017
14	Indian or Asian	24402017
25	White	24402017
9	Other	24402017
6442	Black African	24402018
62	Coloured	24402018
43	Indian or Asian	24402018
43	White	24402018
74	Other	24402018
8148	Black African	24402019
2	Coloured	24402019
3	Indian or Asian	24402019
3	White	24402019
31	Other	24402019
7900	Black African	24402020
7	Coloured	24402020
8	Indian or Asian	24402020
2	White	24402020
1	Other	24402020
6515	Black African	24402021
10	Coloured	24402021
1	Indian or Asian	24402021
6	White	24402021
5	Other	24402021
6912	Black African	24402022
83	Coloured	24402022
5	Indian or Asian	24402022
1	White	24402022
0	Other	24402022
6703	Black African	24402023
19	Coloured	24402023
0	Indian or Asian	24402023
9	White	24402023
0	Other	24402023
7058	Black African	24402024
5	Coloured	24402024
2	Indian or Asian	24402024
1	White	24402024
0	Other	24402024
6331	Black African	24402025
9	Coloured	24402025
4	Indian or Asian	24402025
2	White	24402025
0	Other	24402025
7258	Black African	24402026
0	Coloured	24402026
11	Indian or Asian	24402026
1	White	24402026
1	Other	24402026
5635	Black African	24402027
14	Coloured	24402027
13	Indian or Asian	24402027
4	White	24402027
6	Other	24402027
7855	Black African	24403001
47	Coloured	24403001
22	Indian or Asian	24403001
18	White	24403001
30	Other	24403001
7691	Black African	24403002
2	Coloured	24403002
7	Indian or Asian	24403002
5	White	24403002
0	Other	24403002
7825	Black African	24403003
7	Coloured	24403003
9	Indian or Asian	24403003
0	White	24403003
1	Other	24403003
6864	Black African	24403004
1	Coloured	24403004
1	Indian or Asian	24403004
2	White	24403004
2	Other	24403004
8256	Black African	24403005
12	Coloured	24403005
6	Indian or Asian	24403005
1	White	24403005
1	Other	24403005
11791	Black African	24403006
6	Coloured	24403006
5	Indian or Asian	24403006
9	White	24403006
7	Other	24403006
8319	Black African	24403007
23	Coloured	24403007
7	Indian or Asian	24403007
15	White	24403007
2	Other	24403007
9032	Black African	24403008
2	Coloured	24403008
5	Indian or Asian	24403008
10	White	24403008
10	Other	24403008
12222	Black African	24403009
21	Coloured	24403009
24	Indian or Asian	24403009
36	White	24403009
12	Other	24403009
9653	Black African	24403010
2	Coloured	24403010
12	Indian or Asian	24403010
6	White	24403010
0	Other	24403010
8409	Black African	24403011
1	Coloured	24403011
7	Indian or Asian	24403011
4	White	24403011
2	Other	24403011
8447	Black African	24403012
3	Coloured	24403012
5	Indian or Asian	24403012
7	White	24403012
2	Other	24403012
8123	Black African	24403013
40	Coloured	24403013
3	Indian or Asian	24403013
5	White	24403013
1	Other	24403013
10169	Black African	24403014
7	Coloured	24403014
6	Indian or Asian	24403014
0	White	24403014
8	Other	24403014
9338	Black African	24403015
10	Coloured	24403015
18	Indian or Asian	24403015
8	White	24403015
4	Other	24403015
9053	Black African	24403016
5	Coloured	24403016
1	Indian or Asian	24403016
3	White	24403016
2	Other	24403016
11823	Black African	24403017
8	Coloured	24403017
29	Indian or Asian	24403017
2	White	24403017
19	Other	24403017
9381	Black African	24403018
10	Coloured	24403018
21	Indian or Asian	24403018
8	White	24403018
0	Other	24403018
10687	Black African	24403019
3	Coloured	24403019
5	Indian or Asian	24403019
18	White	24403019
1	Other	24403019
10276	Black African	24403020
2	Coloured	24403020
4	Indian or Asian	24403020
3	White	24403020
1	Other	24403020
6888	Black African	24403021
2	Coloured	24403021
13	Indian or Asian	24403021
2	White	24403021
5	Other	24403021
9019	Black African	24403022
19	Coloured	24403022
2	Indian or Asian	24403022
1	White	24403022
2	Other	24403022
12036	Black African	24403023
74	Coloured	24403023
6	Indian or Asian	24403023
5	White	24403023
8	Other	24403023
6632	Black African	24403024
100	Coloured	24403024
53	Indian or Asian	24403024
63	White	24403024
5	Other	24403024
11783	Black African	24403025
20	Coloured	24403025
3	Indian or Asian	24403025
9	White	24403025
0	Other	24403025
7659	Black African	24403026
6	Coloured	24403026
1	Indian or Asian	24403026
6	White	24403026
1	Other	24403026
9102	Black African	24403027
7	Coloured	24403027
5	Indian or Asian	24403027
2	White	24403027
2	Other	24403027
6910	Black African	24403028
8	Coloured	24403028
0	Indian or Asian	24403028
3	White	24403028
2	Other	24403028
8506	Black African	24403029
31	Coloured	24403029
8	Indian or Asian	24403029
7	White	24403029
0	Other	24403029
8820	Black African	24403030
2	Coloured	24403030
14	Indian or Asian	24403030
0	White	24403030
1	Other	24403030
8143	Black African	24403031
3	Coloured	24403031
4	Indian or Asian	24403031
3	White	24403031
5	Other	24403031
6211	Black African	24404001
5	Coloured	24404001
2	Indian or Asian	24404001
2	White	24404001
7	Other	24404001
6978	Black African	24404002
10	Coloured	24404002
13	Indian or Asian	24404002
1	White	24404002
1	Other	24404002
6270	Black African	24404003
1	Coloured	24404003
7	Indian or Asian	24404003
1	White	24404003
1	Other	24404003
5982	Black African	24404004
1	Coloured	24404004
5	Indian or Asian	24404004
1	White	24404004
2	Other	24404004
6104	Black African	24404005
11	Coloured	24404005
4	Indian or Asian	24404005
5	White	24404005
3	Other	24404005
6789	Black African	24404006
9	Coloured	24404006
5	Indian or Asian	24404006
5	White	24404006
1	Other	24404006
8221	Black African	24404007
3	Coloured	24404007
2	Indian or Asian	24404007
2	White	24404007
8	Other	24404007
7016	Black African	24404008
341	Coloured	24404008
22	Indian or Asian	24404008
7	White	24404008
6	Other	24404008
6801	Black African	24404009
51	Coloured	24404009
26	Indian or Asian	24404009
3	White	24404009
38	Other	24404009
5241	Black African	24404010
23	Coloured	24404010
2	Indian or Asian	24404010
1	White	24404010
0	Other	24404010
6418	Black African	24404011
1	Coloured	24404011
2	Indian or Asian	24404011
3	White	24404011
1	Other	24404011
6848	Black African	24404012
2	Coloured	24404012
3	Indian or Asian	24404012
8	White	24404012
0	Other	24404012
8873	Black African	24404013
0	Coloured	24404013
6	Indian or Asian	24404013
0	White	24404013
4	Other	24404013
6582	Black African	24404014
6	Coloured	24404014
5	Indian or Asian	24404014
1	White	24404014
0	Other	24404014
5222	Black African	24404015
0	Coloured	24404015
1	Indian or Asian	24404015
13	White	24404015
1	Other	24404015
8838	Black African	24404016
6	Coloured	24404016
1	Indian or Asian	24404016
5	White	24404016
3	Other	24404016
7177	Black African	24404017
2	Coloured	24404017
2	Indian or Asian	24404017
5	White	24404017
1	Other	24404017
7672	Black African	24404018
3	Coloured	24404018
2	Indian or Asian	24404018
0	White	24404018
4	Other	24404018
8965	Black African	29200001
3378	Coloured	29200001
652	Indian or Asian	29200001
10	White	29200001
79	Other	29200001
11470	Black African	29200002
19	Coloured	29200002
8	Indian or Asian	29200002
13	White	29200002
13	Other	29200002
13113	Black African	29200003
1231	Coloured	29200003
1244	Indian or Asian	29200003
2209	White	29200003
154	Other	29200003
3432	Black African	29200004
429	Coloured	29200004
489	Indian or Asian	29200004
8399	White	29200004
113	Other	29200004
14980	Black African	29200005
26	Coloured	29200005
13	Indian or Asian	29200005
1	White	29200005
42	Other	29200005
10357	Black African	29200006
3683	Coloured	29200006
31	Indian or Asian	29200006
22	White	29200006
49	Other	29200006
11636	Black African	29200007
26	Coloured	29200007
6	Indian or Asian	29200007
5	White	29200007
15	Other	29200007
10410	Black African	29200008
19	Coloured	29200008
2	Indian or Asian	29200008
4	White	29200008
28	Other	29200008
14899	Black African	29200009
845	Coloured	29200009
306	Indian or Asian	29200009
2419	White	29200009
75	Other	29200009
6792	Black African	29200010
12188	Coloured	29200010
97	Indian or Asian	29200010
26	White	29200010
80	Other	29200010
15503	Black African	29200011
8	Coloured	29200011
4	Indian or Asian	29200011
3	White	29200011
19	Other	29200011
14861	Black African	29200012
54	Coloured	29200012
22	Indian or Asian	29200012
153	White	29200012
25	Other	29200012
25663	Black African	29200013
104	Coloured	29200013
31	Indian or Asian	29200013
69	White	29200013
76	Other	29200013
9432	Black African	29200014
5	Coloured	29200014
17	Indian or Asian	29200014
6	White	29200014
24	Other	29200014
6850	Black African	29200015
530	Coloured	29200015
201	Indian or Asian	29200015
4248	White	29200015
81	Other	29200015
20858	Black African	29200016
1103	Coloured	29200016
152	Indian or Asian	29200016
5217	White	29200016
104	Other	29200016
16528	Black African	29200017
15	Coloured	29200017
6	Indian or Asian	29200017
11	White	29200017
13	Other	29200017
3848	Black African	29200018
439	Coloured	29200018
492	Indian or Asian	29200018
6739	White	29200018
87	Other	29200018
3439	Black African	29200019
8772	Coloured	29200019
131	Indian or Asian	29200019
33	White	29200019
84	Other	29200019
11045	Black African	29200020
13	Coloured	29200020
10	Indian or Asian	29200020
18	White	29200020
9	Other	29200020
15329	Black African	29200021
108	Coloured	29200021
32	Indian or Asian	29200021
28	White	29200021
60	Other	29200021
15366	Black African	29200022
11	Coloured	29200022
21	Indian or Asian	29200022
8	White	29200022
38	Other	29200022
15369	Black African	29200023
25	Coloured	29200023
28	Indian or Asian	29200023
2	White	29200023
12	Other	29200023
14452	Black African	29200024
10	Coloured	29200024
8	Indian or Asian	29200024
5	White	29200024
14	Other	29200024
12856	Black African	29200025
17	Coloured	29200025
13	Indian or Asian	29200025
3	White	29200025
27	Other	29200025
16638	Black African	29200026
20	Coloured	29200026
25	Indian or Asian	29200026
257	White	29200026
7	Other	29200026
3133	Black African	29200027
227	Coloured	29200027
141	Indian or Asian	29200027
7692	White	29200027
80	Other	29200027
11476	Black African	29200028
296	Coloured	29200028
181	Indian or Asian	29200028
4192	White	29200028
107	Other	29200028
16619	Black African	29200029
198	Coloured	29200029
111	Indian or Asian	29200029
3600	White	29200029
41	Other	29200029
12924	Black African	29200030
15	Coloured	29200030
8	Indian or Asian	29200030
3	White	29200030
11	Other	29200030
16904	Black African	29200031
209	Coloured	29200031
46	Indian or Asian	29200031
3857	White	29200031
45	Other	29200031
14889	Black African	29200032
23	Coloured	29200032
10	Indian or Asian	29200032
6	White	29200032
0	Other	29200032
15893	Black African	29200033
16	Coloured	29200033
18	Indian or Asian	29200033
8	White	29200033
9	Other	29200033
12922	Black African	29200034
24	Coloured	29200034
9	Indian or Asian	29200034
6	White	29200034
39	Other	29200034
12669	Black African	29200035
273	Coloured	29200035
353	Indian or Asian	29200035
718	White	29200035
97	Other	29200035
15626	Black African	29200036
18	Coloured	29200036
6	Indian or Asian	29200036
14	White	29200036
40	Other	29200036
10395	Black African	29200037
1629	Coloured	29200037
488	Indian or Asian	29200037
1065	White	29200037
192	Other	29200037
15490	Black African	29200038
11	Coloured	29200038
15	Indian or Asian	29200038
16	White	29200038
18	Other	29200038
15710	Black African	29200039
537	Coloured	29200039
15	Indian or Asian	29200039
20	White	29200039
19	Other	29200039
12248	Black African	29200040
12	Coloured	29200040
10	Indian or Asian	29200040
6	White	29200040
8	Other	29200040
12444	Black African	29200041
30	Coloured	29200041
29	Indian or Asian	29200041
24	White	29200041
21	Other	29200041
14498	Black African	29200042
23	Coloured	29200042
11	Indian or Asian	29200042
15	White	29200042
34	Other	29200042
18425	Black African	29200043
137	Coloured	29200043
20	Indian or Asian	29200043
41	White	29200043
40	Other	29200043
14474	Black African	29200044
6852	Coloured	29200044
57	Indian or Asian	29200044
143	White	29200044
56	Other	29200044
12547	Black African	29200045
25	Coloured	29200045
7	Indian or Asian	29200045
206	White	29200045
24	Other	29200045
13934	Black African	29200046
1042	Coloured	29200046
203	Indian or Asian	29200046
4286	White	29200046
72	Other	29200046
9986	Black African	29200047
734	Coloured	29200047
445	Indian or Asian	29200047
2412	White	29200047
161	Other	29200047
11732	Black African	29200048
12	Coloured	29200048
7	Indian or Asian	29200048
8	White	29200048
11	Other	29200048
12651	Black African	29200049
0	Coloured	29200049
2	Indian or Asian	29200049
4	White	29200049
22	Other	29200049
11073	Black African	29200050
20	Coloured	29200050
6	Indian or Asian	29200050
3	White	29200050
26	Other	29200050
5825	Black African	29300001
1087	Coloured	29300001
302	Indian or Asian	29300001
11766	White	29300001
166	Other	29300001
7444	Black African	29300002
1691	Coloured	29300002
649	Indian or Asian	29300002
10911	White	29300002
331	Other	29300002
2689	Black African	29300003
605	Coloured	29300003
248	Indian or Asian	29300003
11621	White	29300003
222	Other	29300003
25054	Black African	29300004
502	Coloured	29300004
20	Indian or Asian	29300004
21	White	29300004
217	Other	29300004
7971	Black African	29300005
2179	Coloured	29300005
244	Indian or Asian	29300005
7617	White	29300005
213	Other	29300005
1749	Black African	29300006
1586	Coloured	29300006
300	Indian or Asian	29300006
9986	White	29300006
179	Other	29300006
1635	Black African	29300007
8720	Coloured	29300007
304	Indian or Asian	29300007
6851	White	29300007
245	Other	29300007
1799	Black African	29300008
1132	Coloured	29300008
383	Indian or Asian	29300008
17030	White	29300008
112	Other	29300008
1674	Black African	29300009
2011	Coloured	29300009
706	Indian or Asian	29300009
11292	White	29300009
183	Other	29300009
942	Black African	29300010
16783	Coloured	29300010
416	Indian or Asian	29300010
65	White	29300010
591	Other	29300010
2678	Black African	29300011
8301	Coloured	29300011
301	Indian or Asian	29300011
4716	White	29300011
562	Other	29300011
3322	Black African	29300012
10827	Coloured	29300012
5284	Indian or Asian	29300012
6636	White	29300012
866	Other	29300012
577	Black African	29300013
19588	Coloured	29300013
126	Indian or Asian	29300013
37	White	29300013
66	Other	29300013
13005	Black African	29300014
11	Coloured	29300014
4	Indian or Asian	29300014
3	White	29300014
11	Other	29300014
15204	Black African	29300015
29	Coloured	29300015
10	Indian or Asian	29300015
18	White	29300015
26	Other	29300015
9113	Black African	29300016
11	Coloured	29300016
11	Indian or Asian	29300016
3	White	29300016
47	Other	29300016
15533	Black African	29300017
31	Coloured	29300017
13	Indian or Asian	29300017
5	White	29300017
27	Other	29300017
16800	Black African	29300018
55	Coloured	29300018
24	Indian or Asian	29300018
20	White	29300018
38	Other	29300018
11484	Black African	29300019
8	Coloured	29300019
24	Indian or Asian	29300019
5	White	29300019
25	Other	29300019
11349	Black African	29300020
12	Coloured	29300020
7	Indian or Asian	29300020
3	White	29300020
20	Other	29300020
13836	Black African	29300021
27	Coloured	29300021
13	Indian or Asian	29300021
5	White	29300021
55	Other	29300021
15465	Black African	29300022
30	Coloured	29300022
25	Indian or Asian	29300022
8	White	29300022
55	Other	29300022
13501	Black African	29300023
39	Coloured	29300023
19	Indian or Asian	29300023
4	White	29300023
21	Other	29300023
14499	Black African	29300024
15	Coloured	29300024
7	Indian or Asian	29300024
17	White	29300024
67	Other	29300024
16336	Black African	29300025
430	Coloured	29300025
22	Indian or Asian	29300025
26	White	29300025
75	Other	29300025
11507	Black African	29300026
19	Coloured	29300026
16	Indian or Asian	29300026
7	White	29300026
42	Other	29300026
14367	Black African	29300027
16	Coloured	29300027
8	Indian or Asian	29300027
5	White	29300027
58	Other	29300027
17420	Black African	29300028
43	Coloured	29300028
25	Indian or Asian	29300028
78	White	29300028
113	Other	29300028
2119	Black African	29300029
18128	Coloured	29300029
124	Indian or Asian	29300029
12	White	29300029
144	Other	29300029
14897	Black African	29300030
29	Coloured	29300030
10	Indian or Asian	29300030
3	White	29300030
18	Other	29300030
5256	Black African	29300031
10934	Coloured	29300031
263	Indian or Asian	29300031
4276	White	29300031
87	Other	29300031
7949	Black African	29300032
14397	Coloured	29300032
224	Indian or Asian	29300032
58	White	29300032
199	Other	29300032
15072	Black African	29300033
2435	Coloured	29300033
26	Indian or Asian	29300033
15	White	29300033
81	Other	29300033
2102	Black African	29300034
19233	Coloured	29300034
109	Indian or Asian	29300034
68	White	29300034
136	Other	29300034
1013	Black African	29300035
18059	Coloured	29300035
147	Indian or Asian	29300035
31	White	29300035
430	Other	29300035
13609	Black African	29300036
78	Coloured	29300036
10	Indian or Asian	29300036
9	White	29300036
30	Other	29300036
3952	Black African	29300037
15356	Coloured	29300037
56	Indian or Asian	29300037
14	White	29300037
130	Other	29300037
8414	Black African	29300038
9019	Coloured	29300038
48	Indian or Asian	29300038
8	White	29300038
143	Other	29300038
2783	Black African	29300039
1804	Coloured	29300039
297	Indian or Asian	29300039
12287	White	29300039
136	Other	29300039
14225	Black African	29300040
5331	Coloured	29300040
149	Indian or Asian	29300040
7020	White	29300040
289	Other	29300040
35659	Black African	29300041
13298	Coloured	29300041
143	Indian or Asian	29300041
381	White	29300041
255	Other	29300041
19005	Black African	29300042
120	Coloured	29300042
30	Indian or Asian	29300042
2	White	29300042
34	Other	29300042
16284	Black African	29300043
30	Coloured	29300043
29	Indian or Asian	29300043
10	White	29300043
38	Other	29300043
25925	Black African	29300044
105	Coloured	29300044
29	Indian or Asian	29300044
10	White	29300044
83	Other	29300044
15533	Black African	29300045
4510	Coloured	29300045
33	Indian or Asian	29300045
694	White	29300045
65	Other	29300045
16150	Black African	29300046
754	Coloured	29300046
13	Indian or Asian	29300046
1404	White	29300046
81	Other	29300046
14954	Black African	29300047
189	Coloured	29300047
35	Indian or Asian	29300047
27	White	29300047
42	Other	29300047
2983	Black African	29300048
9890	Coloured	29300048
481	Indian or Asian	29300048
2256	White	29300048
589	Other	29300048
802	Black African	29300049
17520	Coloured	29300049
121	Indian or Asian	29300049
18	White	29300049
133	Other	29300049
14667	Black African	29300050
10035	Coloured	29300050
90	Indian or Asian	29300050
42	White	29300050
309	Other	29300050
3506	Black African	29300051
4247	Coloured	29300051
542	Indian or Asian	29300051
15257	White	29300051
693	Other	29300051
6776	Black African	29300052
6690	Coloured	29300052
55	Indian or Asian	29300052
9954	White	29300052
108	Other	29300052
11081	Black African	29300053
11352	Coloured	29300053
72	Indian or Asian	29300053
9076	White	29300053
170	Other	29300053
25004	Black African	29300054
83	Coloured	29300054
20	Indian or Asian	29300054
10	White	29300054
127	Other	29300054
26243	Black African	29300055
43	Coloured	29300055
26	Indian or Asian	29300055
14	White	29300055
146	Other	29300055
23958	Black African	29300056
126	Coloured	29300056
9	Indian or Asian	29300056
18	White	29300056
67	Other	29300056
16479	Black African	29300057
20	Coloured	29300057
15	Indian or Asian	29300057
9	White	29300057
61	Other	29300057
17331	Black African	29300058
43	Coloured	29300058
9	Indian or Asian	29300058
12	White	29300058
48	Other	29300058
16688	Black African	29300059
66	Coloured	29300059
9	Indian or Asian	29300059
14	White	29300059
43	Other	29300059
19534	Black African	29300060
1753	Coloured	29300060
101	Indian or Asian	29300060
3658	White	29300060
96	Other	29300060
2105	Black African	41601001
3316	Coloured	41601001
25	Indian or Asian	41601001
430	White	41601001
12	Other	41601001
4704	Black African	41601002
1872	Coloured	41601002
25	Indian or Asian	41601002
107	White	41601002
27	Other	41601002
4891	Black African	41601003
1122	Coloured	41601003
16	Indian or Asian	41601003
1218	White	41601003
27	Other	41601003
4175	Black African	41601004
1513	Coloured	41601004
10	Indian or Asian	41601004
5	White	41601004
31	Other	41601004
5016	Black African	41601005
863	Coloured	41601005
30	Indian or Asian	41601005
712	White	41601005
36	Other	41601005
5289	Black African	41601006
359	Coloured	41601006
24	Indian or Asian	41601006
648	White	41601006
20	Other	41601006
5030	Black African	41602001
316	Coloured	41602001
19	Indian or Asian	41602001
851	White	41602001
15	Other	41602001
4552	Black African	41602002
1549	Coloured	41602002
26	Indian or Asian	41602002
708	White	41602002
40	Other	41602002
5409	Black African	41602003
691	Coloured	41602003
48	Indian or Asian	41602003
559	White	41602003
29	Other	41602003
3006	Black African	41602004
1959	Coloured	41602004
24	Indian or Asian	41602004
632	White	41602004
62	Other	41602004
3668	Black African	41602005
1551	Coloured	41602005
26	Indian or Asian	41602005
484	White	41602005
9	Other	41602005
4637	Black African	41602006
715	Coloured	41602006
27	Indian or Asian	41602006
320	White	41602006
31	Other	41602006
3945	Black African	41602007
1103	Coloured	41602007
19	Indian or Asian	41602007
636	White	41602007
16	Other	41602007
4896	Black African	41602008
1074	Coloured	41602008
23	Indian or Asian	41602008
440	White	41602008
26	Other	41602008
6163	Black African	41603001
7	Coloured	41603001
6	Indian or Asian	41603001
1	White	41603001
5	Other	41603001
6353	Black African	41603002
182	Coloured	41603002
21	Indian or Asian	41603002
783	White	41603002
31	Other	41603002
5963	Black African	41603003
37	Coloured	41603003
9	Indian or Asian	41603003
294	White	41603003
4	Other	41603003
2655	Black African	41603004
194	Coloured	41603004
5	Indian or Asian	41603004
126	White	41603004
2	Other	41603004
4020	Black African	41603005
59	Coloured	41603005
41	Indian or Asian	41603005
639	White	41603005
3	Other	41603005
5865	Black African	41603006
290	Coloured	41603006
11	Indian or Asian	41603006
361	White	41603006
16	Other	41603006
7577	Black African	41604001
111	Coloured	41604001
18	Indian or Asian	41604001
711	White	41604001
30	Other	41604001
5122	Black African	41604002
46	Coloured	41604002
13	Indian or Asian	41604002
129	White	41604002
15	Other	41604002
4983	Black African	41604003
45	Coloured	41604003
70	Indian or Asian	41604003
348	White	41604003
25	Other	41604003
4784	Black African	41604004
265	Coloured	41604004
18	Indian or Asian	41604004
0	White	41604004
4	Other	41604004
3555	Black African	41801001
56	Coloured	41801001
27	Indian or Asian	41801001
1142	White	41801001
8	Other	41801001
6812	Black African	41801002
149	Coloured	41801002
22	Indian or Asian	41801002
661	White	41801002
9	Other	41801002
6222	Black African	41801003
49	Coloured	41801003
23	Indian or Asian	41801003
549	White	41801003
14	Other	41801003
3507	Black African	41801004
101	Coloured	41801004
19	Indian or Asian	41801004
748	White	41801004
35	Other	41801004
9801	Black African	41801005
156	Coloured	41801005
23	Indian or Asian	41801005
96	White	41801005
27	Other	41801005
4124	Black African	41801006
67	Coloured	41801006
33	Indian or Asian	41801006
969	White	41801006
29	Other	41801006
6528	Black African	41801007
31	Coloured	41801007
16	Indian or Asian	41801007
15	White	41801007
13	Other	41801007
4770	Black African	41801008
24	Coloured	41801008
13	Indian or Asian	41801008
1	White	41801008
6	Other	41801008
7651	Black African	41801009
53	Coloured	41801009
27	Indian or Asian	41801009
32	White	41801009
9	Other	41801009
5046	Black African	41801010
40	Coloured	41801010
6	Indian or Asian	41801010
1	White	41801010
18	Other	41801010
6101	Black African	41802001
94	Coloured	41802001
96	Indian or Asian	41802001
776	White	41802001
16	Other	41802001
6678	Black African	41802002
890	Coloured	41802002
38	Indian or Asian	41802002
862	White	41802002
40	Other	41802002
7549	Black African	41802003
278	Coloured	41802003
49	Indian or Asian	41802003
690	White	41802003
34	Other	41802003
4153	Black African	41802004
67	Coloured	41802004
13	Indian or Asian	41802004
555	White	41802004
7	Other	41802004
4900	Black African	41803001
34	Coloured	41803001
35	Indian or Asian	41803001
1	White	41803001
3	Other	41803001
4654	Black African	41803002
24	Coloured	41803002
11	Indian or Asian	41803002
1	White	41803002
10	Other	41803002
6285	Black African	41803003
17	Coloured	41803003
14	Indian or Asian	41803003
3	White	41803003
1	Other	41803003
5953	Black African	41803004
34	Coloured	41803004
53	Indian or Asian	41803004
1370	White	41803004
42	Other	41803004
6311	Black African	41803005
109	Coloured	41803005
3	Indian or Asian	41803005
852	White	41803005
12	Other	41803005
5541	Black African	41803006
167	Coloured	41803006
21	Indian or Asian	41803006
5	White	41803006
6	Other	41803006
5398	Black African	41803007
60	Coloured	41803007
13	Indian or Asian	41803007
10	White	41803007
12	Other	41803007
4408	Black African	41803008
131	Coloured	41803008
24	Indian or Asian	41803008
1059	White	41803008
39	Other	41803008
10846	Black African	41804001
73	Coloured	41804001
40	Indian or Asian	41804001
766	White	41804001
16	Other	41804001
12506	Black African	41804002
34	Coloured	41804002
27	Indian or Asian	41804002
14	White	41804002
10	Other	41804002
10596	Black African	41804003
77	Coloured	41804003
49	Indian or Asian	41804003
3200	White	41804003
67	Other	41804003
11602	Black African	41804004
57	Coloured	41804004
21	Indian or Asian	41804004
23	White	41804004
24	Other	41804004
10927	Black African	41804005
38	Coloured	41804005
27	Indian or Asian	41804005
59	White	41804005
57	Other	41804005
9609	Black African	41804006
9	Coloured	41804006
9	Indian or Asian	41804006
1	White	41804006
14	Other	41804006
12131	Black African	41804007
10	Coloured	41804007
16	Indian or Asian	41804007
9	White	41804007
30	Other	41804007
7965	Black African	41804008
164	Coloured	41804008
110	Indian or Asian	41804008
1907	White	41804008
20	Other	41804008
6520	Black African	41804009
179	Coloured	41804009
70	Indian or Asian	41804009
4589	White	41804009
23	Other	41804009
11139	Black African	41804010
70	Coloured	41804010
39	Indian or Asian	41804010
683	White	41804010
6	Other	41804010
6477	Black African	41804011
6049	Coloured	41804011
56	Indian or Asian	41804011
10	White	41804011
38	Other	41804011
17726	Black African	41804012
64	Coloured	41804012
12	Indian or Asian	41804012
6	White	41804012
26	Other	41804012
6502	Black African	41804013
14	Coloured	41804013
15	Indian or Asian	41804013
0	White	41804013
9	Other	41804013
12285	Black African	41804014
46	Coloured	41804014
28	Indian or Asian	41804014
7	White	41804014
10	Other	41804014
13030	Black African	41804015
36	Coloured	41804015
14	Indian or Asian	41804015
4	White	41804015
8	Other	41804015
13699	Black African	41804016
60	Coloured	41804016
32	Indian or Asian	41804016
17	White	41804016
14	Other	41804016
14107	Black African	41804017
22	Coloured	41804017
34	Indian or Asian	41804017
6	White	41804017
4	Other	41804017
9641	Black African	41804018
19	Coloured	41804018
19	Indian or Asian	41804018
4	White	41804018
2	Other	41804018
14206	Black African	41804019
4	Coloured	41804019
22	Indian or Asian	41804019
10	White	41804019
17	Other	41804019
11005	Black African	41804020
14	Coloured	41804020
33	Indian or Asian	41804020
3	White	41804020
2	Other	41804020
12747	Black African	41804021
31	Coloured	41804021
25	Indian or Asian	41804021
11	White	41804021
10	Other	41804021
12415	Black African	41804022
29	Coloured	41804022
19	Indian or Asian	41804022
15	White	41804022
17	Other	41804022
6589	Black African	41804023
31	Coloured	41804023
6	Indian or Asian	41804023
21	White	41804023
5	Other	41804023
6175	Black African	41804024
122	Coloured	41804024
11	Indian or Asian	41804024
493	White	41804024
16	Other	41804024
11327	Black African	41804025
80	Coloured	41804025
42	Indian or Asian	41804025
3105	White	41804025
35	Other	41804025
8836	Black African	41804026
19	Coloured	41804026
11	Indian or Asian	41804026
2	White	41804026
7	Other	41804026
6051	Black African	41804027
350	Coloured	41804027
116	Indian or Asian	41804027
3599	White	41804027
28	Other	41804027
8179	Black African	41804028
30	Coloured	41804028
21	Indian or Asian	41804028
26	White	41804028
5	Other	41804028
7653	Black African	41804029
17	Coloured	41804029
14	Indian or Asian	41804029
10	White	41804029
17	Other	41804029
9050	Black African	41804030
6	Coloured	41804030
18	Indian or Asian	41804030
4	White	41804030
11	Other	41804030
9124	Black African	41804031
32	Coloured	41804031
9	Indian or Asian	41804031
12	White	41804031
31	Other	41804031
7146	Black African	41804032
243	Coloured	41804032
127	Indian or Asian	41804032
4287	White	41804032
50	Other	41804032
5690	Black African	41804033
200	Coloured	41804033
34	Indian or Asian	41804033
3752	White	41804033
45	Other	41804033
6887	Black African	41804034
237	Coloured	41804034
245	Indian or Asian	41804034
5485	White	41804034
60	Other	41804034
8477	Black African	41804035
150	Coloured	41804035
15	Indian or Asian	41804035
3024	White	41804035
28	Other	41804035
7485	Black African	41804036
118	Coloured	41804036
72	Indian or Asian	41804036
3967	White	41804036
26	Other	41804036
7053	Black African	41805001
40	Coloured	41805001
22	Indian or Asian	41805001
3	White	41805001
18	Other	41805001
4205	Black African	41805002
53	Coloured	41805002
44	Indian or Asian	41805002
1185	White	41805002
8	Other	41805002
6628	Black African	41805003
31	Coloured	41805003
20	Indian or Asian	41805003
6	White	41805003
3	Other	41805003
7886	Black African	41805004
25	Coloured	41805004
14	Indian or Asian	41805004
3	White	41805004
8	Other	41805004
6560	Black African	41805005
24	Coloured	41805005
18	Indian or Asian	41805005
9	White	41805005
3	Other	41805005
5557	Black African	41805006
26	Coloured	41805006
1	Indian or Asian	41805006
4	White	41805006
17	Other	41805006
5400	Black African	41805007
19	Coloured	41805007
13	Indian or Asian	41805007
36	White	41805007
16	Other	41805007
5303	Black African	41805008
24	Coloured	41805008
2	Indian or Asian	41805008
244	White	41805008
13	Other	41805008
10502	Black African	41805009
55	Coloured	41805009
12	Indian or Asian	41805009
14	White	41805009
39	Other	41805009
5668	Black African	41805010
70	Coloured	41805010
27	Indian or Asian	41805010
716	White	41805010
5	Other	41805010
7824	Black African	41805011
86	Coloured	41805011
6	Indian or Asian	41805011
3	White	41805011
25	Other	41805011
3065	Black African	41805012
48	Coloured	41805012
28	Indian or Asian	41805012
2454	White	41805012
25	Other	41805012
4874	Black African	41901001
26	Coloured	41901001
64	Indian or Asian	41901001
494	White	41901001
36	Other	41901001
9940	Black African	41901002
30	Coloured	41901002
20	Indian or Asian	41901002
4	White	41901002
14	Other	41901002
4622	Black African	41901003
48	Coloured	41901003
4	Indian or Asian	41901003
744	White	41901003
1	Other	41901003
4410	Black African	41901004
30	Coloured	41901004
9	Indian or Asian	41901004
548	White	41901004
5	Other	41901004
2786	Black African	41901005
0	Coloured	41901005
8	Indian or Asian	41901005
0	White	41901005
2	Other	41901005
9486	Black African	41901006
83	Coloured	41901006
62	Indian or Asian	41901006
947	White	41901006
35	Other	41901006
7068	Black African	41901007
35	Coloured	41901007
14	Indian or Asian	41901007
2	White	41901007
11	Other	41901007
8292	Black African	41901008
16	Coloured	41901008
6	Indian or Asian	41901008
1	White	41901008
8	Other	41901008
5051	Black African	41901009
43	Coloured	41901009
43	Indian or Asian	41901009
1050	White	41901009
21	Other	41901009
2551	Black African	41901010
503	Coloured	41901010
167	Indian or Asian	41901010
720	White	41901010
7	Other	41901010
6244	Black African	41901011
23	Coloured	41901011
8	Indian or Asian	41901011
2	White	41901011
3	Other	41901011
5246	Black African	41901012
13	Coloured	41901012
0	Indian or Asian	41901012
0	White	41901012
0	Other	41901012
7507	Black African	41901013
4	Coloured	41901013
1	Indian or Asian	41901013
1	White	41901013
1	Other	41901013
5679	Black African	41901014
29	Coloured	41901014
4	Indian or Asian	41901014
1	White	41901014
8	Other	41901014
6145	Black African	41901015
155	Coloured	41901015
480	Indian or Asian	41901015
1846	White	41901015
78	Other	41901015
7078	Black African	41901016
74	Coloured	41901016
3	Indian or Asian	41901016
2	White	41901016
20	Other	41901016
1728	Black African	41901017
4	Coloured	41901017
0	Indian or Asian	41901017
0	White	41901017
1	Other	41901017
5249	Black African	41901018
12	Coloured	41901018
0	Indian or Asian	41901018
3	White	41901018
0	Other	41901018
6086	Black African	41902001
30	Coloured	41902001
12	Indian or Asian	41902001
4	White	41902001
0	Other	41902001
4918	Black African	41902002
25	Coloured	41902002
13	Indian or Asian	41902002
3	White	41902002
7	Other	41902002
3911	Black African	41902003
1140	Coloured	41902003
70	Indian or Asian	41902003
1558	White	41902003
14	Other	41902003
6276	Black African	41902004
28	Coloured	41902004
12	Indian or Asian	41902004
15	White	41902004
11	Other	41902004
5077	Black African	41902005
1	Coloured	41902005
13	Indian or Asian	41902005
2	White	41902005
3	Other	41902005
5703	Black African	41902006
59	Coloured	41902006
10	Indian or Asian	41902006
1103	White	41902006
7	Other	41902006
5273	Black African	41902007
2	Coloured	41902007
5	Indian or Asian	41902007
15	White	41902007
5	Other	41902007
5766	Black African	41902008
31	Coloured	41902008
6	Indian or Asian	41902008
10	White	41902008
9	Other	41902008
1831	Black African	41902009
21	Coloured	41902009
27	Indian or Asian	41902009
1129	White	41902009
8	Other	41902009
851	Black African	41902010
40	Coloured	41902010
82	Indian or Asian	41902010
2944	White	41902010
44	Other	41902010
8604	Black African	41902011
39	Coloured	41902011
5	Indian or Asian	41902011
808	White	41902011
9	Other	41902011
9070	Black African	41902012
10	Coloured	41902012
36	Indian or Asian	41902012
142	White	41902012
14	Other	41902012
3258	Black African	41902013
8	Coloured	41902013
7	Indian or Asian	41902013
2	White	41902013
1	Other	41902013
5432	Black African	41902014
53	Coloured	41902014
42	Indian or Asian	41902014
634	White	41902014
16	Other	41902014
5940	Black African	41902015
37	Coloured	41902015
19	Indian or Asian	41902015
609	White	41902015
7	Other	41902015
5036	Black African	41902016
64	Coloured	41902016
98	Indian or Asian	41902016
515	White	41902016
13	Other	41902016
6676	Black African	41902017
118	Coloured	41902017
15	Indian or Asian	41902017
192	White	41902017
13	Other	41902017
4455	Black African	41902018
172	Coloured	41902018
72	Indian or Asian	41902018
2992	White	41902018
21	Other	41902018
11267	Black African	41902019
32	Coloured	41902019
19	Indian or Asian	41902019
6	White	41902019
11	Other	41902019
7106	Black African	41902020
80	Coloured	41902020
42	Indian or Asian	41902020
642	White	41902020
35	Other	41902020
6035	Black African	41903001
16	Coloured	41903001
33	Indian or Asian	41903001
692	White	41903001
8	Other	41903001
7358	Black African	41903002
28	Coloured	41903002
26	Indian or Asian	41903002
84	White	41903002
8	Other	41903002
7799	Black African	41903003
25	Coloured	41903003
12	Indian or Asian	41903003
83	White	41903003
8	Other	41903003
5151	Black African	41903004
20	Coloured	41903004
23	Indian or Asian	41903004
651	White	41903004
21	Other	41903004
5704	Black African	41903005
12	Coloured	41903005
8	Indian or Asian	41903005
311	White	41903005
8	Other	41903005
4731	Black African	41903006
32	Coloured	41903006
14	Indian or Asian	41903006
1683	White	41903006
54	Other	41903006
5213	Black African	41903007
22	Coloured	41903007
19	Indian or Asian	41903007
1183	White	41903007
15	Other	41903007
5104	Black African	41903008
4	Coloured	41903008
6	Indian or Asian	41903008
11	White	41903008
8	Other	41903008
8059	Black African	41903009
26	Coloured	41903009
6	Indian or Asian	41903009
3	White	41903009
8	Other	41903009
14211	Black African	41904001
22	Coloured	41904001
6	Indian or Asian	41904001
125	White	41904001
14	Other	41904001
8854	Black African	41904002
17	Coloured	41904002
9	Indian or Asian	41904002
14	White	41904002
9	Other	41904002
7961	Black African	41904003
25	Coloured	41904003
34	Indian or Asian	41904003
562	White	41904003
9	Other	41904003
8361	Black African	41904004
46	Coloured	41904004
3	Indian or Asian	41904004
14	White	41904004
3	Other	41904004
10544	Black African	41904005
65	Coloured	41904005
4	Indian or Asian	41904005
1	White	41904005
1	Other	41904005
5889	Black African	41904006
30	Coloured	41904006
71	Indian or Asian	41904006
588	White	41904006
3	Other	41904006
7859	Black African	41904007
15	Coloured	41904007
140	Indian or Asian	41904007
12	White	41904007
10	Other	41904007
4786	Black African	41904008
0	Coloured	41904008
3	Indian or Asian	41904008
2	White	41904008
3	Other	41904008
9976	Black African	41904009
12	Coloured	41904009
5	Indian or Asian	41904009
6	White	41904009
1	Other	41904009
8770	Black African	41904010
11	Coloured	41904010
1	Indian or Asian	41904010
12	White	41904010
2	Other	41904010
8628	Black African	41904011
11	Coloured	41904011
4	Indian or Asian	41904011
9	White	41904011
1	Other	41904011
12801	Black African	41904012
22	Coloured	41904012
3	Indian or Asian	41904012
7	White	41904012
13	Other	41904012
8557	Black African	41904013
1	Coloured	41904013
8	Indian or Asian	41904013
1	White	41904013
7	Other	41904013
9469	Black African	41904014
9	Coloured	41904014
2	Indian or Asian	41904014
5	White	41904014
0	Other	41904014
9189	Black African	41904015
15	Coloured	41904015
1	Indian or Asian	41904015
6	White	41904015
1	Other	41904015
9320	Black African	41904016
16	Coloured	41904016
3	Indian or Asian	41904016
11	White	41904016
7	Other	41904016
7709	Black African	41904017
7	Coloured	41904017
2	Indian or Asian	41904017
9	White	41904017
4	Other	41904017
8051	Black African	41904018
9	Coloured	41904018
3	Indian or Asian	41904018
3	White	41904018
4	Other	41904018
9797	Black African	41904019
8	Coloured	41904019
1	Indian or Asian	41904019
8	White	41904019
0	Other	41904019
6873	Black African	41904020
17	Coloured	41904020
1	Indian or Asian	41904020
8	White	41904020
0	Other	41904020
9735	Black African	41904021
27	Coloured	41904021
13	Indian or Asian	41904021
26	White	41904021
8	Other	41904021
8950	Black African	41904022
93	Coloured	41904022
289	Indian or Asian	41904022
2706	White	41904022
52	Other	41904022
9824	Black African	41904023
16	Coloured	41904023
3	Indian or Asian	41904023
3	White	41904023
6	Other	41904023
16383	Black African	41904024
12	Coloured	41904024
15	Indian or Asian	41904024
11	White	41904024
9	Other	41904024
7889	Black African	41904025
12	Coloured	41904025
4	Indian or Asian	41904025
3	White	41904025
5	Other	41904025
6734	Black African	41904026
6	Coloured	41904026
1	Indian or Asian	41904026
3	White	41904026
5	Other	41904026
9124	Black African	41904027
17	Coloured	41904027
4	Indian or Asian	41904027
10	White	41904027
28	Other	41904027
11803	Black African	41904028
20	Coloured	41904028
18	Indian or Asian	41904028
23	White	41904028
9	Other	41904028
9585	Black African	41904029
25	Coloured	41904029
5	Indian or Asian	41904029
5	White	41904029
12	Other	41904029
6843	Black African	41904030
15	Coloured	41904030
2	Indian or Asian	41904030
3	White	41904030
10	Other	41904030
8359	Black African	41904031
17	Coloured	41904031
3	Indian or Asian	41904031
5	White	41904031
3	Other	41904031
12968	Black African	41904032
24	Coloured	41904032
7	Indian or Asian	41904032
11	White	41904032
2	Other	41904032
12465	Black African	41904033
9	Coloured	41904033
100	Indian or Asian	41904033
22	White	41904033
15	Other	41904033
14865	Black African	41904034
27	Coloured	41904034
5	Indian or Asian	41904034
9	White	41904034
11	Other	41904034
6666	Black African	41904035
3	Coloured	41904035
0	Indian or Asian	41904035
9	White	41904035
2	Other	41904035
1950	Black African	41905001
12	Coloured	41905001
8	Indian or Asian	41905001
342	White	41905001
8	Other	41905001
6296	Black African	41905002
20	Coloured	41905002
16	Indian or Asian	41905002
11	White	41905002
28	Other	41905002
3061	Black African	41905003
29	Coloured	41905003
52	Indian or Asian	41905003
972	White	41905003
14	Other	41905003
5457	Black African	41905004
13	Coloured	41905004
15	Indian or Asian	41905004
5	White	41905004
21	Other	41905004
6194	Black African	41905005
19	Coloured	41905005
1	Indian or Asian	41905005
662	White	41905005
3	Other	41905005
5733	Black African	41905006
8	Coloured	41905006
22	Indian or Asian	41905006
7	White	41905006
15	Other	41905006
5441	Black African	41905007
37	Coloured	41905007
37	Indian or Asian	41905007
919	White	41905007
43	Other	41905007
9641	Black African	41905008
55	Coloured	41905008
15	Indian or Asian	41905008
581	White	41905008
9	Other	41905008
5285	Black African	41906001
735	Coloured	41906001
12	Indian or Asian	41906001
299	White	41906001
16	Other	41906001
5131	Black African	41906002
122	Coloured	41906002
22	Indian or Asian	41906002
468	White	41906002
79	Other	41906002
5419	Black African	41906003
87	Coloured	41906003
10	Indian or Asian	41906003
237	White	41906003
6	Other	41906003
7352	Black African	41906004
70	Coloured	41906004
10	Indian or Asian	41906004
2	White	41906004
12	Other	41906004
5279	Black African	41906005
58	Coloured	41906005
11	Indian or Asian	41906005
4	White	41906005
14	Other	41906005
4642	Black African	41906006
79	Coloured	41906006
5	Indian or Asian	41906006
3	White	41906006
3	Other	41906006
2652	Black African	41906007
550	Coloured	41906007
193	Indian or Asian	41906007
1766	White	41906007
99	Other	41906007
4713	Black African	41906008
298	Coloured	41906008
26	Indian or Asian	41906008
422	White	41906008
24	Other	41906008
4652	Black African	41906009
7	Coloured	41906009
7	Indian or Asian	41906009
165	White	41906009
7	Other	41906009
7759	Black African	42001001
15	Coloured	42001001
2	Indian or Asian	42001001
12	White	42001001
5	Other	42001001
6407	Black African	42001002
170	Coloured	42001002
56	Indian or Asian	42001002
1532	White	42001002
15	Other	42001002
5054	Black African	42001003
390	Coloured	42001003
26	Indian or Asian	42001003
2905	White	42001003
12	Other	42001003
6462	Black African	42001004
111	Coloured	42001004
1	Indian or Asian	42001004
23	White	42001004
2	Other	42001004
7006	Black African	42001005
18	Coloured	42001005
6	Indian or Asian	42001005
2	White	42001005
18	Other	42001005
2846	Black African	42001006
55	Coloured	42001006
6	Indian or Asian	42001006
45	White	42001006
11	Other	42001006
7640	Black African	42001007
28	Coloured	42001007
4	Indian or Asian	42001007
142	White	42001007
15	Other	42001007
5012	Black African	42001008
37	Coloured	42001008
7	Indian or Asian	42001008
0	White	42001008
2	Other	42001008
7699	Black African	42001009
119	Coloured	42001009
21	Indian or Asian	42001009
57	White	42001009
8	Other	42001009
5290	Black African	42001010
31	Coloured	42001010
9	Indian or Asian	42001010
72	White	42001010
6	Other	42001010
4607	Black African	42001011
29	Coloured	42001011
5	Indian or Asian	42001011
7	White	42001011
7	Other	42001011
4427	Black African	42001012
11	Coloured	42001012
14	Indian or Asian	42001012
4	White	42001012
14	Other	42001012
5462	Black African	42001013
2537	Coloured	42001013
15	Indian or Asian	42001013
33	White	42001013
25	Other	42001013
4349	Black African	42001014
25	Coloured	42001014
0	Indian or Asian	42001014
2	White	42001014
5	Other	42001014
5774	Black African	42001015
49	Coloured	42001015
6	Indian or Asian	42001015
3	White	42001015
13	Other	42001015
3728	Black African	42001016
233	Coloured	42001016
121	Indian or Asian	42001016
2698	White	42001016
95	Other	42001016
1172	Black African	42001017
198	Coloured	42001017
114	Indian or Asian	42001017
3747	White	42001017
44	Other	42001017
7274	Black African	42001018
47	Coloured	42001018
2	Indian or Asian	42001018
2	White	42001018
24	Other	42001018
6732	Black African	42001019
51	Coloured	42001019
9	Indian or Asian	42001019
2	White	42001019
21	Other	42001019
7584	Black African	42001020
60	Coloured	42001020
21	Indian or Asian	42001020
8	White	42001020
10	Other	42001020
6611	Black African	42001021
30	Coloured	42001021
26	Indian or Asian	42001021
2	White	42001021
28	Other	42001021
6935	Black African	42001022
52	Coloured	42001022
9	Indian or Asian	42001022
409	White	42001022
18	Other	42001022
3034	Black African	42001023
23	Coloured	42001023
0	Indian or Asian	42001023
1074	White	42001023
1	Other	42001023
5789	Black African	42001024
135	Coloured	42001024
33	Indian or Asian	42001024
254	White	42001024
9	Other	42001024
5317	Black African	42001025
138	Coloured	42001025
23	Indian or Asian	42001025
1931	White	42001025
61	Other	42001025
5626	Black African	42003001
1383	Coloured	42003001
25	Indian or Asian	42003001
859	White	42003001
16	Other	42003001
5491	Black African	42003002
28	Coloured	42003002
12	Indian or Asian	42003002
10	White	42003002
29	Other	42003002
3910	Black African	42003003
68	Coloured	42003003
43	Indian or Asian	42003003
1439	White	42003003
59	Other	42003003
3463	Black African	42003004
8	Coloured	42003004
0	Indian or Asian	42003004
0	White	42003004
4	Other	42003004
4613	Black African	42003005
43	Coloured	42003005
7	Indian or Asian	42003005
1	White	42003005
8	Other	42003005
1960	Black African	42003006
17	Coloured	42003006
1	Indian or Asian	42003006
232	White	42003006
0	Other	42003006
9743	Black African	42003007
39	Coloured	42003007
6	Indian or Asian	42003007
2	White	42003007
7	Other	42003007
11534	Black African	42003008
166	Coloured	42003008
46	Indian or Asian	42003008
414	White	42003008
22	Other	42003008
5636	Black African	42003009
9	Coloured	42003009
17	Indian or Asian	42003009
10	White	42003009
5	Other	42003009
5310	Black African	42003010
78	Coloured	42003010
14	Indian or Asian	42003010
52	White	42003010
7	Other	42003010
4158	Black African	42003011
28	Coloured	42003011
13	Indian or Asian	42003011
13	White	42003011
17	Other	42003011
5335	Black African	42003012
22	Coloured	42003012
22	Indian or Asian	42003012
69	White	42003012
10	Other	42003012
713	Black African	42003013
65	Coloured	42003013
46	Indian or Asian	42003013
4584	White	42003013
31	Other	42003013
5395	Black African	42003014
716	Coloured	42003014
21	Indian or Asian	42003014
4	White	42003014
11	Other	42003014
4489	Black African	42003015
18	Coloured	42003015
5	Indian or Asian	42003015
3	White	42003015
8	Other	42003015
8603	Black African	42003016
122	Coloured	42003016
12	Indian or Asian	42003016
7	White	42003016
27	Other	42003016
7082	Black African	42003017
19	Coloured	42003017
13	Indian or Asian	42003017
4	White	42003017
19	Other	42003017
1921	Black African	42003018
63	Coloured	42003018
12	Indian or Asian	42003018
2884	White	42003018
19	Other	42003018
6295	Black African	42003019
70	Coloured	42003019
15	Indian or Asian	42003019
334	White	42003019
15	Other	42003019
2943	Black African	42003020
219	Coloured	42003020
22	Indian or Asian	42003020
1523	White	42003020
10	Other	42003020
14690	Black African	42004001
80	Coloured	42004001
35	Indian or Asian	42004001
1388	White	42004001
20	Other	42004001
4470	Black African	42004002
4	Coloured	42004002
4	Indian or Asian	42004002
2	White	42004002
5	Other	42004002
5898	Black African	42004003
11	Coloured	42004003
7	Indian or Asian	42004003
2	White	42004003
20	Other	42004003
5388	Black African	42004004
6	Coloured	42004004
6	Indian or Asian	42004004
2	White	42004004
27	Other	42004004
5507	Black African	42004005
23	Coloured	42004005
17	Indian or Asian	42004005
1132	White	42004005
22	Other	42004005
4867	Black African	42004006
47	Coloured	42004006
5	Indian or Asian	42004006
4	White	42004006
5	Other	42004006
3989	Black African	42004007
14	Coloured	42004007
6	Indian or Asian	42004007
1	White	42004007
2	Other	42004007
7328	Black African	42004008
9	Coloured	42004008
2	Indian or Asian	42004008
2	White	42004008
6	Other	42004008
4919	Black African	42004009
26	Coloured	42004009
3	Indian or Asian	42004009
1	White	42004009
5	Other	42004009
7035	Black African	42004010
17	Coloured	42004010
7	Indian or Asian	42004010
6	White	42004010
14	Other	42004010
5086	Black African	42004011
7	Coloured	42004011
0	Indian or Asian	42004011
5	White	42004011
12	Other	42004011
4061	Black African	42004012
6	Coloured	42004012
1	Indian or Asian	42004012
0	White	42004012
4	Other	42004012
12435	Black African	42004013
27	Coloured	42004013
12	Indian or Asian	42004013
14	White	42004013
27	Other	42004013
1855	Black African	42004014
151	Coloured	42004014
158	Indian or Asian	42004014
8450	White	42004014
68	Other	42004014
1221	Black African	42004015
46	Coloured	42004015
6	Indian or Asian	42004015
2066	White	42004015
2	Other	42004015
1326	Black African	42004016
120	Coloured	42004016
54	Indian or Asian	42004016
5175	White	42004016
18	Other	42004016
4019	Black African	42004017
161	Coloured	42004017
42	Indian or Asian	42004017
3600	White	42004017
13	Other	42004017
1482	Black African	42004018
31	Coloured	42004018
71	Indian or Asian	42004018
1418	White	42004018
6	Other	42004018
12183	Black African	42004019
52	Coloured	42004019
15	Indian or Asian	42004019
262	White	42004019
162	Other	42004019
10616	Black African	42004020
215	Coloured	42004020
20	Indian or Asian	42004020
854	White	42004020
28	Other	42004020
4325	Black African	42004021
16	Coloured	42004021
5	Indian or Asian	42004021
3	White	42004021
8	Other	42004021
3834	Black African	42005001
35	Coloured	42005001
27	Indian or Asian	42005001
245	White	42005001
4	Other	42005001
9538	Black African	42005002
41	Coloured	42005002
5	Indian or Asian	42005002
3	White	42005002
19	Other	42005002
5890	Black African	42005003
6	Coloured	42005003
2	Indian or Asian	42005003
0	White	42005003
15	Other	42005003
4949	Black African	42005004
40	Coloured	42005004
45	Indian or Asian	42005004
1157	White	42005004
22	Other	42005004
3210	Black African	42005005
27	Coloured	42005005
28	Indian or Asian	42005005
2086	White	42005005
32	Other	42005005
5229	Black African	42005006
25	Coloured	42005006
6	Indian or Asian	42005006
2	White	42005006
5	Other	42005006
6451	Black African	42005007
50	Coloured	42005007
6	Indian or Asian	42005007
168	White	42005007
5	Other	42005007
6807	Black African	42005008
131	Coloured	42005008
26	Indian or Asian	42005008
397	White	42005008
9	Other	42005008
7259	Black African	42005009
18	Coloured	42005009
12	Indian or Asian	42005009
5	White	42005009
6	Other	42005009
12122	Black African	49400001
214	Coloured	49400001
38	Indian or Asian	49400001
20	White	49400001
54	Other	49400001
12922	Black African	49400002
220	Coloured	49400002
20	Indian or Asian	49400002
7	White	49400002
35	Other	49400002
11844	Black African	49400003
156	Coloured	49400003
40	Indian or Asian	49400003
27	White	49400003
17	Other	49400003
11843	Black African	49400004
313	Coloured	49400004
38	Indian or Asian	49400004
6	White	49400004
59	Other	49400004
14487	Black African	49400005
62	Coloured	49400005
31	Indian or Asian	49400005
8	White	49400005
48	Other	49400005
16617	Black African	49400006
274	Coloured	49400006
39	Indian or Asian	49400006
4	White	49400006
29	Other	49400006
7817	Black African	49400007
157	Coloured	49400007
21	Indian or Asian	49400007
7	White	49400007
8	Other	49400007
15066	Black African	49400008
1675	Coloured	49400008
44	Indian or Asian	49400008
23	White	49400008
42	Other	49400008
12711	Black African	49400009
124	Coloured	49400009
27	Indian or Asian	49400009
6	White	49400009
28	Other	49400009
16986	Black African	49400010
185	Coloured	49400010
53	Indian or Asian	49400010
14	White	49400010
54	Other	49400010
14642	Black African	49400011
211	Coloured	49400011
34	Indian or Asian	49400011
3	White	49400011
22	Other	49400011
22085	Black African	49400012
229	Coloured	49400012
49	Indian or Asian	49400012
21	White	49400012
25	Other	49400012
9256	Black African	49400013
29	Coloured	49400013
23	Indian or Asian	49400013
7	White	49400013
15	Other	49400013
14775	Black African	49400014
101	Coloured	49400014
19	Indian or Asian	49400014
9	White	49400014
34	Other	49400014
14480	Black African	49400015
149	Coloured	49400015
24	Indian or Asian	49400015
48	White	49400015
20	Other	49400015
2172	Black African	49400016
11933	Coloured	49400016
91	Indian or Asian	49400016
41	White	49400016
81	Other	49400016
13036	Black African	49400017
1751	Coloured	49400017
85	Indian or Asian	49400017
1557	White	49400017
25	Other	49400017
17675	Black African	49400018
1136	Coloured	49400018
120	Indian or Asian	49400018
5201	White	49400018
46	Other	49400018
9025	Black African	49400019
1173	Coloured	49400019
316	Indian or Asian	49400019
3121	White	49400019
103	Other	49400019
5622	Black African	49400020
771	Coloured	49400020
252	Indian or Asian	49400020
6357	White	49400020
99	Other	49400020
3943	Black African	49400021
472	Coloured	49400021
132	Indian or Asian	49400021
5756	White	49400021
124	Other	49400021
3760	Black African	49400022
491	Coloured	49400022
216	Indian or Asian	49400022
8631	White	49400022
114	Other	49400022
3875	Black African	49400023
495	Coloured	49400023
105	Indian or Asian	49400023
5947	White	49400023
39	Other	49400023
1767	Black African	49400024
304	Coloured	49400024
68	Indian or Asian	49400024
8598	White	49400024
69	Other	49400024
2495	Black African	49400025
528	Coloured	49400025
99	Indian or Asian	49400025
10081	White	49400025
81	Other	49400025
3854	Black African	49400026
503	Coloured	49400026
51	Indian or Asian	49400026
6167	White	49400026
34	Other	49400026
21448	Black African	49400027
102	Coloured	49400027
30	Indian or Asian	49400027
53	White	49400027
35	Other	49400027
15146	Black African	49400028
57	Coloured	49400028
75	Indian or Asian	49400028
17	White	49400028
18	Other	49400028
13767	Black African	49400029
35	Coloured	49400029
24	Indian or Asian	49400029
7	White	49400029
30	Other	49400029
15088	Black African	49400030
57	Coloured	49400030
44	Indian or Asian	49400030
28	White	49400030
94	Other	49400030
11650	Black African	49400031
36	Coloured	49400031
13	Indian or Asian	49400031
12	White	49400031
20	Other	49400031
13015	Black African	49400032
7	Coloured	49400032
36	Indian or Asian	49400032
8	White	49400032
15	Other	49400032
13731	Black African	49400033
29	Coloured	49400033
10	Indian or Asian	49400033
11	White	49400033
19	Other	49400033
18475	Black African	49400034
63	Coloured	49400034
27	Indian or Asian	49400034
10	White	49400034
31	Other	49400034
17581	Black African	49400035
67	Coloured	49400035
21	Indian or Asian	49400035
9	White	49400035
31	Other	49400035
13485	Black African	49400036
42	Coloured	49400036
46	Indian or Asian	49400036
13	White	49400036
21	Other	49400036
18672	Black African	49400037
85	Coloured	49400037
29	Indian or Asian	49400037
9	White	49400037
37	Other	49400037
11839	Black African	49400038
25	Coloured	49400038
18	Indian or Asian	49400038
25	White	49400038
7	Other	49400038
12666	Black African	49400039
90	Coloured	49400039
93	Indian or Asian	49400039
105	White	49400039
37	Other	49400039
12117	Black African	49400040
56	Coloured	49400040
47	Indian or Asian	49400040
6	White	49400040
51	Other	49400040
11972	Black African	49400041
68	Coloured	49400041
7	Indian or Asian	49400041
28	White	49400041
13	Other	49400041
12171	Black African	49400042
18	Coloured	49400042
21	Indian or Asian	49400042
7	White	49400042
14	Other	49400042
14388	Black African	49400043
86	Coloured	49400043
26	Indian or Asian	49400043
11	White	49400043
12	Other	49400043
6098	Black African	49400044
654	Coloured	49400044
232	Indian or Asian	49400044
11779	White	49400044
139	Other	49400044
32762	Black African	49400045
1961	Coloured	49400045
66	Indian or Asian	49400045
275	White	49400045
55	Other	49400045
35998	Black African	49400046
1933	Coloured	49400046
105	Indian or Asian	49400046
929	White	49400046
90	Other	49400046
6913	Black African	49400047
7771	Coloured	49400047
80	Indian or Asian	49400047
110	White	49400047
65	Other	49400047
3723	Black African	49400048
405	Coloured	49400048
92	Indian or Asian	49400048
7166	White	49400048
50	Other	49400048
14801	Black African	49400049
34	Coloured	49400049
28	Indian or Asian	49400049
7	White	49400049
29	Other	49400049
2865	Black African	74201001
179	Coloured	74201001
162	Indian or Asian	74201001
12885	White	74201001
124	Other	74201001
16773	Black African	74201002
45	Coloured	74201002
14	Indian or Asian	74201002
12	White	74201002
33	Other	74201002
14528	Black African	74201003
107	Coloured	74201003
55	Indian or Asian	74201003
3600	White	74201003
44	Other	74201003
7170	Black African	74201004
184	Coloured	74201004
196	Indian or Asian	74201004
7083	White	74201004
86	Other	74201004
2270	Black African	74201005
171	Coloured	74201005
265	Indian or Asian	74201005
14444	White	74201005
174	Other	74201005
24808	Black African	74201006
117	Coloured	74201006
17	Indian or Asian	74201006
14	White	74201006
84	Other	74201006
16861	Black African	74201007
78	Coloured	74201007
32	Indian or Asian	74201007
2079	White	74201007
31	Other	74201007
12906	Black African	74201008
61	Coloured	74201008
12	Indian or Asian	74201008
743	White	74201008
27	Other	74201008
8506	Black African	74201009
189	Coloured	74201009
114	Indian or Asian	74201009
9032	White	74201009
150	Other	74201009
9239	Black African	74201010
485	Coloured	74201010
219	Indian or Asian	74201010
10763	White	74201010
355	Other	74201010
19134	Black African	74201011
182	Coloured	74201011
79	Indian or Asian	74201011
1931	White	74201011
54	Other	74201011
11119	Black African	74201012
22	Coloured	74201012
11	Indian or Asian	74201012
14	White	74201012
22	Other	74201012
14687	Black African	74201013
38	Coloured	74201013
13	Indian or Asian	74201013
4	White	74201013
37	Other	74201013
11636	Black African	74201014
21	Coloured	74201014
5	Indian or Asian	74201014
5	White	74201014
8	Other	74201014
14245	Black African	74201015
562	Coloured	74201015
247	Indian or Asian	74201015
5100	White	74201015
425	Other	74201015
6937	Black African	74201016
3519	Coloured	74201016
407	Indian or Asian	74201016
4364	White	74201016
175	Other	74201016
10285	Black African	74201017
32	Coloured	74201017
13	Indian or Asian	74201017
48	White	74201017
8	Other	74201017
15032	Black African	74201018
60	Coloured	74201018
14	Indian or Asian	74201018
9	White	74201018
37	Other	74201018
17320	Black African	74201019
46	Coloured	74201019
3	Indian or Asian	74201019
11	White	74201019
80	Other	74201019
17279	Black African	74201020
84	Coloured	74201020
10	Indian or Asian	74201020
6	White	74201020
78	Other	74201020
14657	Black African	74201021
244	Coloured	74201021
4682	Indian or Asian	74201021
98	White	74201021
105	Other	74201021
17789	Black African	74201022
59	Coloured	74201022
27	Indian or Asian	74201022
5	White	74201022
78	Other	74201022
13370	Black African	74201023
81	Coloured	74201023
47	Indian or Asian	74201023
1175	White	74201023
43	Other	74201023
11683	Black African	74201024
50	Coloured	74201024
4	Indian or Asian	74201024
2	White	74201024
31	Other	74201024
15351	Black African	74201025
143	Coloured	74201025
23	Indian or Asian	74201025
5101	White	74201025
77	Other	74201025
26487	Black African	74201026
58	Coloured	74201026
27	Indian or Asian	74201026
15	White	74201026
49	Other	74201026
11265	Black African	74201027
18	Coloured	74201027
3	Indian or Asian	74201027
17	White	74201027
25	Other	74201027
24856	Black African	74201028
70	Coloured	74201028
16	Indian or Asian	74201028
139	White	74201028
39	Other	74201028
16016	Black African	74201029
77	Coloured	74201029
17	Indian or Asian	74201029
18	White	74201029
84	Other	74201029
12261	Black African	74201030
13	Coloured	74201030
14	Indian or Asian	74201030
27	White	74201030
4	Other	74201030
11666	Black African	74201031
5	Coloured	74201031
9	Indian or Asian	74201031
0	White	74201031
27	Other	74201031
11593	Black African	74201032
6	Coloured	74201032
8	Indian or Asian	74201032
5	White	74201032
53	Other	74201032
15768	Black African	74201033
33	Coloured	74201033
3	Indian or Asian	74201033
19	White	74201033
55	Other	74201033
11801	Black African	74201034
25	Coloured	74201034
13	Indian or Asian	74201034
1	White	74201034
22	Other	74201034
11241	Black African	74201035
34	Coloured	74201035
8	Indian or Asian	74201035
5	White	74201035
35	Other	74201035
21892	Black African	74201036
122	Coloured	74201036
18	Indian or Asian	74201036
33	White	74201036
113	Other	74201036
11742	Black African	74201037
28	Coloured	74201037
4	Indian or Asian	74201037
5	White	74201037
25	Other	74201037
15208	Black African	74201038
50	Coloured	74201038
5	Indian or Asian	74201038
11	White	74201038
18	Other	74201038
13081	Black African	74201039
408	Coloured	74201039
16	Indian or Asian	74201039
3	White	74201039
49	Other	74201039
12657	Black African	74201040
21	Coloured	74201040
17	Indian or Asian	74201040
9	White	74201040
35	Other	74201040
13178	Black African	74201041
44	Coloured	74201041
10	Indian or Asian	74201041
3	White	74201041
63	Other	74201041
8652	Black African	74201042
50	Coloured	74201042
1	Indian or Asian	74201042
5	White	74201042
6	Other	74201042
16632	Black African	74201043
111	Coloured	74201043
14	Indian or Asian	74201043
9	White	74201043
20	Other	74201043
18493	Black African	74201044
66	Coloured	74201044
14	Indian or Asian	74201044
5	White	74201044
31	Other	74201044
5155	Black African	74201045
358	Coloured	74201045
191	Indian or Asian	74201045
8091	White	74201045
66	Other	74201045
4855	Black African	74202001
68	Coloured	74202001
3	Indian or Asian	74202001
2277	White	74202001
57	Other	74202001
835	Black African	74202002
63	Coloured	74202002
27	Indian or Asian	74202002
4086	White	74202002
49	Other	74202002
793	Black African	74202003
64	Coloured	74202003
51	Indian or Asian	74202003
4686	White	74202003
6	Other	74202003
3808	Black African	74202004
164	Coloured	74202004
118	Indian or Asian	74202004
3972	White	74202004
32	Other	74202004
5143	Black African	74202005
198	Coloured	74202005
110	Indian or Asian	74202005
4865	White	74202005
61	Other	74202005
9305	Black African	74202006
46	Coloured	74202006
9	Indian or Asian	74202006
10	White	74202006
35	Other	74202006
4127	Black African	74202007
195	Coloured	74202007
60	Indian or Asian	74202007
2372	White	74202007
63	Other	74202007
8380	Black African	74202008
79	Coloured	74202008
3	Indian or Asian	74202008
93	White	74202008
2	Other	74202008
118	Black African	74202009
19	Coloured	74202009
11	Indian or Asian	74202009
748	White	74202009
1	Other	74202009
8382	Black African	74202010
118	Coloured	74202010
22	Indian or Asian	74202010
234	White	74202010
35	Other	74202010
4721	Black African	74202011
412	Coloured	74202011
222	Indian or Asian	74202011
1758	White	74202011
57	Other	74202011
2586	Black African	74202012
50	Coloured	74202012
74	Indian or Asian	74202012
1129	White	74202012
18	Other	74202012
2315	Black African	74202013
65	Coloured	74202013
19	Indian or Asian	74202013
4919	White	74202013
17	Other	74202013
276	Black African	74202014
17	Coloured	74202014
22	Indian or Asian	74202014
5722	White	74202014
47	Other	74202014
5143	Black African	74203001
57	Coloured	74203001
9	Indian or Asian	74203001
559	White	74203001
27	Other	74203001
8056	Black African	74203002
37	Coloured	74203002
18	Indian or Asian	74203002
4	White	74203002
2	Other	74203002
6856	Black African	74203003
14	Coloured	74203003
8	Indian or Asian	74203003
4	White	74203003
30	Other	74203003
6582	Black African	74203004
27	Coloured	74203004
10	Indian or Asian	74203004
0	White	74203004
18	Other	74203004
6800	Black African	74203005
44	Coloured	74203005
13	Indian or Asian	74203005
4	White	74203005
29	Other	74203005
4989	Black African	74203006
43	Coloured	74203006
13	Indian or Asian	74203006
1161	White	74203006
7	Other	74203006
9877	Black African	74203007
133	Coloured	74203007
27	Indian or Asian	74203007
41	White	74203007
109	Other	74203007
3092	Black African	74203008
210	Coloured	74203008
780	Indian or Asian	74203008
5992	White	74203008
173	Other	74203008
1090	Black African	74203009
201	Coloured	74203009
210	Indian or Asian	74203009
4892	White	74203009
24	Other	74203009
3904	Black African	74203010
105	Coloured	74203010
106	Indian or Asian	74203010
3071	White	74203010
37	Other	74203010
5848	Black African	74203011
54	Coloured	74203011
11	Indian or Asian	74203011
541	White	74203011
34	Other	74203011
6371	Black African	74203012
205	Coloured	74203012
50	Indian or Asian	74203012
3149	White	74203012
50	Other	74203012
8310	Black African	74203013
26	Coloured	74203013
56	Indian or Asian	74203013
147	White	74203013
31	Other	74203013
13337	Black African	74801001
39	Coloured	74801001
20	Indian or Asian	74801001
17	White	74801001
127	Other	74801001
15778	Black African	74801002
26	Coloured	74801002
19	Indian or Asian	74801002
8	White	74801002
33	Other	74801002
6469	Black African	74801003
136	Coloured	74801003
6549	Indian or Asian	74801003
57	White	74801003
91	Other	74801003
12800	Black African	74801004
38	Coloured	74801004
4	Indian or Asian	74801004
9	White	74801004
8	Other	74801004
7729	Black African	74801005
33	Coloured	74801005
10	Indian or Asian	74801005
4	White	74801005
16	Other	74801005
7799	Black African	74801006
37	Coloured	74801006
0	Indian or Asian	74801006
1	White	74801006
8	Other	74801006
9899	Black African	74801007
23	Coloured	74801007
16	Indian or Asian	74801007
15	White	74801007
2	Other	74801007
11153	Black African	74801008
41	Coloured	74801008
14	Indian or Asian	74801008
4	White	74801008
14	Other	74801008
4059	Black African	74801009
110	Coloured	74801009
36	Indian or Asian	74801009
2425	White	74801009
20	Other	74801009
8498	Black African	74801010
36	Coloured	74801010
6	Indian or Asian	74801010
1	White	74801010
2	Other	74801010
13143	Black African	74801011
39	Coloured	74801011
6	Indian or Asian	74801011
54	White	74801011
4	Other	74801011
6497	Black African	74801012
9	Coloured	74801012
10	Indian or Asian	74801012
3	White	74801012
4	Other	74801012
9990	Black African	74801013
50	Coloured	74801013
4	Indian or Asian	74801013
1	White	74801013
4	Other	74801013
10138	Black African	74801014
95	Coloured	74801014
29	Indian or Asian	74801014
3080	White	74801014
41	Other	74801014
7486	Black African	74801015
28	Coloured	74801015
1	Indian or Asian	74801015
2	White	74801015
16	Other	74801015
8529	Black African	74801016
220	Coloured	74801016
75	Indian or Asian	74801016
2676	White	74801016
91	Other	74801016
1517	Black African	74801017
115	Coloured	74801017
32	Indian or Asian	74801017
7051	White	74801017
94	Other	74801017
1333	Black African	74801018
149	Coloured	74801018
94	Indian or Asian	74801018
8594	White	74801018
61	Other	74801018
6628	Black African	74801019
18	Coloured	74801019
8	Indian or Asian	74801019
10	White	74801019
35	Other	74801019
4842	Black African	74801020
210	Coloured	74801020
148	Indian or Asian	74801020
6931	White	74801020
72	Other	74801020
1400	Black African	74801021
133	Coloured	74801021
74	Indian or Asian	74801021
7848	White	74801021
67	Other	74801021
1458	Black African	74801022
142	Coloured	74801022
84	Indian or Asian	74801022
8463	White	74801022
131	Other	74801022
10038	Black African	74801023
60	Coloured	74801023
17	Indian or Asian	74801023
1348	White	74801023
78	Other	74801023
12689	Black African	74801024
78	Coloured	74801024
21	Indian or Asian	74801024
14	White	74801024
8	Other	74801024
6609	Black African	74801025
55	Coloured	74801025
6	Indian or Asian	74801025
146	White	74801025
24	Other	74801025
8183	Black African	74801026
204	Coloured	74801026
161	Indian or Asian	74801026
7280	White	74801026
73	Other	74801026
11795	Black African	74801027
111	Coloured	74801027
24	Indian or Asian	74801027
1432	White	74801027
37	Other	74801027
1903	Black African	74801028
185	Coloured	74801028
186	Indian or Asian	74801028
7220	White	74801028
129	Other	74801028
2680	Black African	74801029
97	Coloured	74801029
52	Indian or Asian	74801029
4847	White	74801029
176	Other	74801029
13414	Black African	74801030
127	Coloured	74801030
22	Indian or Asian	74801030
2307	White	74801030
74	Other	74801030
8500	Black African	74801031
135	Coloured	74801031
84	Indian or Asian	74801031
1524	White	74801031
56	Other	74801031
6503	Black African	74801032
91	Coloured	74801032
30	Indian or Asian	74801032
846	White	74801032
9	Other	74801032
6371	Black African	74801033
112	Coloured	74801033
17	Indian or Asian	74801033
1720	White	74801033
59	Other	74801033
14649	Black African	74801034
71	Coloured	74801034
17	Indian or Asian	74801034
6	White	74801034
68	Other	74801034
8719	Black African	74802001
142	Coloured	74802001
25	Indian or Asian	74802001
2047	White	74802001
18	Other	74802001
8182	Black African	74802002
367	Coloured	74802002
61	Indian or Asian	74802002
3119	White	74802002
65	Other	74802002
2448	Black African	74802003
153	Coloured	74802003
32	Indian or Asian	74802003
3612	White	74802003
84	Other	74802003
1370	Black African	74802004
132	Coloured	74802004
34	Indian or Asian	74802004
2736	White	74802004
4	Other	74802004
3050	Black African	74802005
488	Coloured	74802005
95	Indian or Asian	74802005
1112	White	74802005
121	Other	74802005
1726	Black African	74802006
172	Coloured	74802006
43	Indian or Asian	74802006
4689	White	74802006
68	Other	74802006
1541	Black African	74802007
146	Coloured	74802007
67	Indian or Asian	74802007
6093	White	74802007
31	Other	74802007
5407	Black African	74802008
3362	Coloured	74802008
76	Indian or Asian	74802008
1043	White	74802008
139	Other	74802008
4386	Black African	74802009
314	Coloured	74802009
86	Indian or Asian	74802009
4919	White	74802009
49	Other	74802009
1051	Black African	74802010
3024	Coloured	74802010
10	Indian or Asian	74802010
2	White	74802010
2	Other	74802010
3499	Black African	74802011
45	Coloured	74802011
3	Indian or Asian	74802011
383	White	74802011
2	Other	74802011
6332	Black African	74802012
61	Coloured	74802012
6	Indian or Asian	74802012
1	White	74802012
2	Other	74802012
7258	Black African	74802013
43	Coloured	74802013
40	Indian or Asian	74802013
37	White	74802013
19	Other	74802013
6766	Black African	74802014
47	Coloured	74802014
1	Indian or Asian	74802014
17	White	74802014
11	Other	74802014
6674	Black African	74802015
94	Coloured	74802015
6	Indian or Asian	74802015
1	White	74802015
14	Other	74802015
7510	Black African	74802016
34	Coloured	74802016
16	Indian or Asian	74802016
34	White	74802016
8	Other	74802016
4080	Black African	74802017
12	Coloured	74802017
0	Indian or Asian	74802017
6	White	74802017
39	Other	74802017
7212	Black African	74802018
22	Coloured	74802018
4	Indian or Asian	74802018
4	White	74802018
2	Other	74802018
4445	Black African	74802019
84	Coloured	74802019
4	Indian or Asian	74802019
4	White	74802019
0	Other	74802019
2778	Black African	74802020
5834	Coloured	74802020
36	Indian or Asian	74802020
62	White	74802020
98	Other	74802020
4288	Black African	74802021
17	Coloured	74802021
1	Indian or Asian	74802021
24	White	74802021
4	Other	74802021
4548	Black African	74802022
25	Coloured	74802022
1	Indian or Asian	74802022
3	White	74802022
22	Other	74802022
6619	Black African	74803001
14	Coloured	74803001
24	Indian or Asian	74803001
773	White	74803001
59	Other	74803001
7429	Black African	74803002
49	Coloured	74803002
30	Indian or Asian	74803002
1365	White	74803002
17	Other	74803002
2718	Black African	74803003
1	Coloured	74803003
1	Indian or Asian	74803003
0	White	74803003
4	Other	74803003
3674	Black African	74803004
70	Coloured	74803004
50	Indian or Asian	74803004
1221	White	74803004
14	Other	74803004
3570	Black African	74803005
42	Coloured	74803005
21	Indian or Asian	74803005
1421	White	74803005
6	Other	74803005
4737	Black African	74803006
114	Coloured	74803006
73	Indian or Asian	74803006
2857	White	74803006
11	Other	74803006
8436	Black African	74803007
78	Coloured	74803007
17	Indian or Asian	74803007
17	White	74803007
14	Other	74803007
9714	Black African	74803008
53	Coloured	74803008
12	Indian or Asian	74803008
2	White	74803008
6	Other	74803008
6147	Black African	74803009
17	Coloured	74803009
1	Indian or Asian	74803009
19	White	74803009
25	Other	74803009
7645	Black African	74803010
23	Coloured	74803010
19	Indian or Asian	74803010
9	White	74803010
43	Other	74803010
4792	Black African	74803011
9	Coloured	74803011
5	Indian or Asian	74803011
5	White	74803011
35	Other	74803011
7977	Black African	74803012
13	Coloured	74803012
27	Indian or Asian	74803012
0	White	74803012
65	Other	74803012
5983	Black African	74803013
125	Coloured	74803013
6	Indian or Asian	74803013
4	White	74803013
104	Other	74803013
6728	Black African	74803014
1	Coloured	74803014
9	Indian or Asian	74803014
17	White	74803014
225	Other	74803014
6554	Black African	74803015
16	Coloured	74803015
3	Indian or Asian	74803015
6	White	74803015
29	Other	74803015
9423	Black African	74803016
125	Coloured	74803016
44	Indian or Asian	74803016
143	White	74803016
11	Other	74803016
10122	Black African	74804001
158	Coloured	74804001
9	Indian or Asian	74804001
748	White	74804001
14	Other	74804001
8043	Black African	74804002
43	Coloured	74804002
5	Indian or Asian	74804002
13	White	74804002
15	Other	74804002
6346	Black African	74804003
33	Coloured	74804003
1	Indian or Asian	74804003
4	White	74804003
2	Other	74804003
9049	Black African	74804004
45	Coloured	74804004
18	Indian or Asian	74804004
9	White	74804004
18	Other	74804004
2304	Black African	74804005
0	Coloured	74804005
0	Indian or Asian	74804005
310	White	74804005
2	Other	74804005
5740	Black African	74804006
16	Coloured	74804006
6	Indian or Asian	74804006
13	White	74804006
8	Other	74804006
7743	Black African	74804007
16	Coloured	74804007
1	Indian or Asian	74804007
12	White	74804007
6	Other	74804007
6028	Black African	74804008
32	Coloured	74804008
6	Indian or Asian	74804008
4	White	74804008
8	Other	74804008
6071	Black African	74804009
4	Coloured	74804009
1	Indian or Asian	74804009
1	White	74804009
2	Other	74804009
6550	Black African	74804010
10	Coloured	74804010
6	Indian or Asian	74804010
5	White	74804010
8	Other	74804010
5733	Black African	74804011
25	Coloured	74804011
1	Indian or Asian	74804011
250	White	74804011
23	Other	74804011
3099	Black African	74804012
34	Coloured	74804012
12	Indian or Asian	74804012
2618	White	74804012
37	Other	74804012
7315	Black African	74804013
49	Coloured	74804013
20	Indian or Asian	74804013
182	White	74804013
2	Other	74804013
7105	Black African	74804014
64	Coloured	74804014
20	Indian or Asian	74804014
828	White	74804014
6	Other	74804014
4256	Black African	74804015
28	Coloured	74804015
6	Indian or Asian	74804015
658	White	74804015
20	Other	74804015
5129	Black African	74804016
76	Coloured	74804016
92	Indian or Asian	74804016
2207	White	74804016
25	Other	74804016
2289	Black African	74804017
73	Coloured	74804017
45	Indian or Asian	74804017
3325	White	74804017
16	Other	74804017
4216	Black African	74804018
52	Coloured	74804018
114	Indian or Asian	74804018
1326	White	74804018
35	Other	74804018
3750	Black African	74804019
17	Coloured	74804019
4	Indian or Asian	74804019
23	White	74804019
4	Other	74804019
9391	Black African	74804020
40	Coloured	74804020
9	Indian or Asian	74804020
258	White	74804020
23	Other	74804020
8627	Black African	74804021
944	Coloured	74804021
31	Indian or Asian	74804021
4226	White	74804021
84	Other	74804021
6791	Black African	74804022
70	Coloured	74804022
11	Indian or Asian	74804022
253	White	74804022
34	Other	74804022
6699	Black African	74804023
20	Coloured	74804023
6	Indian or Asian	74804023
4	White	74804023
49	Other	74804023
3617	Black African	74804024
33	Coloured	74804024
10	Indian or Asian	74804024
1592	White	74804024
17	Other	74804024
7212	Black African	74804025
33	Coloured	74804025
6	Indian or Asian	74804025
137	White	74804025
51	Other	74804025
9662	Black African	74804026
95	Coloured	74804026
29	Indian or Asian	74804026
871	White	74804026
77	Other	74804026
4303	Black African	74804027
46	Coloured	74804027
12	Indian or Asian	74804027
664	White	74804027
25	Other	74804027
3703	Black African	74804028
74	Coloured	74804028
79	Indian or Asian	74804028
2750	White	74804028
31	Other	74804028
45202	Black African	79700001
321	Coloured	79700001
497	Indian or Asian	79700001
8509	White	79700001
357	Other	79700001
32675	Black African	79700002
61	Coloured	79700002
56	Indian or Asian	79700002
21	White	79700002
291	Other	79700002
25950	Black African	79700003
27	Coloured	79700003
29	Indian or Asian	79700003
19	White	79700003
301	Other	79700003
13078	Black African	79700004
5	Coloured	79700004
19	Indian or Asian	79700004
10	White	79700004
6	Other	79700004
26767	Black African	79700005
47	Coloured	79700005
16	Indian or Asian	79700005
16	White	79700005
362	Other	79700005
29380	Black African	79700006
38	Coloured	79700006
56	Indian or Asian	79700006
7	White	79700006
76	Other	79700006
25330	Black African	79700007
99	Coloured	79700007
45	Indian or Asian	79700007
5	White	79700007
66	Other	79700007
32186	Black African	79700008
69	Coloured	79700008
61	Indian or Asian	79700008
20	White	79700008
235	Other	79700008
24094	Black African	79700009
44	Coloured	79700009
31	Indian or Asian	79700009
17	White	79700009
88	Other	79700009
25394	Black African	79700010
65	Coloured	79700010
29	Indian or Asian	79700010
52	White	79700010
190	Other	79700010
30342	Black African	79700011
36	Coloured	79700011
77	Indian or Asian	79700011
12	White	79700011
420	Other	79700011
36160	Black African	79700012
80	Coloured	79700012
83	Indian or Asian	79700012
172	White	79700012
276	Other	79700012
21311	Black African	79700013
634	Coloured	79700013
973	Indian or Asian	79700013
6545	White	79700013
118	Other	79700013
30735	Black African	79700014
72	Coloured	79700014
51	Indian or Asian	79700014
33	White	79700014
154	Other	79700014
6845	Black African	79700015
436	Coloured	79700015
780	Indian or Asian	79700015
21053	White	79700015
329	Other	79700015
9223	Black African	79700016
584	Coloured	79700016
668	Indian or Asian	79700016
16533	White	79700016
277	Other	79700016
21326	Black African	79700017
1375	Coloured	79700017
1901	Indian or Asian	79700017
11697	White	79700017
466	Other	79700017
5686	Black African	79700018
931	Coloured	79700018
2744	Indian or Asian	79700018
17576	White	79700018
505	Other	79700018
5416	Black African	79700019
535	Coloured	79700019
1711	Indian or Asian	79700019
18438	White	79700019
508	Other	79700019
7798	Black African	79700020
1022	Coloured	79700020
2971	Indian or Asian	79700020
16085	White	79700020
1042	Other	79700020
24717	Black African	79700021
877	Coloured	79700021
1054	Indian or Asian	79700021
16179	White	79700021
283	Other	79700021
7396	Black African	79700022
928	Coloured	79700022
1740	Indian or Asian	79700022
18961	White	79700022
214	Other	79700022
5235	Black African	79700023
427	Coloured	79700023
1184	Indian or Asian	79700023
21569	White	79700023
325	Other	79700023
29815	Black African	79700024
466	Coloured	79700024
699	Indian or Asian	79700024
14875	White	79700024
191	Other	79700024
40486	Black African	79700025
258	Coloured	79700025
91	Indian or Asian	79700025
3172	White	79700025
58	Other	79700025
32755	Black African	79700026
82	Coloured	79700026
52	Indian or Asian	79700026
22	White	79700026
113	Other	79700026
3000	Black African	79700027
246	Coloured	79700027
952	Indian or Asian	79700027
19383	White	79700027
277	Other	79700027
4789	Black African	79700028
428	Coloured	79700028
4826	Indian or Asian	79700028
15554	White	79700028
257	Other	79700028
8792	Black African	79700029
1155	Coloured	79700029
8338	Indian or Asian	79700029
42	White	79700029
180	Other	79700029
22426	Black African	79700030
54	Coloured	79700030
21	Indian or Asian	79700030
26	White	79700030
74	Other	79700030
18161	Black African	79700031
1199	Coloured	79700031
2257	Indian or Asian	79700031
12357	White	79700031
202	Other	79700031
6243	Black African	79700032
1967	Coloured	79700032
772	Indian or Asian	79700032
15026	White	79700032
268	Other	79700032
30228	Black African	79700033
740	Coloured	79700033
535	Indian or Asian	79700033
8906	White	79700033
338	Other	79700033
8373	Black African	79700034
16986	Coloured	79700034
289	Indian or Asian	79700034
115	White	79700034
215	Other	79700034
22421	Black African	79700035
1468	Coloured	79700035
178	Indian or Asian	79700035
3869	White	79700035
163	Other	79700035
13841	Black African	79700036
848	Coloured	79700036
864	Indian or Asian	79700036
11298	White	79700036
206	Other	79700036
4965	Black African	79700037
739	Coloured	79700037
1250	Indian or Asian	79700037
23273	White	79700037
209	Other	79700037
7310	Black African	79700038
1499	Coloured	79700038
2263	Indian or Asian	79700038
22314	White	79700038
291	Other	79700038
16127	Black African	79700039
1000	Coloured	79700039
1212	Indian or Asian	79700039
16050	White	79700039
228	Other	79700039
29767	Black African	79700040
238	Coloured	79700040
45	Indian or Asian	79700040
308	White	79700040
129	Other	79700040
41905	Black African	79700041
152	Coloured	79700041
64	Indian or Asian	79700041
119	White	79700041
170	Other	79700041
25430	Black African	79700042
2391	Coloured	79700042
251	Indian or Asian	79700042
7776	White	79700042
180	Other	79700042
16320	Black African	79700043
3488	Coloured	79700043
322	Indian or Asian	79700043
6720	White	79700043
117	Other	79700043
31869	Black African	79700044
98	Coloured	79700044
71	Indian or Asian	79700044
25	White	79700044
41	Other	79700044
28603	Black African	79700045
490	Coloured	79700045
1028	Indian or Asian	79700045
174	White	79700045
117	Other	79700045
27482	Black African	79700046
47	Coloured	79700046
25	Indian or Asian	79700046
8	White	79700046
43	Other	79700046
30141	Black African	79700047
66	Coloured	79700047
29	Indian or Asian	79700047
26	White	79700047
13	Other	79700047
23007	Black African	79700048
33	Coloured	79700048
35	Indian or Asian	79700048
5	White	79700048
59	Other	79700048
25185	Black African	79700049
21	Coloured	79700049
25	Indian or Asian	79700049
28	White	79700049
18	Other	79700049
27254	Black African	79700050
61	Coloured	79700050
19	Indian or Asian	79700050
7	White	79700050
70	Other	79700050
30672	Black African	79700051
45	Coloured	79700051
31	Indian or Asian	79700051
14	White	79700051
154	Other	79700051
32679	Black African	79700052
60	Coloured	79700052
28	Indian or Asian	79700052
19	White	79700052
93	Other	79700052
26363	Black African	79700053
8985	Coloured	79700053
159	Indian or Asian	79700053
83	White	79700053
297	Other	79700053
25701	Black African	79700054
62	Coloured	79700054
34	Indian or Asian	79700054
15	White	79700054
231	Other	79700054
29626	Black African	79700055
62	Coloured	79700055
37	Indian or Asian	79700055
18	White	79700055
81	Other	79700055
23923	Black African	79700056
71	Coloured	79700056
27	Indian or Asian	79700056
64	White	79700056
63	Other	79700056
33829	Black African	79700057
288	Coloured	79700057
58	Indian or Asian	79700057
34	White	79700057
49	Other	79700057
35022	Black African	79700058
6451	Coloured	79700058
2630	Indian or Asian	79700058
46	White	79700058
195	Other	79700058
32013	Black African	79700059
81	Coloured	79700059
60	Indian or Asian	79700059
8	White	79700059
16	Other	79700059
31206	Black African	79700060
105	Coloured	79700060
34	Indian or Asian	79700060
21	White	79700060
39	Other	79700060
38539	Black African	79700061
137	Coloured	79700061
71	Indian or Asian	79700061
104	White	79700061
47	Other	79700061
23644	Black African	79700062
87	Coloured	79700062
53	Indian or Asian	79700062
20	White	79700062
41	Other	79700062
35194	Black African	79700063
87	Coloured	79700063
75	Indian or Asian	79700063
28	White	79700063
76	Other	79700063
34076	Black African	79700064
195	Coloured	79700064
71	Indian or Asian	79700064
92	White	79700064
41	Other	79700064
39061	Black African	79700065
110	Coloured	79700065
67	Indian or Asian	79700065
50	White	79700065
82	Other	79700065
41672	Black African	79700066
101	Coloured	79700066
78	Indian or Asian	79700066
30	White	79700066
72	Other	79700066
33208	Black African	79700067
112	Coloured	79700067
215	Indian or Asian	79700067
512	White	79700067
118	Other	79700067
33243	Black African	79700068
88	Coloured	79700068
44	Indian or Asian	79700068
24	White	79700068
104	Other	79700068
21323	Black African	79700069
42	Coloured	79700069
21	Indian or Asian	79700069
15	White	79700069
270	Other	79700069
22838	Black African	79700070
72	Coloured	79700070
32	Indian or Asian	79700070
20	White	79700070
316	Other	79700070
41265	Black African	79700071
259	Coloured	79700071
344	Indian or Asian	79700071
332	White	79700071
363	Other	79700071
20773	Black African	79700072
373	Coloured	79700072
4261	Indian or Asian	79700072
6680	White	79700072
202	Other	79700072
22304	Black African	79700073
650	Coloured	79700073
6840	Indian or Asian	79700073
2515	White	79700073
224	Other	79700073
16126	Black African	79700074
261	Coloured	79700074
298	Indian or Asian	79700074
10068	White	79700074
86	Other	79700074
13818	Black African	79700075
754	Coloured	79700075
417	Indian or Asian	79700075
17975	White	79700075
210	Other	79700075
9434	Black African	79700076
393	Coloured	79700076
415	Indian or Asian	79700076
18194	White	79700076
196	Other	79700076
32266	Black African	79700077
85	Coloured	79700077
45	Indian or Asian	79700077
73	White	79700077
55	Other	79700077
22866	Black African	79700078
107	Coloured	79700078
69	Indian or Asian	79700078
744	White	79700078
18	Other	79700078
32057	Black African	79700079
130	Coloured	79700079
61	Indian or Asian	79700079
15	White	79700079
174	Other	79700079
21733	Black African	79700080
55	Coloured	79700080
35	Indian or Asian	79700080
15	White	79700080
72	Other	79700080
43990	Black African	79700081
174	Coloured	79700081
69	Indian or Asian	79700081
29	White	79700081
201	Other	79700081
26666	Black African	79700082
140	Coloured	79700082
27	Indian or Asian	79700082
16	White	79700082
88	Other	79700082
25435	Black African	79700083
57	Coloured	79700083
58	Indian or Asian	79700083
23	White	79700083
61	Other	79700083
39271	Black African	79700084
127	Coloured	79700084
61	Indian or Asian	79700084
25	White	79700084
231	Other	79700084
29943	Black African	79700085
135	Coloured	79700085
61	Indian or Asian	79700085
215	White	79700085
182	Other	79700085
38878	Black African	79700086
161	Coloured	79700086
58	Indian or Asian	79700086
14	White	79700086
153	Other	79700086
30217	Black African	79700087
197	Coloured	79700087
51	Indian or Asian	79700087
76	White	79700087
97	Other	79700087
13169	Black African	79700088
6191	Coloured	79700088
1452	Indian or Asian	79700088
10277	White	79700088
366	Other	79700088
49606	Black African	79700089
247	Coloured	79700089
79	Indian or Asian	79700089
1011	White	79700089
328	Other	79700089
32108	Black African	79700090
54	Coloured	79700090
51	Indian or Asian	79700090
14	White	79700090
231	Other	79700090
24561	Black African	79700091
506	Coloured	79700091
689	Indian or Asian	79700091
7509	White	79700091
142	Other	79700091
9804	Black African	79700092
725	Coloured	79700092
1752	Indian or Asian	79700092
17046	White	79700092
525	Other	79700092
20873	Black African	79700093
2126	Coloured	79700093
129	Indian or Asian	79700093
471	White	79700093
229	Other	79700093
8756	Black African	79700094
867	Coloured	79700094
2012	Indian or Asian	79700094
14726	White	79700094
287	Other	79700094
29070	Black African	79700095
74	Coloured	79700095
29	Indian or Asian	79700095
62	White	79700095
95	Other	79700095
26995	Black African	79700096
48	Coloured	79700096
30	Indian or Asian	79700096
14	White	79700096
121	Other	79700096
11285	Black African	79700097
668	Coloured	79700097
815	Indian or Asian	79700097
21744	White	79700097
121	Other	79700097
19161	Black African	79700098
176	Coloured	79700098
100	Indian or Asian	79700098
2467	White	79700098
125	Other	79700098
38720	Black African	79700099
7454	Coloured	79700099
186	Indian or Asian	79700099
857	White	79700099
315	Other	79700099
16896	Black African	79700100
357	Coloured	79700100
413	Indian or Asian	79700100
12993	White	79700100
217	Other	79700100
41950	Black African	79700101
183	Coloured	79700101
39	Indian or Asian	79700101
19	White	79700101
80	Other	79700101
45198	Black African	79800001
133	Coloured	79800001
66	Indian or Asian	79800001
49	White	79800001
59	Other	79800001
41316	Black African	79800002
122	Coloured	79800002
40	Indian or Asian	79800002
92	White	79800002
97	Other	79800002
31320	Black African	79800003
86	Coloured	79800003
45	Indian or Asian	79800003
17	White	79800003
101	Other	79800003
41315	Black African	79800004
136	Coloured	79800004
13	Indian or Asian	79800004
81	White	79800004
72	Other	79800004
49299	Black African	79800005
255	Coloured	79800005
48	Indian or Asian	79800005
52	White	79800005
100	Other	79800005
37573	Black African	79800006
268	Coloured	79800006
64	Indian or Asian	79800006
109	White	79800006
265	Other	79800006
22539	Black African	79800007
16001	Coloured	79800007
286	Indian or Asian	79800007
57	White	79800007
260	Other	79800007
29496	Black African	79800008
801	Coloured	79800008
9525	Indian or Asian	79800008
111	White	79800008
177	Other	79800008
5113	Black African	79800009
1063	Coloured	79800009
23289	Indian or Asian	79800009
60	White	79800009
446	Other	79800009
19435	Black African	79800010
308	Coloured	79800010
14006	Indian or Asian	79800010
35	White	79800010
215	Other	79800010
23772	Black African	79800011
9252	Coloured	79800011
164	Indian or Asian	79800011
14	White	79800011
72	Other	79800011
27215	Black African	79800012
38	Coloured	79800012
14	Indian or Asian	79800012
24	White	79800012
16	Other	79800012
37381	Black African	79800013
103	Coloured	79800013
48	Indian or Asian	79800013
32	White	79800013
102	Other	79800013
30940	Black African	79800014
66	Coloured	79800014
9	Indian or Asian	79800014
30	White	79800014
23	Other	79800014
26669	Black African	79800015
37	Coloured	79800015
30	Indian or Asian	79800015
17	White	79800015
31	Other	79800015
26811	Black African	79800016
46	Coloured	79800016
47	Indian or Asian	79800016
31	White	79800016
49	Other	79800016
13011	Black African	79800017
23694	Coloured	79800017
334	Indian or Asian	79800017
62	White	79800017
657	Other	79800017
2869	Black African	79800018
34604	Coloured	79800018
459	Indian or Asian	79800018
74	White	79800018
485	Other	79800018
27900	Black African	79800019
638	Coloured	79800019
32	Indian or Asian	79800019
31	White	79800019
70	Other	79800019
31876	Black African	79800020
42	Coloured	79800020
23	Indian or Asian	79800020
21	White	79800020
35	Other	79800020
29129	Black African	79800021
79	Coloured	79800021
22	Indian or Asian	79800021
6	White	79800021
23	Other	79800021
31454	Black African	79800022
193	Coloured	79800022
5	Indian or Asian	79800022
18	White	79800022
23	Other	79800022
10182	Black African	79800023
1521	Coloured	79800023
3965	Indian or Asian	79800023
15867	White	79800023
653	Other	79800023
33541	Black African	79800024
142	Coloured	79800024
23	Indian or Asian	79800024
56	White	79800024
190	Other	79800024
35451	Black African	79800025
80	Coloured	79800025
14	Indian or Asian	79800025
28	White	79800025
25	Other	79800025
25149	Black African	79800026
84	Coloured	79800026
12	Indian or Asian	79800026
56	White	79800026
65	Other	79800026
24727	Black African	79800027
64	Coloured	79800027
34	Indian or Asian	79800027
20	White	79800027
43	Other	79800027
28797	Black African	79800028
60	Coloured	79800028
23	Indian or Asian	79800028
18	White	79800028
55	Other	79800028
23299	Black African	79800029
6793	Coloured	79800029
92	Indian or Asian	79800029
121	White	79800029
42	Other	79800029
34393	Black African	79800030
55	Coloured	79800030
56	Indian or Asian	79800030
47	White	79800030
174	Other	79800030
27461	Black African	79800031
57	Coloured	79800031
31	Indian or Asian	79800031
29	White	79800031
111	Other	79800031
27336	Black African	79800032
872	Coloured	79800032
4219	Indian or Asian	79800032
8140	White	79800032
601	Other	79800032
27707	Black African	79800033
60	Coloured	79800033
55	Indian or Asian	79800033
56	White	79800033
31	Other	79800033
28284	Black African	79800034
62	Coloured	79800034
36	Indian or Asian	79800034
56	White	79800034
55	Other	79800034
25015	Black African	79800035
71	Coloured	79800035
19	Indian or Asian	79800035
44	White	79800035
22	Other	79800035
24328	Black African	79800036
73	Coloured	79800036
13	Indian or Asian	79800036
34	White	79800036
33	Other	79800036
29888	Black African	79800037
51	Coloured	79800037
35	Indian or Asian	79800037
31	White	79800037
67	Other	79800037
21647	Black African	79800038
33	Coloured	79800038
12	Indian or Asian	79800038
17	White	79800038
7	Other	79800038
31581	Black African	79800039
104	Coloured	79800039
26	Indian or Asian	79800039
26	White	79800039
45	Other	79800039
24885	Black African	79800040
48	Coloured	79800040
19	Indian or Asian	79800040
9	White	79800040
39	Other	79800040
24729	Black African	79800041
85	Coloured	79800041
9	Indian or Asian	79800041
39	White	79800041
33	Other	79800041
23829	Black African	79800042
76	Coloured	79800042
22	Indian or Asian	79800042
6	White	79800042
41	Other	79800042
26016	Black African	79800043
52	Coloured	79800043
30	Indian or Asian	79800043
27	White	79800043
16	Other	79800043
53973	Black African	79800044
206	Coloured	79800044
50	Indian or Asian	79800044
34	White	79800044
271	Other	79800044
27681	Black African	79800045
67	Coloured	79800045
9	Indian or Asian	79800045
15	White	79800045
39	Other	79800045
28387	Black African	79800046
57	Coloured	79800046
31	Indian or Asian	79800046
7	White	79800046
59	Other	79800046
29198	Black African	79800047
114	Coloured	79800047
17	Indian or Asian	79800047
15	White	79800047
64	Other	79800047
31962	Black African	79800048
67	Coloured	79800048
26	Indian or Asian	79800048
27	White	79800048
104	Other	79800048
50380	Black African	79800049
186	Coloured	79800049
68	Indian or Asian	79800049
61	White	79800049
157	Other	79800049
23173	Black African	79800050
31	Coloured	79800050
32	Indian or Asian	79800050
24	White	79800050
35	Other	79800050
28291	Black African	79800051
43	Coloured	79800051
31	Indian or Asian	79800051
9	White	79800051
35	Other	79800051
29593	Black African	79800052
32	Coloured	79800052
42	Indian or Asian	79800052
4	White	79800052
63	Other	79800052
62689	Black African	79800053
398	Coloured	79800053
80	Indian or Asian	79800053
43	White	79800053
76	Other	79800053
18721	Black African	79800054
5075	Coloured	79800054
9719	Indian or Asian	79800054
7996	White	79800054
1302	Other	79800054
15674	Black African	79800055
4472	Coloured	79800055
3918	Indian or Asian	79800055
5440	White	79800055
443	Other	79800055
18022	Black African	79800056
2236	Coloured	79800056
1319	Indian or Asian	79800056
8999	White	79800056
520	Other	79800056
20701	Black African	79800057
4094	Coloured	79800057
1821	Indian or Asian	79800057
9690	White	79800057
366	Other	79800057
11666	Black African	79800058
2429	Coloured	79800058
13399	Indian or Asian	79800058
2077	White	79800058
1847	Other	79800058
5349	Black African	79800059
93	Coloured	79800059
72	Indian or Asian	79800059
5	White	79800059
25	Other	79800059
41146	Black African	79800060
980	Coloured	79800060
1820	Indian or Asian	79800060
984	White	79800060
442	Other	79800060
15363	Black African	79800061
572	Coloured	79800061
317	Indian or Asian	79800061
616	White	79800061
103	Other	79800061
20792	Black African	79800062
201	Coloured	79800062
39	Indian or Asian	79800062
77	White	79800062
37	Other	79800062
26687	Black African	79800063
197	Coloured	79800063
79	Indian or Asian	79800063
96	White	79800063
24	Other	79800063
33026	Black African	79800064
398	Coloured	79800064
289	Indian or Asian	79800064
445	White	79800064
149	Other	79800064
23277	Black African	79800065
189	Coloured	79800065
160	Indian or Asian	79800065
250	White	79800065
161	Other	79800065
32673	Black African	79800066
2643	Coloured	79800066
3023	Indian or Asian	79800066
6369	White	79800066
743	Other	79800066
18625	Black African	79800067
469	Coloured	79800067
1484	Indian or Asian	79800067
1356	White	79800067
234	Other	79800067
18408	Black African	79800068
13873	Coloured	79800068
331	Indian or Asian	79800068
164	White	79800068
253	Other	79800068
13982	Black African	79800069
8811	Coloured	79800069
4942	Indian or Asian	79800069
5444	White	79800069
533	Other	79800069
11161	Black African	79800070
8327	Coloured	79800070
2306	Indian or Asian	79800070
8732	White	79800070
497	Other	79800070
13104	Black African	79800071
5425	Coloured	79800071
553	Indian or Asian	79800071
12281	White	79800071
110	Other	79800071
4837	Black African	79800072
255	Coloured	79800072
262	Indian or Asian	79800072
12871	White	79800072
162	Other	79800072
12616	Black African	79800073
634	Coloured	79800073
3730	Indian or Asian	79800073
10449	White	79800073
534	Other	79800073
10893	Black African	79800074
618	Coloured	79800074
1336	Indian or Asian	79800074
12462	White	79800074
469	Other	79800074
22548	Black African	79800075
57	Coloured	79800075
25	Indian or Asian	79800075
27	White	79800075
61	Other	79800075
18090	Black African	79800076
40	Coloured	79800076
4	Indian or Asian	79800076
56	White	79800076
72	Other	79800076
51135	Black African	79800077
94	Coloured	79800077
105	Indian or Asian	79800077
39	White	79800077
327	Other	79800077
47140	Black African	79800078
92	Coloured	79800078
82	Indian or Asian	79800078
50	White	79800078
679	Other	79800078
47161	Black African	79800079
86	Coloured	79800079
66	Indian or Asian	79800079
27	White	79800079
272	Other	79800079
27861	Black African	79800080
96	Coloured	79800080
32	Indian or Asian	79800080
18	White	79800080
123	Other	79800080
27361	Black African	79800081
713	Coloured	79800081
1793	Indian or Asian	79800081
4392	White	79800081
173	Other	79800081
9151	Black African	79800082
20330	Coloured	79800082
711	Indian or Asian	79800082
4293	White	79800082
900	Other	79800082
3740	Black African	79800083
777	Coloured	79800083
472	Indian or Asian	79800083
16193	White	79800083
166	Other	79800083
11490	Black African	79800084
6548	Coloured	79800084
1781	Indian or Asian	79800084
13030	White	79800084
330	Other	79800084
10101	Black African	79800085
1694	Coloured	79800085
1185	Indian or Asian	79800085
12748	White	79800085
280	Other	79800085
11194	Black African	79800086
5766	Coloured	79800086
2144	Indian or Asian	79800086
14708	White	79800086
565	Other	79800086
4929	Black African	79800087
390	Coloured	79800087
1594	Indian or Asian	79800087
9310	White	79800087
481	Other	79800087
6190	Black African	79800088
985	Coloured	79800088
3328	Indian or Asian	79800088
13277	White	79800088
471	Other	79800088
4832	Black African	79800089
1377	Coloured	79800089
1614	Indian or Asian	79800089
13650	White	79800089
282	Other	79800089
7644	Black African	79800090
478	Coloured	79800090
1079	Indian or Asian	79800090
13221	White	79800090
441	Other	79800090
16141	Black African	79800091
470	Coloured	79800091
1566	Indian or Asian	79800091
7494	White	79800091
416	Other	79800091
41010	Black African	79800092
667	Coloured	79800092
2009	Indian or Asian	79800092
3251	White	79800092
640	Other	79800092
7607	Black African	79800093
826	Coloured	79800093
4024	Indian or Asian	79800093
11009	White	79800093
391	Other	79800093
5279	Black African	79800094
305	Coloured	79800094
1039	Indian or Asian	79800094
13638	White	79800094
369	Other	79800094
45757	Black African	79800095
55	Coloured	79800095
32	Indian or Asian	79800095
28	White	79800095
366	Other	79800095
36547	Black African	79800096
967	Coloured	79800096
2763	Indian or Asian	79800096
17692	White	79800096
820	Other	79800096
18408	Black African	79800097
2055	Coloured	79800097
3268	Indian or Asian	79800097
29847	White	79800097
502	Other	79800097
13972	Black African	79800098
1141	Coloured	79800098
2048	Indian or Asian	79800098
12853	White	79800098
291	Other	79800098
4826	Black African	79800099
582	Coloured	79800099
1696	Indian or Asian	79800099
12721	White	79800099
293	Other	79800099
50346	Black African	79800100
566	Coloured	79800100
753	Indian or Asian	79800100
2399	White	79800100
585	Other	79800100
7819	Black African	79800101
897	Coloured	79800101
3229	Indian or Asian	79800101
18740	White	79800101
329	Other	79800101
11765	Black African	79800102
980	Coloured	79800102
2953	Indian or Asian	79800102
16687	White	79800102
490	Other	79800102
10499	Black African	79800103
790	Coloured	79800103
4794	Indian or Asian	79800103
19434	White	79800103
889	Other	79800103
10860	Black African	79800104
901	Coloured	79800104
2656	Indian or Asian	79800104
14550	White	79800104
456	Other	79800104
48895	Black African	79800105
138	Coloured	79800105
18	Indian or Asian	79800105
28	White	79800105
174	Other	79800105
10162	Black African	79800106
878	Coloured	79800106
2955	Indian or Asian	79800106
19800	White	79800106
662	Other	79800106
19102	Black African	79800107
98	Coloured	79800107
17	Indian or Asian	79800107
26	White	79800107
156	Other	79800107
31769	Black African	79800108
220	Coloured	79800108
56	Indian or Asian	79800108
38	White	79800108
175	Other	79800108
15688	Black African	79800109
496	Coloured	79800109
4132	Indian or Asian	79800109
4388	White	79800109
363	Other	79800109
50269	Black African	79800110
3930	Coloured	79800110
477	Indian or Asian	79800110
1571	White	79800110
699	Other	79800110
58367	Black African	79800111
333	Coloured	79800111
43	Indian or Asian	79800111
36	White	79800111
307	Other	79800111
30946	Black African	79800112
1937	Coloured	79800112
11673	Indian or Asian	79800112
12619	White	79800112
603	Other	79800112
89646	Black African	79800113
173	Coloured	79800113
113	Indian or Asian	79800113
91	White	79800113
1693	Other	79800113
37664	Black African	79800114
719	Coloured	79800114
1552	Indian or Asian	79800114
7989	White	79800114
261	Other	79800114
9399	Black African	79800115
906	Coloured	79800115
2896	Indian or Asian	79800115
23263	White	79800115
491	Other	79800115
20692	Black African	79800116
64	Coloured	79800116
12	Indian or Asian	79800116
14	White	79800116
92	Other	79800116
5419	Black African	79800117
393	Coloured	79800117
1088	Indian or Asian	79800117
12354	White	79800117
314	Other	79800117
17361	Black African	79800118
1691	Coloured	79800118
2977	Indian or Asian	79800118
7831	White	79800118
557	Other	79800118
43849	Black African	79800119
2626	Coloured	79800119
144	Indian or Asian	79800119
233	White	79800119
329	Other	79800119
22377	Black African	79800120
1547	Coloured	79800120
14586	Indian or Asian	79800120
58	White	79800120
284	Other	79800120
39941	Black African	79800121
9205	Coloured	79800121
3832	Indian or Asian	79800121
114	White	79800121
248	Other	79800121
44061	Black African	79800122
1072	Coloured	79800122
5844	Indian or Asian	79800122
682	White	79800122
397	Other	79800122
42445	Black African	79800123
295	Coloured	79800123
196	Indian or Asian	79800123
173	White	79800123
83	Other	79800123
34148	Black African	79800124
2440	Coloured	79800124
2375	Indian or Asian	79800124
3756	White	79800124
348	Other	79800124
36820	Black African	79800125
3964	Coloured	79800125
1389	Indian or Asian	79800125
3232	White	79800125
266	Other	79800125
6801	Black African	79800126
1184	Coloured	79800126
2082	Indian or Asian	79800126
17765	White	79800126
420	Other	79800126
27189	Black African	79800127
141	Coloured	79800127
22	Indian or Asian	79800127
35	White	79800127
219	Other	79800127
52701	Black African	79800128
190	Coloured	79800128
70	Indian or Asian	79800128
33	White	79800128
266	Other	79800128
37137	Black African	79800129
73	Coloured	79800129
42	Indian or Asian	79800129
19	White	79800129
47	Other	79800129
23099	Black African	79800130
239	Coloured	79800130
138	Indian or Asian	79800130
205	White	79800130
51	Other	79800130
3119	Black African	79900001
391	Coloured	79900001
186	Indian or Asian	79900001
21457	White	79900001
196	Other	79900001
5304	Black African	79900002
354	Coloured	79900002
175	Indian or Asian	79900002
14798	White	79900002
176	Other	79900002
21945	Black African	79900003
1035	Coloured	79900003
1594	Indian or Asian	79900003
9342	White	79900003
198	Other	79900003
30595	Black African	79900004
411	Coloured	79900004
323	Indian or Asian	79900004
6091	White	79900004
166	Other	79900004
6744	Black African	79900005
421	Coloured	79900005
413	Indian or Asian	79900005
19627	White	79900005
233	Other	79900005
17071	Black African	79900006
53	Coloured	79900006
4	Indian or Asian	79900006
6	White	79900006
40	Other	79900006
37779	Black African	79900007
550	Coloured	79900007
1788	Indian or Asian	79900007
2582	White	79900007
147	Other	79900007
29644	Black African	79900008
78	Coloured	79900008
74	Indian or Asian	79900008
20	White	79900008
37	Other	79900008
37304	Black African	79900009
60	Coloured	79900009
39	Indian or Asian	79900009
13	White	79900009
63	Other	79900009
39479	Black African	79900010
147	Coloured	79900010
22	Indian or Asian	79900010
78	White	79900010
242	Other	79900010
24068	Black African	79900011
44	Coloured	79900011
17	Indian or Asian	79900011
9	White	79900011
102	Other	79900011
21580	Black African	79900012
102	Coloured	79900012
19	Indian or Asian	79900012
15	White	79900012
31	Other	79900012
26975	Black African	79900013
94	Coloured	79900013
29	Indian or Asian	79900013
10	White	79900013
39	Other	79900013
26838	Black African	79900014
59	Coloured	79900014
52	Indian or Asian	79900014
9	White	79900014
78	Other	79900014
18795	Black African	79900015
77	Coloured	79900015
518	Indian or Asian	79900015
23	White	79900015
98	Other	79900015
20948	Black African	79900016
74	Coloured	79900016
8	Indian or Asian	79900016
10	White	79900016
43	Other	79900016
40386	Black African	79900017
153	Coloured	79900017
22	Indian or Asian	79900017
152	White	79900017
58	Other	79900017
24284	Black African	79900018
106	Coloured	79900018
24	Indian or Asian	79900018
97	White	79900018
67	Other	79900018
30239	Black African	79900019
107	Coloured	79900019
24	Indian or Asian	79900019
54	White	79900019
48	Other	79900019
26927	Black African	79900020
112	Coloured	79900020
32	Indian or Asian	79900020
9	White	79900020
33	Other	79900020
29719	Black African	79900021
42	Coloured	79900021
26	Indian or Asian	79900021
11	White	79900021
70	Other	79900021
33303	Black African	79900022
128	Coloured	79900022
36	Indian or Asian	79900022
60	White	79900022
69	Other	79900022
21325	Black African	79900023
58	Coloured	79900023
38	Indian or Asian	79900023
4	White	79900023
45	Other	79900023
47481	Black African	79900024
67	Coloured	79900024
24	Indian or Asian	79900024
41	White	79900024
123	Other	79900024
25397	Black African	79900025
78	Coloured	79900025
41	Indian or Asian	79900025
14	White	79900025
81	Other	79900025
25825	Black African	79900026
78	Coloured	79900026
20	Indian or Asian	79900026
13	White	79900026
60	Other	79900026
28150	Black African	79900027
28	Coloured	79900027
27	Indian or Asian	79900027
6	White	79900027
108	Other	79900027
17709	Black African	79900028
81	Coloured	79900028
14	Indian or Asian	79900028
7	White	79900028
45	Other	79900028
28503	Black African	79900029
59	Coloured	79900029
32	Indian or Asian	79900029
9	White	79900029
66	Other	79900029
37497	Black African	79900030
125	Coloured	79900030
64	Indian or Asian	79900030
27	White	79900030
57	Other	79900030
24035	Black African	79900031
90	Coloured	79900031
16	Indian or Asian	79900031
40	White	79900031
154	Other	79900031
30652	Black African	79900032
107	Coloured	79900032
45	Indian or Asian	79900032
44	White	79900032
37	Other	79900032
16868	Black African	79900033
61	Coloured	79900033
10	Indian or Asian	79900033
24	White	79900033
30	Other	79900033
21924	Black African	79900034
109	Coloured	79900034
31	Indian or Asian	79900034
36	White	79900034
49	Other	79900034
17698	Black African	79900035
50	Coloured	79900035
23	Indian or Asian	79900035
16	White	79900035
54	Other	79900035
22521	Black African	79900036
84	Coloured	79900036
27	Indian or Asian	79900036
15	White	79900036
15	Other	79900036
43122	Black African	79900037
135	Coloured	79900037
84	Indian or Asian	79900037
43	White	79900037
252	Other	79900037
9233	Black African	79900038
118	Coloured	79900038
2	Indian or Asian	79900038
9	White	79900038
0	Other	79900038
30798	Black African	79900039
127	Coloured	79900039
32	Indian or Asian	79900039
24	White	79900039
178	Other	79900039
61539	Black African	79900040
361	Coloured	79900040
31	Indian or Asian	79900040
30	White	79900040
280	Other	79900040
5884	Black African	79900041
1218	Coloured	79900041
356	Indian or Asian	79900041
10719	White	79900041
239	Other	79900041
4919	Black African	79900042
291	Coloured	79900042
537	Indian or Asian	79900042
14115	White	79900042
532	Other	79900042
5026	Black African	79900043
19463	Coloured	79900043
273	Indian or Asian	79900043
1158	White	79900043
237	Other	79900043
2925	Black African	79900044
214	Coloured	79900044
355	Indian or Asian	79900044
14312	White	79900044
287	Other	79900044
1984	Black African	79900045
274	Coloured	79900045
283	Indian or Asian	79900045
8450	White	79900045
131	Other	79900045
4756	Black African	79900046
414	Coloured	79900046
647	Indian or Asian	79900046
14336	White	79900046
548	Other	79900046
3156	Black African	79900047
233	Coloured	79900047
268	Indian or Asian	79900047
12573	White	79900047
178	Other	79900047
34012	Black African	79900048
121	Coloured	79900048
112	Indian or Asian	79900048
1504	White	79900048
149	Other	79900048
32092	Black African	79900049
132	Coloured	79900049
97	Indian or Asian	79900049
2813	White	79900049
291	Other	79900049
3829	Black African	79900050
229	Coloured	79900050
351	Indian or Asian	79900050
16209	White	79900050
231	Other	79900050
22352	Black African	79900051
118	Coloured	79900051
2893	Indian or Asian	79900051
60	White	79900051
253	Other	79900051
2261	Black African	79900052
390	Coloured	79900052
140	Indian or Asian	79900052
18307	White	79900052
148	Other	79900052
5770	Black African	79900053
529	Coloured	79900053
289	Indian or Asian	79900053
16982	White	79900053
307	Other	79900053
2786	Black African	79900054
367	Coloured	79900054
212	Indian or Asian	79900054
17176	White	79900054
289	Other	79900054
7673	Black African	79900055
446	Coloured	79900055
194	Indian or Asian	79900055
17296	White	79900055
213	Other	79900055
7594	Black African	79900056
456	Coloured	79900056
767	Indian or Asian	79900056
10216	White	79900056
348	Other	79900056
9290	Black African	79900057
962	Coloured	79900057
1398	Indian or Asian	79900057
16250	White	79900057
231	Other	79900057
25083	Black African	79900058
1067	Coloured	79900058
371	Indian or Asian	79900058
6991	White	79900058
149	Other	79900058
17309	Black African	79900059
450	Coloured	79900059
368	Indian or Asian	79900059
5310	White	79900059
291	Other	79900059
28035	Black African	79900060
985	Coloured	79900060
572	Indian or Asian	79900060
2479	White	79900060
609	Other	79900060
21280	Black African	79900061
969	Coloured	79900061
19162	Indian or Asian	79900061
1005	White	79900061
341	Other	79900061
20131	Black African	79900062
59	Coloured	79900062
8	Indian or Asian	79900062
26	White	79900062
56	Other	79900062
16877	Black African	79900063
57	Coloured	79900063
25	Indian or Asian	79900063
88	White	79900063
17	Other	79900063
9931	Black African	79900064
927	Coloured	79900064
1656	Indian or Asian	79900064
22430	White	79900064
274	Other	79900064
5362	Black African	79900065
432	Coloured	79900065
714	Indian or Asian	79900065
14639	White	79900065
250	Other	79900065
7136	Black African	79900066
1079	Coloured	79900066
894	Indian or Asian	79900066
14182	White	79900066
194	Other	79900066
20403	Black African	79900067
117	Coloured	79900067
17	Indian or Asian	79900067
17	White	79900067
88	Other	79900067
28981	Black African	79900068
97	Coloured	79900068
22	Indian or Asian	79900068
18	White	79900068
84	Other	79900068
2975	Black African	79900069
330	Coloured	79900069
927	Indian or Asian	79900069
20180	White	79900069
219	Other	79900069
8445	Black African	79900070
709	Coloured	79900070
4993	Indian or Asian	79900070
16802	White	79900070
258	Other	79900070
30394	Black African	79900071
38	Coloured	79900071
10	Indian or Asian	79900071
13	White	79900071
344	Other	79900071
22040	Black African	79900072
33	Coloured	79900072
19	Indian or Asian	79900072
19	White	79900072
35	Other	79900072
38636	Black African	79900073
138	Coloured	79900073
100	Indian or Asian	79900073
544	White	79900073
198	Other	79900073
23776	Black African	79900074
57	Coloured	79900074
98	Indian or Asian	79900074
76	White	79900074
114	Other	79900074
29080	Black African	79900075
84	Coloured	79900075
71	Indian or Asian	79900075
12	White	79900075
142	Other	79900075
23453	Black African	79900076
51	Coloured	79900076
58	Indian or Asian	79900076
3	White	79900076
51	Other	79900076
77554	Black African	79900077
705	Coloured	79900077
999	Indian or Asian	79900077
4343	White	79900077
934	Other	79900077
6658	Black African	79900078
484	Coloured	79900078
1254	Indian or Asian	79900078
14582	White	79900078
207	Other	79900078
5071	Black African	79900079
608	Coloured	79900079
599	Indian or Asian	79900079
22347	White	79900079
278	Other	79900079
24644	Black African	79900080
464	Coloured	79900080
134	Indian or Asian	79900080
1389	White	79900080
172	Other	79900080
11363	Black African	79900081
192	Coloured	79900081
100	Indian or Asian	79900081
662	White	79900081
23	Other	79900081
4934	Black African	79900082
397	Coloured	79900082
431	Indian or Asian	79900082
13882	White	79900082
374	Other	79900082
2849	Black African	79900083
279	Coloured	79900083
196	Indian or Asian	79900083
8566	White	79900083
207	Other	79900083
7296	Black African	79900084
1632	Coloured	79900084
422	Indian or Asian	79900084
16715	White	79900084
402	Other	79900084
8075	Black African	79900085
956	Coloured	79900085
815	Indian or Asian	79900085
24230	White	79900085
551	Other	79900085
40849	Black African	79900086
1417	Coloured	79900086
47	Indian or Asian	79900086
487	White	79900086
786	Other	79900086
9740	Black African	79900087
6555	Coloured	79900087
344	Indian or Asian	79900087
8076	White	79900087
152	Other	79900087
27719	Black African	79900088
30	Coloured	79900088
56	Indian or Asian	79900088
10	White	79900088
35	Other	79900088
27878	Black African	79900089
75	Coloured	79900089
34	Indian or Asian	79900089
20	White	79900089
119	Other	79900089
42369	Black African	79900090
139	Coloured	79900090
43	Indian or Asian	79900090
20	White	79900090
250	Other	79900090
12234	Black African	79900091
716	Coloured	79900091
787	Indian or Asian	79900091
26345	White	79900091
398	Other	79900091
22366	Black African	79900092
933	Coloured	79900092
585	Indian or Asian	79900092
5986	White	79900092
568	Other	79900092
16592	Black African	79900093
246	Coloured	79900093
25	Indian or Asian	79900093
875	White	79900093
47	Other	79900093
20501	Black African	79900094
36	Coloured	79900094
19	Indian or Asian	79900094
32	White	79900094
25	Other	79900094
24127	Black African	79900095
74	Coloured	79900095
31	Indian or Asian	79900095
17	White	79900095
61	Other	79900095
14855	Black African	79900096
359	Coloured	79900096
167	Indian or Asian	79900096
14846	White	79900096
158	Other	79900096
20864	Black African	79900097
92	Coloured	79900097
32	Indian or Asian	79900097
4	White	79900097
68	Other	79900097
11492	Black African	79900098
339	Coloured	79900098
156	Indian or Asian	79900098
13386	White	79900098
121	Other	79900098
29349	Black African	79900099
152	Coloured	79900099
25	Indian or Asian	79900099
3676	White	79900099
211	Other	79900099
24221	Black African	79900100
721	Coloured	79900100
71	Indian or Asian	79900100
7412	White	79900100
196	Other	79900100
11685	Black African	79900101
386	Coloured	79900101
534	Indian or Asian	79900101
17337	White	79900101
426	Other	79900101
27940	Black African	79900102
361	Coloured	79900102
92	Indian or Asian	79900102
2927	White	79900102
388	Other	79900102
25561	Black African	79900103
104	Coloured	79900103
95	Indian or Asian	79900103
12	White	79900103
72	Other	79900103
25818	Black African	79900104
87	Coloured	79900104
79	Indian or Asian	79900104
7	White	79900104
104	Other	79900104
19290	Black African	79900105
298	Coloured	79900105
325	Indian or Asian	79900105
6119	White	79900105
86	Other	79900105
7662	Black African	52103001
1	Coloured	52103001
7	Indian or Asian	52103001
8	White	52103001
2	Other	52103001
8784	Black African	52103002
2	Coloured	52103002
9	Indian or Asian	52103002
13	White	52103002
10	Other	52103002
9059	Black African	52103003
2	Coloured	52103003
12	Indian or Asian	52103003
8	White	52103003
9	Other	52103003
9522	Black African	52103004
6	Coloured	52103004
19	Indian or Asian	52103004
3	White	52103004
11	Other	52103004
9475	Black African	52103005
16	Coloured	52103005
8	Indian or Asian	52103005
15	White	52103005
4	Other	52103005
5905	Black African	52103006
9	Coloured	52103006
3	Indian or Asian	52103006
2	White	52103006
2	Other	52103006
6101	Black African	52103007
2	Coloured	52103007
6	Indian or Asian	52103007
1	White	52103007
3	Other	52103007
8291	Black African	52103008
2	Coloured	52103008
14	Indian or Asian	52103008
0	White	52103008
4	Other	52103008
6288	Black African	52103009
2	Coloured	52103009
1	Indian or Asian	52103009
1	White	52103009
11	Other	52103009
11214	Black African	52103010
5	Coloured	52103010
6	Indian or Asian	52103010
2	White	52103010
13	Other	52103010
8544	Black African	52103011
24	Coloured	52103011
13	Indian or Asian	52103011
14	White	52103011
0	Other	52103011
6569	Black African	52103012
1	Coloured	52103012
2	Indian or Asian	52103012
11	White	52103012
6	Other	52103012
6705	Black African	52103013
0	Coloured	52103013
11	Indian or Asian	52103013
13	White	52103013
1	Other	52103013
7712	Black African	52103014
3	Coloured	52103014
5	Indian or Asian	52103014
15	White	52103014
5	Other	52103014
8962	Black African	52103015
7	Coloured	52103015
9	Indian or Asian	52103015
4	White	52103015
15	Other	52103015
9192	Black African	52103016
29	Coloured	52103016
8	Indian or Asian	52103016
37	White	52103016
12	Other	52103016
7679	Black African	52103017
6	Coloured	52103017
11	Indian or Asian	52103017
4	White	52103017
0	Other	52103017
12969	Black African	52103018
42	Coloured	52103018
9	Indian or Asian	52103018
13	White	52103018
23	Other	52103018
9655	Black African	52103019
33	Coloured	52103019
29	Indian or Asian	52103019
7	White	52103019
11	Other	52103019
9729	Black African	52104001
4	Coloured	52104001
12	Indian or Asian	52104001
2	White	52104001
4	Other	52104001
10363	Black African	52104002
19	Coloured	52104002
18	Indian or Asian	52104002
49	White	52104002
28	Other	52104002
8335	Black African	52104003
814	Coloured	52104003
219	Indian or Asian	52104003
102	White	52104003
74	Other	52104003
8209	Black African	52104004
13	Coloured	52104004
6	Indian or Asian	52104004
5	White	52104004
2	Other	52104004
9704	Black African	52104005
9	Coloured	52104005
13	Indian or Asian	52104005
6	White	52104005
6	Other	52104005
7599	Black African	52104006
7	Coloured	52104006
14	Indian or Asian	52104006
29	White	52104006
1	Other	52104006
10435	Black African	52104007
33	Coloured	52104007
27	Indian or Asian	52104007
188	White	52104007
4	Other	52104007
9758	Black African	52104008
8	Coloured	52104008
12	Indian or Asian	52104008
6	White	52104008
5	Other	52104008
10192	Black African	52104009
0	Coloured	52104009
11	Indian or Asian	52104009
1	White	52104009
1	Other	52104009
10169	Black African	52104010
177	Coloured	52104010
41	Indian or Asian	52104010
73	White	52104010
19	Other	52104010
7240	Black African	52105001
2	Coloured	52105001
17	Indian or Asian	52105001
128	White	52105001
1	Other	52105001
6994	Black African	52105002
7	Coloured	52105002
14	Indian or Asian	52105002
282	White	52105002
2	Other	52105002
10166	Black African	52105003
23	Coloured	52105003
25	Indian or Asian	52105003
12	White	52105003
1	Other	52105003
9314	Black African	52105004
59	Coloured	52105004
39	Indian or Asian	52105004
11	White	52105004
5	Other	52105004
10521	Black African	52105005
1	Coloured	52105005
2	Indian or Asian	52105005
2	White	52105005
4	Other	52105005
7603	Black African	52105006
20	Coloured	52105006
6	Indian or Asian	52105006
10	White	52105006
27	Other	52105006
3902	Black African	52106001
140	Coloured	52106001
233	Indian or Asian	52106001
3154	White	52106001
30	Other	52106001
3346	Black African	52106002
185	Coloured	52106002
181	Indian or Asian	52106002
5039	White	52106002
87	Other	52106002
5115	Black African	52106003
155	Coloured	52106003
400	Indian or Asian	52106003
2836	White	52106003
24	Other	52106003
8507	Black African	52106004
6	Coloured	52106004
12	Indian or Asian	52106004
6	White	52106004
2	Other	52106004
9325	Black African	52106005
9	Coloured	52106005
8	Indian or Asian	52106005
6	White	52106005
0	Other	52106005
6099	Black African	52106006
230	Coloured	52106006
170	Indian or Asian	52106006
2577	White	52106006
38	Other	52106006
8534	Black African	52106007
8	Coloured	52106007
2	Indian or Asian	52106007
6	White	52106007
0	Other	52106007
7963	Black African	52106008
2	Coloured	52106008
6	Indian or Asian	52106008
9	White	52106008
1	Other	52106008
11937	Black African	52106009
12	Coloured	52106009
46	Indian or Asian	52106009
7	White	52106009
13	Other	52106009
10564	Black African	52106010
22	Coloured	52106010
26	Indian or Asian	52106010
12	White	52106010
12	Other	52106010
8747	Black African	52106011
35	Coloured	52106011
2	Indian or Asian	52106011
4	White	52106011
10	Other	52106011
3797	Black African	52106012
403	Coloured	52106012
3417	Indian or Asian	52106012
2240	White	52106012
47	Other	52106012
4211	Black African	52106013
71	Coloured	52106013
159	Indian or Asian	52106013
1251	White	52106013
21	Other	52106013
8009	Black African	52106014
1	Coloured	52106014
6	Indian or Asian	52106014
7	White	52106014
2	Other	52106014
5631	Black African	52106015
30	Coloured	52106015
46	Indian or Asian	52106015
91	White	52106015
7	Other	52106015
2436	Black African	52106016
195	Coloured	52106016
448	Indian or Asian	52106016
4408	White	52106016
33	Other	52106016
2101	Black African	52106017
1300	Coloured	52106017
4874	Indian or Asian	52106017
34	White	52106017
47	Other	52106017
3570	Black African	52106018
339	Coloured	52106018
2646	Indian or Asian	52106018
1401	White	52106018
47	Other	52106018
1417	Black African	52106019
121	Coloured	52106019
196	Indian or Asian	52106019
4048	White	52106019
23	Other	52106019
14270	Black African	52106020
141	Coloured	52106020
135	Indian or Asian	52106020
297	White	52106020
12	Other	52106020
7049	Black African	52106021
51	Coloured	52106021
10	Indian or Asian	52106021
6	White	52106021
10	Other	52106021
8383	Black African	52106022
10	Coloured	52106022
26	Indian or Asian	52106022
13	White	52106022
5	Other	52106022
6478	Black African	52106023
25	Coloured	52106023
12	Indian or Asian	52106023
1	White	52106023
7	Other	52106023
9705	Black African	52106024
36	Coloured	52106024
25	Indian or Asian	52106024
14	White	52106024
10	Other	52106024
9190	Black African	52106025
15	Coloured	52106025
26	Indian or Asian	52106025
141	White	52106025
5	Other	52106025
12719	Black African	52106026
60	Coloured	52106026
19	Indian or Asian	52106026
10	White	52106026
13	Other	52106026
11044	Black African	52106027
23	Coloured	52106027
10	Indian or Asian	52106027
6	White	52106027
7	Other	52106027
6893	Black African	52106028
25	Coloured	52106028
8	Indian or Asian	52106028
4	White	52106028
9	Other	52106028
10142	Black African	52106029
13	Coloured	52106029
15	Indian or Asian	52106029
60	White	52106029
13	Other	52106029
7162	Black African	52101001
5	Coloured	52101001
12	Indian or Asian	52101001
5	White	52101001
1	Other	52101001
7294	Black African	52101002
2	Coloured	52101002
12	Indian or Asian	52101002
1	White	52101002
12	Other	52101002
6176	Black African	52101003
7	Coloured	52101003
13	Indian or Asian	52101003
27	White	52101003
7	Other	52101003
8006	Black African	52101004
15	Coloured	52101004
2	Indian or Asian	52101004
13	White	52101004
7	Other	52101004
10571	Black African	52101005
6	Coloured	52101005
6	Indian or Asian	52101005
43	White	52101005
1	Other	52101005
9356	Black African	52101006
7	Coloured	52101006
3	Indian or Asian	52101006
1	White	52101006
2	Other	52101006
6015	Black African	52101007
39	Coloured	52101007
40	Indian or Asian	52101007
50	White	52101007
9	Other	52101007
6844	Black African	52101008
2	Coloured	52101008
7	Indian or Asian	52101008
0	White	52101008
0	Other	52101008
8457	Black African	52101009
21	Coloured	52101009
51	Indian or Asian	52101009
90	White	52101009
20	Other	52101009
6673	Black African	52101010
46	Coloured	52101010
235	Indian or Asian	52101010
24	White	52101010
2	Other	52101010
7431	Black African	52102001
13	Coloured	52102001
10	Indian or Asian	52102001
0	White	52102001
1	Other	52102001
9879	Black African	52102002
7	Coloured	52102002
9	Indian or Asian	52102002
5	White	52102002
5	Other	52102002
4457	Black African	52102003
175	Coloured	52102003
4538	Indian or Asian	52102003
34	White	52102003
94	Other	52102003
5295	Black African	52102004
61	Coloured	52102004
371	Indian or Asian	52102004
1124	White	52102004
11	Other	52102004
4160	Black African	52102005
75	Coloured	52102005
322	Indian or Asian	52102005
1973	White	52102005
27	Other	52102005
3524	Black African	52102006
159	Coloured	52102006
2331	Indian or Asian	52102006
39	White	52102006
24	Other	52102006
6591	Black African	52102007
171	Coloured	52102007
875	Indian or Asian	52102007
1107	White	52102007
21	Other	52102007
9172	Black African	52102008
8	Coloured	52102008
25	Indian or Asian	52102008
3	White	52102008
2	Other	52102008
6712	Black African	52102009
2	Coloured	52102009
3	Indian or Asian	52102009
3	White	52102009
9	Other	52102009
3292	Black African	52102010
248	Coloured	52102010
2023	Indian or Asian	52102010
2414	White	52102010
37	Other	52102010
12074	Black African	52201001
34	Coloured	52201001
34	Indian or Asian	52201001
346	White	52201001
20	Other	52201001
5250	Black African	52201002
39	Coloured	52201002
147	Indian or Asian	52201002
461	White	52201002
39	Other	52201002
10040	Black African	52201003
3	Coloured	52201003
3	Indian or Asian	52201003
128	White	52201003
10	Other	52201003
8941	Black African	52201004
9	Coloured	52201004
22	Indian or Asian	52201004
242	White	52201004
12	Other	52201004
11102	Black African	52201005
21	Coloured	52201005
15	Indian or Asian	52201005
13	White	52201005
6	Other	52201005
7544	Black African	52201006
2	Coloured	52201006
2	Indian or Asian	52201006
5	White	52201006
7	Other	52201006
3327	Black African	52201007
60	Coloured	52201007
1287	Indian or Asian	52201007
887	White	52201007
17	Other	52201007
6836	Black African	52201008
2	Coloured	52201008
17	Indian or Asian	52201008
1	White	52201008
0	Other	52201008
9019	Black African	52201009
58	Coloured	52201009
224	Indian or Asian	52201009
621	White	52201009
88	Other	52201009
6572	Black African	52201010
20	Coloured	52201010
7	Indian or Asian	52201010
30	White	52201010
5	Other	52201010
7370	Black African	52201011
6	Coloured	52201011
8	Indian or Asian	52201011
3	White	52201011
5	Other	52201011
7805	Black African	52201012
5	Coloured	52201012
51	Indian or Asian	52201012
121	White	52201012
45	Other	52201012
5291	Black African	52201013
2	Coloured	52201013
5	Indian or Asian	52201013
5	White	52201013
1	Other	52201013
6066	Black African	52202001
173	Coloured	52202001
1301	Indian or Asian	52202001
104	White	52202001
17	Other	52202001
641	Black African	52202002
34	Coloured	52202002
64	Indian or Asian	52202002
514	White	52202002
12	Other	52202002
4599	Black African	52202003
49	Coloured	52202003
115	Indian or Asian	52202003
1612	White	52202003
36	Other	52202003
7978	Black African	52202004
42	Coloured	52202004
58	Indian or Asian	52202004
1213	White	52202004
12	Other	52202004
2385	Black African	52202005
78	Coloured	52202005
99	Indian or Asian	52202005
4471	White	52202005
18	Other	52202005
3669	Black African	52202006
127	Coloured	52202006
200	Indian or Asian	52202006
3319	White	52202006
29	Other	52202006
2284	Black African	52202007
93	Coloured	52202007
78	Indian or Asian	52202007
5165	White	52202007
45	Other	52202007
13462	Black African	52202008
26	Coloured	52202008
8	Indian or Asian	52202008
1	White	52202008
10	Other	52202008
9180	Black African	52202009
88	Coloured	52202009
96	Indian or Asian	52202009
186	White	52202009
21	Other	52202009
5287	Black African	52202010
9	Coloured	52202010
0	Indian or Asian	52202010
5	White	52202010
6	Other	52202010
7293	Black African	52202011
15	Coloured	52202011
2	Indian or Asian	52202011
1	White	52202011
9	Other	52202011
6681	Black African	52202012
695	Coloured	52202012
1486	Indian or Asian	52202012
1411	White	52202012
29	Other	52202012
9953	Black African	52203001
164	Coloured	52203001
617	Indian or Asian	52203001
642	White	52203001
39	Other	52203001
7374	Black African	52203002
26	Coloured	52203002
22	Indian or Asian	52203002
1007	White	52203002
35	Other	52203002
6716	Black African	52203003
20	Coloured	52203003
18	Indian or Asian	52203003
147	White	52203003
16	Other	52203003
11068	Black African	52203004
18	Coloured	52203004
21	Indian or Asian	52203004
172	White	52203004
30	Other	52203004
8548	Black African	52204001
51	Coloured	52204001
12	Indian or Asian	52204001
55	White	52204001
18	Other	52204001
9509	Black African	52204002
6	Coloured	52204002
6	Indian or Asian	52204002
9	White	52204002
16	Other	52204002
8027	Black African	52204003
7	Coloured	52204003
17	Indian or Asian	52204003
3	White	52204003
15	Other	52204003
6668	Black African	52204004
21	Coloured	52204004
8	Indian or Asian	52204004
107	White	52204004
2	Other	52204004
18706	Black African	52205001
20	Coloured	52205001
12	Indian or Asian	52205001
12	White	52205001
21	Other	52205001
18369	Black African	52205002
17	Coloured	52205002
9	Indian or Asian	52205002
10	White	52205002
27	Other	52205002
15525	Black African	52205003
28	Coloured	52205003
15	Indian or Asian	52205003
2	White	52205003
5	Other	52205003
14143	Black African	52205004
27	Coloured	52205004
33	Indian or Asian	52205004
10	White	52205004
10	Other	52205004
15805	Black African	52205005
8	Coloured	52205005
16	Indian or Asian	52205005
7	White	52205005
3	Other	52205005
17230	Black African	52205006
9	Coloured	52205006
25	Indian or Asian	52205006
9	White	52205006
9	Other	52205006
17978	Black African	52205007
18	Coloured	52205007
24	Indian or Asian	52205007
7	White	52205007
23	Other	52205007
15263	Black African	52205008
5	Coloured	52205008
16	Indian or Asian	52205008
6	White	52205008
0	Other	52205008
14491	Black African	52205009
23	Coloured	52205009
11	Indian or Asian	52205009
6	White	52205009
7	Other	52205009
14102	Black African	52205010
38	Coloured	52205010
3	Indian or Asian	52205010
4	White	52205010
5	Other	52205010
19875	Black African	52205011
61	Coloured	52205011
2	Indian or Asian	52205011
5	White	52205011
2	Other	52205011
11682	Black African	52205012
63	Coloured	52205012
11	Indian or Asian	52205012
6	White	52205012
13	Other	52205012
21811	Black African	52205013
64	Coloured	52205013
31	Indian or Asian	52205013
29	White	52205013
17	Other	52205013
15273	Black African	52205014
7	Coloured	52205014
16	Indian or Asian	52205014
12	White	52205014
10	Other	52205014
18471	Black African	52205015
21	Coloured	52205015
18	Indian or Asian	52205015
20	White	52205015
12	Other	52205015
21113	Black African	52205016
28	Coloured	52205016
25	Indian or Asian	52205016
28	White	52205016
37	Other	52205016
21413	Black African	52205017
66	Coloured	52205017
21	Indian or Asian	52205017
10	White	52205017
22	Other	52205017
20212	Black African	52205018
71	Coloured	52205018
102	Indian or Asian	52205018
278	White	52205018
46	Other	52205018
16374	Black African	52205019
40	Coloured	52205019
7	Indian or Asian	52205019
21	White	52205019
3	Other	52205019
13532	Black African	52205020
50	Coloured	52205020
6	Indian or Asian	52205020
30	White	52205020
49	Other	52205020
9935	Black African	52205021
15	Coloured	52205021
5	Indian or Asian	52205021
2	White	52205021
15	Other	52205021
14505	Black African	52205022
41	Coloured	52205022
106	Indian or Asian	52205022
5	White	52205022
8	Other	52205022
14314	Black African	52205023
41	Coloured	52205023
8	Indian or Asian	52205023
8	White	52205023
13	Other	52205023
13556	Black African	52205024
432	Coloured	52205024
323	Indian or Asian	52205024
1852	White	52205024
18	Other	52205024
3859	Black African	52205025
891	Coloured	52205025
1992	Indian or Asian	52205025
8559	White	52205025
161	Other	52205025
8533	Black African	52205026
791	Coloured	52205026
740	Indian or Asian	52205026
7633	White	52205026
90	Other	52205026
9515	Black African	52205027
570	Coloured	52205027
803	Indian or Asian	52205027
1954	White	52205027
195	Other	52205027
3370	Black African	52205028
418	Coloured	52205028
16632	Indian or Asian	52205028
67	White	52205028
94	Other	52205028
14349	Black African	52205029
254	Coloured	52205029
4307	Indian or Asian	52205029
12	White	52205029
59	Other	52205029
7010	Black African	52205030
398	Coloured	52205030
12483	Indian or Asian	52205030
47	White	52205030
150	Other	52205030
2750	Black African	52205031
247	Coloured	52205031
8963	Indian or Asian	52205031
72	White	52205031
62	Other	52205031
7172	Black African	52205032
5716	Coloured	52205032
2922	Indian or Asian	52205032
82	White	52205032
81	Other	52205032
6413	Black African	52205033
848	Coloured	52205033
3199	Indian or Asian	52205033
2301	White	52205033
147	Other	52205033
16021	Black African	52205034
4938	Coloured	52205034
314	Indian or Asian	52205034
18	White	52205034
116	Other	52205034
11156	Black African	52205035
269	Coloured	52205035
3711	Indian or Asian	52205035
1625	White	52205035
81	Other	52205035
8451	Black African	52205036
906	Coloured	52205036
2585	Indian or Asian	52205036
7424	White	52205036
113	Other	52205036
9232	Black African	52205037
316	Coloured	52205037
1094	Indian or Asian	52205037
4684	White	52205037
97	Other	52205037
11420	Black African	52206001
23	Coloured	52206001
6	Indian or Asian	52206001
7	White	52206001
6	Other	52206001
10166	Black African	52206002
18	Coloured	52206002
10	Indian or Asian	52206002
7	White	52206002
9	Other	52206002
6896	Black African	52206003
24	Coloured	52206003
110	Indian or Asian	52206003
556	White	52206003
5	Other	52206003
7068	Black African	52206004
88	Coloured	52206004
484	Indian or Asian	52206004
1484	White	52206004
72	Other	52206004
8429	Black African	52206005
0	Coloured	52206005
19	Indian or Asian	52206005
8	White	52206005
6	Other	52206005
8585	Black African	52206006
13	Coloured	52206006
14	Indian or Asian	52206006
286	White	52206006
12	Other	52206006
7275	Black African	52206007
5	Coloured	52206007
9	Indian or Asian	52206007
15	White	52206007
5	Other	52206007
5246	Black African	52207001
330	Coloured	52207001
590	Indian or Asian	52207001
619	White	52207001
50	Other	52207001
10155	Black African	52207002
81	Coloured	52207002
23	Indian or Asian	52207002
4	White	52207002
23	Other	52207002
13807	Black African	52207003
153	Coloured	52207003
86	Indian or Asian	52207003
547	White	52207003
19	Other	52207003
3341	Black African	52207004
7	Coloured	52207004
9	Indian or Asian	52207004
457	White	52207004
9	Other	52207004
8840	Black African	52207005
5	Coloured	52207005
6	Indian or Asian	52207005
7	White	52207005
9	Other	52207005
10509	Black African	52207006
7	Coloured	52207006
10	Indian or Asian	52207006
58	White	52207006
0	Other	52207006
10738	Black African	52207007
21	Coloured	52207007
10	Indian or Asian	52207007
12	White	52207007
3	Other	52207007
8535	Black African	52302001
18	Coloured	52302001
6	Indian or Asian	52302001
4	White	52302001
6	Other	52302001
7340	Black African	52302002
24	Coloured	52302002
10	Indian or Asian	52302002
1	White	52302002
2	Other	52302002
10495	Black African	52302003
24	Coloured	52302003
8	Indian or Asian	52302003
10	White	52302003
21	Other	52302003
5617	Black African	52302004
9	Coloured	52302004
2	Indian or Asian	52302004
8	White	52302004
0	Other	52302004
8852	Black African	52302005
6	Coloured	52302005
14	Indian or Asian	52302005
0	White	52302005
2	Other	52302005
9500	Black African	52302006
19	Coloured	52302006
7	Indian or Asian	52302006
6	White	52302006
15	Other	52302006
8649	Black African	52302007
22	Coloured	52302007
30	Indian or Asian	52302007
2	White	52302007
1	Other	52302007
6685	Black African	52302008
1	Coloured	52302008
1	Indian or Asian	52302008
0	White	52302008
1	Other	52302008
10289	Black African	52302009
103	Coloured	52302009
11	Indian or Asian	52302009
0	White	52302009
12	Other	52302009
5541	Black African	52302010
132	Coloured	52302010
929	Indian or Asian	52302010
18	White	52302010
28	Other	52302010
3138	Black African	52302011
277	Coloured	52302011
3163	Indian or Asian	52302011
951	White	52302011
68	Other	52302011
2916	Black African	52302012
225	Coloured	52302012
660	Indian or Asian	52302012
2617	White	52302012
76	Other	52302012
12555	Black African	52302013
13	Coloured	52302013
0	Indian or Asian	52302013
17	White	52302013
1	Other	52302013
11894	Black African	52302014
29	Coloured	52302014
22	Indian or Asian	52302014
147	White	52302014
7	Other	52302014
7942	Black African	52302015
6	Coloured	52302015
2	Indian or Asian	52302015
6	White	52302015
5	Other	52302015
7287	Black African	52302016
4	Coloured	52302016
3	Indian or Asian	52302016
3	White	52302016
2	Other	52302016
7915	Black African	52302017
2	Coloured	52302017
11	Indian or Asian	52302017
2	White	52302017
1	Other	52302017
8215	Black African	52302018
5	Coloured	52302018
6	Indian or Asian	52302018
1	White	52302018
0	Other	52302018
7540	Black African	52302019
10	Coloured	52302019
104	Indian or Asian	52302019
53	White	52302019
1	Other	52302019
7848	Black African	52302020
376	Coloured	52302020
2781	Indian or Asian	52302020
23	White	52302020
51	Other	52302020
8462	Black African	52302021
31	Coloured	52302021
20	Indian or Asian	52302021
6	White	52302021
19	Other	52302021
7793	Black African	52302022
643	Coloured	52302022
212	Indian or Asian	52302022
1721	White	52302022
15	Other	52302022
7632	Black African	52302023
7	Coloured	52302023
9	Indian or Asian	52302023
5	White	52302023
2	Other	52302023
8150	Black African	52302024
19	Coloured	52302024
19	Indian or Asian	52302024
182	White	52302024
27	Other	52302024
6869	Black African	52302025
252	Coloured	52302025
2131	Indian or Asian	52302025
309	White	52302025
40	Other	52302025
5828	Black African	52302026
37	Coloured	52302026
239	Indian or Asian	52302026
243	White	52302026
42	Other	52302026
14369	Black African	52302027
37	Coloured	52302027
26	Indian or Asian	52302027
33	White	52302027
8	Other	52302027
10212	Black African	52303001
18	Coloured	52303001
22	Indian or Asian	52303001
5	White	52303001
1	Other	52303001
11398	Black African	52303002
31	Coloured	52303002
26	Indian or Asian	52303002
3	White	52303002
9	Other	52303002
9850	Black African	52303003
5	Coloured	52303003
40	Indian or Asian	52303003
7	White	52303003
7	Other	52303003
11101	Black African	52303004
7	Coloured	52303004
9	Indian or Asian	52303004
2	White	52303004
0	Other	52303004
8919	Black African	52303005
7	Coloured	52303005
28	Indian or Asian	52303005
11	White	52303005
1	Other	52303005
9631	Black African	52303006
3	Coloured	52303006
15	Indian or Asian	52303006
30	White	52303006
7	Other	52303006
10353	Black African	52303007
4	Coloured	52303007
21	Indian or Asian	52303007
5	White	52303007
11	Other	52303007
11139	Black African	52303008
4	Coloured	52303008
11	Indian or Asian	52303008
2	White	52303008
1	Other	52303008
10952	Black African	52303009
6	Coloured	52303009
5	Indian or Asian	52303009
2	White	52303009
2	Other	52303009
9168	Black African	52303010
8	Coloured	52303010
10	Indian or Asian	52303010
3	White	52303010
4	Other	52303010
9470	Black African	52304001
18	Coloured	52304001
12	Indian or Asian	52304001
4	White	52304001
4	Other	52304001
8345	Black African	52304002
11	Coloured	52304002
10	Indian or Asian	52304002
1	White	52304002
4	Other	52304002
7744	Black African	52304003
160	Coloured	52304003
817	Indian or Asian	52304003
1293	White	52304003
59	Other	52304003
3848	Black African	52304004
781	Coloured	52304004
3280	Indian or Asian	52304004
177	White	52304004
138	Other	52304004
9584	Black African	52304005
12	Coloured	52304005
15	Indian or Asian	52304005
38	White	52304005
13	Other	52304005
7008	Black African	52304006
55	Coloured	52304006
457	Indian or Asian	52304006
7	White	52304006
12	Other	52304006
9075	Black African	52304007
76	Coloured	52304007
190	Indian or Asian	52304007
205	White	52304007
2	Other	52304007
11137	Black African	52304008
7	Coloured	52304008
48	Indian or Asian	52304008
143	White	52304008
3	Other	52304008
8812	Black African	52304009
17	Coloured	52304009
7	Indian or Asian	52304009
39	White	52304009
17	Other	52304009
8773	Black African	52305001
38	Coloured	52305001
42	Indian or Asian	52305001
421	White	52305001
21	Other	52305001
11014	Black African	52305002
14	Coloured	52305002
17	Indian or Asian	52305002
10	White	52305002
11	Other	52305002
9046	Black African	52305003
20	Coloured	52305003
5	Indian or Asian	52305003
30	White	52305003
12	Other	52305003
9240	Black African	52305004
2	Coloured	52305004
10	Indian or Asian	52305004
2	White	52305004
8	Other	52305004
8496	Black African	52305005
2	Coloured	52305005
39	Indian or Asian	52305005
17	White	52305005
1	Other	52305005
9115	Black African	52305006
14	Coloured	52305006
8	Indian or Asian	52305006
77	White	52305006
9	Other	52305006
8703	Black African	52305007
2	Coloured	52305007
10	Indian or Asian	52305007
4	White	52305007
1	Other	52305007
8895	Black African	52305008
1	Coloured	52305008
1	Indian or Asian	52305008
6	White	52305008
15	Other	52305008
8689	Black African	52305009
7	Coloured	52305009
5	Indian or Asian	52305009
2	White	52305009
8	Other	52305009
8853	Black African	52305010
32	Coloured	52305010
27	Indian or Asian	52305010
396	White	52305010
19	Other	52305010
10642	Black African	52305011
15	Coloured	52305011
54	Indian or Asian	52305011
131	White	52305011
43	Other	52305011
9143	Black African	52305012
55	Coloured	52305012
198	Indian or Asian	52305012
665	White	52305012
52	Other	52305012
9127	Black African	52305013
15	Coloured	52305013
15	Indian or Asian	52305013
154	White	52305013
6	Other	52305013
8528	Black African	52305014
70	Coloured	52305014
39	Indian or Asian	52305014
907	White	52305014
20	Other	52305014
8335	Black African	52306001
9	Coloured	52306001
12	Indian or Asian	52306001
77	White	52306001
8	Other	52306001
7604	Black African	52306002
2	Coloured	52306002
2	Indian or Asian	52306002
27	White	52306002
1	Other	52306002
7374	Black African	52306003
6	Coloured	52306003
12	Indian or Asian	52306003
2	White	52306003
4	Other	52306003
9207	Black African	52306004
2	Coloured	52306004
8	Indian or Asian	52306004
6	White	52306004
8	Other	52306004
7021	Black African	52306005
13	Coloured	52306005
2	Indian or Asian	52306005
8	White	52306005
16	Other	52306005
8567	Black African	52306006
2	Coloured	52306006
8	Indian or Asian	52306006
2	White	52306006
1	Other	52306006
7232	Black African	52306007
2	Coloured	52306007
4	Indian or Asian	52306007
0	White	52306007
2	Other	52306007
9389	Black African	52306008
13	Coloured	52306008
9	Indian or Asian	52306008
12	White	52306008
1	Other	52306008
10310	Black African	52306009
6	Coloured	52306009
11	Indian or Asian	52306009
5	White	52306009
3	Other	52306009
11883	Black African	52306010
1	Coloured	52306010
4	Indian or Asian	52306010
3	White	52306010
15	Other	52306010
8758	Black African	52306011
8	Coloured	52306011
10	Indian or Asian	52306011
4	White	52306011
5	Other	52306011
6981	Black African	52306012
4	Coloured	52306012
5	Indian or Asian	52306012
4	White	52306012
18	Other	52306012
9870	Black African	52306013
10	Coloured	52306013
18	Indian or Asian	52306013
120	White	52306013
6	Other	52306013
4652	Black African	52701001
10	Coloured	52701001
13	Indian or Asian	52701001
25	White	52701001
10	Other	52701001
7687	Black African	52701002
27	Coloured	52701002
14	Indian or Asian	52701002
16	White	52701002
1	Other	52701002
11213	Black African	52701003
15	Coloured	52701003
22	Indian or Asian	52701003
146	White	52701003
4	Other	52701003
12010	Black African	52701004
23	Coloured	52701004
10	Indian or Asian	52701004
22	White	52701004
24	Other	52701004
8772	Black African	52701005
18	Coloured	52701005
10	Indian or Asian	52701005
73	White	52701005
15	Other	52701005
13036	Black African	52701006
5	Coloured	52701006
18	Indian or Asian	52701006
3	White	52701006
2	Other	52701006
9761	Black African	52701007
2	Coloured	52701007
4	Indian or Asian	52701007
24	White	52701007
5	Other	52701007
8483	Black African	52701008
1	Coloured	52701008
1	Indian or Asian	52701008
0	White	52701008
8	Other	52701008
11781	Black African	52701009
6	Coloured	52701009
16	Indian or Asian	52701009
33	White	52701009
6	Other	52701009
7078	Black African	52701010
1	Coloured	52701010
10	Indian or Asian	52701010
90	White	52701010
9	Other	52701010
9538	Black African	52701011
1	Coloured	52701011
16	Indian or Asian	52701011
14	White	52701011
18	Other	52701011
7300	Black African	52701012
2	Coloured	52701012
5	Indian or Asian	52701012
15	White	52701012
12	Other	52701012
8885	Black African	52701013
5	Coloured	52701013
7	Indian or Asian	52701013
8	White	52701013
13	Other	52701013
8097	Black African	52701014
8	Coloured	52701014
4	Indian or Asian	52701014
4	White	52701014
0	Other	52701014
10344	Black African	52701015
7	Coloured	52701015
22	Indian or Asian	52701015
4	White	52701015
23	Other	52701015
7658	Black African	52701016
1	Coloured	52701016
4	Indian or Asian	52701016
12	White	52701016
1	Other	52701016
9419	Black African	52701017
9	Coloured	52701017
17	Indian or Asian	52701017
39	White	52701017
12	Other	52701017
7139	Black African	52702001
2	Coloured	52702001
4	Indian or Asian	52702001
27	White	52702001
1	Other	52702001
8036	Black African	52702002
46	Coloured	52702002
32	Indian or Asian	52702002
24	White	52702002
6	Other	52702002
9379	Black African	52702003
4	Coloured	52702003
10	Indian or Asian	52702003
10	White	52702003
18	Other	52702003
8273	Black African	52702004
4	Coloured	52702004
7	Indian or Asian	52702004
7	White	52702004
1	Other	52702004
13588	Black African	52702005
18	Coloured	52702005
17	Indian or Asian	52702005
42	White	52702005
12	Other	52702005
6907	Black African	52702006
9	Coloured	52702006
9	Indian or Asian	52702006
2	White	52702006
10	Other	52702006
9302	Black African	52702007
14	Coloured	52702007
131	Indian or Asian	52702007
78	White	52702007
50	Other	52702007
8483	Black African	52702008
6	Coloured	52702008
7	Indian or Asian	52702008
5	White	52702008
5	Other	52702008
9419	Black African	52702009
1	Coloured	52702009
3	Indian or Asian	52702009
5	White	52702009
77	Other	52702009
11062	Black African	52702010
3	Coloured	52702010
13	Indian or Asian	52702010
5	White	52702010
2	Other	52702010
8025	Black African	52702011
9	Coloured	52702011
20	Indian or Asian	52702011
18	White	52702011
21	Other	52702011
10301	Black African	52702012
5	Coloured	52702012
24	Indian or Asian	52702012
4	White	52702012
67	Other	52702012
10705	Black African	52702013
3	Coloured	52702013
23	Indian or Asian	52702013
43	White	52702013
1	Other	52702013
11529	Black African	52702014
16	Coloured	52702014
34	Indian or Asian	52702014
24	White	52702014
30	Other	52702014
8454	Black African	52702015
6	Coloured	52702015
5	Indian or Asian	52702015
0	White	52702015
0	Other	52702015
9435	Black African	52702016
3	Coloured	52702016
26	Indian or Asian	52702016
13	White	52702016
17	Other	52702016
10409	Black African	52702017
4	Coloured	52702017
2	Indian or Asian	52702017
1	White	52702017
9	Other	52702017
7925	Black African	52702018
1	Coloured	52702018
7	Indian or Asian	52702018
5	White	52702018
1	Other	52702018
8783	Black African	52702019
5	Coloured	52702019
15	Indian or Asian	52702019
8	White	52702019
1	Other	52702019
7807	Black African	52702020
24	Coloured	52702020
56	Indian or Asian	52702020
213	White	52702020
49	Other	52702020
9978	Black African	52703001
2	Coloured	52703001
18	Indian or Asian	52703001
72	White	52703001
3	Other	52703001
7267	Black African	52703002
6	Coloured	52703002
26	Indian or Asian	52703002
35	White	52703002
5	Other	52703002
5556	Black African	52703003
79	Coloured	52703003
33	Indian or Asian	52703003
1022	White	52703003
122	Other	52703003
10983	Black African	52703004
23	Coloured	52703004
9	Indian or Asian	52703004
9	White	52703004
8	Other	52703004
6585	Black African	52704001
30	Coloured	52704001
19	Indian or Asian	52704001
6	White	52704001
8	Other	52704001
4994	Black African	52704002
20	Coloured	52704002
13	Indian or Asian	52704002
27	White	52704002
33	Other	52704002
12236	Black African	52704003
8	Coloured	52704003
21	Indian or Asian	52704003
5	White	52704003
21	Other	52704003
11228	Black African	52704004
2	Coloured	52704004
27	Indian or Asian	52704004
9	White	52704004
2	Other	52704004
7628	Black African	52704005
6	Coloured	52704005
13	Indian or Asian	52704005
0	White	52704005
14	Other	52704005
8336	Black African	52704006
1	Coloured	52704006
2	Indian or Asian	52704006
3	White	52704006
6	Other	52704006
8207	Black African	52704007
1	Coloured	52704007
9	Indian or Asian	52704007
2	White	52704007
2	Other	52704007
12311	Black African	52704008
18	Coloured	52704008
8	Indian or Asian	52704008
37	White	52704008
26	Other	52704008
5826	Black African	52705001
5	Coloured	52705001
2	Indian or Asian	52705001
0	White	52705001
6	Other	52705001
15155	Black African	52705002
76	Coloured	52705002
12	Indian or Asian	52705002
18	White	52705002
42	Other	52705002
15114	Black African	52705003
41	Coloured	52705003
38	Indian or Asian	52705003
276	White	52705003
2	Other	52705003
5661	Black African	52705004
51	Coloured	52705004
24	Indian or Asian	52705004
756	White	52705004
14	Other	52705004
2841	Black African	52705005
235	Coloured	52705005
223	Indian or Asian	52705005
486	White	52705005
12	Other	52705005
14525	Black African	52705006
90	Coloured	52705006
91	Indian or Asian	52705006
277	White	52705006
22	Other	52705006
8171	Black African	52705007
13	Coloured	52705007
11	Indian or Asian	52705007
11	White	52705007
10	Other	52705007
9759	Black African	52705008
33	Coloured	52705008
6	Indian or Asian	52705008
4	White	52705008
7	Other	52705008
6998	Black African	52705009
1	Coloured	52705009
15	Indian or Asian	52705009
8	White	52705009
9	Other	52705009
9547	Black African	52705010
15	Coloured	52705010
8	Indian or Asian	52705010
8	White	52705010
1	Other	52705010
8070	Black African	52705011
1	Coloured	52705011
26	Indian or Asian	52705011
2	White	52705011
6	Other	52705011
9033	Black African	52705012
13	Coloured	52705012
20	Indian or Asian	52705012
6	White	52705012
2	Other	52705012
5129	Black African	52705013
22	Coloured	52705013
15	Indian or Asian	52705013
4	White	52705013
12	Other	52705013
7072	Black African	52705014
0	Coloured	52705014
8	Indian or Asian	52705014
6	White	52705014
9	Other	52705014
7466	Black African	52705015
9	Coloured	52705015
5	Indian or Asian	52705015
5	White	52705015
8	Other	52705015
11847	Black African	52705016
8	Coloured	52705016
21	Indian or Asian	52705016
12	White	52705016
9	Other	52705016
8596	Black African	52705017
6	Coloured	52705017
12	Indian or Asian	52705017
16	White	52705017
7	Other	52705017
12408	Black African	52705018
8	Coloured	52705018
9	Indian or Asian	52705018
8	White	52705018
6	Other	52705018
8930	Black African	52705019
1	Coloured	52705019
8	Indian or Asian	52705019
1	White	52705019
4	Other	52705019
7303	Black African	52802001
171	Coloured	52802001
422	Indian or Asian	52802001
4211	White	52802001
39	Other	52802001
5506	Black African	52802002
545	Coloured	52802002
2068	Indian or Asian	52802002
4068	White	52802002
68	Other	52802002
2017	Black African	52802003
272	Coloured	52802003
768	Indian or Asian	52802003
5954	White	52802003
47	Other	52802003
8577	Black African	52802004
157	Coloured	52802004
733	Indian or Asian	52802004
2968	White	52802004
38	Other	52802004
15173	Black African	52802005
47	Coloured	52802005
21	Indian or Asian	52802005
309	White	52802005
14	Other	52802005
12486	Black African	52802006
15	Coloured	52802006
31	Indian or Asian	52802006
6	White	52802006
6	Other	52802006
5875	Black African	52802007
5	Coloured	52802007
7	Indian or Asian	52802007
0	White	52802007
8	Other	52802007
5126	Black African	52802008
2	Coloured	52802008
4	Indian or Asian	52802008
3	White	52802008
1	Other	52802008
10022	Black African	52802009
295	Coloured	52802009
633	Indian or Asian	52802009
2585	White	52802009
23	Other	52802009
11258	Black African	52802010
16	Coloured	52802010
22	Indian or Asian	52802010
4	White	52802010
11	Other	52802010
9091	Black African	52802011
25	Coloured	52802011
9	Indian or Asian	52802011
3	White	52802011
2	Other	52802011
8516	Black African	52802012
13	Coloured	52802012
12	Indian or Asian	52802012
26	White	52802012
7	Other	52802012
14880	Black African	52802013
35	Coloured	52802013
4	Indian or Asian	52802013
6	White	52802013
3	Other	52802013
12248	Black African	52802014
36	Coloured	52802014
6	Indian or Asian	52802014
0	White	52802014
26	Other	52802014
12220	Black African	52802015
10	Coloured	52802015
1	Indian or Asian	52802015
2	White	52802015
18	Other	52802015
7729	Black African	52802016
34	Coloured	52802016
9	Indian or Asian	52802016
6	White	52802016
23	Other	52802016
10390	Black African	52802017
30	Coloured	52802017
17	Indian or Asian	52802017
5	White	52802017
20	Other	52802017
14827	Black African	52802018
19	Coloured	52802018
12	Indian or Asian	52802018
7	White	52802018
22	Other	52802018
11958	Black African	52802019
15	Coloured	52802019
33	Indian or Asian	52802019
10	White	52802019
3	Other	52802019
8484	Black African	52802020
26	Coloured	52802020
3	Indian or Asian	52802020
32	White	52802020
6	Other	52802020
6921	Black African	52802021
21	Coloured	52802021
5	Indian or Asian	52802021
3	White	52802021
0	Other	52802021
9130	Black African	52802022
21	Coloured	52802022
18	Indian or Asian	52802022
7	White	52802022
5	Other	52802022
6447	Black African	52802023
251	Coloured	52802023
939	Indian or Asian	52802023
3010	White	52802023
57	Other	52802023
16524	Black African	52802024
236	Coloured	52802024
318	Indian or Asian	52802024
1184	White	52802024
70	Other	52802024
13739	Black African	52802025
54	Coloured	52802025
29	Indian or Asian	52802025
21	White	52802025
27	Other	52802025
4213	Black African	52802026
719	Coloured	52802026
6466	Indian or Asian	52802026
76	White	52802026
50	Other	52802026
8849	Black African	52802027
9	Coloured	52802027
5	Indian or Asian	52802027
6	White	52802027
5	Other	52802027
7369	Black African	52802028
19	Coloured	52802028
21	Indian or Asian	52802028
13	White	52802028
19	Other	52802028
15250	Black African	52802029
21	Coloured	52802029
10	Indian or Asian	52802029
1	White	52802029
86	Other	52802029
11227	Black African	52802030
53	Coloured	52802030
27	Indian or Asian	52802030
37	White	52802030
16	Other	52802030
10586	Black African	52806001
5	Coloured	52806001
5	Indian or Asian	52806001
2	White	52806001
33	Other	52806001
7134	Black African	52806002
4	Coloured	52806002
0	Indian or Asian	52806002
2	White	52806002
3	Other	52806002
7665	Black African	52806003
8	Coloured	52806003
1	Indian or Asian	52806003
27	White	52806003
31	Other	52806003
6344	Black African	52806004
5	Coloured	52806004
0	Indian or Asian	52806004
20	White	52806004
1	Other	52806004
8686	Black African	52806005
16	Coloured	52806005
12	Indian or Asian	52806005
30	White	52806005
18	Other	52806005
9045	Black African	52806006
5	Coloured	52806006
13	Indian or Asian	52806006
14	White	52806006
2	Other	52806006
8556	Black African	52806007
5	Coloured	52806007
1	Indian or Asian	52806007
0	White	52806007
2	Other	52806007
6839	Black African	52806008
1	Coloured	52806008
4	Indian or Asian	52806008
4	White	52806008
6	Other	52806008
7503	Black African	52806009
9	Coloured	52806009
6	Indian or Asian	52806009
4	White	52806009
5	Other	52806009
8618	Black African	52806010
24	Coloured	52806010
11	Indian or Asian	52806010
14	White	52806010
3	Other	52806010
6447	Black African	52806011
5	Coloured	52806011
4	Indian or Asian	52806011
8	White	52806011
0	Other	52806011
8865	Black African	52806012
10	Coloured	52806012
3	Indian or Asian	52806012
0	White	52806012
0	Other	52806012
9575	Black African	52806013
7	Coloured	52806013
5	Indian or Asian	52806013
7	White	52806013
1	Other	52806013
8061	Black African	52806014
9	Coloured	52806014
38	Indian or Asian	52806014
36	White	52806014
2	Other	52806014
5263	Black African	52801001
12	Coloured	52801001
11	Indian or Asian	52801001
1	White	52801001
5	Other	52801001
4652	Black African	52801002
19	Coloured	52801002
32	Indian or Asian	52801002
639	White	52801002
13	Other	52801002
7579	Black African	52801003
24	Coloured	52801003
16	Indian or Asian	52801003
8	White	52801003
1	Other	52801003
10479	Black African	52801004
27	Coloured	52801004
27	Indian or Asian	52801004
219	White	52801004
24	Other	52801004
7850	Black African	52801005
11	Coloured	52801005
11	Indian or Asian	52801005
5	White	52801005
3	Other	52801005
7558	Black African	52801006
29	Coloured	52801006
32	Indian or Asian	52801006
13	White	52801006
20	Other	52801006
5824	Black African	52801007
8	Coloured	52801007
3	Indian or Asian	52801007
6	White	52801007
0	Other	52801007
10618	Black African	52801008
26	Coloured	52801008
16	Indian or Asian	52801008
2	White	52801008
4	Other	52801008
10319	Black African	52801009
9	Coloured	52801009
32	Indian or Asian	52801009
8	White	52801009
3	Other	52801009
7336	Black African	52801010
4	Coloured	52801010
3	Indian or Asian	52801010
3	White	52801010
1	Other	52801010
8298	Black African	52801011
7	Coloured	52801011
30	Indian or Asian	52801011
7	White	52801011
6	Other	52801011
8230	Black African	52801012
1	Coloured	52801012
7	Indian or Asian	52801012
1	White	52801012
1	Other	52801012
7245	Black African	52801013
5	Coloured	52801013
7	Indian or Asian	52801013
6	White	52801013
1	Other	52801013
10654	Black African	52801014
15	Coloured	52801014
20	Indian or Asian	52801014
2	White	52801014
6	Other	52801014
9492	Black African	52801015
20	Coloured	52801015
5	Indian or Asian	52801015
6	White	52801015
6	Other	52801015
6994	Black African	52803001
2	Coloured	52803001
6	Indian or Asian	52803001
0	White	52803001
0	Other	52803001
9491	Black African	52803002
1	Coloured	52803002
21	Indian or Asian	52803002
6	White	52803002
1	Other	52803002
10261	Black African	52803003
15	Coloured	52803003
11	Indian or Asian	52803003
5	White	52803003
2	Other	52803003
8046	Black African	52803004
0	Coloured	52803004
5	Indian or Asian	52803004
8	White	52803004
5	Other	52803004
10644	Black African	52803005
7	Coloured	52803005
23	Indian or Asian	52803005
22	White	52803005
11	Other	52803005
9438	Black African	52803006
5	Coloured	52803006
2	Indian or Asian	52803006
3	White	52803006
6	Other	52803006
9587	Black African	52803007
94	Coloured	52803007
29	Indian or Asian	52803007
63	White	52803007
47	Other	52803007
9442	Black African	52803008
4	Coloured	52803008
16	Indian or Asian	52803008
8	White	52803008
4	Other	52803008
7426	Black African	52804001
12	Coloured	52804001
2	Indian or Asian	52804001
5	White	52804001
7	Other	52804001
7909	Black African	52804002
9	Coloured	52804002
9	Indian or Asian	52804002
7	White	52804002
2	Other	52804002
7183	Black African	52804003
9	Coloured	52804003
29	Indian or Asian	52804003
7	White	52804003
6	Other	52804003
8870	Black African	52804004
14	Coloured	52804004
7	Indian or Asian	52804004
5	White	52804004
17	Other	52804004
9751	Black African	52804005
12	Coloured	52804005
7	Indian or Asian	52804005
6	White	52804005
10	Other	52804005
6918	Black African	52804006
5	Coloured	52804006
5	Indian or Asian	52804006
1	White	52804006
2	Other	52804006
7148	Black African	52804007
81	Coloured	52804007
316	Indian or Asian	52804007
187	White	52804007
77	Other	52804007
9174	Black African	52804008
14	Coloured	52804008
5	Indian or Asian	52804008
6	White	52804008
8	Other	52804008
8183	Black African	52804009
12	Coloured	52804009
3	Indian or Asian	52804009
2	White	52804009
11	Other	52804009
9321	Black African	52804010
2	Coloured	52804010
8	Indian or Asian	52804010
6	White	52804010
8	Other	52804010
6178	Black African	52804011
683	Coloured	52804011
358	Indian or Asian	52804011
1089	White	52804011
35	Other	52804011
5609	Black African	52804012
11	Coloured	52804012
6	Indian or Asian	52804012
2	White	52804012
10	Other	52804012
8973	Black African	52804013
42	Coloured	52804013
4	Indian or Asian	52804013
12	White	52804013
35	Other	52804013
8692	Black African	52804014
5	Coloured	52804014
7	Indian or Asian	52804014
3	White	52804014
5	Other	52804014
9426	Black African	52804015
10	Coloured	52804015
7	Indian or Asian	52804015
8	White	52804015
12	Other	52804015
11813	Black African	52804016
11	Coloured	52804016
15	Indian or Asian	52804016
6	White	52804016
6	Other	52804016
6830	Black African	52804017
13	Coloured	52804017
7	Indian or Asian	52804017
12	White	52804017
10	Other	52804017
3258	Black African	52804018
142	Coloured	52804018
434	Indian or Asian	52804018
68	White	52804018
26	Other	52804018
5235	Black African	52804019
70	Coloured	52804019
78	Indian or Asian	52804019
1807	White	52804019
61	Other	52804019
10634	Black African	52804020
13	Coloured	52804020
14	Indian or Asian	52804020
4	White	52804020
24	Other	52804020
6928	Black African	52804021
5	Coloured	52804021
2	Indian or Asian	52804021
0	White	52804021
5	Other	52804021
7135	Black African	52804022
1	Coloured	52804022
6	Indian or Asian	52804022
1	White	52804022
7	Other	52804022
8999	Black African	52804023
1	Coloured	52804023
8	Indian or Asian	52804023
2	White	52804023
12	Other	52804023
9408	Black African	52804024
2	Coloured	52804024
15	Indian or Asian	52804024
3	White	52804024
9	Other	52804024
6873	Black African	52804025
0	Coloured	52804025
14	Indian or Asian	52804025
2	White	52804025
1	Other	52804025
9459	Black African	52804026
6	Coloured	52804026
29	Indian or Asian	52804026
31	White	52804026
4	Other	52804026
7835	Black African	52805001
112	Coloured	52805001
66	Indian or Asian	52805001
217	White	52805001
30	Other	52805001
6942	Black African	52805002
66	Coloured	52805002
8	Indian or Asian	52805002
62	White	52805002
39	Other	52805002
8830	Black African	52805003
5	Coloured	52805003
7	Indian or Asian	52805003
3	White	52805003
0	Other	52805003
7656	Black African	52805004
14	Coloured	52805004
15	Indian or Asian	52805004
30	White	52805004
7	Other	52805004
9931	Black African	52805005
7	Coloured	52805005
15	Indian or Asian	52805005
2	White	52805005
5	Other	52805005
5895	Black African	52805006
9	Coloured	52805006
3	Indian or Asian	52805006
5	White	52805006
1	Other	52805006
10177	Black African	54301001
3	Coloured	54301001
1	Indian or Asian	54301001
2	White	54301001
1	Other	54301001
9486	Black African	54301002
1	Coloured	54301002
2	Indian or Asian	54301002
3	White	54301002
12	Other	54301002
9872	Black African	54301003
10	Coloured	54301003
21	Indian or Asian	54301003
6	White	54301003
4	Other	54301003
9333	Black African	54301004
5	Coloured	54301004
0	Indian or Asian	54301004
1	White	54301004
9	Other	54301004
8241	Black African	54301005
23	Coloured	54301005
14	Indian or Asian	54301005
54	White	54301005
37	Other	54301005
9275	Black African	54301006
34	Coloured	54301006
8	Indian or Asian	54301006
219	White	54301006
7	Other	54301006
7838	Black African	54301007
28	Coloured	54301007
2	Indian or Asian	54301007
16	White	54301007
0	Other	54301007
8944	Black African	54301008
5	Coloured	54301008
3	Indian or Asian	54301008
5	White	54301008
0	Other	54301008
10055	Black African	54301009
31	Coloured	54301009
22	Indian or Asian	54301009
144	White	54301009
17	Other	54301009
8738	Black African	54301010
6	Coloured	54301010
7	Indian or Asian	54301010
3	White	54301010
4	Other	54301010
7324	Black African	54301011
97	Coloured	54301011
33	Indian or Asian	54301011
342	White	54301011
22	Other	54301011
3169	Black African	54302001
12	Coloured	54302001
2	Indian or Asian	54302001
39	White	54302001
2	Other	54302001
3451	Black African	54302002
23	Coloured	54302002
5	Indian or Asian	54302002
522	White	54302002
9	Other	54302002
2502	Black African	54302003
35	Coloured	54302003
19	Indian or Asian	54302003
527	White	54302003
24	Other	54302003
2214	Black African	54302004
41	Coloured	54302004
25	Indian or Asian	54302004
262	White	54302004
16	Other	54302004
11356	Black African	54303001
59	Coloured	54303001
5	Indian or Asian	54303001
4	White	54303001
17	Other	54303001
6354	Black African	54303002
644	Coloured	54303002
9	Indian or Asian	54303002
317	White	54303002
3	Other	54303002
3817	Black African	54303003
1873	Coloured	54303003
432	Indian or Asian	54303003
579	White	54303003
75	Other	54303003
9986	Black African	54303004
1323	Coloured	54303004
134	Indian or Asian	54303004
153	White	54303004
18	Other	54303004
2718	Black African	54303005
649	Coloured	54303005
23	Indian or Asian	54303005
32	White	54303005
16	Other	54303005
7974	Black African	54303006
420	Coloured	54303006
122	Indian or Asian	54303006
1100	White	54303006
13	Other	54303006
6506	Black African	54303007
416	Coloured	54303007
5	Indian or Asian	54303007
2	White	54303007
8	Other	54303007
8788	Black African	54303008
18	Coloured	54303008
5	Indian or Asian	54303008
7	White	54303008
4	Other	54303008
7538	Black African	54304001
22	Coloured	54304001
14	Indian or Asian	54304001
114	White	54304001
6	Other	54304001
4773	Black African	54304002
292	Coloured	54304002
228	Indian or Asian	54304002
362	White	54304002
39	Other	54304002
9125	Black African	54304003
0	Coloured	54304003
0	Indian or Asian	54304003
6	White	54304003
5	Other	54304003
10735	Black African	54304004
473	Coloured	54304004
37	Indian or Asian	54304004
53	White	54304004
28	Other	54304004
8671	Black African	54304005
2	Coloured	54304005
5	Indian or Asian	54304005
3	White	54304005
1	Other	54304005
7555	Black African	54304006
6	Coloured	54304006
6	Indian or Asian	54304006
7	White	54304006
6	Other	54304006
7260	Black African	54304007
6	Coloured	54304007
14	Indian or Asian	54304007
16	White	54304007
7	Other	54304007
11328	Black African	54304008
277	Coloured	54304008
25	Indian or Asian	54304008
6	White	54304008
9	Other	54304008
6416	Black African	54304009
62	Coloured	54304009
36	Indian or Asian	54304009
229	White	54304009
10	Other	54304009
8096	Black African	54304010
18	Coloured	54304010
5	Indian or Asian	54304010
10	White	54304010
1	Other	54304010
7714	Black African	54304011
7	Coloured	54304011
14	Indian or Asian	54304011
7	White	54304011
0	Other	54304011
9977	Black African	54304012
7	Coloured	54304012
2	Indian or Asian	54304012
16	White	54304012
2	Other	54304012
9583	Black African	54305001
8	Coloured	54305001
7	Indian or Asian	54305001
3	White	54305001
0	Other	54305001
9315	Black African	54305002
5	Coloured	54305002
13	Indian or Asian	54305002
8	White	54305002
7	Other	54305002
7408	Black African	54305003
20	Coloured	54305003
8	Indian or Asian	54305003
8	White	54305003
1	Other	54305003
8403	Black African	54305004
27	Coloured	54305004
12	Indian or Asian	54305004
15	White	54305004
0	Other	54305004
9540	Black African	54305005
2	Coloured	54305005
11	Indian or Asian	54305005
20	White	54305005
5	Other	54305005
10478	Black African	54305006
15	Coloured	54305006
5	Indian or Asian	54305006
0	White	54305006
2	Other	54305006
9077	Black African	54305007
13	Coloured	54305007
8	Indian or Asian	54305007
8	White	54305007
4	Other	54305007
9001	Black African	54305008
9	Coloured	54305008
12	Indian or Asian	54305008
6	White	54305008
0	Other	54305008
7422	Black African	54305009
21	Coloured	54305009
6	Indian or Asian	54305009
1	White	54305009
0	Other	54305009
10017	Black African	54305010
4	Coloured	54305010
2	Indian or Asian	54305010
1	White	54305010
6	Other	54305010
7121	Black African	54305011
13	Coloured	54305011
10	Indian or Asian	54305011
12	White	54305011
22	Other	54305011
9687	Black African	54305012
47	Coloured	54305012
9	Indian or Asian	54305012
34	White	54305012
6	Other	54305012
10782	Black African	54305013
4	Coloured	54305013
10	Indian or Asian	54305013
14	White	54305013
5	Other	54305013
10337	Black African	54305014
1	Coloured	54305014
13	Indian or Asian	54305014
1	White	54305014
6	Other	54305014
7478	Black African	54305015
6	Coloured	54305015
7	Indian or Asian	54305015
6	White	54305015
0	Other	54305015
8274	Black African	54305016
316	Coloured	54305016
57	Indian or Asian	54305016
13	White	54305016
82	Other	54305016
9094	Black African	54305017
74	Coloured	54305017
5	Indian or Asian	54305017
4	White	54305017
11	Other	54305017
8843	Black African	54305018
14	Coloured	54305018
8	Indian or Asian	54305018
4	White	54305018
7	Other	54305018
7696	Black African	54305019
8	Coloured	54305019
3	Indian or Asian	54305019
5	White	54305019
6	Other	54305019
9547	Black African	54305020
14	Coloured	54305020
17	Indian or Asian	54305020
20	White	54305020
2	Other	54305020
5261	Black African	52401001
124	Coloured	52401001
1236	Indian or Asian	52401001
299	White	52401001
30	Other	52401001
8965	Black African	52401002
276	Coloured	52401002
647	Indian or Asian	52401002
3185	White	52401002
58	Other	52401002
14781	Black African	52401003
42	Coloured	52401003
12	Indian or Asian	52401003
248	White	52401003
9	Other	52401003
7412	Black African	52401004
145	Coloured	52401004
414	Indian or Asian	52401004
403	White	52401004
17	Other	52401004
9745	Black African	52401005
37	Coloured	52401005
5	Indian or Asian	52401005
20	White	52401005
17	Other	52401005
8284	Black African	52401006
1054	Coloured	52401006
1497	Indian or Asian	52401006
527	White	52401006
111	Other	52401006
13218	Black African	52402001
9	Coloured	52402001
7	Indian or Asian	52402001
8	White	52402001
1	Other	52402001
9413	Black African	52402002
3	Coloured	52402002
14	Indian or Asian	52402002
7	White	52402002
1	Other	52402002
11143	Black African	52402003
5	Coloured	52402003
8	Indian or Asian	52402003
8	White	52402003
1	Other	52402003
8693	Black African	52402004
16	Coloured	52402004
4	Indian or Asian	52402004
4	White	52402004
2	Other	52402004
9445	Black African	52402005
8	Coloured	52402005
12	Indian or Asian	52402005
12	White	52402005
15	Other	52402005
7341	Black African	52402006
1	Coloured	52402006
7	Indian or Asian	52402006
4	White	52402006
23	Other	52402006
8802	Black African	52402007
2	Coloured	52402007
4	Indian or Asian	52402007
9	White	52402007
1	Other	52402007
8751	Black African	52402008
1	Coloured	52402008
8	Indian or Asian	52402008
2	White	52402008
0	Other	52402008
9492	Black African	52402009
8	Coloured	52402009
6	Indian or Asian	52402009
16	White	52402009
1	Other	52402009
10770	Black African	52402010
10	Coloured	52402010
8	Indian or Asian	52402010
13	White	52402010
0	Other	52402010
11981	Black African	52402011
8	Coloured	52402011
30	Indian or Asian	52402011
15	White	52402011
7	Other	52402011
8299	Black African	52402012
5	Coloured	52402012
5	Indian or Asian	52402012
0	White	52402012
5	Other	52402012
9672	Black African	52402013
10	Coloured	52402013
8	Indian or Asian	52402013
3	White	52402013
0	Other	52402013
10048	Black African	52402014
14	Coloured	52402014
19	Indian or Asian	52402014
15	White	52402014
84	Other	52402014
11038	Black African	52402015
4	Coloured	52402015
15	Indian or Asian	52402015
6	White	52402015
2	Other	52402015
8050	Black African	52402016
1	Coloured	52402016
7	Indian or Asian	52402016
1	White	52402016
1	Other	52402016
8597	Black African	52402017
4	Coloured	52402017
8	Indian or Asian	52402017
5	White	52402017
1	Other	52402017
9895	Black African	52404001
6	Coloured	52404001
28	Indian or Asian	52404001
7	White	52404001
7	Other	52404001
9285	Black African	52404002
0	Coloured	52404002
8	Indian or Asian	52404002
6	White	52404002
2	Other	52404002
10126	Black African	52404003
1	Coloured	52404003
9	Indian or Asian	52404003
2	White	52404003
0	Other	52404003
10081	Black African	52404004
7	Coloured	52404004
18	Indian or Asian	52404004
8	White	52404004
15	Other	52404004
13495	Black African	52404005
6	Coloured	52404005
8	Indian or Asian	52404005
4	White	52404005
2	Other	52404005
10125	Black African	52404006
7	Coloured	52404006
5	Indian or Asian	52404006
10	White	52404006
8	Other	52404006
7687	Black African	52404007
0	Coloured	52404007
0	Indian or Asian	52404007
2	White	52404007
4	Other	52404007
7206	Black African	52404008
2	Coloured	52404008
2	Indian or Asian	52404008
6	White	52404008
0	Other	52404008
9266	Black African	52404009
7	Coloured	52404009
7	Indian or Asian	52404009
7	White	52404009
6	Other	52404009
8809	Black African	52404010
7	Coloured	52404010
5	Indian or Asian	52404010
3	White	52404010
13	Other	52404010
9102	Black African	52404011
4	Coloured	52404011
5	Indian or Asian	52404011
6	White	52404011
2	Other	52404011
8415	Black African	52404012
7	Coloured	52404012
4	Indian or Asian	52404012
1	White	52404012
5	Other	52404012
7876	Black African	52404013
2	Coloured	52404013
1	Indian or Asian	52404013
2	White	52404013
0	Other	52404013
10498	Black African	52404014
18	Coloured	52404014
5	Indian or Asian	52404014
43	White	52404014
3	Other	52404014
8091	Black African	52404015
1	Coloured	52404015
1	Indian or Asian	52404015
1	White	52404015
1	Other	52404015
8933	Black African	52404016
6	Coloured	52404016
27	Indian or Asian	52404016
2	White	52404016
0	Other	52404016
10440	Black African	52404017
60	Coloured	52404017
74	Indian or Asian	52404017
18	White	52404017
25	Other	52404017
7737	Black African	52404018
6	Coloured	52404018
5	Indian or Asian	52404018
15	White	52404018
2	Other	52404018
9715	Black African	52404019
37	Coloured	52404019
21	Indian or Asian	52404019
125	White	52404019
15	Other	52404019
10575	Black African	52405001
4	Coloured	52405001
13	Indian or Asian	52405001
3	White	52405001
14	Other	52405001
9851	Black African	52405002
17	Coloured	52405002
10	Indian or Asian	52405002
1	White	52405002
7	Other	52405002
9582	Black African	52405003
4	Coloured	52405003
2	Indian or Asian	52405003
8	White	52405003
0	Other	52405003
8013	Black African	52405004
10	Coloured	52405004
16	Indian or Asian	52405004
42	White	52405004
0	Other	52405004
8829	Black African	52405005
113	Coloured	52405005
125	Indian or Asian	52405005
531	White	52405005
47	Other	52405005
8780	Black African	52405006
0	Coloured	52405006
5	Indian or Asian	52405006
7	White	52405006
4	Other	52405006
11177	Black African	52405007
37	Coloured	52405007
27	Indian or Asian	52405007
53	White	52405007
19	Other	52405007
11736	Black African	52405008
46	Coloured	52405008
11	Indian or Asian	52405008
115	White	52405008
3	Other	52405008
2662	Black African	52405009
378	Coloured	52405009
1520	Indian or Asian	52405009
259	White	52405009
56	Other	52405009
7408	Black African	52405010
117	Coloured	52405010
410	Indian or Asian	52405010
701	White	52405010
36	Other	52405010
8860	Black African	52405011
93	Coloured	52405011
158	Indian or Asian	52405011
589	White	52405011
7	Other	52405011
14890	Black African	52502001
139	Coloured	52502001
95	Indian or Asian	52502001
700	White	52502001
19	Other	52502001
3724	Black African	52502002
123	Coloured	52502002
345	Indian or Asian	52502002
6058	White	52502002
104	Other	52502002
1418	Black African	52502003
272	Coloured	52502003
6370	Indian or Asian	52502003
55	White	52502003
66	Other	52502003
3112	Black African	52502004
261	Coloured	52502004
2653	Indian or Asian	52502004
3027	White	52502004
141	Other	52502004
7716	Black African	52502005
87	Coloured	52502005
156	Indian or Asian	52502005
1972	White	52502005
27	Other	52502005
22007	Black African	52502006
8	Coloured	52502006
13	Indian or Asian	52502006
2	White	52502006
12	Other	52502006
16630	Black African	52502007
21	Coloured	52502007
17	Indian or Asian	52502007
4	White	52502007
14	Other	52502007
9075	Black African	52502008
13	Coloured	52502008
22	Indian or Asian	52502008
12	White	52502008
1	Other	52502008
14456	Black African	52502009
17	Coloured	52502009
20	Indian or Asian	52502009
11	White	52502009
10	Other	52502009
10587	Black African	52502010
12	Coloured	52502010
30	Indian or Asian	52502010
1	White	52502010
11	Other	52502010
10365	Black African	52502011
20	Coloured	52502011
14	Indian or Asian	52502011
2	White	52502011
43	Other	52502011
9383	Black African	52502012
5	Coloured	52502012
12	Indian or Asian	52502012
10	White	52502012
11	Other	52502012
8486	Black African	52502013
18	Coloured	52502013
11	Indian or Asian	52502013
10	White	52502013
17	Other	52502013
14314	Black African	52502014
26	Coloured	52502014
21	Indian or Asian	52502014
5	White	52502014
16	Other	52502014
11204	Black African	52502015
8	Coloured	52502015
21	Indian or Asian	52502015
2	White	52502015
0	Other	52502015
14745	Black African	52502016
23	Coloured	52502016
11	Indian or Asian	52502016
2	White	52502016
14	Other	52502016
11098	Black African	52502017
21	Coloured	52502017
30	Indian or Asian	52502017
12	White	52502017
18	Other	52502017
12788	Black African	52502018
15	Coloured	52502018
18	Indian or Asian	52502018
2	White	52502018
12	Other	52502018
9875	Black African	52502019
12	Coloured	52502019
94	Indian or Asian	52502019
2	White	52502019
34	Other	52502019
14610	Black African	52502020
18	Coloured	52502020
10	Indian or Asian	52502020
23	White	52502020
23	Other	52502020
13486	Black African	52502021
105	Coloured	52502021
45	Indian or Asian	52502021
218	White	52502021
11	Other	52502021
8710	Black African	52502022
26	Coloured	52502022
19	Indian or Asian	52502022
10	White	52502022
12	Other	52502022
9754	Black African	52502023
15	Coloured	52502023
2	Indian or Asian	52502023
7	White	52502023
16	Other	52502023
12652	Black African	52502024
17	Coloured	52502024
20	Indian or Asian	52502024
5	White	52502024
23	Other	52502024
8233	Black African	52502025
1387	Coloured	52502025
1584	Indian or Asian	52502025
2093	White	52502025
172	Other	52502025
7155	Black African	52502026
8	Coloured	52502026
5	Indian or Asian	52502026
4	White	52502026
9	Other	52502026
11010	Black African	52502027
4	Coloured	52502027
6	Indian or Asian	52502027
4	White	52502027
9	Other	52502027
7351	Black African	52502028
5	Coloured	52502028
23	Indian or Asian	52502028
6	White	52502028
13	Other	52502028
11024	Black African	52502029
14	Coloured	52502029
6	Indian or Asian	52502029
4	White	52502029
17	Other	52502029
12454	Black African	52502030
22	Coloured	52502030
5	Indian or Asian	52502030
5	White	52502030
5	Other	52502030
11346	Black African	52502031
12	Coloured	52502031
8	Indian or Asian	52502031
6	White	52502031
6	Other	52502031
10655	Black African	52503001
10	Coloured	52503001
3	Indian or Asian	52503001
240	White	52503001
0	Other	52503001
3771	Black African	52503002
363	Coloured	52503002
16	Indian or Asian	52503002
1084	White	52503002
56	Other	52503002
8961	Black African	52503003
54	Coloured	52503003
20	Indian or Asian	52503003
384	White	52503003
23	Other	52503003
8533	Black African	52503004
3	Coloured	52503004
3	Indian or Asian	52503004
259	White	52503004
3	Other	52503004
9180	Black African	52504001
95	Coloured	52504001
158	Indian or Asian	52504001
300	White	52504001
15	Other	52504001
6290	Black African	52504002
132	Coloured	52504002
1218	Indian or Asian	52504002
413	White	52504002
41	Other	52504002
9033	Black African	52504003
17	Coloured	52504003
1	Indian or Asian	52504003
41	White	52504003
9	Other	52504003
9195	Black African	52504004
5	Coloured	52504004
1	Indian or Asian	52504004
6	White	52504004
6	Other	52504004
7411	Black African	52504005
6	Coloured	52504005
1	Indian or Asian	52504005
5	White	52504005
1	Other	52504005
9531	Black African	52504006
5	Coloured	52504006
0	Indian or Asian	52504006
1	White	52504006
1	Other	52504006
8091	Black African	52504007
0	Coloured	52504007
0	Indian or Asian	52504007
0	White	52504007
2	Other	52504007
9419	Black African	52504008
7	Coloured	52504008
10	Indian or Asian	52504008
8	White	52504008
2	Other	52504008
9772	Black African	52504009
2	Coloured	52504009
7	Indian or Asian	52504009
5	White	52504009
1	Other	52504009
11464	Black African	52504010
2	Coloured	52504010
13	Indian or Asian	52504010
2	White	52504010
2	Other	52504010
10180	Black African	52504011
15	Coloured	52504011
29	Indian or Asian	52504011
6	White	52504011
2	Other	52504011
9868	Black African	52603001
14	Coloured	52603001
18	Indian or Asian	52603001
102	White	52603001
5	Other	52603001
8411	Black African	52603002
26	Coloured	52603002
12	Indian or Asian	52603002
71	White	52603002
2	Other	52603002
11059	Black African	52603003
22	Coloured	52603003
3	Indian or Asian	52603003
89	White	52603003
2	Other	52603003
6946	Black African	52603004
1	Coloured	52603004
2	Indian or Asian	52603004
24	White	52603004
4	Other	52603004
10542	Black African	52603005
16	Coloured	52603005
37	Indian or Asian	52603005
150	White	52603005
14	Other	52603005
10209	Black African	52603006
13	Coloured	52603006
22	Indian or Asian	52603006
90	White	52603006
2	Other	52603006
10754	Black African	52603007
20	Coloured	52603007
4	Indian or Asian	52603007
159	White	52603007
10	Other	52603007
2327	Black African	52603008
111	Coloured	52603008
280	Indian or Asian	52603008
2016	White	52603008
97	Other	52603008
2787	Black African	52603009
146	Coloured	52603009
266	Indian or Asian	52603009
3135	White	52603009
19	Other	52603009
2699	Black African	52603010
0	Coloured	52603010
1	Indian or Asian	52603010
7	White	52603010
0	Other	52603010
10614	Black African	52603011
106	Coloured	52603011
64	Indian or Asian	52603011
562	White	52603011
13	Other	52603011
12326	Black African	52603012
66	Coloured	52603012
29	Indian or Asian	52603012
267	White	52603012
21	Other	52603012
14213	Black African	52603013
27	Coloured	52603013
6	Indian or Asian	52603013
6	White	52603013
2	Other	52603013
8569	Black African	52603014
6	Coloured	52603014
23	Indian or Asian	52603014
2	White	52603014
4	Other	52603014
8100	Black African	52603015
0	Coloured	52603015
2	Indian or Asian	52603015
2	White	52603015
2	Other	52603015
9397	Black African	52603016
6	Coloured	52603016
7	Indian or Asian	52603016
2	White	52603016
5	Other	52603016
11878	Black African	52603017
0	Coloured	52603017
0	Indian or Asian	52603017
2	White	52603017
4	Other	52603017
8048	Black African	52603018
5	Coloured	52603018
3	Indian or Asian	52603018
4	White	52603018
27	Other	52603018
7402	Black African	52603019
6	Coloured	52603019
17	Indian or Asian	52603019
0	White	52603019
15	Other	52603019
11091	Black African	52603020
4	Coloured	52603020
7	Indian or Asian	52603020
4	White	52603020
16	Other	52603020
12577	Black African	52603021
4	Coloured	52603021
1	Indian or Asian	52603021
9	White	52603021
15	Other	52603021
11622	Black African	52603022
457	Coloured	52603022
81	Indian or Asian	52603022
679	White	52603022
16	Other	52603022
12194	Black African	52601001
4	Coloured	52601001
10	Indian or Asian	52601001
494	White	52601001
8	Other	52601001
14087	Black African	52601002
9	Coloured	52601002
30	Indian or Asian	52601002
6	White	52601002
8	Other	52601002
10112	Black African	52601003
21	Coloured	52601003
44	Indian or Asian	52601003
695	White	52601003
80	Other	52601003
10057	Black African	52601004
6	Coloured	52601004
33	Indian or Asian	52601004
5	White	52601004
12	Other	52601004
8489	Black African	52601005
2	Coloured	52601005
24	Indian or Asian	52601005
5	White	52601005
6	Other	52601005
8109	Black African	52601006
1	Coloured	52601006
18	Indian or Asian	52601006
2	White	52601006
5	Other	52601006
8389	Black African	52601007
10	Coloured	52601007
2	Indian or Asian	52601007
186	White	52601007
20	Other	52601007
8783	Black African	52601008
11	Coloured	52601008
8	Indian or Asian	52601008
60	White	52601008
5	Other	52601008
11345	Black African	52602001
3	Coloured	52602001
0	Indian or Asian	52602001
153	White	52602001
3	Other	52602001
8644	Black African	52602002
8	Coloured	52602002
2	Indian or Asian	52602002
4	White	52602002
4	Other	52602002
8051	Black African	52602003
1	Coloured	52602003
5	Indian or Asian	52602003
5	White	52602003
2	Other	52602003
10697	Black African	52602004
14	Coloured	52602004
5	Indian or Asian	52602004
6	White	52602004
15	Other	52602004
8277	Black African	52602005
6	Coloured	52602005
11	Indian or Asian	52602005
20	White	52602005
7	Other	52602005
7691	Black African	52602006
1	Coloured	52602006
4	Indian or Asian	52602006
17	White	52602006
4	Other	52602006
7272	Black African	52602007
3	Coloured	52602007
8	Indian or Asian	52602007
10	White	52602007
8	Other	52602007
7856	Black African	52602008
1	Coloured	52602008
1	Indian or Asian	52602008
2	White	52602008
1	Other	52602008
11934	Black African	52602009
14	Coloured	52602009
20	Indian or Asian	52602009
2	White	52602009
13	Other	52602009
10846	Black African	52602010
22	Coloured	52602010
6	Indian or Asian	52602010
4	White	52602010
2	Other	52602010
9486	Black African	52602011
12	Coloured	52602011
71	Indian or Asian	52602011
1260	White	52602011
61	Other	52602011
9335	Black African	52602012
7	Coloured	52602012
16	Indian or Asian	52602012
8	White	52602012
8	Other	52602012
5150	Black African	52602013
1	Coloured	52602013
7	Indian or Asian	52602013
1	White	52602013
0	Other	52602013
8283	Black African	52602014
12	Coloured	52602014
25	Indian or Asian	52602014
452	White	52602014
14	Other	52602014
10551	Black African	52605001
29	Coloured	52605001
15	Indian or Asian	52605001
1	White	52605001
1	Other	52605001
10492	Black African	52605002
16	Coloured	52605002
3	Indian or Asian	52605002
6	White	52605002
1	Other	52605002
10861	Black African	52605003
10	Coloured	52605003
11	Indian or Asian	52605003
2	White	52605003
2	Other	52605003
12228	Black African	52605004
2	Coloured	52605004
5	Indian or Asian	52605004
11	White	52605004
9	Other	52605004
9424	Black African	52605005
8	Coloured	52605005
11	Indian or Asian	52605005
1	White	52605005
4	Other	52605005
7531	Black African	52605006
6	Coloured	52605006
16	Indian or Asian	52605006
13	White	52605006
4	Other	52605006
9904	Black African	52605007
10	Coloured	52605007
20	Indian or Asian	52605007
6	White	52605007
2	Other	52605007
8258	Black African	52605008
0	Coloured	52605008
11	Indian or Asian	52605008
3	White	52605008
2	Other	52605008
13001	Black African	52605009
45	Coloured	52605009
41	Indian or Asian	52605009
18	White	52605009
16	Other	52605009
8894	Black African	52605010
12	Coloured	52605010
18	Indian or Asian	52605010
0	White	52605010
3	Other	52605010
9983	Black African	52605011
13	Coloured	52605011
5	Indian or Asian	52605011
9	White	52605011
11	Other	52605011
10146	Black African	52605012
4	Coloured	52605012
1	Indian or Asian	52605012
7	White	52605012
6	Other	52605012
6536	Black African	52605013
2	Coloured	52605013
5	Indian or Asian	52605013
4	White	52605013
0	Other	52605013
11221	Black African	52605014
1	Coloured	52605014
20	Indian or Asian	52605014
20	White	52605014
5	Other	52605014
7497	Black African	52605015
5	Coloured	52605015
14	Indian or Asian	52605015
3	White	52605015
1	Other	52605015
15141	Black African	52605016
59	Coloured	52605016
40	Indian or Asian	52605016
63	White	52605016
37	Other	52605016
8442	Black African	52605017
1	Coloured	52605017
7	Indian or Asian	52605017
2	White	52605017
1	Other	52605017
10422	Black African	52605018
20	Coloured	52605018
18	Indian or Asian	52605018
7	White	52605018
9	Other	52605018
352	Black African	52605019
7	Coloured	52605019
22	Indian or Asian	52605019
9	White	52605019
12	Other	52605019
5778	Black African	52605020
6	Coloured	52605020
15	Indian or Asian	52605020
5	White	52605020
3	Other	52605020
7344	Black African	52605021
11	Coloured	52605021
9	Indian or Asian	52605021
4	White	52605021
1	Other	52605021
6418	Black African	52606001
1	Coloured	52606001
0	Indian or Asian	52606001
3	White	52606001
0	Other	52606001
9589	Black African	52606002
30	Coloured	52606002
27	Indian or Asian	52606002
7	White	52606002
7	Other	52606002
6637	Black African	52606003
9	Coloured	52606003
32	Indian or Asian	52606003
3	White	52606003
1	Other	52606003
7425	Black African	52606004
4	Coloured	52606004
2	Indian or Asian	52606004
2	White	52606004
0	Other	52606004
9069	Black African	52606005
1	Coloured	52606005
6	Indian or Asian	52606005
4	White	52606005
5	Other	52606005
6571	Black African	52606006
1	Coloured	52606006
6	Indian or Asian	52606006
1	White	52606006
2	Other	52606006
6724	Black African	52606007
5	Coloured	52606007
8	Indian or Asian	52606007
12	White	52606007
0	Other	52606007
9432	Black African	52606008
14	Coloured	52606008
7	Indian or Asian	52606008
9	White	52606008
7	Other	52606008
8151	Black African	52606009
8	Coloured	52606009
8	Indian or Asian	52606009
1	White	52606009
6	Other	52606009
6222	Black African	52606010
1	Coloured	52606010
2	Indian or Asian	52606010
1	White	52606010
2	Other	52606010
8766	Black African	52606011
2	Coloured	52606011
4	Indian or Asian	52606011
4	White	52606011
8	Other	52606011
6160	Black African	52606012
25	Coloured	52606012
18	Indian or Asian	52606012
26	White	52606012
35	Other	52606012
9223	Black African	52606013
5	Coloured	52606013
11	Indian or Asian	52606013
42	White	52606013
18	Other	52606013
9233	Black African	52606014
2	Coloured	52606014
8	Indian or Asian	52606014
3	White	52606014
1	Other	52606014
8941	Black African	52606015
7	Coloured	52606015
8	Indian or Asian	52606015
17	White	52606015
2	Other	52606015
8922	Black African	52606016
14	Coloured	52606016
9	Indian or Asian	52606016
103	White	52606016
23	Other	52606016
8667	Black African	52606017
12	Coloured	52606017
13	Indian or Asian	52606017
2	White	52606017
0	Other	52606017
8977	Black African	52606018
35	Coloured	52606018
4	Indian or Asian	52606018
15	White	52606018
38	Other	52606018
4507	Black African	52606019
4	Coloured	52606019
5	Indian or Asian	52606019
5	White	52606019
12	Other	52606019
8074	Black African	52606020
5	Coloured	52606020
16	Indian or Asian	52606020
15	White	52606020
7	Other	52606020
8423	Black African	52606021
1	Coloured	52606021
9	Indian or Asian	52606021
21	White	52606021
0	Other	52606021
7859	Black African	52606022
2	Coloured	52606022
9	Indian or Asian	52606022
6	White	52606022
34	Other	52606022
6606	Black African	52606023
5	Coloured	52606023
13	Indian or Asian	52606023
10	White	52606023
7	Other	52606023
6752	Black African	52606024
10	Coloured	52606024
7	Indian or Asian	52606024
5	White	52606024
0	Other	52606024
8480	Black African	52904001
6	Coloured	52904001
10	Indian or Asian	52904001
3	White	52904001
0	Other	52904001
9791	Black African	52904002
7	Coloured	52904002
3	Indian or Asian	52904002
5	White	52904002
0	Other	52904002
8356	Black African	52904003
2	Coloured	52904003
10	Indian or Asian	52904003
2	White	52904003
3	Other	52904003
10133	Black African	52904004
2	Coloured	52904004
6	Indian or Asian	52904004
10	White	52904004
21	Other	52904004
10514	Black African	52904005
21	Coloured	52904005
25	Indian or Asian	52904005
16	White	52904005
10	Other	52904005
7510	Black African	52904006
5	Coloured	52904006
4	Indian or Asian	52904006
4	White	52904006
4	Other	52904006
7958	Black African	52904007
5	Coloured	52904007
2	Indian or Asian	52904007
10	White	52904007
1	Other	52904007
9209	Black African	52904008
11	Coloured	52904008
3	Indian or Asian	52904008
8	White	52904008
0	Other	52904008
7917	Black African	52904009
1	Coloured	52904009
7	Indian or Asian	52904009
3	White	52904009
5	Other	52904009
9775	Black African	52904010
15	Coloured	52904010
16	Indian or Asian	52904010
6	White	52904010
4	Other	52904010
6756	Black African	52904011
2	Coloured	52904011
7	Indian or Asian	52904011
28	White	52904011
9	Other	52904011
8135	Black African	52901001
9	Coloured	52901001
16	Indian or Asian	52901001
11	White	52901001
2	Other	52901001
8456	Black African	52901002
22	Coloured	52901002
12	Indian or Asian	52901002
12	White	52901002
2	Other	52901002
5782	Black African	52901003
413	Coloured	52901003
797	Indian or Asian	52901003
1128	White	52901003
43	Other	52901003
8275	Black African	52901004
129	Coloured	52901004
1336	Indian or Asian	52901004
84	White	52901004
28	Other	52901004
7019	Black African	52901005
13	Coloured	52901005
14	Indian or Asian	52901005
6	White	52901005
2	Other	52901005
6849	Black African	52901006
1	Coloured	52901006
5	Indian or Asian	52901006
3	White	52901006
0	Other	52901006
9487	Black African	52901007
9	Coloured	52901007
7	Indian or Asian	52901007
1	White	52901007
12	Other	52901007
9305	Black African	52901008
7	Coloured	52901008
14	Indian or Asian	52901008
20	White	52901008
12	Other	52901008
9170	Black African	52901009
27	Coloured	52901009
10	Indian or Asian	52901009
9	White	52901009
5	Other	52901009
8165	Black African	52901010
6	Coloured	52901010
24	Indian or Asian	52901010
11	White	52901010
10	Other	52901010
7918	Black African	52901011
4	Coloured	52901011
6	Indian or Asian	52901011
7	White	52901011
4	Other	52901011
12919	Black African	52901012
10	Coloured	52901012
9	Indian or Asian	52901012
7	White	52901012
12	Other	52901012
3549	Black African	52901013
11	Coloured	52901013
0	Indian or Asian	52901013
0	White	52901013
0	Other	52901013
9727	Black African	52901014
24	Coloured	52901014
5	Indian or Asian	52901014
9	White	52901014
10	Other	52901014
4029	Black African	52901015
8	Coloured	52901015
3	Indian or Asian	52901015
1	White	52901015
17	Other	52901015
9133	Black African	52901016
20	Coloured	52901016
21	Indian or Asian	52901016
6	White	52901016
5	Other	52901016
5641	Black African	52901017
7	Coloured	52901017
8	Indian or Asian	52901017
2	White	52901017
32	Other	52901017
7146	Black African	52902001
6	Coloured	52902001
253	Indian or Asian	52902001
38	White	52902001
2	Other	52902001
7711	Black African	52902002
59	Coloured	52902002
1320	Indian or Asian	52902002
166	White	52902002
28	Other	52902002
4505	Black African	52902003
29	Coloured	52902003
1057	Indian or Asian	52902003
515	White	52902003
22	Other	52902003
7997	Black African	52902004
87	Coloured	52902004
372	Indian or Asian	52902004
259	White	52902004
6	Other	52902004
7594	Black African	52902005
12	Coloured	52902005
207	Indian or Asian	52902005
4	White	52902005
51	Other	52902005
1199	Black African	52902006
109	Coloured	52902006
569	Indian or Asian	52902006
5684	White	52902006
50	Other	52902006
9957	Black African	52902007
266	Coloured	52902007
764	Indian or Asian	52902007
119	White	52902007
51	Other	52902007
7837	Black African	52902008
43	Coloured	52902008
6	Indian or Asian	52902008
1	White	52902008
10	Other	52902008
7442	Black African	52902009
8	Coloured	52902009
11	Indian or Asian	52902009
9	White	52902009
0	Other	52902009
10178	Black African	52902010
17	Coloured	52902010
13	Indian or Asian	52902010
6	White	52902010
2	Other	52902010
7583	Black African	52902011
88	Coloured	52902011
968	Indian or Asian	52902011
539	White	52902011
19	Other	52902011
11322	Black African	52902012
21	Coloured	52902012
5	Indian or Asian	52902012
10	White	52902012
92	Other	52902012
2974	Black African	52902013
125	Coloured	52902013
5315	Indian or Asian	52902013
10	White	52902013
104	Other	52902013
8058	Black African	52902014
22	Coloured	52902014
14	Indian or Asian	52902014
0	White	52902014
116	Other	52902014
10556	Black African	52902015
59	Coloured	52902015
1009	Indian or Asian	52902015
33	White	52902015
60	Other	52902015
2795	Black African	52902016
151	Coloured	52902016
6565	Indian or Asian	52902016
26	White	52902016
32	Other	52902016
1563	Black African	52902017
106	Coloured	52902017
5060	Indian or Asian	52902017
37	White	52902017
41	Other	52902017
7993	Black African	52902018
2	Coloured	52902018
0	Indian or Asian	52902018
2	White	52902018
83	Other	52902018
2927	Black African	52902019
543	Coloured	52902019
4209	Indian or Asian	52902019
245	White	52902019
38	Other	52902019
2832	Black African	52902020
70	Coloured	52902020
601	Indian or Asian	52902020
2	White	52902020
1	Other	52902020
6300	Black African	52902021
21	Coloured	52902021
458	Indian or Asian	52902021
166	White	52902021
46	Other	52902021
3664	Black African	52902022
160	Coloured	52902022
2841	Indian or Asian	52902022
4920	White	52902022
107	Other	52902022
10705	Black African	52902023
57	Coloured	52902023
382	Indian or Asian	52902023
6	White	52902023
10	Other	52902023
11390	Black African	52902024
45	Coloured	52902024
35	Indian or Asian	52902024
5	White	52902024
28	Other	52902024
8026	Black African	52902025
38	Coloured	52902025
66	Indian or Asian	52902025
24	White	52902025
57	Other	52902025
5618	Black African	52902026
17	Coloured	52902026
266	Indian or Asian	52902026
17	White	52902026
214	Other	52902026
6412	Black African	52902027
52	Coloured	52902027
166	Indian or Asian	52902027
41	White	52902027
2	Other	52902027
5969	Black African	52903001
43	Coloured	52903001
402	Indian or Asian	52903001
111	White	52903001
5	Other	52903001
4984	Black African	52903002
10	Coloured	52903002
16	Indian or Asian	52903002
11	White	52903002
548	Other	52903002
8424	Black African	52903003
16	Coloured	52903003
399	Indian or Asian	52903003
150	White	52903003
53	Other	52903003
6410	Black African	52903004
3	Coloured	52903004
1	Indian or Asian	52903004
2	White	52903004
0	Other	52903004
6387	Black African	52903005
5	Coloured	52903005
8	Indian or Asian	52903005
4	White	52903005
1	Other	52903005
8980	Black African	52903006
9	Coloured	52903006
13	Indian or Asian	52903006
9	White	52903006
18	Other	52903006
4998	Black African	52903007
1	Coloured	52903007
5	Indian or Asian	52903007
2	White	52903007
1	Other	52903007
7435	Black African	52903008
2	Coloured	52903008
11	Indian or Asian	52903008
0	White	52903008
1	Other	52903008
5061	Black African	52903009
0	Coloured	52903009
11	Indian or Asian	52903009
12	White	52903009
1	Other	52903009
8268	Black African	52903010
1	Coloured	52903010
9	Indian or Asian	52903010
29	White	52903010
2	Other	52903010
7730	Black African	52903011
3	Coloured	52903011
9	Indian or Asian	52903011
5	White	52903011
0	Other	52903011
10816	Black African	52903012
14	Coloured	52903012
21	Indian or Asian	52903012
8	White	52903012
11	Other	52903012
8845	Black African	52903013
20	Coloured	52903013
5	Indian or Asian	52903013
8	White	52903013
5	Other	52903013
6549	Black African	52903014
26	Coloured	52903014
22	Indian or Asian	52903014
14	White	52903014
1	Other	52903014
6686	Black African	52903015
2	Coloured	52903015
19	Indian or Asian	52903015
3	White	52903015
13	Other	52903015
7699	Black African	52903016
35	Coloured	52903016
12	Indian or Asian	52903016
36	White	52903016
3	Other	52903016
7303	Black African	52903017
4	Coloured	52903017
8	Indian or Asian	52903017
1	White	52903017
1	Other	52903017
7056	Black African	52903018
1	Coloured	52903018
12	Indian or Asian	52903018
2	White	52903018
6	Other	52903018
8913	Black African	52903019
15	Coloured	52903019
19	Indian or Asian	52903019
3	White	52903019
9	Other	52903019
30327	Black African	59500001
109	Coloured	59500001
115	Indian or Asian	59500001
220	White	59500001
47	Other	59500001
30167	Black African	59500002
14	Coloured	59500002
232	Indian or Asian	59500002
13	White	59500002
10	Other	59500002
42305	Black African	59500003
38	Coloured	59500003
22	Indian or Asian	59500003
14	White	59500003
27	Other	59500003
36737	Black African	59500004
90	Coloured	59500004
136	Indian or Asian	59500004
975	White	59500004
26	Other	59500004
28292	Black African	59500005
35	Coloured	59500005
57	Indian or Asian	59500005
194	White	59500005
23	Other	59500005
27682	Black African	59500006
45	Coloured	59500006
31	Indian or Asian	59500006
17	White	59500006
31	Other	59500006
29377	Black African	59500007
34	Coloured	59500007
52	Indian or Asian	59500007
178	White	59500007
10	Other	59500007
24825	Black African	59500008
176	Coloured	59500008
429	Indian or Asian	59500008
10030	White	59500008
80	Other	59500008
21308	Black African	59500009
198	Coloured	59500009
241	Indian or Asian	59500009
10052	White	59500009
125	Other	59500009
3371	Black African	59500010
188	Coloured	59500010
1229	Indian or Asian	59500010
17355	White	59500010
104	Other	59500010
32539	Black African	59500011
11995	Coloured	59500011
3813	Indian or Asian	59500011
90	White	59500011
267	Other	59500011
26885	Black African	59500012
80	Coloured	59500012
42	Indian or Asian	59500012
18	White	59500012
29	Other	59500012
28117	Black African	59500013
4257	Coloured	59500013
2915	Indian or Asian	59500013
18	White	59500013
400	Other	59500013
26661	Black African	59500014
85	Coloured	59500014
32	Indian or Asian	59500014
13	White	59500014
37	Other	59500014
38113	Black African	59500015
380	Coloured	59500015
646	Indian or Asian	59500015
100	White	59500015
105	Other	59500015
26975	Black African	59500016
572	Coloured	59500016
1993	Indian or Asian	59500016
6875	White	59500016
162	Other	59500016
26709	Black African	59500017
277	Coloured	59500017
9640	Indian or Asian	59500017
43	White	59500017
62	Other	59500017
8357	Black African	59500018
789	Coloured	59500018
3479	Indian or Asian	59500018
15605	White	59500018
230	Other	59500018
40359	Black African	59500019
142	Coloured	59500019
2398	Indian or Asian	59500019
530	White	59500019
91	Other	59500019
23446	Black African	59500020
30	Coloured	59500020
27	Indian or Asian	59500020
16	White	59500020
18	Other	59500020
19802	Black African	59500021
319	Coloured	59500021
858	Indian or Asian	59500021
5932	White	59500021
70	Other	59500021
25435	Black African	59500022
34	Coloured	59500022
29	Indian or Asian	59500022
16	White	59500022
20	Other	59500022
14238	Black African	59500023
738	Coloured	59500023
15150	Indian or Asian	59500023
158	White	59500023
305	Other	59500023
22021	Black African	59500024
546	Coloured	59500024
4372	Indian or Asian	59500024
6322	White	59500024
195	Other	59500024
20475	Black African	59500025
1618	Coloured	59500025
15397	Indian or Asian	59500025
1133	White	59500025
402	Other	59500025
22544	Black African	59500026
1439	Coloured	59500026
6458	Indian or Asian	59500026
3539	White	59500026
621	Other	59500026
6813	Black African	59500027
1007	Coloured	59500027
4955	Indian or Asian	59500027
9954	White	59500027
245	Other	59500027
16762	Black African	59500028
799	Coloured	59500028
3921	Indian or Asian	59500028
1215	White	59500028
472	Other	59500028
33388	Black African	59500029
105	Coloured	59500029
253	Indian or Asian	59500029
23	White	59500029
62	Other	59500029
25471	Black African	59500030
2225	Coloured	59500030
8857	Indian or Asian	59500030
761	White	59500030
232	Other	59500030
7627	Black African	59500031
7294	Coloured	59500031
12439	Indian or Asian	59500031
5230	White	59500031
521	Other	59500031
18151	Black African	59500032
672	Coloured	59500032
2601	Indian or Asian	59500032
428	White	59500032
272	Other	59500032
14424	Black African	59500033
1575	Coloured	59500033
2951	Indian or Asian	59500033
12448	White	59500033
530	Other	59500033
16776	Black African	59500034
4164	Coloured	59500034
15815	Indian or Asian	59500034
156	White	59500034
302	Other	59500034
5481	Black African	59500035
633	Coloured	59500035
7564	Indian or Asian	59500035
17084	White	59500035
323	Other	59500035
7846	Black African	59500036
1221	Coloured	59500036
4360	Indian or Asian	59500036
17441	White	59500036
290	Other	59500036
29952	Black African	59500037
613	Coloured	59500037
9851	Indian or Asian	59500037
125	White	59500037
236	Other	59500037
38828	Black African	59500038
28	Coloured	59500038
45	Indian or Asian	59500038
16	White	59500038
35	Other	59500038
24548	Black African	59500039
15	Coloured	59500039
12	Indian or Asian	59500039
11	White	59500039
28	Other	59500039
29930	Black African	59500040
39	Coloured	59500040
41	Indian or Asian	59500040
19	White	59500040
13	Other	59500040
34968	Black African	59500041
193	Coloured	59500041
63	Indian or Asian	59500041
23	White	59500041
86	Other	59500041
38638	Black African	59500042
92	Coloured	59500042
42	Indian or Asian	59500042
25	White	59500042
47	Other	59500042
32923	Black African	59500043
116	Coloured	59500043
113	Indian or Asian	59500043
23	White	59500043
37	Other	59500043
41814	Black African	59500044
39	Coloured	59500044
53	Indian or Asian	59500044
14	White	59500044
58	Other	59500044
38462	Black African	59500045
60	Coloured	59500045
81	Indian or Asian	59500045
59	White	59500045
31	Other	59500045
29341	Black African	59500046
44	Coloured	59500046
25	Indian or Asian	59500046
34	White	59500046
15	Other	59500046
30783	Black African	59500047
45	Coloured	59500047
32	Indian or Asian	59500047
17	White	59500047
46	Other	59500047
5955	Black African	59500048
507	Coloured	59500048
23272	Indian or Asian	59500048
53	White	59500048
293	Other	59500048
2465	Black African	59500049
713	Coloured	59500049
32495	Indian or Asian	59500049
79	White	59500049
417	Other	59500049
1027	Black African	59500050
442	Coloured	59500050
26821	Indian or Asian	59500050
38	White	59500050
219	Other	59500050
9722	Black African	59500051
717	Coloured	59500051
29362	Indian or Asian	59500051
52	White	59500051
364	Other	59500051
5063	Black African	59500052
630	Coloured	59500052
29277	Indian or Asian	59500052
63	White	59500052
262	Other	59500052
32167	Black African	59500053
115	Coloured	59500053
3494	Indian or Asian	59500053
30	White	59500053
51	Other	59500053
25272	Black African	59500054
235	Coloured	59500054
5558	Indian or Asian	59500054
28	White	59500054
85	Other	59500054
42846	Black African	59500055
69	Coloured	59500055
38	Indian or Asian	59500055
35	White	59500055
67	Other	59500055
41868	Black African	59500056
107	Coloured	59500056
108	Indian or Asian	59500056
40	White	59500056
112	Other	59500056
35378	Black African	59500057
84	Coloured	59500057
94	Indian or Asian	59500057
12	White	59500057
65	Other	59500057
25781	Black African	59500058
387	Coloured	59500058
8656	Indian or Asian	59500058
2615	White	59500058
228	Other	59500058
36644	Black African	59500059
372	Coloured	59500059
8100	Indian or Asian	59500059
80	White	59500059
147	Other	59500059
20270	Black African	59500060
469	Coloured	59500060
16201	Indian or Asian	59500060
75	White	59500060
221	Other	59500060
10797	Black African	59500061
346	Coloured	59500061
21825	Indian or Asian	59500061
134	White	59500061
168	Other	59500061
25974	Black African	59500062
238	Coloured	59500062
4063	Indian or Asian	59500062
183	White	59500062
140	Other	59500062
5710	Black African	59500063
645	Coloured	59500063
14902	Indian or Asian	59500063
12542	White	59500063
225	Other	59500063
21658	Black African	59500064
1236	Coloured	59500064
4398	Indian or Asian	59500064
8162	White	59500064
282	Other	59500064
15330	Black African	59500065
1205	Coloured	59500065
18606	Indian or Asian	59500065
7299	White	59500065
366	Other	59500065
7165	Black African	59500066
4912	Coloured	59500066
4047	Indian or Asian	59500066
14517	White	59500066
213	Other	59500066
44548	Black African	59500067
155	Coloured	59500067
54	Indian or Asian	59500067
69	White	59500067
49	Other	59500067
5259	Black African	59500068
20728	Coloured	59500068
13109	Indian or Asian	59500068
105	White	59500068
154	Other	59500068
11813	Black African	59500069
590	Coloured	59500069
19871	Indian or Asian	59500069
25	White	59500069
294	Other	59500069
1819	Black African	59500070
456	Coloured	59500070
27471	Indian or Asian	59500070
46	White	59500070
186	Other	59500070
13267	Black African	59500071
355	Coloured	59500071
22597	Indian or Asian	59500071
66	White	59500071
108	Other	59500071
23004	Black African	59500072
364	Coloured	59500072
15756	Indian or Asian	59500072
37	White	59500072
163	Other	59500072
1698	Black African	59500073
430	Coloured	59500073
29111	Indian or Asian	59500073
50	White	59500073
166	Other	59500073
22809	Black African	59500074
36	Coloured	59500074
20	Indian or Asian	59500074
7	White	59500074
6	Other	59500074
17104	Black African	59500075
252	Coloured	59500075
4132	Indian or Asian	59500075
99	White	59500075
82	Other	59500075
19280	Black African	59500076
28	Coloured	59500076
34	Indian or Asian	59500076
23	White	59500076
22	Other	59500076
42772	Black African	59500077
184	Coloured	59500077
2956	Indian or Asian	59500077
51	White	59500077
84	Other	59500077
28266	Black African	59500078
22	Coloured	59500078
21	Indian or Asian	59500078
7	White	59500078
68	Other	59500078
38342	Black African	59500079
76	Coloured	59500079
489	Indian or Asian	59500079
26	White	59500079
51	Other	59500079
30562	Black African	59500080
26	Coloured	59500080
22	Indian or Asian	59500080
26	White	59500080
43	Other	59500080
24593	Black African	59500081
27	Coloured	59500081
33	Indian or Asian	59500081
24	White	59500081
5	Other	59500081
29083	Black African	59500082
55	Coloured	59500082
27	Indian or Asian	59500082
39	White	59500082
20	Other	59500082
36125	Black African	59500083
55	Coloured	59500083
36	Indian or Asian	59500083
26	White	59500083
11	Other	59500083
38875	Black African	59500084
73	Coloured	59500084
133	Indian or Asian	59500084
27	White	59500084
68	Other	59500084
32005	Black African	59500085
40	Coloured	59500085
42	Indian or Asian	59500085
5	White	59500085
18	Other	59500085
33814	Black African	59500086
89	Coloured	59500086
42	Indian or Asian	59500086
24	White	59500086
64	Other	59500086
26537	Black African	59500087
28	Coloured	59500087
28	Indian or Asian	59500087
12	White	59500087
15	Other	59500087
35208	Black African	59500088
94	Coloured	59500088
154	Indian or Asian	59500088
43	White	59500088
51	Other	59500088
29258	Black African	59500089
194	Coloured	59500089
2239	Indian or Asian	59500089
23	White	59500089
47	Other	59500089
9737	Black African	59500090
407	Coloured	59500090
15897	Indian or Asian	59500090
82	White	59500090
173	Other	59500090
35119	Black African	59500091
65	Coloured	59500091
32	Indian or Asian	59500091
23	White	59500091
18	Other	59500091
23464	Black African	59500092
192	Coloured	59500092
2346	Indian or Asian	59500092
1526	White	59500092
110	Other	59500092
28848	Black African	59500093
192	Coloured	59500093
1159	Indian or Asian	59500093
5733	White	59500093
93	Other	59500093
29849	Black African	59500094
43	Coloured	59500094
31	Indian or Asian	59500094
21	White	59500094
24	Other	59500094
38387	Black African	59500095
53	Coloured	59500095
39	Indian or Asian	59500095
22	White	59500095
44	Other	59500095
34133	Black African	59500096
40	Coloured	59500096
151	Indian or Asian	59500096
16	White	59500096
15	Other	59500096
5625	Black African	59500097
513	Coloured	59500097
1527	Indian or Asian	59500097
17291	White	59500097
116	Other	59500097
45034	Black African	59500098
171	Coloured	59500098
998	Indian or Asian	59500098
276	White	59500098
32	Other	59500098
28589	Black African	59500099
359	Coloured	59500099
6447	Indian or Asian	59500099
2087	White	59500099
91	Other	59500099
32166	Black African	59500100
39	Coloured	59500100
53	Indian or Asian	59500100
35	White	59500100
34	Other	59500100
20328	Black African	59500101
444	Coloured	59500101
1285	Indian or Asian	59500101
3241	White	59500101
161	Other	59500101
27636	Black African	59500102
274	Coloured	59500102
9289	Indian or Asian	59500102
3922	White	59500102
213	Other	59500102
24402	Black African	59500103
121	Coloured	59500103
517	Indian or Asian	59500103
2671	White	59500103
71	Other	59500103
7286	Black African	93301001
0	Coloured	93301001
3	Indian or Asian	93301001
0	White	93301001
2	Other	93301001
5352	Black African	93301002
0	Coloured	93301002
2	Indian or Asian	93301002
0	White	93301002
0	Other	93301002
8613	Black African	93301003
2	Coloured	93301003
10	Indian or Asian	93301003
6	White	93301003
6	Other	93301003
8266	Black African	93301004
4	Coloured	93301004
2	Indian or Asian	93301004
0	White	93301004
0	Other	93301004
8710	Black African	93301005
5	Coloured	93301005
7	Indian or Asian	93301005
4	White	93301005
2	Other	93301005
7905	Black African	93301006
3	Coloured	93301006
8	Indian or Asian	93301006
20	White	93301006
0	Other	93301006
11748	Black African	93301007
3	Coloured	93301007
3	Indian or Asian	93301007
2	White	93301007
0	Other	93301007
7551	Black African	93301008
3	Coloured	93301008
2	Indian or Asian	93301008
1	White	93301008
12	Other	93301008
6082	Black African	93301009
0	Coloured	93301009
1	Indian or Asian	93301009
1	White	93301009
1	Other	93301009
7508	Black African	93301010
4	Coloured	93301010
2	Indian or Asian	93301010
0	White	93301010
0	Other	93301010
7281	Black African	93301011
14	Coloured	93301011
265	Indian or Asian	93301011
40	White	93301011
38	Other	93301011
12426	Black African	93301012
26	Coloured	93301012
38	Indian or Asian	93301012
14	White	93301012
26	Other	93301012
11629	Black African	93301013
11	Coloured	93301013
66	Indian or Asian	93301013
6	White	93301013
21	Other	93301013
10192	Black African	93301014
13	Coloured	93301014
12	Indian or Asian	93301014
3	White	93301014
2	Other	93301014
6529	Black African	93301015
4	Coloured	93301015
0	Indian or Asian	93301015
0	White	93301015
3	Other	93301015
6057	Black African	93301016
0	Coloured	93301016
2	Indian or Asian	93301016
2	White	93301016
0	Other	93301016
6619	Black African	93301017
0	Coloured	93301017
1	Indian or Asian	93301017
1	White	93301017
2	Other	93301017
7722	Black African	93301018
3	Coloured	93301018
2	Indian or Asian	93301018
3	White	93301018
0	Other	93301018
9378	Black African	93301019
5	Coloured	93301019
1	Indian or Asian	93301019
129	White	93301019
11	Other	93301019
7302	Black African	93301020
5	Coloured	93301020
1	Indian or Asian	93301020
3	White	93301020
0	Other	93301020
8118	Black African	93301021
17	Coloured	93301021
159	Indian or Asian	93301021
77	White	93301021
16	Other	93301021
6742	Black African	93301022
2	Coloured	93301022
8	Indian or Asian	93301022
1	White	93301022
0	Other	93301022
6807	Black African	93301023
5	Coloured	93301023
2	Indian or Asian	93301023
0	White	93301023
3	Other	93301023
8430	Black African	93301024
3	Coloured	93301024
3	Indian or Asian	93301024
2	White	93301024
0	Other	93301024
11680	Black African	93301025
10	Coloured	93301025
3	Indian or Asian	93301025
1	White	93301025
0	Other	93301025
7767	Black African	93301026
11	Coloured	93301026
1	Indian or Asian	93301026
14	White	93301026
4	Other	93301026
6688	Black African	93301027
11	Coloured	93301027
3	Indian or Asian	93301027
0	White	93301027
0	Other	93301027
8564	Black African	93301028
2	Coloured	93301028
2	Indian or Asian	93301028
1	White	93301028
7	Other	93301028
8189	Black African	93301029
0	Coloured	93301029
1	Indian or Asian	93301029
1	White	93301029
0	Other	93301029
5803	Black African	93301030
0	Coloured	93301030
1	Indian or Asian	93301030
0	White	93301030
1	Other	93301030
7453	Black African	93302001
1	Coloured	93302001
6	Indian or Asian	93302001
3	White	93302001
1	Other	93302001
5038	Black African	93302002
10	Coloured	93302002
0	Indian or Asian	93302002
1	White	93302002
1	Other	93302002
5616	Black African	93302003
5	Coloured	93302003
5	Indian or Asian	93302003
1	White	93302003
5	Other	93302003
8470	Black African	93302004
15	Coloured	93302004
13	Indian or Asian	93302004
12	White	93302004
17	Other	93302004
6964	Black African	93302005
3	Coloured	93302005
0	Indian or Asian	93302005
2	White	93302005
0	Other	93302005
7869	Black African	93302006
6	Coloured	93302006
0	Indian or Asian	93302006
5	White	93302006
7	Other	93302006
6470	Black African	93302007
1	Coloured	93302007
2	Indian or Asian	93302007
1	White	93302007
0	Other	93302007
7320	Black African	93302008
18	Coloured	93302008
5	Indian or Asian	93302008
7	White	93302008
12	Other	93302008
8269	Black African	93302009
4	Coloured	93302009
7	Indian or Asian	93302009
1	White	93302009
6	Other	93302009
8794	Black African	93302010
6	Coloured	93302010
2	Indian or Asian	93302010
0	White	93302010
6	Other	93302010
7804	Black African	93302011
0	Coloured	93302011
1	Indian or Asian	93302011
1	White	93302011
7	Other	93302011
6807	Black African	93302012
0	Coloured	93302012
1	Indian or Asian	93302012
6	White	93302012
8	Other	93302012
7853	Black African	93302013
16	Coloured	93302013
19	Indian or Asian	93302013
3	White	93302013
29	Other	93302013
7402	Black African	93302014
6	Coloured	93302014
9	Indian or Asian	93302014
182	White	93302014
50	Other	93302014
7762	Black African	93302015
0	Coloured	93302015
4	Indian or Asian	93302015
4	White	93302015
7	Other	93302015
7434	Black African	93302016
0	Coloured	93302016
2	Indian or Asian	93302016
4	White	93302016
9	Other	93302016
7493	Black African	93302017
0	Coloured	93302017
3	Indian or Asian	93302017
0	White	93302017
8	Other	93302017
7576	Black African	93302018
14	Coloured	93302018
1	Indian or Asian	93302018
5	White	93302018
8	Other	93302018
7623	Black African	93302019
9	Coloured	93302019
7	Indian or Asian	93302019
0	White	93302019
6	Other	93302019
7724	Black African	93302020
5	Coloured	93302020
6	Indian or Asian	93302020
1	White	93302020
2	Other	93302020
7777	Black African	93302021
1	Coloured	93302021
5	Indian or Asian	93302021
0	White	93302021
19	Other	93302021
8722	Black African	93302022
1	Coloured	93302022
0	Indian or Asian	93302022
5	White	93302022
3	Other	93302022
7440	Black African	93302023
0	Coloured	93302023
3	Indian or Asian	93302023
2	White	93302023
3	Other	93302023
4489	Black African	93302024
2	Coloured	93302024
7	Indian or Asian	93302024
0	White	93302024
0	Other	93302024
7040	Black African	93302025
2	Coloured	93302025
1	Indian or Asian	93302025
2	White	93302025
7	Other	93302025
7006	Black African	93302026
0	Coloured	93302026
3	Indian or Asian	93302026
1	White	93302026
10	Other	93302026
5425	Black African	93302027
3	Coloured	93302027
2	Indian or Asian	93302027
1	White	93302027
6	Other	93302027
4677	Black African	93302028
0	Coloured	93302028
9	Indian or Asian	93302028
1	White	93302028
0	Other	93302028
9901	Black African	93302029
38	Coloured	93302029
55	Indian or Asian	93302029
1544	White	93302029
102	Other	93302029
11401	Black African	93303001
9	Coloured	93303001
21	Indian or Asian	93303001
6	White	93303001
21	Other	93303001
10425	Black African	93303002
0	Coloured	93303002
9	Indian or Asian	93303002
16	White	93303002
4	Other	93303002
11319	Black African	93303003
2	Coloured	93303003
3	Indian or Asian	93303003
9	White	93303003
2	Other	93303003
11343	Black African	93303004
3	Coloured	93303004
7	Indian or Asian	93303004
4	White	93303004
6	Other	93303004
13485	Black African	93303005
3	Coloured	93303005
3	Indian or Asian	93303005
28	White	93303005
6	Other	93303005
10220	Black African	93303006
2	Coloured	93303006
8	Indian or Asian	93303006
7	White	93303006
17	Other	93303006
10739	Black African	93303007
11	Coloured	93303007
27	Indian or Asian	93303007
1	White	93303007
3	Other	93303007
9047	Black African	93303008
0	Coloured	93303008
7	Indian or Asian	93303008
7	White	93303008
1	Other	93303008
17904	Black African	93303009
3	Coloured	93303009
12	Indian or Asian	93303009
4	White	93303009
7	Other	93303009
6241	Black African	93303010
0	Coloured	93303010
1	Indian or Asian	93303010
2	White	93303010
1	Other	93303010
7713	Black African	93303011
0	Coloured	93303011
5	Indian or Asian	93303011
1	White	93303011
0	Other	93303011
11215	Black African	93303012
2	Coloured	93303012
7	Indian or Asian	93303012
4	White	93303012
0	Other	93303012
11815	Black African	93303013
160	Coloured	93303013
14	Indian or Asian	93303013
1237	White	93303013
14	Other	93303013
8735	Black African	93303014
70	Coloured	93303014
357	Indian or Asian	93303014
4577	White	93303014
92	Other	93303014
2626	Black African	93303015
98	Coloured	93303015
652	Indian or Asian	93303015
2617	White	93303015
60	Other	93303015
15860	Black African	93303016
45	Coloured	93303016
31	Indian or Asian	93303016
1607	White	93303016
66	Other	93303016
12461	Black African	93303017
22	Coloured	93303017
6	Indian or Asian	93303017
433	White	93303017
14	Other	93303017
12713	Black African	93303018
18	Coloured	93303018
8	Indian or Asian	93303018
3	White	93303018
23	Other	93303018
8245	Black African	93303019
37	Coloured	93303019
24	Indian or Asian	93303019
6	White	93303019
7	Other	93303019
12007	Black African	93303020
23	Coloured	93303020
6	Indian or Asian	93303020
4	White	93303020
10	Other	93303020
14148	Black African	93303021
56	Coloured	93303021
7	Indian or Asian	93303021
129	White	93303021
15	Other	93303021
9012	Black African	93303022
8	Coloured	93303022
81	Indian or Asian	93303022
13	White	93303022
9	Other	93303022
8599	Black African	93303023
14	Coloured	93303023
2	Indian or Asian	93303023
547	White	93303023
11	Other	93303023
10333	Black African	93303024
10	Coloured	93303024
7	Indian or Asian	93303024
2	White	93303024
17	Other	93303024
11312	Black African	93303025
21	Coloured	93303025
10	Indian or Asian	93303025
137	White	93303025
93	Other	93303025
9331	Black African	93303026
3	Coloured	93303026
6	Indian or Asian	93303026
95	White	93303026
6	Other	93303026
11504	Black African	93303027
8	Coloured	93303027
11	Indian or Asian	93303027
40	White	93303027
0	Other	93303027
11242	Black African	93303028
3	Coloured	93303028
7	Indian or Asian	93303028
1	White	93303028
0	Other	93303028
15562	Black African	93303029
6	Coloured	93303029
8	Indian or Asian	93303029
3	White	93303029
9	Other	93303029
7108	Black African	93303030
2	Coloured	93303030
7	Indian or Asian	93303030
1	White	93303030
7	Other	93303030
11989	Black African	93303031
30	Coloured	93303031
38	Indian or Asian	93303031
9	White	93303031
15	Other	93303031
12149	Black African	93303032
1	Coloured	93303032
12	Indian or Asian	93303032
1	White	93303032
0	Other	93303032
16031	Black African	93303033
1	Coloured	93303033
7	Indian or Asian	93303033
2	White	93303033
6	Other	93303033
12068	Black African	93303034
1	Coloured	93303034
1	Indian or Asian	93303034
5	White	93303034
3	Other	93303034
12604	Black African	93304001
8	Coloured	93304001
7	Indian or Asian	93304001
3	White	93304001
13	Other	93304001
6530	Black African	93304002
7	Coloured	93304002
0	Indian or Asian	93304002
70	White	93304002
1	Other	93304002
6382	Black African	93304003
47	Coloured	93304003
1	Indian or Asian	93304003
2	White	93304003
4	Other	93304003
6987	Black African	93304004
8	Coloured	93304004
18	Indian or Asian	93304004
5	White	93304004
1	Other	93304004
6237	Black African	93304005
20	Coloured	93304005
4	Indian or Asian	93304005
9	White	93304005
1	Other	93304005
6500	Black African	93304006
10	Coloured	93304006
1	Indian or Asian	93304006
3	White	93304006
1	Other	93304006
5987	Black African	93304007
1	Coloured	93304007
3	Indian or Asian	93304007
0	White	93304007
11	Other	93304007
7821	Black African	93304008
10	Coloured	93304008
10	Indian or Asian	93304008
29	White	93304008
4	Other	93304008
6991	Black African	93304009
2	Coloured	93304009
3	Indian or Asian	93304009
3	White	93304009
2	Other	93304009
7339	Black African	93304010
13	Coloured	93304010
4	Indian or Asian	93304010
468	White	93304010
5	Other	93304010
2646	Black African	93304011
123	Coloured	93304011
72	Indian or Asian	93304011
2841	White	93304011
18	Other	93304011
2810	Black African	93304012
161	Coloured	93304012
136	Indian or Asian	93304012
5123	White	93304012
45	Other	93304012
8736	Black African	93304013
13	Coloured	93304013
7	Indian or Asian	93304013
9	White	93304013
4	Other	93304013
3133	Black African	93304014
6	Coloured	93304014
17	Indian or Asian	93304014
4	White	93304014
12	Other	93304014
8755	Black African	93304015
10	Coloured	93304015
8	Indian or Asian	93304015
199	White	93304015
3	Other	93304015
13045	Black African	93304016
2	Coloured	93304016
0	Indian or Asian	93304016
4	White	93304016
0	Other	93304016
16140	Black African	93304017
22	Coloured	93304017
5	Indian or Asian	93304017
6	White	93304017
1	Other	93304017
11439	Black African	93304018
13	Coloured	93304018
13	Indian or Asian	93304018
848	White	93304018
13	Other	93304018
3020	Black African	93305001
186	Coloured	93305001
108	Indian or Asian	93305001
2269	White	93305001
39	Other	93305001
7265	Black African	93305002
17	Coloured	93305002
10	Indian or Asian	93305002
933	White	93305002
30	Other	93305002
6839	Black African	93305003
13	Coloured	93305003
3	Indian or Asian	93305003
2	White	93305003
3	Other	93305003
6290	Black African	93305004
3	Coloured	93305004
2	Indian or Asian	93305004
1	White	93305004
1	Other	93305004
5899	Black African	93305005
0	Coloured	93305005
5	Indian or Asian	93305005
1	White	93305005
21	Other	93305005
6974	Black African	93305006
11	Coloured	93305006
8	Indian or Asian	93305006
231	White	93305006
11	Other	93305006
6170	Black African	93305007
2	Coloured	93305007
7	Indian or Asian	93305007
3	White	93305007
2	Other	93305007
7649	Black African	93305008
11	Coloured	93305008
3	Indian or Asian	93305008
2	White	93305008
3	Other	93305008
6342	Black African	93305009
4	Coloured	93305009
10	Indian or Asian	93305009
2	White	93305009
8	Other	93305009
6616	Black African	93305010
16	Coloured	93305010
9	Indian or Asian	93305010
3	White	93305010
4	Other	93305010
8750	Black African	93305011
2	Coloured	93305011
30	Indian or Asian	93305011
0	White	93305011
10	Other	93305011
8213	Black African	93305012
15	Coloured	93305012
12	Indian or Asian	93305012
5	White	93305012
12	Other	93305012
5915	Black African	93305013
12	Coloured	93305013
6	Indian or Asian	93305013
137	White	93305013
14	Other	93305013
4647	Black African	93305014
1	Coloured	93305014
4	Indian or Asian	93305014
0	White	93305014
6	Other	93305014
6529	Black African	93402001
0	Coloured	93402001
0	Indian or Asian	93402001
2	White	93402001
4	Other	93402001
6974	Black African	93402002
10	Coloured	93402002
3	Indian or Asian	93402002
5	White	93402002
1	Other	93402002
7357	Black African	93402003
4	Coloured	93402003
0	Indian or Asian	93402003
1	White	93402003
18	Other	93402003
6433	Black African	93402004
3	Coloured	93402004
0	Indian or Asian	93402004
1	White	93402004
4	Other	93402004
9178	Black African	93402005
8	Coloured	93402005
21	Indian or Asian	93402005
2	White	93402005
8	Other	93402005
6192	Black African	93402006
11	Coloured	93402006
1	Indian or Asian	93402006
1	White	93402006
1	Other	93402006
6398	Black African	93402007
0	Coloured	93402007
0	Indian or Asian	93402007
0	White	93402007
7	Other	93402007
5352	Black African	93402008
1	Coloured	93402008
6	Indian or Asian	93402008
0	White	93402008
0	Other	93402008
8117	Black African	93402009
1	Coloured	93402009
10	Indian or Asian	93402009
0	White	93402009
4	Other	93402009
6037	Black African	93402010
0	Coloured	93402010
9	Indian or Asian	93402010
1	White	93402010
16	Other	93402010
8411	Black African	93402011
11	Coloured	93402011
6	Indian or Asian	93402011
2	White	93402011
0	Other	93402011
8166	Black African	93402012
2	Coloured	93402012
7	Indian or Asian	93402012
134	White	93402012
1	Other	93402012
6078	Black African	93402013
35	Coloured	93402013
6	Indian or Asian	93402013
265	White	93402013
12	Other	93402013
17406	Black African	93403001
3	Coloured	93403001
3	Indian or Asian	93403001
2	White	93403001
2	Other	93403001
11910	Black African	93403002
0	Coloured	93403002
1	Indian or Asian	93403002
20	White	93403002
2	Other	93403002
14663	Black African	93403003
0	Coloured	93403003
2	Indian or Asian	93403003
1	White	93403003
6	Other	93403003
15197	Black African	93403004
2	Coloured	93403004
5	Indian or Asian	93403004
5	White	93403004
2	Other	93403004
16573	Black African	93403005
7	Coloured	93403005
9	Indian or Asian	93403005
31	White	93403005
124	Other	93403005
15402	Black African	93403006
1	Coloured	93403006
2	Indian or Asian	93403006
8	White	93403006
1	Other	93403006
18230	Black African	93403007
2	Coloured	93403007
8	Indian or Asian	93403007
3	White	93403007
3	Other	93403007
14018	Black African	93403008
3	Coloured	93403008
9	Indian or Asian	93403008
31	White	93403008
2	Other	93403008
14091	Black African	93403009
0	Coloured	93403009
3	Indian or Asian	93403009
2	White	93403009
2	Other	93403009
14404	Black African	93403010
1	Coloured	93403010
3	Indian or Asian	93403010
5	White	93403010
0	Other	93403010
17004	Black African	93403011
8	Coloured	93403011
4	Indian or Asian	93403011
6	White	93403011
1	Other	93403011
14443	Black African	93403012
6	Coloured	93403012
7	Indian or Asian	93403012
6	White	93403012
3	Other	93403012
17565	Black African	93403013
28	Coloured	93403013
15	Indian or Asian	93403013
25	White	93403013
33	Other	93403013
15084	Black African	93403014
4	Coloured	93403014
2	Indian or Asian	93403014
1	White	93403014
10	Other	93403014
17871	Black African	93403015
6	Coloured	93403015
6	Indian or Asian	93403015
12	White	93403015
2	Other	93403015
12604	Black African	93403016
3	Coloured	93403016
7	Indian or Asian	93403016
8	White	93403016
3	Other	93403016
12733	Black African	93403017
8	Coloured	93403017
8	Indian or Asian	93403017
4	White	93403017
4	Other	93403017
16195	Black African	93403018
8	Coloured	93403018
6	Indian or Asian	93403018
3	White	93403018
1	Other	93403018
16013	Black African	93403019
3	Coloured	93403019
23	Indian or Asian	93403019
18	White	93403019
4	Other	93403019
16931	Black African	93403020
17	Coloured	93403020
111	Indian or Asian	93403020
6	White	93403020
10	Other	93403020
16836	Black African	93403021
74	Coloured	93403021
2243	Indian or Asian	93403021
44	White	93403021
40	Other	93403021
16207	Black African	93403022
33	Coloured	93403022
116	Indian or Asian	93403022
21	White	93403022
9	Other	93403022
16127	Black African	93403023
13	Coloured	93403023
308	Indian or Asian	93403023
44	White	93403023
60	Other	93403023
18628	Black African	93403024
70	Coloured	93403024
8	Indian or Asian	93403024
2	White	93403024
5	Other	93403024
15309	Black African	93403025
9	Coloured	93403025
5	Indian or Asian	93403025
1	White	93403025
2	Other	93403025
14527	Black African	93403026
2	Coloured	93403026
2	Indian or Asian	93403026
0	White	93403026
8	Other	93403026
17080	Black African	93403027
4	Coloured	93403027
3	Indian or Asian	93403027
16	White	93403027
3	Other	93403027
13405	Black African	93403028
12	Coloured	93403028
2	Indian or Asian	93403028
1	White	93403028
17	Other	93403028
16816	Black African	93403029
2	Coloured	93403029
9	Indian or Asian	93403029
10	White	93403029
18	Other	93403029
12985	Black African	93403030
0	Coloured	93403030
2	Indian or Asian	93403030
2	White	93403030
6	Other	93403030
12872	Black African	93403031
0	Coloured	93403031
2	Indian or Asian	93403031
1	White	93403031
0	Other	93403031
14440	Black African	93403032
2	Coloured	93403032
3	Indian or Asian	93403032
3	White	93403032
43	Other	93403032
16979	Black African	93403033
1	Coloured	93403033
0	Indian or Asian	93403033
6	White	93403033
2	Other	93403033
15051	Black African	93403034
2	Coloured	93403034
9	Indian or Asian	93403034
2	White	93403034
0	Other	93403034
17655	Black African	93403035
3	Coloured	93403035
7	Indian or Asian	93403035
23	White	93403035
5	Other	93403035
16585	Black African	93403036
5	Coloured	93403036
63	Indian or Asian	93403036
8	White	93403036
5	Other	93403036
14202	Black African	93403037
40	Coloured	93403037
18	Indian or Asian	93403037
37	White	93403037
30	Other	93403037
14628	Black African	93403038
8	Coloured	93403038
11	Indian or Asian	93403038
19	White	93403038
6	Other	93403038
13371	Black African	93403039
0	Coloured	93403039
0	Indian or Asian	93403039
0	White	93403039
9	Other	93403039
12041	Black African	93403040
11	Coloured	93403040
2	Indian or Asian	93403040
4	White	93403040
6	Other	93403040
13049	Black African	93401001
33	Coloured	93401001
17	Indian or Asian	93401001
255	White	93401001
10	Other	93401001
15836	Black African	93401002
25	Coloured	93401002
9	Indian or Asian	93401002
860	White	93401002
18	Other	93401002
12717	Black African	93401003
13	Coloured	93401003
6	Indian or Asian	93401003
5	White	93401003
19	Other	93401003
4898	Black African	93401004
13	Coloured	93401004
23	Indian or Asian	93401004
150	White	93401004
13	Other	93401004
10355	Black African	93401005
7	Coloured	93401005
8	Indian or Asian	93401005
6	White	93401005
86	Other	93401005
7430	Black African	93401006
137	Coloured	93401006
267	Indian or Asian	93401006
2009	White	93401006
85	Other	93401006
11988	Black African	93404001
0	Coloured	93404001
2	Indian or Asian	93404001
2	White	93404001
1	Other	93404001
11532	Black African	93404002
10	Coloured	93404002
18	Indian or Asian	93404002
1	White	93404002
5	Other	93404002
14310	Black African	93404003
4	Coloured	93404003
20	Indian or Asian	93404003
126	White	93404003
22	Other	93404003
17468	Black African	93404004
10	Coloured	93404004
2	Indian or Asian	93404004
9	White	93404004
4	Other	93404004
12518	Black African	93404005
2	Coloured	93404005
14	Indian or Asian	93404005
0	White	93404005
9	Other	93404005
12203	Black African	93404006
8	Coloured	93404006
10	Indian or Asian	93404006
1	White	93404006
4	Other	93404006
11896	Black African	93404007
3	Coloured	93404007
10	Indian or Asian	93404007
9	White	93404007
2	Other	93404007
13377	Black African	93404008
14	Coloured	93404008
13	Indian or Asian	93404008
14	White	93404008
3	Other	93404008
12909	Black African	93404009
2	Coloured	93404009
9	Indian or Asian	93404009
3	White	93404009
2	Other	93404009
9675	Black African	93404010
15	Coloured	93404010
3	Indian or Asian	93404010
3	White	93404010
7	Other	93404010
10686	Black African	93404011
13	Coloured	93404011
8	Indian or Asian	93404011
6	White	93404011
4	Other	93404011
10384	Black African	93404012
2	Coloured	93404012
1	Indian or Asian	93404012
3	White	93404012
0	Other	93404012
13931	Black African	93404013
4	Coloured	93404013
1	Indian or Asian	93404013
8	White	93404013
11	Other	93404013
13634	Black African	93404014
5	Coloured	93404014
11	Indian or Asian	93404014
4	White	93404014
4	Other	93404014
17254	Black African	93404015
18	Coloured	93404015
11	Indian or Asian	93404015
374	White	93404015
8	Other	93404015
13778	Black African	93404016
11	Coloured	93404016
13	Indian or Asian	93404016
6	White	93404016
9	Other	93404016
12774	Black African	93404017
10	Coloured	93404017
17	Indian or Asian	93404017
9	White	93404017
112	Other	93404017
11434	Black African	93404018
1	Coloured	93404018
12	Indian or Asian	93404018
4	White	93404018
4	Other	93404018
11982	Black African	93404019
11	Coloured	93404019
14	Indian or Asian	93404019
5	White	93404019
9	Other	93404019
15649	Black African	93404020
149	Coloured	93404020
1305	Indian or Asian	93404020
3353	White	93404020
52	Other	93404020
16511	Black African	93404021
242	Coloured	93404021
187	Indian or Asian	93404021
4043	White	93404021
56	Other	93404021
14886	Black African	93404022
11	Coloured	93404022
9	Indian or Asian	93404022
4	White	93404022
2	Other	93404022
10625	Black African	93404023
88	Coloured	93404023
11	Indian or Asian	93404023
657	White	93404023
18	Other	93404023
16753	Black African	93404024
9	Coloured	93404024
8	Indian or Asian	93404024
2	White	93404024
19	Other	93404024
15022	Black African	93404025
5	Coloured	93404025
11	Indian or Asian	93404025
6	White	93404025
7	Other	93404025
13762	Black African	93404026
375	Coloured	93404026
3	Indian or Asian	93404026
270	White	93404026
20	Other	93404026
10473	Black African	93404027
2	Coloured	93404027
0	Indian or Asian	93404027
1	White	93404027
1	Other	93404027
14902	Black African	93404028
15	Coloured	93404028
9	Indian or Asian	93404028
894	White	93404028
35	Other	93404028
11627	Black African	93404029
12	Coloured	93404029
5	Indian or Asian	93404029
2	White	93404029
3	Other	93404029
11098	Black African	93404030
18	Coloured	93404030
4	Indian or Asian	93404030
186	White	93404030
8	Other	93404030
12393	Black African	93404031
8	Coloured	93404031
1	Indian or Asian	93404031
313	White	93404031
14	Other	93404031
14761	Black African	93404032
3	Coloured	93404032
14	Indian or Asian	93404032
63	White	93404032
6	Other	93404032
14179	Black African	93404033
14	Coloured	93404033
15	Indian or Asian	93404033
44	White	93404033
22	Other	93404033
14054	Black African	93404034
5	Coloured	93404034
5	Indian or Asian	93404034
10	White	93404034
2	Other	93404034
13593	Black African	93404035
4	Coloured	93404035
37	Indian or Asian	93404035
2	White	93404035
6	Other	93404035
15766	Black African	93404036
1	Coloured	93404036
1	Indian or Asian	93404036
9	White	93404036
11	Other	93404036
10984	Black African	93404037
9	Coloured	93404037
2	Indian or Asian	93404037
3	White	93404037
2	Other	93404037
11350	Black African	93404038
1	Coloured	93404038
3	Indian or Asian	93404038
2	White	93404038
10	Other	93404038
5973	Black African	93501001
0	Coloured	93501001
6	Indian or Asian	93501001
1	White	93501001
8	Other	93501001
7504	Black African	93501002
2	Coloured	93501002
3	Indian or Asian	93501002
2	White	93501002
10	Other	93501002
7110	Black African	93501003
1	Coloured	93501003
0	Indian or Asian	93501003
2	White	93501003
3	Other	93501003
6249	Black African	93501004
0	Coloured	93501004
2	Indian or Asian	93501004
2	White	93501004
0	Other	93501004
7054	Black African	93501005
10	Coloured	93501005
4	Indian or Asian	93501005
75	White	93501005
10	Other	93501005
6989	Black African	93501006
0	Coloured	93501006
3	Indian or Asian	93501006
3	White	93501006
3	Other	93501006
8537	Black African	93501007
0	Coloured	93501007
2	Indian or Asian	93501007
0	White	93501007
0	Other	93501007
5304	Black African	93501008
0	Coloured	93501008
3	Indian or Asian	93501008
2	White	93501008
8	Other	93501008
9502	Black African	93501009
13	Coloured	93501009
14	Indian or Asian	93501009
4	White	93501009
0	Other	93501009
8899	Black African	93501010
2	Coloured	93501010
4	Indian or Asian	93501010
4	White	93501010
8	Other	93501010
7618	Black African	93501011
3	Coloured	93501011
3	Indian or Asian	93501011
9	White	93501011
3	Other	93501011
7279	Black African	93501012
1	Coloured	93501012
8	Indian or Asian	93501012
192	White	93501012
17	Other	93501012
6296	Black African	93501013
2	Coloured	93501013
4	Indian or Asian	93501013
0	White	93501013
2	Other	93501013
7427	Black African	93501014
2	Coloured	93501014
3	Indian or Asian	93501014
2	White	93501014
2	Other	93501014
6858	Black African	93501015
4	Coloured	93501015
6	Indian or Asian	93501015
1	White	93501015
4	Other	93501015
6462	Black African	93501016
1	Coloured	93501016
11	Indian or Asian	93501016
0	White	93501016
3	Other	93501016
7313	Black African	93501017
4	Coloured	93501017
4	Indian or Asian	93501017
12	White	93501017
1	Other	93501017
8617	Black African	93501018
5	Coloured	93501018
15	Indian or Asian	93501018
186	White	93501018
26	Other	93501018
15030	Black African	93501019
8	Coloured	93501019
49	Indian or Asian	93501019
4	White	93501019
97	Other	93501019
6775	Black African	93501020
0	Coloured	93501020
1	Indian or Asian	93501020
1	White	93501020
8	Other	93501020
8279	Black African	93501021
6	Coloured	93501021
3	Indian or Asian	93501021
503	White	93501021
118	Other	93501021
5834	Black African	93502001
3	Coloured	93502001
0	Indian or Asian	93502001
0	White	93502001
6	Other	93502001
6839	Black African	93502002
1	Coloured	93502002
3	Indian or Asian	93502002
0	White	93502002
0	Other	93502002
7559	Black African	93502003
0	Coloured	93502003
1	Indian or Asian	93502003
0	White	93502003
7	Other	93502003
6623	Black African	93502004
0	Coloured	93502004
4	Indian or Asian	93502004
1	White	93502004
3	Other	93502004
6470	Black African	93502005
2	Coloured	93502005
3	Indian or Asian	93502005
1	White	93502005
5	Other	93502005
5907	Black African	93502006
5	Coloured	93502006
6	Indian or Asian	93502006
0	White	93502006
45	Other	93502006
8422	Black African	93502007
2	Coloured	93502007
7	Indian or Asian	93502007
3	White	93502007
24	Other	93502007
7052	Black African	93502008
0	Coloured	93502008
3	Indian or Asian	93502008
4	White	93502008
3	Other	93502008
7197	Black African	93502009
8	Coloured	93502009
9	Indian or Asian	93502009
7	White	93502009
16	Other	93502009
7144	Black African	93502010
5	Coloured	93502010
16	Indian or Asian	93502010
3	White	93502010
1	Other	93502010
6443	Black African	93502011
1	Coloured	93502011
7	Indian or Asian	93502011
12	White	93502011
15	Other	93502011
5921	Black African	93502012
8	Coloured	93502012
2	Indian or Asian	93502012
2	White	93502012
7	Other	93502012
6300	Black African	93502013
0	Coloured	93502013
1	Indian or Asian	93502013
6	White	93502013
17	Other	93502013
7489	Black African	93502014
3	Coloured	93502014
3	Indian or Asian	93502014
7	White	93502014
9	Other	93502014
7241	Black African	93502015
0	Coloured	93502015
11	Indian or Asian	93502015
2	White	93502015
3	Other	93502015
7746	Black African	93502016
3	Coloured	93502016
1	Indian or Asian	93502016
2	White	93502016
6	Other	93502016
6289	Black African	93502017
11	Coloured	93502017
3	Indian or Asian	93502017
5	White	93502017
64	Other	93502017
6993	Black African	93502018
14	Coloured	93502018
14	Indian or Asian	93502018
27	White	93502018
13	Other	93502018
7168	Black African	93502019
8	Coloured	93502019
11	Indian or Asian	93502019
1	White	93502019
15	Other	93502019
9541	Black African	93503001
23	Coloured	93503001
27	Indian or Asian	93503001
796	White	93503001
79	Other	93503001
8884	Black African	93503002
3	Coloured	93503002
5	Indian or Asian	93503002
2	White	93503002
14	Other	93503002
5885	Black African	93503003
10	Coloured	93503003
9	Indian or Asian	93503003
8	White	93503003
1	Other	93503003
7148	Black African	93503004
0	Coloured	93503004
8	Indian or Asian	93503004
2	White	93503004
13	Other	93503004
4916	Black African	93503005
0	Coloured	93503005
8	Indian or Asian	93503005
4	White	93503005
2	Other	93503005
8434	Black African	93503006
5	Coloured	93503006
10	Indian or Asian	93503006
3	White	93503006
47	Other	93503006
10065	Black African	93503007
13	Coloured	93503007
18	Indian or Asian	93503007
10	White	93503007
11	Other	93503007
9736	Black African	93503008
3	Coloured	93503008
9	Indian or Asian	93503008
1	White	93503008
16	Other	93503008
7988	Black African	93503009
11	Coloured	93503009
7	Indian or Asian	93503009
5	White	93503009
31	Other	93503009
7423	Black African	93503010
46	Coloured	93503010
18	Indian or Asian	93503010
352	White	93503010
44	Other	93503010
5026	Black African	93503011
8	Coloured	93503011
5	Indian or Asian	93503011
1	White	93503011
20	Other	93503011
8335	Black African	93503012
14	Coloured	93503012
5	Indian or Asian	93503012
17	White	93503012
9	Other	93503012
7076	Black African	93503013
2	Coloured	93503013
6	Indian or Asian	93503013
3	White	93503013
7	Other	93503013
6087	Black African	93503014
0	Coloured	93503014
0	Indian or Asian	93503014
4	White	93503014
0	Other	93503014
17666	Black African	93504001
129	Coloured	93504001
41	Indian or Asian	93504001
2628	White	93504001
67	Other	93504001
15698	Black African	93504002
9	Coloured	93504002
10	Indian or Asian	93504002
4	White	93504002
21	Other	93504002
11414	Black African	93504003
4	Coloured	93504003
7	Indian or Asian	93504003
2	White	93504003
8	Other	93504003
16460	Black African	93504004
13	Coloured	93504004
3	Indian or Asian	93504004
17	White	93504004
13	Other	93504004
17153	Black African	93504005
2	Coloured	93504005
9	Indian or Asian	93504005
3	White	93504005
16	Other	93504005
15597	Black African	93504006
135	Coloured	93504006
107	Indian or Asian	93504006
3877	White	93504006
29	Other	93504006
14236	Black African	93504007
0	Coloured	93504007
12	Indian or Asian	93504007
2	White	93504007
41	Other	93504007
38648	Black African	93504008
161	Coloured	93504008
43	Indian or Asian	93504008
529	White	93504008
119	Other	93504008
13444	Black African	93504009
55	Coloured	93504009
11	Indian or Asian	93504009
16	White	93504009
6	Other	93504009
15281	Black African	93504010
15	Coloured	93504010
3	Indian or Asian	93504010
16	White	93504010
45	Other	93504010
18249	Black African	93504011
24	Coloured	93504011
9	Indian or Asian	93504011
7	White	93504011
45	Other	93504011
8793	Black African	93504012
14	Coloured	93504012
2	Indian or Asian	93504012
32	White	93504012
6	Other	93504012
12782	Black African	93504013
15	Coloured	93504013
25	Indian or Asian	93504013
9	White	93504013
31	Other	93504013
17566	Black African	93504014
79	Coloured	93504014
38	Indian or Asian	93504014
48	White	93504014
46	Other	93504014
12496	Black African	93504015
4	Coloured	93504015
15	Indian or Asian	93504015
2	White	93504015
4	Other	93504015
21563	Black African	93504016
17	Coloured	93504016
4	Indian or Asian	93504016
7	White	93504016
68	Other	93504016
15939	Black African	93504017
37	Coloured	93504017
22	Indian or Asian	93504017
10	White	93504017
83	Other	93504017
15922	Black African	93504018
19	Coloured	93504018
6	Indian or Asian	93504018
6	White	93504018
13	Other	93504018
11052	Black African	93504019
3570	Coloured	93504019
2997	Indian or Asian	93504019
416	White	93504019
224	Other	93504019
17930	Black African	93504020
398	Coloured	93504020
401	Indian or Asian	93504020
9342	White	93504020
79	Other	93504020
2700	Black African	93504021
133	Coloured	93504021
138	Indian or Asian	93504021
3555	White	93504021
35	Other	93504021
12065	Black African	93504022
220	Coloured	93504022
245	Indian or Asian	93504022
4853	White	93504022
58	Other	93504022
12384	Black African	93504023
343	Coloured	93504023
231	Indian or Asian	93504023
5869	White	93504023
141	Other	93504023
15670	Black African	93504024
6	Coloured	93504024
19	Indian or Asian	93504024
3	White	93504024
26	Other	93504024
25673	Black African	93504025
54	Coloured	93504025
24	Indian or Asian	93504025
48	White	93504025
69	Other	93504025
6607	Black African	93504026
212	Coloured	93504026
79	Indian or Asian	93504026
163	White	93504026
36	Other	93504026
22033	Black African	93504027
42	Coloured	93504027
15	Indian or Asian	93504027
11	White	93504027
14	Other	93504027
13760	Black African	93504028
2	Coloured	93504028
8	Indian or Asian	93504028
4	White	93504028
8	Other	93504028
10272	Black African	93504029
1	Coloured	93504029
3	Indian or Asian	93504029
0	White	93504029
1	Other	93504029
11789	Black African	93504030
4	Coloured	93504030
11	Indian or Asian	93504030
1	White	93504030
3	Other	93504030
18698	Black African	93504031
12	Coloured	93504031
7	Indian or Asian	93504031
8	White	93504031
24	Other	93504031
15981	Black African	93504032
6	Coloured	93504032
19	Indian or Asian	93504032
6	White	93504032
30	Other	93504032
16236	Black African	93504033
4	Coloured	93504033
15	Indian or Asian	93504033
10	White	93504033
0	Other	93504033
15405	Black African	93504034
8	Coloured	93504034
9	Indian or Asian	93504034
8	White	93504034
7	Other	93504034
12710	Black African	93504035
3	Coloured	93504035
6	Indian or Asian	93504035
2	White	93504035
9	Other	93504035
14375	Black African	93504036
23	Coloured	93504036
21	Indian or Asian	93504036
1337	White	93504036
59	Other	93504036
15964	Black African	93504037
37	Coloured	93504037
6	Indian or Asian	93504037
5	White	93504037
33	Other	93504037
13944	Black African	93504038
5	Coloured	93504038
10	Indian or Asian	93504038
3	White	93504038
15	Other	93504038
7999	Black African	93505001
4	Coloured	93505001
10	Indian or Asian	93505001
0	White	93505001
8	Other	93505001
8646	Black African	93505002
21	Coloured	93505002
20	Indian or Asian	93505002
1	White	93505002
9	Other	93505002
7552	Black African	93505003
1	Coloured	93505003
4	Indian or Asian	93505003
4	White	93505003
2	Other	93505003
6725	Black African	93505004
11	Coloured	93505004
9	Indian or Asian	93505004
7	White	93505004
6	Other	93505004
7060	Black African	93505005
0	Coloured	93505005
0	Indian or Asian	93505005
2	White	93505005
3	Other	93505005
7930	Black African	93505006
0	Coloured	93505006
5	Indian or Asian	93505006
3	White	93505006
1	Other	93505006
8117	Black African	93505007
0	Coloured	93505007
1	Indian or Asian	93505007
0	White	93505007
1	Other	93505007
9620	Black African	93505008
12	Coloured	93505008
6	Indian or Asian	93505008
7	White	93505008
11	Other	93505008
7963	Black African	93505009
5	Coloured	93505009
4	Indian or Asian	93505009
108	White	93505009
12	Other	93505009
5656	Black African	93505010
18	Coloured	93505010
9	Indian or Asian	93505010
59	White	93505010
22	Other	93505010
7017	Black African	93505011
1	Coloured	93505011
10	Indian or Asian	93505011
3	White	93505011
1	Other	93505011
6251	Black African	93505012
1	Coloured	93505012
4	Indian or Asian	93505012
0	White	93505012
22	Other	93505012
7289	Black African	93505013
0	Coloured	93505013
9	Indian or Asian	93505013
5	White	93505013
9	Other	93505013
8001	Black African	93505014
0	Coloured	93505014
7	Indian or Asian	93505014
1	White	93505014
2	Other	93505014
10881	Black African	93505015
15	Coloured	93505015
20	Indian or Asian	93505015
9	White	93505015
15	Other	93505015
8783	Black African	93505016
16	Coloured	93505016
10	Indian or Asian	93505016
5	White	93505016
3	Other	93505016
9623	Black African	93505017
17	Coloured	93505017
22	Indian or Asian	93505017
26	White	93505017
23	Other	93505017
6014	Black African	93505018
22	Coloured	93505018
16	Indian or Asian	93505018
9	White	93505018
17	Other	93505018
9820	Black African	93505019
4	Coloured	93505019
4	Indian or Asian	93505019
5	White	93505019
9	Other	93505019
7699	Black African	93505020
2	Coloured	93505020
5	Indian or Asian	93505020
1	White	93505020
1	Other	93505020
7257	Black African	93505021
3	Coloured	93505021
8	Indian or Asian	93505021
1	White	93505021
3	Other	93505021
10400	Black African	93505022
5	Coloured	93505022
8	Indian or Asian	93505022
1	White	93505022
1	Other	93505022
7591	Black African	93505023
2	Coloured	93505023
8	Indian or Asian	93505023
2	White	93505023
1	Other	93505023
5693	Black African	93505024
0	Coloured	93505024
3	Indian or Asian	93505024
4	White	93505024
3	Other	93505024
8063	Black African	93505025
1	Coloured	93505025
1	Indian or Asian	93505025
11	White	93505025
3	Other	93505025
11288	Black African	93505026
7	Coloured	93505026
0	Indian or Asian	93505026
8	White	93505026
0	Other	93505026
7740	Black African	93505027
0	Coloured	93505027
3	Indian or Asian	93505027
1	White	93505027
6	Other	93505027
6779	Black African	93505028
0	Coloured	93505028
0	Indian or Asian	93505028
13	White	93505028
2	Other	93505028
6006	Black African	93505029
2	Coloured	93505029
3	Indian or Asian	93505029
10	White	93505029
1	Other	93505029
6247	Black African	93601001
36	Coloured	93601001
11	Indian or Asian	93601001
1366	White	93601001
14	Other	93601001
4850	Black African	93601002
74	Coloured	93601002
43	Indian or Asian	93601002
4905	White	93601002
32	Other	93601002
11024	Black African	93601003
12	Coloured	93601003
16	Indian or Asian	93601003
138	White	93601003
52	Other	93601003
3635	Black African	93601004
31	Coloured	93601004
4	Indian or Asian	93601004
945	White	93601004
13	Other	93601004
2204	Black African	93601005
54	Coloured	93601005
10	Indian or Asian	93601005
1693	White	93601005
5	Other	93601005
2965	Black African	93601006
82	Coloured	93601006
9	Indian or Asian	93601006
1348	White	93601006
3	Other	93601006
10837	Black African	93601007
49	Coloured	93601007
25	Indian or Asian	93601007
837	White	93601007
117	Other	93601007
4846	Black African	93601008
82	Coloured	93601008
40	Indian or Asian	93601008
812	White	93601008
46	Other	93601008
14416	Black African	93601009
18	Coloured	93601009
13	Indian or Asian	93601009
110	White	93601009
40	Other	93601009
4133	Black African	93601010
9	Coloured	93601010
0	Indian or Asian	93601010
2	White	93601010
0	Other	93601010
3685	Black African	93601011
74	Coloured	93601011
25	Indian or Asian	93601011
77	White	93601011
6	Other	93601011
3004	Black African	93601012
6	Coloured	93601012
10	Indian or Asian	93601012
77	White	93601012
18	Other	93601012
16496	Black African	93602001
185	Coloured	93602001
57	Indian or Asian	93602001
580	White	93602001
94	Other	93602001
12479	Black African	93602002
356	Coloured	93602002
90	Indian or Asian	93602002
484	White	93602002
32	Other	93602002
9644	Black African	93602003
39	Coloured	93602003
9	Indian or Asian	93602003
1387	White	93602003
59	Other	93602003
4518	Black African	93602004
136	Coloured	93602004
50	Indian or Asian	93602004
3630	White	93602004
24	Other	93602004
4940	Black African	93602005
240	Coloured	93602005
85	Indian or Asian	93602005
2568	White	93602005
26	Other	93602005
6271	Black African	93602006
1	Coloured	93602006
11	Indian or Asian	93602006
13	White	93602006
17	Other	93602006
7322	Black African	93602007
2	Coloured	93602007
7	Indian or Asian	93602007
4	White	93602007
11	Other	93602007
8755	Black African	93602008
11	Coloured	93602008
8	Indian or Asian	93602008
54	White	93602008
12	Other	93602008
8836	Black African	93602009
11	Coloured	93602009
10	Indian or Asian	93602009
76	White	93602009
8	Other	93602009
8753	Black African	93602010
0	Coloured	93602010
1	Indian or Asian	93602010
32	White	93602010
4	Other	93602010
8934	Black African	93602011
13	Coloured	93602011
3	Indian or Asian	93602011
290	White	93602011
16	Other	93602011
8015	Black African	93602012
28	Coloured	93602012
12	Indian or Asian	93602012
1	White	93602012
13	Other	93602012
12311	Black African	93604001
41	Coloured	93604001
18	Indian or Asian	93604001
634	White	93604001
43	Other	93604001
5991	Black African	93604002
4	Coloured	93604002
12	Indian or Asian	93604002
1	White	93604002
29	Other	93604002
4757	Black African	93604003
16	Coloured	93604003
12	Indian or Asian	93604003
726	White	93604003
45	Other	93604003
1006	Black African	93604004
55	Coloured	93604004
23	Indian or Asian	93604004
2696	White	93604004
48	Other	93604004
6444	Black African	93604005
16	Coloured	93604005
4	Indian or Asian	93604005
663	White	93604005
43	Other	93604005
9469	Black African	93605001
12	Coloured	93605001
28	Indian or Asian	93605001
469	White	93605001
50	Other	93605001
5545	Black African	93605002
27	Coloured	93605002
11	Indian or Asian	93605002
901	White	93605002
29	Other	93605002
6768	Black African	93605003
6	Coloured	93605003
22	Indian or Asian	93605003
84	White	93605003
16	Other	93605003
2041	Black African	93605004
12	Coloured	93605004
6	Indian or Asian	93605004
2472	White	93605004
20	Other	93605004
12124	Black African	93605005
26	Coloured	93605005
23	Indian or Asian	93605005
23	White	93605005
16	Other	93605005
9503	Black African	93605006
24	Coloured	93605006
10	Indian or Asian	93605006
15	White	93605006
25	Other	93605006
7215	Black African	93605007
32	Coloured	93605007
9	Indian or Asian	93605007
673	White	93605007
28	Other	93605007
3073	Black African	93605008
88	Coloured	93605008
171	Indian or Asian	93605008
2736	White	93605008
38	Other	93605008
4635	Black African	93605009
21	Coloured	93605009
5	Indian or Asian	93605009
6	White	93605009
5	Other	93605009
5899	Black African	93606001
477	Coloured	93606001
280	Indian or Asian	93606001
5475	White	93606001
67	Other	93606001
7686	Black African	93606002
155	Coloured	93606002
15	Indian or Asian	93606002
2	White	93606002
37	Other	93606002
5770	Black African	93606003
23	Coloured	93606003
15	Indian or Asian	93606003
11	White	93606003
15	Other	93606003
11935	Black African	93606004
75	Coloured	93606004
14	Indian or Asian	93606004
1176	White	93606004
29	Other	93606004
4500	Black African	93606005
63	Coloured	93606005
14	Indian or Asian	93606005
0	White	93606005
4	Other	93606005
5565	Black African	93606006
56	Coloured	93606006
17	Indian or Asian	93606006
143	White	93606006
10	Other	93606006
7497	Black African	93606007
74	Coloured	93606007
15	Indian or Asian	93606007
1172	White	93606007
18	Other	93606007
5721	Black African	93606008
12	Coloured	93606008
9	Indian or Asian	93606008
297	White	93606008
6	Other	93606008
1828	Black African	93606009
31	Coloured	93606009
1	Indian or Asian	93606009
283	White	93606009
10	Other	93606009
9654	Black African	93607001
2	Coloured	93607001
27	Indian or Asian	93607001
3	White	93607001
7	Other	93607001
8560	Black African	93607002
1	Coloured	93607002
8	Indian or Asian	93607002
2	White	93607002
17	Other	93607002
9797	Black African	93607003
5	Coloured	93607003
8	Indian or Asian	93607003
2	White	93607003
11	Other	93607003
9136	Black African	93607004
1	Coloured	93607004
4	Indian or Asian	93607004
3	White	93607004
32	Other	93607004
7212	Black African	93607005
1	Coloured	93607005
8	Indian or Asian	93607005
2	White	93607005
2	Other	93607005
9487	Black African	93607006
8	Coloured	93607006
9	Indian or Asian	93607006
3	White	93607006
9	Other	93607006
10074	Black African	93607007
8	Coloured	93607007
4	Indian or Asian	93607007
160	White	93607007
28	Other	93607007
7726	Black African	93607008
11	Coloured	93607008
12	Indian or Asian	93607008
3	White	93607008
2	Other	93607008
8574	Black African	93607009
13	Coloured	93607009
14	Indian or Asian	93607009
11	White	93607009
5	Other	93607009
7714	Black African	93607010
1	Coloured	93607010
1	Indian or Asian	93607010
3	White	93607010
10	Other	93607010
9688	Black African	93607011
8	Coloured	93607011
9	Indian or Asian	93607011
5	White	93607011
14	Other	93607011
9580	Black African	93607012
25	Coloured	93607012
37	Indian or Asian	93607012
973	White	93607012
31	Other	93607012
10489	Black African	93607013
1	Coloured	93607013
8	Indian or Asian	93607013
11	White	93607013
7	Other	93607013
8397	Black African	93607014
3	Coloured	93607014
8	Indian or Asian	93607014
3	White	93607014
10	Other	93607014
7679	Black African	93607015
3	Coloured	93607015
13	Indian or Asian	93607015
1	White	93607015
4	Other	93607015
8942	Black African	93607016
8	Coloured	93607016
4	Indian or Asian	93607016
204	White	93607016
10	Other	93607016
8778	Black African	93607017
4	Coloured	93607017
10	Indian or Asian	93607017
4	White	93607017
4	Other	93607017
11638	Black African	93607018
3	Coloured	93607018
11	Indian or Asian	93607018
1	White	93607018
14	Other	93607018
8538	Black African	93607019
4	Coloured	93607019
7	Indian or Asian	93607019
1	White	93607019
6	Other	93607019
10214	Black African	93607020
6	Coloured	93607020
10	Indian or Asian	93607020
1	White	93607020
5	Other	93607020
6137	Black African	93607021
1	Coloured	93607021
1	Indian or Asian	93607021
1	White	93607021
3	Other	93607021
9394	Black African	93607022
2	Coloured	93607022
12	Indian or Asian	93607022
0	White	93607022
12	Other	93607022
8130	Black African	93607023
4	Coloured	93607023
19	Indian or Asian	93607023
10	White	93607023
0	Other	93607023
12121	Black African	93607024
6	Coloured	93607024
20	Indian or Asian	93607024
2	White	93607024
6	Other	93607024
10947	Black African	93607025
2	Coloured	93607025
2	Indian or Asian	93607025
1	White	93607025
29	Other	93607025
5922	Black African	93607026
24	Coloured	93607026
3	Indian or Asian	93607026
0	White	93607026
7	Other	93607026
9387	Black African	93607027
9	Coloured	93607027
0	Indian or Asian	93607027
26	White	93607027
35	Other	93607027
12530	Black African	93607028
5	Coloured	93607028
14	Indian or Asian	93607028
9	White	93607028
37	Other	93607028
11348	Black African	93607029
35	Coloured	93607029
22	Indian or Asian	93607029
12	White	93607029
23	Other	93607029
8388	Black African	93607030
6	Coloured	93607030
20	Indian or Asian	93607030
4	White	93607030
6	Other	93607030
16350	Black African	93607031
124	Coloured	93607031
113	Indian or Asian	93607031
4139	White	93607031
46	Other	93607031
3268	Black African	93607032
68	Coloured	93607032
1205	Indian or Asian	93607032
3672	White	93607032
129	Other	93607032
6420	Black African	94701001
12	Coloured	94701001
3	Indian or Asian	94701001
2	White	94701001
8	Other	94701001
5953	Black African	94701002
0	Coloured	94701002
12	Indian or Asian	94701002
0	White	94701002
7	Other	94701002
9569	Black African	94701003
4	Coloured	94701003
18	Indian or Asian	94701003
3	White	94701003
5	Other	94701003
6957	Black African	94701004
3	Coloured	94701004
24	Indian or Asian	94701004
11	White	94701004
0	Other	94701004
9200	Black African	94701005
9	Coloured	94701005
22	Indian or Asian	94701005
668	White	94701005
122	Other	94701005
7884	Black African	94701006
6	Coloured	94701006
5	Indian or Asian	94701006
1	White	94701006
8	Other	94701006
3708	Black African	94701007
22	Coloured	94701007
123	Indian or Asian	94701007
1173	White	94701007
50	Other	94701007
8156	Black African	94701008
9	Coloured	94701008
11	Indian or Asian	94701008
3	White	94701008
59	Other	94701008
8680	Black African	94701009
6	Coloured	94701009
4	Indian or Asian	94701009
5	White	94701009
39	Other	94701009
7981	Black African	94701010
0	Coloured	94701010
3	Indian or Asian	94701010
39	White	94701010
11	Other	94701010
6618	Black African	94701011
4	Coloured	94701011
9	Indian or Asian	94701011
3	White	94701011
3	Other	94701011
8552	Black African	94701012
0	Coloured	94701012
2	Indian or Asian	94701012
1	White	94701012
10	Other	94701012
6889	Black African	94701013
11	Coloured	94701013
10	Indian or Asian	94701013
6	White	94701013
2	Other	94701013
5912	Black African	94701014
0	Coloured	94701014
6	Indian or Asian	94701014
7	White	94701014
2	Other	94701014
9621	Black African	94701015
18	Coloured	94701015
25	Indian or Asian	94701015
0	White	94701015
4	Other	94701015
8783	Black African	94701016
7	Coloured	94701016
13	Indian or Asian	94701016
106	White	94701016
3	Other	94701016
11469	Black African	94702001
7	Coloured	94702001
15	Indian or Asian	94702001
1	White	94702001
18	Other	94702001
5561	Black African	94702002
2	Coloured	94702002
9	Indian or Asian	94702002
0	White	94702002
18	Other	94702002
6892	Black African	94702003
6	Coloured	94702003
3	Indian or Asian	94702003
10	White	94702003
8	Other	94702003
5285	Black African	94702004
0	Coloured	94702004
7	Indian or Asian	94702004
2	White	94702004
2	Other	94702004
8657	Black African	94702005
2	Coloured	94702005
20	Indian or Asian	94702005
3	White	94702005
4	Other	94702005
6420	Black African	94702006
15	Coloured	94702006
12	Indian or Asian	94702006
12	White	94702006
10	Other	94702006
11403	Black African	94702007
31	Coloured	94702007
19	Indian or Asian	94702007
8	White	94702007
6	Other	94702007
6291	Black African	94702008
4	Coloured	94702008
5	Indian or Asian	94702008
3	White	94702008
5	Other	94702008
11165	Black African	94702009
6	Coloured	94702009
19	Indian or Asian	94702009
3	White	94702009
12	Other	94702009
9593	Black African	94702010
9	Coloured	94702010
13	Indian or Asian	94702010
3	White	94702010
12	Other	94702010
4638	Black African	94702011
17	Coloured	94702011
8	Indian or Asian	94702011
35	White	94702011
27	Other	94702011
9251	Black African	94702012
17	Coloured	94702012
2	Indian or Asian	94702012
393	White	94702012
40	Other	94702012
1866	Black African	94702013
34	Coloured	94702013
151	Indian or Asian	94702013
2046	White	94702013
32	Other	94702013
12390	Black African	94702014
19	Coloured	94702014
26	Indian or Asian	94702014
479	White	94702014
29	Other	94702014
8410	Black African	94702015
4	Coloured	94702015
2	Indian or Asian	94702015
50	White	94702015
12	Other	94702015
8696	Black African	94702016
8	Coloured	94702016
13	Indian or Asian	94702016
27	White	94702016
7	Other	94702016
6523	Black African	94702017
1	Coloured	94702017
12	Indian or Asian	94702017
2	White	94702017
19	Other	94702017
6991	Black African	94702018
14	Coloured	94702018
36	Indian or Asian	94702018
10	White	94702018
4	Other	94702018
7846	Black African	94702019
2	Coloured	94702019
11	Indian or Asian	94702019
3	White	94702019
7	Other	94702019
10336	Black African	94702020
22	Coloured	94702020
12	Indian or Asian	94702020
7	White	94702020
22	Other	94702020
10302	Black African	94702021
1	Coloured	94702021
11	Indian or Asian	94702021
3	White	94702021
32	Other	94702021
5377	Black African	94702022
1	Coloured	94702022
6	Indian or Asian	94702022
1	White	94702022
1	Other	94702022
6993	Black African	94702023
1	Coloured	94702023
10	Indian or Asian	94702023
0	White	94702023
0	Other	94702023
10570	Black African	94702024
5	Coloured	94702024
6	Indian or Asian	94702024
3	White	94702024
19	Other	94702024
7844	Black African	94702025
8	Coloured	94702025
10	Indian or Asian	94702025
7	White	94702025
5	Other	94702025
5606	Black African	94702026
7	Coloured	94702026
15	Indian or Asian	94702026
7	White	94702026
7	Other	94702026
11258	Black African	94702027
30	Coloured	94702027
8	Indian or Asian	94702027
9	White	94702027
12	Other	94702027
9376	Black African	94702028
3	Coloured	94702028
4	Indian or Asian	94702028
4	White	94702028
10	Other	94702028
9569	Black African	94702029
19	Coloured	94702029
10	Indian or Asian	94702029
290	White	94702029
6	Other	94702029
7506	Black African	94702030
40	Coloured	94702030
25	Indian or Asian	94702030
619	White	94702030
11	Other	94702030
10011	Black African	94703001
4	Coloured	94703001
28	Indian or Asian	94703001
7	White	94703001
4	Other	94703001
7417	Black African	94703002
0	Coloured	94703002
3	Indian or Asian	94703002
2	White	94703002
1	Other	94703002
10218	Black African	94703003
2	Coloured	94703003
93	Indian or Asian	94703003
0	White	94703003
31	Other	94703003
8209	Black African	94703004
3	Coloured	94703004
18	Indian or Asian	94703004
13	White	94703004
2	Other	94703004
8628	Black African	94703005
3	Coloured	94703005
3	Indian or Asian	94703005
2	White	94703005
6	Other	94703005
8064	Black African	94703006
3	Coloured	94703006
7	Indian or Asian	94703006
3	White	94703006
3	Other	94703006
6167	Black African	94703007
0	Coloured	94703007
5	Indian or Asian	94703007
26	White	94703007
0	Other	94703007
14249	Black African	94703008
23	Coloured	94703008
11	Indian or Asian	94703008
12	White	94703008
20	Other	94703008
10362	Black African	94703009
8	Coloured	94703009
2	Indian or Asian	94703009
7	White	94703009
37	Other	94703009
6917	Black African	94703010
1	Coloured	94703010
0	Indian or Asian	94703010
2	White	94703010
0	Other	94703010
6193	Black African	94703011
11	Coloured	94703011
29	Indian or Asian	94703011
7	White	94703011
9	Other	94703011
8992	Black African	94703012
0	Coloured	94703012
1	Indian or Asian	94703012
1	White	94703012
13	Other	94703012
11380	Black African	94703013
1	Coloured	94703013
2	Indian or Asian	94703013
5	White	94703013
0	Other	94703013
6460	Black African	94703014
0	Coloured	94703014
2	Indian or Asian	94703014
2	White	94703014
2	Other	94703014
7109	Black African	94703015
2	Coloured	94703015
5	Indian or Asian	94703015
5	White	94703015
0	Other	94703015
7232	Black African	94703016
2	Coloured	94703016
4	Indian or Asian	94703016
3	White	94703016
2	Other	94703016
9321	Black African	94703017
5	Coloured	94703017
11	Indian or Asian	94703017
1	White	94703017
2	Other	94703017
10248	Black African	94703018
5	Coloured	94703018
12	Indian or Asian	94703018
0	White	94703018
24	Other	94703018
9849	Black African	94703019
2	Coloured	94703019
7	Indian or Asian	94703019
3	White	94703019
0	Other	94703019
9197	Black African	94703020
4	Coloured	94703020
2	Indian or Asian	94703020
7	White	94703020
2	Other	94703020
10338	Black African	94703021
6	Coloured	94703021
19	Indian or Asian	94703021
11	White	94703021
7	Other	94703021
7812	Black African	94703022
0	Coloured	94703022
2	Indian or Asian	94703022
1	White	94703022
2	Other	94703022
10913	Black African	94703023
3	Coloured	94703023
6	Indian or Asian	94703023
8	White	94703023
0	Other	94703023
7854	Black African	94703024
6	Coloured	94703024
3	Indian or Asian	94703024
8	White	94703024
2	Other	94703024
10084	Black African	94703025
1	Coloured	94703025
13	Indian or Asian	94703025
1	White	94703025
8	Other	94703025
9158	Black African	94703026
0	Coloured	94703026
1	Indian or Asian	94703026
3	White	94703026
8	Other	94703026
8095	Black African	94703027
4	Coloured	94703027
11	Indian or Asian	94703027
1	White	94703027
3	Other	94703027
11190	Black African	94703028
1	Coloured	94703028
10	Indian or Asian	94703028
3	White	94703028
3	Other	94703028
6499	Black African	94703029
0	Coloured	94703029
11	Indian or Asian	94703029
2	White	94703029
4	Other	94703029
8550	Black African	94703030
3	Coloured	94703030
3	Indian or Asian	94703030
1	White	94703030
4	Other	94703030
6848	Black African	94703031
0	Coloured	94703031
3	Indian or Asian	94703031
2	White	94703031
0	Other	94703031
6062	Black African	94704001
2	Coloured	94704001
2	Indian or Asian	94704001
3	White	94704001
18	Other	94704001
8002	Black African	94704002
5	Coloured	94704002
11	Indian or Asian	94704002
1	White	94704002
4	Other	94704002
7401	Black African	94704003
3	Coloured	94704003
4	Indian or Asian	94704003
4	White	94704003
19	Other	94704003
5990	Black African	94704004
0	Coloured	94704004
2	Indian or Asian	94704004
1	White	94704004
0	Other	94704004
5970	Black African	94704005
0	Coloured	94704005
0	Indian or Asian	94704005
8	White	94704005
6	Other	94704005
8484	Black African	94704006
4	Coloured	94704006
17	Indian or Asian	94704006
20	White	94704006
39	Other	94704006
8267	Black African	94704007
3	Coloured	94704007
10	Indian or Asian	94704007
1	White	94704007
2	Other	94704007
6910	Black African	94704008
0	Coloured	94704008
9	Indian or Asian	94704008
3	White	94704008
8	Other	94704008
6438	Black African	94704009
1	Coloured	94704009
1	Indian or Asian	94704009
1	White	94704009
3	Other	94704009
5360	Black African	94704010
0	Coloured	94704010
0	Indian or Asian	94704010
0	White	94704010
1	Other	94704010
9440	Black African	94704011
2	Coloured	94704011
0	Indian or Asian	94704011
6	White	94704011
0	Other	94704011
7675	Black African	94704012
9	Coloured	94704012
2	Indian or Asian	94704012
315	White	94704012
4	Other	94704012
7212	Black African	94704013
1	Coloured	94704013
2	Indian or Asian	94704013
20	White	94704013
2	Other	94704013
7759	Black African	94705001
8	Coloured	94705001
7	Indian or Asian	94705001
605	White	94705001
23	Other	94705001
14573	Black African	94705002
15	Coloured	94705002
10	Indian or Asian	94705002
361	White	94705002
30	Other	94705002
9675	Black African	94705003
5	Coloured	94705003
3	Indian or Asian	94705003
4	White	94705003
5	Other	94705003
5068	Black African	94705004
3	Coloured	94705004
3	Indian or Asian	94705004
3	White	94705004
1	Other	94705004
14007	Black African	94705005
16	Coloured	94705005
9	Indian or Asian	94705005
3	White	94705005
4	Other	94705005
9021	Black African	94705006
2	Coloured	94705006
3	Indian or Asian	94705006
1	White	94705006
3	Other	94705006
12041	Black African	94705007
13	Coloured	94705007
3	Indian or Asian	94705007
13	White	94705007
13	Other	94705007
11276	Black African	94705008
2	Coloured	94705008
2	Indian or Asian	94705008
8	White	94705008
7	Other	94705008
11536	Black African	94705009
38	Coloured	94705009
13	Indian or Asian	94705009
20	White	94705009
1	Other	94705009
12493	Black African	94705010
14	Coloured	94705010
9	Indian or Asian	94705010
38	White	94705010
24	Other	94705010
7408	Black African	94705011
0	Coloured	94705011
2	Indian or Asian	94705011
2	White	94705011
1	Other	94705011
8787	Black African	94705012
1	Coloured	94705012
1	Indian or Asian	94705012
1	White	94705012
7	Other	94705012
16874	Black African	94705013
46	Coloured	94705013
30	Indian or Asian	94705013
28	White	94705013
29	Other	94705013
12563	Black African	94705014
7	Coloured	94705014
7	Indian or Asian	94705014
16	White	94705014
11	Other	94705014
8284	Black African	94705015
1	Coloured	94705015
1	Indian or Asian	94705015
1	White	94705015
0	Other	94705015
8115	Black African	94705016
7	Coloured	94705016
4	Indian or Asian	94705016
13	White	94705016
3	Other	94705016
11519	Black African	94705017
2	Coloured	94705017
4	Indian or Asian	94705017
3	White	94705017
4	Other	94705017
9542	Black African	94705018
230	Coloured	94705018
307	Indian or Asian	94705018
1824	White	94705018
47	Other	94705018
10780	Black African	94705019
9	Coloured	94705019
1	Indian or Asian	94705019
5	White	94705019
3	Other	94705019
12195	Black African	94705020
9	Coloured	94705020
1	Indian or Asian	94705020
3	White	94705020
2	Other	94705020
6479	Black African	94705021
1	Coloured	94705021
9	Indian or Asian	94705021
1	White	94705021
0	Other	94705021
8620	Black African	94705022
3	Coloured	94705022
3	Indian or Asian	94705022
5	White	94705022
2	Other	94705022
9576	Black African	94705023
23	Coloured	94705023
3	Indian or Asian	94705023
6	White	94705023
11	Other	94705023
8926	Black African	94705024
5	Coloured	94705024
6	Indian or Asian	94705024
14	White	94705024
0	Other	94705024
14003	Black African	94705025
16	Coloured	94705025
20	Indian or Asian	94705025
6	White	94705025
15	Other	94705025
7680	Black African	94705026
12	Coloured	94705026
11	Indian or Asian	94705026
0	White	94705026
4	Other	94705026
12438	Black African	94705027
5	Coloured	94705027
14	Indian or Asian	94705027
3	White	94705027
3	Other	94705027
11721	Black African	94705028
2	Coloured	94705028
7	Indian or Asian	94705028
4	White	94705028
7	Other	94705028
11497	Black African	94705029
9	Coloured	94705029
7	Indian or Asian	94705029
5	White	94705029
2	Other	94705029
13771	Black African	94705030
12	Coloured	94705030
6	Indian or Asian	94705030
2	White	94705030
5	Other	94705030
11580	Black African	94705031
124	Coloured	94705031
31	Indian or Asian	94705031
1406	White	94705031
10	Other	94705031
8638	Black African	83001001
20	Coloured	83001001
18	Indian or Asian	83001001
10	White	83001001
4	Other	83001001
7596	Black African	83001002
0	Coloured	83001002
13	Indian or Asian	83001002
0	White	83001002
14	Other	83001002
7948	Black African	83001003
7	Coloured	83001003
28	Indian or Asian	83001003
6	White	83001003
16	Other	83001003
8089	Black African	83001004
13	Coloured	83001004
25	Indian or Asian	83001004
3	White	83001004
8	Other	83001004
6255	Black African	83001005
5	Coloured	83001005
18	Indian or Asian	83001005
15	White	83001005
5	Other	83001005
7755	Black African	83001006
17	Coloured	83001006
16	Indian or Asian	83001006
27	White	83001006
16	Other	83001006
2397	Black African	83001007
0	Coloured	83001007
2	Indian or Asian	83001007
1	White	83001007
0	Other	83001007
3809	Black African	83001008
0	Coloured	83001008
0	Indian or Asian	83001008
0	White	83001008
0	Other	83001008
12721	Black African	83001009
43	Coloured	83001009
28	Indian or Asian	83001009
5	White	83001009
13	Other	83001009
6657	Black African	83001010
19	Coloured	83001010
18	Indian or Asian	83001010
13	White	83001010
2	Other	83001010
7340	Black African	83001011
5	Coloured	83001011
10	Indian or Asian	83001011
16	White	83001011
13	Other	83001011
7183	Black African	83001012
18	Coloured	83001012
15	Indian or Asian	83001012
18	White	83001012
5	Other	83001012
4820	Black African	83001013
14	Coloured	83001013
9	Indian or Asian	83001013
1	White	83001013
2	Other	83001013
9077	Black African	83001014
28	Coloured	83001014
33	Indian or Asian	83001014
8	White	83001014
30	Other	83001014
10308	Black African	83001015
78	Coloured	83001015
285	Indian or Asian	83001015
683	White	83001015
16	Other	83001015
9312	Black African	83001016
5	Coloured	83001016
20	Indian or Asian	83001016
4	White	83001016
2	Other	83001016
3717	Black African	83001017
5	Coloured	83001017
28	Indian or Asian	83001017
117	White	83001017
2	Other	83001017
9970	Black African	83001018
30	Coloured	83001018
11	Indian or Asian	83001018
2	White	83001018
6	Other	83001018
6480	Black African	83001019
2	Coloured	83001019
2	Indian or Asian	83001019
3	White	83001019
3	Other	83001019
5196	Black African	83001020
16	Coloured	83001020
18	Indian or Asian	83001020
10	White	83001020
7	Other	83001020
8309	Black African	83001021
45	Coloured	83001021
61	Indian or Asian	83001021
1486	White	83001021
15	Other	83001021
1791	Black African	83001022
7	Coloured	83001022
5	Indian or Asian	83001022
0	White	83001022
0	Other	83001022
8785	Black African	83001023
26	Coloured	83001023
31	Indian or Asian	83001023
499	White	83001023
65	Other	83001023
10575	Black African	83001024
26	Coloured	83001024
44	Indian or Asian	83001024
11	White	83001024
99	Other	83001024
6802	Black African	83001025
6	Coloured	83001025
15	Indian or Asian	83001025
0	White	83001025
9	Other	83001025
6036	Black African	83002001
23	Coloured	83002001
30	Indian or Asian	83002001
0	White	83002001
11	Other	83002001
8837	Black African	83002002
19	Coloured	83002002
26	Indian or Asian	83002002
3	White	83002002
7	Other	83002002
8246	Black African	83002003
132	Coloured	83002003
821	Indian or Asian	83002003
63	White	83002003
86	Other	83002003
4997	Black African	83002004
8	Coloured	83002004
16	Indian or Asian	83002004
2	White	83002004
16	Other	83002004
3409	Black African	83002005
13	Coloured	83002005
3	Indian or Asian	83002005
2	White	83002005
3	Other	83002005
4675	Black African	83002006
11	Coloured	83002006
48	Indian or Asian	83002006
552	White	83002006
18	Other	83002006
1990	Black African	83002007
171	Coloured	83002007
155	Indian or Asian	83002007
3255	White	83002007
41	Other	83002007
6852	Black African	83002008
120	Coloured	83002008
251	Indian or Asian	83002008
6322	White	83002008
53	Other	83002008
9567	Black African	83002009
16	Coloured	83002009
18	Indian or Asian	83002009
169	White	83002009
20	Other	83002009
8106	Black African	83002010
67	Coloured	83002010
11	Indian or Asian	83002010
287	White	83002010
11	Other	83002010
7121	Black African	83002011
20	Coloured	83002011
18	Indian or Asian	83002011
112	White	83002011
16	Other	83002011
3098	Black African	83002012
21	Coloured	83002012
5	Indian or Asian	83002012
126	White	83002012
24	Other	83002012
8123	Black African	83002013
104	Coloured	83002013
67	Indian or Asian	83002013
637	White	83002013
22	Other	83002013
6265	Black African	83002014
10	Coloured	83002014
16	Indian or Asian	83002014
60	White	83002014
21	Other	83002014
9878	Black African	83002015
72	Coloured	83002015
26	Indian or Asian	83002015
106	White	83002015
20	Other	83002015
13216	Black African	83002016
59	Coloured	83002016
104	Indian or Asian	83002016
2291	White	83002016
51	Other	83002016
7116	Black African	83002017
8	Coloured	83002017
7	Indian or Asian	83002017
2	White	83002017
21	Other	83002017
6035	Black African	83002018
8	Coloured	83002018
3	Indian or Asian	83002018
387	White	83002018
22	Other	83002018
8057	Black African	83002019
10	Coloured	83002019
53	Indian or Asian	83002019
330	White	83002019
11	Other	83002019
10086	Black African	83003001
3	Coloured	83003001
30	Indian or Asian	83003001
3	White	83003001
11	Other	83003001
16339	Black African	83003002
8	Coloured	83003002
33	Indian or Asian	83003002
39	White	83003002
27	Other	83003002
12857	Black African	83003003
44	Coloured	83003003
24	Indian or Asian	83003003
78	White	83003003
3	Other	83003003
5736	Black African	83003004
11	Coloured	83003004
20	Indian or Asian	83003004
83	White	83003004
12	Other	83003004
12078	Black African	83003005
39	Coloured	83003005
25	Indian or Asian	83003005
40	White	83003005
6	Other	83003005
8189	Black African	83003006
3	Coloured	83003006
5	Indian or Asian	83003006
75	White	83003006
5	Other	83003006
2420	Black African	83003007
164	Coloured	83003007
87	Indian or Asian	83003007
3295	White	83003007
117	Other	83003007
8831	Black African	83003008
11	Coloured	83003008
5	Indian or Asian	83003008
249	White	83003008
0	Other	83003008
13637	Black African	83003009
2	Coloured	83003009
6	Indian or Asian	83003009
361	White	83003009
24	Other	83003009
5266	Black African	83003010
443	Coloured	83003010
959	Indian or Asian	83003010
43	White	83003010
41	Other	83003010
12235	Black African	83003011
23	Coloured	83003011
30	Indian or Asian	83003011
13	White	83003011
20	Other	83003011
6309	Black African	83003012
10	Coloured	83003012
53	Indian or Asian	83003012
5	White	83003012
7	Other	83003012
7414	Black African	83003013
16	Coloured	83003013
10	Indian or Asian	83003013
3	White	83003013
8	Other	83003013
7994	Black African	83003014
60	Coloured	83003014
72	Indian or Asian	83003014
1251	White	83003014
18	Other	83003014
8211	Black African	83003015
8	Coloured	83003015
5	Indian or Asian	83003015
228	White	83003015
2	Other	83003015
5687	Black African	83003016
5	Coloured	83003016
2	Indian or Asian	83003016
3	White	83003016
3	Other	83003016
6760	Black African	83003017
11	Coloured	83003017
9	Indian or Asian	83003017
88	White	83003017
16	Other	83003017
3378	Black African	83003018
3	Coloured	83003018
0	Indian or Asian	83003018
20	White	83003018
3	Other	83003018
9407	Black African	83003019
29	Coloured	83003019
43	Indian or Asian	83003019
569	White	83003019
72	Other	83003019
7418	Black African	83004001
51	Coloured	83004001
20	Indian or Asian	83004001
51	White	83004001
15	Other	83004001
3132	Black African	83004002
51	Coloured	83004002
11	Indian or Asian	83004002
217	White	83004002
2	Other	83004002
6591	Black African	83004003
238	Coloured	83004003
146	Indian or Asian	83004003
860	White	83004003
31	Other	83004003
3382	Black African	83004004
61	Coloured	83004004
324	Indian or Asian	83004004
2962	White	83004004
34	Other	83004004
6020	Black African	83004005
18	Coloured	83004005
92	Indian or Asian	83004005
698	White	83004005
25	Other	83004005
8423	Black African	83004006
40	Coloured	83004006
89	Indian or Asian	83004006
496	White	83004006
21	Other	83004006
6157	Black African	83004007
12	Coloured	83004007
178	Indian or Asian	83004007
543	White	83004007
58	Other	83004007
7697	Black African	83004008
16	Coloured	83004008
38	Indian or Asian	83004008
94	White	83004008
16	Other	83004008
5401	Black African	83004009
7	Coloured	83004009
43	Indian or Asian	83004009
2	White	83004009
5	Other	83004009
12340	Black African	83004010
22	Coloured	83004010
5	Indian or Asian	83004010
242	White	83004010
3	Other	83004010
8796	Black African	83004011
11	Coloured	83004011
12	Indian or Asian	83004011
3	White	83004011
15	Other	83004011
6161	Black African	83005001
16	Coloured	83005001
0	Indian or Asian	83005001
2	White	83005001
15	Other	83005001
4260	Black African	83005002
15	Coloured	83005002
5	Indian or Asian	83005002
5	White	83005002
0	Other	83005002
6077	Black African	83005003
1139	Coloured	83005003
466	Indian or Asian	83005003
10	White	83005003
11	Other	83005003
2029	Black African	83005004
589	Coloured	83005004
352	Indian or Asian	83005004
2840	White	83005004
35	Other	83005004
7908	Black African	83005005
31	Coloured	83005005
8	Indian or Asian	83005005
7	White	83005005
20	Other	83005005
5059	Black African	83005006
23	Coloured	83005006
5	Indian or Asian	83005006
3	White	83005006
30	Other	83005006
5871	Black African	83005007
286	Coloured	83005007
8	Indian or Asian	83005007
7	White	83005007
18	Other	83005007
4895	Black African	83005008
501	Coloured	83005008
240	Indian or Asian	83005008
3759	White	83005008
32	Other	83005008
6440	Black African	83005009
53	Coloured	83005009
3	Indian or Asian	83005009
640	White	83005009
27	Other	83005009
1677	Black African	83005010
254	Coloured	83005010
211	Indian or Asian	83005010
3456	White	83005010
86	Other	83005010
13021	Black African	83005011
53	Coloured	83005011
3	Indian or Asian	83005011
36	White	83005011
11	Other	83005011
8876	Black African	83005012
39	Coloured	83005012
16	Indian or Asian	83005012
1123	White	83005012
8	Other	83005012
6244	Black African	83005013
24	Coloured	83005013
1	Indian or Asian	83005013
470	White	83005013
20	Other	83005013
6655	Black African	83005014
57	Coloured	83005014
62	Indian or Asian	83005014
843	White	83005014
30	Other	83005014
12188	Black African	83005015
225	Coloured	83005015
13	Indian or Asian	83005015
11	White	83005015
44	Other	83005015
7604	Black African	83006001
5	Coloured	83006001
7	Indian or Asian	83006001
11	White	83006001
11	Other	83006001
7328	Black African	83006002
34	Coloured	83006002
3	Indian or Asian	83006002
44	White	83006002
5	Other	83006002
2811	Black African	83006003
51	Coloured	83006003
308	Indian or Asian	83006003
1910	White	83006003
24	Other	83006003
8114	Black African	83006004
30	Coloured	83006004
15	Indian or Asian	83006004
7	White	83006004
15	Other	83006004
5353	Black African	83006005
65	Coloured	83006005
58	Indian or Asian	83006005
1501	White	83006005
12	Other	83006005
6869	Black African	83006006
29	Coloured	83006006
3	Indian or Asian	83006006
159	White	83006006
5	Other	83006006
10667	Black African	83007001
264	Coloured	83007001
428	Indian or Asian	83007001
1896	White	83007001
80	Other	83007001
10012	Black African	83007002
44	Coloured	83007002
13	Indian or Asian	83007002
20	White	83007002
28	Other	83007002
9152	Black African	83007003
33	Coloured	83007003
10	Indian or Asian	83007003
13	White	83007003
26	Other	83007003
6355	Black African	83007004
13	Coloured	83007004
8	Indian or Asian	83007004
21	White	83007004
30	Other	83007004
2042	Black African	83007005
210	Coloured	83007005
245	Indian or Asian	83007005
6689	White	83007005
33	Other	83007005
4886	Black African	83007006
15	Coloured	83007006
13	Indian or Asian	83007006
47	White	83007006
6	Other	83007006
6874	Black African	83007007
21	Coloured	83007007
5	Indian or Asian	83007007
15	White	83007007
5	Other	83007007
6828	Black African	83007008
34	Coloured	83007008
13	Indian or Asian	83007008
7	White	83007008
13	Other	83007008
6305	Black African	83007009
31	Coloured	83007009
4	Indian or Asian	83007009
28	White	83007009
20	Other	83007009
10078	Black African	83007010
26	Coloured	83007010
15	Indian or Asian	83007010
261	White	83007010
34	Other	83007010
7892	Black African	83007011
32	Coloured	83007011
5	Indian or Asian	83007011
137	White	83007011
28	Other	83007011
10635	Black African	83007012
31	Coloured	83007012
33	Indian or Asian	83007012
15	White	83007012
7	Other	83007012
7087	Black African	83007013
25	Coloured	83007013
7	Indian or Asian	83007013
8	White	83007013
7	Other	83007013
4802	Black African	83007014
28	Coloured	83007014
16	Indian or Asian	83007014
3	White	83007014
13	Other	83007014
9424	Black African	83007015
118	Coloured	83007015
135	Indian or Asian	83007015
3235	White	83007015
47	Other	83007015
11169	Black African	83007016
823	Coloured	83007016
1128	Indian or Asian	83007016
21	White	83007016
231	Other	83007016
3492	Black African	83007017
415	Coloured	83007017
161	Indian or Asian	83007017
1249	White	83007017
56	Other	83007017
3891	Black African	83007018
471	Coloured	83007018
399	Indian or Asian	83007018
5972	White	83007018
88	Other	83007018
17636	Black African	83007019
66	Coloured	83007019
36	Indian or Asian	83007019
383	White	83007019
25	Other	83007019
11959	Black African	83007020
57	Coloured	83007020
39	Indian or Asian	83007020
8	White	83007020
20	Other	83007020
1554	Black African	83007021
395	Coloured	83007021
307	Indian or Asian	83007021
5671	White	83007021
64	Other	83007021
10396	Black African	83007022
59	Coloured	83007022
13	Indian or Asian	83007022
8	White	83007022
20	Other	83007022
5364	Black African	83007023
36	Coloured	83007023
20	Indian or Asian	83007023
5	White	83007023
7	Other	83007023
7624	Black African	83007024
69	Coloured	83007024
16	Indian or Asian	83007024
8	White	83007024
21	Other	83007024
2350	Black African	83007025
489	Coloured	83007025
740	Indian or Asian	83007025
7455	White	83007025
94	Other	83007025
11460	Black African	83007026
44	Coloured	83007026
20	Indian or Asian	83007026
33	White	83007026
31	Other	83007026
5361	Black African	83007027
100	Coloured	83007027
43	Indian or Asian	83007027
2	White	83007027
0	Other	83007027
6744	Black African	83007028
124	Coloured	83007028
280	Indian or Asian	83007028
5935	White	83007028
102	Other	83007028
4961	Black African	83007029
21	Coloured	83007029
8	Indian or Asian	83007029
3	White	83007029
18	Other	83007029
1136	Black African	83007030
330	Coloured	83007030
235	Indian or Asian	83007030
8014	White	83007030
62	Other	83007030
10992	Black African	83007031
25	Coloured	83007031
2	Indian or Asian	83007031
5	White	83007031
34	Other	83007031
8061	Black African	83007032
51	Coloured	83007032
10	Indian or Asian	83007032
8	White	83007032
13	Other	83007032
6483	Black African	83101001
94	Coloured	83101001
3	Indian or Asian	83101001
8	White	83101001
18	Other	83101001
5086	Black African	83101002
34	Coloured	83101002
22	Indian or Asian	83101002
106	White	83101002
4	Other	83101002
13789	Black African	83101003
169	Coloured	83101003
26	Indian or Asian	83101003
23	White	83101003
26	Other	83101003
5922	Black African	83101004
44	Coloured	83101004
26	Indian or Asian	83101004
11	White	83101004
18	Other	83101004
7308	Black African	83101005
54	Coloured	83101005
10	Indian or Asian	83101005
87	White	83101005
10	Other	83101005
5697	Black African	83101006
46	Coloured	83101006
52	Indian or Asian	83101006
800	White	83101006
49	Other	83101006
7598	Black African	83101007
168	Coloured	83101007
45	Indian or Asian	83101007
3443	White	83101007
68	Other	83101007
2289	Black African	83101008
36	Coloured	83101008
42	Indian or Asian	83101008
3714	White	83101008
0	Other	83101008
7918	Black African	83101009
165	Coloured	83101009
32	Indian or Asian	83101009
3868	White	83101009
42	Other	83101009
15386	Black African	83102001
87	Coloured	83102001
44	Indian or Asian	83102001
10	White	83102001
76	Other	83102001
9234	Black African	83102002
49	Coloured	83102002
23	Indian or Asian	83102002
2	White	83102002
41	Other	83102002
4120	Black African	83102003
16	Coloured	83102003
18	Indian or Asian	83102003
2	White	83102003
16	Other	83102003
10023	Black African	83102004
49	Coloured	83102004
10	Indian or Asian	83102004
7	White	83102004
25	Other	83102004
10182	Black African	83102005
66	Coloured	83102005
21	Indian or Asian	83102005
79	White	83102005
16	Other	83102005
14292	Black African	83102006
87	Coloured	83102006
20	Indian or Asian	83102006
3	White	83102006
54	Other	83102006
8169	Black African	83102007
69	Coloured	83102007
20	Indian or Asian	83102007
7	White	83102007
23	Other	83102007
12817	Black African	83102008
48	Coloured	83102008
30	Indian or Asian	83102008
5	White	83102008
56	Other	83102008
9962	Black African	83102009
146	Coloured	83102009
34	Indian or Asian	83102009
381	White	83102009
21	Other	83102009
7402	Black African	83102010
13	Coloured	83102010
11	Indian or Asian	83102010
3	White	83102010
3	Other	83102010
4497	Black African	83102011
2734	Coloured	83102011
30	Indian or Asian	83102011
28	White	83102011
29	Other	83102011
12977	Black African	83102012
235	Coloured	83102012
963	Indian or Asian	83102012
1041	White	83102012
38	Other	83102012
6211	Black African	83102013
49	Coloured	83102013
7	Indian or Asian	83102013
2	White	83102013
26	Other	83102013
12757	Black African	83102014
43	Coloured	83102014
39	Indian or Asian	83102014
10	White	83102014
71	Other	83102014
16522	Black African	83102015
146	Coloured	83102015
20	Indian or Asian	83102015
15	White	83102015
41	Other	83102015
8277	Black African	83102016
34	Coloured	83102016
5	Indian or Asian	83102016
2	White	83102016
46	Other	83102016
9852	Black African	83102017
68	Coloured	83102017
121	Indian or Asian	83102017
154	White	83102017
59	Other	83102017
3438	Black African	83102018
225	Coloured	83102018
212	Indian or Asian	83102018
8682	White	83102018
26	Other	83102018
9335	Black African	83102019
155	Coloured	83102019
66	Indian or Asian	83102019
2556	White	83102019
40	Other	83102019
2905	Black African	83102020
161	Coloured	83102020
220	Indian or Asian	83102020
6894	White	83102020
61	Other	83102020
14716	Black African	83102021
416	Coloured	83102021
152	Indian or Asian	83102021
3828	White	83102021
92	Other	83102021
3052	Black African	83102022
137	Coloured	83102022
167	Indian or Asian	83102022
2069	White	83102022
97	Other	83102022
12294	Black African	83102023
92	Coloured	83102023
34	Indian or Asian	83102023
33	White	83102023
31	Other	83102023
2569	Black African	83102024
160	Coloured	83102024
355	Indian or Asian	83102024
7645	White	83102024
36	Other	83102024
14682	Black African	83102025
49	Coloured	83102025
23	Indian or Asian	83102025
118	White	83102025
66	Other	83102025
5634	Black African	83102026
177	Coloured	83102026
94	Indian or Asian	83102026
3263	White	83102026
18	Other	83102026
5155	Black African	83102027
140	Coloured	83102027
81	Indian or Asian	83102027
3543	White	83102027
6	Other	83102027
14952	Black African	83102028
73	Coloured	83102028
64	Indian or Asian	83102028
510	White	83102028
58	Other	83102028
19098	Black African	83102029
92	Coloured	83102029
37	Indian or Asian	83102029
463	White	83102029
88	Other	83102029
10317	Black African	83102030
118	Coloured	83102030
41	Indian or Asian	83102030
327	White	83102030
46	Other	83102030
10354	Black African	83102031
102	Coloured	83102031
18	Indian or Asian	83102031
2	White	83102031
20	Other	83102031
10896	Black African	83102032
37	Coloured	83102032
30	Indian or Asian	83102032
544	White	83102032
62	Other	83102032
3986	Black African	83102033
370	Coloured	83102033
130	Indian or Asian	83102033
9691	White	83102033
64	Other	83102033
5604	Black African	83102034
272	Coloured	83102034
424	Indian or Asian	83102034
9977	White	83102034
172	Other	83102034
4001	Black African	83103001
30	Coloured	83103001
7	Indian or Asian	83103001
3	White	83103001
2	Other	83103001
12503	Black African	83103002
34	Coloured	83103002
18	Indian or Asian	83103002
8	White	83103002
10	Other	83103002
5909	Black African	83103003
58	Coloured	83103003
51	Indian or Asian	83103003
1751	White	83103003
32	Other	83103003
3997	Black African	83103004
47	Coloured	83103004
13	Indian or Asian	83103004
947	White	83103004
5	Other	83103004
2916	Black African	83103005
108	Coloured	83103005
26	Indian or Asian	83103005
869	White	83103005
32	Other	83103005
6205	Black African	83103006
45	Coloured	83103006
68	Indian or Asian	83103006
479	White	83103006
4	Other	83103006
4675	Black African	83103007
42	Coloured	83103007
3	Indian or Asian	83103007
1096	White	83103007
6	Other	83103007
10240	Black African	83103008
298	Coloured	83103008
34	Indian or Asian	83103008
248	White	83103008
54	Other	83103008
5961	Black African	83103009
46	Coloured	83103009
3	Indian or Asian	83103009
594	White	83103009
24	Other	83103009
5985	Black African	83103010
3279	Coloured	83103010
2397	Indian or Asian	83103010
4229	White	83103010
94	Other	83103010
4392	Black African	83103011
477	Coloured	83103011
225	Indian or Asian	83103011
6444	White	83103011
86	Other	83103011
3021	Black African	83103012
343	Coloured	83103012
262	Indian or Asian	83103012
11769	White	83103012
35	Other	83103012
1877	Black African	83103013
195	Coloured	83103013
218	Indian or Asian	83103013
3756	White	83103013
34	Other	83103013
1227	Black African	83103014
88	Coloured	83103014
74	Indian or Asian	83103014
5341	White	83103014
32	Other	83103014
1201	Black African	83103015
125	Coloured	83103015
87	Indian or Asian	83103015
6969	White	83103015
35	Other	83103015
2599	Black African	83103016
126	Coloured	83103016
29	Indian or Asian	83103016
5029	White	83103016
21	Other	83103016
6886	Black African	83103017
44	Coloured	83103017
8	Indian or Asian	83103017
21	White	83103017
20	Other	83103017
4590	Black African	83103018
16	Coloured	83103018
4	Indian or Asian	83103018
2	White	83103018
9	Other	83103018
5408	Black African	83103019
74	Coloured	83103019
8	Indian or Asian	83103019
13	White	83103019
54	Other	83103019
4461	Black African	83103020
13	Coloured	83103020
5	Indian or Asian	83103020
2	White	83103020
10	Other	83103020
6031	Black African	83103021
67	Coloured	83103021
13	Indian or Asian	83103021
20	White	83103021
18	Other	83103021
3403	Black African	83103022
33	Coloured	83103022
5	Indian or Asian	83103022
2	White	83103022
30	Other	83103022
12422	Black African	83103023
89	Coloured	83103023
43	Indian or Asian	83103023
10	White	83103023
21	Other	83103023
2005	Black African	83103024
2	Coloured	83103024
3	Indian or Asian	83103024
0	White	83103024
10	Other	83103024
13136	Black African	83103025
126	Coloured	83103025
16	Indian or Asian	83103025
23	White	83103025
15	Other	83103025
2221	Black African	83103026
5	Coloured	83103026
3	Indian or Asian	83103026
3	White	83103026
7	Other	83103026
6255	Black African	83103027
30	Coloured	83103027
10	Indian or Asian	83103027
0	White	83103027
54	Other	83103027
19510	Black African	83103028
87	Coloured	83103028
43	Indian or Asian	83103028
48	White	83103028
156	Other	83103028
6010	Black African	83103029
62	Coloured	83103029
24	Indian or Asian	83103029
510	White	83103029
3	Other	83103029
5801	Black African	83104001
15	Coloured	83104001
2	Indian or Asian	83104001
35	White	83104001
0	Other	83104001
4822	Black African	83104002
27	Coloured	83104002
24	Indian or Asian	83104002
233	White	83104002
11	Other	83104002
6451	Black African	83104003
46	Coloured	83104003
11	Indian or Asian	83104003
19	White	83104003
11	Other	83104003
5383	Black African	83104004
34	Coloured	83104004
57	Indian or Asian	83104004
572	White	83104004
3	Other	83104004
4217	Black African	83104005
33	Coloured	83104005
5	Indian or Asian	83104005
176	White	83104005
3	Other	83104005
6555	Black African	83104006
111	Coloured	83104006
63	Indian or Asian	83104006
771	White	83104006
15	Other	83104006
5074	Black African	83104007
102	Coloured	83104007
49	Indian or Asian	83104007
849	White	83104007
13	Other	83104007
2866	Black African	83104008
195	Coloured	83104008
118	Indian or Asian	83104008
2422	White	83104008
22	Other	83104008
10211	Black African	83105001
37	Coloured	83105001
12	Indian or Asian	83105001
10	White	83105001
6	Other	83105001
11104	Black African	83105002
35	Coloured	83105002
37	Indian or Asian	83105002
17	White	83105002
14	Other	83105002
7842	Black African	83105003
6	Coloured	83105003
14	Indian or Asian	83105003
0	White	83105003
8	Other	83105003
15609	Black African	83105004
60	Coloured	83105004
50	Indian or Asian	83105004
25	White	83105004
23	Other	83105004
7026	Black African	83105005
9	Coloured	83105005
24	Indian or Asian	83105005
7	White	83105005
3	Other	83105005
10857	Black African	83105006
12	Coloured	83105006
27	Indian or Asian	83105006
6	White	83105006
6	Other	83105006
9632	Black African	83105007
12	Coloured	83105007
14	Indian or Asian	83105007
7	White	83105007
25	Other	83105007
12032	Black African	83105008
15	Coloured	83105008
34	Indian or Asian	83105008
80	White	83105008
56	Other	83105008
9860	Black African	83105009
26	Coloured	83105009
38	Indian or Asian	83105009
5	White	83105009
67	Other	83105009
7510	Black African	83105010
10	Coloured	83105010
61	Indian or Asian	83105010
3	White	83105010
3	Other	83105010
11479	Black African	83105011
8	Coloured	83105011
30	Indian or Asian	83105011
8	White	83105011
8	Other	83105011
6577	Black African	83105012
23	Coloured	83105012
16	Indian or Asian	83105012
3	White	83105012
5	Other	83105012
7746	Black African	83105013
2	Coloured	83105013
64	Indian or Asian	83105013
2	White	83105013
10	Other	83105013
14000	Black African	83105014
16	Coloured	83105014
21	Indian or Asian	83105014
0	White	83105014
32	Other	83105014
9837	Black African	83105015
8	Coloured	83105015
40	Indian or Asian	83105015
11	White	83105015
9	Other	83105015
9439	Black African	83105016
16	Coloured	83105016
22	Indian or Asian	83105016
5	White	83105016
2	Other	83105016
8637	Black African	83105017
16	Coloured	83105017
20	Indian or Asian	83105017
11	White	83105017
26	Other	83105017
9924	Black African	83105018
7	Coloured	83105018
23	Indian or Asian	83105018
2	White	83105018
34	Other	83105018
11292	Black African	83105019
11	Coloured	83105019
45	Indian or Asian	83105019
7	White	83105019
37	Other	83105019
14101	Black African	83105020
6	Coloured	83105020
48	Indian or Asian	83105020
8	White	83105020
79	Other	83105020
9403	Black African	83105021
8	Coloured	83105021
16	Indian or Asian	83105021
8	White	83105021
10	Other	83105021
10780	Black African	83105022
6	Coloured	83105022
23	Indian or Asian	83105022
7	White	83105022
14	Other	83105022
8907	Black African	83105023
8	Coloured	83105023
56	Indian or Asian	83105023
7	White	83105023
30	Other	83105023
10105	Black African	83105024
3	Coloured	83105024
6	Indian or Asian	83105024
5	White	83105024
16	Other	83105024
8119	Black African	83105025
28	Coloured	83105025
40	Indian or Asian	83105025
30	White	83105025
20	Other	83105025
7674	Black African	83105026
36	Coloured	83105026
11	Indian or Asian	83105026
6	White	83105026
10	Other	83105026
8321	Black African	83105027
34	Coloured	83105027
85	Indian or Asian	83105027
2	White	83105027
15	Other	83105027
7120	Black African	83105028
26	Coloured	83105028
72	Indian or Asian	83105028
2	White	83105028
10	Other	83105028
5901	Black African	83105029
8	Coloured	83105029
13	Indian or Asian	83105029
0	White	83105029
8	Other	83105029
11140	Black African	83105030
33	Coloured	83105030
30	Indian or Asian	83105030
2	White	83105030
10	Other	83105030
9324	Black African	83105031
11	Coloured	83105031
22	Indian or Asian	83105031
2	White	83105031
6	Other	83105031
6444	Black African	83105032
9	Coloured	83105032
16	Indian or Asian	83105032
15	White	83105032
25	Other	83105032
8035	Black African	83106001
3	Coloured	83106001
15	Indian or Asian	83106001
3	White	83106001
20	Other	83106001
9054	Black African	83106002
43	Coloured	83106002
38	Indian or Asian	83106002
18	White	83106002
9	Other	83106002
7251	Black African	83106003
2	Coloured	83106003
5	Indian or Asian	83106003
2	White	83106003
2	Other	83106003
8011	Black African	83106004
5	Coloured	83106004
64	Indian or Asian	83106004
0	White	83106004
7	Other	83106004
8191	Black African	83106005
10	Coloured	83106005
30	Indian or Asian	83106005
3	White	83106005
3	Other	83106005
9637	Black African	83106006
6	Coloured	83106006
24	Indian or Asian	83106006
2	White	83106006
7	Other	83106006
7232	Black African	83106007
12	Coloured	83106007
5	Indian or Asian	83106007
1	White	83106007
0	Other	83106007
7366	Black African	83106008
2	Coloured	83106008
8	Indian or Asian	83106008
3	White	83106008
0	Other	83106008
5423	Black African	83106009
7	Coloured	83106009
15	Indian or Asian	83106009
1	White	83106009
0	Other	83106009
7786	Black African	83106010
2	Coloured	83106010
17	Indian or Asian	83106010
3	White	83106010
1	Other	83106010
8448	Black African	83106011
2	Coloured	83106011
12	Indian or Asian	83106011
11	White	83106011
4	Other	83106011
9158	Black African	83106012
0	Coloured	83106012
22	Indian or Asian	83106012
11	White	83106012
16	Other	83106012
7666	Black African	83106013
8	Coloured	83106013
13	Indian or Asian	83106013
6	White	83106013
14	Other	83106013
7381	Black African	83106014
2	Coloured	83106014
17	Indian or Asian	83106014
19	White	83106014
7	Other	83106014
9136	Black African	83106015
10	Coloured	83106015
7	Indian or Asian	83106015
3	White	83106015
2	Other	83106015
4662	Black African	83106016
11	Coloured	83106016
41	Indian or Asian	83106016
0	White	83106016
2	Other	83106016
10516	Black African	83106017
11	Coloured	83106017
49	Indian or Asian	83106017
5	White	83106017
48	Other	83106017
7774	Black African	83106018
7	Coloured	83106018
39	Indian or Asian	83106018
0	White	83106018
10	Other	83106018
9644	Black African	83106019
2	Coloured	83106019
16	Indian or Asian	83106019
5	White	83106019
19	Other	83106019
6762	Black African	83106020
1	Coloured	83106020
9	Indian or Asian	83106020
1	White	83106020
10	Other	83106020
8929	Black African	83106021
1	Coloured	83106021
6	Indian or Asian	83106021
2	White	83106021
16	Other	83106021
9534	Black African	83106022
2	Coloured	83106022
1	Indian or Asian	83106022
2	White	83106022
5	Other	83106022
5241	Black African	83106023
9	Coloured	83106023
11	Indian or Asian	83106023
1	White	83106023
20	Other	83106023
10159	Black African	83106024
2	Coloured	83106024
15	Indian or Asian	83106024
4	White	83106024
23	Other	83106024
7475	Black African	83106025
6	Coloured	83106025
4	Indian or Asian	83106025
0	White	83106025
12	Other	83106025
8866	Black African	83106026
9	Coloured	83106026
17	Indian or Asian	83106026
0	White	83106026
20	Other	83106026
7945	Black African	83106027
14	Coloured	83106027
5	Indian or Asian	83106027
2	White	83106027
28	Other	83106027
6514	Black African	83106028
2	Coloured	83106028
30	Indian or Asian	83106028
6	White	83106028
12	Other	83106028
7862	Black African	83106029
22	Coloured	83106029
49	Indian or Asian	83106029
18	White	83106029
4	Other	83106029
8234	Black African	83106030
15	Coloured	83106030
34	Indian or Asian	83106030
2	White	83106030
14	Other	83106030
8425	Black African	83106031
16	Coloured	83106031
49	Indian or Asian	83106031
4	White	83106031
0	Other	83106031
3227	Black African	83201001
18	Coloured	83201001
2	Indian or Asian	83201001
2	White	83201001
8	Other	83201001
8156	Black African	83201002
27	Coloured	83201002
12	Indian or Asian	83201002
2	White	83201002
20	Other	83201002
9794	Black African	83201003
57	Coloured	83201003
17	Indian or Asian	83201003
19	White	83201003
33	Other	83201003
6452	Black African	83201004
77	Coloured	83201004
13	Indian or Asian	83201004
1255	White	83201004
23	Other	83201004
8619	Black African	83201005
693	Coloured	83201005
277	Indian or Asian	83201005
440	White	83201005
64	Other	83201005
5011	Black African	83201006
46	Coloured	83201006
11	Indian or Asian	83201006
112	White	83201006
12	Other	83201006
6198	Black African	83201007
696	Coloured	83201007
52	Indian or Asian	83201007
2437	White	83201007
53	Other	83201007
7259	Black African	83201008
6	Coloured	83201008
9	Indian or Asian	83201008
72	White	83201008
21	Other	83201008
8452	Black African	83201009
55	Coloured	83201009
9	Indian or Asian	83201009
1	White	83201009
8	Other	83201009
3639	Black African	83201010
530	Coloured	83201010
35	Indian or Asian	83201010
1087	White	83201010
84	Other	83201010
4783	Black African	83201011
12	Coloured	83201011
16	Indian or Asian	83201011
576	White	83201011
250	Other	83201011
1068	Black African	83201012
89	Coloured	83201012
29	Indian or Asian	83201012
3286	White	83201012
11	Other	83201012
2193	Black African	83201013
36	Coloured	83201013
6	Indian or Asian	83201013
344	White	83201013
5	Other	83201013
5436	Black African	83201014
251	Coloured	83201014
106	Indian or Asian	83201014
4667	White	83201014
24	Other	83201014
19861	Black African	83202001
79	Coloured	83202001
314	Indian or Asian	83202001
1846	White	83202001
51	Other	83202001
21968	Black African	83202002
65	Coloured	83202002
27	Indian or Asian	83202002
3	White	83202002
6	Other	83202002
15653	Black African	83202003
76	Coloured	83202003
5	Indian or Asian	83202003
399	White	83202003
8	Other	83202003
9613	Black African	83202004
31	Coloured	83202004
6	Indian or Asian	83202004
10	White	83202004
7	Other	83202004
16793	Black African	83202005
78	Coloured	83202005
10	Indian or Asian	83202005
6	White	83202005
27	Other	83202005
15263	Black African	83202006
81	Coloured	83202006
23	Indian or Asian	83202006
16	White	83202006
45	Other	83202006
13216	Black African	83202007
62	Coloured	83202007
20	Indian or Asian	83202007
3	White	83202007
0	Other	83202007
14444	Black African	83202008
122	Coloured	83202008
46	Indian or Asian	83202008
1772	White	83202008
20	Other	83202008
14239	Black African	83202009
70	Coloured	83202009
11	Indian or Asian	83202009
4	White	83202009
7	Other	83202009
14141	Black African	83202010
39	Coloured	83202010
12	Indian or Asian	83202010
1	White	83202010
19	Other	83202010
15526	Black African	83202011
69	Coloured	83202011
18	Indian or Asian	83202011
8	White	83202011
6	Other	83202011
10261	Black African	83202012
104	Coloured	83202012
64	Indian or Asian	83202012
2803	White	83202012
19	Other	83202012
11168	Black African	83202013
22	Coloured	83202013
4	Indian or Asian	83202013
4	White	83202013
36	Other	83202013
12387	Black African	83202014
433	Coloured	83202014
2043	Indian or Asian	83202014
3634	White	83202014
146	Other	83202014
5403	Black African	83202015
369	Coloured	83202015
444	Indian or Asian	83202015
9112	White	83202015
76	Other	83202015
3966	Black African	83202016
258	Coloured	83202016
144	Indian or Asian	83202016
7034	White	83202016
77	Other	83202016
3339	Black African	83202017
1251	Coloured	83202017
267	Indian or Asian	83202017
10479	White	83202017
92	Other	83202017
11396	Black African	83202018
222	Coloured	83202018
58	Indian or Asian	83202018
2784	White	83202018
36	Other	83202018
14432	Black African	83202019
79	Coloured	83202019
13	Indian or Asian	83202019
16	White	83202019
17	Other	83202019
13365	Black African	83202020
59	Coloured	83202020
12	Indian or Asian	83202020
1	White	83202020
11	Other	83202020
16690	Black African	83202021
56	Coloured	83202021
19	Indian or Asian	83202021
10	White	83202021
25	Other	83202021
13740	Black African	83202022
48	Coloured	83202022
8	Indian or Asian	83202022
16	White	83202022
10	Other	83202022
10342	Black African	83202023
47	Coloured	83202023
1	Indian or Asian	83202023
4	White	83202023
5	Other	83202023
12104	Black African	83202024
15	Coloured	83202024
9	Indian or Asian	83202024
34	White	83202024
6	Other	83202024
14813	Black African	83202025
71	Coloured	83202025
17	Indian or Asian	83202025
14	White	83202025
30	Other	83202025
17367	Black African	83202026
87	Coloured	83202026
10	Indian or Asian	83202026
24	White	83202026
21	Other	83202026
18148	Black African	83202027
37	Coloured	83202027
28	Indian or Asian	83202027
200	White	83202027
6	Other	83202027
15675	Black African	83202028
37	Coloured	83202028
5	Indian or Asian	83202028
7	White	83202028
1	Other	83202028
15974	Black African	83202029
35	Coloured	83202029
15	Indian or Asian	83202029
16	White	83202029
5	Other	83202029
4042	Black African	83202030
245	Coloured	83202030
280	Indian or Asian	83202030
7082	White	83202030
39	Other	83202030
11033	Black African	83202031
45	Coloured	83202031
9	Indian or Asian	83202031
4	White	83202031
5	Other	83202031
17718	Black African	83202032
133	Coloured	83202032
18	Indian or Asian	83202032
29	White	83202032
83	Other	83202032
12775	Black African	83202033
142	Coloured	83202033
25	Indian or Asian	83202033
14	White	83202033
37	Other	83202033
12298	Black African	83202034
22	Coloured	83202034
5	Indian or Asian	83202034
7	White	83202034
6	Other	83202034
14993	Black African	83202035
73	Coloured	83202035
18	Indian or Asian	83202035
16	White	83202035
10	Other	83202035
12870	Black African	83202036
19	Coloured	83202036
14	Indian or Asian	83202036
0	White	83202036
7	Other	83202036
14300	Black African	83202037
57	Coloured	83202037
17	Indian or Asian	83202037
3	White	83202037
18	Other	83202037
20785	Black African	83202038
757	Coloured	83202038
161	Indian or Asian	83202038
3473	White	83202038
78	Other	83202038
14308	Black African	83202039
99	Coloured	83202039
22	Indian or Asian	83202039
561	White	83202039
24	Other	83202039
4486	Black African	83203001
28	Coloured	83203001
14	Indian or Asian	83203001
511	White	83203001
0	Other	83203001
7757	Black African	83203002
23	Coloured	83203002
5	Indian or Asian	83203002
349	White	83203002
5	Other	83203002
12622	Black African	83203003
131	Coloured	83203003
39	Indian or Asian	83203003
355	White	83203003
27	Other	83203003
8113	Black African	83203004
49	Coloured	83203004
24	Indian or Asian	83203004
256	White	83203004
13	Other	83203004
5618	Black African	83203005
26	Coloured	83203005
25	Indian or Asian	83203005
3	White	83203005
7	Other	83203005
6661	Black African	83203006
86	Coloured	83203006
7	Indian or Asian	83203006
20	White	83203006
10	Other	83203006
3351	Black African	83203007
23	Coloured	83203007
3	Indian or Asian	83203007
0	White	83203007
15	Other	83203007
6659	Black African	83203008
110	Coloured	83203008
59	Indian or Asian	83203008
2655	White	83203008
22	Other	83203008
3178	Black African	83203009
863	Coloured	83203009
513	Indian or Asian	83203009
2404	White	83203009
28	Other	83203009
14231	Black African	83204001
34	Coloured	83204001
32	Indian or Asian	83204001
8	White	83204001
11	Other	83204001
21673	Black African	83204002
4	Coloured	83204002
30	Indian or Asian	83204002
7	White	83204002
8	Other	83204002
16687	Black African	83204003
34	Coloured	83204003
34	Indian or Asian	83204003
3	White	83204003
42	Other	83204003
8871	Black African	83204004
32	Coloured	83204004
12	Indian or Asian	83204004
6	White	83204004
10	Other	83204004
12878	Black African	83204005
9	Coloured	83204005
7	Indian or Asian	83204005
18	White	83204005
2	Other	83204005
13289	Black African	83204006
72	Coloured	83204006
137	Indian or Asian	83204006
1778	White	83204006
49	Other	83204006
15996	Black African	83204007
33	Coloured	83204007
24	Indian or Asian	83204007
1425	White	83204007
62	Other	83204007
13856	Black African	83204008
14	Coloured	83204008
9	Indian or Asian	83204008
5	White	83204008
19	Other	83204008
13560	Black African	83204009
38	Coloured	83204009
49	Indian or Asian	83204009
21	White	83204009
8	Other	83204009
13141	Black African	83204010
12	Coloured	83204010
16	Indian or Asian	83204010
3	White	83204010
3	Other	83204010
12816	Black African	83204011
8	Coloured	83204011
18	Indian or Asian	83204011
13	White	83204011
55	Other	83204011
10555	Black African	83204012
7	Coloured	83204012
29	Indian or Asian	83204012
9	White	83204012
0	Other	83204012
9865	Black African	83204013
83	Coloured	83204013
30	Indian or Asian	83204013
5	White	83204013
6	Other	83204013
10700	Black African	83204014
7	Coloured	83204014
16	Indian or Asian	83204014
7	White	83204014
1	Other	83204014
12552	Black African	83204015
27	Coloured	83204015
8	Indian or Asian	83204015
7	White	83204015
5	Other	83204015
9830	Black African	83204016
10	Coloured	83204016
16	Indian or Asian	83204016
7	White	83204016
2	Other	83204016
7344	Black African	83204017
8	Coloured	83204017
3	Indian or Asian	83204017
4	White	83204017
8	Other	83204017
10123	Black African	83204018
10	Coloured	83204018
16	Indian or Asian	83204018
4	White	83204018
0	Other	83204018
8808	Black African	83204019
11	Coloured	83204019
11	Indian or Asian	83204019
5	White	83204019
0	Other	83204019
15489	Black African	83204020
50	Coloured	83204020
36	Indian or Asian	83204020
11	White	83204020
7	Other	83204020
15136	Black African	83204021
44	Coloured	83204021
26	Indian or Asian	83204021
8	White	83204021
10	Other	83204021
11678	Black African	83204022
33	Coloured	83204022
88	Indian or Asian	83204022
6	White	83204022
21	Other	83204022
7786	Black African	83204023
4	Coloured	83204023
18	Indian or Asian	83204023
2	White	83204023
0	Other	83204023
11812	Black African	83204024
23	Coloured	83204024
41	Indian or Asian	83204024
2	White	83204024
7	Other	83204024
8535	Black African	83204025
0	Coloured	83204025
14	Indian or Asian	83204025
13	White	83204025
1	Other	83204025
6327	Black African	83204026
7	Coloured	83204026
31	Indian or Asian	83204026
2	White	83204026
4	Other	83204026
11382	Black African	83204027
24	Coloured	83204027
54	Indian or Asian	83204027
7	White	83204027
20	Other	83204027
6141	Black African	83204028
3	Coloured	83204028
12	Indian or Asian	83204028
7	White	83204028
0	Other	83204028
9826	Black African	83204029
65	Coloured	83204029
18	Indian or Asian	83204029
736	White	83204029
3	Other	83204029
12372	Black African	83204030
134	Coloured	83204030
436	Indian or Asian	83204030
2140	White	83204030
71	Other	83204030
7701	Black African	83204031
7	Coloured	83204031
11	Indian or Asian	83204031
17	White	83204031
3	Other	83204031
10082	Black African	83204032
21	Coloured	83204032
6	Indian or Asian	83204032
2	White	83204032
0	Other	83204032
13031	Black African	83204033
23	Coloured	83204033
28	Indian or Asian	83204033
13	White	83204033
10	Other	83204033
20686	Black African	83205001
52	Coloured	83205001
16	Indian or Asian	83205001
14	White	83205001
9	Other	83205001
11139	Black African	83205002
6	Coloured	83205002
2	Indian or Asian	83205002
1	White	83205002
6	Other	83205002
15673	Black African	83205003
18	Coloured	83205003
9	Indian or Asian	83205003
2	White	83205003
8	Other	83205003
11056	Black African	83205004
10	Coloured	83205004
3	Indian or Asian	83205004
9	White	83205004
0	Other	83205004
10643	Black African	83205005
23	Coloured	83205005
2	Indian or Asian	83205005
11	White	83205005
1	Other	83205005
18013	Black African	83205006
125	Coloured	83205006
14	Indian or Asian	83205006
2	White	83205006
2	Other	83205006
14951	Black African	83205007
22	Coloured	83205007
10	Indian or Asian	83205007
27	White	83205007
31	Other	83205007
12985	Black African	83205008
8	Coloured	83205008
38	Indian or Asian	83205008
6	White	83205008
6	Other	83205008
18296	Black African	83205009
48	Coloured	83205009
37	Indian or Asian	83205009
27	White	83205009
23	Other	83205009
14832	Black African	83205010
14	Coloured	83205010
5	Indian or Asian	83205010
8	White	83205010
0	Other	83205010
14057	Black African	83205011
18	Coloured	83205011
6	Indian or Asian	83205011
2	White	83205011
4	Other	83205011
12690	Black African	83205012
3	Coloured	83205012
17	Indian or Asian	83205012
39	White	83205012
9	Other	83205012
11864	Black African	83205013
1	Coloured	83205013
9	Indian or Asian	83205013
0	White	83205013
1	Other	83205013
12816	Black African	83205014
2	Coloured	83205014
1	Indian or Asian	83205014
1	White	83205014
6	Other	83205014
15336	Black African	83205015
1	Coloured	83205015
6	Indian or Asian	83205015
3	White	83205015
8	Other	83205015
11397	Black African	83205016
12	Coloured	83205016
2	Indian or Asian	83205016
3	White	83205016
21	Other	83205016
14945	Black African	83205017
12	Coloured	83205017
25	Indian or Asian	83205017
5	White	83205017
11	Other	83205017
19248	Black African	83205018
13	Coloured	83205018
12	Indian or Asian	83205018
18	White	83205018
19	Other	83205018
16691	Black African	83205019
3	Coloured	83205019
7	Indian or Asian	83205019
2	White	83205019
11	Other	83205019
12125	Black African	83205020
3	Coloured	83205020
13	Indian or Asian	83205020
3	White	83205020
11	Other	83205020
14222	Black African	83205021
0	Coloured	83205021
9	Indian or Asian	83205021
1	White	83205021
6	Other	83205021
13191	Black African	83205022
6	Coloured	83205022
13	Indian or Asian	83205022
12	White	83205022
4	Other	83205022
14831	Black African	83205023
29	Coloured	83205023
20	Indian or Asian	83205023
111	White	83205023
2	Other	83205023
15467	Black African	83205024
23	Coloured	83205024
9	Indian or Asian	83205024
4	White	83205024
8	Other	83205024
16506	Black African	83205025
2	Coloured	83205025
12	Indian or Asian	83205025
7	White	83205025
1	Other	83205025
13099	Black African	83205026
10	Coloured	83205026
5	Indian or Asian	83205026
6	White	83205026
2	Other	83205026
14483	Black African	83205027
1	Coloured	83205027
11	Indian or Asian	83205027
2	White	83205027
2	Other	83205027
9888	Black African	83205028
10	Coloured	83205028
3	Indian or Asian	83205028
0	White	83205028
6	Other	83205028
11765	Black African	83205029
0	Coloured	83205029
6	Indian or Asian	83205029
3	White	83205029
6	Other	83205029
15497	Black African	83205030
3	Coloured	83205030
11	Indian or Asian	83205030
0	White	83205030
1	Other	83205030
20296	Black African	83205031
5	Coloured	83205031
68	Indian or Asian	83205031
13	White	83205031
23	Other	83205031
13119	Black African	83205032
6	Coloured	83205032
19	Indian or Asian	83205032
6	White	83205032
5	Other	83205032
17560	Black African	83205033
18	Coloured	83205033
26	Indian or Asian	83205033
12	White	83205033
1	Other	83205033
18175	Black African	83205034
20	Coloured	83205034
33	Indian or Asian	83205034
670	White	83205034
15	Other	83205034
15929	Black African	83205035
7	Coloured	83205035
12	Indian or Asian	83205035
5	White	83205035
2	Other	83205035
13563	Black African	83205036
1	Coloured	83205036
11	Indian or Asian	83205036
8	White	83205036
4	Other	83205036
11756	Black African	83205037
25	Coloured	83205037
43	Indian or Asian	83205037
7	White	83205037
22	Other	83205037
7612	Black African	63701001
8	Coloured	63701001
10	Indian or Asian	63701001
22	White	63701001
1	Other	63701001
8004	Black African	63701002
5	Coloured	63701002
20	Indian or Asian	63701002
2	White	63701002
20	Other	63701002
8788	Black African	63701003
19	Coloured	63701003
11	Indian or Asian	63701003
5	White	63701003
21	Other	63701003
6546	Black African	63701004
11	Coloured	63701004
12	Indian or Asian	63701004
1	White	63701004
27	Other	63701004
5884	Black African	63701005
0	Coloured	63701005
6	Indian or Asian	63701005
2	White	63701005
3	Other	63701005
5271	Black African	63701006
12	Coloured	63701006
3	Indian or Asian	63701006
1	White	63701006
15	Other	63701006
6677	Black African	63701007
21	Coloured	63701007
18	Indian or Asian	63701007
1	White	63701007
2	Other	63701007
6099	Black African	63701008
3	Coloured	63701008
4	Indian or Asian	63701008
3	White	63701008
14	Other	63701008
4844	Black African	63701009
3	Coloured	63701009
0	Indian or Asian	63701009
4	White	63701009
3	Other	63701009
5992	Black African	63701010
2	Coloured	63701010
2	Indian or Asian	63701010
3	White	63701010
6	Other	63701010
7063	Black African	63701011
9	Coloured	63701011
5	Indian or Asian	63701011
58	White	63701011
0	Other	63701011
8661	Black African	63701012
2	Coloured	63701012
8	Indian or Asian	63701012
0	White	63701012
6	Other	63701012
10903	Black African	63701013
49	Coloured	63701013
57	Indian or Asian	63701013
161	White	63701013
16	Other	63701013
7376	Black African	63701014
7	Coloured	63701014
9	Indian or Asian	63701014
5	White	63701014
1	Other	63701014
4642	Black African	63701015
2	Coloured	63701015
1	Indian or Asian	63701015
2	White	63701015
3	Other	63701015
6578	Black African	63701016
10	Coloured	63701016
14	Indian or Asian	63701016
1	White	63701016
4	Other	63701016
4488	Black African	63701017
17	Coloured	63701017
3	Indian or Asian	63701017
2	White	63701017
1	Other	63701017
5540	Black African	63701018
0	Coloured	63701018
7	Indian or Asian	63701018
2	White	63701018
4	Other	63701018
6852	Black African	63701019
2	Coloured	63701019
5	Indian or Asian	63701019
3	White	63701019
11	Other	63701019
5679	Black African	63701020
1	Coloured	63701020
10	Indian or Asian	63701020
0	White	63701020
4	Other	63701020
5195	Black African	63701021
36	Coloured	63701021
18	Indian or Asian	63701021
5	White	63701021
1	Other	63701021
8291	Black African	63701022
2	Coloured	63701022
5	Indian or Asian	63701022
3	White	63701022
14	Other	63701022
6733	Black African	63701023
31	Coloured	63701023
6	Indian or Asian	63701023
19	White	63701023
2	Other	63701023
4719	Black African	63701024
3	Coloured	63701024
5	Indian or Asian	63701024
1	White	63701024
6	Other	63701024
6310	Black African	63701025
1	Coloured	63701025
8	Indian or Asian	63701025
27	White	63701025
12	Other	63701025
6976	Black African	63701026
2	Coloured	63701026
2	Indian or Asian	63701026
8	White	63701026
7	Other	63701026
4677	Black African	63701027
12	Coloured	63701027
2	Indian or Asian	63701027
1	White	63701027
4	Other	63701027
9431	Black African	63701028
11	Coloured	63701028
14	Indian or Asian	63701028
1	White	63701028
16	Other	63701028
9324	Black African	63702001
24	Coloured	63702001
38	Indian or Asian	63702001
120	White	63702001
11	Other	63702001
8519	Black African	63702002
26	Coloured	63702002
35	Indian or Asian	63702002
11	White	63702002
21	Other	63702002
10853	Black African	63702003
12	Coloured	63702003
5	Indian or Asian	63702003
9	White	63702003
3	Other	63702003
9373	Black African	63702004
25	Coloured	63702004
12	Indian or Asian	63702004
19	White	63702004
6	Other	63702004
12276	Black African	63702005
17	Coloured	63702005
22	Indian or Asian	63702005
14	White	63702005
30	Other	63702005
9267	Black African	63702006
9	Coloured	63702006
29	Indian or Asian	63702006
3	White	63702006
11	Other	63702006
9438	Black African	63702007
71	Coloured	63702007
24	Indian or Asian	63702007
2	White	63702007
11	Other	63702007
10543	Black African	63702008
59	Coloured	63702008
12	Indian or Asian	63702008
3	White	63702008
14	Other	63702008
14069	Black African	63702009
111	Coloured	63702009
16	Indian or Asian	63702009
13	White	63702009
24	Other	63702009
20045	Black African	63702010
54	Coloured	63702010
9	Indian or Asian	63702010
9	White	63702010
32	Other	63702010
12741	Black African	63702011
75	Coloured	63702011
9	Indian or Asian	63702011
7	White	63702011
75	Other	63702011
8830	Black African	63702012
37	Coloured	63702012
32	Indian or Asian	63702012
9	White	63702012
9	Other	63702012
7367	Black African	63702013
147	Coloured	63702013
16	Indian or Asian	63702013
3	White	63702013
27	Other	63702013
18690	Black African	63702014
216	Coloured	63702014
60	Indian or Asian	63702014
3923	White	63702014
117	Other	63702014
8840	Black African	63702015
7	Coloured	63702015
10	Indian or Asian	63702015
4	White	63702015
19	Other	63702015
13191	Black African	63702016
35	Coloured	63702016
20	Indian or Asian	63702016
8	White	63702016
21	Other	63702016
13769	Black African	63702017
28	Coloured	63702017
8	Indian or Asian	63702017
10	White	63702017
12	Other	63702017
11124	Black African	63702018
29	Coloured	63702018
26	Indian or Asian	63702018
18	White	63702018
81	Other	63702018
11776	Black African	63702019
77	Coloured	63702019
30	Indian or Asian	63702019
3	White	63702019
62	Other	63702019
11510	Black African	63702020
64	Coloured	63702020
9	Indian or Asian	63702020
21	White	63702020
26	Other	63702020
9537	Black African	63702021
1312	Coloured	63702021
60	Indian or Asian	63702021
2371	White	63702021
198	Other	63702021
8556	Black African	63702022
240	Coloured	63702022
107	Indian or Asian	63702022
5504	White	63702022
133	Other	63702022
1505	Black African	63702023
109	Coloured	63702023
1231	Indian or Asian	63702023
2774	White	63702023
90	Other	63702023
13719	Black African	63702024
64	Coloured	63702024
7	Indian or Asian	63702024
2	White	63702024
23	Other	63702024
32922	Black African	63702025
228	Coloured	63702025
77	Indian or Asian	63702025
3678	White	63702025
60	Other	63702025
19875	Black African	63702026
110	Coloured	63702026
61	Indian or Asian	63702026
155	White	63702026
175	Other	63702026
12038	Black African	63702027
194	Coloured	63702027
104	Indian or Asian	63702027
3710	White	63702027
43	Other	63702027
11604	Black African	63702028
84	Coloured	63702028
28	Indian or Asian	63702028
3	White	63702028
67	Other	63702028
15363	Black African	63702029
195	Coloured	63702029
108	Indian or Asian	63702029
5381	White	63702029
122	Other	63702029
8153	Black African	63702030
188	Coloured	63702030
78	Indian or Asian	63702030
8386	White	63702030
85	Other	63702030
8412	Black African	63702031
41	Coloured	63702031
34	Indian or Asian	63702031
8	White	63702031
16	Other	63702031
8616	Black African	63702032
11	Coloured	63702032
2	Indian or Asian	63702032
8	White	63702032
21	Other	63702032
7914	Black African	63702033
213	Coloured	63702033
88	Indian or Asian	63702033
6468	White	63702033
38	Other	63702033
9836	Black African	63702034
35	Coloured	63702034
9	Indian or Asian	63702034
16	White	63702034
11	Other	63702034
15721	Black African	63702035
99	Coloured	63702035
12	Indian or Asian	63702035
12	White	63702035
20	Other	63702035
10875	Black African	63702036
46	Coloured	63702036
17	Indian or Asian	63702036
4	White	63702036
47	Other	63702036
14805	Black African	63703001
116	Coloured	63703001
38	Indian or Asian	63703001
766	White	63703001
94	Other	63703001
16664	Black African	63703002
34	Coloured	63703002
31	Indian or Asian	63703002
8	White	63703002
55	Other	63703002
10441	Black African	63703003
121	Coloured	63703003
49	Indian or Asian	63703003
86	White	63703003
34	Other	63703003
13710	Black African	63703004
13	Coloured	63703004
21	Indian or Asian	63703004
10	White	63703004
12	Other	63703004
8970	Black African	63703005
17	Coloured	63703005
6	Indian or Asian	63703005
3	White	63703005
19	Other	63703005
12591	Black African	63703006
33	Coloured	63703006
7	Indian or Asian	63703006
18	White	63703006
101	Other	63703006
17777	Black African	63703007
51	Coloured	63703007
11	Indian or Asian	63703007
16	White	63703007
48	Other	63703007
20509	Black African	63703008
380	Coloured	63703008
57	Indian or Asian	63703008
908	White	63703008
44	Other	63703008
8322	Black African	63703009
116	Coloured	63703009
24	Indian or Asian	63703009
34	White	63703009
15	Other	63703009
16802	Black African	63703010
983	Coloured	63703010
1050	Indian or Asian	63703010
152	White	63703010
68	Other	63703010
17387	Black African	63703011
92	Coloured	63703011
29	Indian or Asian	63703011
22	White	63703011
47	Other	63703011
14936	Black African	63703012
38	Coloured	63703012
13	Indian or Asian	63703012
9	White	63703012
19	Other	63703012
7233	Black African	63703013
156	Coloured	63703013
35	Indian or Asian	63703013
345	White	63703013
73	Other	63703013
2138	Black African	63703014
233	Coloured	63703014
186	Indian or Asian	63703014
6877	White	63703014
46	Other	63703014
2522	Black African	63703015
298	Coloured	63703015
171	Indian or Asian	63703015
9503	White	63703015
140	Other	63703015
2509	Black African	63703016
191	Coloured	63703016
63	Indian or Asian	63703016
6693	White	63703016
69	Other	63703016
7421	Black African	63703017
545	Coloured	63703017
412	Indian or Asian	63703017
12392	White	63703017
119	Other	63703017
15880	Black African	63703018
349	Coloured	63703018
1495	Indian or Asian	63703018
5641	White	63703018
137	Other	63703018
23886	Black African	63703019
141	Coloured	63703019
14	Indian or Asian	63703019
31	White	63703019
27	Other	63703019
8638	Black African	63703020
47	Coloured	63703020
4	Indian or Asian	63703020
3	White	63703020
24	Other	63703020
17993	Black African	63703021
82	Coloured	63703021
23	Indian or Asian	63703021
8	White	63703021
23	Other	63703021
18295	Black African	63703022
91	Coloured	63703022
25	Indian or Asian	63703022
11	White	63703022
98	Other	63703022
12667	Black African	63703023
22	Coloured	63703023
15	Indian or Asian	63703023
2	White	63703023
9	Other	63703023
25055	Black African	63703024
86	Coloured	63703024
52	Indian or Asian	63703024
61	White	63703024
218	Other	63703024
9989	Black African	63703025
19	Coloured	63703025
31	Indian or Asian	63703025
15	White	63703025
21	Other	63703025
13901	Black African	63703026
22	Coloured	63703026
37	Indian or Asian	63703026
7	White	63703026
7	Other	63703026
14549	Black African	63703027
65	Coloured	63703027
34	Indian or Asian	63703027
15	White	63703027
31	Other	63703027
11572	Black African	63703028
62	Coloured	63703028
13	Indian or Asian	63703028
12	White	63703028
39	Other	63703028
17483	Black African	63703029
33	Coloured	63703029
31	Indian or Asian	63703029
9	White	63703029
42	Other	63703029
13434	Black African	63703030
15	Coloured	63703030
42	Indian or Asian	63703030
6	White	63703030
35	Other	63703030
11684	Black African	63703031
38	Coloured	63703031
26	Indian or Asian	63703031
72	White	63703031
14	Other	63703031
15188	Black African	63703032
84	Coloured	63703032
86	Indian or Asian	63703032
1265	White	63703032
43	Other	63703032
6353	Black African	63703033
1	Coloured	63703033
2	Indian or Asian	63703033
25	White	63703033
63	Other	63703033
10150	Black African	63703034
26	Coloured	63703034
13	Indian or Asian	63703034
377	White	63703034
126	Other	63703034
8617	Black African	63703035
60	Coloured	63703035
20	Indian or Asian	63703035
1958	White	63703035
148	Other	63703035
12190	Black African	63703036
148	Coloured	63703036
27	Indian or Asian	63703036
4453	White	63703036
114	Other	63703036
21055	Black African	63703037
48	Coloured	63703037
20	Indian or Asian	63703037
24	White	63703037
16	Other	63703037
3095	Black African	63703038
7	Coloured	63703038
0	Indian or Asian	63703038
0	White	63703038
10	Other	63703038
7976	Black African	63704001
353	Coloured	63704001
33	Indian or Asian	63704001
138	White	63704001
81	Other	63704001
6027	Black African	63704002
106	Coloured	63704002
125	Indian or Asian	63704002
3744	White	63704002
76	Other	63704002
2254	Black African	63704003
82	Coloured	63704003
261	Indian or Asian	63704003
2293	White	63704003
18	Other	63704003
5200	Black African	63704004
20	Coloured	63704004
9	Indian or Asian	63704004
4	White	63704004
19	Other	63704004
11346	Black African	63704005
165	Coloured	63704005
8	Indian or Asian	63704005
3	White	63704005
40	Other	63704005
8071	Black African	63704006
146	Coloured	63704006
14	Indian or Asian	63704006
2387	White	63704006
50	Other	63704006
6051	Black African	63705001
10	Coloured	63705001
4	Indian or Asian	63705001
1	White	63705001
0	Other	63705001
7494	Black African	63705002
8	Coloured	63705002
19	Indian or Asian	63705002
5	White	63705002
5	Other	63705002
6485	Black African	63705003
14	Coloured	63705003
19	Indian or Asian	63705003
121	White	63705003
14	Other	63705003
9942	Black African	63705004
17	Coloured	63705004
20	Indian or Asian	63705004
5	White	63705004
13	Other	63705004
10339	Black African	63705005
15	Coloured	63705005
13	Indian or Asian	63705005
6	White	63705005
26	Other	63705005
6852	Black African	63705006
10	Coloured	63705006
7	Indian or Asian	63705006
65	White	63705006
11	Other	63705006
7254	Black African	63705007
10	Coloured	63705007
13	Indian or Asian	63705007
4	White	63705007
5	Other	63705007
7083	Black African	63705008
3	Coloured	63705008
20	Indian or Asian	63705008
31	White	63705008
0	Other	63705008
8718	Black African	63705009
9	Coloured	63705009
11	Indian or Asian	63705009
1	White	63705009
29	Other	63705009
11908	Black African	63705010
49	Coloured	63705010
64	Indian or Asian	63705010
21	White	63705010
6	Other	63705010
6142	Black African	63705011
2	Coloured	63705011
4	Indian or Asian	63705011
1	White	63705011
3	Other	63705011
5584	Black African	63705012
0	Coloured	63705012
6	Indian or Asian	63705012
2	White	63705012
3	Other	63705012
6511	Black African	63705013
73	Coloured	63705013
365	Indian or Asian	63705013
104	White	63705013
9	Other	63705013
6045	Black African	63705014
203	Coloured	63705014
255	Indian or Asian	63705014
1108	White	63705014
56	Other	63705014
7412	Black African	63705015
18	Coloured	63705015
121	Indian or Asian	63705015
3	White	63705015
9	Other	63705015
9752	Black African	63705016
13	Coloured	63705016
12	Indian or Asian	63705016
142	White	63705016
19	Other	63705016
9323	Black African	63705017
7	Coloured	63705017
9	Indian or Asian	63705017
1	White	63705017
6	Other	63705017
6685	Black African	63705018
1	Coloured	63705018
16	Indian or Asian	63705018
7	White	63705018
6	Other	63705018
7457	Black African	63705019
0	Coloured	63705019
20	Indian or Asian	63705019
13	White	63705019
20	Other	63705019
7201	Black African	63705020
8	Coloured	63705020
6	Indian or Asian	63705020
4	White	63705020
11	Other	63705020
8250	Black African	63705021
11	Coloured	63705021
23	Indian or Asian	63705021
6	White	63705021
28	Other	63705021
7190	Black African	63705022
19	Coloured	63705022
4	Indian or Asian	63705022
16	White	63705022
1	Other	63705022
7820	Black African	63705023
3	Coloured	63705023
11	Indian or Asian	63705023
1	White	63705023
5	Other	63705023
4227	Black African	63705024
0	Coloured	63705024
16	Indian or Asian	63705024
7	White	63705024
6	Other	63705024
7282	Black African	63705025
32	Coloured	63705025
21	Indian or Asian	63705025
10	White	63705025
1	Other	63705025
7498	Black African	63705026
19	Coloured	63705026
17	Indian or Asian	63705026
25	White	63705026
23	Other	63705026
8534	Black African	63705027
7	Coloured	63705027
22	Indian or Asian	63705027
89	White	63705027
4	Other	63705027
9481	Black African	63705028
31	Coloured	63705028
35	Indian or Asian	63705028
5	White	63705028
27	Other	63705028
9205	Black African	63705029
7	Coloured	63705029
16	Indian or Asian	63705029
2	White	63705029
14	Other	63705029
7298	Black African	63705030
16	Coloured	63705030
18	Indian or Asian	63705030
13	White	63705030
18	Other	63705030
7490	Black African	63705031
3	Coloured	63705031
15	Indian or Asian	63705031
11	White	63705031
11	Other	63705031
7343	Black African	63801001
18	Coloured	63801001
9	Indian or Asian	63801001
1	White	63801001
11	Other	63801001
6344	Black African	63801002
17	Coloured	63801002
17	Indian or Asian	63801002
3	White	63801002
9	Other	63801002
7180	Black African	63801003
38	Coloured	63801003
12	Indian or Asian	63801003
1	White	63801003
2	Other	63801003
8435	Black African	63801004
101	Coloured	63801004
18	Indian or Asian	63801004
12	White	63801004
5	Other	63801004
5499	Black African	63801005
17	Coloured	63801005
7	Indian or Asian	63801005
2	White	63801005
5	Other	63801005
5868	Black African	63801006
44	Coloured	63801006
31	Indian or Asian	63801006
4	White	63801006
12	Other	63801006
7898	Black African	63801007
93	Coloured	63801007
4	Indian or Asian	63801007
9	White	63801007
10	Other	63801007
11498	Black African	63801008
29	Coloured	63801008
23	Indian or Asian	63801008
4	White	63801008
10	Other	63801008
8936	Black African	63801009
46	Coloured	63801009
15	Indian or Asian	63801009
9	White	63801009
19	Other	63801009
3105	Black African	63801010
6	Coloured	63801010
6	Indian or Asian	63801010
1	White	63801010
2	Other	63801010
6649	Black African	63801011
61	Coloured	63801011
15	Indian or Asian	63801011
437	White	63801011
4	Other	63801011
6929	Black African	63801012
37	Coloured	63801012
10	Indian or Asian	63801012
0	White	63801012
44	Other	63801012
10046	Black African	63801013
128	Coloured	63801013
26	Indian or Asian	63801013
309	White	63801013
3	Other	63801013
9684	Black African	63801014
116	Coloured	63801014
33	Indian or Asian	63801014
8	White	63801014
8	Other	63801014
8942	Black African	63802001
46	Coloured	63802001
19	Indian or Asian	63802001
830	White	63802001
4	Other	63802001
7647	Black African	63802002
3	Coloured	63802002
10	Indian or Asian	63802002
2	White	63802002
6	Other	63802002
6287	Black African	63802003
11	Coloured	63802003
11	Indian or Asian	63802003
119	White	63802003
31	Other	63802003
7601	Black African	63802004
29	Coloured	63802004
35	Indian or Asian	63802004
1	White	63802004
17	Other	63802004
6741	Black African	63802005
56	Coloured	63802005
24	Indian or Asian	63802005
0	White	63802005
7	Other	63802005
8090	Black African	63802006
81	Coloured	63802006
18	Indian or Asian	63802006
9	White	63802006
15	Other	63802006
8144	Black African	63802007
107	Coloured	63802007
19	Indian or Asian	63802007
161	White	63802007
23	Other	63802007
3543	Black African	63802008
115	Coloured	63802008
19	Indian or Asian	63802008
840	White	63802008
48	Other	63802008
15471	Black African	63802009
447	Coloured	63802009
28	Indian or Asian	63802009
631	White	63802009
3	Other	63802009
9469	Black African	63802010
164	Coloured	63802010
36	Indian or Asian	63802010
561	White	63802010
1	Other	63802010
7499	Black African	63802011
130	Coloured	63802011
27	Indian or Asian	63802011
0	White	63802011
11	Other	63802011
9800	Black African	63802012
217	Coloured	63802012
58	Indian or Asian	63802012
1036	White	63802012
19	Other	63802012
3357	Black African	63802013
112	Coloured	63802013
9	Indian or Asian	63802013
0	White	63802013
4	Other	63802013
4850	Black African	63802014
168	Coloured	63802014
66	Indian or Asian	63802014
1656	White	63802014
80	Other	63802014
7378	Black African	63802015
101	Coloured	63802015
3	Indian or Asian	63802015
1102	White	63802015
12	Other	63802015
10240	Black African	63803001
82	Coloured	63803001
19	Indian or Asian	63803001
7	White	63803001
5	Other	63803001
7990	Black African	63803002
12	Coloured	63803002
12	Indian or Asian	63803002
25	White	63803002
16	Other	63803002
8493	Black African	63803003
43	Coloured	63803003
31	Indian or Asian	63803003
7	White	63803003
9	Other	63803003
8428	Black African	63803004
81	Coloured	63803004
23	Indian or Asian	63803004
645	White	63803004
6	Other	63803004
3465	Black African	63803005
15	Coloured	63803005
12	Indian or Asian	63803005
0	White	63803005
0	Other	63803005
9832	Black African	63803006
241	Coloured	63803006
179	Indian or Asian	63803006
503	White	63803006
39	Other	63803006
12450	Black African	63803007
968	Coloured	63803007
866	Indian or Asian	63803007
768	White	63803007
105	Other	63803007
6780	Black African	63803008
70	Coloured	63803008
39	Indian or Asian	63803008
19	White	63803008
4	Other	63803008
6036	Black African	63803009
3902	Coloured	63803009
538	Indian or Asian	63803009
742	White	63803009
59	Other	63803009
6379	Black African	63803010
153	Coloured	63803010
102	Indian or Asian	63803010
32	White	63803010
0	Other	63803010
5586	Black African	63803011
17	Coloured	63803011
14	Indian or Asian	63803011
5	White	63803011
47	Other	63803011
9490	Black African	63803012
62	Coloured	63803012
20	Indian or Asian	63803012
4	White	63803012
5	Other	63803012
14628	Black African	63803013
245	Coloured	63803013
75	Indian or Asian	63803013
24	White	63803013
12	Other	63803013
13187	Black African	63803014
32	Coloured	63803014
30	Indian or Asian	63803014
8	White	63803014
7	Other	63803014
8011	Black African	63803015
18	Coloured	63803015
27	Indian or Asian	63803015
4	White	63803015
2	Other	63803015
10560	Black African	63803016
33	Coloured	63803016
18	Indian or Asian	63803016
3	White	63803016
11	Other	63803016
7846	Black African	63803017
9	Coloured	63803017
22	Indian or Asian	63803017
0	White	63803017
1	Other	63803017
9583	Black African	63803018
32	Coloured	63803018
15	Indian or Asian	63803018
9	White	63803018
15	Other	63803018
5384	Black African	63803019
22	Coloured	63803019
12	Indian or Asian	63803019
1	White	63803019
1	Other	63803019
5743	Black African	63803020
45	Coloured	63803020
12	Indian or Asian	63803020
0	White	63803020
3	Other	63803020
8272	Black African	63803021
8	Coloured	63803021
12	Indian or Asian	63803021
2	White	63803021
8	Other	63803021
12437	Black African	63803022
17	Coloured	63803022
32	Indian or Asian	63803022
7	White	63803022
11	Other	63803022
8013	Black African	63803023
5	Coloured	63803023
7	Indian or Asian	63803023
2	White	63803023
12	Other	63803023
8847	Black African	63803024
16	Coloured	63803024
23	Indian or Asian	63803024
122	White	63803024
2	Other	63803024
8053	Black African	63803025
23	Coloured	63803025
17	Indian or Asian	63803025
8	White	63803025
7	Other	63803025
9412	Black African	63803026
50	Coloured	63803026
7	Indian or Asian	63803026
1	White	63803026
4	Other	63803026
10367	Black African	63803027
209	Coloured	63803027
34	Indian or Asian	63803027
327	White	63803027
10	Other	63803027
10735	Black African	63803028
79	Coloured	63803028
65	Indian or Asian	63803028
474	White	63803028
8	Other	63803028
10906	Black African	63803029
137	Coloured	63803029
28	Indian or Asian	63803029
15	White	63803029
14	Other	63803029
8787	Black African	63803030
18	Coloured	63803030
10	Indian or Asian	63803030
5	White	63803030
23	Other	63803030
12342	Black African	63803031
50	Coloured	63803031
26	Indian or Asian	63803031
1	White	63803031
11	Other	63803031
6620	Black African	63804001
47	Coloured	63804001
16	Indian or Asian	63804001
3	White	63804001
8	Other	63804001
5969	Black African	63804002
20	Coloured	63804002
16	Indian or Asian	63804002
2	White	63804002
17	Other	63804002
7470	Black African	63804003
52	Coloured	63804003
31	Indian or Asian	63804003
543	White	63804003
43	Other	63804003
7515	Black African	63804004
1802	Coloured	63804004
48	Indian or Asian	63804004
3	White	63804004
22	Other	63804004
3266	Black African	63804005
145	Coloured	63804005
59	Indian or Asian	63804005
4891	White	63804005
32	Other	63804005
2391	Black African	63804006
108	Coloured	63804006
389	Indian or Asian	63804006
3091	White	63804006
31	Other	63804006
4944	Black African	63804007
32	Coloured	63804007
12	Indian or Asian	63804007
0	White	63804007
13	Other	63804007
7084	Black African	63804008
23	Coloured	63804008
12	Indian or Asian	63804008
5	White	63804008
0	Other	63804008
4714	Black African	63804009
15	Coloured	63804009
19	Indian or Asian	63804009
1	White	63804009
16	Other	63804009
8738	Black African	63804010
39	Coloured	63804010
9	Indian or Asian	63804010
183	White	63804010
30	Other	63804010
6377	Black African	63804011
33	Coloured	63804011
17	Indian or Asian	63804011
4	White	63804011
3	Other	63804011
5902	Black African	63804012
47	Coloured	63804012
22	Indian or Asian	63804012
166	White	63804012
3	Other	63804012
10725	Black African	63804013
64	Coloured	63804013
15	Indian or Asian	63804013
697	White	63804013
31	Other	63804013
10344	Black African	63804014
242	Coloured	63804014
18	Indian or Asian	63804014
1007	White	63804014
41	Other	63804014
11013	Black African	63804015
186	Coloured	63804015
31	Indian or Asian	63804015
8	White	63804015
17	Other	63804015
9218	Black African	63804016
144	Coloured	63804016
81	Indian or Asian	63804016
1470	White	63804016
59	Other	63804016
6841	Black African	63804017
8	Coloured	63804017
10	Indian or Asian	63804017
7	White	63804017
13	Other	63804017
5482	Black African	63804018
25	Coloured	63804018
10	Indian or Asian	63804018
6	White	63804018
5	Other	63804018
7291	Black African	63804019
16	Coloured	63804019
28	Indian or Asian	63804019
1	White	63804019
0	Other	63804019
8042	Black African	63804020
88	Coloured	63804020
7	Indian or Asian	63804020
775	White	63804020
2	Other	63804020
10570	Black African	63804021
100	Coloured	63804021
85	Indian or Asian	63804021
907	White	63804021
58	Other	63804021
4758	Black African	63805001
3	Coloured	63805001
9	Indian or Asian	63805001
6	White	63805001
1	Other	63805001
8713	Black African	63805002
8	Coloured	63805002
14	Indian or Asian	63805002
25	White	63805002
8	Other	63805002
5590	Black African	63805003
2	Coloured	63805003
19	Indian or Asian	63805003
2	White	63805003
8	Other	63805003
6868	Black African	63805004
21	Coloured	63805004
18	Indian or Asian	63805004
3	White	63805004
13	Other	63805004
6334	Black African	63805005
3	Coloured	63805005
9	Indian or Asian	63805005
0	White	63805005
0	Other	63805005
5036	Black African	63805006
4	Coloured	63805006
24	Indian or Asian	63805006
4	White	63805006
9	Other	63805006
7834	Black African	63805007
18	Coloured	63805007
15	Indian or Asian	63805007
1	White	63805007
6	Other	63805007
6390	Black African	63805008
44	Coloured	63805008
13	Indian or Asian	63805008
1	White	63805008
23	Other	63805008
5790	Black African	63805009
2	Coloured	63805009
24	Indian or Asian	63805009
2	White	63805009
0	Other	63805009
4830	Black African	63805010
4	Coloured	63805010
12	Indian or Asian	63805010
8	White	63805010
14	Other	63805010
10444	Black African	63805011
23	Coloured	63805011
16	Indian or Asian	63805011
10	White	63805011
16	Other	63805011
7703	Black African	63805012
41	Coloured	63805012
33	Indian or Asian	63805012
13	White	63805012
17	Other	63805012
9962	Black African	63805013
18	Coloured	63805013
16	Indian or Asian	63805013
6	White	63805013
17	Other	63805013
7850	Black African	63805014
57	Coloured	63805014
20	Indian or Asian	63805014
249	White	63805014
16	Other	63805014
3640	Black African	63805015
681	Coloured	63805015
618	Indian or Asian	63805015
1650	White	63805015
131	Other	63805015
8222	Black African	63805016
266	Coloured	63805016
90	Indian or Asian	63805016
656	White	63805016
33	Other	63805016
6819	Black African	63805017
46	Coloured	63805017
90	Indian or Asian	63805017
942	White	63805017
47	Other	63805017
7284	Black African	63805018
1	Coloured	63805018
14	Indian or Asian	63805018
8	White	63805018
11	Other	63805018
11337	Black African	63805019
92	Coloured	63805019
24	Indian or Asian	63805019
2068	White	63805019
19	Other	63805019
6818	Black African	63805020
10	Coloured	63805020
18	Indian or Asian	63805020
5	White	63805020
3	Other	63805020
7536	Black African	63902001
444	Coloured	63902001
30	Indian or Asian	63902001
1234	White	63902001
16	Other	63902001
3233	Black African	63902002
2768	Coloured	63902002
72	Indian or Asian	63902002
714	White	63902002
38	Other	63902002
3594	Black African	63902003
4876	Coloured	63902003
50	Indian or Asian	63902003
13	White	63902003
38	Other	63902003
10766	Black African	63902004
454	Coloured	63902004
11	Indian or Asian	63902004
11	White	63902004
122	Other	63902004
7383	Black African	63902005
648	Coloured	63902005
22	Indian or Asian	63902005
879	White	63902005
12	Other	63902005
4540	Black African	63902006
100	Coloured	63902006
1	Indian or Asian	63902006
4	White	63902006
105	Other	63902006
2768	Black African	63902007
366	Coloured	63902007
542	Indian or Asian	63902007
3400	White	63902007
67	Other	63902007
5056	Black African	63902008
28	Coloured	63902008
3	Indian or Asian	63902008
5	White	63902008
12	Other	63902008
4547	Black African	63902009
143	Coloured	63902009
17	Indian or Asian	63902009
92	White	63902009
19	Other	63902009
7634	Black African	63903001
198	Coloured	63903001
38	Indian or Asian	63903001
442	White	63903001
16	Other	63903001
4770	Black African	63903002
67	Coloured	63903002
12	Indian or Asian	63903002
0	White	63903002
12	Other	63903002
7361	Black African	63903003
138	Coloured	63903003
36	Indian or Asian	63903003
619	White	63903003
12	Other	63903003
6262	Black African	63903004
81	Coloured	63903004
20	Indian or Asian	63903004
1	White	63903004
7	Other	63903004
9587	Black African	63903005
128	Coloured	63903005
12	Indian or Asian	63903005
5	White	63903005
31	Other	63903005
7760	Black African	63903006
176	Coloured	63903006
19	Indian or Asian	63903006
7	White	63903006
28	Other	63903006
5493	Black African	63903007
425	Coloured	63903007
124	Indian or Asian	63903007
2252	White	63903007
69	Other	63903007
6327	Black African	63903008
143	Coloured	63903008
28	Indian or Asian	63903008
3	White	63903008
9	Other	63903008
6278	Black African	63904001
737	Coloured	63904001
16	Indian or Asian	63904001
567	White	63904001
44	Other	63904001
9490	Black African	63904002
94	Coloured	63904002
14	Indian or Asian	63904002
4	White	63904002
9	Other	63904002
7177	Black African	63904003
30	Coloured	63904003
11	Indian or Asian	63904003
28	White	63904003
17	Other	63904003
5852	Black African	63904004
59	Coloured	63904004
5	Indian or Asian	63904004
2	White	63904004
5	Other	63904004
7305	Black African	63904005
58	Coloured	63904005
30	Indian or Asian	63904005
8	White	63904005
20	Other	63904005
8678	Black African	63904006
13	Coloured	63904006
16	Indian or Asian	63904006
5	White	63904006
5	Other	63904006
5634	Black African	63904007
42	Coloured	63904007
10	Indian or Asian	63904007
2	White	63904007
5	Other	63904007
6550	Black African	63904008
88	Coloured	63904008
24	Indian or Asian	63904008
8	White	63904008
8	Other	63904008
8095	Black African	63904009
39	Coloured	63904009
18	Indian or Asian	63904009
0	White	63904009
13	Other	63904009
6903	Black African	63904010
1	Coloured	63904010
6	Indian or Asian	63904010
1	White	63904010
0	Other	63904010
5505	Black African	63904011
53	Coloured	63904011
35	Indian or Asian	63904011
5	White	63904011
14	Other	63904011
7569	Black African	63904012
7	Coloured	63904012
13	Indian or Asian	63904012
1	White	63904012
9	Other	63904012
5997	Black African	63904013
11	Coloured	63904013
20	Indian or Asian	63904013
14	White	63904013
16	Other	63904013
6400	Black African	63904014
20	Coloured	63904014
10	Indian or Asian	63904014
7	White	63904014
1	Other	63904014
7152	Black African	63904015
8	Coloured	63904015
22	Indian or Asian	63904015
2	White	63904015
5	Other	63904015
5780	Black African	63904016
71	Coloured	63904016
13	Indian or Asian	63904016
11	White	63904016
1	Other	63904016
6858	Black African	63904017
22	Coloured	63904017
9	Indian or Asian	63904017
2	White	63904017
3	Other	63904017
7449	Black African	63904018
110	Coloured	63904018
5	Indian or Asian	63904018
1	White	63904018
18	Other	63904018
5703	Black African	63904019
15	Coloured	63904019
6	Indian or Asian	63904019
5	White	63904019
14	Other	63904019
6948	Black African	63904020
53	Coloured	63904020
29	Indian or Asian	63904020
5	White	63904020
22	Other	63904020
7240	Black African	63904021
31	Coloured	63904021
10	Indian or Asian	63904021
4	White	63904021
8	Other	63904021
5448	Black African	63904022
139	Coloured	63904022
8	Indian or Asian	63904022
4	White	63904022
9	Other	63904022
5264	Black African	63904023
26	Coloured	63904023
13	Indian or Asian	63904023
0	White	63904023
4	Other	63904023
6710	Black African	63904024
16	Coloured	63904024
10	Indian or Asian	63904024
8	White	63904024
4	Other	63904024
6746	Black African	63904025
14	Coloured	63904025
33	Indian or Asian	63904025
3	White	63904025
5	Other	63904025
5775	Black African	63904026
13	Coloured	63904026
21	Indian or Asian	63904026
1	White	63904026
1	Other	63904026
9111	Black African	63906001
276	Coloured	63906001
30	Indian or Asian	63906001
81	White	63906001
42	Other	63906001
4743	Black African	63906002
100	Coloured	63906002
12	Indian or Asian	63906002
1	White	63906002
5	Other	63906002
8169	Black African	63906003
505	Coloured	63906003
47	Indian or Asian	63906003
5	White	63906003
39	Other	63906003
1823	Black African	63906004
1781	Coloured	63906004
104	Indian or Asian	63906004
1745	White	63906004
19	Other	63906004
8734	Black African	63906005
233	Coloured	63906005
36	Indian or Asian	63906005
8	White	63906005
13	Other	63906005
3138	Black African	63906006
168	Coloured	63906006
47	Indian or Asian	63906006
3500	White	63906006
58	Other	63906006
7540	Black African	63906007
863	Coloured	63906007
20	Indian or Asian	63906007
220	White	63906007
32	Other	63906007
7588	Black African	63907001
64	Coloured	63907001
14	Indian or Asian	63907001
444	White	63907001
4	Other	63907001
6580	Black African	63907002
152	Coloured	63907002
6	Indian or Asian	63907002
585	White	63907002
9	Other	63907002
10189	Black African	63907003
359	Coloured	63907003
20	Indian or Asian	63907003
467	White	63907003
39	Other	63907003
6828	Black African	63907004
34	Coloured	63907004
20	Indian or Asian	63907004
5	White	63907004
14	Other	63907004
4483	Black African	63907005
11	Coloured	63907005
16	Indian or Asian	63907005
0	White	63907005
21	Other	63907005
5927	Black African	63907006
181	Coloured	63907006
11	Indian or Asian	63907006
214	White	63907006
9	Other	63907006
7201	Black African	63907007
96	Coloured	63907007
21	Indian or Asian	63907007
13	White	63907007
25	Other	63907007
6624	Black African	63907008
91	Coloured	63907008
8	Indian or Asian	63907008
240	White	63907008
8	Other	63907008
4819	Black African	63907009
74	Coloured	63907009
10	Indian or Asian	63907009
11	White	63907009
27	Other	63907009
7932	Black African	63907010
133	Coloured	63907010
23	Indian or Asian	63907010
2	White	63907010
20	Other	63907010
6039	Black African	63907011
20	Coloured	63907011
7	Indian or Asian	63907011
2	White	63907011
9	Other	63907011
5650	Black African	63907012
41	Coloured	63907012
11	Indian or Asian	63907012
65	White	63907012
8	Other	63907012
7762	Black African	63907013
49	Coloured	63907013
32	Indian or Asian	63907013
16	White	63907013
26	Other	63907013
7348	Black African	63907014
126	Coloured	63907014
53	Indian or Asian	63907014
13	White	63907014
50	Other	63907014
6630	Black African	63907015
37	Coloured	63907015
11	Indian or Asian	63907015
106	White	63907015
8	Other	63907015
4016	Black African	64001001
183	Coloured	64001001
4	Indian or Asian	64001001
1	White	64001001
348	Other	64001001
4445	Black African	64001002
195	Coloured	64001002
22	Indian or Asian	64001002
9	White	64001002
19	Other	64001002
14160	Black African	64001003
245	Coloured	64001003
17	Indian or Asian	64001003
160	White	64001003
13	Other	64001003
8308	Black African	64001004
334	Coloured	64001004
7	Indian or Asian	64001004
743	White	64001004
23	Other	64001004
11880	Black African	64001005
116	Coloured	64001005
20	Indian or Asian	64001005
527	White	64001005
55	Other	64001005
8292	Black African	64001006
465	Coloured	64001006
103	Indian or Asian	64001006
1906	White	64001006
86	Other	64001006
5671	Black African	64002001
76	Coloured	64002001
18	Indian or Asian	64002001
116	White	64002001
3	Other	64002001
9239	Black African	64002002
350	Coloured	64002002
58	Indian or Asian	64002002
4526	White	64002002
24	Other	64002002
4021	Black African	64002003
262	Coloured	64002003
172	Indian or Asian	64002003
6342	White	64002003
77	Other	64002003
6741	Black African	64002004
81	Coloured	64002004
30	Indian or Asian	64002004
2616	White	64002004
62	Other	64002004
366	Black African	64002005
67	Coloured	64002005
42	Indian or Asian	64002005
2335	White	64002005
30	Other	64002005
3400	Black African	64002006
234	Coloured	64002006
12	Indian or Asian	64002006
662	White	64002006
3	Other	64002006
1108	Black African	64002007
283	Coloured	64002007
56	Indian or Asian	64002007
4070	White	64002007
13	Other	64002007
4333	Black African	64002008
43	Coloured	64002008
17	Indian or Asian	64002008
3	White	64002008
3	Other	64002008
6683	Black African	64002009
141	Coloured	64002009
741	Indian or Asian	64002009
4	White	64002009
23	Other	64002009
4076	Black African	64002010
28	Coloured	64002010
4	Indian or Asian	64002010
39	White	64002010
24	Other	64002010
2604	Black African	64002011
21	Coloured	64002011
16	Indian or Asian	64002011
25	White	64002011
0	Other	64002011
5535	Black African	64002012
17	Coloured	64002012
4	Indian or Asian	64002012
34	White	64002012
26	Other	64002012
4850	Black African	64002013
3967	Coloured	64002013
28	Indian or Asian	64002013
9	White	64002013
67	Other	64002013
4413	Black African	64002014
36	Coloured	64002014
5	Indian or Asian	64002014
7	White	64002014
7	Other	64002014
837	Black African	64002015
119	Coloured	64002015
74	Indian or Asian	64002015
3513	White	64002015
34	Other	64002015
4177	Black African	64002016
66	Coloured	64002016
9	Indian or Asian	64002016
106	White	64002016
38	Other	64002016
5295	Black African	64002017
213	Coloured	64002017
0	Indian or Asian	64002017
3	White	64002017
10	Other	64002017
6212	Black African	64002018
28	Coloured	64002018
16	Indian or Asian	64002018
1	White	64002018
20	Other	64002018
9292	Black African	64002019
65	Coloured	64002019
21	Indian or Asian	64002019
13	White	64002019
39	Other	64002019
6317	Black African	64002020
112	Coloured	64002020
28	Indian or Asian	64002020
5	White	64002020
36	Other	64002020
8345	Black African	64002021
4330	Coloured	64002021
27	Indian or Asian	64002021
12	White	64002021
35	Other	64002021
310	Black African	64002022
69	Coloured	64002022
24	Indian or Asian	64002022
1969	White	64002022
3	Other	64002022
381	Black African	64002023
29	Coloured	64002023
82	Indian or Asian	64002023
3811	White	64002023
38	Other	64002023
514	Black African	64002024
55	Coloured	64002024
22	Indian or Asian	64002024
682	White	64002024
15	Other	64002024
692	Black African	64002025
93	Coloured	64002025
25	Indian or Asian	64002025
2631	White	64002025
8	Other	64002025
10601	Black African	64002026
217	Coloured	64002026
11	Indian or Asian	64002026
3	White	64002026
28	Other	64002026
13813	Black African	64003001
150	Coloured	64003001
28	Indian or Asian	64003001
2542	White	64003001
33	Other	64003001
15423	Black African	64003002
164	Coloured	64003002
36	Indian or Asian	64003002
4	White	64003002
71	Other	64003002
2708	Black African	64003003
6033	Coloured	64003003
1301	Indian or Asian	64003003
71	White	64003003
38	Other	64003003
15607	Black African	64003004
3410	Coloured	64003004
154	Indian or Asian	64003004
378	White	64003004
62	Other	64003004
12158	Black African	64003005
183	Coloured	64003005
30	Indian or Asian	64003005
16	White	64003005
22	Other	64003005
11458	Black African	64003006
262	Coloured	64003006
33	Indian or Asian	64003006
1116	White	64003006
20	Other	64003006
11345	Black African	64003007
93	Coloured	64003007
17	Indian or Asian	64003007
3	White	64003007
20	Other	64003007
9235	Black African	64003008
91	Coloured	64003008
11	Indian or Asian	64003008
12	White	64003008
20	Other	64003008
9918	Black African	64003009
48	Coloured	64003009
28	Indian or Asian	64003009
5	White	64003009
11	Other	64003009
6902	Black African	64003010
22	Coloured	64003010
22	Indian or Asian	64003010
1	White	64003010
1	Other	64003010
7637	Black African	64003011
31	Coloured	64003011
12	Indian or Asian	64003011
5	White	64003011
9	Other	64003011
15344	Black African	64003012
178	Coloured	64003012
17	Indian or Asian	64003012
36	White	64003012
11	Other	64003012
11134	Black African	64003013
108	Coloured	64003013
13	Indian or Asian	64003013
8	White	64003013
0	Other	64003013
10273	Black African	64003014
126	Coloured	64003014
19	Indian or Asian	64003014
7	White	64003014
16	Other	64003014
4253	Black African	64003015
449	Coloured	64003015
78	Indian or Asian	64003015
5896	White	64003015
54	Other	64003015
2112	Black African	64003016
152	Coloured	64003016
43	Indian or Asian	64003016
6889	White	64003016
46	Other	64003016
2421	Black African	64003017
126	Coloured	64003017
338	Indian or Asian	64003017
8584	White	64003017
66	Other	64003017
5867	Black African	64003018
212	Coloured	64003018
225	Indian or Asian	64003018
6337	White	64003018
40	Other	64003018
6139	Black African	64003019
530	Coloured	64003019
152	Indian or Asian	64003019
6653	White	64003019
138	Other	64003019
6015	Black African	64003020
35	Coloured	64003020
19	Indian or Asian	64003020
0	White	64003020
27	Other	64003020
7415	Black African	64003021
70	Coloured	64003021
23	Indian or Asian	64003021
423	White	64003021
27	Other	64003021
19306	Black African	64003022
132	Coloured	64003022
67	Indian or Asian	64003022
4	White	64003022
36	Other	64003022
12749	Black African	64003023
156	Coloured	64003023
23	Indian or Asian	64003023
29	White	64003023
12	Other	64003023
10025	Black African	64003024
32	Coloured	64003024
30	Indian or Asian	64003024
3	White	64003024
13	Other	64003024
9221	Black African	64003025
67	Coloured	64003025
38	Indian or Asian	64003025
1	White	64003025
12	Other	64003025
8619	Black African	64003026
100	Coloured	64003026
55	Indian or Asian	64003026
5	White	64003026
8	Other	64003026
11434	Black African	64003027
118	Coloured	64003027
39	Indian or Asian	64003027
5	White	64003027
24	Other	64003027
5358	Black African	64003028
153	Coloured	64003028
6	Indian or Asian	64003028
4900	White	64003028
18	Other	64003028
5994	Black African	64003029
205	Coloured	64003029
42	Indian or Asian	64003029
3779	White	64003029
55	Other	64003029
3227	Black African	64003030
101	Coloured	64003030
30	Indian or Asian	64003030
6505	White	64003030
36	Other	64003030
9336	Black African	64003031
210	Coloured	64003031
25	Indian or Asian	64003031
3395	White	64003031
15	Other	64003031
9257	Black African	64003032
71	Coloured	64003032
31	Indian or Asian	64003032
100	White	64003032
5	Other	64003032
11093	Black African	64003033
63	Coloured	64003033
30	Indian or Asian	64003033
7	White	64003033
16	Other	64003033
7730	Black African	64003034
23	Coloured	64003034
42	Indian or Asian	64003034
5	White	64003034
12	Other	64003034
12344	Black African	64003035
54	Coloured	64003035
32	Indian or Asian	64003035
13	White	64003035
23	Other	64003035
5583	Black African	64004001
223	Coloured	64004001
5	Indian or Asian	64004001
1	White	64004001
23	Other	64004001
5523	Black African	64004002
136	Coloured	64004002
12	Indian or Asian	64004002
3	White	64004002
15	Other	64004002
5220	Black African	64004003
23	Coloured	64004003
7	Indian or Asian	64004003
3	White	64004003
19	Other	64004003
6182	Black African	64004004
77	Coloured	64004004
3	Indian or Asian	64004004
11	White	64004004
4	Other	64004004
3351	Black African	64004005
189	Coloured	64004005
105	Indian or Asian	64004005
2459	White	64004005
69	Other	64004005
5208	Black African	64004006
32	Coloured	64004006
34	Indian or Asian	64004006
1046	White	64004006
43	Other	64004006
3397	Black African	64004007
9	Coloured	64004007
3	Indian or Asian	64004007
0	White	64004007
9	Other	64004007
12678	Black African	64004008
294	Coloured	64004008
30	Indian or Asian	64004008
1916	White	64004008
13	Other	64004008
4460	Black African	64004009
234	Coloured	64004009
26	Indian or Asian	64004009
646	White	64004009
13	Other	64004009
9921	Black African	64004010
335	Coloured	64004010
13	Indian or Asian	64004010
309	White	64004010
23	Other	64004010
7507	Black African	64004011
273	Coloured	64004011
62	Indian or Asian	64004011
15	White	64004011
3	Other	64004011
46	Black African	30601001
1920	Coloured	30601001
18	Indian or Asian	30601001
30	White	30601001
89	Other	30601001
533	Black African	30601002
2846	Coloured	30601002
6	Indian or Asian	30601002
331	White	30601002
15	Other	30601002
932	Black African	30601003
1799	Coloured	30601003
16	Indian or Asian	30601003
378	White	30601003
35	Other	30601003
58	Black African	30601004
2613	Coloured	30601004
18	Indian or Asian	30601004
273	White	30601004
25	Other	30601004
61	Black African	30602001
5130	Coloured	30602001
29	Indian or Asian	30602001
238	White	30602001
31	Other	30602001
344	Black African	30602002
4910	Coloured	30602002
14	Indian or Asian	30602002
142	White	30602002
67	Other	30602002
85	Black African	30602003
4531	Coloured	30602003
9	Indian or Asian	30602003
22	White	30602003
36	Other	30602003
354	Black African	30602004
1333	Coloured	30602004
32	Indian or Asian	30602004
2033	White	30602004
63	Other	30602004
250	Black African	30602005
4935	Coloured	30602005
28	Indian or Asian	30602005
22	White	30602005
32	Other	30602005
229	Black African	30602006
5735	Coloured	30602006
17	Indian or Asian	30602006
67	White	30602006
63	Other	30602006
169	Black African	30602007
4915	Coloured	30602007
18	Indian or Asian	30602007
129	White	30602007
14	Other	30602007
244	Black African	30602008
4860	Coloured	30602008
46	Indian or Asian	30602008
200	White	30602008
35	Other	30602008
223	Black African	30602009
5077	Coloured	30602009
25	Indian or Asian	30602009
230	White	30602009
10	Other	30602009
71	Black African	30604001
1792	Coloured	30604001
15	Indian or Asian	30604001
140	White	30604001
9	Other	30604001
192	Black African	30604002
2514	Coloured	30604002
19	Indian or Asian	30604002
502	White	30604002
34	Other	30604002
170	Black African	30604003
2312	Coloured	30604003
6	Indian or Asian	30604003
135	White	30604003
6	Other	30604003
109	Black African	30604004
2103	Coloured	30604004
10	Indian or Asian	30604004
44	White	30604004
1	Other	30604004
105	Black African	30605001
3363	Coloured	30605001
32	Indian or Asian	30605001
428	White	30605001
15	Other	30605001
232	Black African	30605002
4575	Coloured	30605002
42	Indian or Asian	30605002
704	White	30605002
71	Other	30605002
229	Black African	30605003
3337	Coloured	30605003
21	Indian or Asian	30605003
400	White	30605003
17	Other	30605003
301	Black African	30605004
3535	Coloured	30605004
48	Indian or Asian	30605004
584	White	30605004
16	Other	30605004
78	Black African	30605005
2931	Coloured	30605005
3	Indian or Asian	30605005
493	White	30605005
18	Other	30605005
187	Black African	30606001
2814	Coloured	30606001
28	Indian or Asian	30606001
315	White	30606001
24	Other	30606001
145	Black African	30606002
2567	Coloured	30606002
19	Indian or Asian	30606002
288	White	30606002
9	Other	30606002
89	Black African	30606003
2143	Coloured	30606003
8	Indian or Asian	30606003
830	White	30606003
1	Other	30606003
273	Black African	30606004
2409	Coloured	30606004
28	Indian or Asian	30606004
399	White	30606004
11	Other	30606004
1268	Black African	30607001
2093	Coloured	30607001
14	Indian or Asian	30607001
97	White	30607001
48	Other	30607001
101	Black African	30607002
2456	Coloured	30607002
14	Indian or Asian	30607002
2	White	30607002
12	Other	30607002
257	Black African	30607003
2648	Coloured	30607003
10	Indian or Asian	30607003
21	White	30607003
20	Other	30607003
568	Black African	30607004
2162	Coloured	30607004
16	Indian or Asian	30607004
633	White	30607004
24	Other	30607004
1671	Black African	30701001
3223	Coloured	30701001
29	Indian or Asian	30701001
151	White	30701001
48	Other	30701001
549	Black African	30701002
4649	Coloured	30701002
29	Indian or Asian	30701002
85	White	30701002
38	Other	30701002
314	Black African	30701003
3645	Coloured	30701003
28	Indian or Asian	30701003
696	White	30701003
32	Other	30701003
1430	Black African	30701004
1459	Coloured	30701004
11	Indian or Asian	30701004
476	White	30701004
40	Other	30701004
3679	Black African	30702001
2392	Coloured	30702001
31	Indian or Asian	30702001
438	White	30702001
17	Other	30702001
2552	Black African	30702002
1778	Coloured	30702002
20	Indian or Asian	30702002
202	White	30702002
7	Other	30702002
6099	Black African	30702003
560	Coloured	30702003
12	Indian or Asian	30702003
128	White	30702003
18	Other	30702003
2356	Black African	30702004
3615	Coloured	30702004
51	Indian or Asian	30702004
33	White	30702004
24	Other	30702004
3067	Black African	30702005
331	Coloured	30702005
41	Indian or Asian	30702005
805	White	30702005
121	Other	30702005
281	Black African	30703001
4790	Coloured	30703001
62	Indian or Asian	30703001
18	White	30703001
23	Other	30703001
635	Black African	30703002
7222	Coloured	30703002
56	Indian or Asian	30703002
10	White	30703002
73	Other	30703002
5001	Black African	30703003
247	Coloured	30703003
14	Indian or Asian	30703003
142	White	30703003
14	Other	30703003
2706	Black African	30703004
2583	Coloured	30703004
20	Indian or Asian	30703004
10	White	30703004
35	Other	30703004
1337	Black African	30703005
2348	Coloured	30703005
34	Indian or Asian	30703005
2302	White	30703005
30	Other	30703005
2660	Black African	30703006
2955	Coloured	30703006
27	Indian or Asian	30703006
496	White	30703006
39	Other	30703006
1440	Black African	30703007
4292	Coloured	30703007
23	Indian or Asian	30703007
410	White	30703007
24	Other	30703007
218	Black African	30704001
1997	Coloured	30704001
6	Indian or Asian	30704001
499	White	30704001
30	Other	30704001
99	Black African	30704002
3744	Coloured	30704002
15	Indian or Asian	30704002
1	White	30704002
2	Other	30704002
171	Black African	30704003
1626	Coloured	30704003
14	Indian or Asian	30704003
348	White	30704003
9	Other	30704003
73	Black African	30704004
2569	Coloured	30704004
21	Indian or Asian	30704004
213	White	30704004
16	Other	30704004
417	Black African	30705001
2308	Coloured	30705001
11	Indian or Asian	30705001
246	White	30705001
8	Other	30705001
1761	Black African	30705002
2433	Coloured	30705002
27	Indian or Asian	30705002
18	White	30705002
16	Other	30705002
284	Black African	30705003
847	Coloured	30705003
7	Indian or Asian	30705003
432	White	30705003
16	Other	30705003
1154	Black African	30705004
711	Coloured	30705004
14	Indian or Asian	30705004
246	White	30705004
23	Other	30705004
350	Black African	30706001
2871	Coloured	30706001
10	Indian or Asian	30706001
291	White	30706001
14	Other	30706001
513	Black African	30706002
2252	Coloured	30706002
10	Indian or Asian	30706002
1762	White	30706002
22	Other	30706002
483	Black African	30706003
2731	Coloured	30706003
31	Indian or Asian	30706003
2	White	30706003
16	Other	30706003
1045	Black African	30706004
3254	Coloured	30706004
30	Indian or Asian	30706004
0	White	30706004
12	Other	30706004
2739	Black African	30707001
3704	Coloured	30707001
30	Indian or Asian	30707001
0	White	30707001
22	Other	30707001
229	Black African	30707002
3531	Coloured	30707002
17	Indian or Asian	30707002
2	White	30707002
8	Other	30707002
621	Black African	30707003
4765	Coloured	30707003
44	Indian or Asian	30707003
920	White	30707003
31	Other	30707003
461	Black African	30707004
3525	Coloured	30707004
22	Indian or Asian	30707004
905	White	30707004
16	Other	30707004
948	Black African	30708001
4373	Coloured	30708001
41	Indian or Asian	30708001
466	White	30708001
134	Other	30708001
2697	Black African	30708002
1663	Coloured	30708002
21	Indian or Asian	30708002
400	White	30708002
32	Other	30708002
4768	Black African	30708003
2182	Coloured	30708003
18	Indian or Asian	30708003
3	White	30708003
28	Other	30708003
1330	Black African	30708004
6602	Coloured	30708004
108	Indian or Asian	30708004
35	White	30708004
98	Other	30708004
487	Black African	30708005
3358	Coloured	30708005
26	Indian or Asian	30708005
794	White	30708005
85	Other	30708005
1991	Black African	30708006
3123	Coloured	30708006
36	Indian or Asian	30708006
1079	White	30708006
150	Other	30708006
13	Black African	30801001
378	Coloured	30801001
4	Indian or Asian	30801001
89	White	30801001
0	Other	30801001
89	Black African	30801002
2548	Coloured	30801002
7	Indian or Asian	30801002
99	White	30801002
15	Other	30801002
129	Black African	30801003
2121	Coloured	30801003
24	Indian or Asian	30801003
12	White	30801003
6	Other	30801003
45	Black African	30801004
1280	Coloured	30801004
10	Indian or Asian	30801004
112	White	30801004
22	Other	30801004
7195	Black African	30802001
3007	Coloured	30802001
119	Indian or Asian	30802001
571	White	30802001
516	Other	30802001
3160	Black African	30802002
3958	Coloured	30802002
31	Indian or Asian	30802002
415	White	30802002
627	Other	30802002
3398	Black African	30802003
4814	Coloured	30802003
47	Indian or Asian	30802003
1171	White	30802003
86	Other	30802003
1172	Black African	30802004
4776	Coloured	30802004
53	Indian or Asian	30802004
321	White	30802004
54	Other	30802004
585	Black African	30802005
4085	Coloured	30802005
30	Indian or Asian	30802005
748	White	30802005
50	Other	30802005
209	Black African	30802006
7344	Coloured	30802006
94	Indian or Asian	30802006
7	White	30802006
30	Other	30802006
556	Black African	30802007
3990	Coloured	30802007
48	Indian or Asian	30802007
205	White	30802007
56	Other	30802007
1361	Black African	30802008
3932	Coloured	30802008
46	Indian or Asian	30802008
300	White	30802008
21	Other	30802008
1020	Black African	30802009
5090	Coloured	30802009
56	Indian or Asian	30802009
438	White	30802009
74	Other	30802009
283	Black African	30803001
5923	Coloured	30803001
83	Indian or Asian	30803001
4	White	30803001
105	Other	30803001
386	Black African	30803002
7181	Coloured	30803002
47	Indian or Asian	30803002
22	White	30803002
59	Other	30803002
251	Black African	30803003
5007	Coloured	30803003
46	Indian or Asian	30803003
3	White	30803003
21	Other	30803003
179	Black African	30803004
4453	Coloured	30803004
33	Indian or Asian	30803004
16	White	30803004
33	Other	30803004
389	Black African	30803005
6394	Coloured	30803005
38	Indian or Asian	30803005
238	White	30803005
62	Other	30803005
6018	Black African	30803006
819	Coloured	30803006
16	Indian or Asian	30803006
2	White	30803006
54	Other	30803006
3172	Black African	30803007
366	Coloured	30803007
7	Indian or Asian	30803007
6	White	30803007
74	Other	30803007
958	Black African	30803008
2509	Coloured	30803008
23	Indian or Asian	30803008
3136	White	30803008
165	Other	30803008
907	Black African	30803009
1516	Coloured	30803009
21	Indian or Asian	30803009
4054	White	30803009
45	Other	30803009
528	Black African	30803010
9537	Coloured	30803010
91	Indian or Asian	30803010
10	White	30803010
91	Other	30803010
776	Black African	30803011
5942	Coloured	30803011
76	Indian or Asian	30803011
643	White	30803011
101	Other	30803011
971	Black African	30803012
5063	Coloured	30803012
70	Indian or Asian	30803012
430	White	30803012
102	Other	30803012
6304	Black African	30803013
1872	Coloured	30803013
12	Indian or Asian	30803013
71	White	30803013
91	Other	30803013
468	Black African	30803014
4364	Coloured	30803014
61	Indian or Asian	30803014
580	White	30803014
116	Other	30803014
354	Black African	30804001
3792	Coloured	30804001
35	Indian or Asian	30804001
161	White	30804001
2	Other	30804001
180	Black African	30804002
4010	Coloured	30804002
75	Indian or Asian	30804002
452	White	30804002
175	Other	30804002
452	Black African	30804003
3012	Coloured	30804003
49	Indian or Asian	30804003
267	White	30804003
42	Other	30804003
158	Black African	30804004
3387	Coloured	30804004
7	Indian or Asian	30804004
21	White	30804004
7	Other	30804004
813	Black African	30805001
2786	Coloured	30805001
18	Indian or Asian	30805001
352	White	30805001
51	Other	30805001
3664	Black African	30805002
2878	Coloured	30805002
27	Indian or Asian	30805002
9	White	30805002
69	Other	30805002
1782	Black African	30805003
3837	Coloured	30805003
32	Indian or Asian	30805003
45	White	30805003
20	Other	30805003
5354	Black African	30805004
38	Coloured	30805004
13	Indian or Asian	30805004
4	White	30805004
16	Other	30805004
4458	Black African	30805005
1422	Coloured	30805005
60	Indian or Asian	30805005
1774	White	30805005
30	Other	30805005
2457	Black African	30805006
2223	Coloured	30805006
73	Indian or Asian	30805006
750	White	30805006
38	Other	30805006
4059	Black African	30806001
165	Coloured	30806001
24	Indian or Asian	30806001
1	White	30806001
11	Other	30806001
617	Black African	30806002
1739	Coloured	30806002
25	Indian or Asian	30806002
489	White	30806002
35	Other	30806002
1997	Black African	30806003
4350	Coloured	30806003
61	Indian or Asian	30806003
508	White	30806003
93	Other	30806003
2644	Black African	30806004
1005	Coloured	30806004
14	Indian or Asian	30806004
835	White	30806004
14	Other	30806004
657	Black African	30901001
4904	Coloured	30901001
121	Indian or Asian	30901001
33	White	30901001
196	Other	30901001
1281	Black African	30901002
9629	Coloured	30901002
157	Indian or Asian	30901002
8	White	30901002
303	Other	30901002
1703	Black African	30901003
6389	Coloured	30901003
244	Indian or Asian	30901003
34	White	30901003
110	Other	30901003
6442	Black African	30901004
665	Coloured	30901004
13	Indian or Asian	30901004
3	White	30901004
67	Other	30901004
6990	Black African	30901005
383	Coloured	30901005
19	Indian or Asian	30901005
5	White	30901005
16	Other	30901005
6654	Black African	30901006
464	Coloured	30901006
16	Indian or Asian	30901006
1	White	30901006
21	Other	30901006
7990	Black African	30901007
730	Coloured	30901007
20	Indian or Asian	30901007
5	White	30901007
32	Other	30901007
6636	Black African	30901008
1451	Coloured	30901008
66	Indian or Asian	30901008
928	White	30901008
49	Other	30901008
7053	Black African	30901009
121	Coloured	30901009
5	Indian or Asian	30901009
1	White	30901009
8	Other	30901009
6493	Black African	30901010
233	Coloured	30901010
1	Indian or Asian	30901010
13	White	30901010
25	Other	30901010
7253	Black African	30901011
102	Coloured	30901011
24	Indian or Asian	30901011
6	White	30901011
4	Other	30901011
5774	Black African	30901012
230	Coloured	30901012
9	Indian or Asian	30901012
11	White	30901012
26	Other	30901012
7698	Black African	30901013
837	Coloured	30901013
22	Indian or Asian	30901013
9	White	30901013
28	Other	30901013
984	Black African	30901014
4814	Coloured	30901014
590	Indian or Asian	30901014
67	White	30901014
101	Other	30901014
6609	Black African	30901015
602	Coloured	30901015
22	Indian or Asian	30901015
0	White	30901015
19	Other	30901015
11871	Black African	30901016
1098	Coloured	30901016
27	Indian or Asian	30901016
12	White	30901016
35	Other	30901016
9669	Black African	30901017
850	Coloured	30901017
53	Indian or Asian	30901017
38	White	30901017
48	Other	30901017
4206	Black African	30901018
283	Coloured	30901018
14	Indian or Asian	30901018
0	White	30901018
15	Other	30901018
6435	Black African	30901019
396	Coloured	30901019
12	Indian or Asian	30901019
0	White	30901019
23	Other	30901019
3705	Black African	30901020
2386	Coloured	30901020
199	Indian or Asian	30901020
1222	White	30901020
231	Other	30901020
2168	Black African	30901021
2531	Coloured	30901021
543	Indian or Asian	30901021
3104	White	30901021
109	Other	30901021
2631	Black African	30901022
5862	Coloured	30901022
95	Indian or Asian	30901022
997	White	30901022
100	Other	30901022
1294	Black African	30901023
839	Coloured	30901023
132	Indian or Asian	30901023
3311	White	30901023
93	Other	30901023
1367	Black African	30901024
522	Coloured	30901024
59	Indian or Asian	30901024
3984	White	30901024
33	Other	30901024
3159	Black African	30901025
2891	Coloured	30901025
76	Indian or Asian	30901025
2484	White	30901025
78	Other	30901025
6452	Black African	30901026
2147	Coloured	30901026
72	Indian or Asian	30901026
952	White	30901026
56	Other	30901026
2612	Black African	30901027
5098	Coloured	30901027
96	Indian or Asian	30901027
229	White	30901027
2504	Other	30901027
1466	Black African	30901028
6623	Coloured	30901028
129	Indian or Asian	30901028
1181	White	30901028
129	Other	30901028
518	Black African	30901029
1338	Coloured	30901029
31	Indian or Asian	30901029
5	White	30901029
17	Other	30901029
4928	Black African	30901030
2807	Coloured	30901030
62	Indian or Asian	30901030
5	White	30901030
2089	Other	30901030
9221	Black African	30901031
696	Coloured	30901031
17	Indian or Asian	30901031
14	White	30901031
23	Other	30901031
5464	Black African	30902001
188	Coloured	30902001
15	Indian or Asian	30902001
7	White	30902001
89	Other	30902001
2229	Black African	30902002
3610	Coloured	30902002
35	Indian or Asian	30902002
794	White	30902002
115	Other	30902002
7244	Black African	30902003
1492	Coloured	30902003
25	Indian or Asian	30902003
18	White	30902003
127	Other	30902003
4218	Black African	30902004
1649	Coloured	30902004
47	Indian or Asian	30902004
138	White	30902004
198	Other	30902004
3466	Black African	30902005
3607	Coloured	30902005
56	Indian or Asian	30902005
83	White	30902005
414	Other	30902005
2042	Black African	30902006
1352	Coloured	30902006
36	Indian or Asian	30902006
652	White	30902006
764	Other	30902006
2723	Black African	30902007
1442	Coloured	30902007
44	Indian or Asian	30902007
4	White	30902007
2452	Other	30902007
7246	Black African	30903001
217	Coloured	30903001
37	Indian or Asian	30903001
1	White	30903001
16	Other	30903001
4833	Black African	30903002
82	Coloured	30903002
18	Indian or Asian	30903002
1	White	30903002
5	Other	30903002
2445	Black African	30903003
119	Coloured	30903003
4	Indian or Asian	30903003
0	White	30903003
1	Other	30903003
3098	Black African	30903004
2699	Coloured	30903004
43	Indian or Asian	30903004
165	White	30903004
33	Other	30903004
1743	Black African	30903005
239	Coloured	30903005
64	Indian or Asian	30903005
1072	White	30903005
21	Other	30903005
8112	Black African	30904001
59	Coloured	30904001
12	Indian or Asian	30904001
1	White	30904001
24	Other	30904001
5200	Black African	30904002
12	Coloured	30904002
26	Indian or Asian	30904002
0	White	30904002
19	Other	30904002
4525	Black African	30904003
15	Coloured	30904003
18	Indian or Asian	30904003
1	White	30904003
12	Other	30904003
5206	Black African	30904004
110	Coloured	30904004
26	Indian or Asian	30904004
503	White	30904004
21	Other	30904004
5501	Black African	30904005
3100	Coloured	30904005
47	Indian or Asian	30904005
633	White	30904005
90	Other	30904005
963	Black African	30904006
209	Coloured	30904006
33	Indian or Asian	30904006
2059	White	30904006
33	Other	30904006
7542	Black African	30904007
1698	Coloured	30904007
27	Indian or Asian	30904007
3	White	30904007
72	Other	30904007
8254	Black African	30904008
640	Coloured	30904008
26	Indian or Asian	30904008
303	White	30904008
19	Other	30904008
6262	Black African	30904009
1086	Coloured	30904009
16	Indian or Asian	30904009
450	White	30904009
29	Other	30904009
5476	Black African	34501001
11	Coloured	34501001
22	Indian or Asian	34501001
14	White	34501001
11	Other	34501001
5835	Black African	34501002
17	Coloured	34501002
8	Indian or Asian	34501002
4	White	34501002
23	Other	34501002
5415	Black African	34501003
170	Coloured	34501003
23	Indian or Asian	34501003
6	White	34501003
26	Other	34501003
4750	Black African	34501004
1041	Coloured	34501004
25	Indian or Asian	34501004
967	White	34501004
20	Other	34501004
5840	Black African	34501005
22	Coloured	34501005
10	Indian or Asian	34501005
5	White	34501005
5	Other	34501005
5912	Black African	34501006
48	Coloured	34501006
6	Indian or Asian	34501006
1	White	34501006
3	Other	34501006
4532	Black African	34501007
11	Coloured	34501007
5	Indian or Asian	34501007
1	White	34501007
1	Other	34501007
5187	Black African	34501008
5	Coloured	34501008
5	Indian or Asian	34501008
8	White	34501008
4	Other	34501008
7380	Black African	34501009
8	Coloured	34501009
15	Indian or Asian	34501009
5	White	34501009
2	Other	34501009
6674	Black African	34501010
35	Coloured	34501010
13	Indian or Asian	34501010
4	White	34501010
2	Other	34501010
5521	Black African	34501011
34	Coloured	34501011
14	Indian or Asian	34501011
0	White	34501011
20	Other	34501011
5730	Black African	34501012
1	Coloured	34501012
18	Indian or Asian	34501012
6	White	34501012
6	Other	34501012
7286	Black African	34501013
121	Coloured	34501013
20	Indian or Asian	34501013
6	White	34501013
4	Other	34501013
5133	Black African	34501014
17	Coloured	34501014
21	Indian or Asian	34501014
6	White	34501014
4	Other	34501014
5669	Black African	34501015
215	Coloured	34501015
31	Indian or Asian	34501015
10	White	34501015
21	Other	34501015
1479	Black African	34502001
539	Coloured	34502001
89	Indian or Asian	34502001
3908	White	34502001
107	Other	34502001
7662	Black African	34502002
786	Coloured	34502002
28	Indian or Asian	34502002
253	White	34502002
22	Other	34502002
9841	Black African	34502003
83	Coloured	34502003
20	Indian or Asian	34502003
2	White	34502003
50	Other	34502003
5768	Black African	34502004
20	Coloured	34502004
27	Indian or Asian	34502004
1	White	34502004
9	Other	34502004
3258	Black African	34502005
19	Coloured	34502005
11	Indian or Asian	34502005
1	White	34502005
3	Other	34502005
8686	Black African	34502006
61	Coloured	34502006
5	Indian or Asian	34502006
7	White	34502006
60	Other	34502006
5762	Black African	34502007
40	Coloured	34502007
9	Indian or Asian	34502007
3	White	34502007
5	Other	34502007
5943	Black African	34502008
19	Coloured	34502008
14	Indian or Asian	34502008
3	White	34502008
12	Other	34502008
3744	Black African	34502009
22	Coloured	34502009
4	Indian or Asian	34502009
0	White	34502009
14	Other	34502009
10978	Black African	34502010
123	Coloured	34502010
27	Indian or Asian	34502010
6	White	34502010
42	Other	34502010
6683	Black African	34502011
137	Coloured	34502011
30	Indian or Asian	34502011
74	White	34502011
10	Other	34502011
10147	Black African	34502012
106	Coloured	34502012
17	Indian or Asian	34502012
4	White	34502012
20	Other	34502012
1533	Black African	34502013
5158	Coloured	34502013
86	Indian or Asian	34502013
32	White	34502013
42	Other	34502013
4475	Black African	34503001
2450	Coloured	34503001
66	Indian or Asian	34503001
4494	White	34503001
66	Other	34503001
4900	Black African	34503002
2366	Coloured	34503002
37	Indian or Asian	34503002
533	White	34503002
73	Other	34503002
3445	Black African	34503003
2383	Coloured	34503003
51	Indian or Asian	34503003
191	White	34503003
173	Other	34503003
2937	Black African	34503004
4280	Coloured	34503004
50	Indian or Asian	34503004
438	White	34503004
310	Other	34503004
7137	Black African	34503005
472	Coloured	34503005
53	Indian or Asian	34503005
151	White	34503005
86	Other	34503005
642	Black African	10101001
7095	Coloured	10101001
51	Indian or Asian	10101001
1242	White	10101001
38	Other	10101001
390	Black African	10101002
6348	Coloured	10101002
51	Indian or Asian	10101002
1667	White	10101002
16	Other	10101002
1853	Black African	10101003
4800	Coloured	10101003
27	Indian or Asian	10101003
103	White	10101003
224	Other	10101003
291	Black African	10101004
8445	Coloured	10101004
81	Indian or Asian	10101004
456	White	10101004
386	Other	10101004
419	Black African	10101005
4508	Coloured	10101005
44	Indian or Asian	10101005
2413	White	10101005
37	Other	10101005
664	Black African	10101006
5389	Coloured	10101006
63	Indian or Asian	10101006
1015	White	10101006
55	Other	10101006
626	Black African	10101007
6375	Coloured	10101007
37	Indian or Asian	10101007
1807	White	10101007
101	Other	10101007
819	Black African	10101008
7225	Coloured	10101008
43	Indian or Asian	10101008
1265	White	10101008
35	Other	10101008
1390	Black African	10102001
8366	Coloured	10102001
26	Indian or Asian	10102001
626	White	10102001
16	Other	10102001
569	Black African	10102002
4615	Coloured	10102002
12	Indian or Asian	10102002
1037	White	10102002
41	Other	10102002
1734	Black African	10102003
5250	Coloured	10102003
36	Indian or Asian	10102003
451	White	10102003
52	Other	10102003
1265	Black African	10102004
7477	Coloured	10102004
53	Indian or Asian	10102004
1216	White	10102004
30	Other	10102004
668	Black African	10102005
5643	Coloured	10102005
21	Indian or Asian	10102005
1260	White	10102005
23	Other	10102005
682	Black African	10102006
6300	Coloured	10102006
21	Indian or Asian	10102006
874	White	10102006
14	Other	10102006
1385	Black African	10103001
6712	Coloured	10103001
51	Indian or Asian	10103001
2336	White	10103001
24	Other	10103001
67	Black African	10103002
5097	Coloured	10103002
13	Indian or Asian	10103002
5	White	10103002
28	Other	10103002
511	Black African	10103003
5771	Coloured	10103003
41	Indian or Asian	10103003
2345	White	10103003
59	Other	10103003
663	Black African	10103004
8540	Coloured	10103004
41	Indian or Asian	10103004
175	White	10103004
41	Other	10103004
2509	Black African	10103005
9419	Coloured	10103005
32	Indian or Asian	10103005
1011	White	10103005
44	Other	10103005
510	Black African	10103006
1922	Coloured	10103006
24	Indian or Asian	10103006
1181	White	10103006
9	Other	10103006
1357	Black African	10103007
6455	Coloured	10103007
53	Indian or Asian	10103007
3403	White	10103007
64	Other	10103007
4649	Black African	10104001
3519	Coloured	10104001
118	Indian or Asian	10104001
9	White	10104001
105	Other	10104001
3151	Black African	10104002
7252	Coloured	10104002
37	Indian or Asian	10104002
8	White	10104002
138	Other	10104002
2114	Black African	10104003
3238	Coloured	10104003
95	Indian or Asian	10104003
717	White	10104003
40	Other	10104003
1190	Black African	10104004
7254	Coloured	10104004
85	Indian or Asian	10104004
6	White	10104004
57	Other	10104004
491	Black African	10104005
1819	Coloured	10104005
96	Indian or Asian	10104005
3746	White	10104005
51	Other	10104005
632	Black African	10104006
2930	Coloured	10104006
41	Indian or Asian	10104006
4750	White	10104006
117	Other	10104006
193	Black African	10104007
6047	Coloured	10104007
40	Indian or Asian	10104007
1196	White	10104007
70	Other	10104007
531	Black African	10104008
2277	Coloured	10104008
44	Indian or Asian	10104008
2884	White	10104008
52	Other	10104008
6560	Black African	10104009
1301	Coloured	10104009
35	Indian or Asian	10104009
17	White	10104009
63	Other	10104009
449	Black African	10104010
4980	Coloured	10104010
52	Indian or Asian	10104010
2969	White	10104010
73	Other	10104010
514	Black African	10104011
3449	Coloured	10104011
8	Indian or Asian	10104011
1521	White	10104011
23	Other	10104011
3261	Black African	10104012
5055	Coloured	10104012
31	Indian or Asian	10104012
16	White	10104012
46	Other	10104012
555	Black African	10104013
6223	Coloured	10104013
90	Indian or Asian	10104013
22	White	10104013
88	Other	10104013
3189	Black African	10105001
4937	Coloured	10105001
50	Indian or Asian	10105001
2356	White	10105001
26	Other	10105001
763	Black African	10105002
7098	Coloured	10105002
19	Indian or Asian	10105002
1249	White	10105002
38	Other	10105002
862	Black African	10105003
6724	Coloured	10105003
27	Indian or Asian	10105003
1252	White	10105003
22	Other	10105003
2496	Black African	10105004
7869	Coloured	10105004
123	Indian or Asian	10105004
1417	White	10105004
91	Other	10105004
623	Black African	10105005
4989	Coloured	10105005
41	Indian or Asian	10105005
2102	White	10105005
161	Other	10105005
862	Black African	10105006
6628	Coloured	10105006
54	Indian or Asian	10105006
681	White	10105006
77	Other	10105006
2175	Black African	10105007
9508	Coloured	10105007
30	Indian or Asian	10105007
1243	White	10105007
62	Other	10105007
494	Black African	10105008
3894	Coloured	10105008
53	Indian or Asian	10105008
2468	White	10105008
47	Other	10105008
6697	Black African	10105009
1699	Coloured	10105009
16	Indian or Asian	10105009
5	White	10105009
115	Other	10105009
526	Black African	10105010
4350	Coloured	10105010
51	Indian or Asian	10105010
3653	White	10105010
109	Other	10105010
470	Black African	10105011
8715	Coloured	10105011
61	Indian or Asian	10105011
11	White	10105011
48	Other	10105011
1648	Black African	10105012
7343	Coloured	10105012
61	Indian or Asian	10105012
1344	White	10105012
42	Other	10105012
6710	Black African	10202001
258	Coloured	10202001
9	Indian or Asian	10202001
0	White	10202001
100	Other	10202001
496	Black African	10202002
4900	Coloured	10202002
9	Indian or Asian	10202002
748	White	10202002
60	Other	10202002
613	Black African	10202003
7163	Coloured	10202003
29	Indian or Asian	10202003
1300	White	10202003
100	Other	10202003
168	Black African	10202004
5970	Coloured	10202004
16	Indian or Asian	10202004
1089	White	10202004
114	Other	10202004
631	Black African	10202005
6680	Coloured	10202005
27	Indian or Asian	10202005
1572	White	10202005
137	Other	10202005
246	Black African	10202006
10545	Coloured	10202006
41	Indian or Asian	10202006
159	White	10202006
22	Other	10202006
2083	Black African	10202007
10743	Coloured	10202007
51	Indian or Asian	10202007
1214	White	10202007
252	Other	10202007
5089	Black African	10202008
4708	Coloured	10202008
21	Indian or Asian	10202008
376	White	10202008
17	Other	10202008
4076	Black African	10202009
5558	Coloured	10202009
9	Indian or Asian	10202009
569	White	10202009
7	Other	10202009
2644	Black African	10202010
7176	Coloured	10202010
3	Indian or Asian	10202010
241	White	10202010
46	Other	10202010
2788	Black African	10202011
8428	Coloured	10202011
23	Indian or Asian	10202011
979	White	10202011
63	Other	10202011
3755	Black African	10202012
4323	Coloured	10202012
35	Indian or Asian	10202012
696	White	10202012
61	Other	10202012
1477	Black African	10203001
7106	Coloured	10203001
15	Indian or Asian	10203001
1291	White	10203001
56	Other	10203001
257	Black African	10203002
355	Coloured	10203002
27	Indian or Asian	10203002
4473	White	10203002
35	Other	10203002
1992	Black African	10203003
8148	Coloured	10203003
15	Indian or Asian	10203003
1551	White	10203003
37	Other	10203003
842	Black African	10203004
661	Coloured	10203004
42	Indian or Asian	10203004
4973	White	10203004
80	Other	10203004
5332	Black African	10203005
4034	Coloured	10203005
16	Indian or Asian	10203005
5	White	10203005
152	Other	10203005
5540	Black African	10203006
248	Coloured	10203006
1	Indian or Asian	10203006
18	White	10203006
23	Other	10203006
358	Black African	10203007
8928	Coloured	10203007
28	Indian or Asian	10203007
41	White	10203007
48	Other	10203007
1442	Black African	10203008
425	Coloured	10203008
1	Indian or Asian	10203008
0	White	10203008
9	Other	10203008
6577	Black African	10203009
85	Coloured	10203009
5	Indian or Asian	10203009
1	White	10203009
43	Other	10203009
359	Black African	10203010
7861	Coloured	10203010
18	Indian or Asian	10203010
35	White	10203010
8	Other	10203010
3797	Black African	10203011
8137	Coloured	10203011
35	Indian or Asian	10203011
117	White	10203011
44	Other	10203011
6211	Black African	10203012
57	Coloured	10203012
9	Indian or Asian	10203012
1	White	10203012
121	Other	10203012
1611	Black African	10203013
6001	Coloured	10203013
17	Indian or Asian	10203013
13	White	10203013
107	Other	10203013
3477	Black African	10203014
10286	Coloured	10203014
33	Indian or Asian	10203014
22	White	10203014
118	Other	10203014
339	Black African	10203015
1008	Coloured	10203015
43	Indian or Asian	10203015
5661	White	10203015
102	Other	10203015
7393	Black African	10203016
45	Coloured	10203016
0	Indian or Asian	10203016
0	White	10203016
51	Other	10203016
1017	Black African	10203017
5062	Coloured	10203017
12	Indian or Asian	10203017
3524	White	10203017
15	Other	10203017
1567	Black African	10203018
4178	Coloured	10203018
50	Indian or Asian	10203018
2392	White	10203018
66	Other	10203018
628	Black African	10203019
1148	Coloured	10203019
63	Indian or Asian	10203019
4642	White	10203019
109	Other	10203019
176	Black African	10203020
3063	Coloured	10203020
10	Indian or Asian	10203020
6	White	10203020
63	Other	10203020
613	Black African	10203021
10512	Coloured	10203021
49	Indian or Asian	10203021
19	White	10203021
151	Other	10203021
989	Black African	10203022
6996	Coloured	10203022
124	Indian or Asian	10203022
374	White	10203022
266	Other	10203022
643	Black African	10203023
6654	Coloured	10203023
124	Indian or Asian	10203023
494	White	10203023
186	Other	10203023
253	Black African	10203024
6418	Coloured	10203024
21	Indian or Asian	10203024
12	White	10203024
18	Other	10203024
572	Black African	10203025
7929	Coloured	10203025
40	Indian or Asian	10203025
265	White	10203025
71	Other	10203025
406	Black African	10203026
9583	Coloured	10203026
46	Indian or Asian	10203026
29	White	10203026
118	Other	10203026
492	Black African	10203027
5816	Coloured	10203027
10	Indian or Asian	10203027
3	White	10203027
46	Other	10203027
1198	Black African	10203028
4396	Coloured	10203028
35	Indian or Asian	10203028
1366	White	10203028
89	Other	10203028
265	Black African	10203029
5459	Coloured	10203029
61	Indian or Asian	10203029
2050	White	10203029
31	Other	10203029
433	Black African	10203030
9314	Coloured	10203030
20	Indian or Asian	10203030
127	White	10203030
44	Other	10203030
708	Black African	10203031
7119	Coloured	10203031
28	Indian or Asian	10203031
448	White	10203031
7	Other	10203031
3122	Black African	10204001
7822	Coloured	10204001
53	Indian or Asian	10204001
1266	White	10204001
126	Other	10204001
4411	Black African	10204002
2983	Coloured	10204002
31	Indian or Asian	10204002
11	White	10204002
83	Other	10204002
1134	Black African	10204003
6918	Coloured	10204003
14	Indian or Asian	10204003
847	White	10204003
39	Other	10204003
676	Black African	10204004
7145	Coloured	10204004
29	Indian or Asian	10204004
338	White	10204004
42	Other	10204004
239	Black African	10204005
5199	Coloured	10204005
27	Indian or Asian	10204005
176	White	10204005
15	Other	10204005
376	Black African	10204006
5254	Coloured	10204006
15	Indian or Asian	10204006
185	White	10204006
26	Other	10204006
330	Black African	10204007
207	Coloured	10204007
17	Indian or Asian	10204007
3273	White	10204007
46	Other	10204007
1434	Black African	10204008
911	Coloured	10204008
51	Indian or Asian	10204008
3224	White	10204008
62	Other	10204008
130	Black African	10204009
135	Coloured	10204009
12	Indian or Asian	10204009
527	White	10204009
17	Other	10204009
682	Black African	10204010
1775	Coloured	10204010
47	Indian or Asian	10204010
2679	White	10204010
87	Other	10204010
782	Black African	10204011
2753	Coloured	10204011
50	Indian or Asian	10204011
2865	White	10204011
95	Other	10204011
7772	Black African	10204012
213	Coloured	10204012
7	Indian or Asian	10204012
2	White	10204012
15	Other	10204012
1073	Black African	10204013
1243	Coloured	10204013
7	Indian or Asian	10204013
151	White	10204013
8	Other	10204013
4995	Black African	10204014
228	Coloured	10204014
1	Indian or Asian	10204014
8	White	10204014
48	Other	10204014
9657	Black African	10204015
646	Coloured	10204015
11	Indian or Asian	10204015
26	White	10204015
63	Other	10204015
495	Black African	10204016
7466	Coloured	10204016
35	Indian or Asian	10204016
567	White	10204016
63	Other	10204016
380	Black African	10204017
5010	Coloured	10204017
18	Indian or Asian	10204017
2257	White	10204017
63	Other	10204017
2686	Black African	10204018
5713	Coloured	10204018
57	Indian or Asian	10204018
213	White	10204018
94	Other	10204018
1593	Black African	10204019
7508	Coloured	10204019
42	Indian or Asian	10204019
1262	White	10204019
88	Other	10204019
848	Black African	10204020
6942	Coloured	10204020
22	Indian or Asian	10204020
1749	White	10204020
67	Other	10204020
409	Black African	10204021
4737	Coloured	10204021
29	Indian or Asian	10204021
3429	White	10204021
47	Other	10204021
492	Black African	10204022
553	Coloured	10204022
46	Indian or Asian	10204022
3685	White	10204022
97	Other	10204022
669	Black African	10205001
7366	Coloured	10205001
27	Indian or Asian	10205001
626	White	10205001
63	Other	10205001
6672	Black African	10205002
2471	Coloured	10205002
18	Indian or Asian	10205002
25	White	10205002
227	Other	10205002
2767	Black African	10205003
6266	Coloured	10205003
30	Indian or Asian	10205003
364	White	10205003
166	Other	10205003
1843	Black African	10205004
7372	Coloured	10205004
52	Indian or Asian	10205004
608	White	10205004
106	Other	10205004
1644	Black African	10205005
8410	Coloured	10205005
8	Indian or Asian	10205005
1311	White	10205005
69	Other	10205005
648	Black African	10205006
1218	Coloured	10205006
67	Indian or Asian	10205006
3251	White	10205006
164	Other	10205006
772	Black African	10205007
1022	Coloured	10205007
64	Indian or Asian	10205007
4258	White	10205007
72	Other	10205007
3942	Black African	10205008
4820	Coloured	10205008
26	Indian or Asian	10205008
92	White	10205008
30	Other	10205008
203	Black African	10205009
6476	Coloured	10205009
125	Indian or Asian	10205009
11	White	10205009
32	Other	10205009
88	Black African	10205010
7782	Coloured	10205010
23	Indian or Asian	10205010
9	White	10205010
23	Other	10205010
316	Black African	10205011
5852	Coloured	10205011
133	Indian or Asian	10205011
25	White	10205011
367	Other	10205011
887	Black African	10205012
4690	Coloured	10205012
108	Indian or Asian	10205012
1405	White	10205012
93	Other	10205012
205	Black African	10205013
7339	Coloured	10205013
18	Indian or Asian	10205013
22	White	10205013
9	Other	10205013
75	Black African	10205014
5749	Coloured	10205014
60	Indian or Asian	10205014
10	White	10205014
30	Other	10205014
798	Black African	10205015
3309	Coloured	10205015
78	Indian or Asian	10205015
3874	White	10205015
45	Other	10205015
7716	Black African	10205016
138	Coloured	10205016
25	Indian or Asian	10205016
2	White	10205016
57	Other	10205016
3293	Black African	10205017
50	Coloured	10205017
0	Indian or Asian	10205017
0	White	10205017
35	Other	10205017
3371	Black African	10205018
4381	Coloured	10205018
10	Indian or Asian	10205018
319	White	10205018
30	Other	10205018
426	Black African	10205019
5252	Coloured	10205019
6	Indian or Asian	10205019
423	White	10205019
17	Other	10205019
702	Black African	10205020
5867	Coloured	10205020
10	Indian or Asian	10205020
1017	White	10205020
31	Other	10205020
3576	Black African	10205021
9811	Coloured	10205021
59	Indian or Asian	10205021
210	White	10205021
95	Other	10205021
254	Black African	10206001
3868	Coloured	10206001
33	Indian or Asian	10206001
1494	White	10206001
88	Other	10206001
5544	Black African	10206002
1083	Coloured	10206002
18	Indian or Asian	10206002
2136	White	10206002
92	Other	10206002
534	Black African	10206003
7632	Coloured	10206003
28	Indian or Asian	10206003
430	White	10206003
68	Other	10206003
932	Black African	10206004
6612	Coloured	10206004
22	Indian or Asian	10206004
52	White	10206004
239	Other	10206004
198	Black African	10206005
4745	Coloured	10206005
28	Indian or Asian	10206005
664	White	10206005
8	Other	10206005
328	Black African	10206006
8645	Coloured	10206006
23	Indian or Asian	10206006
750	White	10206006
51	Other	10206006
751	Black African	10206007
6467	Coloured	10206007
77	Indian or Asian	10206007
2280	White	10206007
95	Other	10206007
849	Black African	10206008
6976	Coloured	10206008
3	Indian or Asian	10206008
1838	White	10206008
48	Other	10206008
321	Black African	10206009
6514	Coloured	10206009
23	Indian or Asian	10206009
706	White	10206009
45	Other	10206009
5128	Black African	10206010
451	Coloured	10206010
7	Indian or Asian	10206010
4	White	10206010
8	Other	10206010
341	Black African	10206011
4594	Coloured	10206011
3	Indian or Asian	10206011
976	White	10206011
32	Other	10206011
700	Black African	10206012
11121	Coloured	10206012
47	Indian or Asian	10206012
653	White	10206012
65	Other	10206012
998	Black African	10304001
4031	Coloured	10304001
13	Indian or Asian	10304001
2470	White	10304001
110	Other	10304001
534	Black African	10304002
6220	Coloured	10304002
37	Indian or Asian	10304002
1076	White	10304002
45	Other	10304002
570	Black African	10304003
5997	Coloured	10304003
28	Indian or Asian	10304003
1171	White	10304003
12	Other	10304003
301	Black African	10304004
1699	Coloured	10304004
10	Indian or Asian	10304004
1473	White	10304004
35	Other	10304004
2051	Black African	10304005
6769	Coloured	10304005
24	Indian or Asian	10304005
49	White	10304005
192	Other	10304005
1395	Black African	10301001
6222	Coloured	10301001
38	Indian or Asian	10301001
1535	White	10301001
65	Other	10301001
312	Black African	10301002
7246	Coloured	10301002
41	Indian or Asian	10301002
697	White	10301002
148	Other	10301002
1402	Black African	10301003
9277	Coloured	10301003
24	Indian or Asian	10301003
398	White	10301003
74	Other	10301003
1180	Black African	10301004
3348	Coloured	10301004
29	Indian or Asian	10301004
2487	White	10301004
59	Other	10301004
4188	Black African	10301005
5369	Coloured	10301005
101	Indian or Asian	10301005
1868	White	10301005
101	Other	10301005
2711	Black African	10301006
3846	Coloured	10301006
18	Indian or Asian	10301006
85	White	10301006
146	Other	10301006
1685	Black African	10301007
5806	Coloured	10301007
28	Indian or Asian	10301007
620	White	10301007
83	Other	10301007
2603	Black African	10301008
2450	Coloured	10301008
0	Indian or Asian	10301008
7	White	10301008
6	Other	10301008
2018	Black African	10301009
5581	Coloured	10301009
22	Indian or Asian	10301009
373	White	10301009
2	Other	10301009
1409	Black African	10301010
3874	Coloured	10301010
10	Indian or Asian	10301010
553	White	10301010
58	Other	10301010
2072	Black African	10301011
2814	Coloured	10301011
21	Indian or Asian	10301011
363	White	10301011
23	Other	10301011
3070	Black African	10301012
4318	Coloured	10301012
14	Indian or Asian	10301012
161	White	10301012
14	Other	10301012
4713	Black African	10301013
8326	Coloured	10301013
42	Indian or Asian	10301013
1025	White	10301013
218	Other	10301013
4786	Black African	10302001
81	Coloured	10302001
8	Indian or Asian	10302001
1569	White	10302001
9	Other	10302001
525	Black African	10302002
3407	Coloured	10302002
23	Indian or Asian	10302002
2872	White	10302002
39	Other	10302002
473	Black African	10302003
231	Coloured	10302003
26	Indian or Asian	10302003
3514	White	10302003
23	Other	10302003
544	Black African	10302004
5561	Coloured	10302004
40	Indian or Asian	10302004
1570	White	10302004
86	Other	10302004
6177	Black African	10302005
59	Coloured	10302005
14	Indian or Asian	10302005
10	White	10302005
86	Other	10302005
6121	Black African	10302006
153	Coloured	10302006
12	Indian or Asian	10302006
116	White	10302006
127	Other	10302006
237	Black African	10302007
171	Coloured	10302007
11	Indian or Asian	10302007
3652	White	10302007
31	Other	10302007
199	Black African	10302008
8263	Coloured	10302008
18	Indian or Asian	10302008
729	White	10302008
204	Other	10302008
116	Black African	10302009
340	Coloured	10302009
2	Indian or Asian	10302009
1958	White	10302009
28	Other	10302009
2328	Black African	10302010
1860	Coloured	10302010
23	Indian or Asian	10302010
2314	White	10302010
113	Other	10302010
2339	Black African	10302011
4508	Coloured	10302011
15	Indian or Asian	10302011
2166	White	10302011
58	Other	10302011
4954	Black African	10302012
201	Coloured	10302012
5	Indian or Asian	10302012
5	White	10302012
170	Other	10302012
332	Black African	10302013
134	Coloured	10302013
7	Indian or Asian	10302013
4658	White	10302013
20	Other	10302013
571	Black African	10303001
4414	Coloured	10303001
19	Indian or Asian	10303001
965	White	10303001
26	Other	10303001
532	Black African	10303002
6792	Coloured	10303002
28	Indian or Asian	10303002
653	White	10303002
24	Other	10303002
1533	Black African	10303003
4600	Coloured	10303003
21	Indian or Asian	10303003
11	White	10303003
152	Other	10303003
467	Black African	10303004
1940	Coloured	10303004
22	Indian or Asian	10303004
3243	White	10303004
47	Other	10303004
705	Black African	10303005
3916	Coloured	10303005
20	Indian or Asian	10303005
2277	White	10303005
60	Other	10303005
238	Black African	10401001
5959	Coloured	10401001
19	Indian or Asian	10401001
216	White	10401001
12	Other	10401001
272	Black African	10401002
6438	Coloured	10401002
20	Indian or Asian	10401002
674	White	10401002
39	Other	10401002
221	Black African	10401003
4689	Coloured	10401003
19	Indian or Asian	10401003
65	White	10401003
22	Other	10401003
424	Black African	10401004
3877	Coloured	10401004
14	Indian or Asian	10401004
1493	White	10401004
55	Other	10401004
243	Black African	10402001
3724	Coloured	10402001
22	Indian or Asian	10402001
2727	White	10402001
29	Other	10402001
717	Black African	10402002
4981	Coloured	10402002
21	Indian or Asian	10402002
1731	White	10402002
35	Other	10402002
274	Black African	10402003
1922	Coloured	10402003
10	Indian or Asian	10402003
2597	White	10402003
36	Other	10402003
647	Black African	10402004
6885	Coloured	10402004
51	Indian or Asian	10402004
852	White	10402004
21	Other	10402004
356	Black African	10402005
4171	Coloured	10402005
16	Indian or Asian	10402005
1188	White	10402005
46	Other	10402005
572	Black African	10402006
5335	Coloured	10402006
55	Indian or Asian	10402006
924	White	10402006
30	Other	10402006
1004	Black African	10402007
3046	Coloured	10402007
15	Indian or Asian	10402007
2210	White	10402007
35	Other	10402007
94	Black African	10402008
6004	Coloured	10402008
10	Indian or Asian	10402008
5	White	10402008
3	Other	10402008
6579	Black African	10403001
91	Coloured	10403001
11	Indian or Asian	10403001
20	White	10403001
52	Other	10403001
3587	Black African	10403002
2090	Coloured	10403002
11	Indian or Asian	10403002
23	White	10403002
51	Other	10403002
6796	Black African	10403003
2978	Coloured	10403003
20	Indian or Asian	10403003
85	White	10403003
107	Other	10403003
269	Black African	10403004
2123	Coloured	10403004
28	Indian or Asian	10403004
2838	White	10403004
47	Other	10403004
279	Black African	10403005
1783	Coloured	10403005
12	Indian or Asian	10403005
4272	White	10403005
36	Other	10403005
795	Black African	10403006
1392	Coloured	10403006
105	Indian or Asian	10403006
3930	White	10403006
37	Other	10403006
404	Black African	10403007
2106	Coloured	10403007
47	Indian or Asian	10403007
2373	White	10403007
14	Other	10403007
372	Black African	10403008
1750	Coloured	10403008
46	Indian or Asian	10403008
2445	White	10403008
62	Other	10403008
210	Black African	10403009
6391	Coloured	10403009
17	Indian or Asian	10403009
44	White	10403009
52	Other	10403009
431	Black African	10403010
158	Coloured	10403010
22	Indian or Asian	10403010
3934	White	10403010
24	Other	10403010
2296	Black African	10403011
1961	Coloured	10403011
41	Indian or Asian	10403011
2428	White	10403011
109	Other	10403011
3071	Black African	10403012
1691	Coloured	10403012
17	Indian or Asian	10403012
36	White	10403012
40	Other	10403012
744	Black African	10403013
5776	Coloured	10403013
45	Indian or Asian	10403013
52	White	10403013
20	Other	10403013
513	Black African	10403014
8601	Coloured	10403014
49	Indian or Asian	10403014
295	White	10403014
295	Other	10403014
667	Black African	10404001
6236	Coloured	10404001
45	Indian or Asian	10404001
2310	White	10404001
99	Other	10404001
109	Black African	10404002
74	Coloured	10404002
27	Indian or Asian	10404002
3144	White	10404002
43	Other	10404002
133	Black African	10404003
318	Coloured	10404003
12	Indian or Asian	10404003
5213	White	10404003
71	Other	10404003
1168	Black African	10404004
3621	Coloured	10404004
43	Indian or Asian	10404004
3244	White	10404004
117	Other	10404004
386	Black African	10404005
2623	Coloured	10404005
61	Indian or Asian	10404005
3422	White	10404005
81	Other	10404005
780	Black African	10404006
8988	Coloured	10404006
45	Indian or Asian	10404006
59	White	10404006
173	Other	10404006
2867	Black African	10404007
6225	Coloured	10404007
53	Indian or Asian	10404007
51	White	10404007
198	Other	10404007
844	Black African	10404008
6652	Coloured	10404008
58	Indian or Asian	10404008
123	White	10404008
83	Other	10404008
5695	Black African	10404009
191	Coloured	10404009
11	Indian or Asian	10404009
4	White	10404009
64	Other	10404009
3063	Black African	10404010
65	Coloured	10404010
0	Indian or Asian	10404010
1	White	10404010
23	Other	10404010
7253	Black African	10404011
504	Coloured	10404011
25	Indian or Asian	10404011
924	White	10404011
54	Other	10404011
4095	Black African	10404012
141	Coloured	10404012
11	Indian or Asian	10404012
1	White	10404012
40	Other	10404012
7136	Black African	10404013
371	Coloured	10404013
19	Indian or Asian	10404013
36	White	10404013
41	Other	10404013
331	Black African	10404014
9049	Coloured	10404014
36	Indian or Asian	10404014
59	White	10404014
96	Other	10404014
5045	Black African	10404015
1029	Coloured	10404015
4	Indian or Asian	10404015
4	White	10404015
74	Other	10404015
887	Black African	10404016
10838	Coloured	10404016
74	Indian or Asian	10404016
76	White	10404016
83	Other	10404016
439	Black African	10404017
8645	Coloured	10404017
48	Indian or Asian	10404017
104	White	10404017
37	Other	10404017
177	Black African	10404018
115	Coloured	10404018
44	Indian or Asian	10404018
4589	White	10404018
103	Other	10404018
801	Black African	10404019
1189	Coloured	10404019
72	Indian or Asian	10404019
6909	White	10404019
301	Other	10404019
1295	Black African	10404020
6537	Coloured	10404020
4	Indian or Asian	10404020
16	White	10404020
61	Other	10404020
8886	Black African	10404021
270	Coloured	10404021
10	Indian or Asian	10404021
5	White	10404021
48	Other	10404021
707	Black African	10404022
3995	Coloured	10404022
45	Indian or Asian	10404022
3458	White	10404022
72	Other	10404022
868	Black African	10404023
5918	Coloured	10404023
77	Indian or Asian	10404023
2897	White	10404023
188	Other	10404023
390	Black African	10404024
6918	Coloured	10404024
88	Indian or Asian	10404024
524	White	10404024
63	Other	10404024
652	Black African	10404025
7118	Coloured	10404025
13	Indian or Asian	10404025
964	White	10404025
94	Other	10404025
509	Black African	10405001
4079	Coloured	10405001
11	Indian or Asian	10405001
1896	White	10405001
42	Other	10405001
166	Black African	10405002
3334	Coloured	10405002
4	Indian or Asian	10405002
3347	White	10405002
41	Other	10405002
812	Black African	10405003
4373	Coloured	10405003
60	Indian or Asian	10405003
3218	White	10405003
199	Other	10405003
1283	Black African	10405004
3320	Coloured	10405004
32	Indian or Asian	10405004
28	White	10405004
20	Other	10405004
208	Black African	10405005
5962	Coloured	10405005
5	Indian or Asian	10405005
4	White	10405005
57	Other	10405005
382	Black African	10405006
10630	Coloured	10405006
40	Indian or Asian	10405006
12	White	10405006
43	Other	10405006
629	Black African	10405007
4828	Coloured	10405007
38	Indian or Asian	10405007
1617	White	10405007
48	Other	10405007
3661	Black African	10405008
6791	Coloured	10405008
50	Indian or Asian	10405008
43	White	10405008
46	Other	10405008
307	Black African	10405009
5203	Coloured	10405009
30	Indian or Asian	10405009
6	White	10405009
26	Other	10405009
135	Black African	10405010
6136	Coloured	10405010
19	Indian or Asian	10405010
25	White	10405010
23	Other	10405010
411	Black African	10405011
9146	Coloured	10405011
19	Indian or Asian	10405011
988	White	10405011
33	Other	10405011
118	Black African	10405012
5820	Coloured	10405012
3	Indian or Asian	10405012
794	White	10405012
21	Other	10405012
119	Black African	10405013
4579	Coloured	10405013
6	Indian or Asian	10405013
6	White	10405013
94	Other	10405013
2094	Black African	10407001
3961	Coloured	10407001
41	Indian or Asian	10407001
1549	White	10407001
474	Other	10407001
2131	Black African	10407002
333	Coloured	10407002
84	Indian or Asian	10407002
5048	White	10407002
130	Other	10407002
3008	Black African	10407003
1513	Coloured	10407003
14	Indian or Asian	10407003
27	White	10407003
46	Other	10407003
2157	Black African	10407004
4643	Coloured	10407004
33	Indian or Asian	10407004
35	White	10407004
28	Other	10407004
5767	Black African	10407005
75	Coloured	10407005
5	Indian or Asian	10407005
4	White	10407005
124	Other	10407005
4132	Black African	10407006
45	Coloured	10407006
1	Indian or Asian	10407006
1	White	10407006
75	Other	10407006
2950	Black African	10407007
4774	Coloured	10407007
71	Indian or Asian	10407007
1643	White	10407007
2145	Other	10407007
2007	Black African	10408001
2460	Coloured	10408001
18	Indian or Asian	10408001
1532	White	10408001
193	Other	10408001
375	Black African	10408002
2438	Coloured	10408002
15	Indian or Asian	10408002
2908	White	10408002
58	Other	10408002
3117	Black African	10408003
1285	Coloured	10408003
7	Indian or Asian	10408003
126	White	10408003
46	Other	10408003
4179	Black African	10408004
203	Coloured	10408004
14	Indian or Asian	10408004
760	White	10408004
98	Other	10408004
526	Black African	10408005
3874	Coloured	10408005
2	Indian or Asian	10408005
1630	White	10408005
36	Other	10408005
2089	Black African	10408006
6455	Coloured	10408006
42	Indian or Asian	10408006
19	White	10408006
87	Other	10408006
8748	Black African	10408007
3710	Coloured	10408007
43	Indian or Asian	10408007
88	White	10408007
152	Other	10408007
2473	Black African	10408008
3222	Coloured	10408008
25	Indian or Asian	10408008
89	White	10408008
60	Other	10408008
569	Black African	10408009
3914	Coloured	10408009
48	Indian or Asian	10408009
3133	White	10408009
75	Other	10408009
686	Black African	10408010
516	Coloured	10408010
79	Indian or Asian	10408010
4147	White	10408010
283	Other	10408010
321	Black African	10501001
2333	Coloured	10501001
5	Indian or Asian	10501001
156	White	10501001
16	Other	10501001
122	Black African	10501002
494	Coloured	10501002
14	Indian or Asian	10501002
282	White	10501002
16	Other	10501002
11	Black African	10501003
148	Coloured	10501003
0	Indian or Asian	10501003
191	White	10501003
11	Other	10501003
125	Black African	10501004
3571	Coloured	10501004
1	Indian or Asian	10501004
475	White	10501004
0	Other	10501004
173	Black African	10502001
3012	Coloured	10502001
27	Indian or Asian	10502001
275	White	10502001
35	Other	10502001
82	Black African	10502002
1737	Coloured	10502002
4	Indian or Asian	10502002
793	White	10502002
19	Other	10502002
35	Black African	10502003
2582	Coloured	10502003
2	Indian or Asian	10502003
1	White	10502003
26	Other	10502003
75	Black African	10502004
3765	Coloured	10502004
5	Indian or Asian	10502004
485	White	10502004
2	Other	10502004
1113	Black African	10503001
5778	Coloured	10503001
15	Indian or Asian	10503001
527	White	10503001
21	Other	10503001
694	Black African	10503002
3877	Coloured	10503002
38	Indian or Asian	10503002
1849	White	10503002
61	Other	10503002
153	Black African	10503003
7081	Coloured	10503003
32	Indian or Asian	10503003
10	White	10503003
3	Other	10503003
2426	Black African	10503004
1456	Coloured	10503004
38	Indian or Asian	10503004
1382	White	10503004
47	Other	10503004
2492	Black African	10503005
4525	Coloured	10503005
29	Indian or Asian	10503005
5	White	10503005
52	Other	10503005
135	Black African	10503006
4730	Coloured	10503006
39	Indian or Asian	10503006
7	White	10503006
9	Other	10503006
1089	Black African	10503007
8987	Coloured	10503007
51	Indian or Asian	10503007
759	White	10503007
77	Other	10503007
2072	Black African	19100001
3663	Coloured	19100001
1421	Indian or Asian	19100001
19152	White	19100001
577	Other	19100001
3607	Black African	19100002
4821	Coloured	19100002
561	Indian or Asian	19100002
15953	White	19100002
642	Other	19100002
4164	Black African	19100003
5100	Coloured	19100003
447	Indian or Asian	19100003
21691	White	19100003
543	Other	19100003
20022	Black African	19100004
5250	Coloured	19100004
1250	Indian or Asian	19100004
13222	White	19100004
1172	Other	19100004
2198	Black African	19100005
4035	Coloured	19100005
303	Indian or Asian	19100005
17764	White	19100005
363	Other	19100005
11873	Black African	19100006
9100	Coloured	19100006
57	Indian or Asian	19100006
2173	White	19100006
270	Other	19100006
1742	Black African	19100007
27454	Coloured	19100007
185	Indian or Asian	19100007
1102	White	19100007
325	Other	19100007
6211	Black African	19100008
7613	Coloured	19100008
277	Indian or Asian	19100008
23163	White	19100008
481	Other	19100008
5427	Black African	19100009
22270	Coloured	19100009
279	Indian or Asian	19100009
146	White	19100009
1179	Other	19100009
5952	Black African	19100010
16757	Coloured	19100010
445	Indian or Asian	19100010
5942	White	19100010
1426	Other	19100010
8148	Black African	19100011
26541	Coloured	19100011
256	Indian or Asian	19100011
5803	White	19100011
945	Other	19100011
1415	Black African	19100012
32705	Coloured	19100012
260	Indian or Asian	19100012
63	White	19100012
949	Other	19100012
11838	Black African	19100013
33121	Coloured	19100013
156	Indian or Asian	19100013
50	White	19100013
590	Other	19100013
7813	Black African	19100014
28210	Coloured	19100014
241	Indian or Asian	19100014
6407	White	19100014
617	Other	19100014
2036	Black African	19100015
3987	Coloured	19100015
234	Indian or Asian	19100015
15946	White	19100015
403	Other	19100015
12682	Black African	19100016
29416	Coloured	19100016
212	Indian or Asian	19100016
209	White	19100016
592	Other	19100016
3935	Black African	19100017
35964	Coloured	19100017
295	Indian or Asian	19100017
173	White	19100017
710	Other	19100017
21955	Black African	19100018
230	Coloured	19100018
19	Indian or Asian	19100018
17	White	19100018
83	Other	19100018
16868	Black African	19100019
36376	Coloured	19100019
277	Indian or Asian	19100019
140	White	19100019
855	Other	19100019
16388	Black African	19100020
24409	Coloured	19100020
184	Indian or Asian	19100020
45	White	19100020
736	Other	19100020
1446	Black African	19100021
1382	Coloured	19100021
210	Indian or Asian	19100021
18333	White	19100021
207	Other	19100021
3041	Black African	19100022
26151	Coloured	19100022
325	Indian or Asian	19100022
103	White	19100022
1226	Other	19100022
4057	Black African	19100023
2812	Coloured	19100023
712	Indian or Asian	19100023
25239	White	19100023
628	Other	19100023
1782	Black African	19100024
25709	Coloured	19100024
85	Indian or Asian	19100024
21	White	19100024
133	Other	19100024
1788	Black African	19100025
35058	Coloured	19100025
2797	Indian or Asian	19100025
62	White	19100025
506	Other	19100025
4538	Black African	19100026
18482	Coloured	19100026
657	Indian or Asian	19100026
5985	White	19100026
1079	Other	19100026
5058	Black African	19100027
9187	Coloured	19100027
1062	Indian or Asian	19100027
12031	White	19100027
779	Other	19100027
1458	Black African	19100028
28920	Coloured	19100028
163	Indian or Asian	19100028
35	White	19100028
250	Other	19100028
1951	Black African	19100029
40450	Coloured	19100029
126	Indian or Asian	19100029
98	White	19100029
644	Other	19100029
1995	Black African	19100030
29388	Coloured	19100030
232	Indian or Asian	19100030
3583	White	19100030
525	Other	19100030
3575	Black African	19100031
30596	Coloured	19100031
162	Indian or Asian	19100031
53	White	19100031
943	Other	19100031
7508	Black African	19100032
28376	Coloured	19100032
163	Indian or Asian	19100032
722	White	19100032
661	Other	19100032
42931	Black African	19100033
342	Coloured	19100033
40	Indian or Asian	19100033
20	White	19100033
362	Other	19100033
33714	Black African	19100034
210	Coloured	19100034
26	Indian or Asian	19100034
38	White	19100034
405	Other	19100034
38158	Black African	19100035
1359	Coloured	19100035
36	Indian or Asian	19100035
67	White	19100035
448	Other	19100035
33087	Black African	19100036
946	Coloured	19100036
22	Indian or Asian	19100036
28	White	19100036
83	Other	19100036
21907	Black African	19100037
91	Coloured	19100037
17	Indian or Asian	19100037
17	White	19100037
175	Other	19100037
20386	Black African	19100038
124	Coloured	19100038
15	Indian or Asian	19100038
22	White	19100038
86	Other	19100038
24163	Black African	19100039
53	Coloured	19100039
5	Indian or Asian	19100039
76	White	19100039
173	Other	19100039
28148	Black African	19100040
211	Coloured	19100040
17	Indian or Asian	19100040
11	White	19100040
84	Other	19100040
20659	Black African	19100041
229	Coloured	19100041
18	Indian or Asian	19100041
15	White	19100041
84	Other	19100041
19764	Black African	19100042
7583	Coloured	19100042
71	Indian or Asian	19100042
18	White	19100042
647	Other	19100042
2144	Black African	19100043
37055	Coloured	19100043
486	Indian or Asian	19100043
108	White	19100043
610	Other	19100043
13847	Black African	19100044
19633	Coloured	19100044
264	Indian or Asian	19100044
49	White	19100044
612	Other	19100044
11357	Black African	19100045
22197	Coloured	19100045
167	Indian or Asian	19100045
26	White	19100045
1045	Other	19100045
1073	Black African	19100046
31019	Coloured	19100046
1000	Indian or Asian	19100046
86	White	19100046
712	Other	19100046
820	Black African	19100047
33403	Coloured	19100047
147	Indian or Asian	19100047
34	White	19100047
221	Other	19100047
2492	Black African	19100048
17361	Coloured	19100048
8375	Indian or Asian	19100048
111	White	19100048
1413	Other	19100048
1563	Black African	19100049
34916	Coloured	19100049
474	Indian or Asian	19100049
78	White	19100049
433	Other	19100049
856	Black African	19100050
31593	Coloured	19100050
149	Indian or Asian	19100050
32	White	19100050
347	Other	19100050
23038	Black African	19100051
110	Coloured	19100051
21	Indian or Asian	19100051
28	White	19100051
93	Other	19100051
24499	Black African	19100052
79	Coloured	19100052
11	Indian or Asian	19100052
8	White	19100052
78	Other	19100052
9322	Black African	19100053
7660	Coloured	19100053
999	Indian or Asian	19100053
10239	White	19100053
807	Other	19100053
5342	Black African	19100054
2227	Coloured	19100054
741	Indian or Asian	19100054
18494	White	19100054
1099	Other	19100054
9029	Black African	19100055
10523	Coloured	19100055
1225	Indian or Asian	19100055
13290	White	19100055
1468	Other	19100055
5553	Black African	19100056
26380	Coloured	19100056
620	Indian or Asian	19100056
405	White	19100056
838	Other	19100056
11581	Black African	19100057
9550	Coloured	19100057
1380	Indian or Asian	19100057
8874	White	19100057
1691	Other	19100057
5492	Black African	19100058
3833	Coloured	19100058
1373	Indian or Asian	19100058
16724	White	19100058
1202	Other	19100058
4704	Black African	19100059
2162	Coloured	19100059
1299	Indian or Asian	19100059
14708	White	19100059
861	Other	19100059
2834	Black African	19100060
20140	Coloured	19100060
3976	Indian or Asian	19100060
2304	White	19100060
2425	Other	19100060
6593	Black African	19100061
16260	Coloured	19100061
452	Indian or Asian	19100061
8165	White	19100061
413	Other	19100061
4122	Black African	19100062
3710	Coloured	19100062
680	Indian or Asian	19100062
15645	White	19100062
675	Other	19100062
2888	Black African	19100063
19188	Coloured	19100063
1095	Indian or Asian	19100063
2706	White	19100063
1995	Other	19100063
3657	Black African	19100064
4511	Coloured	19100064
477	Indian or Asian	19100064
14817	White	19100064
1027	Other	19100064
1544	Black African	19100065
25368	Coloured	19100065
267	Indian or Asian	19100065
82	White	19100065
854	Other	19100065
756	Black African	19100066
26685	Coloured	19100066
263	Indian or Asian	19100066
161	White	19100066
980	Other	19100066
14404	Black African	19100067
29870	Coloured	19100067
2055	Indian or Asian	19100067
338	White	19100067
1946	Other	19100067
1280	Black African	19100068
29958	Coloured	19100068
173	Indian or Asian	19100068
74	White	19100068
347	Other	19100068
21746	Black African	19100069
1041	Coloured	19100069
167	Indian or Asian	19100069
12390	White	19100069
1828	Other	19100069
1723	Black African	19100070
2322	Coloured	19100070
553	Indian or Asian	19100070
19893	White	19100070
443	Other	19100070
5686	Black African	19100071
4833	Coloured	19100071
325	Indian or Asian	19100071
16527	White	19100071
572	Other	19100071
2445	Black African	19100072
19935	Coloured	19100072
348	Indian or Asian	19100072
1640	White	19100072
821	Other	19100072
2143	Black African	19100073
5835	Coloured	19100073
459	Indian or Asian	19100073
15051	White	19100073
797	Other	19100073
15838	Black African	19100074
6477	Coloured	19100074
237	Indian or Asian	19100074
13041	White	19100074
1229	Other	19100074
11695	Black African	19100075
25297	Coloured	19100075
224	Indian or Asian	19100075
77	White	19100075
405	Other	19100075
8811	Black African	19100076
31541	Coloured	19100076
183	Indian or Asian	19100076
141	White	19100076
289	Other	19100076
6913	Black African	19100077
4226	Coloured	19100077
712	Indian or Asian	19100077
14897	White	19100077
1504	Other	19100077
2060	Black African	19100078
36802	Coloured	19100078
402	Indian or Asian	19100078
95	White	19100078
712	Other	19100078
1442	Black African	19100079
33335	Coloured	19100079
123	Indian or Asian	19100079
42	White	19100079
469	Other	19100079
36828	Black African	19100080
7999	Coloured	19100080
327	Indian or Asian	19100080
468	White	19100080
529	Other	19100080
818	Black African	19100081
30998	Coloured	19100081
135	Indian or Asian	19100081
23	White	19100081
190	Other	19100081
1169	Black African	19100082
39743	Coloured	19100082
143	Indian or Asian	19100082
53	White	19100082
275	Other	19100082
12205	Black African	19100083
997	Coloured	19100083
76	Indian or Asian	19100083
10737	White	19100083
827	Other	19100083
2951	Black African	19100084
4485	Coloured	19100084
206	Indian or Asian	19100084
17272	White	19100084
380	Other	19100084
23131	Black African	19100085
2550	Coloured	19100085
161	Indian or Asian	19100085
6677	White	19100085
848	Other	19100085
26149	Black African	19100086
11377	Coloured	19100086
243	Indian or Asian	19100086
819	White	19100086
589	Other	19100086
29389	Black African	19100087
117	Coloured	19100087
22	Indian or Asian	19100087
22	White	19100087
103	Other	19100087
23046	Black African	19100088
17063	Coloured	19100088
195	Indian or Asian	19100088
81	White	19100088
528	Other	19100088
27409	Black African	19100089
64	Coloured	19100089
32	Indian or Asian	19100089
12	White	19100089
121	Other	19100089
28275	Black African	19100090
102	Coloured	19100090
21	Indian or Asian	19100090
29	White	19100090
149	Other	19100090
30425	Black African	19100091
97	Coloured	19100091
7	Indian or Asian	19100091
24	White	19100091
140	Other	19100091
34064	Black African	19100092
242	Coloured	19100092
47	Indian or Asian	19100092
49	White	19100092
297	Other	19100092
30946	Black African	19100093
97	Coloured	19100093
17	Indian or Asian	19100093
22	White	19100093
135	Other	19100093
24536	Black African	19100094
245	Coloured	19100094
11	Indian or Asian	19100094
5	White	19100094
172	Other	19100094
58105	Black African	19100095
234	Coloured	19100095
35	Indian or Asian	19100095
55	White	19100095
411	Other	19100095
26004	Black African	19100096
471	Coloured	19100096
18	Indian or Asian	19100096
22	White	19100096
319	Other	19100096
28034	Black African	19100097
260	Coloured	19100097
24	Indian or Asian	19100097
18	White	19100097
193	Other	19100097
28550	Black African	19100098
95	Coloured	19100098
3	Indian or Asian	19100098
40	White	19100098
283	Other	19100098
15331	Black African	19100099
36276	Coloured	19100099
169	Indian or Asian	19100099
33	White	19100099
403	Other	19100099
5664	Black African	19100100
24778	Coloured	19100100
430	Indian or Asian	19100100
12655	White	19100100
779	Other	19100100
32519	Black African	19100101
3832	Coloured	19100101
28	Indian or Asian	19100101
96	White	19100101
609	Other	19100101
2939	Black African	19100102
3581	Coloured	19100102
282	Indian or Asian	19100102
19828	White	19100102
409	Other	19100102
2067	Black African	19100103
5764	Coloured	19100103
351	Indian or Asian	19100103
32661	White	19100103
465	Other	19100103
33335	Black African	19100104
1732	Coloured	19100104
35	Indian or Asian	19100104
412	White	19100104
1459	Other	19100104
10022	Black African	19100105
12559	Coloured	19100105
400	Indian or Asian	19100105
16200	White	19100105
391	Other	19100105
42037	Black African	19100106
20750	Coloured	19100106
184	Indian or Asian	19100106
83	White	19100106
1458	Other	19100106
11165	Black African	19100107
3423	Coloured	19100107
1255	Indian or Asian	19100107
26810	White	19100107
644	Other	19100107
51140	Black African	19100108
1941	Coloured	19100108
48	Indian or Asian	19100108
28	White	19100108
380	Other	19100108
10019	Black African	19100109
29340	Coloured	19100109
156	Indian or Asian	19100109
420	White	19100109
397	Other	19100109
1622	Black African	19100110
25326	Coloured	19100110
361	Indian or Asian	19100110
109	White	19100110
376	Other	19100110
16296	Black African	19100111
17031	Coloured	19100111
143	Indian or Asian	19100111
2946	White	19100111
1078	Other	19100111
\.


--
-- Name: populationgroup_country_pkey; Type: CONSTRAINT; Schema: public; Owner: census; Tablespace: 
--

ALTER TABLE ONLY populationgroup_country
    ADD CONSTRAINT populationgroup_country_pkey PRIMARY KEY ("population group");


--
-- Name: populationgroup_district_pkey; Type: CONSTRAINT; Schema: public; Owner: census; Tablespace: 
--

ALTER TABLE ONLY populationgroup_district
    ADD CONSTRAINT populationgroup_district_pkey PRIMARY KEY ("population group", district_code);


--
-- Name: populationgroup_municipality_pkey; Type: CONSTRAINT; Schema: public; Owner: census; Tablespace: 
--

ALTER TABLE ONLY populationgroup_municipality
    ADD CONSTRAINT populationgroup_municipality_pkey PRIMARY KEY ("population group", municipality_code);


--
-- Name: populationgroup_province_pkey; Type: CONSTRAINT; Schema: public; Owner: census; Tablespace: 
--

ALTER TABLE ONLY populationgroup_province
    ADD CONSTRAINT populationgroup_province_pkey PRIMARY KEY ("population group", province_code);


--
-- Name: populationgroup_ward_pkey; Type: CONSTRAINT; Schema: public; Owner: census; Tablespace: 
--

ALTER TABLE ONLY populationgroup_ward
    ADD CONSTRAINT populationgroup_ward_pkey PRIMARY KEY ("population group", ward_code);


--
-- Name: populationgroup_country_country_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: census
--

ALTER TABLE ONLY populationgroup_country
    ADD CONSTRAINT populationgroup_country_country_code_fkey FOREIGN KEY (country_code) REFERENCES country(code);


--
-- Name: populationgroup_district_district_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: census
--

ALTER TABLE ONLY populationgroup_district
    ADD CONSTRAINT populationgroup_district_district_code_fkey FOREIGN KEY (district_code) REFERENCES district(code);


--
-- Name: populationgroup_municipality_municipality_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: census
--

ALTER TABLE ONLY populationgroup_municipality
    ADD CONSTRAINT populationgroup_municipality_municipality_code_fkey FOREIGN KEY (municipality_code) REFERENCES municipality(code);


--
-- Name: populationgroup_province_province_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: census
--

ALTER TABLE ONLY populationgroup_province
    ADD CONSTRAINT populationgroup_province_province_code_fkey FOREIGN KEY (province_code) REFERENCES province(code);


--
-- Name: populationgroup_ward_ward_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: census
--

ALTER TABLE ONLY populationgroup_ward
    ADD CONSTRAINT populationgroup_ward_ward_code_fkey FOREIGN KEY (ward_code) REFERENCES ward(code);


--
-- PostgreSQL database dump complete
--

