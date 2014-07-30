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
-- Name: tenurestatus_country; Type: TABLE; Schema: public; Owner: census; Tablespace: 
--

CREATE TABLE tenurestatus_country (
    total integer NOT NULL,
    "tenure status" character varying(128) NOT NULL,
    country_code character varying(8) NOT NULL
);


ALTER TABLE public.tenurestatus_country OWNER TO census;

--
-- Name: tenurestatus_municipality; Type: TABLE; Schema: public; Owner: census; Tablespace: 
--

CREATE TABLE tenurestatus_municipality (
    total integer NOT NULL,
    "tenure status" character varying(128) NOT NULL,
    municipality_code character varying(8) NOT NULL
);


ALTER TABLE public.tenurestatus_municipality OWNER TO census;

--
-- Name: tenurestatus_province; Type: TABLE; Schema: public; Owner: census; Tablespace: 
--

CREATE TABLE tenurestatus_province (
    total integer NOT NULL,
    "tenure status" character varying(128) NOT NULL,
    province_code character varying(8) NOT NULL
);


ALTER TABLE public.tenurestatus_province OWNER TO census;

--
-- Name: tenurestatus_ward; Type: TABLE; Schema: public; Owner: census; Tablespace: 
--

CREATE TABLE tenurestatus_ward (
    total integer NOT NULL,
    "tenure status" character varying(128) NOT NULL,
    ward_code character varying(8) NOT NULL
);


ALTER TABLE public.tenurestatus_ward OWNER TO census;

--
-- Data for Name: tenurestatus_country; Type: TABLE DATA; Schema: public; Owner: census
--

COPY tenurestatus_country (total, "tenure status", country_code) FROM stdin;
3610222	Rented	ZA
1701467	Owned but not yet paid off	ZA
2682392	Occupied rent-free	ZA
5970872	Owned and fully paid off	ZA
485208	Other	ZA
\.


--
-- Data for Name: tenurestatus_municipality; Type: TABLE DATA; Schema: public; Owner: census
--

COPY tenurestatus_municipality (total, "tenure status", municipality_code) FROM stdin;
3161	Rented	EC101
842	Owned but not yet paid off	EC101
1868	Occupied rent-free	EC101
6151	Owned and fully paid off	EC101
378	Other	EC101
2550	Rented	EC102
611	Owned but not yet paid off	EC102
1760	Occupied rent-free	EC102
4489	Owned and fully paid off	EC102
350	Other	EC102
573	Rented	EC103
141	Owned but not yet paid off	EC103
645	Occupied rent-free	EC103
1394	Owned and fully paid off	EC103
162	Other	EC103
5686	Rented	EC104
1701	Owned but not yet paid off	EC104
4130	Occupied rent-free	EC104
8629	Owned and fully paid off	EC104
1243	Other	EC104
3189	Rented	EC105
1441	Owned but not yet paid off	EC105
7505	Occupied rent-free	EC105
6740	Owned and fully paid off	EC105
455	Other	EC105
2187	Rented	EC106
948	Owned but not yet paid off	EC106
5641	Occupied rent-free	EC106
5591	Owned and fully paid off	EC106
381	Other	EC106
827	Rented	EC107
286	Owned but not yet paid off	EC107
913	Occupied rent-free	EC107
2415	Owned and fully paid off	EC107
169	Other	EC107
6926	Rented	EC108
2093	Owned but not yet paid off	EC108
6083	Occupied rent-free	EC108
13132	Owned and fully paid off	EC108
1214	Other	EC108
1982	Rented	EC109
711	Owned but not yet paid off	EC109
3265	Occupied rent-free	EC109
4447	Owned and fully paid off	EC109
627	Other	EC109
5354	Rented	EC121
2876	Owned but not yet paid off	EC121
6799	Occupied rent-free	EC121
41379	Owned and fully paid off	EC121
3715	Other	EC121
7893	Rented	EC122
2639	Owned but not yet paid off	EC122
11144	Occupied rent-free	EC122
43667	Owned and fully paid off	EC122
4389	Other	EC122
1115	Rented	EC123
701	Owned but not yet paid off	EC123
2078	Occupied rent-free	EC123
5992	Owned and fully paid off	EC123
425	Other	EC123
2519	Rented	EC124
1523	Owned but not yet paid off	EC124
6182	Occupied rent-free	EC124
22777	Owned and fully paid off	EC124
1159	Other	EC124
803	Rented	EC126
828	Owned but not yet paid off	EC126
2900	Occupied rent-free	EC126
16014	Owned and fully paid off	EC126
840	Other	EC126
2730	Rented	EC127
1528	Owned but not yet paid off	EC127
11243	Occupied rent-free	EC127
18700	Owned and fully paid off	EC127
1154	Other	EC127
1984	Rented	EC128
821	Owned but not yet paid off	EC128
918	Occupied rent-free	EC128
2737	Owned and fully paid off	EC128
251	Other	EC128
5300	Rented	EC131
2138	Owned but not yet paid off	EC131
3763	Occupied rent-free	EC131
6490	Owned and fully paid off	EC131
771	Other	EC131
949	Rented	EC132
231	Owned but not yet paid off	EC132
1730	Occupied rent-free	EC132
6274	Owned and fully paid off	EC132
310	Other	EC132
769	Rented	EC133
785	Owned but not yet paid off	EC133
2310	Occupied rent-free	EC133
2070	Owned and fully paid off	EC133
295	Other	EC133
8784	Rented	EC134
4877	Owned but not yet paid off	EC134
9272	Occupied rent-free	EC134
25718	Owned and fully paid off	EC134
2521	Other	EC134
2623	Rented	EC135
1550	Owned but not yet paid off	EC135
7374	Occupied rent-free	EC135
27156	Owned and fully paid off	EC135
1746	Other	EC135
1497	Rented	EC136
1424	Owned but not yet paid off	EC136
8838	Occupied rent-free	EC136
17989	Owned and fully paid off	EC136
1933	Other	EC136
2673	Rented	EC137
2404	Owned but not yet paid off	EC137
8107	Occupied rent-free	EC137
21332	Owned and fully paid off	EC137
2697	Other	EC137
1789	Rented	EC138
1445	Owned but not yet paid off	EC138
5119	Occupied rent-free	EC138
5228	Owned and fully paid off	EC138
2570	Other	EC138
3413	Rented	EC141
1828	Owned but not yet paid off	EC141
7587	Occupied rent-free	EC141
21604	Owned and fully paid off	EC141
3422	Other	EC141
2980	Rented	EC142
1803	Owned but not yet paid off	EC142
6267	Occupied rent-free	EC142
24256	Owned and fully paid off	EC142
2740	Other	EC142
2779	Rented	EC143
685	Owned but not yet paid off	EC143
2954	Occupied rent-free	EC143
4696	Owned and fully paid off	EC143
990	Other	EC143
2361	Rented	EC144
664	Owned but not yet paid off	EC144
1942	Occupied rent-free	EC144
4431	Owned and fully paid off	EC144
372	Other	EC144
4910	Rented	EC153
6029	Owned but not yet paid off	EC153
11832	Occupied rent-free	EC153
28992	Owned and fully paid off	EC153
4450	Other	EC153
2350	Rented	EC154
3049	Owned but not yet paid off	EC154
3760	Occupied rent-free	EC154
20072	Owned and fully paid off	EC154
2483	Other	EC154
5211	Rented	EC155
4831	Owned but not yet paid off	EC155
8887	Occupied rent-free	EC155
38280	Owned and fully paid off	EC155
4440	Other	EC155
2814	Rented	EC156
3131	Owned but not yet paid off	EC156
13105	Occupied rent-free	EC156
20277	Owned and fully paid off	EC156
4088	Other	EC156
22839	Rented	EC157
7470	Owned but not yet paid off	EC157
18648	Occupied rent-free	EC157
51186	Owned and fully paid off	EC157
5098	Other	EC157
3814	Rented	EC441
3635	Owned but not yet paid off	EC441
10621	Occupied rent-free	EC441
23745	Owned and fully paid off	EC441
7712	Other	EC441
4866	Rented	EC442
2772	Owned but not yet paid off	EC442
8966	Occupied rent-free	EC442
26147	Owned and fully paid off	EC442
4139	Other	EC442
4023	Rented	EC443
2915	Owned but not yet paid off	EC443
6908	Occupied rent-free	EC443
26353	Owned and fully paid off	EC443
8249	Other	EC443
1314	Rented	EC444
2020	Owned but not yet paid off	EC444
4830	Occupied rent-free	EC444
13694	Owned and fully paid off	EC444
2539	Other	EC444
52167	Rented	BUF
29713	Owned but not yet paid off	BUF
51525	Occupied rent-free	BUF
81731	Owned and fully paid off	BUF
8432	Other	BUF
62518	Rented	NMA
46014	Owned but not yet paid off	NMA
51314	Occupied rent-free	NMA
153065	Owned and fully paid off	NMA
11381	Other	NMA
2081	Rented	FS161
289	Owned but not yet paid off	FS161
2613	Occupied rent-free	FS161
5781	Owned and fully paid off	FS161
479	Other	FS161
3407	Rented	FS162
656	Owned but not yet paid off	FS162
3684	Occupied rent-free	FS162
7292	Owned and fully paid off	FS162
604	Other	FS162
2673	Rented	FS163
1288	Owned but not yet paid off	FS163
3034	Occupied rent-free	FS163
3498	Owned and fully paid off	FS163
300	Other	FS163
1268	Rented	FS164
232	Owned but not yet paid off	FS164
1061	Occupied rent-free	FS164
4951	Owned and fully paid off	FS164
179	Other	FS164
3373	Rented	FS181
1340	Owned but not yet paid off	FS181
2693	Occupied rent-free	FS181
9604	Owned and fully paid off	FS181
565	Other	FS181
1293	Rented	FS182
557	Owned but not yet paid off	FS182
4374	Occupied rent-free	FS182
2188	Owned and fully paid off	FS182
285	Other	FS182
2096	Rented	FS183
696	Owned but not yet paid off	FS183
2336	Occupied rent-free	FS183
6466	Owned and fully paid off	FS183
398	Other	FS183
28745	Rented	FS184
12139	Owned but not yet paid off	FS184
18873	Occupied rent-free	FS184
59947	Owned and fully paid off	FS184
3491	Other	FS184
2606	Rented	FS185
1503	Owned but not yet paid off	FS185
4516	Occupied rent-free	FS185
12375	Owned and fully paid off	FS185
703	Other	FS185
6210	Rented	FS191
2917	Owned but not yet paid off	FS191
6035	Occupied rent-free	FS191
17959	Owned and fully paid off	FS191
566	Other	FS191
11680	Rented	FS192
4055	Owned but not yet paid off	FS192
7876	Occupied rent-free	FS192
14259	Owned and fully paid off	FS192
724	Other	FS192
3438	Rented	FS193
1241	Owned but not yet paid off	FS193
3498	Occupied rent-free	FS193
8721	Owned and fully paid off	FS193
421	Other	FS193
8298	Rented	FS194
7348	Owned but not yet paid off	FS194
16432	Occupied rent-free	FS194
65133	Owned and fully paid off	FS194
3016	Other	FS194
2980	Rented	FS195
501	Owned but not yet paid off	FS195
3046	Occupied rent-free	FS195
5974	Owned and fully paid off	FS195
386	Other	FS195
4065	Rented	FS196
730	Owned but not yet paid off	FS196
2379	Occupied rent-free	FS196
7792	Owned and fully paid off	FS196
203	Other	FS196
12786	Rented	FS201
3381	Owned but not yet paid off	FS201
6046	Occupied rent-free	FS201
22231	Owned and fully paid off	FS201
1216	Other	FS201
6519	Rented	FS203
2299	Owned but not yet paid off	FS203
4759	Occupied rent-free	FS203
22300	Owned and fully paid off	FS203
1225	Other	FS203
10188	Rented	FS204
6539	Owned but not yet paid off	FS204
7913	Occupied rent-free	FS204
19698	Owned and fully paid off	FS204
1419	Other	FS204
2920	Rented	FS205
1049	Owned but not yet paid off	FS205
1970	Occupied rent-free	FS205
10104	Owned and fully paid off	FS205
418	Other	FS205
47472	Rented	MAN
25589	Owned but not yet paid off	MAN
33774	Occupied rent-free	MAN
118899	Owned and fully paid off	MAN
6186	Other	MAN
62461	Rented	GT421
28289	Owned but not yet paid off	GT421
44468	Occupied rent-free	GT421
79155	Owned and fully paid off	GT421
5762	Other	GT421
7322	Rented	GT422
5608	Owned but not yet paid off	GT422
8782	Occupied rent-free	GT422
7151	Owned and fully paid off	GT422
1101	Other	GT422
8362	Rented	GT423
3594	Owned but not yet paid off	GT423
3865	Occupied rent-free	GT423
12956	Owned and fully paid off	GT423
890	Other	GT423
43066	Rented	GT481
17634	Owned but not yet paid off	GT481
25655	Occupied rent-free	GT481
28179	Owned and fully paid off	GT481
2839	Other	GT481
14402	Rented	GT482
6945	Owned but not yet paid off	GT482
7318	Occupied rent-free	GT482
13233	Owned and fully paid off	GT482
1401	Other	GT482
20059	Rented	GT483
2734	Owned but not yet paid off	GT483
8627	Occupied rent-free	GT483
7680	Owned and fully paid off	GT483
1002	Other	GT483
32279	Rented	GT484
3871	Owned but not yet paid off	GT484
12614	Occupied rent-free	GT484
15950	Owned and fully paid off	GT484
1909	Other	GT484
378364	Rented	EKU
169175	Owned but not yet paid off	EKU
164660	Occupied rent-free	EKU
277633	Owned and fully paid off	EKU
25633	Other	EKU
590652	Rented	JHB
236694	Owned but not yet paid off	JHB
227609	Occupied rent-free	JHB
340801	Owned and fully paid off	JHB
39099	Other	JHB
291590	Rented	TSH
166840	Owned but not yet paid off	TSH
121713	Occupied rent-free	TSH
307004	Owned and fully paid off	TSH
24389	Other	TSH
1901	Rented	KZN213
1639	Owned but not yet paid off	KZN213
5168	Occupied rent-free	KZN213
25450	Owned and fully paid off	KZN213
1014	Other	KZN213
2264	Rented	KZN214
2305	Owned but not yet paid off	KZN214
4580	Occupied rent-free	KZN214
12002	Owned and fully paid off	KZN214
468	Other	KZN214
778	Rented	KZN215
267	Owned but not yet paid off	KZN215
756	Occupied rent-free	KZN215
9602	Owned and fully paid off	KZN215
69	Other	KZN215
17855	Rented	KZN216
7560	Owned but not yet paid off	KZN216
9735	Occupied rent-free	KZN216
35021	Owned and fully paid off	KZN216
2005	Other	KZN216
679	Rented	KZN211
2184	Owned but not yet paid off	KZN211
4423	Occupied rent-free	KZN211
8051	Owned and fully paid off	KZN211
798	Other	KZN211
5461	Rented	KZN212
2710	Owned but not yet paid off	KZN212
3556	Occupied rent-free	KZN212
10386	Owned and fully paid off	KZN212
756	Other	KZN212
3573	Rented	KZN221
4008	Owned but not yet paid off	KZN221
7957	Occupied rent-free	KZN221
10995	Owned and fully paid off	KZN221
1591	Other	KZN221
7205	Rented	KZN222
3090	Owned but not yet paid off	KZN222
7394	Occupied rent-free	KZN222
11058	Owned and fully paid off	KZN222
1743	Other	KZN222
2006	Rented	KZN223
585	Owned but not yet paid off	KZN223
3348	Occupied rent-free	KZN223
3969	Owned and fully paid off	KZN223
544	Other	KZN223
1126	Rented	KZN224
821	Owned but not yet paid off	KZN224
3946	Occupied rent-free	KZN224
2148	Owned and fully paid off	KZN224
163	Other	KZN224
42433	Rented	KZN225
24096	Owned but not yet paid off	KZN225
20850	Occupied rent-free	KZN225
70934	Owned and fully paid off	KZN225
5680	Other	KZN225
2658	Rented	KZN226
644	Owned but not yet paid off	KZN226
7539	Occupied rent-free	KZN226
3326	Owned and fully paid off	KZN226
797	Other	KZN226
2858	Rented	KZN227
1499	Owned but not yet paid off	KZN227
5081	Occupied rent-free	KZN227
5824	Owned and fully paid off	KZN227
1178	Other	KZN227
11503	Rented	KZN232
6327	Owned but not yet paid off	KZN232
16147	Occupied rent-free	KZN232
22546	Owned and fully paid off	KZN232
1535	Other	KZN232
1389	Rented	KZN233
1479	Owned but not yet paid off	KZN233
8513	Occupied rent-free	KZN233
8393	Owned and fully paid off	KZN233
260	Other	KZN233
2902	Rented	KZN234
2149	Owned but not yet paid off	KZN234
5069	Occupied rent-free	KZN234
8631	Owned and fully paid off	KZN234
501	Other	KZN234
4597	Rented	KZN235
2364	Owned but not yet paid off	KZN235
10283	Occupied rent-free	KZN235
8916	Owned and fully paid off	KZN235
1416	Other	KZN235
370	Rented	KZN236
1714	Owned but not yet paid off	KZN236
6690	Occupied rent-free	KZN236
12658	Owned and fully paid off	KZN236
933	Other	KZN236
2741	Rented	KZN271
3027	Owned but not yet paid off	KZN271
12427	Occupied rent-free	KZN271
13602	Owned and fully paid off	KZN271
2059	Other	KZN271
5114	Rented	KZN272
2418	Owned but not yet paid off	KZN272
16995	Occupied rent-free	KZN272
12696	Owned and fully paid off	KZN272
1626	Other	KZN272
1923	Rented	KZN273
1117	Owned but not yet paid off	KZN273
3468	Occupied rent-free	KZN273
1335	Owned and fully paid off	KZN273
155	Other	KZN273
974	Rented	KZN274
1737	Owned but not yet paid off	KZN274
5660	Occupied rent-free	KZN274
3358	Owned and fully paid off	KZN274
858	Other	KZN274
4095	Rented	KZN275
4995	Owned but not yet paid off	KZN275
7999	Occupied rent-free	KZN275
16908	Owned and fully paid off	KZN275
909	Other	KZN275
29299	Rented	KZN282
13481	Owned but not yet paid off	KZN282
9565	Occupied rent-free	KZN282
32187	Owned and fully paid off	KZN282
2078	Other	KZN282
2250	Rented	KZN286
4668	Owned but not yet paid off	KZN286
6581	Occupied rent-free	KZN286
7602	Owned and fully paid off	KZN286
1361	Other	KZN286
2918	Rented	KZN281
1608	Owned but not yet paid off	KZN281
7395	Occupied rent-free	KZN281
13229	Owned and fully paid off	KZN281
434	Other	KZN281
487	Rented	KZN283
1158	Owned but not yet paid off	KZN283
5487	Occupied rent-free	KZN283
4592	Owned and fully paid off	KZN283
1102	Other	KZN283
5395	Rented	KZN284
5250	Owned but not yet paid off	KZN284
13628	Occupied rent-free	KZN284
17536	Owned and fully paid off	KZN284
3253	Other	KZN284
2107	Rented	KZN285
908	Owned but not yet paid off	KZN285
4186	Occupied rent-free	KZN285
2964	Owned and fully paid off	KZN285
268	Other	KZN285
1447	Rented	KZN431
2110	Owned but not yet paid off	KZN431
6332	Occupied rent-free	KZN431
12134	Owned and fully paid off	KZN431
1051	Other	KZN431
1257	Rented	KZN432
438	Owned but not yet paid off	KZN432
871	Occupied rent-free	KZN432
953	Owned and fully paid off	KZN432
155	Other	KZN432
6572	Rented	KZN433
1715	Owned but not yet paid off	KZN433
5201	Occupied rent-free	KZN433
5227	Owned and fully paid off	KZN433
425	Other	KZN433
3198	Rented	KZN434
2261	Owned but not yet paid off	KZN434
4162	Occupied rent-free	KZN434
12724	Owned and fully paid off	KZN434
1142	Other	KZN434
3679	Rented	KZN435
3235	Owned but not yet paid off	KZN435
8861	Occupied rent-free	KZN435
25982	Owned and fully paid off	KZN435
1152	Other	KZN435
5367	Rented	KZN241
1598	Owned but not yet paid off	KZN241
1707	Occupied rent-free	KZN241
7809	Owned and fully paid off	KZN241
370	Other	KZN241
1457	Rented	KZN242
2499	Owned but not yet paid off	KZN242
13831	Occupied rent-free	KZN242
13423	Owned and fully paid off	KZN242
402	Other	KZN242
1887	Rented	KZN244
3879	Owned but not yet paid off	KZN244
8515	Occupied rent-free	KZN244
22600	Owned and fully paid off	KZN244
843	Other	KZN244
4667	Rented	KZN245
2144	Owned but not yet paid off	KZN245
5369	Occupied rent-free	KZN245
13870	Owned and fully paid off	KZN245
1232	Other	KZN245
18893	Rented	KZN252
9182	Owned but not yet paid off	KZN252
18805	Occupied rent-free	KZN252
34646	Owned and fully paid off	KZN252
2745	Other	KZN252
1251	Rented	KZN253
795	Owned but not yet paid off	KZN253
2130	Occupied rent-free	KZN253
1817	Owned and fully paid off	KZN253
260	Other	KZN253
3713	Rented	KZN254
997	Owned but not yet paid off	KZN254
6927	Occupied rent-free	KZN254
8341	Owned and fully paid off	KZN254
460	Other	KZN254
7195	Rented	KZN263
4386	Owned but not yet paid off	KZN263
5546	Occupied rent-free	KZN263
24431	Owned and fully paid off	KZN263
1743	Other	KZN263
1802	Rented	KZN261
1526	Owned but not yet paid off	KZN261
3754	Occupied rent-free	KZN261
8572	Owned and fully paid off	KZN261
483	Other	KZN261
5306	Rented	KZN262
1833	Owned but not yet paid off	KZN262
6468	Occupied rent-free	KZN262
14492	Owned and fully paid off	KZN262
672	Other	KZN262
2765	Rented	KZN265
4656	Owned but not yet paid off	KZN265
9188	Occupied rent-free	KZN265
16920	Owned and fully paid off	KZN265
812	Other	KZN265
4181	Rented	KZN266
2989	Owned but not yet paid off	KZN266
10980	Occupied rent-free	KZN266
15866	Owned and fully paid off	KZN266
1181	Other	KZN266
852	Rented	KZN294
2636	Owned but not yet paid off	KZN294
2656	Occupied rent-free	KZN294
13528	Owned and fully paid off	KZN294
300	Other	KZN294
12740	Rented	KZN291
2069	Owned but not yet paid off	KZN291
4459	Occupied rent-free	KZN291
18153	Owned and fully paid off	KZN291
814	Other	KZN291
22720	Rented	KZN292
6244	Owned but not yet paid off	KZN292
15863	Occupied rent-free	KZN292
22921	Owned and fully paid off	KZN292
2536	Other	KZN292
1224	Rented	KZN293
3100	Owned but not yet paid off	KZN293
3974	Occupied rent-free	KZN293
20392	Owned and fully paid off	KZN293
510	Other	KZN293
284135	Rented	ETH
141819	Owned but not yet paid off	ETH
122241	Occupied rent-free	ETH
380024	Owned and fully paid off	ETH
28492	Other	ETH
2705	Rented	LIM331
4534	Owned but not yet paid off	LIM331
15917	Occupied rent-free	LIM331
39558	Owned and fully paid off	LIM331
833	Other	LIM331
5338	Rented	LIM332
2181	Owned but not yet paid off	LIM332
24236	Occupied rent-free	LIM332
24692	Owned and fully paid off	LIM332
1814	Other	LIM332
13258	Rented	LIM333
5446	Owned but not yet paid off	LIM333
29330	Occupied rent-free	LIM333
57006	Owned and fully paid off	LIM333
3886	Other	LIM333
6748	Rented	LIM334
2864	Owned but not yet paid off	LIM334
8693	Occupied rent-free	LIM334
22444	Owned and fully paid off	LIM334
367	Other	LIM334
2789	Rented	LIM335
682	Owned but not yet paid off	LIM335
15293	Occupied rent-free	LIM335
5363	Owned and fully paid off	LIM335
342	Other	LIM335
924	Rented	LIM342
1465	Owned but not yet paid off	LIM342
7419	Occupied rent-free	LIM342
13767	Owned and fully paid off	LIM342
177	Other	LIM342
8251	Rented	LIM343
6630	Owned but not yet paid off	LIM343
38479	Occupied rent-free	LIM343
102522	Owned and fully paid off	LIM343
712	Other	LIM343
8670	Rented	LIM341
679	Owned but not yet paid off	LIM341
4875	Occupied rent-free	LIM341
5592	Owned and fully paid off	LIM341
226	Other	LIM341
10367	Rented	LIM344
5750	Owned but not yet paid off	LIM344
38520	Occupied rent-free	LIM344
78113	Owned and fully paid off	LIM344
2140	Other	LIM344
3795	Rented	LIM351
1815	Owned but not yet paid off	LIM351
12351	Occupied rent-free	LIM351
22402	Owned and fully paid off	LIM351
830	Other	LIM351
754	Rented	LIM352
648	Owned but not yet paid off	LIM352
17928	Occupied rent-free	LIM352
13874	Owned and fully paid off	LIM352
713	Other	LIM352
2966	Rented	LIM353
1264	Owned but not yet paid off	LIM353
7049	Occupied rent-free	LIM353
18363	Owned and fully paid off	LIM353
402	Other	LIM353
39735	Rented	LIM354
14667	Owned but not yet paid off	LIM354
31425	Occupied rent-free	LIM354
85812	Owned and fully paid off	LIM354
6363	Other	LIM354
3772	Rented	LIM355
2790	Owned but not yet paid off	LIM355
14876	Occupied rent-free	LIM355
37547	Owned and fully paid off	LIM355
698	Other	LIM355
11527	Rented	LIM361
2158	Owned but not yet paid off	LIM361
6425	Occupied rent-free	LIM361
3963	Owned and fully paid off	LIM361
1008	Other	LIM361
8281	Rented	LIM362
2007	Owned but not yet paid off	LIM362
8371	Occupied rent-free	LIM362
10151	Owned and fully paid off	LIM362
1070	Other	LIM362
2816	Rented	LIM364
406	Owned but not yet paid off	LIM364
2286	Occupied rent-free	LIM364
4026	Owned and fully paid off	LIM364
383	Other	LIM364
3511	Rented	LIM365
833	Owned but not yet paid off	LIM365
3871	Occupied rent-free	LIM365
8795	Owned and fully paid off	LIM365
516	Other	LIM365
5032	Rented	LIM366
1099	Owned but not yet paid off	LIM366
3997	Occupied rent-free	LIM366
6792	Owned and fully paid off	LIM366
1147	Other	LIM366
7944	Rented	LIM367
3417	Owned but not yet paid off	LIM367
24414	Occupied rent-free	LIM367
42080	Owned and fully paid off	LIM367
1541	Other	LIM367
4288	Rented	LIM471
604	Owned but not yet paid off	LIM471
12769	Occupied rent-free	LIM471
13553	Owned and fully paid off	LIM471
1069	Other	LIM471
5828	Rented	LIM472
1658	Owned but not yet paid off	LIM472
16506	Occupied rent-free	LIM472
33324	Owned and fully paid off	LIM472
2934	Other	LIM472
3035	Rented	LIM473
2257	Owned but not yet paid off	LIM473
12636	Occupied rent-free	LIM473
44302	Owned and fully paid off	LIM473
2987	Other	LIM473
1979	Rented	LIM474
913	Owned but not yet paid off	LIM474
7657	Occupied rent-free	LIM474
12073	Owned and fully paid off	LIM474
229	Other	LIM474
13697	Rented	LIM475
3768	Owned but not yet paid off	LIM475
22575	Occupied rent-free	LIM475
41108	Owned and fully paid off	LIM475
2051	Other	LIM475
5284	Rented	MP301
2601	Owned but not yet paid off	MP301
14069	Occupied rent-free	MP301
24241	Owned and fully paid off	MP301
1511	Other	MP301
13409	Rented	MP302
3504	Owned but not yet paid off	MP302
8033	Occupied rent-free	MP302
14276	Owned and fully paid off	MP302
1708	Other	MP302
6804	Rented	MP303
4742	Owned but not yet paid off	MP303
9201	Occupied rent-free	MP303
14772	Owned and fully paid off	MP303
1914	Other	MP303
5972	Rented	MP304
1495	Owned but not yet paid off	MP304
5446	Occupied rent-free	MP304
6438	Owned and fully paid off	MP304
486	Other	MP304
8915	Rented	MP305
3326	Owned but not yet paid off	MP305
5846	Occupied rent-free	MP305
12200	Owned and fully paid off	MP305
783	Other	MP305
2569	Rented	MP306
688	Owned but not yet paid off	MP306
2678	Occupied rent-free	MP306
6518	Owned and fully paid off	MP306
183	Other	MP306
30029	Rented	MP307
11389	Owned but not yet paid off	MP307
8149	Occupied rent-free	MP307
32204	Owned and fully paid off	MP307
2104	Other	MP307
4708	Rented	MP311
1653	Owned but not yet paid off	MP311
4059	Occupied rent-free	MP311
9383	Owned and fully paid off	MP311
744	Other	MP311
39463	Rented	MP312
15798	Owned but not yet paid off	MP312
22874	Occupied rent-free	MP312
38519	Owned and fully paid off	MP312
3221	Other	MP312
27038	Rented	MP313
8010	Owned but not yet paid off	MP313
7254	Occupied rent-free	MP313
20877	Owned and fully paid off	MP313
1792	Other	MP313
3881	Rented	MP314
1148	Owned but not yet paid off	MP314
1894	Occupied rent-free	MP314
6090	Owned and fully paid off	MP314
709	Other	MP314
4400	Rented	MP315
2017	Owned but not yet paid off	MP315
10686	Occupied rent-free	MP315
55574	Owned and fully paid off	MP315
2957	Other	MP315
2702	Rented	MP316
1769	Owned but not yet paid off	MP316
6478	Occupied rent-free	MP316
49437	Owned and fully paid off	MP316
1776	Other	MP316
15137	Rented	MP321
1715	Owned but not yet paid off	MP321
4511	Occupied rent-free	MP321
10756	Owned and fully paid off	MP321
1233	Other	MP321
28046	Rented	MP322
12318	Owned but not yet paid off	MP322
23241	Occupied rent-free	MP322
95150	Owned and fully paid off	MP322
3018	Other	MP322
5070	Rented	MP323
1296	Owned but not yet paid off	MP323
3898	Occupied rent-free	MP323
8899	Owned and fully paid off	MP323
400	Other	MP323
9936	Rented	MP324
4682	Owned but not yet paid off	MP324
18500	Occupied rent-free	MP324
58432	Owned and fully paid off	MP324
4651	Other	MP324
4909	Rented	MP325
2812	Owned but not yet paid off	MP325
29185	Occupied rent-free	MP325
95019	Owned and fully paid off	MP325
2273	Other	MP325
1256	Rented	NW371
545	Owned but not yet paid off	NW371
12338	Occupied rent-free	NW371
37489	Owned and fully paid off	NW371
435	Other	NW371
45951	Rented	NW372
7511	Owned but not yet paid off	NW372
24236	Occupied rent-free	NW372
79469	Owned and fully paid off	NW372
3557	Other	NW372
90042	Rented	NW373
18423	Owned but not yet paid off	NW373
40063	Occupied rent-free	NW373
44015	Owned and fully paid off	NW373
6500	Other	NW373
2675	Rented	NW374
1317	Owned but not yet paid off	NW374
5245	Occupied rent-free	NW374
4499	Owned and fully paid off	NW374
936	Other	NW374
9937	Rented	NW375
2587	Owned but not yet paid off	NW375
15484	Occupied rent-free	NW375
44228	Owned and fully paid off	NW375
2956	Other	NW375
1799	Rented	NW381
800	Owned but not yet paid off	NW381
9623	Occupied rent-free	NW381
13752	Owned and fully paid off	NW381
914	Other	NW381
4069	Rented	NW382
1051	Owned but not yet paid off	NW382
8630	Occupied rent-free	NW382
16377	Owned and fully paid off	NW382
507	Other	NW382
16081	Rented	NW383
6365	Owned but not yet paid off	NW383
21007	Occupied rent-free	NW383
37063	Owned and fully paid off	NW383
3723	Other	NW383
6744	Rented	NW384
2108	Owned but not yet paid off	NW384
13926	Occupied rent-free	NW384
20550	Owned and fully paid off	NW384
1173	Other	NW384
3872	Rented	NW385
2397	Owned but not yet paid off	NW385
6892	Occupied rent-free	NW385
26171	Owned and fully paid off	NW385
1408	Other	NW385
5155	Rented	NW392
1841	Owned but not yet paid off	NW392
4345	Occupied rent-free	NW392
5920	Owned and fully paid off	NW392
1311	Other	NW392
1879	Rented	NW393
1225	Owned but not yet paid off	NW393
3852	Occupied rent-free	NW393
6487	Owned and fully paid off	NW393
1182	Other	NW393
2964	Rented	NW394
987	Owned but not yet paid off	NW394
7936	Occupied rent-free	NW394
33030	Owned and fully paid off	NW394
3695	Other	NW394
2551	Rented	NW396
535	Owned but not yet paid off	NW396
4125	Occupied rent-free	NW396
7518	Owned and fully paid off	NW396
200	Other	NW396
2790	Rented	NW397
1310	Owned but not yet paid off	NW397
9370	Occupied rent-free	NW397
14493	Owned and fully paid off	NW397
567	Other	NW397
2058	Rented	NW401
827	Owned but not yet paid off	NW401
4055	Occupied rent-free	NW401
7294	Owned and fully paid off	NW401
329	Other	NW401
17512	Rented	NW402
5912	Owned but not yet paid off	NW402
5413	Occupied rent-free	NW402
21343	Owned and fully paid off	NW402
2358	Other	NW402
35471	Rented	NW403
13018	Owned but not yet paid off	NW403
11345	Occupied rent-free	NW403
56706	Owned and fully paid off	NW403
3903	Other	NW403
2639	Rented	NW404
1382	Owned but not yet paid off	NW404
5739	Occupied rent-free	NW404
9974	Owned and fully paid off	NW404
771	Other	NW404
837	Rented	NC061
182	Owned but not yet paid off	NC061
830	Occupied rent-free	NC061
1591	Owned and fully paid off	NC061
103	Other	NC061
1921	Rented	NC062
593	Owned but not yet paid off	NC062
1266	Occupied rent-free	NC062
8972	Owned and fully paid off	NC062
442	Other	NC062
347	Rented	NC064
69	Owned but not yet paid off	NC064
682	Occupied rent-free	NC064
1940	Owned and fully paid off	NC064
106	Other	NC064
1417	Rented	NC065
583	Owned but not yet paid off	NC065
1350	Occupied rent-free	NC065
2838	Owned and fully paid off	NC065
153	Other	NC065
776	Rented	NC066
194	Owned but not yet paid off	NC066
1211	Occupied rent-free	NC066
1622	Owned and fully paid off	NC066
40	Other	NC066
1433	Rented	NC067
52	Owned but not yet paid off	NC067
534	Occupied rent-free	NC067
1715	Owned and fully paid off	NC067
61	Other	NC067
773	Rented	NC071
161	Owned but not yet paid off	NC071
1229	Occupied rent-free	NC071
2648	Owned and fully paid off	NC071
319	Other	NC071
1558	Rented	NC072
448	Owned but not yet paid off	NC072
1948	Occupied rent-free	NC072
3681	Owned and fully paid off	NC072
205	Other	NC072
2166	Rented	NC073
1445	Owned but not yet paid off	NC073
1631	Occupied rent-free	NC073
4859	Owned and fully paid off	NC073
356	Other	NC073
684	Rented	NC074
163	Owned but not yet paid off	NC074
773	Occupied rent-free	NC074
1503	Owned and fully paid off	NC074
99	Other	NC074
491	Rented	NC075
111	Owned but not yet paid off	NC075
682	Occupied rent-free	NC075
1453	Owned and fully paid off	NC075
258	Other	NC075
673	Rented	NC076
495	Owned but not yet paid off	NC076
1236	Occupied rent-free	NC076
1632	Owned and fully paid off	NC076
104	Other	NC076
1088	Rented	NC077
171	Owned but not yet paid off	NC077
1484	Occupied rent-free	NC077
2996	Owned and fully paid off	NC077
92	Other	NC077
1448	Rented	NC078
330	Owned but not yet paid off	NC078
3638	Occupied rent-free	NC078
3465	Owned and fully paid off	NC078
698	Other	NC078
243	Rented	NC081
56	Owned but not yet paid off	NC081
475	Occupied rent-free	NC081
977	Owned and fully paid off	NC081
32	Other	NC081
5420	Rented	NC082
767	Owned but not yet paid off	NC082
3476	Occupied rent-free	NC082
6429	Owned and fully paid off	NC082
610	Other	NC082
4340	Rented	NC083
3080	Owned but not yet paid off	NC083
5407	Occupied rent-free	NC083
9485	Owned and fully paid off	NC083
933	Other	NC083
639	Rented	NC084
579	Owned but not yet paid off	NC084
660	Occupied rent-free	NC084
2204	Owned and fully paid off	NC084
63	Other	NC084
2391	Rented	NC085
423	Owned but not yet paid off	NC085
2599	Occupied rent-free	NC085
3979	Owned and fully paid off	NC085
447	Other	NC085
1780	Rented	NC086
352	Owned but not yet paid off	NC086
1465	Occupied rent-free	NC086
1593	Owned and fully paid off	NC086
192	Other	NC086
10858	Rented	NC091
10130	Owned but not yet paid off	NC091
9272	Occupied rent-free	NC091
26790	Owned and fully paid off	NC091
3247	Other	NC091
1225	Rented	NC092
261	Owned but not yet paid off	NC092
4459	Occupied rent-free	NC092
5373	Owned and fully paid off	NC092
649	Other	NC092
767	Rented	NC093
237	Owned but not yet paid off	NC093
1302	Occupied rent-free	NC093
3350	Owned and fully paid off	NC093
464	Other	NC093
2438	Rented	NC094
466	Owned but not yet paid off	NC094
4087	Occupied rent-free	NC094
9834	Owned and fully paid off	NC094
719	Other	NC094
1681	Rented	NC451
815	Owned but not yet paid off	NC451
6416	Occupied rent-free	NC451
11640	Owned and fully paid off	NC451
3155	Other	NC451
4140	Rented	NC452
1172	Owned but not yet paid off	NC452
3398	Occupied rent-free	NC452
16448	Owned and fully paid off	NC452
1658	Other	NC452
4997	Rented	NC453
1321	Owned but not yet paid off	NC453
1458	Occupied rent-free	NC453
2411	Owned and fully paid off	NC453
622	Other	NC453
4744	Rented	WC011
1237	Owned but not yet paid off	WC011
4812	Occupied rent-free	WC011
7360	Owned and fully paid off	WC011
683	Other	WC011
2398	Rented	WC012
1252	Owned but not yet paid off	WC012
3433	Occupied rent-free	WC012
5357	Owned and fully paid off	WC012
1074	Other	WC012
4109	Rented	WC013
1173	Owned but not yet paid off	WC013
3492	Occupied rent-free	WC013
6386	Owned and fully paid off	WC013
1114	Other	WC013
8721	Rented	WC014
4473	Owned but not yet paid off	WC014
1503	Occupied rent-free	WC014
13431	Owned and fully paid off	WC014
707	Other	WC014
8211	Rented	WC015
2529	Owned but not yet paid off	WC015
5075	Occupied rent-free	WC015
12793	Owned and fully paid off	WC015
716	Other	WC015
6555	Rented	WC022
2457	Owned but not yet paid off	WC022
8960	Occupied rent-free	WC022
7004	Owned and fully paid off	WC022
2443	Other	WC022
20473	Rented	WC023
8535	Owned but not yet paid off	WC023
8802	Occupied rent-free	WC023
19168	Owned and fully paid off	WC023
2796	Other	WC023
13036	Rented	WC024
4322	Owned but not yet paid off	WC024
12584	Occupied rent-free	WC024
11123	Owned and fully paid off	WC024
2355	Other	WC024
13524	Rented	WC025
4666	Owned but not yet paid off	WC025
10771	Occupied rent-free	WC025
12589	Owned and fully paid off	WC025
977	Other	WC025
7279	Rented	WC026
1970	Owned but not yet paid off	WC026
4959	Occupied rent-free	WC026
9782	Owned and fully paid off	WC026
1134	Other	WC026
2104	Rented	WC034
766	Owned but not yet paid off	WC034
1965	Occupied rent-free	WC034
5005	Owned and fully paid off	WC034
299	Other	WC034
5266	Rented	WC031
1951	Owned but not yet paid off	WC031
8458	Occupied rent-free	WC031
10205	Owned and fully paid off	WC031
3003	Other	WC031
8712	Rented	WC032
2430	Owned but not yet paid off	WC032
3484	Occupied rent-free	WC032
12611	Owned and fully paid off	WC032
773	Other	WC032
2326	Rented	WC033
903	Owned but not yet paid off	WC033
1169	Occupied rent-free	WC033
5518	Owned and fully paid off	WC033
246	Other	WC033
1189	Rented	WC041
751	Owned but not yet paid off	WC041
1169	Occupied rent-free	WC041
2656	Owned and fully paid off	WC041
447	Other	WC041
3363	Rented	WC042
1011	Owned but not yet paid off	WC042
2384	Occupied rent-free	WC042
8559	Owned and fully paid off	WC042
555	Other	WC042
6583	Rented	WC043
2940	Owned but not yet paid off	WC043
2802	Occupied rent-free	WC043
14060	Owned and fully paid off	WC043
1641	Other	WC043
14810	Rented	WC044
5441	Owned but not yet paid off	WC044
10654	Occupied rent-free	WC044
20800	Owned and fully paid off	WC044
1847	Other	WC044
4865	Rented	WC045
2594	Owned but not yet paid off	WC045
2991	Occupied rent-free	WC045
10934	Owned and fully paid off	WC045
527	Other	WC045
4998	Rented	WC047
1686	Owned but not yet paid off	WC047
3162	Occupied rent-free	WC047
5962	Owned and fully paid off	WC047
838	Other	WC047
5088	Rented	WC048
1537	Owned but not yet paid off	WC048
3158	Occupied rent-free	WC048
11324	Owned and fully paid off	WC048
786	Other	WC048
671	Rented	WC051
170	Owned but not yet paid off	WC051
831	Occupied rent-free	WC051
701	Owned and fully paid off	WC051
34	Other	WC051
793	Rented	WC052
357	Owned but not yet paid off	WC052
706	Occupied rent-free	WC052
1677	Owned and fully paid off	WC052
46	Other	WC052
2757	Rented	WC053
1828	Owned but not yet paid off	WC053
2131	Occupied rent-free	WC053
6117	Owned and fully paid off	WC053
257	Other	WC053
319343	Rented	CPT
223435	Owned but not yet paid off	CPT
139226	Occupied rent-free	CPT
355246	Owned and fully paid off	CPT
31324	Other	CPT
\.


--
-- Data for Name: tenurestatus_province; Type: TABLE DATA; Schema: public; Owner: census
--

COPY tenurestatus_province (total, "tenure status", province_code) FROM stdin;
252220	Rented	EC
151106	Owned but not yet paid off	EC
328732	Occupied rent-free	EC
855038	Owned and fully paid off	EC
100289	Other	EC
164099	Rented	FS
74348	Owned but not yet paid off	FS
136911	Occupied rent-free	FS
425172	Owned and fully paid off	FS
22786	Other	FS
1448558	Rented	GT
641384	Owned but not yet paid off	GT
625311	Occupied rent-free	GT
1089742	Owned and fully paid off	GT
104026	Other	GT
565169	Rented	KZN
307917	Owned but not yet paid off	KZN
492267	Occupied rent-free	KZN
1090744	Owned and fully paid off	KZN
83333	Other	KZN
178010	Rented	LIM
70537	Owned but not yet paid off	LIM
387898	Occupied rent-free	LIM
747220	Owned and fully paid off	LIM
34436	Other	LIM
218275	Rented	MP
80963	Owned but not yet paid off	MP
186002	Occupied rent-free	MP
558785	Owned and fully paid off	MP
31463	Other	MP
255445	Rented	NW
70143	Owned but not yet paid off	NW
213624	Occupied rent-free	NW
486377	Owned and fully paid off	NW
36426	Other	NW
56530	Rented	NC
24657	Owned but not yet paid off	NC
62966	Occupied rent-free	NC
141426	Owned and fully paid off	NC
15825	Other	NC
471917	Rented	WC
280413	Owned but not yet paid off	WC
248679	Occupied rent-free	WC
576368	Owned and fully paid off	WC
56623	Other	WC
\.


--
-- Data for Name: tenurestatus_ward; Type: TABLE DATA; Schema: public; Owner: census
--

COPY tenurestatus_ward (total, "tenure status", ward_code) FROM stdin;
610	Rented	21001001
140	Owned but not yet paid off	21001001
592	Occupied rent-free	21001001
1049	Owned and fully paid off	21001001
113	Other	21001001
648	Rented	21001002
323	Owned but not yet paid off	21001002
145	Occupied rent-free	21001002
926	Owned and fully paid off	21001002
39	Other	21001002
201	Rented	21001003
20	Owned but not yet paid off	21001003
130	Occupied rent-free	21001003
738	Owned and fully paid off	21001003
18	Other	21001003
536	Rented	21001004
234	Owned but not yet paid off	21001004
128	Occupied rent-free	21001004
1226	Owned and fully paid off	21001004
52	Other	21001004
375	Rented	21001005
18	Owned but not yet paid off	21001005
88	Occupied rent-free	21001005
778	Owned and fully paid off	21001005
12	Other	21001005
390	Rented	21001006
15	Owned but not yet paid off	21001006
256	Occupied rent-free	21001006
1010	Owned and fully paid off	21001006
44	Other	21001006
399	Rented	21001007
93	Owned but not yet paid off	21001007
529	Occupied rent-free	21001007
424	Owned and fully paid off	21001007
100	Other	21001007
271	Rented	21002001
31	Owned but not yet paid off	21002001
379	Occupied rent-free	21002001
412	Owned and fully paid off	21002001
82	Other	21002001
453	Rented	21002002
137	Owned but not yet paid off	21002002
295	Occupied rent-free	21002002
904	Owned and fully paid off	21002002
56	Other	21002002
617	Rented	21002003
68	Owned but not yet paid off	21002003
213	Occupied rent-free	21002003
1073	Owned and fully paid off	21002003
48	Other	21002003
466	Rented	21002004
150	Owned but not yet paid off	21002004
254	Occupied rent-free	21002004
656	Owned and fully paid off	21002004
59	Other	21002004
369	Rented	21002005
139	Owned but not yet paid off	21002005
94	Occupied rent-free	21002005
873	Owned and fully paid off	21002005
13	Other	21002005
374	Rented	21002006
87	Owned but not yet paid off	21002006
524	Occupied rent-free	21002006
571	Owned and fully paid off	21002006
92	Other	21002006
207	Rented	21003001
48	Owned but not yet paid off	21003001
156	Occupied rent-free	21003001
231	Owned and fully paid off	21003001
32	Other	21003001
247	Rented	21003002
65	Owned but not yet paid off	21003002
181	Occupied rent-free	21003002
488	Owned and fully paid off	21003002
106	Other	21003002
40	Rented	21003003
9	Owned but not yet paid off	21003003
74	Occupied rent-free	21003003
357	Owned and fully paid off	21003003
12	Other	21003003
79	Rented	21003004
19	Owned but not yet paid off	21003004
233	Occupied rent-free	21003004
319	Owned and fully paid off	21003004
12	Other	21003004
128	Rented	21004001
30	Owned but not yet paid off	21004001
281	Occupied rent-free	21004001
288	Owned and fully paid off	21004001
53	Other	21004001
387	Rented	21004002
114	Owned but not yet paid off	21004002
133	Occupied rent-free	21004002
1272	Owned and fully paid off	21004002
36	Other	21004002
313	Rented	21004003
198	Owned but not yet paid off	21004003
294	Occupied rent-free	21004003
705	Owned and fully paid off	21004003
192	Other	21004003
1087	Rented	21004004
380	Owned but not yet paid off	21004004
93	Occupied rent-free	21004004
639	Owned and fully paid off	21004004
45	Other	21004004
357	Rented	21004005
154	Owned but not yet paid off	21004005
497	Occupied rent-free	21004005
947	Owned and fully paid off	21004005
292	Other	21004005
193	Rented	21004006
123	Owned but not yet paid off	21004006
278	Occupied rent-free	21004006
627	Owned and fully paid off	21004006
14	Other	21004006
288	Rented	21004007
14	Owned but not yet paid off	21004007
344	Occupied rent-free	21004007
139	Owned and fully paid off	21004007
103	Other	21004007
722	Rented	21004008
272	Owned but not yet paid off	21004008
64	Occupied rent-free	21004008
311	Owned and fully paid off	21004008
14	Other	21004008
295	Rented	21004009
59	Owned but not yet paid off	21004009
119	Occupied rent-free	21004009
831	Owned and fully paid off	21004009
103	Other	21004009
958	Rented	21004010
73	Owned but not yet paid off	21004010
245	Occupied rent-free	21004010
778	Owned and fully paid off	21004010
65	Other	21004010
336	Rented	21004011
26	Owned but not yet paid off	21004011
551	Occupied rent-free	21004011
936	Owned and fully paid off	21004011
34	Other	21004011
44	Rented	21004012
7	Owned but not yet paid off	21004012
35	Occupied rent-free	21004012
9	Owned and fully paid off	21004012
10	Other	21004012
273	Rented	21004013
118	Owned but not yet paid off	21004013
619	Occupied rent-free	21004013
517	Owned and fully paid off	21004013
179	Other	21004013
304	Rented	21004014
133	Owned but not yet paid off	21004014
577	Occupied rent-free	21004014
630	Owned and fully paid off	21004014
102	Other	21004014
152	Rented	21005001
5	Owned but not yet paid off	21005001
1214	Occupied rent-free	21005001
247	Owned and fully paid off	21005001
9	Other	21005001
310	Rented	21005002
165	Owned but not yet paid off	21005002
599	Occupied rent-free	21005002
926	Owned and fully paid off	21005002
68	Other	21005002
172	Rented	21005003
117	Owned but not yet paid off	21005003
913	Occupied rent-free	21005003
930	Owned and fully paid off	21005003
34	Other	21005003
177	Rented	21005004
239	Owned but not yet paid off	21005004
855	Occupied rent-free	21005004
583	Owned and fully paid off	21005004
24	Other	21005004
315	Rented	21005005
111	Owned but not yet paid off	21005005
1015	Occupied rent-free	21005005
585	Owned and fully paid off	21005005
108	Other	21005005
317	Rented	21005006
128	Owned but not yet paid off	21005006
1029	Occupied rent-free	21005006
875	Owned and fully paid off	21005006
128	Other	21005006
295	Rented	21005007
50	Owned but not yet paid off	21005007
514	Occupied rent-free	21005007
749	Owned and fully paid off	21005007
23	Other	21005007
324	Rented	21005008
93	Owned but not yet paid off	21005008
518	Occupied rent-free	21005008
401	Owned and fully paid off	21005008
24	Other	21005008
552	Rented	21005009
185	Owned but not yet paid off	21005009
800	Occupied rent-free	21005009
558	Owned and fully paid off	21005009
14	Other	21005009
576	Rented	21005010
347	Owned but not yet paid off	21005010
50	Occupied rent-free	21005010
885	Owned and fully paid off	21005010
22	Other	21005010
352	Rented	21006001
51	Owned but not yet paid off	21006001
906	Occupied rent-free	21006001
490	Owned and fully paid off	21006001
12	Other	21006001
373	Rented	21006002
166	Owned but not yet paid off	21006002
710	Occupied rent-free	21006002
708	Owned and fully paid off	21006002
27	Other	21006002
248	Rented	21006003
133	Owned but not yet paid off	21006003
679	Occupied rent-free	21006003
974	Owned and fully paid off	21006003
64	Other	21006003
140	Rented	21006004
307	Owned but not yet paid off	21006004
565	Occupied rent-free	21006004
455	Owned and fully paid off	21006004
25	Other	21006004
221	Rented	21006005
45	Owned but not yet paid off	21006005
440	Occupied rent-free	21006005
768	Owned and fully paid off	21006005
33	Other	21006005
139	Rented	21006006
16	Owned but not yet paid off	21006006
464	Occupied rent-free	21006006
888	Owned and fully paid off	21006006
36	Other	21006006
355	Rented	21006007
85	Owned but not yet paid off	21006007
815	Occupied rent-free	21006007
367	Owned and fully paid off	21006007
65	Other	21006007
357	Rented	21006008
144	Owned but not yet paid off	21006008
1062	Occupied rent-free	21006008
941	Owned and fully paid off	21006008
118	Other	21006008
115	Rented	21007001
31	Owned but not yet paid off	21007001
102	Occupied rent-free	21007001
250	Owned and fully paid off	21007001
14	Other	21007001
218	Rented	21007002
125	Owned but not yet paid off	21007002
348	Occupied rent-free	21007002
667	Owned and fully paid off	21007002
26	Other	21007002
411	Rented	21007003
41	Owned but not yet paid off	21007003
250	Occupied rent-free	21007003
1127	Owned and fully paid off	21007003
82	Other	21007003
83	Rented	21007004
89	Owned but not yet paid off	21007004
213	Occupied rent-free	21007004
372	Owned and fully paid off	21007004
47	Other	21007004
123	Rented	21008001
25	Owned but not yet paid off	21008001
263	Occupied rent-free	21008001
134	Owned and fully paid off	21008001
27	Other	21008001
225	Rented	21008002
48	Owned but not yet paid off	21008002
96	Occupied rent-free	21008002
266	Owned and fully paid off	21008002
148	Other	21008002
103	Rented	21008003
46	Owned but not yet paid off	21008003
16	Occupied rent-free	21008003
229	Owned and fully paid off	21008003
5	Other	21008003
472	Rented	21008004
276	Owned but not yet paid off	21008004
247	Occupied rent-free	21008004
2344	Owned and fully paid off	21008004
181	Other	21008004
79	Rented	21008005
29	Owned but not yet paid off	21008005
117	Occupied rent-free	21008005
548	Owned and fully paid off	21008005
3	Other	21008005
366	Rented	21008006
13	Owned but not yet paid off	21008006
1151	Occupied rent-free	21008006
600	Owned and fully paid off	21008006
4	Other	21008006
351	Rented	21008007
46	Owned but not yet paid off	21008007
732	Occupied rent-free	21008007
1213	Owned and fully paid off	21008007
58	Other	21008007
887	Rented	21008008
438	Owned but not yet paid off	21008008
263	Occupied rent-free	21008008
1662	Owned and fully paid off	21008008
71	Other	21008008
378	Rented	21008009
40	Owned but not yet paid off	21008009
275	Occupied rent-free	21008009
1503	Owned and fully paid off	21008009
408	Other	21008009
198	Rented	21008010
16	Owned but not yet paid off	21008010
469	Occupied rent-free	21008010
787	Owned and fully paid off	21008010
59	Other	21008010
548	Rented	21008011
164	Owned but not yet paid off	21008011
47	Occupied rent-free	21008011
419	Owned and fully paid off	21008011
23	Other	21008011
778	Rented	21008012
205	Owned but not yet paid off	21008012
260	Occupied rent-free	21008012
750	Owned and fully paid off	21008012
55	Other	21008012
464	Rented	21008013
20	Owned but not yet paid off	21008013
480	Occupied rent-free	21008013
415	Owned and fully paid off	21008013
42	Other	21008013
725	Rented	21008014
124	Owned but not yet paid off	21008014
405	Occupied rent-free	21008014
1162	Owned and fully paid off	21008014
97	Other	21008014
1229	Rented	21008015
602	Owned but not yet paid off	21008015
1264	Occupied rent-free	21008015
1100	Owned and fully paid off	21008015
33	Other	21008015
242	Rented	21009001
97	Owned but not yet paid off	21009001
1148	Occupied rent-free	21009001
1150	Owned and fully paid off	21009001
120	Other	21009001
436	Rented	21009002
215	Owned but not yet paid off	21009002
517	Occupied rent-free	21009002
399	Owned and fully paid off	21009002
106	Other	21009002
287	Rented	21009003
19	Owned but not yet paid off	21009003
381	Occupied rent-free	21009003
471	Owned and fully paid off	21009003
193	Other	21009003
499	Rented	21009004
157	Owned but not yet paid off	21009004
178	Occupied rent-free	21009004
855	Owned and fully paid off	21009004
73	Other	21009004
265	Rented	21009005
171	Owned but not yet paid off	21009005
766	Occupied rent-free	21009005
553	Owned and fully paid off	21009005
102	Other	21009005
252	Rented	21009006
52	Owned but not yet paid off	21009006
275	Occupied rent-free	21009006
1019	Owned and fully paid off	21009006
34	Other	21009006
775	Rented	21201001
52	Owned but not yet paid off	21201001
194	Occupied rent-free	21201001
281	Owned and fully paid off	21201001
83	Other	21201001
182	Rented	21201002
8	Owned but not yet paid off	21201002
75	Occupied rent-free	21201002
1461	Owned and fully paid off	21201002
253	Other	21201002
86	Rented	21201003
23	Owned but not yet paid off	21201003
48	Occupied rent-free	21201003
821	Owned and fully paid off	21201003
738	Other	21201003
61	Rented	21201004
86	Owned but not yet paid off	21201004
261	Occupied rent-free	21201004
1232	Owned and fully paid off	21201004
7	Other	21201004
64	Rented	21201005
64	Owned but not yet paid off	21201005
176	Occupied rent-free	21201005
1915	Owned and fully paid off	21201005
103	Other	21201005
23	Rented	21201006
188	Owned but not yet paid off	21201006
112	Occupied rent-free	21201006
1452	Owned and fully paid off	21201006
97	Other	21201006
10	Rented	21201007
94	Owned but not yet paid off	21201007
22	Occupied rent-free	21201007
1387	Owned and fully paid off	21201007
48	Other	21201007
22	Rented	21201008
35	Owned but not yet paid off	21201008
41	Occupied rent-free	21201008
1533	Owned and fully paid off	21201008
9	Other	21201008
1659	Rented	21201009
89	Owned but not yet paid off	21201009
417	Occupied rent-free	21201009
1467	Owned and fully paid off	21201009
68	Other	21201009
34	Rented	21201010
155	Owned but not yet paid off	21201010
278	Occupied rent-free	21201010
1281	Owned and fully paid off	21201010
103	Other	21201010
15	Rented	21201011
41	Owned but not yet paid off	21201011
236	Occupied rent-free	21201011
1186	Owned and fully paid off	21201011
547	Other	21201011
11	Rented	21201012
18	Owned but not yet paid off	21201012
29	Occupied rent-free	21201012
1759	Owned and fully paid off	21201012
8	Other	21201012
674	Rented	21201013
61	Owned but not yet paid off	21201013
311	Occupied rent-free	21201013
821	Owned and fully paid off	21201013
15	Other	21201013
32	Rented	21201014
84	Owned but not yet paid off	21201014
123	Occupied rent-free	21201014
1643	Owned and fully paid off	21201014
86	Other	21201014
50	Rented	21201015
92	Owned but not yet paid off	21201015
208	Occupied rent-free	21201015
1658	Owned and fully paid off	21201015
266	Other	21201015
70	Rented	21201016
293	Owned but not yet paid off	21201016
263	Occupied rent-free	21201016
1385	Owned and fully paid off	21201016
79	Other	21201016
78	Rented	21201017
132	Owned but not yet paid off	21201017
60	Occupied rent-free	21201017
1428	Owned and fully paid off	21201017
66	Other	21201017
47	Rented	21201018
211	Owned but not yet paid off	21201018
21	Occupied rent-free	21201018
869	Owned and fully paid off	21201018
32	Other	21201018
166	Rented	21201019
80	Owned but not yet paid off	21201019
43	Occupied rent-free	21201019
1931	Owned and fully paid off	21201019
28	Other	21201019
55	Rented	21201020
65	Owned but not yet paid off	21201020
909	Occupied rent-free	21201020
560	Owned and fully paid off	21201020
131	Other	21201020
18	Rented	21201021
24	Owned but not yet paid off	21201021
446	Occupied rent-free	21201021
1401	Owned and fully paid off	21201021
36	Other	21201021
63	Rented	21201022
92	Owned but not yet paid off	21201022
117	Occupied rent-free	21201022
1785	Owned and fully paid off	21201022
16	Other	21201022
25	Rented	21201023
174	Owned but not yet paid off	21201023
127	Occupied rent-free	21201023
1936	Owned and fully paid off	21201023
21	Other	21201023
30	Rented	21201024
125	Owned but not yet paid off	21201024
166	Occupied rent-free	21201024
1432	Owned and fully paid off	21201024
46	Other	21201024
684	Rented	21201025
9	Owned but not yet paid off	21201025
92	Occupied rent-free	21201025
1184	Owned and fully paid off	21201025
182	Other	21201025
91	Rented	21201026
173	Owned but not yet paid off	21201026
316	Occupied rent-free	21201026
1240	Owned and fully paid off	21201026
74	Other	21201026
18	Rented	21201027
166	Owned but not yet paid off	21201027
280	Occupied rent-free	21201027
1206	Owned and fully paid off	21201027
57	Other	21201027
229	Rented	21201028
85	Owned but not yet paid off	21201028
87	Occupied rent-free	21201028
1398	Owned and fully paid off	21201028
161	Other	21201028
43	Rented	21201029
131	Owned but not yet paid off	21201029
744	Occupied rent-free	21201029
848	Owned and fully paid off	21201029
69	Other	21201029
23	Rented	21201030
18	Owned but not yet paid off	21201030
111	Occupied rent-free	21201030
1707	Owned and fully paid off	21201030
282	Other	21201030
14	Rented	21201031
9	Owned but not yet paid off	21201031
484	Occupied rent-free	21201031
1175	Owned and fully paid off	21201031
5	Other	21201031
1256	Rented	21202001
115	Owned but not yet paid off	21202001
360	Occupied rent-free	21202001
654	Owned and fully paid off	21202001
45	Other	21202001
1014	Rented	21202002
91	Owned but not yet paid off	21202002
775	Occupied rent-free	21202002
974	Owned and fully paid off	21202002
287	Other	21202002
906	Rented	21202003
149	Owned but not yet paid off	21202003
321	Occupied rent-free	21202003
840	Owned and fully paid off	21202003
22	Other	21202003
1304	Rented	21202004
255	Owned but not yet paid off	21202004
144	Occupied rent-free	21202004
993	Owned and fully paid off	21202004
25	Other	21202004
799	Rented	21202005
122	Owned but not yet paid off	21202005
273	Occupied rent-free	21202005
1771	Owned and fully paid off	21202005
188	Other	21202005
636	Rented	21202006
174	Owned but not yet paid off	21202006
91	Occupied rent-free	21202006
353	Owned and fully paid off	21202006
18	Other	21202006
209	Rented	21202007
15	Owned but not yet paid off	21202007
270	Occupied rent-free	21202007
1409	Owned and fully paid off	21202007
383	Other	21202007
73	Rented	21202008
7	Owned but not yet paid off	21202008
119	Occupied rent-free	21202008
1539	Owned and fully paid off	21202008
21	Other	21202008
58	Rented	21202009
34	Owned but not yet paid off	21202009
288	Occupied rent-free	21202009
1626	Owned and fully paid off	21202009
20	Other	21202009
5	Rented	21202010
324	Owned but not yet paid off	21202010
365	Occupied rent-free	21202010
1052	Owned and fully paid off	21202010
32	Other	21202010
32	Rented	21202011
32	Owned but not yet paid off	21202011
1779	Occupied rent-free	21202011
548	Owned and fully paid off	21202011
21	Other	21202011
72	Rented	21202012
22	Owned but not yet paid off	21202012
452	Occupied rent-free	21202012
1457	Owned and fully paid off	21202012
26	Other	21202012
36	Rented	21202013
33	Owned but not yet paid off	21202013
186	Occupied rent-free	21202013
1734	Owned and fully paid off	21202013
16	Other	21202013
33	Rented	21202014
49	Owned but not yet paid off	21202014
297	Occupied rent-free	21202014
1643	Owned and fully paid off	21202014
12	Other	21202014
18	Rented	21202015
21	Owned but not yet paid off	21202015
276	Occupied rent-free	21202015
1283	Owned and fully paid off	21202015
84	Other	21202015
162	Rented	21202016
11	Owned but not yet paid off	21202016
574	Occupied rent-free	21202016
1333	Owned and fully paid off	21202016
3	Other	21202016
42	Rented	21202017
61	Owned but not yet paid off	21202017
645	Occupied rent-free	21202017
1320	Owned and fully paid off	21202017
63	Other	21202017
327	Rented	21202018
17	Owned but not yet paid off	21202018
452	Occupied rent-free	21202018
1574	Owned and fully paid off	21202018
16	Other	21202018
9	Rented	21202019
16	Owned but not yet paid off	21202019
759	Occupied rent-free	21202019
1120	Owned and fully paid off	21202019
98	Other	21202019
18	Rented	21202020
106	Owned but not yet paid off	21202020
289	Occupied rent-free	21202020
1272	Owned and fully paid off	21202020
312	Other	21202020
11	Rented	21202021
15	Owned but not yet paid off	21202021
641	Occupied rent-free	21202021
1296	Owned and fully paid off	21202021
165	Other	21202021
37	Rented	21202022
18	Owned but not yet paid off	21202022
175	Occupied rent-free	21202022
1462	Owned and fully paid off	21202022
779	Other	21202022
14	Rented	21202023
185	Owned but not yet paid off	21202023
92	Occupied rent-free	21202023
1577	Owned and fully paid off	21202023
13	Other	21202023
29	Rented	21202024
87	Owned but not yet paid off	21202024
150	Occupied rent-free	21202024
1634	Owned and fully paid off	21202024
618	Other	21202024
176	Rented	21202025
60	Owned but not yet paid off	21202025
280	Occupied rent-free	21202025
1826	Owned and fully paid off	21202025
610	Other	21202025
71	Rented	21202026
187	Owned but not yet paid off	21202026
215	Occupied rent-free	21202026
2010	Owned and fully paid off	21202026
159	Other	21202026
18	Rented	21202027
56	Owned but not yet paid off	21202027
165	Occupied rent-free	21202027
2075	Owned and fully paid off	21202027
24	Other	21202027
31	Rented	21202028
5	Owned but not yet paid off	21202028
69	Occupied rent-free	21202028
2262	Owned and fully paid off	21202028
1	Other	21202028
36	Rented	21202029
63	Owned but not yet paid off	21202029
361	Occupied rent-free	21202029
1684	Owned and fully paid off	21202029
116	Other	21202029
415	Rented	21202030
125	Owned but not yet paid off	21202030
179	Occupied rent-free	21202030
1222	Owned and fully paid off	21202030
171	Other	21202030
44	Rented	21202031
185	Owned but not yet paid off	21202031
100	Occupied rent-free	21202031
2126	Owned and fully paid off	21202031
40	Other	21202031
190	Rented	21203001
72	Owned but not yet paid off	21203001
326	Occupied rent-free	21203001
1135	Owned and fully paid off	21203001
33	Other	21203001
14	Rented	21203002
21	Owned but not yet paid off	21203002
176	Occupied rent-free	21203002
965	Owned and fully paid off	21203002
1	Other	21203002
15	Rented	21203003
3	Owned but not yet paid off	21203003
144	Occupied rent-free	21203003
953	Owned and fully paid off	21203003
311	Other	21203003
21	Rented	21203004
19	Owned but not yet paid off	21203004
211	Occupied rent-free	21203004
918	Owned and fully paid off	21203004
6	Other	21203004
284	Rented	21203005
13	Owned but not yet paid off	21203005
554	Occupied rent-free	21203005
591	Owned and fully paid off	21203005
4	Other	21203005
173	Rented	21203006
314	Owned but not yet paid off	21203006
455	Occupied rent-free	21203006
559	Owned and fully paid off	21203006
35	Other	21203006
419	Rented	21203007
258	Owned but not yet paid off	21203007
212	Occupied rent-free	21203007
870	Owned and fully paid off	21203007
34	Other	21203007
14	Rented	21204001
3	Owned but not yet paid off	21204001
385	Occupied rent-free	21204001
1226	Owned and fully paid off	21204001
27	Other	21204001
336	Rented	21204002
71	Owned but not yet paid off	21204002
322	Occupied rent-free	21204002
1419	Owned and fully paid off	21204002
62	Other	21204002
23	Rented	21204003
11	Owned but not yet paid off	21204003
614	Occupied rent-free	21204003
1261	Owned and fully paid off	21204003
11	Other	21204003
456	Rented	21204004
67	Owned but not yet paid off	21204004
651	Occupied rent-free	21204004
507	Owned and fully paid off	21204004
143	Other	21204004
180	Rented	21204005
97	Owned but not yet paid off	21204005
461	Occupied rent-free	21204005
1007	Owned and fully paid off	21204005
14	Other	21204005
210	Rented	21204006
181	Owned but not yet paid off	21204006
698	Occupied rent-free	21204006
1027	Owned and fully paid off	21204006
21	Other	21204006
16	Rented	21204007
5	Owned but not yet paid off	21204007
147	Occupied rent-free	21204007
1274	Owned and fully paid off	21204007
9	Other	21204007
30	Rented	21204008
23	Owned but not yet paid off	21204008
218	Occupied rent-free	21204008
1229	Owned and fully paid off	21204008
208	Other	21204008
79	Rented	21204009
34	Owned but not yet paid off	21204009
272	Occupied rent-free	21204009
877	Owned and fully paid off	21204009
26	Other	21204009
58	Rented	21204010
36	Owned but not yet paid off	21204010
170	Occupied rent-free	21204010
1183	Owned and fully paid off	21204010
82	Other	21204010
13	Rented	21204011
22	Owned but not yet paid off	21204011
141	Occupied rent-free	21204011
1370	Owned and fully paid off	21204011
3	Other	21204011
32	Rented	21204012
158	Owned but not yet paid off	21204012
56	Occupied rent-free	21204012
1670	Owned and fully paid off	21204012
14	Other	21204012
13	Rented	21204013
15	Owned but not yet paid off	21204013
152	Occupied rent-free	21204013
1249	Owned and fully paid off	21204013
20	Other	21204013
49	Rented	21204014
39	Owned but not yet paid off	21204014
202	Occupied rent-free	21204014
1447	Owned and fully paid off	21204014
8	Other	21204014
159	Rented	21204015
19	Owned but not yet paid off	21204015
68	Occupied rent-free	21204015
1303	Owned and fully paid off	21204015
41	Other	21204015
232	Rented	21204016
399	Owned but not yet paid off	21204016
117	Occupied rent-free	21204016
1214	Owned and fully paid off	21204016
67	Other	21204016
532	Rented	21204017
197	Owned but not yet paid off	21204017
376	Occupied rent-free	21204017
539	Owned and fully paid off	21204017
15	Other	21204017
17	Rented	21204018
125	Owned but not yet paid off	21204018
690	Occupied rent-free	21204018
655	Owned and fully paid off	21204018
36	Other	21204018
20	Rented	21204019
10	Owned but not yet paid off	21204019
231	Occupied rent-free	21204019
983	Owned and fully paid off	21204019
337	Other	21204019
50	Rented	21204020
13	Owned but not yet paid off	21204020
213	Occupied rent-free	21204020
1336	Owned and fully paid off	21204020
16	Other	21204020
19	Rented	21206001
126	Owned but not yet paid off	21206001
209	Occupied rent-free	21206001
1342	Owned and fully paid off	21206001
5	Other	21206001
64	Rented	21206002
22	Owned but not yet paid off	21206002
208	Occupied rent-free	21206002
1061	Owned and fully paid off	21206002
331	Other	21206002
20	Rented	21206003
129	Owned but not yet paid off	21206003
432	Occupied rent-free	21206003
1203	Owned and fully paid off	21206003
8	Other	21206003
11	Rented	21206004
21	Owned but not yet paid off	21206004
116	Occupied rent-free	21206004
1393	Owned and fully paid off	21206004
17	Other	21206004
4	Rented	21206005
10	Owned but not yet paid off	21206005
402	Occupied rent-free	21206005
488	Owned and fully paid off	21206005
11	Other	21206005
24	Rented	21206006
27	Owned but not yet paid off	21206006
163	Occupied rent-free	21206006
1447	Owned and fully paid off	21206006
6	Other	21206006
49	Rented	21206007
242	Owned but not yet paid off	21206007
84	Occupied rent-free	21206007
1516	Owned and fully paid off	21206007
52	Other	21206007
40	Rented	21206008
38	Owned but not yet paid off	21206008
172	Occupied rent-free	21206008
1502	Owned and fully paid off	21206008
119	Other	21206008
28	Rented	21206009
34	Owned but not yet paid off	21206009
48	Occupied rent-free	21206009
1327	Owned and fully paid off	21206009
60	Other	21206009
352	Rented	21206010
131	Owned but not yet paid off	21206010
422	Occupied rent-free	21206010
713	Owned and fully paid off	21206010
12	Other	21206010
155	Rented	21206011
24	Owned but not yet paid off	21206011
537	Occupied rent-free	21206011
1073	Owned and fully paid off	21206011
50	Other	21206011
21	Rented	21206012
15	Owned but not yet paid off	21206012
28	Occupied rent-free	21206012
1259	Owned and fully paid off	21206012
95	Other	21206012
16	Rented	21206013
8	Owned but not yet paid off	21206013
79	Occupied rent-free	21206013
1690	Owned and fully paid off	21206013
76	Other	21206013
11	Rented	21207001
6	Owned but not yet paid off	21207001
724	Occupied rent-free	21207001
717	Owned and fully paid off	21207001
4	Other	21207001
55	Rented	21207002
92	Owned but not yet paid off	21207002
285	Occupied rent-free	21207002
1257	Owned and fully paid off	21207002
37	Other	21207002
76	Rented	21207003
44	Owned but not yet paid off	21207003
259	Occupied rent-free	21207003
891	Owned and fully paid off	21207003
267	Other	21207003
166	Rented	21207004
226	Owned but not yet paid off	21207004
845	Occupied rent-free	21207004
801	Owned and fully paid off	21207004
248	Other	21207004
14	Rented	21207005
41	Owned but not yet paid off	21207005
246	Occupied rent-free	21207005
1457	Owned and fully paid off	21207005
84	Other	21207005
514	Rented	21207006
109	Owned but not yet paid off	21207006
389	Occupied rent-free	21207006
1200	Owned and fully paid off	21207006
29	Other	21207006
15	Rented	21207007
41	Owned but not yet paid off	21207007
591	Occupied rent-free	21207007
914	Owned and fully paid off	21207007
21	Other	21207007
159	Rented	21207008
300	Owned but not yet paid off	21207008
814	Occupied rent-free	21207008
594	Owned and fully paid off	21207008
121	Other	21207008
96	Rented	21207009
27	Owned but not yet paid off	21207009
1284	Occupied rent-free	21207009
844	Owned and fully paid off	21207009
40	Other	21207009
130	Rented	21207010
36	Owned but not yet paid off	21207010
539	Occupied rent-free	21207010
924	Owned and fully paid off	21207010
35	Other	21207010
90	Rented	21207011
2	Owned but not yet paid off	21207011
379	Occupied rent-free	21207011
94	Owned and fully paid off	21207011
2	Other	21207011
19	Rented	21207012
2	Owned but not yet paid off	21207012
125	Occupied rent-free	21207012
1406	Owned and fully paid off	21207012
8	Other	21207012
16	Rented	21207013
12	Owned but not yet paid off	21207013
1297	Occupied rent-free	21207013
408	Owned and fully paid off	21207013
11	Other	21207013
15	Rented	21207014
21	Owned but not yet paid off	21207014
995	Occupied rent-free	21207014
691	Owned and fully paid off	21207014
10	Other	21207014
260	Rented	21207015
76	Owned but not yet paid off	21207015
335	Occupied rent-free	21207015
1044	Owned and fully paid off	21207015
31	Other	21207015
171	Rented	21207016
4	Owned but not yet paid off	21207016
172	Occupied rent-free	21207016
1481	Owned and fully paid off	21207016
27	Other	21207016
21	Rented	21207017
8	Owned but not yet paid off	21207017
143	Occupied rent-free	21207017
1176	Owned and fully paid off	21207017
17	Other	21207017
63	Rented	21207018
124	Owned but not yet paid off	21207018
336	Occupied rent-free	21207018
1099	Owned and fully paid off	21207018
16	Other	21207018
17	Rented	21207019
2	Owned but not yet paid off	21207019
873	Occupied rent-free	21207019
422	Owned and fully paid off	21207019
6	Other	21207019
354	Rented	21207020
321	Owned but not yet paid off	21207020
217	Occupied rent-free	21207020
540	Owned and fully paid off	21207020
100	Other	21207020
471	Rented	21207021
33	Owned but not yet paid off	21207021
395	Occupied rent-free	21207021
740	Owned and fully paid off	21207021
42	Other	21207021
385	Rented	21208001
128	Owned but not yet paid off	21208001
128	Occupied rent-free	21208001
762	Owned and fully paid off	21208001
75	Other	21208001
350	Rented	21208002
143	Owned but not yet paid off	21208002
69	Occupied rent-free	21208002
569	Owned and fully paid off	21208002
84	Other	21208002
183	Rented	21208003
125	Owned but not yet paid off	21208003
182	Occupied rent-free	21208003
583	Owned and fully paid off	21208003
6	Other	21208003
1065	Rented	21208004
425	Owned but not yet paid off	21208004
539	Occupied rent-free	21208004
824	Owned and fully paid off	21208004
86	Other	21208004
355	Rented	21301001
217	Owned but not yet paid off	21301001
307	Occupied rent-free	21301001
987	Owned and fully paid off	21301001
13	Other	21301001
240	Rented	21301002
17	Owned but not yet paid off	21301002
327	Occupied rent-free	21301002
1059	Owned and fully paid off	21301002
4	Other	21301002
500	Rented	21301003
89	Owned but not yet paid off	21301003
299	Occupied rent-free	21301003
533	Owned and fully paid off	21301003
104	Other	21301003
134	Rented	21301004
158	Owned but not yet paid off	21301004
287	Occupied rent-free	21301004
837	Owned and fully paid off	21301004
32	Other	21301004
1304	Rented	21301005
679	Owned but not yet paid off	21301005
58	Occupied rent-free	21301005
813	Owned and fully paid off	21301005
72	Other	21301005
1003	Rented	21301006
155	Owned but not yet paid off	21301006
1616	Occupied rent-free	21301006
251	Owned and fully paid off	21301006
198	Other	21301006
363	Rented	21301007
95	Owned but not yet paid off	21301007
131	Occupied rent-free	21301007
1233	Owned and fully paid off	21301007
39	Other	21301007
986	Rented	21301008
332	Owned but not yet paid off	21301008
240	Occupied rent-free	21301008
510	Owned and fully paid off	21301008
195	Other	21301008
414	Rented	21301009
397	Owned but not yet paid off	21301009
499	Occupied rent-free	21301009
268	Owned and fully paid off	21301009
112	Other	21301009
36	Rented	21302001
9	Owned but not yet paid off	21302001
63	Occupied rent-free	21302001
1831	Owned and fully paid off	21302001
10	Other	21302001
67	Rented	21302002
8	Owned but not yet paid off	21302002
149	Occupied rent-free	21302002
1212	Owned and fully paid off	21302002
97	Other	21302002
79	Rented	21302003
30	Owned but not yet paid off	21302003
269	Occupied rent-free	21302003
1600	Owned and fully paid off	21302003
10	Other	21302003
472	Rented	21302004
110	Owned but not yet paid off	21302004
481	Occupied rent-free	21302004
796	Owned and fully paid off	21302004
26	Other	21302004
295	Rented	21302005
75	Owned but not yet paid off	21302005
768	Occupied rent-free	21302005
834	Owned and fully paid off	21302005
166	Other	21302005
118	Rented	21303001
314	Owned but not yet paid off	21303001
450	Occupied rent-free	21303001
295	Owned and fully paid off	21303001
4	Other	21303001
416	Rented	21303002
137	Owned but not yet paid off	21303002
631	Occupied rent-free	21303002
595	Owned and fully paid off	21303002
104	Other	21303002
92	Rented	21303003
127	Owned but not yet paid off	21303003
749	Occupied rent-free	21303003
594	Owned and fully paid off	21303003
180	Other	21303003
143	Rented	21303004
207	Owned but not yet paid off	21303004
480	Occupied rent-free	21303004
586	Owned and fully paid off	21303004
7	Other	21303004
78	Rented	21304001
85	Owned but not yet paid off	21304001
560	Occupied rent-free	21304001
1160	Owned and fully paid off	21304001
259	Other	21304001
48	Rented	21304002
173	Owned but not yet paid off	21304002
633	Occupied rent-free	21304002
908	Owned and fully paid off	21304002
136	Other	21304002
13	Rented	21304003
253	Owned but not yet paid off	21304003
205	Occupied rent-free	21304003
1294	Owned and fully paid off	21304003
13	Other	21304003
308	Rented	21304004
45	Owned but not yet paid off	21304004
52	Occupied rent-free	21304004
1009	Owned and fully paid off	21304004
75	Other	21304004
49	Rented	21304005
6	Owned but not yet paid off	21304005
489	Occupied rent-free	21304005
606	Owned and fully paid off	21304005
314	Other	21304005
566	Rented	21304006
573	Owned but not yet paid off	21304006
156	Occupied rent-free	21304006
729	Owned and fully paid off	21304006
44	Other	21304006
903	Rented	21304007
445	Owned but not yet paid off	21304007
609	Occupied rent-free	21304007
1032	Owned and fully paid off	21304007
108	Other	21304007
514	Rented	21304008
79	Owned but not yet paid off	21304008
230	Occupied rent-free	21304008
1011	Owned and fully paid off	21304008
39	Other	21304008
96	Rented	21304009
43	Owned but not yet paid off	21304009
267	Occupied rent-free	21304009
1024	Owned and fully paid off	21304009
226	Other	21304009
67	Rented	21304010
11	Owned but not yet paid off	21304010
233	Occupied rent-free	21304010
743	Owned and fully paid off	21304010
79	Other	21304010
147	Rented	21304011
42	Owned but not yet paid off	21304011
726	Occupied rent-free	21304011
1108	Owned and fully paid off	21304011
149	Other	21304011
13	Rented	21304012
24	Owned but not yet paid off	21304012
650	Occupied rent-free	21304012
667	Owned and fully paid off	21304012
191	Other	21304012
30	Rented	21304013
116	Owned but not yet paid off	21304013
336	Occupied rent-free	21304013
1111	Owned and fully paid off	21304013
6	Other	21304013
59	Rented	21304014
120	Owned but not yet paid off	21304014
413	Occupied rent-free	21304014
1066	Owned and fully paid off	21304014
90	Other	21304014
267	Rented	21304015
160	Owned but not yet paid off	21304015
59	Occupied rent-free	21304015
819	Owned and fully paid off	21304015
7	Other	21304015
203	Rented	21304016
129	Owned but not yet paid off	21304016
340	Occupied rent-free	21304016
938	Owned and fully paid off	21304016
64	Other	21304016
149	Rented	21304017
15	Owned but not yet paid off	21304017
579	Occupied rent-free	21304017
988	Owned and fully paid off	21304017
122	Other	21304017
599	Rented	21304018
265	Owned but not yet paid off	21304018
880	Occupied rent-free	21304018
1587	Owned and fully paid off	21304018
115	Other	21304018
414	Rented	21304019
361	Owned but not yet paid off	21304019
213	Occupied rent-free	21304019
1194	Owned and fully paid off	21304019
22	Other	21304019
370	Rented	21304020
253	Owned but not yet paid off	21304020
86	Occupied rent-free	21304020
991	Owned and fully paid off	21304020
17	Other	21304020
445	Rented	21304021
106	Owned but not yet paid off	21304021
145	Occupied rent-free	21304021
912	Owned and fully paid off	21304021
58	Other	21304021
378	Rented	21304022
76	Owned but not yet paid off	21304022
118	Occupied rent-free	21304022
1105	Owned and fully paid off	21304022
51	Other	21304022
625	Rented	21304023
110	Owned but not yet paid off	21304023
34	Occupied rent-free	21304023
494	Owned and fully paid off	21304023
40	Other	21304023
732	Rented	21304024
128	Owned but not yet paid off	21304024
63	Occupied rent-free	21304024
519	Owned and fully paid off	21304024
125	Other	21304024
582	Rented	21304025
472	Owned but not yet paid off	21304025
273	Occupied rent-free	21304025
970	Owned and fully paid off	21304025
83	Other	21304025
984	Rented	21304026
671	Owned but not yet paid off	21304026
293	Occupied rent-free	21304026
671	Owned and fully paid off	21304026
41	Other	21304026
146	Rented	21304027
117	Owned but not yet paid off	21304027
629	Occupied rent-free	21304027
1064	Owned and fully paid off	21304027
47	Other	21304027
18	Rented	21305001
331	Owned but not yet paid off	21305001
254	Occupied rent-free	21305001
1257	Owned and fully paid off	21305001
120	Other	21305001
17	Rented	21305002
89	Owned but not yet paid off	21305002
336	Occupied rent-free	21305002
1198	Owned and fully paid off	21305002
7	Other	21305002
19	Rented	21305003
43	Owned but not yet paid off	21305003
277	Occupied rent-free	21305003
1714	Owned and fully paid off	21305003
9	Other	21305003
78	Rented	21305004
25	Owned but not yet paid off	21305004
530	Occupied rent-free	21305004
1693	Owned and fully paid off	21305004
14	Other	21305004
27	Rented	21305005
75	Owned but not yet paid off	21305005
571	Occupied rent-free	21305005
1387	Owned and fully paid off	21305005
12	Other	21305005
18	Rented	21305006
99	Owned but not yet paid off	21305006
634	Occupied rent-free	21305006
990	Owned and fully paid off	21305006
239	Other	21305006
25	Rented	21305007
20	Owned but not yet paid off	21305007
559	Occupied rent-free	21305007
1088	Owned and fully paid off	21305007
8	Other	21305007
562	Rented	21305008
14	Owned but not yet paid off	21305008
603	Occupied rent-free	21305008
1060	Owned and fully paid off	21305008
26	Other	21305008
7	Rented	21305009
15	Owned but not yet paid off	21305009
585	Occupied rent-free	21305009
736	Owned and fully paid off	21305009
8	Other	21305009
23	Rented	21305010
63	Owned but not yet paid off	21305010
433	Occupied rent-free	21305010
1171	Owned and fully paid off	21305010
3	Other	21305010
12	Rented	21305011
122	Owned but not yet paid off	21305011
92	Occupied rent-free	21305011
1075	Owned and fully paid off	21305011
6	Other	21305011
41	Rented	21305012
176	Owned but not yet paid off	21305012
29	Occupied rent-free	21305012
1422	Owned and fully paid off	21305012
55	Other	21305012
30	Rented	21305013
44	Owned but not yet paid off	21305013
540	Occupied rent-free	21305013
1348	Owned and fully paid off	21305013
12	Other	21305013
1548	Rented	21305014
97	Owned but not yet paid off	21305014
271	Occupied rent-free	21305014
983	Owned and fully paid off	21305014
145	Other	21305014
50	Rented	21305015
52	Owned but not yet paid off	21305015
251	Occupied rent-free	21305015
1429	Owned and fully paid off	21305015
99	Other	21305015
21	Rented	21305016
100	Owned but not yet paid off	21305016
239	Occupied rent-free	21305016
1412	Owned and fully paid off	21305016
463	Other	21305016
69	Rented	21305017
33	Owned but not yet paid off	21305017
140	Occupied rent-free	21305017
1600	Owned and fully paid off	21305017
69	Other	21305017
15	Rented	21305018
3	Owned but not yet paid off	21305018
117	Occupied rent-free	21305018
1880	Owned and fully paid off	21305018
36	Other	21305018
7	Rented	21305019
40	Owned but not yet paid off	21305019
298	Occupied rent-free	21305019
927	Owned and fully paid off	21305019
200	Other	21305019
10	Rented	21305020
17	Owned but not yet paid off	21305020
368	Occupied rent-free	21305020
1221	Owned and fully paid off	21305020
25	Other	21305020
24	Rented	21305021
91	Owned but not yet paid off	21305021
246	Occupied rent-free	21305021
1564	Owned and fully paid off	21305021
190	Other	21305021
17	Rented	21306001
59	Owned but not yet paid off	21306001
316	Occupied rent-free	21306001
1621	Owned and fully paid off	21306001
82	Other	21306001
35	Rented	21306002
84	Owned but not yet paid off	21306002
268	Occupied rent-free	21306002
1243	Owned and fully paid off	21306002
65	Other	21306002
22	Rented	21306003
23	Owned but not yet paid off	21306003
525	Occupied rent-free	21306003
1029	Owned and fully paid off	21306003
172	Other	21306003
388	Rented	21306004
80	Owned but not yet paid off	21306004
541	Occupied rent-free	21306004
1007	Owned and fully paid off	21306004
93	Other	21306004
64	Rented	21306005
65	Owned but not yet paid off	21306005
608	Occupied rent-free	21306005
1344	Owned and fully paid off	21306005
148	Other	21306005
18	Rented	21306006
232	Owned but not yet paid off	21306006
523	Occupied rent-free	21306006
1257	Owned and fully paid off	21306006
21	Other	21306006
39	Rented	21306007
98	Owned but not yet paid off	21306007
811	Occupied rent-free	21306007
1020	Owned and fully paid off	21306007
106	Other	21306007
63	Rented	21306008
35	Owned but not yet paid off	21306008
407	Occupied rent-free	21306008
1374	Owned and fully paid off	21306008
14	Other	21306008
19	Rented	21306009
9	Owned but not yet paid off	21306009
660	Occupied rent-free	21306009
1092	Owned and fully paid off	21306009
56	Other	21306009
38	Rented	21306010
14	Owned but not yet paid off	21306010
273	Occupied rent-free	21306010
1178	Owned and fully paid off	21306010
15	Other	21306010
73	Rented	21306011
386	Owned but not yet paid off	21306011
762	Occupied rent-free	21306011
628	Owned and fully paid off	21306011
134	Other	21306011
25	Rented	21306012
80	Owned but not yet paid off	21306012
738	Occupied rent-free	21306012
763	Owned and fully paid off	21306012
163	Other	21306012
23	Rented	21306013
31	Owned but not yet paid off	21306013
439	Occupied rent-free	21306013
696	Owned and fully paid off	21306013
403	Other	21306013
203	Rented	21306014
67	Owned but not yet paid off	21306014
294	Occupied rent-free	21306014
1315	Owned and fully paid off	21306014
81	Other	21306014
151	Rented	21306015
58	Owned but not yet paid off	21306015
708	Occupied rent-free	21306015
791	Owned and fully paid off	21306015
29	Other	21306015
305	Rented	21306016
90	Owned but not yet paid off	21306016
541	Occupied rent-free	21306016
819	Owned and fully paid off	21306016
43	Other	21306016
14	Rented	21306017
12	Owned but not yet paid off	21306017
423	Occupied rent-free	21306017
810	Owned and fully paid off	21306017
308	Other	21306017
9	Rented	21307001
257	Owned but not yet paid off	21307001
70	Occupied rent-free	21307001
1091	Owned and fully paid off	21307001
47	Other	21307001
52	Rented	21307002
83	Owned but not yet paid off	21307002
193	Occupied rent-free	21307002
1233	Owned and fully paid off	21307002
96	Other	21307002
14	Rented	21307003
180	Owned but not yet paid off	21307003
272	Occupied rent-free	21307003
940	Owned and fully paid off	21307003
64	Other	21307003
162	Rented	21307004
40	Owned but not yet paid off	21307004
304	Occupied rent-free	21307004
1023	Owned and fully paid off	21307004
175	Other	21307004
8	Rented	21307005
4	Owned but not yet paid off	21307005
175	Occupied rent-free	21307005
1276	Owned and fully paid off	21307005
14	Other	21307005
9	Rented	21307006
186	Owned but not yet paid off	21307006
554	Occupied rent-free	21307006
1023	Owned and fully paid off	21307006
45	Other	21307006
27	Rented	21307007
48	Owned but not yet paid off	21307007
185	Occupied rent-free	21307007
1630	Owned and fully paid off	21307007
11	Other	21307007
12	Rented	21307008
140	Owned but not yet paid off	21307008
570	Occupied rent-free	21307008
1160	Owned and fully paid off	21307008
178	Other	21307008
249	Rented	21307009
60	Owned but not yet paid off	21307009
269	Occupied rent-free	21307009
1283	Owned and fully paid off	21307009
50	Other	21307009
968	Rented	21307010
318	Owned but not yet paid off	21307010
922	Occupied rent-free	21307010
868	Owned and fully paid off	21307010
312	Other	21307010
821	Rented	21307011
57	Owned but not yet paid off	21307011
208	Occupied rent-free	21307011
454	Owned and fully paid off	21307011
20	Other	21307011
12	Rented	21307012
226	Owned but not yet paid off	21307012
362	Occupied rent-free	21307012
1173	Owned and fully paid off	21307012
85	Other	21307012
16	Rented	21307013
151	Owned but not yet paid off	21307013
451	Occupied rent-free	21307013
1063	Owned and fully paid off	21307013
82	Other	21307013
22	Rented	21307014
107	Owned but not yet paid off	21307014
145	Occupied rent-free	21307014
884	Owned and fully paid off	21307014
672	Other	21307014
40	Rented	21307015
73	Owned but not yet paid off	21307015
416	Occupied rent-free	21307015
1275	Owned and fully paid off	21307015
247	Other	21307015
41	Rented	21307016
71	Owned but not yet paid off	21307016
670	Occupied rent-free	21307016
1013	Owned and fully paid off	21307016
102	Other	21307016
145	Rented	21307017
66	Owned but not yet paid off	21307017
771	Occupied rent-free	21307017
675	Owned and fully paid off	21307017
164	Other	21307017
14	Rented	21307018
75	Owned but not yet paid off	21307018
894	Occupied rent-free	21307018
877	Owned and fully paid off	21307018
276	Other	21307018
22	Rented	21307019
187	Owned but not yet paid off	21307019
586	Occupied rent-free	21307019
1039	Owned and fully paid off	21307019
10	Other	21307019
30	Rented	21307020
75	Owned but not yet paid off	21307020
91	Occupied rent-free	21307020
1354	Owned and fully paid off	21307020
48	Other	21307020
571	Rented	21308001
265	Owned but not yet paid off	21308001
483	Occupied rent-free	21308001
810	Owned and fully paid off	21308001
43	Other	21308001
176	Rented	21308002
124	Owned but not yet paid off	21308002
638	Occupied rent-free	21308002
836	Owned and fully paid off	21308002
16	Other	21308002
51	Rented	21308003
235	Owned but not yet paid off	21308003
562	Occupied rent-free	21308003
846	Owned and fully paid off	21308003
163	Other	21308003
752	Rented	21308004
106	Owned but not yet paid off	21308004
283	Occupied rent-free	21308004
562	Owned and fully paid off	21308004
141	Other	21308004
155	Rented	21308005
267	Owned but not yet paid off	21308005
870	Occupied rent-free	21308005
597	Owned and fully paid off	21308005
406	Other	21308005
21	Rented	21308006
159	Owned but not yet paid off	21308006
509	Occupied rent-free	21308006
561	Owned and fully paid off	21308006
339	Other	21308006
7	Rented	21308007
9	Owned but not yet paid off	21308007
215	Occupied rent-free	21308007
354	Owned and fully paid off	21308007
786	Other	21308007
44	Rented	21308008
16	Owned but not yet paid off	21308008
799	Occupied rent-free	21308008
328	Owned and fully paid off	21308008
509	Other	21308008
12	Rented	21308009
263	Owned but not yet paid off	21308009
760	Occupied rent-free	21308009
333	Owned and fully paid off	21308009
168	Other	21308009
44	Rented	21401001
74	Owned but not yet paid off	21401001
236	Occupied rent-free	21401001
2120	Owned and fully paid off	21401001
79	Other	21401001
286	Rented	21401002
63	Owned but not yet paid off	21401002
817	Occupied rent-free	21401002
1910	Owned and fully paid off	21401002
189	Other	21401002
511	Rented	21401003
130	Owned but not yet paid off	21401003
337	Occupied rent-free	21401003
1294	Owned and fully paid off	21401003
27	Other	21401003
280	Rented	21401004
142	Owned but not yet paid off	21401004
392	Occupied rent-free	21401004
958	Owned and fully paid off	21401004
129	Other	21401004
49	Rented	21401005
102	Owned but not yet paid off	21401005
1122	Occupied rent-free	21401005
854	Owned and fully paid off	21401005
81	Other	21401005
23	Rented	21401006
38	Owned but not yet paid off	21401006
557	Occupied rent-free	21401006
963	Owned and fully paid off	21401006
32	Other	21401006
60	Rented	21401007
122	Owned but not yet paid off	21401007
427	Occupied rent-free	21401007
1571	Owned and fully paid off	21401007
66	Other	21401007
50	Rented	21401008
233	Owned but not yet paid off	21401008
77	Occupied rent-free	21401008
1275	Owned and fully paid off	21401008
108	Other	21401008
1289	Rented	21401009
111	Owned but not yet paid off	21401009
820	Occupied rent-free	21401009
1463	Owned and fully paid off	21401009
29	Other	21401009
50	Rented	21401010
59	Owned but not yet paid off	21401010
702	Occupied rent-free	21401010
1244	Owned and fully paid off	21401010
82	Other	21401010
118	Rented	21401011
10	Owned but not yet paid off	21401011
204	Occupied rent-free	21401011
628	Owned and fully paid off	21401011
657	Other	21401011
10	Rented	21401012
62	Owned but not yet paid off	21401012
607	Occupied rent-free	21401012
525	Owned and fully paid off	21401012
868	Other	21401012
65	Rented	21401013
229	Owned but not yet paid off	21401013
210	Occupied rent-free	21401013
1106	Owned and fully paid off	21401013
705	Other	21401013
81	Rented	21401014
175	Owned but not yet paid off	21401014
167	Occupied rent-free	21401014
1168	Owned and fully paid off	21401014
43	Other	21401014
220	Rented	21401015
99	Owned but not yet paid off	21401015
174	Occupied rent-free	21401015
1854	Owned and fully paid off	21401015
68	Other	21401015
37	Rented	21401016
130	Owned but not yet paid off	21401016
166	Occupied rent-free	21401016
1497	Owned and fully paid off	21401016
169	Other	21401016
240	Rented	21401017
49	Owned but not yet paid off	21401017
573	Occupied rent-free	21401017
1174	Owned and fully paid off	21401017
92	Other	21401017
20	Rented	21402001
120	Owned but not yet paid off	21402001
133	Occupied rent-free	21402001
1176	Owned and fully paid off	21402001
296	Other	21402001
142	Rented	21402002
250	Owned but not yet paid off	21402002
1042	Occupied rent-free	21402002
1219	Owned and fully paid off	21402002
584	Other	21402002
72	Rented	21402003
21	Owned but not yet paid off	21402003
490	Occupied rent-free	21402003
271	Owned and fully paid off	21402003
601	Other	21402003
39	Rented	21402004
134	Owned but not yet paid off	21402004
121	Occupied rent-free	21402004
1130	Owned and fully paid off	21402004
75	Other	21402004
8	Rented	21402005
214	Owned but not yet paid off	21402005
51	Occupied rent-free	21402005
939	Owned and fully paid off	21402005
6	Other	21402005
17	Rented	21402006
200	Owned but not yet paid off	21402006
319	Occupied rent-free	21402006
1103	Owned and fully paid off	21402006
121	Other	21402006
38	Rented	21402007
121	Owned but not yet paid off	21402007
206	Occupied rent-free	21402007
1445	Owned and fully paid off	21402007
170	Other	21402007
522	Rented	21402008
94	Owned but not yet paid off	21402008
385	Occupied rent-free	21402008
1873	Owned and fully paid off	21402008
56	Other	21402008
76	Rented	21402009
18	Owned but not yet paid off	21402009
277	Occupied rent-free	21402009
1471	Owned and fully paid off	21402009
7	Other	21402009
532	Rented	21402010
40	Owned but not yet paid off	21402010
344	Occupied rent-free	21402010
1751	Owned and fully paid off	21402010
52	Other	21402010
46	Rented	21402011
65	Owned but not yet paid off	21402011
433	Occupied rent-free	21402011
1899	Owned and fully paid off	21402011
33	Other	21402011
17	Rented	21402012
7	Owned but not yet paid off	21402012
107	Occupied rent-free	21402012
1648	Owned and fully paid off	21402012
13	Other	21402012
18	Rented	21402013
211	Owned but not yet paid off	21402013
411	Occupied rent-free	21402013
1133	Owned and fully paid off	21402013
188	Other	21402013
211	Rented	21402014
23	Owned but not yet paid off	21402014
238	Occupied rent-free	21402014
1675	Owned and fully paid off	21402014
15	Other	21402014
227	Rented	21402015
54	Owned but not yet paid off	21402015
493	Occupied rent-free	21402015
1047	Owned and fully paid off	21402015
88	Other	21402015
541	Rented	21402016
98	Owned but not yet paid off	21402016
454	Occupied rent-free	21402016
455	Owned and fully paid off	21402016
49	Other	21402016
91	Rented	21402017
54	Owned but not yet paid off	21402017
205	Occupied rent-free	21402017
1457	Owned and fully paid off	21402017
23	Other	21402017
57	Rented	21402018
11	Owned but not yet paid off	21402018
425	Occupied rent-free	21402018
1116	Owned and fully paid off	21402018
136	Other	21402018
305	Rented	21402019
70	Owned but not yet paid off	21402019
135	Occupied rent-free	21402019
1448	Owned and fully paid off	21402019
227	Other	21402019
409	Rented	21403001
42	Owned but not yet paid off	21403001
1102	Occupied rent-free	21403001
469	Owned and fully paid off	21403001
113	Other	21403001
331	Rented	21403002
70	Owned but not yet paid off	21403002
470	Occupied rent-free	21403002
718	Owned and fully paid off	21403002
577	Other	21403002
202	Rented	21403003
72	Owned but not yet paid off	21403003
173	Occupied rent-free	21403003
942	Owned and fully paid off	21403003
9	Other	21403003
694	Rented	21403004
247	Owned but not yet paid off	21403004
428	Occupied rent-free	21403004
677	Owned and fully paid off	21403004
70	Other	21403004
683	Rented	21403005
163	Owned but not yet paid off	21403005
117	Occupied rent-free	21403005
712	Owned and fully paid off	21403005
59	Other	21403005
460	Rented	21403006
92	Owned but not yet paid off	21403006
665	Occupied rent-free	21403006
1177	Owned and fully paid off	21403006
163	Other	21403006
191	Rented	21404001
20	Owned but not yet paid off	21404001
290	Occupied rent-free	21404001
1348	Owned and fully paid off	21404001
95	Other	21404001
265	Rented	21404002
130	Owned but not yet paid off	21404002
197	Occupied rent-free	21404002
658	Owned and fully paid off	21404002
88	Other	21404002
947	Rented	21404003
308	Owned but not yet paid off	21404003
1066	Occupied rent-free	21404003
726	Owned and fully paid off	21404003
85	Other	21404003
477	Rented	21404004
58	Owned but not yet paid off	21404004
221	Occupied rent-free	21404004
697	Owned and fully paid off	21404004
10	Other	21404004
482	Rented	21404005
148	Owned but not yet paid off	21404005
169	Occupied rent-free	21404005
1002	Owned and fully paid off	21404005
94	Other	21404005
32	Rented	21503001
26	Owned but not yet paid off	21503001
483	Occupied rent-free	21503001
486	Owned and fully paid off	21503001
15	Other	21503001
7	Rented	21503002
233	Owned but not yet paid off	21503002
250	Occupied rent-free	21503002
845	Owned and fully paid off	21503002
84	Other	21503002
37	Rented	21503003
196	Owned but not yet paid off	21503003
394	Occupied rent-free	21503003
406	Owned and fully paid off	21503003
21	Other	21503003
31	Rented	21503004
271	Owned but not yet paid off	21503004
44	Occupied rent-free	21503004
488	Owned and fully paid off	21503004
794	Other	21503004
62	Rented	21503005
255	Owned but not yet paid off	21503005
841	Occupied rent-free	21503005
491	Owned and fully paid off	21503005
133	Other	21503005
1169	Rented	21503006
209	Owned but not yet paid off	21503006
661	Occupied rent-free	21503006
372	Owned and fully paid off	21503006
323	Other	21503006
188	Rented	21503007
220	Owned but not yet paid off	21503007
579	Occupied rent-free	21503007
457	Owned and fully paid off	21503007
385	Other	21503007
26	Rented	21503008
128	Owned but not yet paid off	21503008
670	Occupied rent-free	21503008
274	Owned and fully paid off	21503008
306	Other	21503008
90	Rented	21503009
226	Owned but not yet paid off	21503009
493	Occupied rent-free	21503009
726	Owned and fully paid off	21503009
341	Other	21503009
29	Rented	21503010
133	Owned but not yet paid off	21503010
34	Occupied rent-free	21503010
1409	Owned and fully paid off	21503010
13	Other	21503010
190	Rented	21503011
274	Owned but not yet paid off	21503011
267	Occupied rent-free	21503011
957	Owned and fully paid off	21503011
144	Other	21503011
65	Rented	21503012
281	Owned but not yet paid off	21503012
264	Occupied rent-free	21503012
828	Owned and fully paid off	21503012
120	Other	21503012
50	Rented	21503013
159	Owned but not yet paid off	21503013
414	Occupied rent-free	21503013
824	Owned and fully paid off	21503013
428	Other	21503013
237	Rented	21503014
48	Owned but not yet paid off	21503014
196	Occupied rent-free	21503014
1459	Owned and fully paid off	21503014
17	Other	21503014
846	Rented	21503015
76	Owned but not yet paid off	21503015
770	Occupied rent-free	21503015
627	Owned and fully paid off	21503015
64	Other	21503015
50	Rented	21503016
210	Owned but not yet paid off	21503016
633	Occupied rent-free	21503016
825	Owned and fully paid off	21503016
7	Other	21503016
40	Rented	21503017
19	Owned but not yet paid off	21503017
223	Occupied rent-free	21503017
1275	Owned and fully paid off	21503017
15	Other	21503017
29	Rented	21503018
117	Owned but not yet paid off	21503018
60	Occupied rent-free	21503018
1388	Owned and fully paid off	21503018
6	Other	21503018
434	Rented	21503019
275	Owned but not yet paid off	21503019
360	Occupied rent-free	21503019
1421	Owned and fully paid off	21503019
50	Other	21503019
163	Rented	21503020
61	Owned but not yet paid off	21503020
376	Occupied rent-free	21503020
1670	Owned and fully paid off	21503020
52	Other	21503020
381	Rented	21503021
136	Owned but not yet paid off	21503021
186	Occupied rent-free	21503021
1929	Owned and fully paid off	21503021
34	Other	21503021
107	Rented	21503022
197	Owned but not yet paid off	21503022
553	Occupied rent-free	21503022
1310	Owned and fully paid off	21503022
11	Other	21503022
30	Rented	21503023
432	Owned but not yet paid off	21503023
245	Occupied rent-free	21503023
643	Owned and fully paid off	21503023
189	Other	21503023
7	Rented	21503024
97	Owned but not yet paid off	21503024
102	Occupied rent-free	21503024
1237	Owned and fully paid off	21503024
35	Other	21503024
58	Rented	21503025
90	Owned but not yet paid off	21503025
236	Occupied rent-free	21503025
1215	Owned and fully paid off	21503025
20	Other	21503025
103	Rented	21503026
292	Owned but not yet paid off	21503026
311	Occupied rent-free	21503026
867	Owned and fully paid off	21503026
208	Other	21503026
156	Rented	21503027
203	Owned but not yet paid off	21503027
231	Occupied rent-free	21503027
732	Owned and fully paid off	21503027
14	Other	21503027
88	Rented	21503028
469	Owned but not yet paid off	21503028
199	Occupied rent-free	21503028
1177	Owned and fully paid off	21503028
103	Other	21503028
171	Rented	21503029
419	Owned but not yet paid off	21503029
112	Occupied rent-free	21503029
1328	Owned and fully paid off	21503029
14	Other	21503029
20	Rented	21503030
84	Owned but not yet paid off	21503030
373	Occupied rent-free	21503030
988	Owned and fully paid off	21503030
485	Other	21503030
13	Rented	21503031
194	Owned but not yet paid off	21503031
1270	Occupied rent-free	21503031
338	Owned and fully paid off	21503031
20	Other	21503031
66	Rented	21504001
191	Owned but not yet paid off	21504001
60	Occupied rent-free	21504001
225	Owned and fully paid off	21504001
1476	Other	21504001
322	Rented	21504002
202	Owned but not yet paid off	21504002
269	Occupied rent-free	21504002
1120	Owned and fully paid off	21504002
187	Other	21504002
57	Rented	21504003
164	Owned but not yet paid off	21504003
200	Occupied rent-free	21504003
1369	Owned and fully paid off	21504003
123	Other	21504003
81	Rented	21504004
297	Owned but not yet paid off	21504004
192	Occupied rent-free	21504004
1061	Owned and fully paid off	21504004
15	Other	21504004
16	Rented	21504005
38	Owned but not yet paid off	21504005
640	Occupied rent-free	21504005
529	Owned and fully paid off	21504005
13	Other	21504005
1075	Rented	21504006
50	Owned but not yet paid off	21504006
416	Occupied rent-free	21504006
480	Owned and fully paid off	21504006
25	Other	21504006
23	Rented	21504007
358	Owned but not yet paid off	21504007
447	Occupied rent-free	21504007
687	Owned and fully paid off	21504007
206	Other	21504007
86	Rented	21504008
41	Owned but not yet paid off	21504008
87	Occupied rent-free	21504008
1170	Owned and fully paid off	21504008
14	Other	21504008
33	Rented	21504009
222	Owned but not yet paid off	21504009
70	Occupied rent-free	21504009
895	Owned and fully paid off	21504009
19	Other	21504009
125	Rented	21504010
214	Owned but not yet paid off	21504010
243	Occupied rent-free	21504010
1074	Owned and fully paid off	21504010
54	Other	21504010
27	Rented	21504011
46	Owned but not yet paid off	21504011
54	Occupied rent-free	21504011
1679	Owned and fully paid off	21504011
13	Other	21504011
16	Rented	21504012
10	Owned but not yet paid off	21504012
62	Occupied rent-free	21504012
1738	Owned and fully paid off	21504012
8	Other	21504012
30	Rented	21504013
79	Owned but not yet paid off	21504013
250	Occupied rent-free	21504013
890	Owned and fully paid off	21504013
189	Other	21504013
46	Rented	21504014
223	Owned but not yet paid off	21504014
21	Occupied rent-free	21504014
1047	Owned and fully paid off	21504014
2	Other	21504014
20	Rented	21504015
144	Owned but not yet paid off	21504015
175	Occupied rent-free	21504015
367	Owned and fully paid off	21504015
3	Other	21504015
74	Rented	21504016
166	Owned but not yet paid off	21504016
118	Occupied rent-free	21504016
1115	Owned and fully paid off	21504016
17	Other	21504016
53	Rented	21504017
309	Owned but not yet paid off	21504017
59	Occupied rent-free	21504017
460	Owned and fully paid off	21504017
73	Other	21504017
37	Rented	21504018
19	Owned but not yet paid off	21504018
245	Occupied rent-free	21504018
1243	Owned and fully paid off	21504018
12	Other	21504018
144	Rented	21504019
85	Owned but not yet paid off	21504019
28	Occupied rent-free	21504019
1562	Owned and fully paid off	21504019
6	Other	21504019
19	Rented	21504020
192	Owned but not yet paid off	21504020
124	Occupied rent-free	21504020
1361	Owned and fully paid off	21504020
27	Other	21504020
21	Rented	21505001
91	Owned but not yet paid off	21505001
204	Occupied rent-free	21505001
1612	Owned and fully paid off	21505001
15	Other	21505001
21	Rented	21505002
115	Owned but not yet paid off	21505002
76	Occupied rent-free	21505002
1256	Owned and fully paid off	21505002
130	Other	21505002
44	Rented	21505003
48	Owned but not yet paid off	21505003
57	Occupied rent-free	21505003
1427	Owned and fully paid off	21505003
55	Other	21505003
39	Rented	21505004
249	Owned but not yet paid off	21505004
188	Occupied rent-free	21505004
1250	Owned and fully paid off	21505004
15	Other	21505004
18	Rented	21505005
150	Owned but not yet paid off	21505005
138	Occupied rent-free	21505005
1424	Owned and fully paid off	21505005
53	Other	21505005
110	Rented	21505006
253	Owned but not yet paid off	21505006
499	Occupied rent-free	21505006
839	Owned and fully paid off	21505006
442	Other	21505006
389	Rented	21505007
70	Owned but not yet paid off	21505007
881	Occupied rent-free	21505007
808	Owned and fully paid off	21505007
25	Other	21505007
30	Rented	21505008
5	Owned but not yet paid off	21505008
184	Occupied rent-free	21505008
1425	Owned and fully paid off	21505008
24	Other	21505008
88	Rented	21505009
26	Owned but not yet paid off	21505009
286	Occupied rent-free	21505009
1832	Owned and fully paid off	21505009
56	Other	21505009
177	Rented	21505010
5	Owned but not yet paid off	21505010
389	Occupied rent-free	21505010
1448	Owned and fully paid off	21505010
257	Other	21505010
890	Rented	21505011
90	Owned but not yet paid off	21505011
421	Occupied rent-free	21505011
1697	Owned and fully paid off	21505011
219	Other	21505011
1924	Rented	21505012
39	Owned but not yet paid off	21505012
377	Occupied rent-free	21505012
762	Owned and fully paid off	21505012
180	Other	21505012
79	Rented	21505013
67	Owned but not yet paid off	21505013
307	Occupied rent-free	21505013
1357	Owned and fully paid off	21505013
15	Other	21505013
25	Rented	21505014
16	Owned but not yet paid off	21505014
274	Occupied rent-free	21505014
758	Owned and fully paid off	21505014
541	Other	21505014
305	Rented	21505015
113	Owned but not yet paid off	21505015
192	Occupied rent-free	21505015
1443	Owned and fully paid off	21505015
401	Other	21505015
9	Rented	21505016
41	Owned but not yet paid off	21505016
272	Occupied rent-free	21505016
926	Owned and fully paid off	21505016
273	Other	21505016
23	Rented	21505017
26	Owned but not yet paid off	21505017
137	Occupied rent-free	21505017
1743	Owned and fully paid off	21505017
114	Other	21505017
19	Rented	21505018
224	Owned but not yet paid off	21505018
48	Occupied rent-free	21505018
878	Owned and fully paid off	21505018
437	Other	21505018
57	Rented	21505019
141	Owned but not yet paid off	21505019
165	Occupied rent-free	21505019
1850	Owned and fully paid off	21505019
48	Other	21505019
40	Rented	21505020
459	Owned but not yet paid off	21505020
395	Occupied rent-free	21505020
1171	Owned and fully paid off	21505020
78	Other	21505020
483	Rented	21505021
100	Owned but not yet paid off	21505021
314	Occupied rent-free	21505021
841	Owned and fully paid off	21505021
95	Other	21505021
37	Rented	21505022
130	Owned but not yet paid off	21505022
201	Occupied rent-free	21505022
1537	Owned and fully paid off	21505022
217	Other	21505022
116	Rented	21505023
145	Owned but not yet paid off	21505023
264	Occupied rent-free	21505023
1310	Owned and fully paid off	21505023
21	Other	21505023
7	Rented	21505024
3	Owned but not yet paid off	21505024
93	Occupied rent-free	21505024
1424	Owned and fully paid off	21505024
31	Other	21505024
48	Rented	21505025
599	Owned but not yet paid off	21505025
182	Occupied rent-free	21505025
956	Owned and fully paid off	21505025
7	Other	21505025
22	Rented	21505026
877	Owned but not yet paid off	21505026
576	Occupied rent-free	21505026
631	Owned and fully paid off	21505026
199	Other	21505026
28	Rented	21505027
16	Owned but not yet paid off	21505027
214	Occupied rent-free	21505027
1061	Owned and fully paid off	21505027
16	Other	21505027
31	Rented	21505028
300	Owned but not yet paid off	21505028
511	Occupied rent-free	21505028
476	Owned and fully paid off	21505028
29	Other	21505028
34	Rented	21505029
124	Owned but not yet paid off	21505029
263	Occupied rent-free	21505029
1323	Owned and fully paid off	21505029
287	Other	21505029
77	Rented	21505030
14	Owned but not yet paid off	21505030
343	Occupied rent-free	21505030
1670	Owned and fully paid off	21505030
130	Other	21505030
20	Rented	21505031
293	Owned but not yet paid off	21505031
436	Occupied rent-free	21505031
1143	Owned and fully paid off	21505031
33	Other	21505031
22	Rented	21506001
10	Owned but not yet paid off	21506001
453	Occupied rent-free	21506001
916	Owned and fully paid off	21506001
13	Other	21506001
81	Rented	21506002
93	Owned but not yet paid off	21506002
575	Occupied rent-free	21506002
920	Owned and fully paid off	21506002
164	Other	21506002
63	Rented	21506003
127	Owned but not yet paid off	21506003
311	Occupied rent-free	21506003
1280	Owned and fully paid off	21506003
48	Other	21506003
28	Rented	21506004
109	Owned but not yet paid off	21506004
365	Occupied rent-free	21506004
859	Owned and fully paid off	21506004
166	Other	21506004
14	Rented	21506005
200	Owned but not yet paid off	21506005
362	Occupied rent-free	21506005
733	Owned and fully paid off	21506005
13	Other	21506005
884	Rented	21506006
123	Owned but not yet paid off	21506006
595	Occupied rent-free	21506006
1047	Owned and fully paid off	21506006
153	Other	21506006
10	Rented	21506007
109	Owned but not yet paid off	21506007
210	Occupied rent-free	21506007
726	Owned and fully paid off	21506007
39	Other	21506007
33	Rented	21506008
372	Owned but not yet paid off	21506008
188	Occupied rent-free	21506008
907	Owned and fully paid off	21506008
146	Other	21506008
20	Rented	21506009
14	Owned but not yet paid off	21506009
1068	Occupied rent-free	21506009
184	Owned and fully paid off	21506009
10	Other	21506009
19	Rented	21506010
71	Owned but not yet paid off	21506010
773	Occupied rent-free	21506010
462	Owned and fully paid off	21506010
35	Other	21506010
24	Rented	21506011
254	Owned but not yet paid off	21506011
804	Occupied rent-free	21506011
83	Owned and fully paid off	21506011
505	Other	21506011
43	Rented	21506012
148	Owned but not yet paid off	21506012
555	Occupied rent-free	21506012
145	Owned and fully paid off	21506012
710	Other	21506012
19	Rented	21506013
240	Owned but not yet paid off	21506013
685	Occupied rent-free	21506013
493	Owned and fully paid off	21506013
409	Other	21506013
59	Rented	21506014
91	Owned but not yet paid off	21506014
930	Occupied rent-free	21506014
775	Owned and fully paid off	21506014
5	Other	21506014
1067	Rented	21506015
66	Owned but not yet paid off	21506015
899	Occupied rent-free	21506015
479	Owned and fully paid off	21506015
399	Other	21506015
6	Rented	21506016
4	Owned but not yet paid off	21506016
366	Occupied rent-free	21506016
1188	Owned and fully paid off	21506016
85	Other	21506016
19	Rented	21506017
32	Owned but not yet paid off	21506017
550	Occupied rent-free	21506017
763	Owned and fully paid off	21506017
550	Other	21506017
52	Rented	21506018
80	Owned but not yet paid off	21506018
1427	Occupied rent-free	21506018
229	Owned and fully paid off	21506018
13	Other	21506018
45	Rented	21506019
211	Owned but not yet paid off	21506019
586	Occupied rent-free	21506019
801	Owned and fully paid off	21506019
53	Other	21506019
43	Rented	21506020
100	Owned but not yet paid off	21506020
303	Occupied rent-free	21506020
1090	Owned and fully paid off	21506020
11	Other	21506020
186	Rented	21506021
79	Owned but not yet paid off	21506021
157	Occupied rent-free	21506021
997	Owned and fully paid off	21506021
4	Other	21506021
5	Rented	21506022
161	Owned but not yet paid off	21506022
189	Occupied rent-free	21506022
1008	Owned and fully paid off	21506022
216	Other	21506022
14	Rented	21506023
22	Owned but not yet paid off	21506023
161	Occupied rent-free	21506023
1374	Owned and fully paid off	21506023
39	Other	21506023
7	Rented	21506024
10	Owned but not yet paid off	21506024
287	Occupied rent-free	21506024
1220	Owned and fully paid off	21506024
6	Other	21506024
22	Rented	21506025
367	Owned but not yet paid off	21506025
186	Occupied rent-free	21506025
625	Owned and fully paid off	21506025
267	Other	21506025
27	Rented	21506026
39	Owned but not yet paid off	21506026
122	Occupied rent-free	21506026
972	Owned and fully paid off	21506026
29	Other	21506026
2027	Rented	21507001
217	Owned but not yet paid off	21507001
385	Occupied rent-free	21507001
768	Owned and fully paid off	21507001
44	Other	21507001
3014	Rented	21507002
229	Owned but not yet paid off	21507002
173	Occupied rent-free	21507002
614	Owned and fully paid off	21507002
74	Other	21507002
3082	Rented	21507003
115	Owned but not yet paid off	21507003
296	Occupied rent-free	21507003
1036	Owned and fully paid off	21507003
56	Other	21507003
817	Rented	21507004
456	Owned but not yet paid off	21507004
1164	Occupied rent-free	21507004
1825	Owned and fully paid off	21507004
239	Other	21507004
280	Rented	21507005
337	Owned but not yet paid off	21507005
90	Occupied rent-free	21507005
577	Owned and fully paid off	21507005
67	Other	21507005
2178	Rented	21507006
474	Owned but not yet paid off	21507006
384	Occupied rent-free	21507006
632	Owned and fully paid off	21507006
230	Other	21507006
362	Rented	21507007
144	Owned but not yet paid off	21507007
101	Occupied rent-free	21507007
82	Owned and fully paid off	21507007
9	Other	21507007
1438	Rented	21507008
303	Owned but not yet paid off	21507008
355	Occupied rent-free	21507008
816	Owned and fully paid off	21507008
248	Other	21507008
1111	Rented	21507009
137	Owned but not yet paid off	21507009
1456	Occupied rent-free	21507009
1042	Owned and fully paid off	21507009
34	Other	21507009
38	Rented	21507010
226	Owned but not yet paid off	21507010
218	Occupied rent-free	21507010
1947	Owned and fully paid off	21507010
30	Other	21507010
2326	Rented	21507011
453	Owned but not yet paid off	21507011
517	Occupied rent-free	21507011
2479	Owned and fully paid off	21507011
561	Other	21507011
1742	Rented	21507012
118	Owned but not yet paid off	21507012
325	Occupied rent-free	21507012
1892	Owned and fully paid off	21507012
69	Other	21507012
924	Rented	21507013
509	Owned but not yet paid off	21507013
241	Occupied rent-free	21507013
1079	Owned and fully paid off	21507013
152	Other	21507013
154	Rented	21507014
46	Owned but not yet paid off	21507014
936	Occupied rent-free	21507014
1286	Owned and fully paid off	21507014
35	Other	21507014
39	Rented	21507015
116	Owned but not yet paid off	21507015
1418	Occupied rent-free	21507015
676	Owned and fully paid off	21507015
101	Other	21507015
51	Rented	21507016
135	Owned but not yet paid off	21507016
463	Occupied rent-free	21507016
1692	Owned and fully paid off	21507016
170	Other	21507016
18	Rented	21507017
105	Owned but not yet paid off	21507017
454	Occupied rent-free	21507017
1325	Owned and fully paid off	21507017
69	Other	21507017
22	Rented	21507018
229	Owned but not yet paid off	21507018
120	Occupied rent-free	21507018
2339	Owned and fully paid off	21507018
34	Other	21507018
46	Rented	21507019
136	Owned but not yet paid off	21507019
363	Occupied rent-free	21507019
2114	Owned and fully paid off	21507019
120	Other	21507019
123	Rented	21507020
208	Owned but not yet paid off	21507020
26	Occupied rent-free	21507020
2704	Owned and fully paid off	21507020
64	Other	21507020
56	Rented	21507021
84	Owned but not yet paid off	21507021
256	Occupied rent-free	21507021
2407	Owned and fully paid off	21507021
41	Other	21507021
53	Rented	21507022
387	Owned but not yet paid off	21507022
367	Occupied rent-free	21507022
1997	Owned and fully paid off	21507022
34	Other	21507022
109	Rented	21507023
246	Owned but not yet paid off	21507023
508	Occupied rent-free	21507023
2152	Owned and fully paid off	21507023
162	Other	21507023
158	Rented	21507024
262	Owned but not yet paid off	21507024
805	Occupied rent-free	21507024
1593	Owned and fully paid off	21507024
32	Other	21507024
48	Rented	21507025
125	Owned but not yet paid off	21507025
1937	Occupied rent-free	21507025
1369	Owned and fully paid off	21507025
23	Other	21507025
12	Rented	21507026
208	Owned but not yet paid off	21507026
324	Occupied rent-free	21507026
1587	Owned and fully paid off	21507026
464	Other	21507026
32	Rented	21507027
192	Owned but not yet paid off	21507027
699	Occupied rent-free	21507027
1295	Owned and fully paid off	21507027
31	Other	21507027
18	Rented	21507028
138	Owned but not yet paid off	21507028
382	Occupied rent-free	21507028
1834	Owned and fully paid off	21507028
19	Other	21507028
655	Rented	21507029
234	Owned but not yet paid off	21507029
490	Occupied rent-free	21507029
1890	Owned and fully paid off	21507029
84	Other	21507029
1272	Rented	21507030
63	Owned but not yet paid off	21507030
360	Occupied rent-free	21507030
1488	Owned and fully paid off	21507030
168	Other	21507030
22	Rented	21507031
222	Owned but not yet paid off	21507031
697	Occupied rent-free	21507031
1166	Owned and fully paid off	21507031
228	Other	21507031
93	Rented	21507032
51	Owned but not yet paid off	21507032
483	Occupied rent-free	21507032
2220	Owned and fully paid off	21507032
13	Other	21507032
436	Rented	21507033
73	Owned but not yet paid off	21507033
196	Occupied rent-free	21507033
2006	Owned and fully paid off	21507033
253	Other	21507033
32	Rented	21507034
162	Owned but not yet paid off	21507034
1076	Occupied rent-free	21507034
313	Owned and fully paid off	21507034
481	Other	21507034
54	Rented	21507035
331	Owned but not yet paid off	21507035
582	Occupied rent-free	21507035
944	Owned and fully paid off	21507035
657	Other	21507035
521	Rented	24401001
26	Owned but not yet paid off	24401001
293	Occupied rent-free	24401001
323	Owned and fully paid off	24401001
167	Other	24401001
242	Rented	24401002
38	Owned but not yet paid off	24401002
493	Occupied rent-free	24401002
1779	Owned and fully paid off	24401002
518	Other	24401002
32	Rented	24401003
155	Owned but not yet paid off	24401003
140	Occupied rent-free	24401003
987	Owned and fully paid off	24401003
566	Other	24401003
7	Rented	24401004
44	Owned but not yet paid off	24401004
1072	Occupied rent-free	24401004
535	Owned and fully paid off	24401004
347	Other	24401004
49	Rented	24401005
82	Owned but not yet paid off	24401005
325	Occupied rent-free	24401005
1343	Owned and fully paid off	24401005
239	Other	24401005
263	Rented	24401006
20	Owned but not yet paid off	24401006
484	Occupied rent-free	24401006
447	Owned and fully paid off	24401006
754	Other	24401006
22	Rented	24401007
117	Owned but not yet paid off	24401007
181	Occupied rent-free	24401007
1184	Owned and fully paid off	24401007
180	Other	24401007
11	Rented	24401008
187	Owned but not yet paid off	24401008
176	Occupied rent-free	24401008
571	Owned and fully paid off	24401008
261	Other	24401008
13	Rented	24401009
166	Owned but not yet paid off	24401009
973	Occupied rent-free	24401009
444	Owned and fully paid off	24401009
63	Other	24401009
55	Rented	24401010
7	Owned but not yet paid off	24401010
423	Occupied rent-free	24401010
363	Owned and fully paid off	24401010
1307	Other	24401010
37	Rented	24401011
99	Owned but not yet paid off	24401011
1004	Occupied rent-free	24401011
1455	Owned and fully paid off	24401011
220	Other	24401011
27	Rented	24401012
39	Owned but not yet paid off	24401012
374	Occupied rent-free	24401012
1014	Owned and fully paid off	24401012
189	Other	24401012
24	Rented	24401013
230	Owned but not yet paid off	24401013
252	Occupied rent-free	24401013
752	Owned and fully paid off	24401013
416	Other	24401013
73	Rented	24401014
142	Owned but not yet paid off	24401014
443	Occupied rent-free	24401014
496	Owned and fully paid off	24401014
523	Other	24401014
48	Rented	24401015
22	Owned but not yet paid off	24401015
708	Occupied rent-free	24401015
881	Owned and fully paid off	24401015
197	Other	24401015
48	Rented	24401016
260	Owned but not yet paid off	24401016
574	Occupied rent-free	24401016
582	Owned and fully paid off	24401016
189	Other	24401016
45	Rented	24401017
51	Owned but not yet paid off	24401017
80	Occupied rent-free	24401017
1308	Owned and fully paid off	24401017
716	Other	24401017
19	Rented	24401018
82	Owned but not yet paid off	24401018
236	Occupied rent-free	24401018
1294	Owned and fully paid off	24401018
290	Other	24401018
694	Rented	24401019
208	Owned but not yet paid off	24401019
198	Occupied rent-free	24401019
254	Owned and fully paid off	24401019
25	Other	24401019
845	Rented	24401020
241	Owned but not yet paid off	24401020
448	Occupied rent-free	24401020
1829	Owned and fully paid off	24401020
185	Other	24401020
101	Rented	24401021
157	Owned but not yet paid off	24401021
166	Occupied rent-free	24401021
1197	Owned and fully paid off	24401021
4	Other	24401021
38	Rented	24401022
464	Owned but not yet paid off	24401022
170	Occupied rent-free	24401022
1036	Owned and fully paid off	24401022
44	Other	24401022
52	Rented	24401023
202	Owned but not yet paid off	24401023
372	Occupied rent-free	24401023
801	Owned and fully paid off	24401023
126	Other	24401023
27	Rented	24401024
212	Owned but not yet paid off	24401024
262	Occupied rent-free	24401024
751	Owned and fully paid off	24401024
126	Other	24401024
56	Rented	24401025
218	Owned but not yet paid off	24401025
175	Occupied rent-free	24401025
1174	Owned and fully paid off	24401025
35	Other	24401025
464	Rented	24401026
166	Owned but not yet paid off	24401026
601	Occupied rent-free	24401026
945	Owned and fully paid off	24401026
26	Other	24401026
28	Rented	24402001
21	Owned but not yet paid off	24402001
191	Occupied rent-free	24402001
1147	Owned and fully paid off	24402001
5	Other	24402001
18	Rented	24402002
203	Owned but not yet paid off	24402002
561	Occupied rent-free	24402002
465	Owned and fully paid off	24402002
0	Other	24402002
47	Rented	24402003
103	Owned but not yet paid off	24402003
282	Occupied rent-free	24402003
1357	Owned and fully paid off	24402003
113	Other	24402003
72	Rented	24402004
118	Owned but not yet paid off	24402004
325	Occupied rent-free	24402004
1133	Owned and fully paid off	24402004
77	Other	24402004
10	Rented	24402005
52	Owned but not yet paid off	24402005
229	Occupied rent-free	24402005
942	Owned and fully paid off	24402005
9	Other	24402005
16	Rented	24402006
139	Owned but not yet paid off	24402006
353	Occupied rent-free	24402006
721	Owned and fully paid off	24402006
123	Other	24402006
1325	Rented	24402007
18	Owned but not yet paid off	24402007
324	Occupied rent-free	24402007
877	Owned and fully paid off	24402007
9	Other	24402007
14	Rented	24402008
18	Owned but not yet paid off	24402008
42	Occupied rent-free	24402008
1401	Owned and fully paid off	24402008
53	Other	24402008
33	Rented	24402009
5	Owned but not yet paid off	24402009
47	Occupied rent-free	24402009
509	Owned and fully paid off	24402009
15	Other	24402009
14	Rented	24402010
109	Owned but not yet paid off	24402010
160	Occupied rent-free	24402010
1674	Owned and fully paid off	24402010
18	Other	24402010
79	Rented	24402011
102	Owned but not yet paid off	24402011
282	Occupied rent-free	24402011
1480	Owned and fully paid off	24402011
103	Other	24402011
161	Rented	24402012
208	Owned but not yet paid off	24402012
332	Occupied rent-free	24402012
929	Owned and fully paid off	24402012
121	Other	24402012
2	Rented	24402013
106	Owned but not yet paid off	24402013
149	Occupied rent-free	24402013
1171	Owned and fully paid off	24402013
235	Other	24402013
54	Rented	24402014
130	Owned but not yet paid off	24402014
197	Occupied rent-free	24402014
1448	Owned and fully paid off	24402014
117	Other	24402014
85	Rented	24402015
25	Owned but not yet paid off	24402015
232	Occupied rent-free	24402015
893	Owned and fully paid off	24402015
558	Other	24402015
602	Rented	24402016
211	Owned but not yet paid off	24402016
852	Occupied rent-free	24402016
994	Owned and fully paid off	24402016
36	Other	24402016
472	Rented	24402017
54	Owned but not yet paid off	24402017
578	Occupied rent-free	24402017
750	Owned and fully paid off	24402017
37	Other	24402017
1533	Rented	24402018
15	Owned but not yet paid off	24402018
395	Occupied rent-free	24402018
319	Owned and fully paid off	24402018
20	Other	24402018
45	Rented	24402019
217	Owned but not yet paid off	24402019
481	Occupied rent-free	24402019
1149	Owned and fully paid off	24402019
102	Other	24402019
49	Rented	24402020
110	Owned but not yet paid off	24402020
297	Occupied rent-free	24402020
1593	Owned and fully paid off	24402020
10	Other	24402020
54	Rented	24402021
13	Owned but not yet paid off	24402021
211	Occupied rent-free	24402021
1497	Owned and fully paid off	24402021
12	Other	24402021
5	Rented	24402022
92	Owned but not yet paid off	24402022
416	Occupied rent-free	24402022
334	Owned and fully paid off	24402022
863	Other	24402022
36	Rented	24402023
198	Owned but not yet paid off	24402023
555	Occupied rent-free	24402023
456	Owned and fully paid off	24402023
484	Other	24402023
16	Rented	24402024
307	Owned but not yet paid off	24402024
188	Occupied rent-free	24402024
1097	Owned and fully paid off	24402024
297	Other	24402024
14	Rented	24402025
7	Owned but not yet paid off	24402025
308	Occupied rent-free	24402025
873	Owned and fully paid off	24402025
19	Other	24402025
19	Rented	24402026
182	Owned but not yet paid off	24402026
687	Occupied rent-free	24402026
321	Owned and fully paid off	24402026
322	Other	24402026
62	Rented	24402027
11	Owned but not yet paid off	24402027
293	Occupied rent-free	24402027
621	Owned and fully paid off	24402027
383	Other	24402027
1544	Rented	24403001
192	Owned but not yet paid off	24403001
280	Occupied rent-free	24403001
484	Owned and fully paid off	24403001
231	Other	24403001
8	Rented	24403002
352	Owned but not yet paid off	24403002
116	Occupied rent-free	24403002
766	Owned and fully paid off	24403002
8	Other	24403002
57	Rented	24403003
83	Owned but not yet paid off	24403003
552	Occupied rent-free	24403003
879	Owned and fully paid off	24403003
62	Other	24403003
36	Rented	24403004
8	Owned but not yet paid off	24403004
163	Occupied rent-free	24403004
1177	Owned and fully paid off	24403004
10	Other	24403004
15	Rented	24403005
303	Owned but not yet paid off	24403005
424	Occupied rent-free	24403005
822	Owned and fully paid off	24403005
4	Other	24403005
67	Rented	24403006
37	Owned but not yet paid off	24403006
911	Occupied rent-free	24403006
1118	Owned and fully paid off	24403006
70	Other	24403006
56	Rented	24403007
332	Owned but not yet paid off	24403007
102	Occupied rent-free	24403007
712	Owned and fully paid off	24403007
358	Other	24403007
29	Rented	24403008
56	Owned but not yet paid off	24403008
189	Occupied rent-free	24403008
908	Owned and fully paid off	24403008
774	Other	24403008
50	Rented	24403009
36	Owned but not yet paid off	24403009
141	Occupied rent-free	24403009
1919	Owned and fully paid off	24403009
178	Other	24403009
35	Rented	24403010
6	Owned but not yet paid off	24403010
172	Occupied rent-free	24403010
578	Owned and fully paid off	24403010
1080	Other	24403010
25	Rented	24403011
15	Owned but not yet paid off	24403011
451	Occupied rent-free	24403011
553	Owned and fully paid off	24403011
514	Other	24403011
6	Rented	24403012
50	Owned but not yet paid off	24403012
127	Occupied rent-free	24403012
261	Owned and fully paid off	24403012
451	Other	24403012
318	Rented	24403013
26	Owned but not yet paid off	24403013
455	Occupied rent-free	24403013
681	Owned and fully paid off	24403013
183	Other	24403013
46	Rented	24403014
67	Owned but not yet paid off	24403014
128	Occupied rent-free	24403014
1109	Owned and fully paid off	24403014
41	Other	24403014
19	Rented	24403015
12	Owned but not yet paid off	24403015
166	Occupied rent-free	24403015
1181	Owned and fully paid off	24403015
176	Other	24403015
85	Rented	24403016
3	Owned but not yet paid off	24403016
59	Occupied rent-free	24403016
998	Owned and fully paid off	24403016
155	Other	24403016
17	Rented	24403017
118	Owned but not yet paid off	24403017
298	Occupied rent-free	24403017
1312	Owned and fully paid off	24403017
138	Other	24403017
8	Rented	24403018
79	Owned but not yet paid off	24403018
213	Occupied rent-free	24403018
789	Owned and fully paid off	24403018
706	Other	24403018
29	Rented	24403019
142	Owned but not yet paid off	24403019
306	Occupied rent-free	24403019
974	Owned and fully paid off	24403019
177	Other	24403019
27	Rented	24403020
30	Owned but not yet paid off	24403020
57	Occupied rent-free	24403020
772	Owned and fully paid off	24403020
946	Other	24403020
77	Rented	24403021
6	Owned but not yet paid off	24403021
303	Occupied rent-free	24403021
443	Owned and fully paid off	24403021
468	Other	24403021
15	Rented	24403022
41	Owned but not yet paid off	24403022
113	Occupied rent-free	24403022
389	Owned and fully paid off	24403022
226	Other	24403022
245	Rented	24403023
150	Owned but not yet paid off	24403023
115	Occupied rent-free	24403023
1811	Owned and fully paid off	24403023
70	Other	24403023
1022	Rented	24403024
17	Owned but not yet paid off	24403024
111	Occupied rent-free	24403024
713	Owned and fully paid off	24403024
5	Other	24403024
35	Rented	24403025
15	Owned but not yet paid off	24403025
85	Occupied rent-free	24403025
90	Owned and fully paid off	24403025
159	Other	24403025
42	Rented	24403026
67	Owned but not yet paid off	24403026
142	Occupied rent-free	24403026
1137	Owned and fully paid off	24403026
142	Other	24403026
27	Rented	24403027
99	Owned but not yet paid off	24403027
200	Occupied rent-free	24403027
1355	Owned and fully paid off	24403027
30	Other	24403027
12	Rented	24403028
29	Owned but not yet paid off	24403028
99	Occupied rent-free	24403028
382	Owned and fully paid off	24403028
90	Other	24403028
13	Rented	24403029
206	Owned but not yet paid off	24403029
367	Occupied rent-free	24403029
252	Owned and fully paid off	24403029
660	Other	24403029
22	Rented	24403030
111	Owned but not yet paid off	24403030
5	Occupied rent-free	24403030
672	Owned and fully paid off	24403030
30	Other	24403030
37	Rented	24403031
223	Owned but not yet paid off	24403031
57	Occupied rent-free	24403031
1115	Owned and fully paid off	24403031
109	Other	24403031
24	Rented	24404001
53	Owned but not yet paid off	24404001
154	Occupied rent-free	24404001
465	Owned and fully paid off	24404001
309	Other	24404001
36	Rented	24404002
176	Owned but not yet paid off	24404002
370	Occupied rent-free	24404002
677	Owned and fully paid off	24404002
82	Other	24404002
11	Rented	24404003
52	Owned but not yet paid off	24404003
128	Occupied rent-free	24404003
1078	Owned and fully paid off	24404003
3	Other	24404003
112	Rented	24404004
12	Owned but not yet paid off	24404004
493	Occupied rent-free	24404004
608	Owned and fully paid off	24404004
8	Other	24404004
32	Rented	24404005
104	Owned but not yet paid off	24404005
540	Occupied rent-free	24404005
219	Owned and fully paid off	24404005
120	Other	24404005
11	Rented	24404006
102	Owned but not yet paid off	24404006
41	Occupied rent-free	24404006
1142	Owned and fully paid off	24404006
128	Other	24404006
12	Rented	24404007
72	Owned but not yet paid off	24404007
385	Occupied rent-free	24404007
941	Owned and fully paid off	24404007
324	Other	24404007
24	Rented	24404008
93	Owned but not yet paid off	24404008
86	Occupied rent-free	24404008
1271	Owned and fully paid off	24404008
65	Other	24404008
783	Rented	24404009
165	Owned but not yet paid off	24404009
496	Occupied rent-free	24404009
273	Owned and fully paid off	24404009
280	Other	24404009
10	Rented	24404010
317	Owned but not yet paid off	24404010
73	Occupied rent-free	24404010
709	Owned and fully paid off	24404010
116	Other	24404010
9	Rented	24404011
333	Owned but not yet paid off	24404011
229	Occupied rent-free	24404011
590	Owned and fully paid off	24404011
287	Other	24404011
29	Rented	24404012
39	Owned but not yet paid off	24404012
126	Occupied rent-free	24404012
506	Owned and fully paid off	24404012
11	Other	24404012
16	Rented	24404013
11	Owned but not yet paid off	24404013
278	Occupied rent-free	24404013
1246	Owned and fully paid off	24404013
20	Other	24404013
97	Rented	24404014
129	Owned but not yet paid off	24404014
291	Occupied rent-free	24404014
704	Owned and fully paid off	24404014
190	Other	24404014
8	Rented	24404015
28	Owned but not yet paid off	24404015
43	Occupied rent-free	24404015
694	Owned and fully paid off	24404015
128	Other	24404015
57	Rented	24404016
197	Owned but not yet paid off	24404016
485	Occupied rent-free	24404016
854	Owned and fully paid off	24404016
255	Other	24404016
9	Rented	24404017
85	Owned but not yet paid off	24404017
227	Occupied rent-free	24404017
867	Owned and fully paid off	24404017
142	Other	24404017
34	Rented	24404018
51	Owned but not yet paid off	24404018
386	Occupied rent-free	24404018
850	Owned and fully paid off	24404018
69	Other	24404018
1724	Rented	29200001
239	Owned but not yet paid off	29200001
1279	Occupied rent-free	29200001
697	Owned and fully paid off	29200001
114	Other	29200001
713	Rented	29200002
155	Owned but not yet paid off	29200002
2108	Occupied rent-free	29200002
1035	Owned and fully paid off	29200002
56	Other	29200002
5252	Rented	29200003
531	Owned but not yet paid off	29200003
86	Occupied rent-free	29200003
627	Owned and fully paid off	29200003
32	Other	29200003
1202	Rented	29200004
1714	Owned but not yet paid off	29200004
132	Occupied rent-free	29200004
1303	Owned and fully paid off	29200004
109	Other	29200004
1285	Rented	29200005
191	Owned but not yet paid off	29200005
584	Occupied rent-free	29200005
2099	Owned and fully paid off	29200005
213	Other	29200005
1053	Rented	29200006
311	Owned but not yet paid off	29200006
1868	Occupied rent-free	29200006
965	Owned and fully paid off	29200006
82	Other	29200006
422	Rented	29200007
287	Owned but not yet paid off	29200007
2070	Occupied rent-free	29200007
772	Owned and fully paid off	29200007
39	Other	29200007
743	Rented	29200008
354	Owned but not yet paid off	29200008
940	Occupied rent-free	29200008
1056	Owned and fully paid off	29200008
28	Other	29200008
2564	Rented	29200009
1508	Owned but not yet paid off	29200009
420	Occupied rent-free	29200009
1537	Owned and fully paid off	29200009
306	Other	29200009
843	Rented	29200010
428	Owned but not yet paid off	29200010
715	Occupied rent-free	29200010
1915	Owned and fully paid off	29200010
74	Other	29200010
905	Rented	29200011
397	Owned but not yet paid off	29200011
1091	Occupied rent-free	29200011
2017	Owned and fully paid off	29200011
156	Other	29200011
980	Rented	29200012
288	Owned but not yet paid off	29200012
1314	Occupied rent-free	29200012
1470	Owned and fully paid off	29200012
306	Other	29200012
1361	Rented	29200013
427	Owned but not yet paid off	29200013
3482	Occupied rent-free	29200013
3082	Owned and fully paid off	29200013
166	Other	29200013
358	Rented	29200014
68	Owned but not yet paid off	29200014
328	Occupied rent-free	29200014
1762	Owned and fully paid off	29200014
77	Other	29200014
1189	Rented	29200015
785	Owned but not yet paid off	29200015
704	Occupied rent-free	29200015
1096	Owned and fully paid off	29200015
259	Other	29200015
2011	Rented	29200016
3248	Owned but not yet paid off	29200016
1170	Occupied rent-free	29200016
1919	Owned and fully paid off	29200016
555	Other	29200016
872	Rented	29200017
299	Owned but not yet paid off	29200017
916	Occupied rent-free	29200017
2352	Owned and fully paid off	29200017
205	Other	29200017
1411	Rented	29200018
1156	Owned but not yet paid off	29200018
96	Occupied rent-free	29200018
963	Owned and fully paid off	29200018
79	Other	29200018
587	Rented	29200019
524	Owned but not yet paid off	29200019
486	Occupied rent-free	29200019
1251	Owned and fully paid off	29200019
31	Other	29200019
714	Rented	29200020
284	Owned but not yet paid off	29200020
280	Occupied rent-free	29200020
1831	Owned and fully paid off	29200020
63	Other	29200020
630	Rented	29200021
564	Owned but not yet paid off	29200021
404	Occupied rent-free	29200021
2171	Owned and fully paid off	29200021
68	Other	29200021
762	Rented	29200022
907	Owned but not yet paid off	29200022
244	Occupied rent-free	29200022
2496	Owned and fully paid off	29200022
65	Other	29200022
248	Rented	29200023
891	Owned but not yet paid off	29200023
1426	Occupied rent-free	29200023
1783	Owned and fully paid off	29200023
53	Other	29200023
257	Rented	29200024
479	Owned but not yet paid off	29200024
1573	Occupied rent-free	29200024
1961	Owned and fully paid off	29200024
178	Other	29200024
974	Rented	29200025
390	Owned but not yet paid off	29200025
663	Occupied rent-free	29200025
1371	Owned and fully paid off	29200025
145	Other	29200025
90	Rented	29200026
270	Owned but not yet paid off	29200026
2284	Occupied rent-free	29200026
1107	Owned and fully paid off	29200026
479	Other	29200026
1074	Rented	29200027
1281	Owned but not yet paid off	29200027
295	Occupied rent-free	29200027
958	Owned and fully paid off	29200027
160	Other	29200027
1791	Rented	29200028
1101	Owned but not yet paid off	29200028
1988	Occupied rent-free	29200028
1535	Owned and fully paid off	29200028
118	Other	29200028
2183	Rented	29200029
955	Owned but not yet paid off	29200029
1905	Occupied rent-free	29200029
1757	Owned and fully paid off	29200029
184	Other	29200029
512	Rented	29200030
359	Owned but not yet paid off	29200030
646	Occupied rent-free	29200030
1910	Owned and fully paid off	29200030
298	Other	29200030
954	Rented	29200031
481	Owned but not yet paid off	29200031
2081	Occupied rent-free	29200031
3002	Owned and fully paid off	29200031
167	Other	29200031
25	Rented	29200032
346	Owned but not yet paid off	29200032
2060	Occupied rent-free	29200032
1962	Owned and fully paid off	29200032
31	Other	29200032
26	Rented	29200033
34	Owned but not yet paid off	29200033
3338	Occupied rent-free	29200033
668	Owned and fully paid off	29200033
126	Other	29200033
1222	Rented	29200034
231	Owned but not yet paid off	29200034
505	Occupied rent-free	29200034
1631	Owned and fully paid off	29200034
301	Other	29200034
648	Rented	29200035
1089	Owned but not yet paid off	29200035
796	Occupied rent-free	29200035
1539	Owned and fully paid off	29200035
220	Other	29200035
581	Rented	29200036
276	Owned but not yet paid off	29200036
1202	Occupied rent-free	29200036
1973	Owned and fully paid off	29200036
353	Other	29200036
1380	Rented	29200037
787	Owned but not yet paid off	29200037
320	Occupied rent-free	29200037
1370	Owned and fully paid off	29200037
326	Other	29200037
133	Rented	29200038
90	Owned but not yet paid off	29200038
1960	Occupied rent-free	29200038
1925	Owned and fully paid off	29200038
177	Other	29200038
760	Rented	29200039
591	Owned but not yet paid off	29200039
1006	Occupied rent-free	29200039
1925	Owned and fully paid off	29200039
379	Other	29200039
77	Rented	29200040
92	Owned but not yet paid off	29200040
1106	Occupied rent-free	29200040
1932	Owned and fully paid off	29200040
49	Other	29200040
1732	Rented	29200041
260	Owned but not yet paid off	29200041
202	Occupied rent-free	29200041
1643	Owned and fully paid off	29200041
54	Other	29200041
902	Rented	29200042
329	Owned but not yet paid off	29200042
519	Occupied rent-free	29200042
1707	Owned and fully paid off	29200042
148	Other	29200042
873	Rented	29200043
1050	Owned but not yet paid off	29200043
649	Occupied rent-free	29200043
2508	Owned and fully paid off	29200043
122	Other	29200043
1027	Rented	29200044
671	Owned but not yet paid off	29200044
558	Occupied rent-free	29200044
3130	Owned and fully paid off	29200044
62	Other	29200044
603	Rented	29200045
279	Owned but not yet paid off	29200045
665	Occupied rent-free	29200045
1744	Owned and fully paid off	29200045
251	Other	29200045
1616	Rented	29200046
1479	Owned but not yet paid off	29200046
735	Occupied rent-free	29200046
1715	Owned and fully paid off	29200046
301	Other	29200046
3090	Rented	29200047
365	Owned but not yet paid off	29200047
75	Occupied rent-free	29200047
578	Owned and fully paid off	29200047
71	Other	29200047
514	Rented	29200048
396	Owned but not yet paid off	29200048
503	Occupied rent-free	29200048
1986	Owned and fully paid off	29200048
26	Other	29200048
52	Rented	29200049
376	Owned but not yet paid off	29200049
1242	Occupied rent-free	29200049
769	Owned and fully paid off	29200049
531	Other	29200049
1238	Rented	29200050
97	Owned but not yet paid off	29200050
507	Occupied rent-free	29200050
1227	Owned and fully paid off	29200050
37	Other	29200050
1929	Rented	29300001
1678	Owned but not yet paid off	29300001
386	Occupied rent-free	29300001
1692	Owned and fully paid off	29300001
148	Other	29300001
4962	Rented	29300002
1329	Owned but not yet paid off	29300002
212	Occupied rent-free	29300002
2079	Owned and fully paid off	29300002
114	Other	29300002
2169	Rented	29300003
1614	Owned but not yet paid off	29300003
144	Occupied rent-free	29300003
2082	Owned and fully paid off	29300003
122	Other	29300003
1279	Rented	29300004
358	Owned but not yet paid off	29300004
2969	Occupied rent-free	29300004
2864	Owned and fully paid off	29300004
337	Other	29300004
4539	Rented	29300005
1036	Owned but not yet paid off	29300005
75	Occupied rent-free	29300005
1133	Owned and fully paid off	29300005
52	Other	29300005
1153	Rented	29300006
2188	Owned but not yet paid off	29300006
82	Occupied rent-free	29300006
1448	Owned and fully paid off	29300006
101	Other	29300006
1446	Rented	29300007
1353	Owned but not yet paid off	29300007
100	Occupied rent-free	29300007
2367	Owned and fully paid off	29300007
85	Other	29300007
2304	Rented	29300008
3075	Owned but not yet paid off	29300008
136	Occupied rent-free	29300008
2427	Owned and fully paid off	29300008
70	Other	29300008
1368	Rented	29300009
2153	Owned but not yet paid off	29300009
88	Occupied rent-free	29300009
2027	Owned and fully paid off	29300009
89	Other	29300009
952	Rented	29300010
757	Owned but not yet paid off	29300010
224	Occupied rent-free	29300010
2532	Owned and fully paid off	29300010
83	Other	29300010
1562	Rented	29300011
839	Owned but not yet paid off	29300011
124	Occupied rent-free	29300011
1609	Owned and fully paid off	29300011
28	Other	29300011
2095	Rented	29300012
2311	Owned but not yet paid off	29300012
749	Occupied rent-free	29300012
3031	Owned and fully paid off	29300012
201	Other	29300012
422	Rented	29300013
111	Owned but not yet paid off	29300013
770	Occupied rent-free	29300013
2417	Owned and fully paid off	29300013
357	Other	29300013
483	Rented	29300014
108	Owned but not yet paid off	29300014
438	Occupied rent-free	29300014
2543	Owned and fully paid off	29300014
49	Other	29300014
596	Rented	29300015
126	Owned but not yet paid off	29300015
1377	Occupied rent-free	29300015
1394	Owned and fully paid off	29300015
167	Other	29300015
242	Rented	29300016
31	Owned but not yet paid off	29300016
1076	Occupied rent-free	29300016
1067	Owned and fully paid off	29300016
57	Other	29300016
510	Rented	29300017
64	Owned but not yet paid off	29300017
1727	Occupied rent-free	29300017
2046	Owned and fully paid off	29300017
41	Other	29300017
851	Rented	29300018
77	Owned but not yet paid off	29300018
1269	Occupied rent-free	29300018
2622	Owned and fully paid off	29300018
173	Other	29300018
439	Rented	29300019
30	Owned but not yet paid off	29300019
652	Occupied rent-free	29300019
1460	Owned and fully paid off	29300019
560	Other	29300019
582	Rented	29300020
25	Owned but not yet paid off	29300020
843	Occupied rent-free	29300020
1985	Owned and fully paid off	29300020
39	Other	29300020
574	Rented	29300021
181	Owned but not yet paid off	29300021
197	Occupied rent-free	29300021
2186	Owned and fully paid off	29300021
70	Other	29300021
820	Rented	29300022
85	Owned but not yet paid off	29300022
321	Occupied rent-free	29300022
2454	Owned and fully paid off	29300022
52	Other	29300022
338	Rented	29300023
603	Owned but not yet paid off	29300023
128	Occupied rent-free	29300023
2421	Owned and fully paid off	29300023
54	Other	29300023
499	Rented	29300024
79	Owned but not yet paid off	29300024
575	Occupied rent-free	29300024
2312	Owned and fully paid off	29300024
56	Other	29300024
667	Rented	29300025
74	Owned but not yet paid off	29300025
369	Occupied rent-free	29300025
2318	Owned and fully paid off	29300025
22	Other	29300025
487	Rented	29300026
56	Owned but not yet paid off	29300026
500	Occupied rent-free	29300026
1733	Owned and fully paid off	29300026
83	Other	29300026
422	Rented	29300027
28	Owned but not yet paid off	29300027
1145	Occupied rent-free	29300027
2182	Owned and fully paid off	29300027
77	Other	29300027
678	Rented	29300028
267	Owned but not yet paid off	29300028
326	Occupied rent-free	29300028
3308	Owned and fully paid off	29300028
40	Other	29300028
663	Rented	29300029
1020	Owned but not yet paid off	29300029
144	Occupied rent-free	29300029
2740	Owned and fully paid off	29300029
283	Other	29300029
379	Rented	29300030
910	Owned but not yet paid off	29300030
836	Occupied rent-free	29300030
1899	Owned and fully paid off	29300030
206	Other	29300030
1606	Rented	29300031
858	Owned but not yet paid off	29300031
819	Occupied rent-free	29300031
1748	Owned and fully paid off	29300031
487	Other	29300031
675	Rented	29300032
725	Owned but not yet paid off	29300032
1376	Occupied rent-free	29300032
2882	Owned and fully paid off	29300032
442	Other	29300032
527	Rented	29300033
315	Owned but not yet paid off	29300033
1199	Occupied rent-free	29300033
2458	Owned and fully paid off	29300033
91	Other	29300033
403	Rented	29300034
787	Owned but not yet paid off	29300034
1017	Occupied rent-free	29300034
2059	Owned and fully paid off	29300034
609	Other	29300034
681	Rented	29300035
525	Owned but not yet paid off	29300035
189	Occupied rent-free	29300035
2928	Owned and fully paid off	29300035
68	Other	29300035
415	Rented	29300036
1386	Owned but not yet paid off	29300036
715	Occupied rent-free	29300036
1372	Owned and fully paid off	29300036
31	Other	29300036
404	Rented	29300037
163	Owned but not yet paid off	29300037
973	Occupied rent-free	29300037
2681	Owned and fully paid off	29300037
373	Other	29300037
429	Rented	29300038
234	Owned but not yet paid off	29300038
633	Occupied rent-free	29300038
2943	Owned and fully paid off	29300038
254	Other	29300038
1212	Rented	29300039
2783	Owned but not yet paid off	29300039
80	Occupied rent-free	29300039
1689	Owned and fully paid off	29300039
189	Other	29300039
1553	Rented	29300040
718	Owned but not yet paid off	29300040
2058	Occupied rent-free	29300040
2824	Owned and fully paid off	29300040
505	Other	29300040
1670	Rented	29300041
994	Owned but not yet paid off	29300041
7309	Occupied rent-free	29300041
5427	Owned and fully paid off	29300041
515	Other	29300041
397	Rented	29300042
94	Owned but not yet paid off	29300042
1929	Occupied rent-free	29300042
2745	Owned and fully paid off	29300042
108	Other	29300042
348	Rented	29300043
173	Owned but not yet paid off	29300043
966	Occupied rent-free	29300043
2449	Owned and fully paid off	29300043
81	Other	29300043
867	Rented	29300044
298	Owned but not yet paid off	29300044
1241	Occupied rent-free	29300044
4818	Owned and fully paid off	29300044
69	Other	29300044
680	Rented	29300045
161	Owned but not yet paid off	29300045
2441	Occupied rent-free	29300045
2461	Owned and fully paid off	29300045
84	Other	29300045
630	Rented	29300046
164	Owned but not yet paid off	29300046
878	Occupied rent-free	29300046
3001	Owned and fully paid off	29300046
150	Other	29300046
346	Rented	29300047
212	Owned but not yet paid off	29300047
590	Occupied rent-free	29300047
2680	Owned and fully paid off	29300047
199	Other	29300047
1391	Rented	29300048
681	Owned but not yet paid off	29300048
590	Occupied rent-free	29300048
1431	Owned and fully paid off	29300048
50	Other	29300048
706	Rented	29300049
970	Owned but not yet paid off	29300049
163	Occupied rent-free	29300049
2054	Owned and fully paid off	29300049
61	Other	29300049
1280	Rented	29300050
132	Owned but not yet paid off	29300050
1484	Occupied rent-free	29300050
3180	Owned and fully paid off	29300050
280	Other	29300050
2117	Rented	29300051
2773	Owned but not yet paid off	29300051
144	Occupied rent-free	29300051
2577	Owned and fully paid off	29300051
75	Other	29300051
1396	Rented	29300052
1396	Owned but not yet paid off	29300052
485	Occupied rent-free	29300052
3664	Owned and fully paid off	29300052
101	Other	29300052
1395	Rented	29300053
1470	Owned but not yet paid off	29300053
1606	Occupied rent-free	29300053
3672	Owned and fully paid off	29300053
569	Other	29300053
869	Rented	29300054
201	Owned but not yet paid off	29300054
1197	Occupied rent-free	29300054
4603	Owned and fully paid off	29300054
307	Other	29300054
960	Rented	29300055
99	Owned but not yet paid off	29300055
984	Occupied rent-free	29300055
5568	Owned and fully paid off	29300055
220	Other	29300055
959	Rented	29300056
307	Owned but not yet paid off	29300056
423	Occupied rent-free	29300056
5069	Owned and fully paid off	29300056
103	Other	29300056
516	Rented	29300057
879	Owned but not yet paid off	29300057
226	Occupied rent-free	29300057
2374	Owned and fully paid off	29300057
524	Other	29300057
581	Rented	29300058
761	Owned but not yet paid off	29300058
286	Occupied rent-free	29300058
2809	Owned and fully paid off	29300058
149	Other	29300058
377	Rented	29300059
1901	Owned but not yet paid off	29300059
59	Occupied rent-free	29300059
1965	Owned and fully paid off	29300059
82	Other	29300059
1714	Rented	29300060
1287	Owned but not yet paid off	29300060
1270	Occupied rent-free	29300060
2557	Owned and fully paid off	29300060
790	Other	29300060
279	Rented	41601001
42	Owned but not yet paid off	41601001
578	Occupied rent-free	41601001
751	Owned and fully paid off	41601001
23	Other	41601001
129	Rented	41601002
38	Owned but not yet paid off	41601002
409	Occupied rent-free	41601002
1106	Owned and fully paid off	41601002
55	Other	41601002
560	Rented	41601003
88	Owned but not yet paid off	41601003
765	Occupied rent-free	41601003
774	Owned and fully paid off	41601003
218	Other	41601003
193	Rented	41601004
7	Owned but not yet paid off	41601004
118	Occupied rent-free	41601004
1383	Owned and fully paid off	41601004
39	Other	41601004
522	Rented	41601005
64	Owned but not yet paid off	41601005
222	Occupied rent-free	41601005
898	Owned and fully paid off	41601005
24	Other	41601005
398	Rented	41601006
49	Owned but not yet paid off	41601006
521	Occupied rent-free	41601006
868	Owned and fully paid off	41601006
120	Other	41601006
308	Rented	41602001
95	Owned but not yet paid off	41602001
570	Occupied rent-free	41602001
899	Owned and fully paid off	41602001
94	Other	41602001
454	Rented	41602002
99	Owned but not yet paid off	41602002
702	Occupied rent-free	41602002
805	Owned and fully paid off	41602002
155	Other	41602002
436	Rented	41602003
86	Owned but not yet paid off	41602003
221	Occupied rent-free	41602003
1228	Owned and fully paid off	41602003
51	Other	41602003
462	Rented	41602004
85	Owned but not yet paid off	41602004
415	Occupied rent-free	41602004
760	Owned and fully paid off	41602004
54	Other	41602004
344	Rented	41602005
83	Owned but not yet paid off	41602005
446	Occupied rent-free	41602005
914	Owned and fully paid off	41602005
83	Other	41602005
552	Rented	41602006
87	Owned but not yet paid off	41602006
390	Occupied rent-free	41602006
874	Owned and fully paid off	41602006
31	Other	41602006
474	Rented	41602007
56	Owned but not yet paid off	41602007
622	Occupied rent-free	41602007
623	Owned and fully paid off	41602007
103	Other	41602007
377	Rented	41602008
65	Owned but not yet paid off	41602008
318	Occupied rent-free	41602008
1189	Owned and fully paid off	41602008
32	Other	41602008
185	Rented	41603001
102	Owned but not yet paid off	41603001
583	Occupied rent-free	41603001
822	Owned and fully paid off	41603001
13	Other	41603001
655	Rented	41603002
775	Owned but not yet paid off	41603002
410	Occupied rent-free	41603002
273	Owned and fully paid off	41603002
94	Other	41603002
578	Rented	41603003
64	Owned but not yet paid off	41603003
632	Occupied rent-free	41603003
666	Owned and fully paid off	41603003
96	Other	41603003
262	Rented	41603004
182	Owned but not yet paid off	41603004
367	Occupied rent-free	41603004
182	Owned and fully paid off	41603004
8	Other	41603004
455	Rented	41603005
96	Owned but not yet paid off	41603005
424	Occupied rent-free	41603005
561	Owned and fully paid off	41603005
16	Other	41603005
538	Rented	41603006
69	Owned but not yet paid off	41603006
617	Occupied rent-free	41603006
994	Owned and fully paid off	41603006
74	Other	41603006
399	Rented	41604001
82	Owned but not yet paid off	41604001
317	Occupied rent-free	41604001
1740	Owned and fully paid off	41604001
82	Other	41604001
196	Rented	41604002
30	Owned but not yet paid off	41604002
120	Occupied rent-free	41604002
1165	Owned and fully paid off	41604002
70	Other	41604002
481	Rented	41604003
108	Owned but not yet paid off	41604003
340	Occupied rent-free	41604003
891	Owned and fully paid off	41604003
12	Other	41604003
192	Rented	41604004
13	Owned but not yet paid off	41604004
283	Occupied rent-free	41604004
1154	Owned and fully paid off	41604004
15	Other	41604004
269	Rented	41801001
126	Owned but not yet paid off	41801001
44	Occupied rent-free	41801001
903	Owned and fully paid off	41801001
16	Other	41801001
328	Rented	41801002
116	Owned but not yet paid off	41801002
1078	Occupied rent-free	41801002
726	Owned and fully paid off	41801002
39	Other	41801002
222	Rented	41801003
180	Owned but not yet paid off	41801003
376	Occupied rent-free	41801003
1015	Owned and fully paid off	41801003
184	Other	41801003
376	Rented	41801004
152	Owned but not yet paid off	41801004
259	Occupied rent-free	41801004
558	Owned and fully paid off	41801004
58	Other	41801004
424	Rented	41801005
239	Owned but not yet paid off	41801005
238	Occupied rent-free	41801005
1815	Owned and fully paid off	41801005
45	Other	41801005
290	Rented	41801006
110	Owned but not yet paid off	41801006
64	Occupied rent-free	41801006
207	Owned and fully paid off	41801006
50	Other	41801006
489	Rented	41801007
103	Owned but not yet paid off	41801007
275	Occupied rent-free	41801007
1220	Owned and fully paid off	41801007
32	Other	41801007
88	Rented	41801008
137	Owned but not yet paid off	41801008
138	Occupied rent-free	41801008
817	Owned and fully paid off	41801008
23	Other	41801008
595	Rented	41801009
40	Owned but not yet paid off	41801009
175	Occupied rent-free	41801009
1516	Owned and fully paid off	41801009
42	Other	41801009
293	Rented	41801010
138	Owned but not yet paid off	41801010
45	Occupied rent-free	41801010
827	Owned and fully paid off	41801010
76	Other	41801010
367	Rented	41802001
109	Owned but not yet paid off	41802001
1188	Occupied rent-free	41802001
509	Owned and fully paid off	41802001
56	Other	41802001
339	Rented	41802002
312	Owned but not yet paid off	41802002
312	Occupied rent-free	41802002
1327	Owned and fully paid off	41802002
35	Other	41802002
311	Rented	41802003
51	Owned but not yet paid off	41802003
1820	Occupied rent-free	41802003
223	Owned and fully paid off	41802003
96	Other	41802003
277	Rented	41802004
84	Owned but not yet paid off	41802004
1053	Occupied rent-free	41802004
129	Owned and fully paid off	41802004
99	Other	41802004
187	Rented	41803001
10	Owned but not yet paid off	41803001
270	Occupied rent-free	41803001
688	Owned and fully paid off	41803001
5	Other	41803001
157	Rented	41803002
7	Owned but not yet paid off	41803002
169	Occupied rent-free	41803002
799	Owned and fully paid off	41803002
3	Other	41803002
194	Rented	41803003
22	Owned but not yet paid off	41803003
31	Occupied rent-free	41803003
1366	Owned and fully paid off	41803003
22	Other	41803003
367	Rented	41803004
169	Owned but not yet paid off	41803004
540	Occupied rent-free	41803004
804	Owned and fully paid off	41803004
8	Other	41803004
361	Rented	41803005
86	Owned but not yet paid off	41803005
993	Occupied rent-free	41803005
443	Owned and fully paid off	41803005
158	Other	41803005
171	Rented	41803006
16	Owned but not yet paid off	41803006
91	Occupied rent-free	41803006
950	Owned and fully paid off	41803006
68	Other	41803006
341	Rented	41803007
215	Owned but not yet paid off	41803007
66	Occupied rent-free	41803007
700	Owned and fully paid off	41803007
79	Other	41803007
318	Rented	41803008
172	Owned but not yet paid off	41803008
173	Occupied rent-free	41803008
718	Owned and fully paid off	41803008
54	Other	41803008
525	Rented	41804001
221	Owned but not yet paid off	41804001
1061	Occupied rent-free	41804001
1573	Owned and fully paid off	41804001
124	Other	41804001
461	Rented	41804002
146	Owned but not yet paid off	41804002
140	Occupied rent-free	41804002
2594	Owned and fully paid off	41804002
77	Other	41804002
986	Rented	41804003
498	Owned but not yet paid off	41804003
1048	Occupied rent-free	41804003
1740	Owned and fully paid off	41804003
174	Other	41804003
637	Rented	41804004
169	Owned but not yet paid off	41804004
420	Occupied rent-free	41804004
2246	Owned and fully paid off	41804004
49	Other	41804004
1038	Rented	41804005
137	Owned but not yet paid off	41804005
605	Occupied rent-free	41804005
1858	Owned and fully paid off	41804005
176	Other	41804005
285	Rented	41804006
18	Owned but not yet paid off	41804006
556	Occupied rent-free	41804006
1882	Owned and fully paid off	41804006
59	Other	41804006
521	Rented	41804007
111	Owned but not yet paid off	41804007
727	Occupied rent-free	41804007
2147	Owned and fully paid off	41804007
125	Other	41804007
1272	Rented	41804008
540	Owned but not yet paid off	41804008
299	Occupied rent-free	41804008
1072	Owned and fully paid off	41804008
37	Other	41804008
1263	Rented	41804009
762	Owned but not yet paid off	41804009
276	Occupied rent-free	41804009
1025	Owned and fully paid off	41804009
91	Other	41804009
467	Rented	41804010
298	Owned but not yet paid off	41804010
955	Occupied rent-free	41804010
1413	Owned and fully paid off	41804010
153	Other	41804010
754	Rented	41804011
140	Owned but not yet paid off	41804011
1078	Occupied rent-free	41804011
1540	Owned and fully paid off	41804011
71	Other	41804011
722	Rented	41804012
702	Owned but not yet paid off	41804012
1750	Occupied rent-free	41804012
2548	Owned and fully paid off	41804012
419	Other	41804012
567	Rented	41804013
70	Owned but not yet paid off	41804013
957	Occupied rent-free	41804013
637	Owned and fully paid off	41804013
29	Other	41804013
720	Rented	41804014
292	Owned but not yet paid off	41804014
275	Occupied rent-free	41804014
2347	Owned and fully paid off	41804014
28	Other	41804014
937	Rented	41804015
236	Owned but not yet paid off	41804015
548	Occupied rent-free	41804015
2230	Owned and fully paid off	41804015
27	Other	41804015
688	Rented	41804016
75	Owned but not yet paid off	41804016
382	Occupied rent-free	41804016
2722	Owned and fully paid off	41804016
177	Other	41804016
610	Rented	41804017
60	Owned but not yet paid off	41804017
751	Occupied rent-free	41804017
2926	Owned and fully paid off	41804017
144	Other	41804017
485	Rented	41804018
217	Owned but not yet paid off	41804018
481	Occupied rent-free	41804018
1659	Owned and fully paid off	41804018
42	Other	41804018
326	Rented	41804019
184	Owned but not yet paid off	41804019
447	Occupied rent-free	41804019
2080	Owned and fully paid off	41804019
190	Other	41804019
738	Rented	41804020
86	Owned but not yet paid off	41804020
205	Occupied rent-free	41804020
2380	Owned and fully paid off	41804020
30	Other	41804020
509	Rented	41804021
94	Owned but not yet paid off	41804021
416	Occupied rent-free	41804021
2449	Owned and fully paid off	41804021
26	Other	41804021
398	Rented	41804022
34	Owned but not yet paid off	41804022
300	Occupied rent-free	41804022
2781	Owned and fully paid off	41804022
83	Other	41804022
871	Rented	41804023
5	Owned but not yet paid off	41804023
631	Occupied rent-free	41804023
505	Owned and fully paid off	41804023
24	Other	41804023
1045	Rented	41804024
63	Owned but not yet paid off	41804024
538	Occupied rent-free	41804024
198	Owned and fully paid off	41804024
35	Other	41804024
578	Rented	41804025
1286	Owned but not yet paid off	41804025
1044	Occupied rent-free	41804025
1758	Owned and fully paid off	41804025
72	Other	41804025
597	Rented	41804026
84	Owned but not yet paid off	41804026
231	Occupied rent-free	41804026
1445	Owned and fully paid off	41804026
78	Other	41804026
1226	Rented	41804027
968	Owned but not yet paid off	41804027
85	Occupied rent-free	41804027
845	Owned and fully paid off	41804027
43	Other	41804027
990	Rented	41804028
13	Owned but not yet paid off	41804028
299	Occupied rent-free	41804028
1201	Owned and fully paid off	41804028
242	Other	41804028
726	Rented	41804029
192	Owned but not yet paid off	41804029
245	Occupied rent-free	41804029
1169	Owned and fully paid off	41804029
18	Other	41804029
1205	Rented	41804030
127	Owned but not yet paid off	41804030
414	Occupied rent-free	41804030
1493	Owned and fully paid off	41804030
43	Other	41804030
1008	Rented	41804031
34	Owned but not yet paid off	41804031
559	Occupied rent-free	41804031
1352	Owned and fully paid off	41804031
26	Other	41804031
1221	Rented	41804032
969	Owned but not yet paid off	41804032
105	Occupied rent-free	41804032
1312	Owned and fully paid off	41804032
137	Other	41804032
1439	Rented	41804033
705	Owned but not yet paid off	41804033
127	Occupied rent-free	41804033
863	Owned and fully paid off	41804033
131	Other	41804033
930	Rented	41804034
1312	Owned but not yet paid off	41804034
218	Occupied rent-free	41804034
1368	Owned and fully paid off	41804034
125	Other	41804034
620	Rented	41804035
721	Owned but not yet paid off	41804035
373	Occupied rent-free	41804035
965	Owned and fully paid off	41804035
74	Other	41804035
1379	Rented	41804036
569	Owned but not yet paid off	41804036
327	Occupied rent-free	41804036
1623	Owned and fully paid off	41804036
113	Other	41804036
149	Rented	41805001
18	Owned but not yet paid off	41805001
615	Occupied rent-free	41805001
1040	Owned and fully paid off	41805001
35	Other	41805001
317	Rented	41805002
247	Owned but not yet paid off	41805002
553	Occupied rent-free	41805002
514	Owned and fully paid off	41805002
17	Other	41805002
164	Rented	41805003
90	Owned but not yet paid off	41805003
566	Occupied rent-free	41805003
1032	Owned and fully paid off	41805003
10	Other	41805003
73	Rented	41805004
101	Owned but not yet paid off	41805004
910	Occupied rent-free	41805004
764	Owned and fully paid off	41805004
9	Other	41805004
231	Rented	41805005
61	Owned but not yet paid off	41805005
28	Occupied rent-free	41805005
1540	Owned and fully paid off	41805005
47	Other	41805005
116	Rented	41805006
67	Owned but not yet paid off	41805006
32	Occupied rent-free	41805006
1149	Owned and fully paid off	41805006
4	Other	41805006
117	Rented	41805007
72	Owned but not yet paid off	41805007
93	Occupied rent-free	41805007
1114	Owned and fully paid off	41805007
29	Other	41805007
171	Rented	41805008
34	Owned but not yet paid off	41805008
92	Occupied rent-free	41805008
968	Owned and fully paid off	41805008
93	Other	41805008
262	Rented	41805009
87	Owned but not yet paid off	41805009
137	Occupied rent-free	41805009
1908	Owned and fully paid off	41805009
145	Other	41805009
334	Rented	41805010
151	Owned but not yet paid off	41805010
1087	Occupied rent-free	41805010
272	Owned and fully paid off	41805010
103	Other	41805010
225	Rented	41805011
164	Owned but not yet paid off	41805011
68	Occupied rent-free	41805011
1479	Owned and fully paid off	41805011
131	Other	41805011
446	Rented	41805012
411	Owned but not yet paid off	41805012
333	Occupied rent-free	41805012
595	Owned and fully paid off	41805012
81	Other	41805012
393	Rented	41901001
150	Owned but not yet paid off	41901001
86	Occupied rent-free	41901001
1082	Owned and fully paid off	41901001
71	Other	41901001
397	Rented	41901002
326	Owned but not yet paid off	41901002
67	Occupied rent-free	41901002
1841	Owned and fully paid off	41901002
48	Other	41901002
551	Rented	41901003
66	Owned but not yet paid off	41901003
744	Occupied rent-free	41901003
250	Owned and fully paid off	41901003
38	Other	41901003
245	Rented	41901004
182	Owned but not yet paid off	41901004
76	Occupied rent-free	41901004
1036	Owned and fully paid off	41901004
27	Other	41901004
61	Rented	41901005
48	Owned but not yet paid off	41901005
5	Occupied rent-free	41901005
607	Owned and fully paid off	41901005
1	Other	41901005
441	Rented	41901006
271	Owned but not yet paid off	41901006
625	Occupied rent-free	41901006
1729	Owned and fully paid off	41901006
36	Other	41901006
319	Rented	41901007
96	Owned but not yet paid off	41901007
459	Occupied rent-free	41901007
1453	Owned and fully paid off	41901007
21	Other	41901007
133	Rented	41901008
414	Owned but not yet paid off	41901008
289	Occupied rent-free	41901008
1407	Owned and fully paid off	41901008
46	Other	41901008
526	Rented	41901009
148	Owned but not yet paid off	41901009
691	Occupied rent-free	41901009
425	Owned and fully paid off	41901009
32	Other	41901009
307	Rented	41901010
249	Owned but not yet paid off	41901010
70	Occupied rent-free	41901010
587	Owned and fully paid off	41901010
6	Other	41901010
352	Rented	41901011
71	Owned but not yet paid off	41901011
349	Occupied rent-free	41901011
1329	Owned and fully paid off	41901011
8	Other	41901011
280	Rented	41901012
43	Owned but not yet paid off	41901012
279	Occupied rent-free	41901012
864	Owned and fully paid off	41901012
21	Other	41901012
146	Rented	41901013
207	Owned but not yet paid off	41901013
422	Occupied rent-free	41901013
1316	Owned and fully paid off	41901013
54	Other	41901013
368	Rented	41901014
53	Owned but not yet paid off	41901014
362	Occupied rent-free	41901014
999	Owned and fully paid off	41901014
9	Other	41901014
840	Rented	41901015
300	Owned but not yet paid off	41901015
836	Occupied rent-free	41901015
496	Owned and fully paid off	41901015
82	Other	41901015
644	Rented	41901016
186	Owned but not yet paid off	41901016
313	Occupied rent-free	41901016
1234	Owned and fully paid off	41901016
20	Other	41901016
78	Rented	41901017
92	Owned but not yet paid off	41901017
18	Occupied rent-free	41901017
322	Owned and fully paid off	41901017
1	Other	41901017
132	Rented	41901018
15	Owned but not yet paid off	41901018
346	Occupied rent-free	41901018
982	Owned and fully paid off	41901018
43	Other	41901018
858	Rented	41902001
230	Owned but not yet paid off	41902001
102	Occupied rent-free	41902001
796	Owned and fully paid off	41902001
2	Other	41902001
636	Rented	41902002
144	Owned but not yet paid off	41902002
213	Occupied rent-free	41902002
676	Owned and fully paid off	41902002
23	Other	41902002
526	Rented	41902003
460	Owned but not yet paid off	41902003
106	Occupied rent-free	41902003
1061	Owned and fully paid off	41902003
23	Other	41902003
529	Rented	41902004
46	Owned but not yet paid off	41902004
371	Occupied rent-free	41902004
939	Owned and fully paid off	41902004
9	Other	41902004
345	Rented	41902005
51	Owned but not yet paid off	41902005
97	Occupied rent-free	41902005
1021	Owned and fully paid off	41902005
27	Other	41902005
569	Rented	41902006
283	Owned but not yet paid off	41902006
492	Occupied rent-free	41902006
414	Owned and fully paid off	41902006
92	Other	41902006
387	Rented	41902007
105	Owned but not yet paid off	41902007
294	Occupied rent-free	41902007
733	Owned and fully paid off	41902007
21	Other	41902007
1247	Rented	41902008
31	Owned but not yet paid off	41902008
152	Occupied rent-free	41902008
675	Owned and fully paid off	41902008
8	Other	41902008
343	Rented	41902009
166	Owned but not yet paid off	41902009
51	Occupied rent-free	41902009
351	Owned and fully paid off	41902009
15	Other	41902009
389	Rented	41902010
450	Owned but not yet paid off	41902010
131	Occupied rent-free	41902010
384	Owned and fully paid off	41902010
21	Other	41902010
437	Rented	41902011
250	Owned but not yet paid off	41902011
1141	Occupied rent-free	41902011
577	Owned and fully paid off	41902011
62	Other	41902011
653	Rented	41902012
512	Owned but not yet paid off	41902012
581	Occupied rent-free	41902012
691	Owned and fully paid off	41902012
45	Other	41902012
213	Rented	41902013
58	Owned but not yet paid off	41902013
156	Occupied rent-free	41902013
582	Owned and fully paid off	41902013
4	Other	41902013
279	Rented	41902014
86	Owned but not yet paid off	41902014
516	Occupied rent-free	41902014
515	Owned and fully paid off	41902014
90	Other	41902014
236	Rented	41902015
183	Owned but not yet paid off	41902015
588	Occupied rent-free	41902015
911	Owned and fully paid off	41902015
57	Other	41902015
1374	Rented	41902016
61	Owned but not yet paid off	41902016
122	Occupied rent-free	41902016
454	Owned and fully paid off	41902016
11	Other	41902016
340	Rented	41902017
79	Owned but not yet paid off	41902017
544	Occupied rent-free	41902017
1078	Owned and fully paid off	41902017
41	Other	41902017
793	Rented	41902018
346	Owned but not yet paid off	41902018
418	Occupied rent-free	41902018
590	Owned and fully paid off	41902018
60	Other	41902018
771	Rented	41902019
121	Owned but not yet paid off	41902019
978	Occupied rent-free	41902019
1279	Owned and fully paid off	41902019
51	Other	41902019
754	Rented	41902020
392	Owned but not yet paid off	41902020
819	Occupied rent-free	41902020
530	Owned and fully paid off	41902020
61	Other	41902020
374	Rented	41903001
221	Owned but not yet paid off	41903001
491	Occupied rent-free	41903001
835	Owned and fully paid off	41903001
7	Other	41903001
306	Rented	41903002
85	Owned but not yet paid off	41903002
538	Occupied rent-free	41903002
880	Owned and fully paid off	41903002
60	Other	41903002
461	Rented	41903003
74	Owned but not yet paid off	41903003
470	Occupied rent-free	41903003
1145	Owned and fully paid off	41903003
24	Other	41903003
496	Rented	41903004
79	Owned but not yet paid off	41903004
285	Occupied rent-free	41903004
818	Owned and fully paid off	41903004
86	Other	41903004
284	Rented	41903005
47	Owned but not yet paid off	41903005
325	Occupied rent-free	41903005
998	Owned and fully paid off	41903005
100	Other	41903005
404	Rented	41903006
246	Owned but not yet paid off	41903006
577	Occupied rent-free	41903006
595	Owned and fully paid off	41903006
46	Other	41903006
652	Rented	41903007
282	Owned but not yet paid off	41903007
431	Occupied rent-free	41903007
718	Owned and fully paid off	41903007
31	Other	41903007
295	Rented	41903008
152	Owned but not yet paid off	41903008
96	Occupied rent-free	41903008
977	Owned and fully paid off	41903008
1	Other	41903008
166	Rented	41903009
55	Owned but not yet paid off	41903009
285	Occupied rent-free	41903009
1755	Owned and fully paid off	41903009
66	Other	41903009
438	Rented	41904001
304	Owned but not yet paid off	41904001
505	Occupied rent-free	41904001
2468	Owned and fully paid off	41904001
92	Other	41904001
139	Rented	41904002
302	Owned but not yet paid off	41904002
299	Occupied rent-free	41904002
1857	Owned and fully paid off	41904002
12	Other	41904002
560	Rented	41904003
239	Owned but not yet paid off	41904003
270	Occupied rent-free	41904003
1520	Owned and fully paid off	41904003
27	Other	41904003
463	Rented	41904004
157	Owned but not yet paid off	41904004
719	Occupied rent-free	41904004
790	Owned and fully paid off	41904004
162	Other	41904004
639	Rented	41904005
153	Owned but not yet paid off	41904005
737	Occupied rent-free	41904005
1299	Owned and fully paid off	41904005
41	Other	41904005
297	Rented	41904006
389	Owned but not yet paid off	41904006
696	Occupied rent-free	41904006
515	Owned and fully paid off	41904006
131	Other	41904006
129	Rented	41904007
310	Owned but not yet paid off	41904007
501	Occupied rent-free	41904007
1422	Owned and fully paid off	41904007
133	Other	41904007
44	Rented	41904008
339	Owned but not yet paid off	41904008
11	Occupied rent-free	41904008
963	Owned and fully paid off	41904008
3	Other	41904008
27	Rented	41904009
141	Owned but not yet paid off	41904009
152	Occupied rent-free	41904009
2401	Owned and fully paid off	41904009
116	Other	41904009
51	Rented	41904010
136	Owned but not yet paid off	41904010
642	Occupied rent-free	41904010
1780	Owned and fully paid off	41904010
32	Other	41904010
47	Rented	41904011
143	Owned but not yet paid off	41904011
306	Occupied rent-free	41904011
1937	Owned and fully paid off	41904011
20	Other	41904011
37	Rented	41904012
67	Owned but not yet paid off	41904012
421	Occupied rent-free	41904012
3167	Owned and fully paid off	41904012
56	Other	41904012
44	Rented	41904013
608	Owned but not yet paid off	41904013
519	Occupied rent-free	41904013
1410	Owned and fully paid off	41904013
17	Other	41904013
55	Rented	41904014
18	Owned but not yet paid off	41904014
214	Occupied rent-free	41904014
2296	Owned and fully paid off	41904014
88	Other	41904014
52	Rented	41904015
299	Owned but not yet paid off	41904015
379	Occupied rent-free	41904015
1999	Owned and fully paid off	41904015
100	Other	41904015
51	Rented	41904016
18	Owned but not yet paid off	41904016
357	Occupied rent-free	41904016
2379	Owned and fully paid off	41904016
203	Other	41904016
64	Rented	41904017
7	Owned but not yet paid off	41904017
52	Occupied rent-free	41904017
1999	Owned and fully paid off	41904017
155	Other	41904017
63	Rented	41904018
101	Owned but not yet paid off	41904018
183	Occupied rent-free	41904018
1908	Owned and fully paid off	41904018
131	Other	41904018
29	Rented	41904019
16	Owned but not yet paid off	41904019
651	Occupied rent-free	41904019
2098	Owned and fully paid off	41904019
76	Other	41904019
25	Rented	41904020
54	Owned but not yet paid off	41904020
630	Occupied rent-free	41904020
1267	Owned and fully paid off	41904020
87	Other	41904020
38	Rented	41904021
193	Owned but not yet paid off	41904021
450	Occupied rent-free	41904021
1855	Owned and fully paid off	41904021
331	Other	41904021
1064	Rented	41904022
550	Owned but not yet paid off	41904022
461	Occupied rent-free	41904022
1354	Owned and fully paid off	41904022
120	Other	41904022
78	Rented	41904023
188	Owned but not yet paid off	41904023
212	Occupied rent-free	41904023
2249	Owned and fully paid off	41904023
232	Other	41904023
71	Rented	41904024
233	Owned but not yet paid off	41904024
585	Occupied rent-free	41904024
3951	Owned and fully paid off	41904024
74	Other	41904024
220	Rented	41904025
143	Owned but not yet paid off	41904025
195	Occupied rent-free	41904025
1720	Owned and fully paid off	41904025
83	Other	41904025
54	Rented	41904026
350	Owned but not yet paid off	41904026
72	Occupied rent-free	41904026
1480	Owned and fully paid off	41904026
38	Other	41904026
803	Rented	41904027
227	Owned but not yet paid off	41904027
277	Occupied rent-free	41904027
1673	Owned and fully paid off	41904027
10	Other	41904027
415	Rented	41904028
332	Owned but not yet paid off	41904028
169	Occupied rent-free	41904028
2689	Owned and fully paid off	41904028
22	Other	41904028
1390	Rented	41904029
230	Owned but not yet paid off	41904029
190	Occupied rent-free	41904029
1615	Owned and fully paid off	41904029
19	Other	41904029
37	Rented	41904030
187	Owned but not yet paid off	41904030
268	Occupied rent-free	41904030
1707	Owned and fully paid off	41904030
23	Other	41904030
30	Rented	41904031
32	Owned but not yet paid off	41904031
1284	Occupied rent-free	41904031
1147	Owned and fully paid off	41904031
8	Other	41904031
104	Rented	41904032
250	Owned but not yet paid off	41904032
946	Occupied rent-free	41904032
2507	Owned and fully paid off	41904032
165	Other	41904032
220	Rented	41904033
20	Owned but not yet paid off	41904033
1006	Occupied rent-free	41904033
2220	Owned and fully paid off	41904033
131	Other	41904033
487	Rented	41904034
502	Owned but not yet paid off	41904034
1838	Occupied rent-free	41904034
1899	Owned and fully paid off	41904034
65	Other	41904034
32	Rented	41904035
112	Owned but not yet paid off	41904035
236	Occupied rent-free	41904035
1593	Owned and fully paid off	41904035
14	Other	41904035
190	Rented	41905001
53	Owned but not yet paid off	41905001
105	Occupied rent-free	41905001
275	Owned and fully paid off	41905001
18	Other	41905001
178	Rented	41905002
10	Owned but not yet paid off	41905002
17	Occupied rent-free	41905002
1316	Owned and fully paid off	41905002
1	Other	41905002
431	Rented	41905003
89	Owned but not yet paid off	41905003
37	Occupied rent-free	41905003
777	Owned and fully paid off	41905003
27	Other	41905003
281	Rented	41905004
32	Owned but not yet paid off	41905004
61	Occupied rent-free	41905004
1100	Owned and fully paid off	41905004
41	Other	41905004
142	Rented	41905005
76	Owned but not yet paid off	41905005
1165	Occupied rent-free	41905005
187	Owned and fully paid off	41905005
45	Other	41905005
582	Rented	41905006
93	Owned but not yet paid off	41905006
287	Occupied rent-free	41905006
609	Owned and fully paid off	41905006
14	Other	41905006
914	Rented	41905007
81	Owned but not yet paid off	41905007
325	Occupied rent-free	41905007
600	Owned and fully paid off	41905007
57	Other	41905007
260	Rented	41905008
67	Owned but not yet paid off	41905008
1049	Occupied rent-free	41905008
1111	Owned and fully paid off	41905008
183	Other	41905008
355	Rented	41906001
45	Owned but not yet paid off	41906001
242	Occupied rent-free	41906001
1228	Owned and fully paid off	41906001
16	Other	41906001
205	Rented	41906002
89	Owned but not yet paid off	41906002
409	Occupied rent-free	41906002
1099	Owned and fully paid off	41906002
62	Other	41906002
760	Rented	41906003
37	Owned but not yet paid off	41906003
362	Occupied rent-free	41906003
692	Owned and fully paid off	41906003
7	Other	41906003
556	Rented	41906004
187	Owned but not yet paid off	41906004
193	Occupied rent-free	41906004
1125	Owned and fully paid off	41906004
26	Other	41906004
357	Rented	41906005
40	Owned but not yet paid off	41906005
138	Occupied rent-free	41906005
1004	Owned and fully paid off	41906005
18	Other	41906005
417	Rented	41906006
20	Owned but not yet paid off	41906006
112	Occupied rent-free	41906006
814	Owned and fully paid off	41906006
0	Other	41906006
639	Rented	41906007
225	Owned but not yet paid off	41906007
161	Occupied rent-free	41906007
514	Owned and fully paid off	41906007
39	Other	41906007
395	Rented	41906008
36	Owned but not yet paid off	41906008
240	Occupied rent-free	41906008
801	Owned and fully paid off	41906008
22	Other	41906008
380	Rented	41906009
50	Owned but not yet paid off	41906009
523	Occupied rent-free	41906009
515	Owned and fully paid off	41906009
12	Other	41906009
539	Rented	42001001
79	Owned but not yet paid off	42001001
210	Occupied rent-free	42001001
1312	Owned and fully paid off	42001001
42	Other	42001001
649	Rented	42001002
134	Owned but not yet paid off	42001002
948	Occupied rent-free	42001002
406	Owned and fully paid off	42001002
35	Other	42001002
676	Rented	42001003
501	Owned but not yet paid off	42001003
40	Occupied rent-free	42001003
654	Owned and fully paid off	42001003
14	Other	42001003
378	Rented	42001004
22	Owned but not yet paid off	42001004
464	Occupied rent-free	42001004
935	Owned and fully paid off	42001004
44	Other	42001004
485	Rented	42001005
61	Owned but not yet paid off	42001005
112	Occupied rent-free	42001005
1193	Owned and fully paid off	42001005
26	Other	42001005
164	Rented	42001006
92	Owned but not yet paid off	42001006
59	Occupied rent-free	42001006
477	Owned and fully paid off	42001006
9	Other	42001006
438	Rented	42001007
159	Owned but not yet paid off	42001007
211	Occupied rent-free	42001007
1365	Owned and fully paid off	42001007
37	Other	42001007
321	Rented	42001008
23	Owned but not yet paid off	42001008
92	Occupied rent-free	42001008
1205	Owned and fully paid off	42001008
4	Other	42001008
1091	Rented	42001009
91	Owned but not yet paid off	42001009
356	Occupied rent-free	42001009
989	Owned and fully paid off	42001009
96	Other	42001009
270	Rented	42001010
89	Owned but not yet paid off	42001010
44	Occupied rent-free	42001010
1091	Owned and fully paid off	42001010
101	Other	42001010
574	Rented	42001011
42	Owned but not yet paid off	42001011
50	Occupied rent-free	42001011
720	Owned and fully paid off	42001011
158	Other	42001011
431	Rented	42001012
1	Owned but not yet paid off	42001012
134	Occupied rent-free	42001012
873	Owned and fully paid off	42001012
7	Other	42001012
403	Rented	42001013
351	Owned but not yet paid off	42001013
195	Occupied rent-free	42001013
1367	Owned and fully paid off	42001013
50	Other	42001013
134	Rented	42001014
185	Owned but not yet paid off	42001014
191	Occupied rent-free	42001014
806	Owned and fully paid off	42001014
20	Other	42001014
1015	Rented	42001015
18	Owned but not yet paid off	42001015
102	Occupied rent-free	42001015
993	Owned and fully paid off	42001015
68	Other	42001015
1302	Rented	42001016
339	Owned but not yet paid off	42001016
147	Occupied rent-free	42001016
628	Owned and fully paid off	42001016
20	Other	42001016
363	Rented	42001017
660	Owned but not yet paid off	42001017
118	Occupied rent-free	42001017
688	Owned and fully paid off	42001017
25	Other	42001017
640	Rented	42001018
126	Owned but not yet paid off	42001018
272	Occupied rent-free	42001018
950	Owned and fully paid off	42001018
13	Other	42001018
402	Rented	42001019
15	Owned but not yet paid off	42001019
101	Occupied rent-free	42001019
1289	Owned and fully paid off	42001019
13	Other	42001019
189	Rented	42001020
21	Owned but not yet paid off	42001020
201	Occupied rent-free	42001020
1277	Owned and fully paid off	42001020
183	Other	42001020
350	Rented	42001021
16	Owned but not yet paid off	42001021
289	Occupied rent-free	42001021
1053	Owned and fully paid off	42001021
98	Other	42001021
618	Rented	42001022
54	Owned but not yet paid off	42001022
437	Occupied rent-free	42001022
901	Owned and fully paid off	42001022
85	Other	42001022
430	Rented	42001023
73	Owned but not yet paid off	42001023
510	Occupied rent-free	42001023
233	Owned and fully paid off	42001023
17	Other	42001023
362	Rented	42001024
7	Owned but not yet paid off	42001024
141	Occupied rent-free	42001024
37	Owned and fully paid off	42001024
3	Other	42001024
564	Rented	42001025
223	Owned but not yet paid off	42001025
625	Occupied rent-free	42001025
789	Owned and fully paid off	42001025
47	Other	42001025
444	Rented	42003001
156	Owned but not yet paid off	42003001
643	Occupied rent-free	42003001
930	Owned and fully paid off	42003001
91	Other	42003001
361	Rented	42003002
10	Owned but not yet paid off	42003002
53	Occupied rent-free	42003002
1268	Owned and fully paid off	42003002
30	Other	42003002
543	Rented	42003003
177	Owned but not yet paid off	42003003
184	Occupied rent-free	42003003
882	Owned and fully paid off	42003003
112	Other	42003003
81	Rented	42003004
41	Owned but not yet paid off	42003004
266	Occupied rent-free	42003004
493	Owned and fully paid off	42003004
26	Other	42003004
140	Rented	42003005
47	Owned but not yet paid off	42003005
129	Occupied rent-free	42003005
966	Owned and fully paid off	42003005
23	Other	42003005
112	Rented	42003006
15	Owned but not yet paid off	42003006
185	Occupied rent-free	42003006
388	Owned and fully paid off	42003006
15	Other	42003006
123	Rented	42003007
227	Owned but not yet paid off	42003007
631	Occupied rent-free	42003007
1767	Owned and fully paid off	42003007
83	Other	42003007
489	Rented	42003008
75	Owned but not yet paid off	42003008
576	Occupied rent-free	42003008
2528	Owned and fully paid off	42003008
81	Other	42003008
142	Rented	42003009
205	Owned but not yet paid off	42003009
46	Occupied rent-free	42003009
1273	Owned and fully paid off	42003009
9	Other	42003009
191	Rented	42003010
248	Owned but not yet paid off	42003010
202	Occupied rent-free	42003010
1010	Owned and fully paid off	42003010
11	Other	42003010
181	Rented	42003011
54	Owned but not yet paid off	42003011
131	Occupied rent-free	42003011
832	Owned and fully paid off	42003011
88	Other	42003011
530	Rented	42003012
122	Owned but not yet paid off	42003012
73	Occupied rent-free	42003012
1170	Owned and fully paid off	42003012
8	Other	42003012
828	Rented	42003013
273	Owned but not yet paid off	42003013
54	Occupied rent-free	42003013
1004	Owned and fully paid off	42003013
31	Other	42003013
333	Rented	42003014
88	Owned but not yet paid off	42003014
175	Occupied rent-free	42003014
1317	Owned and fully paid off	42003014
15	Other	42003014
107	Rented	42003015
24	Owned but not yet paid off	42003015
110	Occupied rent-free	42003015
1007	Owned and fully paid off	42003015
7	Other	42003015
238	Rented	42003016
45	Owned but not yet paid off	42003016
140	Occupied rent-free	42003016
1827	Owned and fully paid off	42003016
160	Other	42003016
354	Rented	42003017
13	Owned but not yet paid off	42003017
124	Occupied rent-free	42003017
1203	Owned and fully paid off	42003017
230	Other	42003017
558	Rented	42003018
227	Owned but not yet paid off	42003018
182	Occupied rent-free	42003018
667	Owned and fully paid off	42003018
123	Other	42003018
393	Rented	42003019
148	Owned but not yet paid off	42003019
130	Occupied rent-free	42003019
1249	Owned and fully paid off	42003019
30	Other	42003019
371	Rented	42003020
104	Owned but not yet paid off	42003020
722	Occupied rent-free	42003020
521	Owned and fully paid off	42003020
51	Other	42003020
886	Rented	42004001
41	Owned but not yet paid off	42004001
1285	Occupied rent-free	42004001
2097	Owned and fully paid off	42004001
402	Other	42004001
165	Rented	42004002
61	Owned but not yet paid off	42004002
197	Occupied rent-free	42004002
779	Owned and fully paid off	42004002
19	Other	42004002
137	Rented	42004003
3	Owned but not yet paid off	42004003
198	Occupied rent-free	42004003
1257	Owned and fully paid off	42004003
0	Other	42004003
108	Rented	42004004
35	Owned but not yet paid off	42004004
159	Occupied rent-free	42004004
1063	Owned and fully paid off	42004004
13	Other	42004004
380	Rented	42004005
265	Owned but not yet paid off	42004005
541	Occupied rent-free	42004005
954	Owned and fully paid off	42004005
26	Other	42004005
302	Rented	42004006
148	Owned but not yet paid off	42004006
234	Occupied rent-free	42004006
726	Owned and fully paid off	42004006
8	Other	42004006
197	Rented	42004007
8	Owned but not yet paid off	42004007
213	Occupied rent-free	42004007
655	Owned and fully paid off	42004007
5	Other	42004007
357	Rented	42004008
219	Owned but not yet paid off	42004008
647	Occupied rent-free	42004008
651	Owned and fully paid off	42004008
179	Other	42004008
708	Rented	42004009
187	Owned but not yet paid off	42004009
311	Occupied rent-free	42004009
421	Owned and fully paid off	42004009
112	Other	42004009
353	Rented	42004010
478	Owned but not yet paid off	42004010
143	Occupied rent-free	42004010
1017	Owned and fully paid off	42004010
13	Other	42004010
292	Rented	42004011
78	Owned but not yet paid off	42004011
129	Occupied rent-free	42004011
915	Owned and fully paid off	42004011
19	Other	42004011
365	Rented	42004012
17	Owned but not yet paid off	42004012
619	Occupied rent-free	42004012
384	Owned and fully paid off	42004012
90	Other	42004012
490	Rented	42004013
169	Owned but not yet paid off	42004013
542	Occupied rent-free	42004013
2725	Owned and fully paid off	42004013
113	Other	42004013
979	Rented	42004014
1541	Owned but not yet paid off	42004014
166	Occupied rent-free	42004014
974	Owned and fully paid off	42004014
55	Other	42004014
259	Rented	42004015
413	Owned but not yet paid off	42004015
10	Occupied rent-free	42004015
314	Owned and fully paid off	42004015
17	Other	42004015
608	Rented	42004016
918	Owned but not yet paid off	42004016
63	Occupied rent-free	42004016
746	Owned and fully paid off	42004016
41	Other	42004016
1429	Rented	42004017
770	Owned but not yet paid off	42004017
39	Occupied rent-free	42004017
520	Owned and fully paid off	42004017
24	Other	42004017
389	Rented	42004018
314	Owned but not yet paid off	42004018
237	Occupied rent-free	42004018
156	Owned and fully paid off	42004018
63	Other	42004018
1051	Rented	42004019
475	Owned but not yet paid off	42004019
1473	Occupied rent-free	42004019
1288	Owned and fully paid off	42004019
170	Other	42004019
567	Rented	42004020
394	Owned but not yet paid off	42004020
513	Occupied rent-free	42004020
1204	Owned and fully paid off	42004020
40	Other	42004020
165	Rented	42004021
5	Owned but not yet paid off	42004021
194	Occupied rent-free	42004021
851	Owned and fully paid off	42004021
10	Other	42004021
285	Rented	42005001
128	Owned but not yet paid off	42005001
270	Occupied rent-free	42005001
488	Owned and fully paid off	42005001
57	Other	42005001
351	Rented	42005002
141	Owned but not yet paid off	42005002
405	Occupied rent-free	42005002
1755	Owned and fully paid off	42005002
46	Other	42005002
172	Rented	42005003
29	Owned but not yet paid off	42005003
51	Occupied rent-free	42005003
1210	Owned and fully paid off	42005003
58	Other	42005003
377	Rented	42005004
128	Owned but not yet paid off	42005004
290	Occupied rent-free	42005004
1115	Owned and fully paid off	42005004
49	Other	42005004
572	Rented	42005005
202	Owned but not yet paid off	42005005
48	Occupied rent-free	42005005
860	Owned and fully paid off	42005005
23	Other	42005005
469	Rented	42005006
44	Owned but not yet paid off	42005006
69	Occupied rent-free	42005006
1100	Owned and fully paid off	42005006
22	Other	42005006
181	Rented	42005007
329	Owned but not yet paid off	42005007
521	Occupied rent-free	42005007
763	Owned and fully paid off	42005007
60	Other	42005007
276	Rented	42005008
37	Owned but not yet paid off	42005008
275	Occupied rent-free	42005008
1161	Owned and fully paid off	42005008
86	Other	42005008
236	Rented	42005009
12	Owned but not yet paid off	42005009
41	Occupied rent-free	42005009
1653	Owned and fully paid off	42005009
17	Other	42005009
1930	Rented	49400001
121	Owned but not yet paid off	49400001
688	Occupied rent-free	49400001
1402	Owned and fully paid off	49400001
168	Other	49400001
1987	Rented	49400002
65	Owned but not yet paid off	49400002
517	Occupied rent-free	49400002
2072	Owned and fully paid off	49400002
46	Other	49400002
1713	Rented	49400003
145	Owned but not yet paid off	49400003
886	Occupied rent-free	49400003
1452	Owned and fully paid off	49400003
28	Other	49400003
1024	Rented	49400004
146	Owned but not yet paid off	49400004
440	Occupied rent-free	49400004
1913	Owned and fully paid off	49400004
100	Other	49400004
1556	Rented	49400005
273	Owned but not yet paid off	49400005
431	Occupied rent-free	49400005
2367	Owned and fully paid off	49400005
136	Other	49400005
706	Rented	49400006
63	Owned but not yet paid off	49400006
1122	Occupied rent-free	49400006
3080	Owned and fully paid off	49400006
128	Other	49400006
457	Rented	49400007
44	Owned but not yet paid off	49400007
369	Occupied rent-free	49400007
1557	Owned and fully paid off	49400007
147	Other	49400007
557	Rented	49400008
480	Owned but not yet paid off	49400008
1336	Occupied rent-free	49400008
2217	Owned and fully paid off	49400008
252	Other	49400008
401	Rented	49400009
1908	Owned but not yet paid off	49400009
38	Occupied rent-free	49400009
1483	Owned and fully paid off	49400009
26	Other	49400009
1037	Rented	49400010
259	Owned but not yet paid off	49400010
1013	Occupied rent-free	49400010
3024	Owned and fully paid off	49400010
269	Other	49400010
688	Rented	49400011
259	Owned but not yet paid off	49400011
929	Occupied rent-free	49400011
2516	Owned and fully paid off	49400011
53	Other	49400011
905	Rented	49400012
63	Owned but not yet paid off	49400012
2076	Occupied rent-free	49400012
4310	Owned and fully paid off	49400012
254	Other	49400012
664	Rented	49400013
226	Owned but not yet paid off	49400013
156	Occupied rent-free	49400013
1988	Owned and fully paid off	49400013
30	Other	49400013
1165	Rented	49400014
311	Owned but not yet paid off	49400014
330	Occupied rent-free	49400014
3082	Owned and fully paid off	49400014
62	Other	49400014
1160	Rented	49400015
536	Owned but not yet paid off	49400015
468	Occupied rent-free	49400015
2520	Owned and fully paid off	49400015
175	Other	49400015
1043	Rented	49400016
483	Owned but not yet paid off	49400016
337	Occupied rent-free	49400016
1438	Owned and fully paid off	49400016
46	Other	49400016
864	Rented	49400017
478	Owned but not yet paid off	49400017
1218	Occupied rent-free	49400017
2195	Owned and fully paid off	49400017
75	Other	49400017
1094	Rented	49400018
2626	Owned but not yet paid off	49400018
1460	Occupied rent-free	49400018
2230	Owned and fully paid off	49400018
548	Other	49400018
4647	Rented	49400019
239	Owned but not yet paid off	49400019
62	Occupied rent-free	49400019
474	Owned and fully paid off	49400019
18	Other	49400019
2360	Rented	49400020
773	Owned but not yet paid off	49400020
149	Occupied rent-free	49400020
948	Owned and fully paid off	49400020
43	Other	49400020
1604	Rented	49400021
857	Owned but not yet paid off	49400021
108	Occupied rent-free	49400021
887	Owned and fully paid off	49400021
55	Other	49400021
2857	Rented	49400022
1299	Owned but not yet paid off	49400022
66	Occupied rent-free	49400022
1011	Owned and fully paid off	49400022
62	Other	49400022
2145	Rented	49400023
509	Owned but not yet paid off	49400023
85	Occupied rent-free	49400023
458	Owned and fully paid off	49400023
47	Other	49400023
1030	Rented	49400024
1264	Owned but not yet paid off	49400024
69	Occupied rent-free	49400024
1161	Owned and fully paid off	49400024
75	Other	49400024
916	Rented	49400025
1993	Owned but not yet paid off	49400025
48	Occupied rent-free	49400025
1079	Owned and fully paid off	49400025
68	Other	49400025
1417	Rented	49400026
858	Owned but not yet paid off	49400026
558	Occupied rent-free	49400026
759	Owned and fully paid off	49400026
86	Other	49400026
211	Rented	49400027
504	Owned but not yet paid off	49400027
1288	Occupied rent-free	49400027
4885	Owned and fully paid off	49400027
122	Other	49400027
265	Rented	49400028
101	Owned but not yet paid off	49400028
809	Occupied rent-free	49400028
2643	Owned and fully paid off	49400028
236	Other	49400028
305	Rented	49400029
39	Owned but not yet paid off	49400029
281	Occupied rent-free	49400029
2816	Owned and fully paid off	49400029
215	Other	49400029
581	Rented	49400030
455	Owned but not yet paid off	49400030
226	Occupied rent-free	49400030
2768	Owned and fully paid off	49400030
141	Other	49400030
231	Rented	49400031
98	Owned but not yet paid off	49400031
182	Occupied rent-free	49400031
2417	Owned and fully paid off	49400031
13	Other	49400031
261	Rented	49400032
49	Owned but not yet paid off	49400032
145	Occupied rent-free	49400032
2970	Owned and fully paid off	49400032
16	Other	49400032
197	Rented	49400033
40	Owned but not yet paid off	49400033
326	Occupied rent-free	49400033
3042	Owned and fully paid off	49400033
22	Other	49400033
151	Rented	49400034
110	Owned but not yet paid off	49400034
595	Occupied rent-free	49400034
4377	Owned and fully paid off	49400034
109	Other	49400034
136	Rented	49400035
70	Owned but not yet paid off	49400035
768	Occupied rent-free	49400035
3636	Owned and fully paid off	49400035
145	Other	49400035
197	Rented	49400036
201	Owned but not yet paid off	49400036
419	Occupied rent-free	49400036
2961	Owned and fully paid off	49400036
54	Other	49400036
203	Rented	49400037
459	Owned but not yet paid off	49400037
574	Occupied rent-free	49400037
4110	Owned and fully paid off	49400037
131	Other	49400037
82	Rented	49400038
44	Owned but not yet paid off	49400038
435	Occupied rent-free	49400038
2836	Owned and fully paid off	49400038
215	Other	49400038
598	Rented	49400039
242	Owned but not yet paid off	49400039
1524	Occupied rent-free	49400039
1629	Owned and fully paid off	49400039
55	Other	49400039
499	Rented	49400040
575	Owned but not yet paid off	49400040
603	Occupied rent-free	49400040
2172	Owned and fully paid off	49400040
44	Other	49400040
146	Rented	49400041
203	Owned but not yet paid off	49400041
351	Occupied rent-free	49400041
3476	Owned and fully paid off	49400041
18	Other	49400041
203	Rented	49400042
205	Owned but not yet paid off	49400042
512	Occupied rent-free	49400042
2588	Owned and fully paid off	49400042
83	Other	49400042
392	Rented	49400043
172	Owned but not yet paid off	49400043
689	Occupied rent-free	49400043
3197	Owned and fully paid off	49400043
77	Other	49400043
2235	Rented	49400044
1801	Owned but not yet paid off	49400044
809	Occupied rent-free	49400044
1509	Owned and fully paid off	49400044
204	Other	49400044
646	Rented	49400045
459	Owned but not yet paid off	49400045
3773	Occupied rent-free	49400045
6080	Owned and fully paid off	49400045
652	Other	49400045
1024	Rented	49400046
455	Owned but not yet paid off	49400046
3081	Occupied rent-free	49400046
5954	Owned and fully paid off	49400046
223	Other	49400046
705	Rented	49400047
1831	Owned but not yet paid off	49400047
123	Occupied rent-free	49400047
1173	Owned and fully paid off	49400047
42	Other	49400047
1942	Rented	49400048
1041	Owned but not yet paid off	49400048
789	Occupied rent-free	49400048
722	Owned and fully paid off	49400048
110	Other	49400048
333	Rented	49400049
158	Owned but not yet paid off	49400049
515	Occupied rent-free	49400049
3316	Owned and fully paid off	49400049
262	Other	49400049
1689	Rented	74201001
1855	Owned but not yet paid off	74201001
279	Occupied rent-free	74201001
1777	Owned and fully paid off	74201001
192	Other	74201001
1013	Rented	74201002
854	Owned but not yet paid off	74201002
1491	Occupied rent-free	74201002
1362	Owned and fully paid off	74201002
50	Other	74201002
2099	Rented	74201003
1045	Owned but not yet paid off	74201003
439	Occupied rent-free	74201003
2155	Owned and fully paid off	74201003
50	Other	74201003
2458	Rented	74201004
1829	Owned but not yet paid off	74201004
59	Occupied rent-free	74201004
936	Owned and fully paid off	74201004
57	Other	74201004
1437	Rented	74201005
2354	Owned but not yet paid off	74201005
173	Occupied rent-free	74201005
1617	Owned and fully paid off	74201005
171	Other	74201005
1375	Rented	74201006
215	Owned but not yet paid off	74201006
1316	Occupied rent-free	74201006
4616	Owned and fully paid off	74201006
47	Other	74201006
1293	Rented	74201007
365	Owned but not yet paid off	74201007
1362	Occupied rent-free	74201007
2759	Owned and fully paid off	74201007
153	Other	74201007
1766	Rented	74201008
724	Owned but not yet paid off	74201008
437	Occupied rent-free	74201008
1481	Owned and fully paid off	74201008
35	Other	74201008
4357	Rented	74201009
1924	Owned but not yet paid off	74201009
125	Occupied rent-free	74201009
1132	Owned and fully paid off	74201009
101	Other	74201009
2880	Rented	74201010
1388	Owned but not yet paid off	74201010
187	Occupied rent-free	74201010
1176	Owned and fully paid off	74201010
61	Other	74201010
1045	Rented	74201011
916	Owned but not yet paid off	74201011
2216	Occupied rent-free	74201011
1902	Owned and fully paid off	74201011
187	Other	74201011
997	Rented	74201012
179	Owned but not yet paid off	74201012
556	Occupied rent-free	74201012
1523	Owned and fully paid off	74201012
106	Other	74201012
1708	Rented	74201013
125	Owned but not yet paid off	74201013
431	Occupied rent-free	74201013
2519	Owned and fully paid off	74201013
27	Other	74201013
1449	Rented	74201014
75	Owned but not yet paid off	74201014
654	Occupied rent-free	74201014
1826	Owned and fully paid off	74201014
18	Other	74201014
6094	Rented	74201015
784	Owned but not yet paid off	74201015
360	Occupied rent-free	74201015
731	Owned and fully paid off	74201015
72	Other	74201015
1978	Rented	74201016
1361	Owned but not yet paid off	74201016
259	Occupied rent-free	74201016
1378	Owned and fully paid off	74201016
59	Other	74201016
391	Rented	74201017
288	Owned but not yet paid off	74201017
2550	Occupied rent-free	74201017
378	Owned and fully paid off	74201017
5	Other	74201017
1664	Rented	74201018
191	Owned but not yet paid off	74201018
2083	Occupied rent-free	74201018
648	Owned and fully paid off	74201018
86	Other	74201018
1555	Rented	74201019
381	Owned but not yet paid off	74201019
617	Occupied rent-free	74201019
2011	Owned and fully paid off	74201019
193	Other	74201019
715	Rented	74201020
1274	Owned but not yet paid off	74201020
325	Occupied rent-free	74201020
2171	Owned and fully paid off	74201020
282	Other	74201020
910	Rented	74201021
423	Owned but not yet paid off	74201021
1916	Occupied rent-free	74201021
2269	Owned and fully paid off	74201021
273	Other	74201021
1065	Rented	74201022
350	Owned but not yet paid off	74201022
1345	Occupied rent-free	74201022
2380	Owned and fully paid off	74201022
124	Other	74201022
1011	Rented	74201023
404	Owned but not yet paid off	74201023
1815	Occupied rent-free	74201023
1537	Owned and fully paid off	74201023
117	Other	74201023
316	Rented	74201024
297	Owned but not yet paid off	74201024
553	Occupied rent-free	74201024
2191	Owned and fully paid off	74201024
65	Other	74201024
1138	Rented	74201025
530	Owned but not yet paid off	74201025
2991	Occupied rent-free	74201025
1287	Owned and fully paid off	74201025
113	Other	74201025
764	Rented	74201026
316	Owned but not yet paid off	74201026
3182	Occupied rent-free	74201026
3321	Owned and fully paid off	74201026
392	Other	74201026
223	Rented	74201027
181	Owned but not yet paid off	74201027
1026	Occupied rent-free	74201027
1412	Owned and fully paid off	74201027
383	Other	74201027
602	Rented	74201028
855	Owned but not yet paid off	74201028
3252	Occupied rent-free	74201028
1856	Owned and fully paid off	74201028
761	Other	74201028
2302	Rented	74201029
251	Owned but not yet paid off	74201029
1160	Occupied rent-free	74201029
1222	Owned and fully paid off	74201029
74	Other	74201029
395	Rented	74201030
476	Owned but not yet paid off	74201030
346	Occupied rent-free	74201030
1949	Owned and fully paid off	74201030
52	Other	74201030
161	Rented	74201031
1051	Owned but not yet paid off	74201031
75	Occupied rent-free	74201031
1485	Owned and fully paid off	74201031
47	Other	74201031
431	Rented	74201032
41	Owned but not yet paid off	74201032
410	Occupied rent-free	74201032
2277	Owned and fully paid off	74201032
19	Other	74201032
546	Rented	74201033
79	Owned but not yet paid off	74201033
1562	Occupied rent-free	74201033
1899	Owned and fully paid off	74201033
208	Other	74201033
422	Rented	74201034
270	Owned but not yet paid off	74201034
324	Occupied rent-free	74201034
1977	Owned and fully paid off	74201034
64	Other	74201034
431	Rented	74201035
85	Owned but not yet paid off	74201035
225	Occupied rent-free	74201035
2196	Owned and fully paid off	74201035
51	Other	74201035
374	Rented	74201036
729	Owned but not yet paid off	74201036
2509	Occupied rent-free	74201036
2981	Owned and fully paid off	74201036
444	Other	74201036
352	Rented	74201037
52	Owned but not yet paid off	74201037
619	Occupied rent-free	74201037
1762	Owned and fully paid off	74201037
167	Other	74201037
1258	Rented	74201038
476	Owned but not yet paid off	74201038
267	Occupied rent-free	74201038
2153	Owned and fully paid off	74201038
60	Other	74201038
757	Rented	74201039
161	Owned but not yet paid off	74201039
1373	Occupied rent-free	74201039
1477	Owned and fully paid off	74201039
100	Other	74201039
323	Rented	74201040
224	Owned but not yet paid off	74201040
463	Occupied rent-free	74201040
2361	Owned and fully paid off	74201040
25	Other	74201040
716	Rented	74201041
639	Owned but not yet paid off	74201041
387	Occupied rent-free	74201041
1820	Owned and fully paid off	74201041
64	Other	74201041
1432	Rented	74201042
158	Owned but not yet paid off	74201042
459	Occupied rent-free	74201042
659	Owned and fully paid off	74201042
45	Other	74201042
3615	Rented	74201043
169	Owned but not yet paid off	74201043
737	Occupied rent-free	74201043
905	Owned and fully paid off	74201043
55	Other	74201043
4153	Rented	74201044
167	Owned but not yet paid off	74201044
1199	Occupied rent-free	74201044
750	Owned and fully paid off	74201044
50	Other	74201044
802	Rented	74201045
1777	Owned but not yet paid off	74201045
356	Occupied rent-free	74201045
930	Owned and fully paid off	74201045
55	Other	74201045
604	Rented	74202001
286	Owned but not yet paid off	74202001
921	Occupied rent-free	74202001
537	Owned and fully paid off	74202001
169	Other	74202001
343	Rented	74202002
679	Owned but not yet paid off	74202002
84	Occupied rent-free	74202002
397	Owned and fully paid off	74202002
48	Other	74202002
566	Rented	74202003
635	Owned but not yet paid off	74202003
50	Occupied rent-free	74202003
341	Owned and fully paid off	74202003
42	Other	74202003
606	Rented	74202004
634	Owned but not yet paid off	74202004
539	Occupied rent-free	74202004
625	Owned and fully paid off	74202004
82	Other	74202004
887	Rented	74202005
645	Owned but not yet paid off	74202005
901	Occupied rent-free	74202005
784	Owned and fully paid off	74202005
133	Other	74202005
275	Rented	74202006
255	Owned but not yet paid off	74202006
1501	Occupied rent-free	74202006
777	Owned and fully paid off	74202006
17	Other	74202006
635	Rented	74202007
290	Owned but not yet paid off	74202007
997	Occupied rent-free	74202007
271	Owned and fully paid off	74202007
108	Other	74202007
165	Rented	74202008
105	Owned but not yet paid off	74202008
2215	Occupied rent-free	74202008
615	Owned and fully paid off	74202008
71	Other	74202008
135	Rented	74202009
45	Owned but not yet paid off	74202009
17	Occupied rent-free	74202009
44	Owned and fully paid off	74202009
3	Other	74202009
942	Rented	74202010
358	Owned but not yet paid off	74202010
348	Occupied rent-free	74202010
856	Owned and fully paid off	74202010
109	Other	74202010
560	Rented	74202011
369	Owned but not yet paid off	74202011
423	Occupied rent-free	74202011
662	Owned and fully paid off	74202011
67	Other	74202011
349	Rented	74202012
159	Owned but not yet paid off	74202012
388	Occupied rent-free	74202012
197	Owned and fully paid off	74202012
96	Other	74202012
725	Rented	74202013
444	Owned but not yet paid off	74202013
336	Occupied rent-free	74202013
474	Owned and fully paid off	74202013
131	Other	74202013
529	Rented	74202014
704	Owned but not yet paid off	74202014
63	Occupied rent-free	74202014
570	Owned and fully paid off	74202014
27	Other	74202014
522	Rented	74203001
283	Owned but not yet paid off	74203001
497	Occupied rent-free	74203001
542	Owned and fully paid off	74203001
58	Other	74203001
653	Rented	74203002
83	Owned but not yet paid off	74203002
200	Occupied rent-free	74203002
1313	Owned and fully paid off	74203002
83	Other	74203002
495	Rented	74203003
231	Owned but not yet paid off	74203003
158	Occupied rent-free	74203003
1186	Owned and fully paid off	74203003
66	Other	74203003
401	Rented	74203004
72	Owned but not yet paid off	74203004
201	Occupied rent-free	74203004
1086	Owned and fully paid off	74203004
277	Other	74203004
517	Rented	74203005
81	Owned but not yet paid off	74203005
103	Occupied rent-free	74203005
1282	Owned and fully paid off	74203005
33	Other	74203005
389	Rented	74203006
67	Owned but not yet paid off	74203006
406	Occupied rent-free	74203006
815	Owned and fully paid off	74203006
27	Other	74203006
1118	Rented	74203007
206	Owned but not yet paid off	74203007
197	Occupied rent-free	74203007
1410	Owned and fully paid off	74203007
23	Other	74203007
1034	Rented	74203008
805	Owned but not yet paid off	74203008
150	Occupied rent-free	74203008
782	Owned and fully paid off	74203008
34	Other	74203008
904	Rented	74203009
644	Owned but not yet paid off	74203009
80	Occupied rent-free	74203009
522	Owned and fully paid off	74203009
58	Other	74203009
496	Rented	74203010
528	Owned but not yet paid off	74203010
297	Occupied rent-free	74203010
775	Owned and fully paid off	74203010
71	Other	74203010
647	Rented	74203011
24	Owned but not yet paid off	74203011
233	Occupied rent-free	74203011
1151	Owned and fully paid off	74203011
53	Other	74203011
719	Rented	74203012
262	Owned but not yet paid off	74203012
934	Occupied rent-free	74203012
570	Owned and fully paid off	74203012
56	Other	74203012
468	Rented	74203013
309	Owned but not yet paid off	74203013
408	Occupied rent-free	74203013
1522	Owned and fully paid off	74203013
51	Other	74203013
1892	Rented	74801001
26	Owned but not yet paid off	74801001
1782	Occupied rent-free	74801001
563	Owned and fully paid off	74801001
72	Other	74801001
1605	Rented	74801002
292	Owned but not yet paid off	74801002
1390	Occupied rent-free	74801002
1566	Owned and fully paid off	74801002
15	Other	74801002
1742	Rented	74801003
209	Owned but not yet paid off	74801003
762	Occupied rent-free	74801003
937	Owned and fully paid off	74801003
141	Other	74801003
1990	Rented	74801004
137	Owned but not yet paid off	74801004
689	Occupied rent-free	74801004
1245	Owned and fully paid off	74801004
45	Other	74801004
1378	Rented	74801005
70	Owned but not yet paid off	74801005
414	Occupied rent-free	74801005
694	Owned and fully paid off	74801005
41	Other	74801005
348	Rented	74801006
355	Owned but not yet paid off	74801006
142	Occupied rent-free	74801006
985	Owned and fully paid off	74801006
30	Other	74801006
639	Rented	74801007
835	Owned but not yet paid off	74801007
77	Occupied rent-free	74801007
1026	Owned and fully paid off	74801007
40	Other	74801007
1055	Rented	74801008
760	Owned but not yet paid off	74801008
196	Occupied rent-free	74801008
1046	Owned and fully paid off	74801008
84	Other	74801008
493	Rented	74801009
744	Owned but not yet paid off	74801009
154	Occupied rent-free	74801009
576	Owned and fully paid off	74801009
40	Other	74801009
1457	Rented	74801010
332	Owned but not yet paid off	74801010
188	Occupied rent-free	74801010
790	Owned and fully paid off	74801010
24	Other	74801010
997	Rented	74801011
755	Owned but not yet paid off	74801011
935	Occupied rent-free	74801011
1116	Owned and fully paid off	74801011
40	Other	74801011
653	Rented	74801012
115	Owned but not yet paid off	74801012
296	Occupied rent-free	74801012
636	Owned and fully paid off	74801012
12	Other	74801012
865	Rented	74801013
732	Owned but not yet paid off	74801013
66	Occupied rent-free	74801013
1082	Owned and fully paid off	74801013
22	Other	74801013
1337	Rented	74801014
406	Owned but not yet paid off	74801014
929	Occupied rent-free	74801014
823	Owned and fully paid off	74801014
83	Other	74801014
944	Rented	74801015
224	Owned but not yet paid off	74801015
1251	Occupied rent-free	74801015
664	Owned and fully paid off	74801015
26	Other	74801015
1114	Rented	74801016
598	Owned but not yet paid off	74801016
397	Occupied rent-free	74801016
2492	Owned and fully paid off	74801016
44	Other	74801016
887	Rented	74801017
1052	Owned but not yet paid off	74801017
268	Occupied rent-free	74801017
666	Owned and fully paid off	74801017
58	Other	74801017
891	Rented	74801018
1290	Owned but not yet paid off	74801018
185	Occupied rent-free	74801018
765	Owned and fully paid off	74801018
74	Other	74801018
490	Rented	74801019
204	Owned but not yet paid off	74801019
254	Occupied rent-free	74801019
869	Owned and fully paid off	74801019
51	Other	74801019
2795	Rented	74801020
677	Owned but not yet paid off	74801020
96	Occupied rent-free	74801020
599	Owned and fully paid off	74801020
61	Other	74801020
708	Rented	74801021
1215	Owned but not yet paid off	74801021
157	Occupied rent-free	74801021
781	Owned and fully paid off	74801021
49	Other	74801021
1143	Rented	74801022
1303	Owned but not yet paid off	74801022
239	Occupied rent-free	74801022
942	Owned and fully paid off	74801022
171	Other	74801022
1830	Rented	74801023
282	Owned but not yet paid off	74801023
2228	Occupied rent-free	74801023
289	Owned and fully paid off	74801023
101	Other	74801023
1785	Rented	74801024
219	Owned but not yet paid off	74801024
599	Occupied rent-free	74801024
1187	Owned and fully paid off	74801024
245	Other	74801024
691	Rented	74801025
104	Owned but not yet paid off	74801025
1071	Occupied rent-free	74801025
667	Owned and fully paid off	74801025
112	Other	74801025
2071	Rented	74801026
991	Owned but not yet paid off	74801026
422	Occupied rent-free	74801026
651	Owned and fully paid off	74801026
106	Other	74801026
2540	Rented	74801027
354	Owned but not yet paid off	74801027
1176	Occupied rent-free	74801027
706	Owned and fully paid off	74801027
196	Other	74801027
793	Rented	74801028
1574	Owned but not yet paid off	74801028
135	Occupied rent-free	74801028
523	Owned and fully paid off	74801028
45	Other	74801028
914	Rented	74801029
878	Owned but not yet paid off	74801029
408	Occupied rent-free	74801029
448	Owned and fully paid off	74801029
81	Other	74801029
1483	Rented	74801030
357	Owned but not yet paid off	74801030
3775	Occupied rent-free	74801030
441	Owned and fully paid off	74801030
117	Other	74801030
1110	Rented	74801031
216	Owned but not yet paid off	74801031
1157	Occupied rent-free	74801031
766	Owned and fully paid off	74801031
238	Other	74801031
857	Rented	74801032
62	Owned but not yet paid off	74801032
1259	Occupied rent-free	74801032
123	Owned and fully paid off	74801032
64	Other	74801032
1368	Rented	74801033
225	Owned but not yet paid off	74801033
1308	Occupied rent-free	74801033
276	Owned and fully paid off	74801033
156	Other	74801033
2200	Rented	74801034
40	Owned but not yet paid off	74801034
1251	Occupied rent-free	74801034
1241	Owned and fully paid off	74801034
152	Other	74801034
532	Rented	74802001
126	Owned but not yet paid off	74802001
1989	Occupied rent-free	74802001
300	Owned and fully paid off	74802001
292	Other	74802001
1070	Rented	74802002
953	Owned but not yet paid off	74802002
620	Occupied rent-free	74802002
726	Owned and fully paid off	74802002
96	Other	74802002
557	Rented	74802003
382	Owned but not yet paid off	74802003
583	Occupied rent-free	74802003
265	Owned and fully paid off	74802003
67	Other	74802003
253	Rented	74802004
390	Owned but not yet paid off	74802004
130	Occupied rent-free	74802004
247	Owned and fully paid off	74802004
17	Other	74802004
985	Rented	74802005
343	Owned but not yet paid off	74802005
78	Occupied rent-free	74802005
152	Owned and fully paid off	74802005
22	Other	74802005
968	Rented	74802006
586	Owned but not yet paid off	74802006
103	Occupied rent-free	74802006
452	Owned and fully paid off	74802006
58	Other	74802006
732	Rented	74802007
971	Owned but not yet paid off	74802007
75	Occupied rent-free	74802007
662	Owned and fully paid off	74802007
42	Other	74802007
1310	Rented	74802008
397	Owned but not yet paid off	74802008
146	Occupied rent-free	74802008
478	Owned and fully paid off	74802008
34	Other	74802008
918	Rented	74802009
884	Owned but not yet paid off	74802009
481	Occupied rent-free	74802009
492	Owned and fully paid off	74802009
103	Other	74802009
386	Rented	74802010
90	Owned but not yet paid off	74802010
61	Occupied rent-free	74802010
531	Owned and fully paid off	74802010
6	Other	74802010
326	Rented	74802011
286	Owned but not yet paid off	74802011
87	Occupied rent-free	74802011
446	Owned and fully paid off	74802011
36	Other	74802011
32	Rented	74802012
39	Owned but not yet paid off	74802012
1418	Occupied rent-free	74802012
666	Owned and fully paid off	74802012
10	Other	74802012
393	Rented	74802013
295	Owned but not yet paid off	74802013
291	Occupied rent-free	74802013
604	Owned and fully paid off	74802013
95	Other	74802013
643	Rented	74802014
58	Owned but not yet paid off	74802014
276	Occupied rent-free	74802014
908	Owned and fully paid off	74802014
87	Other	74802014
467	Rented	74802015
46	Owned but not yet paid off	74802015
143	Occupied rent-free	74802015
1185	Owned and fully paid off	74802015
18	Other	74802015
647	Rented	74802016
301	Owned but not yet paid off	74802016
158	Occupied rent-free	74802016
1012	Owned and fully paid off	74802016
90	Other	74802016
346	Rented	74802017
39	Owned but not yet paid off	74802017
173	Occupied rent-free	74802017
605	Owned and fully paid off	74802017
6	Other	74802017
1107	Rented	74802018
154	Owned but not yet paid off	74802018
118	Occupied rent-free	74802018
819	Owned and fully paid off	74802018
183	Other	74802018
486	Rented	74802019
34	Owned but not yet paid off	74802019
136	Occupied rent-free	74802019
782	Owned and fully paid off	74802019
26	Other	74802019
989	Rented	74802020
308	Owned but not yet paid off	74802020
87	Occupied rent-free	74802020
991	Owned and fully paid off	74802020
34	Other	74802020
389	Rented	74802021
194	Owned but not yet paid off	74802021
111	Occupied rent-free	74802021
418	Owned and fully paid off	74802021
69	Other	74802021
867	Rented	74802022
71	Owned but not yet paid off	74802022
54	Occupied rent-free	74802022
494	Owned and fully paid off	74802022
11	Other	74802022
2380	Rented	74803001
67	Owned but not yet paid off	74803001
528	Occupied rent-free	74803001
387	Owned and fully paid off	74803001
127	Other	74803001
2512	Rented	74803002
91	Owned but not yet paid off	74803002
254	Occupied rent-free	74803002
45	Owned and fully paid off	74803002
216	Other	74803002
137	Rented	74803003
16	Owned but not yet paid off	74803003
101	Occupied rent-free	74803003
0	Owned and fully paid off	74803003
3	Other	74803003
1058	Rented	74803004
175	Owned but not yet paid off	74803004
49	Occupied rent-free	74803004
268	Owned and fully paid off	74803004
60	Other	74803004
1237	Rented	74803005
100	Owned but not yet paid off	74803005
301	Occupied rent-free	74803005
208	Owned and fully paid off	74803005
155	Other	74803005
937	Rented	74803006
608	Owned but not yet paid off	74803006
185	Occupied rent-free	74803006
464	Owned and fully paid off	74803006
133	Other	74803006
565	Rented	74803007
112	Owned but not yet paid off	74803007
1297	Occupied rent-free	74803007
421	Owned and fully paid off	74803007
13	Other	74803007
459	Rented	74803008
26	Owned but not yet paid off	74803008
1495	Occupied rent-free	74803008
600	Owned and fully paid off	74803008
177	Other	74803008
374	Rented	74803009
411	Owned but not yet paid off	74803009
703	Occupied rent-free	74803009
1130	Owned and fully paid off	74803009
6	Other	74803009
1648	Rented	74803010
71	Owned but not yet paid off	74803010
834	Occupied rent-free	74803010
514	Owned and fully paid off	74803010
27	Other	74803010
1107	Rented	74803011
159	Owned but not yet paid off	74803011
233	Occupied rent-free	74803011
652	Owned and fully paid off	74803011
5	Other	74803011
1905	Rented	74803012
101	Owned but not yet paid off	74803012
320	Occupied rent-free	74803012
681	Owned and fully paid off	74803012
24	Other	74803012
1485	Rented	74803013
165	Owned but not yet paid off	74803013
130	Occupied rent-free	74803013
435	Owned and fully paid off	74803013
14	Other	74803013
1611	Rented	74803014
293	Owned but not yet paid off	74803014
593	Occupied rent-free	74803014
672	Owned and fully paid off	74803014
14	Other	74803014
937	Rented	74803015
248	Owned but not yet paid off	74803015
347	Occupied rent-free	74803015
955	Owned and fully paid off	74803015
6	Other	74803015
1709	Rented	74803016
90	Owned but not yet paid off	74803016
1257	Occupied rent-free	74803016
248	Owned and fully paid off	74803016
23	Other	74803016
802	Rented	74804001
51	Owned but not yet paid off	74804001
1474	Occupied rent-free	74804001
854	Owned and fully paid off	74804001
25	Other	74804001
506	Rented	74804002
78	Owned but not yet paid off	74804002
835	Occupied rent-free	74804002
830	Owned and fully paid off	74804002
66	Other	74804002
591	Rented	74804003
13	Owned but not yet paid off	74804003
759	Occupied rent-free	74804003
876	Owned and fully paid off	74804003
50	Other	74804003
497	Rented	74804004
43	Owned but not yet paid off	74804004
1737	Occupied rent-free	74804004
565	Owned and fully paid off	74804004
108	Other	74804004
799	Rented	74804005
73	Owned but not yet paid off	74804005
338	Occupied rent-free	74804005
1	Owned and fully paid off	74804005
40	Other	74804005
545	Rented	74804006
209	Owned but not yet paid off	74804006
251	Occupied rent-free	74804006
644	Owned and fully paid off	74804006
28	Other	74804006
671	Rented	74804007
561	Owned but not yet paid off	74804007
184	Occupied rent-free	74804007
708	Owned and fully paid off	74804007
20	Other	74804007
602	Rented	74804008
33	Owned but not yet paid off	74804008
497	Occupied rent-free	74804008
965	Owned and fully paid off	74804008
9	Other	74804008
321	Rented	74804009
40	Owned but not yet paid off	74804009
1092	Occupied rent-free	74804009
602	Owned and fully paid off	74804009
15	Other	74804009
425	Rented	74804010
21	Owned but not yet paid off	74804010
408	Occupied rent-free	74804010
1071	Owned and fully paid off	74804010
119	Other	74804010
2871	Rented	74804011
52	Owned but not yet paid off	74804011
52	Occupied rent-free	74804011
120	Owned and fully paid off	74804011
43	Other	74804011
814	Rented	74804012
159	Owned but not yet paid off	74804012
210	Occupied rent-free	74804012
336	Owned and fully paid off	74804012
23	Other	74804012
1057	Rented	74804013
72	Owned but not yet paid off	74804013
911	Occupied rent-free	74804013
87	Owned and fully paid off	74804013
270	Other	74804013
4782	Rented	74804014
65	Owned but not yet paid off	74804014
626	Occupied rent-free	74804014
77	Owned and fully paid off	74804014
190	Other	74804014
1516	Rented	74804015
35	Owned but not yet paid off	74804015
343	Occupied rent-free	74804015
46	Owned and fully paid off	74804015
38	Other	74804015
1745	Rented	74804016
171	Owned but not yet paid off	74804016
203	Occupied rent-free	74804016
292	Owned and fully paid off	74804016
108	Other	74804016
516	Rented	74804017
418	Owned but not yet paid off	74804017
236	Occupied rent-free	74804017
671	Owned and fully paid off	74804017
37	Other	74804017
1532	Rented	74804018
152	Owned but not yet paid off	74804018
88	Occupied rent-free	74804018
232	Owned and fully paid off	74804018
78	Other	74804018
0	Rented	74804019
0	Owned but not yet paid off	74804019
0	Occupied rent-free	74804019
0	Owned and fully paid off	74804019
0	Other	74804019
1919	Rented	74804020
48	Owned but not yet paid off	74804020
932	Occupied rent-free	74804020
578	Owned and fully paid off	74804020
69	Other	74804020
2386	Rented	74804021
374	Owned but not yet paid off	74804021
221	Occupied rent-free	74804021
944	Owned and fully paid off	74804021
82	Other	74804021
342	Rented	74804022
95	Owned but not yet paid off	74804022
254	Occupied rent-free	74804022
1111	Owned and fully paid off	74804022
102	Other	74804022
1521	Rented	74804023
217	Owned but not yet paid off	74804023
152	Occupied rent-free	74804023
480	Owned and fully paid off	74804023
19	Other	74804023
664	Rented	74804024
125	Owned but not yet paid off	74804024
59	Occupied rent-free	74804024
649	Owned and fully paid off	74804024
51	Other	74804024
616	Rented	74804025
208	Owned but not yet paid off	74804025
90	Occupied rent-free	74804025
1196	Owned and fully paid off	74804025
30	Other	74804025
1187	Rented	74804026
151	Owned but not yet paid off	74804026
177	Occupied rent-free	74804026
1535	Owned and fully paid off	74804026
100	Other	74804026
1835	Rented	74804027
15	Owned but not yet paid off	74804027
221	Occupied rent-free	74804027
2	Owned and fully paid off	74804027
101	Other	74804027
1215	Rented	74804028
391	Owned but not yet paid off	74804028
264	Occupied rent-free	74804028
475	Owned and fully paid off	74804028
86	Other	74804028
7928	Rented	79700001
5557	Owned but not yet paid off	79700001
4918	Occupied rent-free	79700001
2723	Owned and fully paid off	79700001
479	Other	79700001
7991	Rented	79700002
770	Owned but not yet paid off	79700002
896	Occupied rent-free	79700002
2534	Owned and fully paid off	79700002
90	Other	79700002
5817	Rented	79700003
630	Owned but not yet paid off	79700003
1813	Occupied rent-free	79700003
1856	Owned and fully paid off	79700003
109	Other	79700003
2071	Rented	79700004
105	Owned but not yet paid off	79700004
3512	Occupied rent-free	79700004
612	Owned and fully paid off	79700004
41	Other	79700004
6421	Rented	79700005
395	Owned but not yet paid off	79700005
624	Occupied rent-free	79700005
2187	Owned and fully paid off	79700005
35	Other	79700005
6395	Rented	79700006
767	Owned but not yet paid off	79700006
966	Occupied rent-free	79700006
2405	Owned and fully paid off	79700006
45	Other	79700006
5414	Rented	79700007
763	Owned but not yet paid off	79700007
295	Occupied rent-free	79700007
2208	Owned and fully paid off	79700007
71	Other	79700007
3943	Rented	79700008
1009	Owned but not yet paid off	79700008
1924	Occupied rent-free	79700008
3781	Owned and fully paid off	79700008
356	Other	79700008
4033	Rented	79700009
949	Owned but not yet paid off	79700009
161	Occupied rent-free	79700009
2004	Owned and fully paid off	79700009
114	Other	79700009
3805	Rented	79700010
615	Owned but not yet paid off	79700010
282	Occupied rent-free	79700010
2479	Owned and fully paid off	79700010
119	Other	79700010
3735	Rented	79700011
506	Owned but not yet paid off	79700011
657	Occupied rent-free	79700011
2061	Owned and fully paid off	79700011
59	Other	79700011
10309	Rented	79700012
833	Owned but not yet paid off	79700012
595	Occupied rent-free	79700012
1950	Owned and fully paid off	79700012
216	Other	79700012
4920	Rented	79700013
2943	Owned but not yet paid off	79700013
632	Occupied rent-free	79700013
1426	Owned and fully paid off	79700013
75	Other	79700013
5573	Rented	79700014
703	Owned but not yet paid off	79700014
492	Occupied rent-free	79700014
2601	Owned and fully paid off	79700014
79	Other	79700014
3312	Rented	79700015
3865	Owned but not yet paid off	79700015
437	Occupied rent-free	79700015
1993	Owned and fully paid off	79700015
204	Other	79700015
3506	Rented	79700016
2855	Owned but not yet paid off	79700016
314	Occupied rent-free	79700016
1478	Owned and fully paid off	79700016
211	Other	79700016
5482	Rented	79700017
3337	Owned but not yet paid off	79700017
296	Occupied rent-free	79700017
1317	Owned and fully paid off	79700017
248	Other	79700017
3106	Rented	79700018
3934	Owned but not yet paid off	79700018
380	Occupied rent-free	79700018
2086	Owned and fully paid off	79700018
174	Other	79700018
2440	Rented	79700019
3284	Owned but not yet paid off	79700019
715	Occupied rent-free	79700019
2586	Owned and fully paid off	79700019
240	Other	79700019
3468	Rented	79700020
3106	Owned but not yet paid off	79700020
683	Occupied rent-free	79700020
2413	Owned and fully paid off	79700020
359	Other	79700020
8335	Rented	79700021
2828	Owned but not yet paid off	79700021
2690	Occupied rent-free	79700021
3937	Owned and fully paid off	79700021
416	Other	79700021
4884	Rented	79700022
2840	Owned but not yet paid off	79700022
483	Occupied rent-free	79700022
1705	Owned and fully paid off	79700022
139	Other	79700022
2497	Rented	79700023
4127	Owned but not yet paid off	79700023
763	Occupied rent-free	79700023
2085	Owned and fully paid off	79700023
195	Other	79700023
3648	Rented	79700024
3717	Owned but not yet paid off	79700024
2439	Occupied rent-free	79700024
4602	Owned and fully paid off	79700024
437	Other	79700024
2050	Rented	79700025
2129	Owned but not yet paid off	79700025
3409	Occupied rent-free	79700025
5845	Owned and fully paid off	79700025
293	Other	79700025
1409	Rented	79700026
641	Owned but not yet paid off	79700026
4501	Occupied rent-free	79700026
3644	Owned and fully paid off	79700026
448	Other	79700026
1616	Rented	79700027
3055	Owned but not yet paid off	79700027
384	Occupied rent-free	79700027
1988	Owned and fully paid off	79700027
196	Other	79700027
2624	Rented	79700028
2876	Owned but not yet paid off	79700028
419	Occupied rent-free	79700028
2321	Owned and fully paid off	79700028
211	Other	79700028
2156	Rented	79700029
342	Owned but not yet paid off	79700029
285	Occupied rent-free	79700029
1904	Owned and fully paid off	79700029
42	Other	79700029
2779	Rented	79700030
261	Owned but not yet paid off	79700030
1138	Occupied rent-free	79700030
2439	Owned and fully paid off	79700030
95	Other	79700030
3457	Rented	79700031
2957	Owned but not yet paid off	79700031
432	Occupied rent-free	79700031
2530	Owned and fully paid off	79700031
235	Other	79700031
3408	Rented	79700032
2637	Owned but not yet paid off	79700032
375	Occupied rent-free	79700032
1360	Owned and fully paid off	79700032
159	Other	79700032
9269	Rented	79700033
1908	Owned but not yet paid off	79700033
5268	Occupied rent-free	79700033
2833	Owned and fully paid off	79700033
175	Other	79700033
1884	Rented	79700034
1011	Owned but not yet paid off	79700034
1317	Occupied rent-free	79700034
1822	Owned and fully paid off	79700034
355	Other	79700034
7476	Rented	79700035
904	Owned but not yet paid off	79700035
2295	Occupied rent-free	79700035
1404	Owned and fully paid off	79700035
80	Other	79700035
5810	Rented	79700036
1870	Owned but not yet paid off	79700036
389	Occupied rent-free	79700036
1197	Owned and fully paid off	79700036
138	Other	79700036
3589	Rented	79700037
3332	Owned but not yet paid off	79700037
450	Occupied rent-free	79700037
2179	Owned and fully paid off	79700037
135	Other	79700037
1518	Rented	79700038
5575	Owned but not yet paid off	79700038
310	Occupied rent-free	79700038
2128	Owned and fully paid off	79700038
150	Other	79700038
3519	Rented	79700039
3769	Owned but not yet paid off	79700039
1239	Occupied rent-free	79700039
1798	Owned and fully paid off	79700039
164	Other	79700039
2444	Rented	79700040
2719	Owned but not yet paid off	79700040
1903	Occupied rent-free	79700040
2235	Owned and fully paid off	79700040
164	Other	79700040
4565	Rented	79700041
2692	Owned but not yet paid off	79700041
2622	Occupied rent-free	79700041
2833	Owned and fully paid off	79700041
803	Other	79700041
6118	Rented	79700042
2425	Owned but not yet paid off	79700042
2174	Occupied rent-free	79700042
1699	Owned and fully paid off	79700042
537	Other	79700042
1271	Rented	79700043
4537	Owned but not yet paid off	79700043
279	Occupied rent-free	79700043
1554	Owned and fully paid off	79700043
159	Other	79700043
2179	Rented	79700044
3010	Owned but not yet paid off	79700044
306	Occupied rent-free	79700044
3328	Owned and fully paid off	79700044
267	Other	79700044
2076	Rented	79700045
1407	Owned but not yet paid off	79700045
2351	Occupied rent-free	79700045
3061	Owned and fully paid off	79700045
402	Other	79700045
1520	Rented	79700046
1345	Owned but not yet paid off	79700046
285	Occupied rent-free	79700046
4041	Owned and fully paid off	79700046
99	Other	79700046
2660	Rented	79700047
1194	Owned but not yet paid off	79700047
570	Occupied rent-free	79700047
4041	Owned and fully paid off	79700047
104	Other	79700047
2694	Rented	79700048
254	Owned but not yet paid off	79700048
399	Occupied rent-free	79700048
2955	Owned and fully paid off	79700048
56	Other	79700048
4614	Rented	79700049
458	Owned but not yet paid off	79700049
594	Occupied rent-free	79700049
2084	Owned and fully paid off	79700049
139	Other	79700049
5745	Rented	79700050
271	Owned but not yet paid off	79700050
614	Occupied rent-free	79700050
2713	Owned and fully paid off	79700050
138	Other	79700050
7744	Rented	79700051
487	Owned but not yet paid off	79700051
1378	Occupied rent-free	79700051
1657	Owned and fully paid off	79700051
127	Other	79700051
6591	Rented	79700052
420	Owned but not yet paid off	79700052
3655	Occupied rent-free	79700052
2876	Owned and fully paid off	79700052
160	Other	79700052
3921	Rented	79700053
746	Owned but not yet paid off	79700053
3783	Occupied rent-free	79700053
2257	Owned and fully paid off	79700053
323	Other	79700053
5518	Rented	79700054
438	Owned but not yet paid off	79700054
781	Occupied rent-free	79700054
1448	Owned and fully paid off	79700054
127	Other	79700054
4636	Rented	79700055
370	Owned but not yet paid off	79700055
590	Occupied rent-free	79700055
3155	Owned and fully paid off	79700055
186	Other	79700055
3912	Rented	79700056
174	Owned but not yet paid off	79700056
864	Occupied rent-free	79700056
2516	Owned and fully paid off	79700056
59	Other	79700056
5387	Rented	79700057
713	Owned but not yet paid off	79700057
2465	Occupied rent-free	79700057
2336	Owned and fully paid off	79700057
146	Other	79700057
4612	Rented	79700058
1506	Owned but not yet paid off	79700058
2403	Occupied rent-free	79700058
4098	Owned and fully paid off	79700058
273	Other	79700058
3053	Rented	79700059
360	Owned but not yet paid off	79700059
1709	Occupied rent-free	79700059
3905	Owned and fully paid off	79700059
88	Other	79700059
2220	Rented	79700060
697	Owned but not yet paid off	79700060
1362	Occupied rent-free	79700060
3999	Owned and fully paid off	79700060
115	Other	79700060
1760	Rented	79700061
1130	Owned but not yet paid off	79700061
4591	Occupied rent-free	79700061
4493	Owned and fully paid off	79700061
105	Other	79700061
1744	Rented	79700062
798	Owned but not yet paid off	79700062
713	Occupied rent-free	79700062
3048	Owned and fully paid off	79700062
90	Other	79700062
2497	Rented	79700063
742	Owned but not yet paid off	79700063
1782	Occupied rent-free	79700063
3612	Owned and fully paid off	79700063
170	Other	79700063
2114	Rented	79700064
922	Owned but not yet paid off	79700064
1640	Occupied rent-free	79700064
4181	Owned and fully paid off	79700064
879	Other	79700064
1739	Rented	79700065
517	Owned but not yet paid off	79700065
3639	Occupied rent-free	79700065
5003	Owned and fully paid off	79700065
144	Other	79700065
2368	Rented	79700066
616	Owned but not yet paid off	79700066
2623	Occupied rent-free	79700066
4898	Owned and fully paid off	79700066
355	Other	79700066
2407	Rented	79700067
1208	Owned but not yet paid off	79700067
1352	Occupied rent-free	79700067
4290	Owned and fully paid off	79700067
321	Other	79700067
2374	Rented	79700068
686	Owned but not yet paid off	79700068
3307	Occupied rent-free	79700068
3185	Owned and fully paid off	79700068
567	Other	79700068
2948	Rented	79700069
172	Owned but not yet paid off	79700069
756	Occupied rent-free	79700069
2735	Owned and fully paid off	79700069
90	Other	79700069
3577	Rented	79700070
232	Owned but not yet paid off	79700070
648	Occupied rent-free	79700070
2392	Owned and fully paid off	79700070
163	Other	79700070
3370	Rented	79700071
901	Owned but not yet paid off	79700071
2703	Occupied rent-free	79700071
3656	Owned and fully paid off	79700071
121	Other	79700071
2880	Rented	79700072
2622	Owned but not yet paid off	79700072
2503	Occupied rent-free	79700072
2544	Owned and fully paid off	79700072
333	Other	79700072
4463	Rented	79700073
1303	Owned but not yet paid off	79700073
1873	Occupied rent-free	79700073
2144	Owned and fully paid off	79700073
154	Other	79700073
2960	Rented	79700074
2075	Owned but not yet paid off	79700074
1135	Occupied rent-free	79700074
2313	Owned and fully paid off	79700074
222	Other	79700074
4787	Rented	79700075
2344	Owned but not yet paid off	79700075
789	Occupied rent-free	79700075
2202	Owned and fully paid off	79700075
178	Other	79700075
2219	Rented	79700076
3190	Owned but not yet paid off	79700076
762	Occupied rent-free	79700076
2407	Owned and fully paid off	79700076
220	Other	79700076
1840	Rented	79700077
1386	Owned but not yet paid off	79700077
2048	Occupied rent-free	79700077
4315	Owned and fully paid off	79700077
165	Other	79700077
2435	Rented	79700078
990	Owned but not yet paid off	79700078
962	Occupied rent-free	79700078
2511	Owned and fully paid off	79700078
141	Other	79700078
2956	Rented	79700079
1007	Owned but not yet paid off	79700079
1077	Occupied rent-free	79700079
2036	Owned and fully paid off	79700079
2212	Other	79700079
1874	Rented	79700080
500	Owned but not yet paid off	79700080
304	Occupied rent-free	79700080
3282	Owned and fully paid off	79700080
75	Other	79700080
3039	Rented	79700081
894	Owned but not yet paid off	79700081
3832	Occupied rent-free	79700081
4365	Owned and fully paid off	79700081
1907	Other	79700081
2047	Rented	79700082
974	Owned but not yet paid off	79700082
497	Occupied rent-free	79700082
3708	Owned and fully paid off	79700082
297	Other	79700082
1921	Rented	79700083
318	Owned but not yet paid off	79700083
390	Occupied rent-free	79700083
4249	Owned and fully paid off	79700083
270	Other	79700083
3071	Rented	79700084
950	Owned but not yet paid off	79700084
3807	Occupied rent-free	79700084
3595	Owned and fully paid off	79700084
403	Other	79700084
1717	Rented	79700085
1056	Owned but not yet paid off	79700085
1104	Occupied rent-free	79700085
4476	Owned and fully paid off	79700085
230	Other	79700085
1375	Rented	79700086
1054	Owned but not yet paid off	79700086
6111	Occupied rent-free	79700086
4013	Owned and fully paid off	79700086
494	Other	79700086
1296	Rented	79700087
389	Owned but not yet paid off	79700087
2738	Occupied rent-free	79700087
4449	Owned and fully paid off	79700087
241	Other	79700087
2468	Rented	79700088
2088	Owned but not yet paid off	79700088
1585	Occupied rent-free	79700088
3091	Owned and fully paid off	79700088
201	Other	79700088
14009	Rented	79700089
2189	Owned but not yet paid off	79700089
2985	Occupied rent-free	79700089
2794	Owned and fully paid off	79700089
292	Other	79700089
5656	Rented	79700090
348	Owned but not yet paid off	79700090
3202	Occupied rent-free	79700090
2218	Owned and fully paid off	79700090
141	Other	79700090
2114	Rented	79700091
5377	Owned but not yet paid off	79700091
569	Occupied rent-free	79700091
1595	Owned and fully paid off	79700091
167	Other	79700091
3347	Rented	79700092
3269	Owned but not yet paid off	79700092
545	Occupied rent-free	79700092
1924	Owned and fully paid off	79700092
340	Other	79700092
5255	Rented	79700093
1499	Owned but not yet paid off	79700093
2986	Occupied rent-free	79700093
1631	Owned and fully paid off	79700093
106	Other	79700093
2555	Rented	79700094
3646	Owned but not yet paid off	79700094
370	Occupied rent-free	79700094
1754	Owned and fully paid off	79700094
177	Other	79700094
4591	Rented	79700095
1180	Owned but not yet paid off	79700095
1584	Occupied rent-free	79700095
2586	Owned and fully paid off	79700095
218	Other	79700095
1408	Rented	79700096
703	Owned but not yet paid off	79700096
3060	Occupied rent-free	79700096
2786	Owned and fully paid off	79700096
495	Other	79700096
4196	Rented	79700097
3263	Owned but not yet paid off	79700097
349	Occupied rent-free	79700097
1993	Owned and fully paid off	79700097
182	Other	79700097
1315	Rented	79700098
1486	Owned but not yet paid off	79700098
351	Occupied rent-free	79700098
3011	Owned and fully paid off	79700098
68	Other	79700098
2859	Rented	79700099
1087	Owned but not yet paid off	79700099
4337	Occupied rent-free	79700099
5053	Owned and fully paid off	79700099
265	Other	79700099
3481	Rented	79700100
2911	Owned but not yet paid off	79700100
1597	Occupied rent-free	79700100
1612	Owned and fully paid off	79700100
249	Other	79700100
2253	Rented	79700101
1225	Owned but not yet paid off	79700101
7190	Occupied rent-free	79700101
2272	Owned and fully paid off	79700101
327	Other	79700101
1860	Rented	79800001
499	Owned but not yet paid off	79800001
2825	Occupied rent-free	79800001
6684	Owned and fully paid off	79800001
790	Other	79800001
1549	Rented	79800002
272	Owned but not yet paid off	79800002
3678	Occupied rent-free	79800002
5873	Owned and fully paid off	79800002
549	Other	79800002
1693	Rented	79800003
467	Owned but not yet paid off	79800003
1691	Occupied rent-free	79800003
4366	Owned and fully paid off	79800003
318	Other	79800003
1707	Rented	79800004
297	Owned but not yet paid off	79800004
2281	Occupied rent-free	79800004
5311	Owned and fully paid off	79800004
1994	Other	79800004
2546	Rented	79800005
353	Owned but not yet paid off	79800005
5735	Occupied rent-free	79800005
4932	Owned and fully paid off	79800005
1262	Other	79800005
1808	Rented	79800006
430	Owned but not yet paid off	79800006
4347	Occupied rent-free	79800006
5271	Owned and fully paid off	79800006
580	Other	79800006
3074	Rented	79800007
1773	Owned but not yet paid off	79800007
1952	Occupied rent-free	79800007
3749	Owned and fully paid off	79800007
121	Other	79800007
4533	Rented	79800008
854	Owned but not yet paid off	79800008
4337	Occupied rent-free	79800008
4127	Owned and fully paid off	79800008
301	Other	79800008
1985	Rented	79800009
1042	Owned but not yet paid off	79800009
357	Occupied rent-free	79800009
3454	Owned and fully paid off	79800009
137	Other	79800009
2109	Rented	79800010
688	Owned but not yet paid off	79800010
2972	Occupied rent-free	79800010
3263	Owned and fully paid off	79800010
642	Other	79800010
3871	Rented	79800011
572	Owned but not yet paid off	79800011
840	Occupied rent-free	79800011
3403	Owned and fully paid off	79800011
124	Other	79800011
3508	Rented	79800012
842	Owned but not yet paid off	79800012
437	Occupied rent-free	79800012
2821	Owned and fully paid off	79800012
265	Other	79800012
2086	Rented	79800013
6036	Owned but not yet paid off	79800013
176	Occupied rent-free	79800013
2239	Owned and fully paid off	79800013
92	Other	79800013
882	Rented	79800014
2274	Owned but not yet paid off	79800014
602	Occupied rent-free	79800014
3923	Owned and fully paid off	79800014
147	Other	79800014
2792	Rented	79800015
459	Owned but not yet paid off	79800015
1131	Occupied rent-free	79800015
2269	Owned and fully paid off	79800015
108	Other	79800015
2751	Rented	79800016
420	Owned but not yet paid off	79800016
2785	Occupied rent-free	79800016
2614	Owned and fully paid off	79800016
112	Other	79800016
2668	Rented	79800017
921	Owned but not yet paid off	79800017
1935	Occupied rent-free	79800017
2805	Owned and fully paid off	79800017
142	Other	79800017
2740	Rented	79800018
1449	Owned but not yet paid off	79800018
430	Occupied rent-free	79800018
3057	Owned and fully paid off	79800018
379	Other	79800018
2358	Rented	79800019
395	Owned but not yet paid off	79800019
2962	Occupied rent-free	79800019
2278	Owned and fully paid off	79800019
163	Other	79800019
2725	Rented	79800020
465	Owned but not yet paid off	79800020
1227	Occupied rent-free	79800020
3761	Owned and fully paid off	79800020
59	Other	79800020
3540	Rented	79800021
198	Owned but not yet paid off	79800021
2347	Occupied rent-free	79800021
2218	Owned and fully paid off	79800021
176	Other	79800021
2396	Rented	79800022
767	Owned but not yet paid off	79800022
944	Occupied rent-free	79800022
3173	Owned and fully paid off	79800022
226	Other	79800022
2244	Rented	79800023
4757	Owned but not yet paid off	79800023
833	Occupied rent-free	79800023
2365	Owned and fully paid off	79800023
435	Other	79800023
4953	Rented	79800024
562	Owned but not yet paid off	79800024
2636	Occupied rent-free	79800024
1373	Owned and fully paid off	79800024
372	Other	79800024
4617	Rented	79800025
820	Owned but not yet paid off	79800025
983	Occupied rent-free	79800025
3646	Owned and fully paid off	79800025
153	Other	79800025
2390	Rented	79800026
316	Owned but not yet paid off	79800026
601	Occupied rent-free	79800026
2494	Owned and fully paid off	79800026
209	Other	79800026
2288	Rented	79800027
250	Owned but not yet paid off	79800027
586	Occupied rent-free	79800027
2834	Owned and fully paid off	79800027
336	Other	79800027
2948	Rented	79800028
606	Owned but not yet paid off	79800028
738	Occupied rent-free	79800028
2279	Owned and fully paid off	79800028
316	Other	79800028
2132	Rented	79800029
504	Owned but not yet paid off	79800029
813	Occupied rent-free	79800029
3034	Owned and fully paid off	79800029
152	Other	79800029
8285	Rented	79800030
311	Owned but not yet paid off	79800030
1626	Occupied rent-free	79800030
1872	Owned and fully paid off	79800030
244	Other	79800030
6292	Rented	79800031
435	Owned but not yet paid off	79800031
608	Occupied rent-free	79800031
1800	Owned and fully paid off	79800031
148	Other	79800031
5840	Rented	79800032
4684	Owned but not yet paid off	79800032
1602	Occupied rent-free	79800032
1712	Owned and fully paid off	79800032
552	Other	79800032
2378	Rented	79800033
459	Owned but not yet paid off	79800033
472	Occupied rent-free	79800033
3657	Owned and fully paid off	79800033
126	Other	79800033
4530	Rented	79800034
536	Owned but not yet paid off	79800034
2238	Occupied rent-free	79800034
2466	Owned and fully paid off	79800034
180	Other	79800034
2204	Rented	79800035
127	Owned but not yet paid off	79800035
1130	Occupied rent-free	79800035
2833	Owned and fully paid off	79800035
103	Other	79800035
1459	Rented	79800036
267	Owned but not yet paid off	79800036
573	Occupied rent-free	79800036
3117	Owned and fully paid off	79800036
69	Other	79800036
2317	Rented	79800037
703	Owned but not yet paid off	79800037
1612	Occupied rent-free	79800037
2759	Owned and fully paid off	79800037
314	Other	79800037
1473	Rented	79800038
271	Owned but not yet paid off	79800038
1968	Occupied rent-free	79800038
2815	Owned and fully paid off	79800038
71	Other	79800038
4149	Rented	79800039
357	Owned but not yet paid off	79800039
382	Occupied rent-free	79800039
3111	Owned and fully paid off	79800039
145	Other	79800039
3290	Rented	79800040
344	Owned but not yet paid off	79800040
955	Occupied rent-free	79800040
2576	Owned and fully paid off	79800040
160	Other	79800040
1711	Rented	79800041
343	Owned but not yet paid off	79800041
579	Occupied rent-free	79800041
2844	Owned and fully paid off	79800041
93	Other	79800041
3245	Rented	79800042
400	Owned but not yet paid off	79800042
934	Occupied rent-free	79800042
2199	Owned and fully paid off	79800042
210	Other	79800042
2593	Rented	79800043
384	Owned but not yet paid off	79800043
707	Occupied rent-free	79800043
3209	Owned and fully paid off	79800043
142	Other	79800043
7313	Rented	79800044
1909	Owned but not yet paid off	79800044
3612	Occupied rent-free	79800044
4734	Owned and fully paid off	79800044
378	Other	79800044
3718	Rented	79800045
346	Owned but not yet paid off	79800045
545	Occupied rent-free	79800045
3258	Owned and fully paid off	79800045
103	Other	79800045
4275	Rented	79800046
447	Owned but not yet paid off	79800046
1445	Occupied rent-free	79800046
2220	Owned and fully paid off	79800046
83	Other	79800046
4404	Rented	79800047
526	Owned but not yet paid off	79800047
655	Occupied rent-free	79800047
2690	Owned and fully paid off	79800047
91	Other	79800047
3066	Rented	79800048
1689	Owned but not yet paid off	79800048
322	Occupied rent-free	79800048
3600	Owned and fully paid off	79800048
137	Other	79800048
4051	Rented	79800049
1345	Owned but not yet paid off	79800049
6681	Occupied rent-free	79800049
3091	Owned and fully paid off	79800049
666	Other	79800049
1736	Rented	79800050
253	Owned but not yet paid off	79800050
1589	Occupied rent-free	79800050
2313	Owned and fully paid off	79800050
293	Other	79800050
3392	Rented	79800051
271	Owned but not yet paid off	79800051
1584	Occupied rent-free	79800051
1979	Owned and fully paid off	79800051
123	Other	79800051
2433	Rented	79800052
277	Owned but not yet paid off	79800052
472	Occupied rent-free	79800052
3591	Owned and fully paid off	79800052
202	Other	79800052
5628	Rented	79800053
7484	Owned but not yet paid off	79800053
3307	Occupied rent-free	79800053
3315	Owned and fully paid off	79800053
162	Other	79800053
3532	Rented	79800054
6255	Owned but not yet paid off	79800054
620	Occupied rent-free	79800054
2550	Owned and fully paid off	79800054
309	Other	79800054
5853	Rented	79800055
1525	Owned but not yet paid off	79800055
359	Occupied rent-free	79800055
1207	Owned and fully paid off	79800055
120	Other	79800055
5770	Rented	79800056
2295	Owned but not yet paid off	79800056
415	Occupied rent-free	79800056
1541	Owned and fully paid off	79800056
178	Other	79800056
6976	Rented	79800057
2873	Owned but not yet paid off	79800057
385	Occupied rent-free	79800057
1489	Owned and fully paid off	79800057
211	Other	79800057
4805	Rented	79800058
834	Owned but not yet paid off	79800058
570	Occupied rent-free	79800058
1685	Owned and fully paid off	79800058
146	Other	79800058
1890	Rented	79800059
4	Owned but not yet paid off	79800059
8	Occupied rent-free	79800059
4	Owned and fully paid off	79800059
0	Other	79800059
12559	Rented	79800060
78	Owned but not yet paid off	79800060
239	Occupied rent-free	79800060
134	Owned and fully paid off	79800060
152	Other	79800060
4207	Rented	79800061
210	Owned but not yet paid off	79800061
501	Occupied rent-free	79800061
170	Owned and fully paid off	79800061
46	Other	79800061
5219	Rented	79800062
97	Owned but not yet paid off	79800062
29	Occupied rent-free	79800062
88	Owned and fully paid off	79800062
12	Other	79800062
8992	Rented	79800063
158	Owned but not yet paid off	79800063
85	Occupied rent-free	79800063
147	Owned and fully paid off	79800063
28	Other	79800063
9957	Rented	79800064
418	Owned but not yet paid off	79800064
302	Occupied rent-free	79800064
578	Owned and fully paid off	79800064
175	Other	79800064
9705	Rented	79800065
588	Owned but not yet paid off	79800065
677	Occupied rent-free	79800065
302	Owned and fully paid off	79800065
234	Other	79800065
9248	Rented	79800066
2307	Owned but not yet paid off	79800066
570	Occupied rent-free	79800066
1621	Owned and fully paid off	79800066
253	Other	79800066
5515	Rented	79800067
634	Owned but not yet paid off	79800067
394	Occupied rent-free	79800067
658	Owned and fully paid off	79800067
67	Other	79800067
2778	Rented	79800068
1615	Owned but not yet paid off	79800068
2064	Occupied rent-free	79800068
2055	Owned and fully paid off	79800068
412	Other	79800068
6046	Rented	79800069
1879	Owned but not yet paid off	79800069
668	Occupied rent-free	79800069
2014	Owned and fully paid off	79800069
221	Other	79800069
4610	Rented	79800070
2921	Owned but not yet paid off	79800070
1074	Occupied rent-free	79800070
1948	Owned and fully paid off	79800070
220	Other	79800070
2239	Rented	79800071
3783	Owned but not yet paid off	79800071
445	Occupied rent-free	79800071
1945	Owned and fully paid off	79800071
221	Other	79800071
1147	Rented	79800072
1759	Owned but not yet paid off	79800072
1246	Occupied rent-free	79800072
1753	Owned and fully paid off	79800072
462	Other	79800072
3923	Rented	79800073
2603	Owned but not yet paid off	79800073
1768	Occupied rent-free	79800073
2565	Owned and fully paid off	79800073
445	Other	79800073
3342	Rented	79800074
2511	Owned but not yet paid off	79800074
1713	Occupied rent-free	79800074
2314	Owned and fully paid off	79800074
442	Other	79800074
2803	Rented	79800075
689	Owned but not yet paid off	79800075
2310	Occupied rent-free	79800075
2491	Owned and fully paid off	79800075
116	Other	79800075
1291	Rented	79800076
330	Owned but not yet paid off	79800076
2258	Occupied rent-free	79800076
2401	Owned and fully paid off	79800076
145	Other	79800076
11420	Rented	79800077
1331	Owned but not yet paid off	79800077
2679	Occupied rent-free	79800077
2444	Owned and fully paid off	79800077
453	Other	79800077
10889	Rented	79800078
547	Owned but not yet paid off	79800078
1591	Occupied rent-free	79800078
3270	Owned and fully paid off	79800078
178	Other	79800078
12313	Rented	79800079
991	Owned but not yet paid off	79800079
3049	Occupied rent-free	79800079
2278	Owned and fully paid off	79800079
388	Other	79800079
6289	Rented	79800080
291	Owned but not yet paid off	79800080
3417	Occupied rent-free	79800080
902	Owned and fully paid off	79800080
443	Other	79800080
4652	Rented	79800081
2751	Owned but not yet paid off	79800081
1500	Occupied rent-free	79800081
2118	Owned and fully paid off	79800081
523	Other	79800081
5336	Rented	79800082
1153	Owned but not yet paid off	79800082
1029	Occupied rent-free	79800082
1400	Owned and fully paid off	79800082
431	Other	79800082
1297	Rented	79800083
3021	Owned but not yet paid off	79800083
281	Occupied rent-free	79800083
1794	Owned and fully paid off	79800083
367	Other	79800083
3376	Rented	79800084
3646	Owned but not yet paid off	79800084
443	Occupied rent-free	79800084
1929	Owned and fully paid off	79800084
201	Other	79800084
1968	Rented	79800085
2521	Owned but not yet paid off	79800085
1392	Occupied rent-free	79800085
1852	Owned and fully paid off	79800085
458	Other	79800085
4361	Rented	79800086
3654	Owned but not yet paid off	79800086
532	Occupied rent-free	79800086
2345	Owned and fully paid off	79800086
273	Other	79800086
1296	Rented	79800087
1849	Owned but not yet paid off	79800087
1245	Occupied rent-free	79800087
1520	Owned and fully paid off	79800087
203	Other	79800087
2590	Rented	79800088
2739	Owned but not yet paid off	79800088
1332	Occupied rent-free	79800088
2203	Owned and fully paid off	79800088
358	Other	79800088
2390	Rented	79800089
3243	Owned but not yet paid off	79800089
460	Occupied rent-free	79800089
1758	Owned and fully paid off	79800089
245	Other	79800089
3028	Rented	79800090
2508	Owned but not yet paid off	79800090
2045	Occupied rent-free	79800090
2789	Owned and fully paid off	79800090
434	Other	79800090
2699	Rented	79800091
1644	Owned but not yet paid off	79800091
3127	Occupied rent-free	79800091
2958	Owned and fully paid off	79800091
462	Other	79800091
7757	Rented	79800092
3275	Owned but not yet paid off	79800092
2462	Occupied rent-free	79800092
2112	Owned and fully paid off	79800092
301	Other	79800092
3894	Rented	79800093
3921	Owned but not yet paid off	79800093
367	Occupied rent-free	79800093
1543	Owned and fully paid off	79800093
223	Other	79800093
2700	Rented	79800094
3023	Owned but not yet paid off	79800094
978	Occupied rent-free	79800094
1803	Owned and fully paid off	79800094
201	Other	79800094
9008	Rented	79800095
1284	Owned but not yet paid off	79800095
6678	Occupied rent-free	79800095
5932	Owned and fully paid off	79800095
85	Other	79800095
7258	Rented	79800096
6160	Owned but not yet paid off	79800096
3914	Occupied rent-free	79800096
4897	Owned and fully paid off	79800096
578	Other	79800096
8343	Rented	79800097
8184	Owned but not yet paid off	79800097
1202	Occupied rent-free	79800097
2300	Owned and fully paid off	79800097
557	Other	79800097
4218	Rented	79800098
3237	Owned but not yet paid off	79800098
729	Occupied rent-free	79800098
2081	Owned and fully paid off	79800098
275	Other	79800098
2363	Rented	79800099
2345	Owned but not yet paid off	79800099
879	Occupied rent-free	79800099
1593	Owned and fully paid off	79800099
345	Other	79800099
7327	Rented	79800100
4889	Owned but not yet paid off	79800100
3168	Occupied rent-free	79800100
2571	Owned and fully paid off	79800100
758	Other	79800100
3554	Rented	79800101
5272	Owned but not yet paid off	79800101
587	Occupied rent-free	79800101
2575	Owned and fully paid off	79800101
231	Other	79800101
4772	Rented	79800102
3666	Owned but not yet paid off	79800102
1353	Occupied rent-free	79800102
2443	Owned and fully paid off	79800102
355	Other	79800102
5348	Rented	79800103
3828	Owned but not yet paid off	79800103
2427	Occupied rent-free	79800103
3949	Owned and fully paid off	79800103
534	Other	79800103
4272	Rented	79800104
3497	Owned but not yet paid off	79800104
1487	Occupied rent-free	79800104
1998	Owned and fully paid off	79800104
403	Other	79800104
4408	Rented	79800105
1751	Owned but not yet paid off	79800105
4288	Occupied rent-free	79800105
5229	Owned and fully paid off	79800105
642	Other	79800105
5289	Rented	79800106
4892	Owned but not yet paid off	79800106
1632	Occupied rent-free	79800106
2967	Owned and fully paid off	79800106
510	Other	79800106
1834	Rented	79800107
668	Owned but not yet paid off	79800107
1622	Occupied rent-free	79800107
3137	Owned and fully paid off	79800107
64	Other	79800107
1827	Rented	79800108
1182	Owned but not yet paid off	79800108
3776	Occupied rent-free	79800108
4502	Owned and fully paid off	79800108
178	Other	79800108
1650	Rented	79800109
1901	Owned but not yet paid off	79800109
2762	Occupied rent-free	79800109
2659	Owned and fully paid off	79800109
419	Other	79800109
13883	Rented	79800110
1637	Owned but not yet paid off	79800110
2101	Occupied rent-free	79800110
2679	Owned and fully paid off	79800110
260	Other	79800110
12448	Rented	79800111
2881	Owned but not yet paid off	79800111
2851	Occupied rent-free	79800111
3034	Owned and fully paid off	79800111
211	Other	79800111
10496	Rented	79800112
8152	Owned but not yet paid off	79800112
1660	Occupied rent-free	79800112
1827	Owned and fully paid off	79800112
385	Other	79800112
24340	Rented	79800113
1208	Owned but not yet paid off	79800113
8661	Occupied rent-free	79800113
4874	Owned and fully paid off	79800113
601	Other	79800113
8826	Rented	79800114
2662	Owned but not yet paid off	79800114
2786	Occupied rent-free	79800114
1446	Owned and fully paid off	79800114
381	Other	79800114
4734	Rented	79800115
6517	Owned but not yet paid off	79800115
894	Occupied rent-free	79800115
2330	Owned and fully paid off	79800115
289	Other	79800115
1334	Rented	79800116
277	Owned but not yet paid off	79800116
2401	Occupied rent-free	79800116
2956	Owned and fully paid off	79800116
303	Other	79800116
2022	Rented	79800117
2559	Owned but not yet paid off	79800117
1820	Occupied rent-free	79800117
2100	Owned and fully paid off	79800117
266	Other	79800117
4803	Rented	79800118
1958	Owned but not yet paid off	79800118
438	Occupied rent-free	79800118
1590	Owned and fully paid off	79800118
245	Other	79800118
4712	Rented	79800119
2970	Owned but not yet paid off	79800119
3686	Occupied rent-free	79800119
2561	Owned and fully paid off	79800119
188	Other	79800119
2307	Rented	79800120
2499	Owned but not yet paid off	79800120
2799	Occupied rent-free	79800120
2991	Owned and fully paid off	79800120
213	Other	79800120
1718	Rented	79800121
2928	Owned but not yet paid off	79800121
4260	Occupied rent-free	79800121
5530	Owned and fully paid off	79800121
337	Other	79800121
3329	Rented	79800122
1272	Owned but not yet paid off	79800122
5026	Occupied rent-free	79800122
4850	Owned and fully paid off	79800122
1077	Other	79800122
14448	Rented	79800123
147	Owned but not yet paid off	79800123
197	Occupied rent-free	79800123
302	Owned and fully paid off	79800123
41	Other	79800123
12598	Rented	79800124
1290	Owned but not yet paid off	79800124
609	Occupied rent-free	79800124
910	Owned and fully paid off	79800124
430	Other	79800124
2680	Rented	79800125
5341	Owned but not yet paid off	79800125
439	Occupied rent-free	79800125
2234	Owned and fully paid off	79800125
225	Other	79800125
2716	Rented	79800126
4634	Owned but not yet paid off	79800126
463	Occupied rent-free	79800126
1933	Owned and fully paid off	79800126
166	Other	79800126
4101	Rented	79800127
611	Owned but not yet paid off	79800127
5728	Occupied rent-free	79800127
958	Owned and fully paid off	79800127
80	Other	79800127
5577	Rented	79800128
1451	Owned but not yet paid off	79800128
5631	Occupied rent-free	79800128
4602	Owned and fully paid off	79800128
679	Other	79800128
3300	Rented	79800129
628	Owned but not yet paid off	79800129
2452	Occupied rent-free	79800129
3661	Owned and fully paid off	79800129
389	Other	79800129
1610	Rented	79800130
385	Owned but not yet paid off	79800130
794	Occupied rent-free	79800130
2544	Owned and fully paid off	79800130
185	Other	79800130
2341	Rented	79900001
2545	Owned but not yet paid off	79900001
268	Occupied rent-free	79900001
1659	Owned and fully paid off	79900001
149	Other	79900001
2621	Rented	79900002
1903	Owned but not yet paid off	79900002
335	Occupied rent-free	79900002
1432	Owned and fully paid off	79900002
136	Other	79900002
3075	Rented	79900003
4289	Owned but not yet paid off	79900003
347	Occupied rent-free	79900003
1134	Owned and fully paid off	79900003
132	Other	79900003
3935	Rented	79900004
6175	Owned but not yet paid off	79900004
752	Occupied rent-free	79900004
1344	Owned and fully paid off	79900004
263	Other	79900004
3800	Rented	79900005
3273	Owned but not yet paid off	79900005
414	Occupied rent-free	79900005
2121	Owned and fully paid off	79900005
297	Other	79900005
2694	Rented	79900006
199	Owned but not yet paid off	79900006
409	Occupied rent-free	79900006
2076	Owned and fully paid off	79900006
68	Other	79900006
2557	Rented	79900007
2926	Owned but not yet paid off	79900007
2722	Occupied rent-free	79900007
4330	Owned and fully paid off	79900007
614	Other	79900007
304	Rented	79900008
129	Owned but not yet paid off	79900008
2109	Occupied rent-free	79900008
4793	Owned and fully paid off	79900008
119	Other	79900008
1705	Rented	79900009
199	Owned but not yet paid off	79900009
2052	Occupied rent-free	79900009
5346	Owned and fully paid off	79900009
238	Other	79900009
5009	Rented	79900010
312	Owned but not yet paid off	79900010
5442	Occupied rent-free	79900010
4845	Owned and fully paid off	79900010
249	Other	79900010
566	Rented	79900011
367	Owned but not yet paid off	79900011
296	Occupied rent-free	79900011
4165	Owned and fully paid off	79900011
264	Other	79900011
3056	Rented	79900012
477	Owned but not yet paid off	79900012
817	Occupied rent-free	79900012
2542	Owned and fully paid off	79900012
177	Other	79900012
199	Rented	79900013
61	Owned but not yet paid off	79900013
2284	Occupied rent-free	79900013
3631	Owned and fully paid off	79900013
588	Other	79900013
305	Rented	79900014
28	Owned but not yet paid off	79900014
2078	Occupied rent-free	79900014
3773	Owned and fully paid off	79900014
170	Other	79900014
1339	Rented	79900015
1428	Owned but not yet paid off	79900015
55	Occupied rent-free	79900015
2250	Owned and fully paid off	79900015
121	Other	79900015
1952	Rented	79900016
592	Owned but not yet paid off	79900016
1214	Occupied rent-free	79900016
1704	Owned and fully paid off	79900016
372	Other	79900016
3420	Rented	79900017
2150	Owned but not yet paid off	79900017
3418	Occupied rent-free	79900017
3092	Owned and fully paid off	79900017
727	Other	79900017
2206	Rented	79900018
984	Owned but not yet paid off	79900018
78	Occupied rent-free	79900018
2954	Owned and fully paid off	79900018
95	Other	79900018
1140	Rented	79900019
384	Owned but not yet paid off	79900019
1582	Occupied rent-free	79900019
5049	Owned and fully paid off	79900019
180	Other	79900019
1088	Rented	79900020
1079	Owned but not yet paid off	79900020
988	Occupied rent-free	79900020
4579	Owned and fully paid off	79900020
63	Other	79900020
1467	Rented	79900021
2145	Owned but not yet paid off	79900021
215	Occupied rent-free	79900021
4447	Owned and fully paid off	79900021
141	Other	79900021
914	Rented	79900022
1541	Owned but not yet paid off	79900022
2105	Occupied rent-free	79900022
4718	Owned and fully paid off	79900022
613	Other	79900022
2743	Rented	79900023
539	Owned but not yet paid off	79900023
193	Occupied rent-free	79900023
2463	Owned and fully paid off	79900023
144	Other	79900023
1880	Rented	79900024
497	Owned but not yet paid off	79900024
3412	Occupied rent-free	79900024
7459	Owned and fully paid off	79900024
315	Other	79900024
509	Rented	79900025
132	Owned but not yet paid off	79900025
772	Occupied rent-free	79900025
4882	Owned and fully paid off	79900025
253	Other	79900025
623	Rented	79900026
525	Owned but not yet paid off	79900026
975	Occupied rent-free	79900026
4333	Owned and fully paid off	79900026
68	Other	79900026
671	Rented	79900027
314	Owned but not yet paid off	79900027
373	Occupied rent-free	79900027
5404	Owned and fully paid off	79900027
189	Other	79900027
2001	Rented	79900028
434	Owned but not yet paid off	79900028
573	Occupied rent-free	79900028
2265	Owned and fully paid off	79900028
74	Other	79900028
1795	Rented	79900029
589	Owned but not yet paid off	79900029
1201	Occupied rent-free	79900029
3689	Owned and fully paid off	79900029
291	Other	79900029
1582	Rented	79900030
830	Owned but not yet paid off	79900030
1303	Occupied rent-free	79900030
8005	Owned and fully paid off	79900030
482	Other	79900030
2515	Rented	79900031
371	Owned but not yet paid off	79900031
529	Occupied rent-free	79900031
4059	Owned and fully paid off	79900031
124	Other	79900031
1404	Rented	79900032
1579	Owned but not yet paid off	79900032
508	Occupied rent-free	79900032
5282	Owned and fully paid off	79900032
134	Other	79900032
615	Rented	79900033
391	Owned but not yet paid off	79900033
61	Occupied rent-free	79900033
2903	Owned and fully paid off	79900033
17	Other	79900033
1007	Rented	79900034
270	Owned but not yet paid off	79900034
240	Occupied rent-free	79900034
3461	Owned and fully paid off	79900034
116	Other	79900034
985	Rented	79900035
706	Owned but not yet paid off	79900035
82	Occupied rent-free	79900035
2818	Owned and fully paid off	79900035
62	Other	79900035
1531	Rented	79900036
264	Owned but not yet paid off	79900036
109	Occupied rent-free	79900036
3636	Owned and fully paid off	79900036
41	Other	79900036
3052	Rented	79900037
770	Owned but not yet paid off	79900037
3491	Occupied rent-free	79900037
5309	Owned and fully paid off	79900037
635	Other	79900037
1821	Rented	79900038
129	Owned but not yet paid off	79900038
746	Occupied rent-free	79900038
664	Owned and fully paid off	79900038
21	Other	79900038
1110	Rented	79900039
177	Owned but not yet paid off	79900039
2044	Occupied rent-free	79900039
5090	Owned and fully paid off	79900039
114	Other	79900039
5233	Rented	79900040
1685	Owned but not yet paid off	79900040
7345	Occupied rent-free	79900040
8342	Owned and fully paid off	79900040
939	Other	79900040
2657	Rented	79900041
1988	Owned but not yet paid off	79900041
219	Occupied rent-free	79900041
1344	Owned and fully paid off	79900041
133	Other	79900041
1785	Rented	79900042
2322	Owned but not yet paid off	79900042
888	Occupied rent-free	79900042
2212	Owned and fully paid off	79900042
325	Other	79900042
2862	Rented	79900043
1542	Owned but not yet paid off	79900043
185	Occupied rent-free	79900043
2237	Owned and fully paid off	79900043
89	Other	79900043
1914	Rented	79900044
2463	Owned but not yet paid off	79900044
274	Occupied rent-free	79900044
1990	Owned and fully paid off	79900044
262	Other	79900044
884	Rented	79900045
1709	Owned but not yet paid off	79900045
136	Occupied rent-free	79900045
877	Owned and fully paid off	79900045
114	Other	79900045
2655	Rented	79900046
2194	Owned but not yet paid off	79900046
352	Occupied rent-free	79900046
2413	Owned and fully paid off	79900046
233	Other	79900046
1677	Rented	79900047
2364	Owned but not yet paid off	79900047
374	Occupied rent-free	79900047
1247	Owned and fully paid off	79900047
187	Other	79900047
2867	Rented	79900048
717	Owned but not yet paid off	79900048
5209	Occupied rent-free	79900048
3667	Owned and fully paid off	79900048
366	Other	79900048
1032	Rented	79900049
763	Owned but not yet paid off	79900049
2663	Occupied rent-free	79900049
5412	Owned and fully paid off	79900049
304	Other	79900049
2564	Rented	79900050
2608	Owned but not yet paid off	79900050
296	Occupied rent-free	79900050
1749	Owned and fully paid off	79900050
156	Other	79900050
3925	Rented	79900051
832	Owned but not yet paid off	79900051
851	Occupied rent-free	79900051
3349	Owned and fully paid off	79900051
83	Other	79900051
2020	Rented	79900052
2564	Owned but not yet paid off	79900052
490	Occupied rent-free	79900052
1587	Owned and fully paid off	79900052
210	Other	79900052
3705	Rented	79900053
2157	Owned but not yet paid off	79900053
355	Occupied rent-free	79900053
1711	Owned and fully paid off	79900053
188	Other	79900053
3260	Rented	79900054
2192	Owned but not yet paid off	79900054
323	Occupied rent-free	79900054
1416	Owned and fully paid off	79900054
130	Other	79900054
1874	Rented	79900055
2953	Owned but not yet paid off	79900055
455	Occupied rent-free	79900055
1591	Owned and fully paid off	79900055
233	Other	79900055
5762	Rented	79900056
815	Owned but not yet paid off	79900056
438	Occupied rent-free	79900056
1038	Owned and fully paid off	79900056
125	Other	79900056
5927	Rented	79900057
2924	Owned but not yet paid off	79900057
500	Occupied rent-free	79900057
1620	Owned and fully paid off	79900057
378	Other	79900057
6653	Rented	79900058
2268	Owned but not yet paid off	79900058
362	Occupied rent-free	79900058
721	Owned and fully paid off	79900058
104	Other	79900058
7094	Rented	79900059
909	Owned but not yet paid off	79900059
429	Occupied rent-free	79900059
829	Owned and fully paid off	79900059
98	Other	79900059
8644	Rented	79900060
446	Owned but not yet paid off	79900060
425	Occupied rent-free	79900060
364	Owned and fully paid off	79900060
122	Other	79900060
5810	Rented	79900061
1744	Owned but not yet paid off	79900061
3355	Occupied rent-free	79900061
3745	Owned and fully paid off	79900061
373	Other	79900061
1502	Rented	79900062
379	Owned but not yet paid off	79900062
204	Occupied rent-free	79900062
3040	Owned and fully paid off	79900062
52	Other	79900062
2955	Rented	79900063
486	Owned but not yet paid off	79900063
1165	Occupied rent-free	79900063
1446	Owned and fully paid off	79900063
66	Other	79900063
3423	Rented	79900064
6136	Owned but not yet paid off	79900064
368	Occupied rent-free	79900064
1187	Owned and fully paid off	79900064
148	Other	79900064
2699	Rented	79900065
2610	Owned but not yet paid off	79900065
503	Occupied rent-free	79900065
1700	Owned and fully paid off	79900065
197	Other	79900065
2437	Rented	79900066
2302	Owned but not yet paid off	79900066
514	Occupied rent-free	79900066
1295	Owned and fully paid off	79900066
190	Other	79900066
3474	Rented	79900067
411	Owned but not yet paid off	79900067
242	Occupied rent-free	79900067
1880	Owned and fully paid off	79900067
163	Other	79900067
2790	Rented	79900068
654	Owned but not yet paid off	79900068
324	Occupied rent-free	79900068
3773	Owned and fully paid off	79900068
71	Other	79900068
2433	Rented	79900069
3989	Owned but not yet paid off	79900069
423	Occupied rent-free	79900069
1610	Owned and fully paid off	79900069
334	Other	79900069
2957	Rented	79900070
4675	Owned but not yet paid off	79900070
560	Occupied rent-free	79900070
1619	Owned and fully paid off	79900070
293	Other	79900070
4757	Rented	79900071
400	Owned but not yet paid off	79900071
2707	Occupied rent-free	79900071
3969	Owned and fully paid off	79900071
118	Other	79900071
2224	Rented	79900072
705	Owned but not yet paid off	79900072
1148	Occupied rent-free	79900072
3012	Owned and fully paid off	79900072
74	Other	79900072
856	Rented	79900073
98	Owned but not yet paid off	79900073
2247	Occupied rent-free	79900073
6480	Owned and fully paid off	79900073
387	Other	79900073
906	Rented	79900074
123	Owned but not yet paid off	79900074
420	Occupied rent-free	79900074
4574	Owned and fully paid off	79900074
107	Other	79900074
823	Rented	79900075
1204	Owned but not yet paid off	79900075
1125	Occupied rent-free	79900075
4957	Owned and fully paid off	79900075
133	Other	79900075
209	Rented	79900076
23	Owned but not yet paid off	79900076
673	Occupied rent-free	79900076
4519	Owned and fully paid off	79900076
454	Other	79900076
13830	Rented	79900077
5525	Owned but not yet paid off	79900077
5329	Occupied rent-free	79900077
3525	Owned and fully paid off	79900077
727	Other	79900077
3745	Rented	79900078
3497	Owned but not yet paid off	79900078
332	Occupied rent-free	79900078
1094	Owned and fully paid off	79900078
196	Other	79900078
2877	Rented	79900079
4719	Owned but not yet paid off	79900079
478	Occupied rent-free	79900079
1803	Owned and fully paid off	79900079
256	Other	79900079
9249	Rented	79900080
536	Owned but not yet paid off	79900080
128	Occupied rent-free	79900080
519	Owned and fully paid off	79900080
43	Other	79900080
5359	Rented	79900081
130	Owned but not yet paid off	79900081
36	Occupied rent-free	79900081
153	Owned and fully paid off	79900081
20	Other	79900081
2185	Rented	79900082
1756	Owned but not yet paid off	79900082
553	Occupied rent-free	79900082
1678	Owned and fully paid off	79900082
284	Other	79900082
1656	Rented	79900083
1584	Owned but not yet paid off	79900083
287	Occupied rent-free	79900083
943	Owned and fully paid off	79900083
105	Other	79900083
3475	Rented	79900084
2664	Owned but not yet paid off	79900084
439	Occupied rent-free	79900084
2399	Owned and fully paid off	79900084
275	Other	79900084
5430	Rented	79900085
4729	Owned but not yet paid off	79900085
397	Occupied rent-free	79900085
2876	Owned and fully paid off	79900085
241	Other	79900085
6651	Rented	79900086
1496	Owned but not yet paid off	79900086
657	Occupied rent-free	79900086
3796	Owned and fully paid off	79900086
444	Other	79900086
2259	Rented	79900087
1831	Owned but not yet paid off	79900087
1556	Occupied rent-free	79900087
1860	Owned and fully paid off	79900087
181	Other	79900087
514	Rented	79900088
976	Owned but not yet paid off	79900088
1153	Occupied rent-free	79900088
4012	Owned and fully paid off	79900088
165	Other	79900088
794	Rented	79900089
2281	Owned but not yet paid off	79900089
207	Occupied rent-free	79900089
4014	Owned and fully paid off	79900089
112	Other	79900089
1788	Rented	79900090
4508	Owned but not yet paid off	79900090
3400	Occupied rent-free	79900090
3762	Owned and fully paid off	79900090
196	Other	79900090
4906	Rented	79900091
5978	Owned but not yet paid off	79900091
914	Occupied rent-free	79900091
2318	Owned and fully paid off	79900091
405	Other	79900091
10332	Rented	79900092
864	Owned but not yet paid off	79900092
383	Occupied rent-free	79900092
756	Owned and fully paid off	79900092
170	Other	79900092
1870	Rented	79900093
175	Owned but not yet paid off	79900093
1865	Occupied rent-free	79900093
1397	Owned and fully paid off	79900093
139	Other	79900093
522	Rented	79900094
1575	Owned but not yet paid off	79900094
228	Occupied rent-free	79900094
2557	Owned and fully paid off	79900094
70	Other	79900094
224	Rented	79900095
25	Owned but not yet paid off	79900095
1175	Occupied rent-free	79900095
3977	Owned and fully paid off	79900095
51	Other	79900095
2998	Rented	79900096
2868	Owned but not yet paid off	79900096
1604	Occupied rent-free	79900096
2180	Owned and fully paid off	79900096
347	Other	79900096
4316	Rented	79900097
230	Owned but not yet paid off	79900097
1612	Occupied rent-free	79900097
1721	Owned and fully paid off	79900097
73	Other	79900097
2987	Rented	79900098
2985	Owned but not yet paid off	79900098
468	Occupied rent-free	79900098
1777	Owned and fully paid off	79900098
214	Other	79900098
3630	Rented	79900099
2068	Owned but not yet paid off	79900099
2117	Occupied rent-free	79900099
2359	Owned and fully paid off	79900099
702	Other	79900099
2157	Rented	79900100
956	Owned but not yet paid off	79900100
2817	Occupied rent-free	79900100
2629	Owned and fully paid off	79900100
482	Other	79900100
4125	Rented	79900101
3045	Owned but not yet paid off	79900101
2115	Occupied rent-free	79900101
1546	Owned and fully paid off	79900101
310	Other	79900101
2194	Rented	79900102
1064	Owned but not yet paid off	79900102
1720	Occupied rent-free	79900102
4236	Owned and fully paid off	79900102
506	Other	79900102
1014	Rented	79900103
889	Owned but not yet paid off	79900103
1667	Occupied rent-free	79900103
3199	Owned and fully paid off	79900103
396	Other	79900103
1824	Rented	79900104
539	Owned but not yet paid off	79900104
1544	Occupied rent-free	79900104
3445	Owned and fully paid off	79900104
212	Other	79900104
1894	Rented	79900105
1291	Owned but not yet paid off	79900105
1400	Occupied rent-free	79900105
2239	Owned and fully paid off	79900105
274	Other	79900105
26	Rented	52103001
33	Owned but not yet paid off	52103001
159	Occupied rent-free	52103001
1527	Owned and fully paid off	52103001
16	Other	52103001
103	Rented	52103002
48	Owned but not yet paid off	52103002
388	Occupied rent-free	52103002
1431	Owned and fully paid off	52103002
30	Other	52103002
114	Rented	52103003
211	Owned but not yet paid off	52103003
1050	Occupied rent-free	52103003
652	Owned and fully paid off	52103003
19	Other	52103003
54	Rented	52103004
20	Owned but not yet paid off	52103004
36	Occupied rent-free	52103004
2081	Owned and fully paid off	52103004
19	Other	52103004
164	Rented	52103005
61	Owned but not yet paid off	52103005
488	Occupied rent-free	52103005
1164	Owned and fully paid off	52103005
18	Other	52103005
24	Rented	52103006
33	Owned but not yet paid off	52103006
24	Occupied rent-free	52103006
1179	Owned and fully paid off	52103006
9	Other	52103006
101	Rented	52103007
4	Owned but not yet paid off	52103007
226	Occupied rent-free	52103007
1050	Owned and fully paid off	52103007
5	Other	52103007
74	Rented	52103008
175	Owned but not yet paid off	52103008
266	Occupied rent-free	52103008
1339	Owned and fully paid off	52103008
3	Other	52103008
23	Rented	52103009
27	Owned but not yet paid off	52103009
139	Occupied rent-free	52103009
1106	Owned and fully paid off	52103009
24	Other	52103009
267	Rented	52103010
41	Owned but not yet paid off	52103010
52	Occupied rent-free	52103010
2062	Owned and fully paid off	52103010
15	Other	52103010
73	Rented	52103011
107	Owned but not yet paid off	52103011
196	Occupied rent-free	52103011
1335	Owned and fully paid off	52103011
107	Other	52103011
27	Rented	52103012
57	Owned but not yet paid off	52103012
337	Occupied rent-free	52103012
952	Owned and fully paid off	52103012
186	Other	52103012
83	Rented	52103013
25	Owned but not yet paid off	52103013
128	Occupied rent-free	52103013
1379	Owned and fully paid off	52103013
17	Other	52103013
57	Rented	52103014
224	Owned but not yet paid off	52103014
297	Occupied rent-free	52103014
830	Owned and fully paid off	52103014
276	Other	52103014
83	Rented	52103015
109	Owned but not yet paid off	52103015
374	Occupied rent-free	52103015
1238	Owned and fully paid off	52103015
114	Other	52103015
189	Rented	52103016
81	Owned but not yet paid off	52103016
396	Occupied rent-free	52103016
1199	Owned and fully paid off	52103016
12	Other	52103016
104	Rented	52103017
153	Owned but not yet paid off	52103017
317	Occupied rent-free	52103017
1031	Owned and fully paid off	52103017
17	Other	52103017
162	Rented	52103018
176	Owned but not yet paid off	52103018
217	Occupied rent-free	52103018
2026	Owned and fully paid off	52103018
108	Other	52103018
174	Rented	52103019
52	Owned but not yet paid off	52103019
76	Occupied rent-free	52103019
1870	Owned and fully paid off	52103019
18	Other	52103019
107	Rented	52104001
375	Owned but not yet paid off	52104001
770	Occupied rent-free	52104001
879	Owned and fully paid off	52104001
22	Other	52104001
133	Rented	52104002
236	Owned but not yet paid off	52104002
493	Occupied rent-free	52104002
1442	Owned and fully paid off	52104002
30	Other	52104002
1210	Rented	52104003
444	Owned but not yet paid off	52104003
799	Occupied rent-free	52104003
273	Owned and fully paid off	52104003
253	Other	52104003
56	Rented	52104004
149	Owned but not yet paid off	52104004
407	Occupied rent-free	52104004
993	Owned and fully paid off	52104004
17	Other	52104004
58	Rented	52104005
177	Owned but not yet paid off	52104005
109	Occupied rent-free	52104005
1586	Owned and fully paid off	52104005
21	Other	52104005
28	Rented	52104006
161	Owned but not yet paid off	52104006
333	Occupied rent-free	52104006
1011	Owned and fully paid off	52104006
11	Other	52104006
490	Rented	52104007
58	Owned but not yet paid off	52104007
920	Occupied rent-free	52104007
1358	Owned and fully paid off	52104007
66	Other	52104007
50	Rented	52104008
178	Owned but not yet paid off	52104008
433	Occupied rent-free	52104008
1254	Owned and fully paid off	52104008
20	Other	52104008
23	Rented	52104009
278	Owned but not yet paid off	52104009
23	Occupied rent-free	52104009
1669	Owned and fully paid off	52104009
5	Other	52104009
108	Rented	52104010
248	Owned but not yet paid off	52104010
292	Occupied rent-free	52104010
1537	Owned and fully paid off	52104010
24	Other	52104010
297	Rented	52105001
39	Owned but not yet paid off	52105001
298	Occupied rent-free	52105001
1297	Owned and fully paid off	52105001
10	Other	52105001
171	Rented	52105002
14	Owned but not yet paid off	52105002
68	Occupied rent-free	52105002
1299	Owned and fully paid off	52105002
9	Other	52105002
42	Rented	52105003
17	Owned but not yet paid off	52105003
138	Occupied rent-free	52105003
1873	Owned and fully paid off	52105003
20	Other	52105003
46	Rented	52105004
175	Owned but not yet paid off	52105004
203	Occupied rent-free	52105004
1529	Owned and fully paid off	52105004
17	Other	52105004
65	Rented	52105005
13	Owned but not yet paid off	52105005
27	Occupied rent-free	52105005
2119	Owned and fully paid off	52105005
10	Other	52105005
158	Rented	52105006
8	Owned but not yet paid off	52105006
23	Occupied rent-free	52105006
1485	Owned and fully paid off	52105006
2	Other	52105006
1001	Rented	52106001
399	Owned but not yet paid off	52106001
675	Occupied rent-free	52106001
1311	Owned and fully paid off	52106001
87	Other	52106001
1132	Rented	52106002
504	Owned but not yet paid off	52106002
542	Occupied rent-free	52106002
1319	Owned and fully paid off	52106002
159	Other	52106002
1276	Rented	52106003
377	Owned but not yet paid off	52106003
577	Occupied rent-free	52106003
1598	Owned and fully paid off	52106003
102	Other	52106003
91	Rented	52106004
18	Owned but not yet paid off	52106004
763	Occupied rent-free	52106004
868	Owned and fully paid off	52106004
6	Other	52106004
95	Rented	52106005
18	Owned but not yet paid off	52106005
27	Occupied rent-free	52106005
1794	Owned and fully paid off	52106005
4	Other	52106005
660	Rented	52106006
975	Owned but not yet paid off	52106006
113	Occupied rent-free	52106006
799	Owned and fully paid off	52106006
373	Other	52106006
122	Rented	52106007
16	Owned but not yet paid off	52106007
324	Occupied rent-free	52106007
1268	Owned and fully paid off	52106007
29	Other	52106007
14	Rented	52106008
12	Owned but not yet paid off	52106008
186	Occupied rent-free	52106008
1338	Owned and fully paid off	52106008
13	Other	52106008
204	Rented	52106009
93	Owned but not yet paid off	52106009
606	Occupied rent-free	52106009
1452	Owned and fully paid off	52106009
21	Other	52106009
156	Rented	52106010
44	Owned but not yet paid off	52106010
336	Occupied rent-free	52106010
1882	Owned and fully paid off	52106010
3	Other	52106010
251	Rented	52106011
104	Owned but not yet paid off	52106011
482	Occupied rent-free	52106011
1276	Owned and fully paid off	52106011
4	Other	52106011
803	Rented	52106012
592	Owned but not yet paid off	52106012
357	Occupied rent-free	52106012
1159	Owned and fully paid off	52106012
93	Other	52106012
541	Rented	52106013
103	Owned but not yet paid off	52106013
437	Occupied rent-free	52106013
916	Owned and fully paid off	52106013
72	Other	52106013
87	Rented	52106014
29	Owned but not yet paid off	52106014
164	Occupied rent-free	52106014
1335	Owned and fully paid off	52106014
15	Other	52106014
433	Rented	52106015
83	Owned but not yet paid off	52106015
397	Occupied rent-free	52106015
756	Owned and fully paid off	52106015
120	Other	52106015
816	Rented	52106016
686	Owned but not yet paid off	52106016
255	Occupied rent-free	52106016
991	Owned and fully paid off	52106016
180	Other	52106016
580	Rented	52106017
658	Owned but not yet paid off	52106017
93	Occupied rent-free	52106017
840	Owned and fully paid off	52106017
78	Other	52106017
888	Rented	52106018
508	Owned but not yet paid off	52106018
142	Occupied rent-free	52106018
697	Owned and fully paid off	52106018
62	Other	52106018
792	Rented	52106019
468	Owned but not yet paid off	52106019
153	Occupied rent-free	52106019
745	Owned and fully paid off	52106019
71	Other	52106019
2740	Rented	52106020
395	Owned but not yet paid off	52106020
1054	Occupied rent-free	52106020
1370	Owned and fully paid off	52106020
116	Other	52106020
880	Rented	52106021
158	Owned but not yet paid off	52106021
209	Occupied rent-free	52106021
902	Owned and fully paid off	52106021
22	Other	52106021
582	Rented	52106022
18	Owned but not yet paid off	52106022
178	Occupied rent-free	52106022
1264	Owned and fully paid off	52106022
7	Other	52106022
1303	Rented	52106023
51	Owned but not yet paid off	52106023
133	Occupied rent-free	52106023
717	Owned and fully paid off	52106023
15	Other	52106023
297	Rented	52106024
234	Owned but not yet paid off	52106024
187	Occupied rent-free	52106024
1459	Owned and fully paid off	52106024
32	Other	52106024
275	Rented	52106025
46	Owned but not yet paid off	52106025
375	Occupied rent-free	52106025
1272	Owned and fully paid off	52106025
52	Other	52106025
451	Rented	52106026
561	Owned but not yet paid off	52106026
74	Occupied rent-free	52106026
1785	Owned and fully paid off	52106026
86	Other	52106026
1000	Rented	52106027
174	Owned but not yet paid off	52106027
149	Occupied rent-free	52106027
1578	Owned and fully paid off	52106027
156	Other	52106027
279	Rented	52106028
139	Owned but not yet paid off	52106028
147	Occupied rent-free	52106028
1165	Owned and fully paid off	52106028
9	Other	52106028
107	Rented	52106029
99	Owned but not yet paid off	52106029
601	Occupied rent-free	52106029
1165	Owned and fully paid off	52106029
18	Other	52106029
7	Rented	52101001
203	Owned but not yet paid off	52101001
4	Occupied rent-free	52101001
1099	Owned and fully paid off	52101001
12	Other	52101001
68	Rented	52101002
168	Owned but not yet paid off	52101002
154	Occupied rent-free	52101002
796	Owned and fully paid off	52101002
119	Other	52101002
36	Rented	52101003
149	Owned but not yet paid off	52101003
46	Occupied rent-free	52101003
899	Owned and fully paid off	52101003
81	Other	52101003
16	Rented	52101004
60	Owned but not yet paid off	52101004
570	Occupied rent-free	52101004
800	Owned and fully paid off	52101004
133	Other	52101004
73	Rented	52101005
592	Owned but not yet paid off	52101005
686	Occupied rent-free	52101005
888	Owned and fully paid off	52101005
80	Other	52101005
116	Rented	52101006
125	Owned but not yet paid off	52101006
660	Occupied rent-free	52101006
1172	Owned and fully paid off	52101006
4	Other	52101006
13	Rented	52101007
341	Owned but not yet paid off	52101007
661	Occupied rent-free	52101007
151	Owned and fully paid off	52101007
67	Other	52101007
24	Rented	52101008
373	Owned but not yet paid off	52101008
320	Occupied rent-free	52101008
670	Owned and fully paid off	52101008
80	Other	52101008
229	Rented	52101009
95	Owned but not yet paid off	52101009
535	Occupied rent-free	52101009
1015	Owned and fully paid off	52101009
204	Other	52101009
96	Rented	52101010
79	Owned but not yet paid off	52101010
786	Occupied rent-free	52101010
561	Owned and fully paid off	52101010
17	Other	52101010
111	Rented	52102001
132	Owned but not yet paid off	52102001
137	Occupied rent-free	52102001
1187	Owned and fully paid off	52102001
25	Other	52102001
110	Rented	52102002
230	Owned but not yet paid off	52102002
519	Occupied rent-free	52102002
1088	Owned and fully paid off	52102002
11	Other	52102002
1007	Rented	52102003
205	Owned but not yet paid off	52102003
744	Occupied rent-free	52102003
1082	Owned and fully paid off	52102003
155	Other	52102003
563	Rented	52102004
180	Owned but not yet paid off	52102004
207	Occupied rent-free	52102004
923	Owned and fully paid off	52102004
36	Other	52102004
576	Rented	52102005
220	Owned but not yet paid off	52102005
172	Occupied rent-free	52102005
925	Owned and fully paid off	52102005
38	Other	52102005
1265	Rented	52102006
173	Owned but not yet paid off	52102006
361	Occupied rent-free	52102006
381	Owned and fully paid off	52102006
30	Other	52102006
612	Rented	52102007
717	Owned but not yet paid off	52102007
257	Occupied rent-free	52102007
1237	Owned and fully paid off	52102007
69	Other	52102007
170	Rented	52102008
135	Owned but not yet paid off	52102008
337	Occupied rent-free	52102008
1497	Owned and fully paid off	52102008
15	Other	52102008
147	Rented	52102009
195	Owned but not yet paid off	52102009
433	Occupied rent-free	52102009
1233	Owned and fully paid off	52102009
95	Other	52102009
898	Rented	52102010
523	Owned but not yet paid off	52102010
388	Occupied rent-free	52102010
833	Owned and fully paid off	52102010
282	Other	52102010
499	Rented	52201001
984	Owned but not yet paid off	52201001
1930	Occupied rent-free	52201001
547	Owned and fully paid off	52201001
565	Other	52201001
682	Rented	52201002
164	Owned but not yet paid off	52201002
792	Occupied rent-free	52201002
387	Owned and fully paid off	52201002
128	Other	52201002
247	Rented	52201003
251	Owned but not yet paid off	52201003
1112	Occupied rent-free	52201003
309	Owned and fully paid off	52201003
294	Other	52201003
128	Rented	52201004
274	Owned but not yet paid off	52201004
1099	Occupied rent-free	52201004
775	Owned and fully paid off	52201004
251	Other	52201004
181	Rented	52201005
472	Owned but not yet paid off	52201005
406	Occupied rent-free	52201005
1184	Owned and fully paid off	52201005
9	Other	52201005
33	Rented	52201006
324	Owned but not yet paid off	52201006
47	Occupied rent-free	52201006
1230	Owned and fully paid off	52201006
26	Other	52201006
705	Rented	52201007
313	Owned but not yet paid off	52201007
580	Occupied rent-free	52201007
391	Owned and fully paid off	52201007
116	Other	52201007
7	Rented	52201008
10	Owned but not yet paid off	52201008
31	Occupied rent-free	52201008
1291	Owned and fully paid off	52201008
17	Other	52201008
810	Rented	52201009
699	Owned but not yet paid off	52201009
873	Occupied rent-free	52201009
996	Owned and fully paid off	52201009
46	Other	52201009
97	Rented	52201010
40	Owned but not yet paid off	52201010
484	Occupied rent-free	52201010
865	Owned and fully paid off	52201010
8	Other	52201010
31	Rented	52201011
11	Owned but not yet paid off	52201011
13	Occupied rent-free	52201011
1358	Owned and fully paid off	52201011
0	Other	52201011
143	Rented	52201012
325	Owned but not yet paid off	52201012
407	Occupied rent-free	52201012
877	Owned and fully paid off	52201012
125	Other	52201012
10	Rented	52201013
142	Owned but not yet paid off	52201013
183	Occupied rent-free	52201013
784	Owned and fully paid off	52201013
7	Other	52201013
703	Rented	52202001
260	Owned but not yet paid off	52202001
432	Occupied rent-free	52202001
566	Owned and fully paid off	52202001
468	Other	52202001
224	Rented	52202002
74	Owned but not yet paid off	52202002
125	Occupied rent-free	52202002
165	Owned and fully paid off	52202002
10	Other	52202002
1034	Rented	52202003
222	Owned but not yet paid off	52202003
1120	Occupied rent-free	52202003
275	Owned and fully paid off	52202003
90	Other	52202003
1374	Rented	52202004
294	Owned but not yet paid off	52202004
1383	Occupied rent-free	52202004
376	Owned and fully paid off	52202004
108	Other	52202004
714	Rented	52202005
409	Owned but not yet paid off	52202005
415	Occupied rent-free	52202005
1651	Owned and fully paid off	52202005
72	Other	52202005
683	Rented	52202006
378	Owned but not yet paid off	52202006
360	Occupied rent-free	52202006
884	Owned and fully paid off	52202006
201	Other	52202006
573	Rented	52202007
861	Owned but not yet paid off	52202007
392	Occupied rent-free	52202007
719	Owned and fully paid off	52202007
109	Other	52202007
519	Rented	52202008
34	Owned but not yet paid off	52202008
696	Occupied rent-free	52202008
2307	Owned and fully paid off	52202008
142	Other	52202008
535	Rented	52202009
89	Owned but not yet paid off	52202009
1200	Occupied rent-free	52202009
1022	Owned and fully paid off	52202009
128	Other	52202009
149	Rented	52202010
29	Owned but not yet paid off	52202010
93	Occupied rent-free	52202010
1031	Owned and fully paid off	52202010
41	Other	52202010
157	Rented	52202011
54	Owned but not yet paid off	52202011
948	Occupied rent-free	52202011
603	Owned and fully paid off	52202011
116	Other	52202011
540	Rented	52202012
385	Owned but not yet paid off	52202012
229	Occupied rent-free	52202012
1459	Owned and fully paid off	52202012
258	Other	52202012
834	Rented	52203001
136	Owned but not yet paid off	52203001
279	Occupied rent-free	52203001
1697	Owned and fully paid off	52203001
80	Other	52203001
646	Rented	52203002
223	Owned but not yet paid off	52203002
1987	Occupied rent-free	52203002
288	Owned and fully paid off	52203002
158	Other	52203002
471	Rented	52203003
75	Owned but not yet paid off	52203003
343	Occupied rent-free	52203003
1158	Owned and fully paid off	52203003
45	Other	52203003
55	Rented	52203004
150	Owned but not yet paid off	52203004
740	Occupied rent-free	52203004
826	Owned and fully paid off	52203004
261	Other	52203004
855	Rented	52204001
260	Owned but not yet paid off	52204001
529	Occupied rent-free	52204001
541	Owned and fully paid off	52204001
24	Other	52204001
78	Rented	52204002
271	Owned but not yet paid off	52204002
1502	Occupied rent-free	52204002
399	Owned and fully paid off	52204002
24	Other	52204002
78	Rented	52204003
189	Owned but not yet paid off	52204003
1011	Occupied rent-free	52204003
452	Owned and fully paid off	52204003
92	Other	52204003
114	Rented	52204004
100	Owned but not yet paid off	52204004
905	Occupied rent-free	52204004
757	Owned and fully paid off	52204004
23	Other	52204004
277	Rented	52205001
59	Owned but not yet paid off	52205001
197	Occupied rent-free	52205001
3288	Owned and fully paid off	52205001
193	Other	52205001
144	Rented	52205002
344	Owned but not yet paid off	52205002
515	Occupied rent-free	52205002
2487	Owned and fully paid off	52205002
280	Other	52205002
105	Rented	52205003
45	Owned but not yet paid off	52205003
271	Occupied rent-free	52205003
2477	Owned and fully paid off	52205003
126	Other	52205003
61	Rented	52205004
68	Owned but not yet paid off	52205004
316	Occupied rent-free	52205004
2348	Owned and fully paid off	52205004
10	Other	52205004
60	Rented	52205005
390	Owned but not yet paid off	52205005
534	Occupied rent-free	52205005
2325	Owned and fully paid off	52205005
191	Other	52205005
61	Rented	52205006
104	Owned but not yet paid off	52205006
319	Occupied rent-free	52205006
2632	Owned and fully paid off	52205006
118	Other	52205006
35	Rented	52205007
37	Owned but not yet paid off	52205007
1427	Occupied rent-free	52205007
1730	Owned and fully paid off	52205007
66	Other	52205007
48	Rented	52205008
36	Owned but not yet paid off	52205008
1196	Occupied rent-free	52205008
1513	Owned and fully paid off	52205008
9	Other	52205008
23	Rented	52205009
151	Owned but not yet paid off	52205009
1031	Occupied rent-free	52205009
1519	Owned and fully paid off	52205009
29	Other	52205009
467	Rented	52205010
264	Owned but not yet paid off	52205010
729	Occupied rent-free	52205010
1834	Owned and fully paid off	52205010
283	Other	52205010
664	Rented	52205011
406	Owned but not yet paid off	52205011
1204	Occupied rent-free	52205011
2755	Owned and fully paid off	52205011
35	Other	52205011
1126	Rented	52205012
43	Owned but not yet paid off	52205012
651	Occupied rent-free	52205012
1159	Owned and fully paid off	52205012
46	Other	52205012
1509	Rented	52205013
425	Owned but not yet paid off	52205013
1166	Occupied rent-free	52205013
3015	Owned and fully paid off	52205013
445	Other	52205013
141	Rented	52205014
75	Owned but not yet paid off	52205014
1342	Occupied rent-free	52205014
1431	Owned and fully paid off	52205014
49	Other	52205014
693	Rented	52205015
325	Owned but not yet paid off	52205015
599	Occupied rent-free	52205015
2749	Owned and fully paid off	52205015
41	Other	52205015
1848	Rented	52205016
550	Owned but not yet paid off	52205016
1235	Occupied rent-free	52205016
2249	Owned and fully paid off	52205016
277	Other	52205016
825	Rented	52205017
852	Owned but not yet paid off	52205017
1128	Occupied rent-free	52205017
2603	Owned and fully paid off	52205017
136	Other	52205017
1154	Rented	52205018
551	Owned but not yet paid off	52205018
1697	Occupied rent-free	52205018
2170	Owned and fully paid off	52205018
502	Other	52205018
932	Rented	52205019
344	Owned but not yet paid off	52205019
232	Occupied rent-free	52205019
2078	Owned and fully paid off	52205019
41	Other	52205019
779	Rented	52205020
164	Owned but not yet paid off	52205020
485	Occupied rent-free	52205020
1798	Owned and fully paid off	52205020
142	Other	52205020
1590	Rented	52205021
60	Owned but not yet paid off	52205021
180	Occupied rent-free	52205021
1098	Owned and fully paid off	52205021
36	Other	52205021
1554	Rented	52205022
430	Owned but not yet paid off	52205022
348	Occupied rent-free	52205022
1382	Owned and fully paid off	52205022
216	Other	52205022
1041	Rented	52205023
158	Owned but not yet paid off	52205023
203	Occupied rent-free	52205023
2187	Owned and fully paid off	52205023
54	Other	52205023
1643	Rented	52205024
1621	Owned but not yet paid off	52205024
88	Occupied rent-free	52205024
913	Owned and fully paid off	52205024
250	Other	52205024
1570	Rented	52205025
1904	Owned but not yet paid off	52205025
279	Occupied rent-free	52205025
1945	Owned and fully paid off	52205025
168	Other	52205025
1925	Rented	52205026
1686	Owned but not yet paid off	52205026
274	Occupied rent-free	52205026
1314	Owned and fully paid off	52205026
132	Other	52205026
3819	Rented	52205027
518	Owned but not yet paid off	52205027
165	Occupied rent-free	52205027
651	Owned and fully paid off	52205027
197	Other	52205027
1037	Rented	52205028
1904	Owned but not yet paid off	52205028
149	Occupied rent-free	52205028
2591	Owned and fully paid off	52205028
132	Other	52205028
1771	Rented	52205029
578	Owned but not yet paid off	52205029
585	Occupied rent-free	52205029
2142	Owned and fully paid off	52205029
426	Other	52205029
1410	Rented	52205030
1620	Owned but not yet paid off	52205030
210	Occupied rent-free	52205030
2057	Owned and fully paid off	52205030
173	Other	52205030
830	Rented	52205031
763	Owned but not yet paid off	52205031
161	Occupied rent-free	52205031
1579	Owned and fully paid off	52205031
45	Other	52205031
2191	Rented	52205032
689	Owned but not yet paid off	52205032
166	Occupied rent-free	52205032
1348	Owned and fully paid off	52205032
52	Other	52205032
2656	Rented	52205033
574	Owned but not yet paid off	52205033
208	Occupied rent-free	52205033
699	Owned and fully paid off	52205033
60	Other	52205033
2327	Rented	52205034
1642	Owned but not yet paid off	52205034
404	Occupied rent-free	52205034
1804	Owned and fully paid off	52205034
175	Other	52205034
1257	Rented	52205035
1066	Owned but not yet paid off	52205035
263	Occupied rent-free	52205035
2128	Owned and fully paid off	52205035
226	Other	52205035
2645	Rented	52205036
2444	Owned but not yet paid off	52205036
272	Occupied rent-free	52205036
1307	Owned and fully paid off	52205036
129	Other	52205036
2216	Rented	52205037
1204	Owned but not yet paid off	52205037
623	Occupied rent-free	52205037
1628	Owned and fully paid off	52205037
192	Other	52205037
26	Rented	52206001
110	Owned but not yet paid off	52206001
1489	Occupied rent-free	52206001
599	Owned and fully paid off	52206001
20	Other	52206001
35	Rented	52206002
68	Owned but not yet paid off	52206002
1242	Occupied rent-free	52206002
606	Owned and fully paid off	52206002
4	Other	52206002
304	Rented	52206003
57	Owned but not yet paid off	52206003
790	Occupied rent-free	52206003
461	Owned and fully paid off	52206003
53	Other	52206003
1195	Rented	52206004
222	Owned but not yet paid off	52206004
1094	Occupied rent-free	52206004
326	Owned and fully paid off	52206004
170	Other	52206004
9	Rented	52206005
20	Owned but not yet paid off	52206005
933	Occupied rent-free	52206005
274	Owned and fully paid off	52206005
308	Other	52206005
1077	Rented	52206006
61	Owned but not yet paid off	52206006
1401	Occupied rent-free	52206006
469	Owned and fully paid off	52206006
45	Other	52206006
11	Rented	52206007
106	Owned but not yet paid off	52206007
590	Occupied rent-free	52206007
591	Owned and fully paid off	52206007
198	Other	52206007
704	Rented	52207001
210	Owned but not yet paid off	52207001
597	Occupied rent-free	52207001
519	Owned and fully paid off	52207001
84	Other	52207001
673	Rented	52207002
266	Owned but not yet paid off	52207002
772	Occupied rent-free	52207002
956	Owned and fully paid off	52207002
228	Other	52207002
559	Rented	52207003
175	Owned but not yet paid off	52207003
1030	Occupied rent-free	52207003
1101	Owned and fully paid off	52207003
238	Other	52207003
722	Rented	52207004
54	Owned but not yet paid off	52207004
570	Occupied rent-free	52207004
246	Owned and fully paid off	52207004
51	Other	52207004
21	Rented	52207005
100	Owned but not yet paid off	52207005
426	Occupied rent-free	52207005
801	Owned and fully paid off	52207005
428	Other	52207005
73	Rented	52207006
367	Owned but not yet paid off	52207006
1044	Occupied rent-free	52207006
1076	Owned and fully paid off	52207006
46	Other	52207006
106	Rented	52207007
327	Owned but not yet paid off	52207007
643	Occupied rent-free	52207007
1124	Owned and fully paid off	52207007
103	Other	52207007
207	Rented	52302001
310	Owned but not yet paid off	52302001
142	Occupied rent-free	52302001
1257	Owned and fully paid off	52302001
72	Other	52302001
380	Rented	52302002
246	Owned but not yet paid off	52302002
124	Occupied rent-free	52302002
1049	Owned and fully paid off	52302002
161	Other	52302002
316	Rented	52302003
178	Owned but not yet paid off	52302003
1123	Occupied rent-free	52302003
1229	Owned and fully paid off	52302003
73	Other	52302003
92	Rented	52302004
102	Owned but not yet paid off	52302004
163	Occupied rent-free	52302004
807	Owned and fully paid off	52302004
72	Other	52302004
85	Rented	52302005
69	Owned but not yet paid off	52302005
693	Occupied rent-free	52302005
1371	Owned and fully paid off	52302005
93	Other	52302005
823	Rented	52302006
189	Owned but not yet paid off	52302006
454	Occupied rent-free	52302006
1459	Owned and fully paid off	52302006
93	Other	52302006
35	Rented	52302007
190	Owned but not yet paid off	52302007
750	Occupied rent-free	52302007
674	Owned and fully paid off	52302007
75	Other	52302007
445	Rented	52302008
111	Owned but not yet paid off	52302008
225	Occupied rent-free	52302008
1036	Owned and fully paid off	52302008
32	Other	52302008
701	Rented	52302009
133	Owned but not yet paid off	52302009
908	Occupied rent-free	52302009
1269	Owned and fully paid off	52302009
43	Other	52302009
828	Rented	52302010
98	Owned but not yet paid off	52302010
514	Occupied rent-free	52302010
557	Owned and fully paid off	52302010
30	Other	52302010
690	Rented	52302011
687	Owned but not yet paid off	52302011
244	Occupied rent-free	52302011
497	Owned and fully paid off	52302011
88	Other	52302011
1381	Rented	52302012
525	Owned but not yet paid off	52302012
127	Occupied rent-free	52302012
449	Owned and fully paid off	52302012
63	Other	52302012
171	Rented	52302013
138	Owned but not yet paid off	52302013
1064	Occupied rent-free	52302013
938	Owned and fully paid off	52302013
104	Other	52302013
300	Rented	52302014
180	Owned but not yet paid off	52302014
1142	Occupied rent-free	52302014
523	Owned and fully paid off	52302014
16	Other	52302014
538	Rented	52302015
45	Owned but not yet paid off	52302015
334	Occupied rent-free	52302015
557	Owned and fully paid off	52302015
9	Other	52302015
223	Rented	52302016
46	Owned but not yet paid off	52302016
419	Occupied rent-free	52302016
672	Owned and fully paid off	52302016
5	Other	52302016
133	Rented	52302017
10	Owned but not yet paid off	52302017
1320	Occupied rent-free	52302017
22	Owned and fully paid off	52302017
125	Other	52302017
232	Rented	52302018
9	Owned but not yet paid off	52302018
1045	Occupied rent-free	52302018
516	Owned and fully paid off	52302018
6	Other	52302018
206	Rented	52302019
31	Owned but not yet paid off	52302019
949	Occupied rent-free	52302019
352	Owned and fully paid off	52302019
9	Other	52302019
409	Rented	52302020
439	Owned but not yet paid off	52302020
865	Occupied rent-free	52302020
1038	Owned and fully paid off	52302020
49	Other	52302020
470	Rented	52302021
233	Owned but not yet paid off	52302021
848	Occupied rent-free	52302021
973	Owned and fully paid off	52302021
67	Other	52302021
890	Rented	52302022
1424	Owned but not yet paid off	52302022
217	Occupied rent-free	52302022
612	Owned and fully paid off	52302022
50	Other	52302022
480	Rented	52302023
134	Owned but not yet paid off	52302023
509	Occupied rent-free	52302023
387	Owned and fully paid off	52302023
6	Other	52302023
527	Rented	52302024
108	Owned but not yet paid off	52302024
339	Occupied rent-free	52302024
638	Owned and fully paid off	52302024
91	Other	52302024
336	Rented	52302025
311	Owned but not yet paid off	52302025
387	Occupied rent-free	52302025
1397	Owned and fully paid off	52302025
53	Other	52302025
186	Rented	52302026
33	Owned but not yet paid off	52302026
336	Occupied rent-free	52302026
444	Owned and fully paid off	52302026
19	Other	52302026
420	Rented	52302027
344	Owned but not yet paid off	52302027
907	Occupied rent-free	52302027
1822	Owned and fully paid off	52302027
29	Other	52302027
168	Rented	52303001
22	Owned but not yet paid off	52303001
1096	Occupied rent-free	52303001
768	Owned and fully paid off	52303001
9	Other	52303001
359	Rented	52303002
82	Owned but not yet paid off	52303002
397	Occupied rent-free	52303002
1528	Owned and fully paid off	52303002
4	Other	52303002
315	Rented	52303003
295	Owned but not yet paid off	52303003
536	Occupied rent-free	52303003
853	Owned and fully paid off	52303003
14	Other	52303003
25	Rented	52303004
161	Owned but not yet paid off	52303004
1045	Occupied rent-free	52303004
975	Owned and fully paid off	52303004
9	Other	52303004
179	Rented	52303005
155	Owned but not yet paid off	52303005
487	Occupied rent-free	52303005
1258	Owned and fully paid off	52303005
60	Other	52303005
307	Rented	52303006
122	Owned but not yet paid off	52303006
906	Occupied rent-free	52303006
414	Owned and fully paid off	52303006
7	Other	52303006
8	Rented	52303007
212	Owned but not yet paid off	52303007
1617	Occupied rent-free	52303007
14	Owned and fully paid off	52303007
4	Other	52303007
4	Rented	52303008
44	Owned but not yet paid off	52303008
1620	Occupied rent-free	52303008
247	Owned and fully paid off	52303008
11	Other	52303008
7	Rented	52303009
321	Owned but not yet paid off	52303009
641	Occupied rent-free	52303009
938	Owned and fully paid off	52303009
139	Other	52303009
16	Rented	52303010
66	Owned but not yet paid off	52303010
168	Occupied rent-free	52303010
1399	Owned and fully paid off	52303010
2	Other	52303010
530	Rented	52304001
276	Owned but not yet paid off	52304001
469	Occupied rent-free	52304001
1016	Owned and fully paid off	52304001
91	Other	52304001
120	Rented	52304002
503	Owned but not yet paid off	52304002
1030	Occupied rent-free	52304002
377	Owned and fully paid off	52304002
26	Other	52304002
729	Rented	52304003
676	Owned but not yet paid off	52304003
487	Occupied rent-free	52304003
873	Owned and fully paid off	52304003
85	Other	52304003
941	Rented	52304004
311	Owned but not yet paid off	52304004
168	Occupied rent-free	52304004
968	Owned and fully paid off	52304004
43	Other	52304004
43	Rented	52304005
23	Owned but not yet paid off	52304005
676	Occupied rent-free	52304005
1020	Owned and fully paid off	52304005
15	Other	52304005
167	Rented	52304006
128	Owned but not yet paid off	52304006
154	Occupied rent-free	52304006
1177	Owned and fully paid off	52304006
88	Other	52304006
129	Rented	52304007
65	Owned but not yet paid off	52304007
345	Occupied rent-free	52304007
1124	Owned and fully paid off	52304007
46	Other	52304007
32	Rented	52304008
117	Owned but not yet paid off	52304008
919	Occupied rent-free	52304008
856	Owned and fully paid off	52304008
96	Other	52304008
210	Rented	52304009
51	Owned but not yet paid off	52304009
821	Occupied rent-free	52304009
1220	Owned and fully paid off	52304009
12	Other	52304009
552	Rented	52305001
133	Owned but not yet paid off	52305001
577	Occupied rent-free	52305001
1025	Owned and fully paid off	52305001
50	Other	52305001
113	Rented	52305002
474	Owned but not yet paid off	52305002
1329	Occupied rent-free	52305002
162	Owned and fully paid off	52305002
32	Other	52305002
55	Rented	52305003
78	Owned but not yet paid off	52305003
1603	Occupied rent-free	52305003
15	Owned and fully paid off	52305003
30	Other	52305003
70	Rented	52305004
195	Owned but not yet paid off	52305004
611	Occupied rent-free	52305004
1048	Owned and fully paid off	52305004
0	Other	52305004
59	Rented	52305005
354	Owned but not yet paid off	52305005
445	Occupied rent-free	52305005
603	Owned and fully paid off	52305005
20	Other	52305005
37	Rented	52305006
39	Owned but not yet paid off	52305006
422	Occupied rent-free	52305006
1552	Owned and fully paid off	52305006
21	Other	52305006
23	Rented	52305007
162	Owned but not yet paid off	52305007
280	Occupied rent-free	52305007
1523	Owned and fully paid off	52305007
7	Other	52305007
87	Rented	52305008
14	Owned but not yet paid off	52305008
1092	Occupied rent-free	52305008
645	Owned and fully paid off	52305008
178	Other	52305008
55	Rented	52305009
9	Owned but not yet paid off	52305009
1233	Occupied rent-free	52305009
568	Owned and fully paid off	52305009
4	Other	52305009
949	Rented	52305010
47	Owned but not yet paid off	52305010
266	Occupied rent-free	52305010
481	Owned and fully paid off	52305010
531	Other	52305010
1053	Rented	52305011
179	Owned but not yet paid off	52305011
237	Occupied rent-free	52305011
475	Owned and fully paid off	52305011
159	Other	52305011
860	Rented	52305012
122	Owned but not yet paid off	52305012
746	Occupied rent-free	52305012
251	Owned and fully paid off	52305012
39	Other	52305012
592	Rented	52305013
180	Owned but not yet paid off	52305013
638	Occupied rent-free	52305013
152	Owned and fully paid off	52305013
260	Other	52305013
93	Rented	52305014
381	Owned but not yet paid off	52305014
804	Occupied rent-free	52305014
415	Owned and fully paid off	52305014
85	Other	52305014
49	Rented	52306001
175	Owned but not yet paid off	52306001
234	Occupied rent-free	52306001
1214	Owned and fully paid off	52306001
74	Other	52306001
27	Rented	52306002
86	Owned but not yet paid off	52306002
160	Occupied rent-free	52306002
1360	Owned and fully paid off	52306002
2	Other	52306002
16	Rented	52306003
9	Owned but not yet paid off	52306003
181	Occupied rent-free	52306003
1298	Owned and fully paid off	52306003
12	Other	52306003
32	Rented	52306004
50	Owned but not yet paid off	52306004
1170	Occupied rent-free	52306004
564	Owned and fully paid off	52306004
158	Other	52306004
17	Rented	52306005
18	Owned but not yet paid off	52306005
186	Occupied rent-free	52306005
1237	Owned and fully paid off	52306005
12	Other	52306005
12	Rented	52306006
221	Owned but not yet paid off	52306006
161	Occupied rent-free	52306006
1039	Owned and fully paid off	52306006
223	Other	52306006
14	Rented	52306007
98	Owned but not yet paid off	52306007
585	Occupied rent-free	52306007
685	Owned and fully paid off	52306007
110	Other	52306007
6	Rented	52306008
114	Owned but not yet paid off	52306008
880	Occupied rent-free	52306008
539	Owned and fully paid off	52306008
145	Other	52306008
14	Rented	52306009
355	Owned but not yet paid off	52306009
441	Occupied rent-free	52306009
999	Owned and fully paid off	52306009
116	Other	52306009
69	Rented	52306010
333	Owned but not yet paid off	52306010
717	Occupied rent-free	52306010
1135	Owned and fully paid off	52306010
41	Other	52306010
58	Rented	52306011
172	Owned but not yet paid off	52306011
723	Occupied rent-free	52306011
779	Owned and fully paid off	52306011
3	Other	52306011
8	Rented	52306012
50	Owned but not yet paid off	52306012
218	Occupied rent-free	52306012
993	Owned and fully paid off	52306012
3	Other	52306012
50	Rented	52306013
33	Owned but not yet paid off	52306013
1036	Occupied rent-free	52306013
817	Owned and fully paid off	52306013
31	Other	52306013
201	Rented	52701001
8	Owned but not yet paid off	52701001
646	Occupied rent-free	52701001
223	Owned and fully paid off	52701001
73	Other	52701001
304	Rented	52701002
112	Owned but not yet paid off	52701002
727	Occupied rent-free	52701002
397	Owned and fully paid off	52701002
215	Other	52701002
67	Rented	52701003
594	Owned but not yet paid off	52701003
740	Occupied rent-free	52701003
318	Owned and fully paid off	52701003
349	Other	52701003
336	Rented	52701004
39	Owned but not yet paid off	52701004
992	Occupied rent-free	52701004
1330	Owned and fully paid off	52701004
219	Other	52701004
246	Rented	52701005
223	Owned but not yet paid off	52701005
492	Occupied rent-free	52701005
802	Owned and fully paid off	52701005
282	Other	52701005
297	Rented	52701006
127	Owned but not yet paid off	52701006
1364	Occupied rent-free	52701006
943	Owned and fully paid off	52701006
14	Other	52701006
144	Rented	52701007
503	Owned but not yet paid off	52701007
817	Occupied rent-free	52701007
362	Owned and fully paid off	52701007
127	Other	52701007
103	Rented	52701008
83	Owned but not yet paid off	52701008
884	Occupied rent-free	52701008
862	Owned and fully paid off	52701008
17	Other	52701008
86	Rented	52701009
44	Owned but not yet paid off	52701009
960	Occupied rent-free	52701009
1488	Owned and fully paid off	52701009
4	Other	52701009
52	Rented	52701010
156	Owned but not yet paid off	52701010
753	Occupied rent-free	52701010
478	Owned and fully paid off	52701010
113	Other	52701010
162	Rented	52701011
87	Owned but not yet paid off	52701011
556	Occupied rent-free	52701011
1382	Owned and fully paid off	52701011
42	Other	52701011
6	Rented	52701012
59	Owned but not yet paid off	52701012
1123	Occupied rent-free	52701012
277	Owned and fully paid off	52701012
128	Other	52701012
51	Rented	52701013
312	Owned but not yet paid off	52701013
232	Occupied rent-free	52701013
1051	Owned and fully paid off	52701013
16	Other	52701013
82	Rented	52701014
209	Owned but not yet paid off	52701014
745	Occupied rent-free	52701014
632	Owned and fully paid off	52701014
8	Other	52701014
97	Rented	52701015
422	Owned but not yet paid off	52701015
448	Occupied rent-free	52701015
835	Owned and fully paid off	52701015
396	Other	52701015
35	Rented	52701016
20	Owned but not yet paid off	52701016
260	Occupied rent-free	52701016
1146	Owned and fully paid off	52701016
48	Other	52701016
470	Rented	52701017
28	Owned but not yet paid off	52701017
688	Occupied rent-free	52701017
1076	Owned and fully paid off	52701017
11	Other	52701017
83	Rented	52702001
78	Owned but not yet paid off	52702001
709	Occupied rent-free	52702001
508	Owned and fully paid off	52702001
28	Other	52702001
276	Rented	52702002
184	Owned but not yet paid off	52702002
538	Occupied rent-free	52702002
607	Owned and fully paid off	52702002
56	Other	52702002
43	Rented	52702003
54	Owned but not yet paid off	52702003
669	Occupied rent-free	52702003
760	Owned and fully paid off	52702003
43	Other	52702003
43	Rented	52702004
77	Owned but not yet paid off	52702004
631	Occupied rent-free	52702004
566	Owned and fully paid off	52702004
134	Other	52702004
270	Rented	52702005
41	Owned but not yet paid off	52702005
1347	Occupied rent-free	52702005
851	Owned and fully paid off	52702005
168	Other	52702005
171	Rented	52702006
237	Owned but not yet paid off	52702006
711	Occupied rent-free	52702006
200	Owned and fully paid off	52702006
30	Other	52702006
969	Rented	52702007
130	Owned but not yet paid off	52702007
713	Occupied rent-free	52702007
1302	Owned and fully paid off	52702007
17	Other	52702007
104	Rented	52702008
220	Owned but not yet paid off	52702008
278	Occupied rent-free	52702008
901	Owned and fully paid off	52702008
84	Other	52702008
67	Rented	52702009
92	Owned but not yet paid off	52702009
339	Occupied rent-free	52702009
1245	Owned and fully paid off	52702009
70	Other	52702009
47	Rented	52702010
169	Owned but not yet paid off	52702010
738	Occupied rent-free	52702010
1076	Owned and fully paid off	52702010
32	Other	52702010
94	Rented	52702011
224	Owned but not yet paid off	52702011
439	Occupied rent-free	52702011
719	Owned and fully paid off	52702011
32	Other	52702011
183	Rented	52702012
19	Owned but not yet paid off	52702012
1348	Occupied rent-free	52702012
520	Owned and fully paid off	52702012
22	Other	52702012
188	Rented	52702013
3	Owned but not yet paid off	52702013
1863	Occupied rent-free	52702013
26	Owned and fully paid off	52702013
11	Other	52702013
608	Rented	52702014
398	Owned but not yet paid off	52702014
404	Occupied rent-free	52702014
1296	Owned and fully paid off	52702014
79	Other	52702014
45	Rented	52702015
37	Owned but not yet paid off	52702015
1091	Occupied rent-free	52702015
6	Owned and fully paid off	52702015
452	Other	52702015
180	Rented	52702016
245	Owned but not yet paid off	52702016
971	Occupied rent-free	52702016
534	Owned and fully paid off	52702016
21	Other	52702016
57	Rented	52702017
16	Owned but not yet paid off	52702017
1380	Occupied rent-free	52702017
360	Owned and fully paid off	52702017
9	Other	52702017
30	Rented	52702018
11	Owned but not yet paid off	52702018
798	Occupied rent-free	52702018
416	Owned and fully paid off	52702018
237	Other	52702018
27	Rented	52702019
87	Owned but not yet paid off	52702019
812	Occupied rent-free	52702019
543	Owned and fully paid off	52702019
52	Other	52702019
1628	Rented	52702020
96	Owned but not yet paid off	52702020
1215	Occupied rent-free	52702020
259	Owned and fully paid off	52702020
46	Other	52702020
189	Rented	52703001
223	Owned but not yet paid off	52703001
1155	Occupied rent-free	52703001
283	Owned and fully paid off	52703001
9	Other	52703001
197	Rented	52703002
207	Owned but not yet paid off	52703002
620	Occupied rent-free	52703002
388	Owned and fully paid off	52703002
16	Other	52703002
1491	Rented	52703003
350	Owned but not yet paid off	52703003
831	Occupied rent-free	52703003
223	Owned and fully paid off	52703003
78	Other	52703003
47	Rented	52703004
337	Owned but not yet paid off	52703004
862	Occupied rent-free	52703004
441	Owned and fully paid off	52703004
53	Other	52703004
8	Rented	52704001
365	Owned but not yet paid off	52704001
476	Occupied rent-free	52704001
224	Owned and fully paid off	52704001
5	Other	52704001
429	Rented	52704002
209	Owned but not yet paid off	52704002
243	Occupied rent-free	52704002
149	Owned and fully paid off	52704002
211	Other	52704002
224	Rented	52704003
24	Owned but not yet paid off	52704003
1221	Occupied rent-free	52704003
669	Owned and fully paid off	52704003
28	Other	52704003
35	Rented	52704004
239	Owned but not yet paid off	52704004
1155	Occupied rent-free	52704004
334	Owned and fully paid off	52704004
92	Other	52704004
51	Rented	52704005
196	Owned but not yet paid off	52704005
786	Occupied rent-free	52704005
182	Owned and fully paid off	52704005
23	Other	52704005
78	Rented	52704006
78	Owned but not yet paid off	52704006
704	Occupied rent-free	52704006
443	Owned and fully paid off	52704006
6	Other	52704006
36	Rented	52704007
187	Owned but not yet paid off	52704007
367	Occupied rent-free	52704007
396	Owned and fully paid off	52704007
312	Other	52704007
113	Rented	52704008
438	Owned but not yet paid off	52704008
707	Occupied rent-free	52704008
961	Owned and fully paid off	52704008
181	Other	52704008
524	Rented	52705001
522	Owned but not yet paid off	52705001
111	Occupied rent-free	52705001
623	Owned and fully paid off	52705001
41	Other	52705001
1033	Rented	52705002
613	Owned but not yet paid off	52705002
387	Occupied rent-free	52705002
1586	Owned and fully paid off	52705002
27	Other	52705002
730	Rented	52705003
152	Owned but not yet paid off	52705003
726	Occupied rent-free	52705003
1949	Owned and fully paid off	52705003
37	Other	52705003
410	Rented	52705004
180	Owned but not yet paid off	52705004
570	Occupied rent-free	52705004
639	Owned and fully paid off	52705004
308	Other	52705004
617	Rented	52705005
423	Owned but not yet paid off	52705005
385	Occupied rent-free	52705005
202	Owned and fully paid off	52705005
42	Other	52705005
489	Rented	52705006
562	Owned but not yet paid off	52705006
1080	Occupied rent-free	52705006
1221	Owned and fully paid off	52705006
46	Other	52705006
10	Rented	52705007
439	Owned but not yet paid off	52705007
409	Occupied rent-free	52705007
514	Owned and fully paid off	52705007
15	Other	52705007
38	Rented	52705008
53	Owned but not yet paid off	52705008
122	Occupied rent-free	52705008
1395	Owned and fully paid off	52705008
6	Other	52705008
35	Rented	52705009
144	Owned but not yet paid off	52705009
211	Occupied rent-free	52705009
881	Owned and fully paid off	52705009
10	Other	52705009
24	Rented	52705010
12	Owned but not yet paid off	52705010
20	Occupied rent-free	52705010
1505	Owned and fully paid off	52705010
5	Other	52705010
16	Rented	52705011
233	Owned but not yet paid off	52705011
133	Occupied rent-free	52705011
895	Owned and fully paid off	52705011
0	Other	52705011
26	Rented	52705012
15	Owned but not yet paid off	52705012
485	Occupied rent-free	52705012
991	Owned and fully paid off	52705012
11	Other	52705012
22	Rented	52705013
27	Owned but not yet paid off	52705013
229	Occupied rent-free	52705013
594	Owned and fully paid off	52705013
42	Other	52705013
37	Rented	52705014
176	Owned but not yet paid off	52705014
21	Occupied rent-free	52705014
757	Owned and fully paid off	52705014
179	Other	52705014
4	Rented	52705015
450	Owned but not yet paid off	52705015
656	Occupied rent-free	52705015
56	Owned and fully paid off	52705015
16	Other	52705015
27	Rented	52705016
196	Owned but not yet paid off	52705016
238	Occupied rent-free	52705016
1449	Owned and fully paid off	52705016
2	Other	52705016
24	Rented	52705017
217	Owned but not yet paid off	52705017
648	Occupied rent-free	52705017
482	Owned and fully paid off	52705017
18	Other	52705017
17	Rented	52705018
387	Owned but not yet paid off	52705018
656	Occupied rent-free	52705018
908	Owned and fully paid off	52705018
18	Other	52705018
12	Rented	52705019
194	Owned but not yet paid off	52705019
910	Occupied rent-free	52705019
260	Owned and fully paid off	52705019
85	Other	52705019
906	Rented	52802001
844	Owned but not yet paid off	52802001
201	Occupied rent-free	52802001
1295	Owned and fully paid off	52802001
160	Other	52802001
2222	Rented	52802002
1124	Owned but not yet paid off	52802002
59	Occupied rent-free	52802002
467	Owned and fully paid off	52802002
59	Other	52802002
882	Rented	52802003
1144	Owned but not yet paid off	52802003
56	Occupied rent-free	52802003
471	Owned and fully paid off	52802003
33	Other	52802003
686	Rented	52802004
961	Owned but not yet paid off	52802004
235	Occupied rent-free	52802004
955	Owned and fully paid off	52802004
103	Other	52802004
756	Rented	52802005
313	Owned but not yet paid off	52802005
974	Occupied rent-free	52802005
1289	Owned and fully paid off	52802005
58	Other	52802005
1706	Rented	52802006
40	Owned but not yet paid off	52802006
509	Occupied rent-free	52802006
1283	Owned and fully paid off	52802006
11	Other	52802006
1352	Rented	52802007
114	Owned but not yet paid off	52802007
174	Occupied rent-free	52802007
546	Owned and fully paid off	52802007
47	Other	52802007
1184	Rented	52802008
103	Owned but not yet paid off	52802008
127	Occupied rent-free	52802008
397	Owned and fully paid off	52802008
5	Other	52802008
1106	Rented	52802009
1634	Owned but not yet paid off	52802009
976	Occupied rent-free	52802009
536	Owned and fully paid off	52802009
66	Other	52802009
779	Rented	52802010
97	Owned but not yet paid off	52802010
183	Occupied rent-free	52802010
1412	Owned and fully paid off	52802010
42	Other	52802010
5	Rented	52802011
79	Owned but not yet paid off	52802011
355	Occupied rent-free	52802011
850	Owned and fully paid off	52802011
224	Other	52802011
423	Rented	52802012
35	Owned but not yet paid off	52802012
229	Occupied rent-free	52802012
1123	Owned and fully paid off	52802012
51	Other	52802012
122	Rented	52802013
103	Owned but not yet paid off	52802013
934	Occupied rent-free	52802013
1489	Owned and fully paid off	52802013
40	Other	52802013
1203	Rented	52802014
209	Owned but not yet paid off	52802014
126	Occupied rent-free	52802014
1697	Owned and fully paid off	52802014
27	Other	52802014
1094	Rented	52802015
22	Owned but not yet paid off	52802015
104	Occupied rent-free	52802015
1746	Owned and fully paid off	52802015
96	Other	52802015
495	Rented	52802016
272	Owned but not yet paid off	52802016
39	Occupied rent-free	52802016
1055	Owned and fully paid off	52802016
16	Other	52802016
1526	Rented	52802017
779	Owned but not yet paid off	52802017
143	Occupied rent-free	52802017
841	Owned and fully paid off	52802017
58	Other	52802017
384	Rented	52802018
146	Owned but not yet paid off	52802018
627	Occupied rent-free	52802018
1703	Owned and fully paid off	52802018
20	Other	52802018
610	Rented	52802019
694	Owned but not yet paid off	52802019
112	Occupied rent-free	52802019
1507	Owned and fully paid off	52802019
60	Other	52802019
997	Rented	52802020
337	Owned but not yet paid off	52802020
104	Occupied rent-free	52802020
1024	Owned and fully paid off	52802020
27	Other	52802020
660	Rented	52802021
233	Owned but not yet paid off	52802021
208	Occupied rent-free	52802021
799	Owned and fully paid off	52802021
30	Other	52802021
456	Rented	52802022
305	Owned but not yet paid off	52802022
49	Occupied rent-free	52802022
1137	Owned and fully paid off	52802022
14	Other	52802022
1375	Rented	52802023
1066	Owned but not yet paid off	52802023
291	Occupied rent-free	52802023
513	Owned and fully paid off	52802023
80	Other	52802023
1476	Rented	52802024
576	Owned but not yet paid off	52802024
1080	Occupied rent-free	52802024
1073	Owned and fully paid off	52802024
167	Other	52802024
587	Rented	52802025
176	Owned but not yet paid off	52802025
349	Occupied rent-free	52802025
1843	Owned and fully paid off	52802025
206	Other	52802025
617	Rented	52802026
1015	Owned but not yet paid off	52802026
97	Occupied rent-free	52802026
1114	Owned and fully paid off	52802026
66	Other	52802026
828	Rented	52802027
696	Owned but not yet paid off	52802027
177	Occupied rent-free	52802027
920	Owned and fully paid off	52802027
53	Other	52802027
1181	Rented	52802028
200	Owned but not yet paid off	52802028
105	Occupied rent-free	52802028
844	Owned and fully paid off	52802028
26	Other	52802028
519	Rented	52802029
90	Owned but not yet paid off	52802029
642	Occupied rent-free	52802029
1915	Owned and fully paid off	52802029
201	Other	52802029
3163	Rented	52802030
77	Owned but not yet paid off	52802030
300	Occupied rent-free	52802030
344	Owned and fully paid off	52802030
32	Other	52802030
161	Rented	52806001
135	Owned but not yet paid off	52806001
744	Occupied rent-free	52806001
430	Owned and fully paid off	52806001
403	Other	52806001
62	Rented	52806002
442	Owned but not yet paid off	52806002
333	Occupied rent-free	52806002
277	Owned and fully paid off	52806002
71	Other	52806002
65	Rented	52806003
14	Owned but not yet paid off	52806003
606	Occupied rent-free	52806003
477	Owned and fully paid off	52806003
226	Other	52806003
38	Rented	52806004
34	Owned but not yet paid off	52806004
68	Occupied rent-free	52806004
1142	Owned and fully paid off	52806004
1	Other	52806004
1117	Rented	52806005
52	Owned but not yet paid off	52806005
215	Occupied rent-free	52806005
892	Owned and fully paid off	52806005
42	Other	52806005
73	Rented	52806006
294	Owned but not yet paid off	52806006
564	Occupied rent-free	52806006
577	Owned and fully paid off	52806006
46	Other	52806006
56	Rented	52806007
645	Owned but not yet paid off	52806007
201	Occupied rent-free	52806007
655	Owned and fully paid off	52806007
5	Other	52806007
163	Rented	52806008
267	Owned but not yet paid off	52806008
290	Occupied rent-free	52806008
421	Owned and fully paid off	52806008
254	Other	52806008
83	Rented	52806009
501	Owned but not yet paid off	52806009
603	Occupied rent-free	52806009
291	Owned and fully paid off	52806009
116	Other	52806009
71	Rented	52806010
211	Owned but not yet paid off	52806010
948	Occupied rent-free	52806010
423	Owned and fully paid off	52806010
38	Other	52806010
57	Rented	52806011
292	Owned but not yet paid off	52806011
304	Occupied rent-free	52806011
497	Owned and fully paid off	52806011
7	Other	52806011
138	Rented	52806012
227	Owned but not yet paid off	52806012
532	Occupied rent-free	52806012
924	Owned and fully paid off	52806012
68	Other	52806012
108	Rented	52806013
860	Owned but not yet paid off	52806013
670	Occupied rent-free	52806013
309	Owned and fully paid off	52806013
80	Other	52806013
56	Rented	52806014
692	Owned but not yet paid off	52806014
502	Occupied rent-free	52806014
286	Owned and fully paid off	52806014
3	Other	52806014
195	Rented	52801001
24	Owned but not yet paid off	52801001
214	Occupied rent-free	52801001
406	Owned and fully paid off	52801001
6	Other	52801001
669	Rented	52801002
324	Owned but not yet paid off	52801002
728	Occupied rent-free	52801002
578	Owned and fully paid off	52801002
50	Other	52801002
94	Rented	52801003
139	Owned but not yet paid off	52801003
297	Occupied rent-free	52801003
795	Owned and fully paid off	52801003
49	Other	52801003
128	Rented	52801004
119	Owned but not yet paid off	52801004
705	Occupied rent-free	52801004
1593	Owned and fully paid off	52801004
30	Other	52801004
218	Rented	52801005
13	Owned but not yet paid off	52801005
16	Occupied rent-free	52801005
1399	Owned and fully paid off	52801005
13	Other	52801005
807	Rented	52801006
34	Owned but not yet paid off	52801006
130	Occupied rent-free	52801006
1193	Owned and fully paid off	52801006
26	Other	52801006
34	Rented	52801007
7	Owned but not yet paid off	52801007
647	Occupied rent-free	52801007
369	Owned and fully paid off	52801007
1	Other	52801007
65	Rented	52801008
42	Owned but not yet paid off	52801008
1240	Occupied rent-free	52801008
585	Owned and fully paid off	52801008
13	Other	52801008
22	Rented	52801009
203	Owned but not yet paid off	52801009
1231	Occupied rent-free	52801009
261	Owned and fully paid off	52801009
23	Other	52801009
11	Rented	52801010
128	Owned but not yet paid off	52801010
457	Occupied rent-free	52801010
610	Owned and fully paid off	52801010
6	Other	52801010
32	Rented	52801011
285	Owned but not yet paid off	52801011
215	Occupied rent-free	52801011
884	Owned and fully paid off	52801011
93	Other	52801011
23	Rented	52801012
135	Owned but not yet paid off	52801012
838	Occupied rent-free	52801012
456	Owned and fully paid off	52801012
33	Other	52801012
11	Rented	52801013
79	Owned but not yet paid off	52801013
462	Occupied rent-free	52801013
739	Owned and fully paid off	52801013
2	Other	52801013
531	Rented	52801014
52	Owned but not yet paid off	52801014
85	Occupied rent-free	52801014
1823	Owned and fully paid off	52801014
83	Other	52801014
78	Rented	52801015
23	Owned but not yet paid off	52801015
130	Occupied rent-free	52801015
1539	Owned and fully paid off	52801015
6	Other	52801015
8	Rented	52803001
354	Owned but not yet paid off	52803001
573	Occupied rent-free	52803001
179	Owned and fully paid off	52803001
78	Other	52803001
24	Rented	52803002
81	Owned but not yet paid off	52803002
894	Occupied rent-free	52803002
441	Owned and fully paid off	52803002
51	Other	52803002
14	Rented	52803003
299	Owned but not yet paid off	52803003
592	Occupied rent-free	52803003
601	Owned and fully paid off	52803003
141	Other	52803003
108	Rented	52803004
201	Owned but not yet paid off	52803004
844	Occupied rent-free	52803004
179	Owned and fully paid off	52803004
5	Other	52803004
39	Rented	52803005
48	Owned but not yet paid off	52803005
1587	Occupied rent-free	52803005
225	Owned and fully paid off	52803005
42	Other	52803005
19	Rented	52803006
77	Owned but not yet paid off	52803006
416	Occupied rent-free	52803006
881	Owned and fully paid off	52803006
165	Other	52803006
259	Rented	52803007
73	Owned but not yet paid off	52803007
388	Occupied rent-free	52803007
1328	Owned and fully paid off	52803007
26	Other	52803007
16	Rented	52803008
25	Owned but not yet paid off	52803008
193	Occupied rent-free	52803008
759	Owned and fully paid off	52803008
592	Other	52803008
75	Rented	52804001
767	Owned but not yet paid off	52804001
485	Occupied rent-free	52804001
123	Owned and fully paid off	52804001
24	Other	52804001
43	Rented	52804002
84	Owned but not yet paid off	52804002
740	Occupied rent-free	52804002
580	Owned and fully paid off	52804002
11	Other	52804002
113	Rented	52804003
201	Owned but not yet paid off	52804003
355	Occupied rent-free	52804003
664	Owned and fully paid off	52804003
33	Other	52804003
51	Rented	52804004
233	Owned but not yet paid off	52804004
325	Occupied rent-free	52804004
963	Owned and fully paid off	52804004
28	Other	52804004
42	Rented	52804005
328	Owned but not yet paid off	52804005
319	Occupied rent-free	52804005
938	Owned and fully paid off	52804005
284	Other	52804005
15	Rented	52804006
111	Owned but not yet paid off	52804006
241	Occupied rent-free	52804006
886	Owned and fully paid off	52804006
140	Other	52804006
337	Rented	52804007
349	Owned but not yet paid off	52804007
568	Occupied rent-free	52804007
498	Owned and fully paid off	52804007
327	Other	52804007
60	Rented	52804008
418	Owned but not yet paid off	52804008
528	Occupied rent-free	52804008
748	Owned and fully paid off	52804008
23	Other	52804008
29	Rented	52804009
131	Owned but not yet paid off	52804009
574	Occupied rent-free	52804009
717	Owned and fully paid off	52804009
88	Other	52804009
34	Rented	52804010
119	Owned but not yet paid off	52804010
596	Occupied rent-free	52804010
604	Owned and fully paid off	52804010
244	Other	52804010
1154	Rented	52804011
468	Owned but not yet paid off	52804011
798	Occupied rent-free	52804011
483	Owned and fully paid off	52804011
60	Other	52804011
712	Rented	52804012
221	Owned but not yet paid off	52804012
114	Occupied rent-free	52804012
698	Owned and fully paid off	52804012
73	Other	52804012
1129	Rented	52804013
186	Owned but not yet paid off	52804013
265	Occupied rent-free	52804013
706	Owned and fully paid off	52804013
363	Other	52804013
15	Rented	52804014
44	Owned but not yet paid off	52804014
889	Occupied rent-free	52804014
507	Owned and fully paid off	52804014
35	Other	52804014
69	Rented	52804015
68	Owned but not yet paid off	52804015
1286	Occupied rent-free	52804015
340	Owned and fully paid off	52804015
115	Other	52804015
14	Rented	52804016
47	Owned but not yet paid off	52804016
781	Occupied rent-free	52804016
992	Owned and fully paid off	52804016
255	Other	52804016
27	Rented	52804017
121	Owned but not yet paid off	52804017
244	Occupied rent-free	52804017
799	Owned and fully paid off	52804017
64	Other	52804017
396	Rented	52804018
213	Owned but not yet paid off	52804018
588	Occupied rent-free	52804018
66	Owned and fully paid off	52804018
40	Other	52804018
688	Rented	52804019
389	Owned but not yet paid off	52804019
210	Occupied rent-free	52804019
513	Owned and fully paid off	52804019
100	Other	52804019
201	Rented	52804020
33	Owned but not yet paid off	52804020
353	Occupied rent-free	52804020
1142	Owned and fully paid off	52804020
337	Other	52804020
19	Rented	52804021
169	Owned but not yet paid off	52804021
591	Occupied rent-free	52804021
209	Owned and fully paid off	52804021
248	Other	52804021
10	Rented	52804022
140	Owned but not yet paid off	52804022
142	Occupied rent-free	52804022
875	Owned and fully paid off	52804022
14	Other	52804022
13	Rented	52804023
82	Owned but not yet paid off	52804023
177	Occupied rent-free	52804023
1272	Owned and fully paid off	52804023
11	Other	52804023
21	Rented	52804024
113	Owned but not yet paid off	52804024
959	Occupied rent-free	52804024
425	Owned and fully paid off	52804024
45	Other	52804024
14	Rented	52804025
34	Owned but not yet paid off	52804025
263	Occupied rent-free	52804025
910	Owned and fully paid off	52804025
115	Other	52804025
114	Rented	52804026
180	Owned but not yet paid off	52804026
1236	Occupied rent-free	52804026
878	Owned and fully paid off	52804026
177	Other	52804026
1565	Rented	52805001
168	Owned but not yet paid off	52805001
646	Occupied rent-free	52805001
586	Owned and fully paid off	52805001
86	Other	52805001
376	Rented	52805002
146	Owned but not yet paid off	52805002
812	Occupied rent-free	52805002
183	Owned and fully paid off	52805002
41	Other	52805002
43	Rented	52805003
204	Owned but not yet paid off	52805003
700	Occupied rent-free	52805003
378	Owned and fully paid off	52805003
100	Other	52805003
90	Rented	52805004
131	Owned but not yet paid off	52805004
959	Occupied rent-free	52805004
347	Owned and fully paid off	52805004
18	Other	52805004
23	Rented	52805005
196	Owned but not yet paid off	52805005
507	Occupied rent-free	52805005
1047	Owned and fully paid off	52805005
17	Other	52805005
10	Rented	52805006
64	Owned but not yet paid off	52805006
560	Occupied rent-free	52805006
423	Owned and fully paid off	52805006
6	Other	52805006
43	Rented	54301001
43	Owned but not yet paid off	54301001
599	Occupied rent-free	54301001
1290	Owned and fully paid off	54301001
133	Other	54301001
37	Rented	54301002
304	Owned but not yet paid off	54301002
510	Occupied rent-free	54301002
1056	Owned and fully paid off	54301002
76	Other	54301002
54	Rented	54301003
38	Owned but not yet paid off	54301003
707	Occupied rent-free	54301003
1273	Owned and fully paid off	54301003
41	Other	54301003
55	Rented	54301004
116	Owned but not yet paid off	54301004
386	Occupied rent-free	54301004
1391	Owned and fully paid off	54301004
75	Other	54301004
152	Rented	54301005
172	Owned but not yet paid off	54301005
886	Occupied rent-free	54301005
568	Owned and fully paid off	54301005
52	Other	54301005
223	Rented	54301006
696	Owned but not yet paid off	54301006
1067	Occupied rent-free	54301006
419	Owned and fully paid off	54301006
97	Other	54301006
35	Rented	54301007
339	Owned but not yet paid off	54301007
151	Occupied rent-free	54301007
950	Owned and fully paid off	54301007
284	Other	54301007
64	Rented	54301008
17	Owned but not yet paid off	54301008
376	Occupied rent-free	54301008
1412	Owned and fully paid off	54301008
16	Other	54301008
366	Rented	54301009
108	Owned but not yet paid off	54301009
516	Occupied rent-free	54301009
1742	Owned and fully paid off	54301009
41	Other	54301009
118	Rented	54301010
164	Owned but not yet paid off	54301010
309	Occupied rent-free	54301010
1341	Owned and fully paid off	54301010
72	Other	54301010
299	Rented	54301011
113	Owned but not yet paid off	54301011
823	Occupied rent-free	54301011
691	Owned and fully paid off	54301011
165	Other	54301011
88	Rented	54302001
193	Owned but not yet paid off	54302001
40	Occupied rent-free	54302001
338	Owned and fully paid off	54302001
2	Other	54302001
454	Rented	54302002
126	Owned but not yet paid off	54302002
146	Occupied rent-free	54302002
361	Owned and fully paid off	54302002
44	Other	54302002
435	Rented	54302003
92	Owned but not yet paid off	54302003
283	Occupied rent-free	54302003
202	Owned and fully paid off	54302003
88	Other	54302003
279	Rented	54302004
27	Owned but not yet paid off	54302004
401	Occupied rent-free	54302004
53	Owned and fully paid off	54302004
20	Other	54302004
1405	Rented	54303001
150	Owned but not yet paid off	54303001
1304	Occupied rent-free	54303001
581	Owned and fully paid off	54303001
14	Other	54303001
542	Rented	54303002
83	Owned but not yet paid off	54303002
860	Occupied rent-free	54303002
299	Owned and fully paid off	54303002
82	Other	54303002
1140	Rented	54303003
195	Owned but not yet paid off	54303003
133	Occupied rent-free	54303003
402	Owned and fully paid off	54303003
30	Other	54303003
861	Rented	54303004
137	Owned but not yet paid off	54303004
906	Occupied rent-free	54303004
1480	Owned and fully paid off	54303004
36	Other	54303004
473	Rented	54303005
85	Owned but not yet paid off	54303005
218	Occupied rent-free	54303005
242	Owned and fully paid off	54303005
17	Other	54303005
641	Rented	54303006
785	Owned but not yet paid off	54303006
867	Occupied rent-free	54303006
427	Owned and fully paid off	54303006
201	Other	54303006
528	Rented	54303007
223	Owned but not yet paid off	54303007
657	Occupied rent-free	54303007
597	Owned and fully paid off	54303007
7	Other	54303007
983	Rented	54303008
57	Owned but not yet paid off	54303008
257	Occupied rent-free	54303008
1199	Owned and fully paid off	54303008
38	Other	54303008
63	Rented	54304001
423	Owned but not yet paid off	54304001
889	Occupied rent-free	54304001
311	Owned and fully paid off	54304001
33	Other	54304001
671	Rented	54304002
283	Owned but not yet paid off	54304002
106	Occupied rent-free	54304002
412	Owned and fully paid off	54304002
87	Other	54304002
98	Rented	54304003
11	Owned but not yet paid off	54304003
371	Occupied rent-free	54304003
1463	Owned and fully paid off	54304003
30	Other	54304003
1579	Rented	54304004
111	Owned but not yet paid off	54304004
883	Occupied rent-free	54304004
1074	Owned and fully paid off	54304004
136	Other	54304004
10	Rented	54304005
269	Owned but not yet paid off	54304005
139	Occupied rent-free	54304005
857	Owned and fully paid off	54304005
532	Other	54304005
41	Rented	54304006
145	Owned but not yet paid off	54304006
118	Occupied rent-free	54304006
1204	Owned and fully paid off	54304006
6	Other	54304006
63	Rented	54304007
151	Owned but not yet paid off	54304007
52	Occupied rent-free	54304007
1212	Owned and fully paid off	54304007
35	Other	54304007
48	Rented	54304008
27	Owned but not yet paid off	54304008
191	Occupied rent-free	54304008
2246	Owned and fully paid off	54304008
26	Other	54304008
364	Rented	54304009
284	Owned but not yet paid off	54304009
259	Occupied rent-free	54304009
644	Owned and fully paid off	54304009
163	Other	54304009
81	Rented	54304010
15	Owned but not yet paid off	54304010
662	Occupied rent-free	54304010
918	Owned and fully paid off	54304010
9	Other	54304010
103	Rented	54304011
16	Owned but not yet paid off	54304011
87	Occupied rent-free	54304011
1397	Owned and fully paid off	54304011
73	Other	54304011
78	Rented	54304012
524	Owned but not yet paid off	54304012
405	Occupied rent-free	54304012
986	Owned and fully paid off	54304012
12	Other	54304012
58	Rented	54305001
233	Owned but not yet paid off	54305001
272	Occupied rent-free	54305001
1564	Owned and fully paid off	54305001
78	Other	54305001
99	Rented	54305002
325	Owned but not yet paid off	54305002
350	Occupied rent-free	54305002
1509	Owned and fully paid off	54305002
114	Other	54305002
63	Rented	54305003
145	Owned but not yet paid off	54305003
238	Occupied rent-free	54305003
1467	Owned and fully paid off	54305003
10	Other	54305003
24	Rented	54305004
140	Owned but not yet paid off	54305004
474	Occupied rent-free	54305004
1193	Owned and fully paid off	54305004
7	Other	54305004
28	Rented	54305005
512	Owned but not yet paid off	54305005
602	Occupied rent-free	54305005
1053	Owned and fully paid off	54305005
16	Other	54305005
51	Rented	54305006
358	Owned but not yet paid off	54305006
476	Occupied rent-free	54305006
1475	Owned and fully paid off	54305006
18	Other	54305006
46	Rented	54305007
166	Owned but not yet paid off	54305007
964	Occupied rent-free	54305007
846	Owned and fully paid off	54305007
24	Other	54305007
94	Rented	54305008
236	Owned but not yet paid off	54305008
590	Occupied rent-free	54305008
1489	Owned and fully paid off	54305008
14	Other	54305008
53	Rented	54305009
80	Owned but not yet paid off	54305009
305	Occupied rent-free	54305009
1296	Owned and fully paid off	54305009
23	Other	54305009
81	Rented	54305010
130	Owned but not yet paid off	54305010
616	Occupied rent-free	54305010
1461	Owned and fully paid off	54305010
28	Other	54305010
75	Rented	54305011
17	Owned but not yet paid off	54305011
479	Occupied rent-free	54305011
1105	Owned and fully paid off	54305011
10	Other	54305011
370	Rented	54305012
105	Owned but not yet paid off	54305012
665	Occupied rent-free	54305012
1090	Owned and fully paid off	54305012
116	Other	54305012
72	Rented	54305013
14	Owned but not yet paid off	54305013
482	Occupied rent-free	54305013
1887	Owned and fully paid off	54305013
11	Other	54305013
82	Rented	54305014
304	Owned but not yet paid off	54305014
703	Occupied rent-free	54305014
1083	Owned and fully paid off	54305014
225	Other	54305014
22	Rented	54305015
40	Owned but not yet paid off	54305015
274	Occupied rent-free	54305015
1140	Owned and fully paid off	54305015
9	Other	54305015
1646	Rented	54305016
120	Owned but not yet paid off	54305016
530	Occupied rent-free	54305016
606	Owned and fully paid off	54305016
44	Other	54305016
384	Rented	54305017
76	Owned but not yet paid off	54305017
281	Occupied rent-free	54305017
1154	Owned and fully paid off	54305017
301	Other	54305017
31	Rented	54305018
29	Owned but not yet paid off	54305018
171	Occupied rent-free	54305018
1829	Owned and fully paid off	54305018
4	Other	54305018
229	Rented	54305019
99	Owned but not yet paid off	54305019
333	Occupied rent-free	54305019
1091	Owned and fully paid off	54305019
14	Other	54305019
172	Rented	54305020
106	Owned but not yet paid off	54305020
56	Occupied rent-free	54305020
1645	Owned and fully paid off	54305020
87	Other	54305020
465	Rented	52401001
173	Owned but not yet paid off	52401001
102	Occupied rent-free	52401001
774	Owned and fully paid off	52401001
45	Other	52401001
1350	Rented	52401002
658	Owned but not yet paid off	52401002
240	Occupied rent-free	52401002
1433	Owned and fully paid off	52401002
137	Other	52401002
723	Rented	52401003
216	Owned but not yet paid off	52401003
454	Occupied rent-free	52401003
2205	Owned and fully paid off	52401003
25	Other	52401003
1190	Rented	52401004
195	Owned but not yet paid off	52401004
51	Occupied rent-free	52401004
1086	Owned and fully paid off	52401004
33	Other	52401004
713	Rented	52401005
112	Owned but not yet paid off	52401005
304	Occupied rent-free	52401005
1281	Owned and fully paid off	52401005
91	Other	52401005
925	Rented	52401006
244	Owned but not yet paid off	52401006
557	Occupied rent-free	52401006
1030	Owned and fully paid off	52401006
40	Other	52401006
114	Rented	52402001
376	Owned but not yet paid off	52402001
343	Occupied rent-free	52402001
1519	Owned and fully paid off	52402001
21	Other	52402001
27	Rented	52402002
303	Owned but not yet paid off	52402002
426	Occupied rent-free	52402002
795	Owned and fully paid off	52402002
149	Other	52402002
77	Rented	52402003
299	Owned but not yet paid off	52402003
954	Occupied rent-free	52402003
581	Owned and fully paid off	52402003
55	Other	52402003
18	Rented	52402004
27	Owned but not yet paid off	52402004
1341	Occupied rent-free	52402004
56	Owned and fully paid off	52402004
8	Other	52402004
52	Rented	52402005
216	Owned but not yet paid off	52402005
597	Occupied rent-free	52402005
864	Owned and fully paid off	52402005
9	Other	52402005
57	Rented	52402006
182	Owned but not yet paid off	52402006
550	Occupied rent-free	52402006
766	Owned and fully paid off	52402006
0	Other	52402006
29	Rented	52402007
208	Owned but not yet paid off	52402007
312	Occupied rent-free	52402007
998	Owned and fully paid off	52402007
91	Other	52402007
9	Rented	52402008
34	Owned but not yet paid off	52402008
352	Occupied rent-free	52402008
1136	Owned and fully paid off	52402008
2	Other	52402008
22	Rented	52402009
148	Owned but not yet paid off	52402009
611	Occupied rent-free	52402009
932	Owned and fully paid off	52402009
16	Other	52402009
20	Rented	52402010
150	Owned but not yet paid off	52402010
1655	Occupied rent-free	52402010
231	Owned and fully paid off	52402010
11	Other	52402010
87	Rented	52402011
55	Owned but not yet paid off	52402011
971	Occupied rent-free	52402011
1165	Owned and fully paid off	52402011
5	Other	52402011
21	Rented	52402012
8	Owned but not yet paid off	52402012
1425	Occupied rent-free	52402012
200	Owned and fully paid off	52402012
6	Other	52402012
16	Rented	52402013
200	Owned but not yet paid off	52402013
1101	Occupied rent-free	52402013
583	Owned and fully paid off	52402013
7	Other	52402013
770	Rented	52402014
193	Owned but not yet paid off	52402014
595	Occupied rent-free	52402014
857	Owned and fully paid off	52402014
11	Other	52402014
48	Rented	52402015
49	Owned but not yet paid off	52402015
1426	Occupied rent-free	52402015
626	Owned and fully paid off	52402015
3	Other	52402015
24	Rented	52402016
3	Owned but not yet paid off	52402016
729	Occupied rent-free	52402016
898	Owned and fully paid off	52402016
2	Other	52402016
65	Rented	52402017
50	Owned but not yet paid off	52402017
445	Occupied rent-free	52402017
1216	Owned and fully paid off	52402017
4	Other	52402017
54	Rented	52404001
151	Owned but not yet paid off	52404001
289	Occupied rent-free	52404001
1256	Owned and fully paid off	52404001
60	Other	52404001
15	Rented	52404002
179	Owned but not yet paid off	52404002
476	Occupied rent-free	52404002
908	Owned and fully paid off	52404002
11	Other	52404002
35	Rented	52404003
12	Owned but not yet paid off	52404003
770	Occupied rent-free	52404003
1198	Owned and fully paid off	52404003
14	Other	52404003
435	Rented	52404004
84	Owned but not yet paid off	52404004
943	Occupied rent-free	52404004
754	Owned and fully paid off	52404004
20	Other	52404004
388	Rented	52404005
334	Owned but not yet paid off	52404005
660	Occupied rent-free	52404005
1731	Owned and fully paid off	52404005
134	Other	52404005
11	Rented	52404006
344	Owned but not yet paid off	52404006
190	Occupied rent-free	52404006
1596	Owned and fully paid off	52404006
9	Other	52404006
39	Rented	52404007
10	Owned but not yet paid off	52404007
291	Occupied rent-free	52404007
1411	Owned and fully paid off	52404007
15	Other	52404007
12	Rented	52404008
344	Owned but not yet paid off	52404008
415	Occupied rent-free	52404008
898	Owned and fully paid off	52404008
3	Other	52404008
56	Rented	52404009
29	Owned but not yet paid off	52404009
103	Occupied rent-free	52404009
1652	Owned and fully paid off	52404009
29	Other	52404009
123	Rented	52404010
50	Owned but not yet paid off	52404010
958	Occupied rent-free	52404010
933	Owned and fully paid off	52404010
178	Other	52404010
59	Rented	52404011
198	Owned but not yet paid off	52404011
767	Occupied rent-free	52404011
949	Owned and fully paid off	52404011
49	Other	52404011
56	Rented	52404012
435	Owned but not yet paid off	52404012
84	Occupied rent-free	52404012
1470	Owned and fully paid off	52404012
93	Other	52404012
48	Rented	52404013
47	Owned but not yet paid off	52404013
30	Occupied rent-free	52404013
1723	Owned and fully paid off	52404013
96	Other	52404013
204	Rented	52404014
286	Owned but not yet paid off	52404014
543	Occupied rent-free	52404014
1070	Owned and fully paid off	52404014
16	Other	52404014
49	Rented	52404015
395	Owned but not yet paid off	52404015
14	Occupied rent-free	52404015
1259	Owned and fully paid off	52404015
7	Other	52404015
17	Rented	52404016
396	Owned but not yet paid off	52404016
106	Occupied rent-free	52404016
1276	Owned and fully paid off	52404016
18	Other	52404016
94	Rented	52404017
236	Owned but not yet paid off	52404017
490	Occupied rent-free	52404017
1208	Owned and fully paid off	52404017
21	Other	52404017
26	Rented	52404018
171	Owned but not yet paid off	52404018
527	Occupied rent-free	52404018
675	Owned and fully paid off	52404018
17	Other	52404018
167	Rented	52404019
178	Owned but not yet paid off	52404019
857	Occupied rent-free	52404019
632	Owned and fully paid off	52404019
51	Other	52404019
78	Rented	52405001
690	Owned but not yet paid off	52405001
31	Occupied rent-free	52405001
1638	Owned and fully paid off	52405001
8	Other	52405001
45	Rented	52405002
28	Owned but not yet paid off	52405002
217	Occupied rent-free	52405002
1843	Owned and fully paid off	52405002
4	Other	52405002
49	Rented	52405003
15	Owned but not yet paid off	52405003
316	Occupied rent-free	52405003
1672	Owned and fully paid off	52405003
1	Other	52405003
49	Rented	52405004
92	Owned but not yet paid off	52405004
245	Occupied rent-free	52405004
1431	Owned and fully paid off	52405004
51	Other	52405004
397	Rented	52405005
109	Owned but not yet paid off	52405005
1047	Occupied rent-free	52405005
1108	Owned and fully paid off	52405005
152	Other	52405005
91	Rented	52405006
24	Owned but not yet paid off	52405006
99	Occupied rent-free	52405006
1543	Owned and fully paid off	52405006
309	Other	52405006
1811	Rented	52405007
99	Owned but not yet paid off	52405007
630	Occupied rent-free	52405007
1057	Owned and fully paid off	52405007
26	Other	52405007
78	Rented	52405008
397	Owned but not yet paid off	52405008
935	Occupied rent-free	52405008
1136	Owned and fully paid off	52405008
256	Other	52405008
899	Rented	52405009
216	Owned but not yet paid off	52405009
126	Occupied rent-free	52405009
356	Owned and fully paid off	52405009
22	Other	52405009
844	Rented	52405010
282	Owned but not yet paid off	52405010
1018	Occupied rent-free	52405010
1045	Owned and fully paid off	52405010
165	Other	52405010
326	Rented	52405011
193	Owned but not yet paid off	52405011
706	Occupied rent-free	52405011
1040	Owned and fully paid off	52405011
237	Other	52405011
422	Rented	52502001
190	Owned but not yet paid off	52502001
1088	Occupied rent-free	52502001
1138	Owned and fully paid off	52502001
290	Other	52502001
696	Rented	52502002
1346	Owned but not yet paid off	52502002
171	Occupied rent-free	52502002
1021	Owned and fully paid off	52502002
48	Other	52502002
824	Rented	52502003
476	Owned but not yet paid off	52502003
72	Occupied rent-free	52502003
974	Owned and fully paid off	52502003
38	Other	52502003
1152	Rented	52502004
721	Owned but not yet paid off	52502004
57	Occupied rent-free	52502004
827	Owned and fully paid off	52502004
78	Other	52502004
991	Rented	52502005
1183	Owned but not yet paid off	52502005
103	Occupied rent-free	52502005
562	Owned and fully paid off	52502005
66	Other	52502005
425	Rented	52502006
329	Owned but not yet paid off	52502006
1591	Occupied rent-free	52502006
2424	Owned and fully paid off	52502006
42	Other	52502006
223	Rented	52502007
242	Owned but not yet paid off	52502007
1192	Occupied rent-free	52502007
1846	Owned and fully paid off	52502007
125	Other	52502007
258	Rented	52502008
42	Owned but not yet paid off	52502008
344	Occupied rent-free	52502008
1186	Owned and fully paid off	52502008
31	Other	52502008
412	Rented	52502009
288	Owned but not yet paid off	52502009
1039	Occupied rent-free	52502009
1945	Owned and fully paid off	52502009
39	Other	52502009
568	Rented	52502010
53	Owned but not yet paid off	52502010
639	Occupied rent-free	52502010
869	Owned and fully paid off	52502010
32	Other	52502010
924	Rented	52502011
113	Owned but not yet paid off	52502011
580	Occupied rent-free	52502011
843	Owned and fully paid off	52502011
41	Other	52502011
347	Rented	52502012
24	Owned but not yet paid off	52502012
640	Occupied rent-free	52502012
472	Owned and fully paid off	52502012
348	Other	52502012
324	Rented	52502013
48	Owned but not yet paid off	52502013
505	Occupied rent-free	52502013
761	Owned and fully paid off	52502013
51	Other	52502013
854	Rented	52502014
172	Owned but not yet paid off	52502014
475	Occupied rent-free	52502014
2007	Owned and fully paid off	52502014
104	Other	52502014
653	Rented	52502015
166	Owned but not yet paid off	52502015
868	Occupied rent-free	52502015
514	Owned and fully paid off	52502015
13	Other	52502015
575	Rented	52502016
101	Owned but not yet paid off	52502016
2100	Occupied rent-free	52502016
323	Owned and fully paid off	52502016
11	Other	52502016
411	Rented	52502017
136	Owned but not yet paid off	52502017
628	Occupied rent-free	52502017
1193	Owned and fully paid off	52502017
43	Other	52502017
590	Rented	52502018
146	Owned but not yet paid off	52502018
682	Occupied rent-free	52502018
1117	Owned and fully paid off	52502018
40	Other	52502018
705	Rented	52502019
147	Owned but not yet paid off	52502019
598	Occupied rent-free	52502019
1027	Owned and fully paid off	52502019
28	Other	52502019
749	Rented	52502020
159	Owned but not yet paid off	52502020
1701	Occupied rent-free	52502020
825	Owned and fully paid off	52502020
356	Other	52502020
771	Rented	52502021
336	Owned but not yet paid off	52502021
417	Occupied rent-free	52502021
1482	Owned and fully paid off	52502021
94	Other	52502021
420	Rented	52502022
515	Owned but not yet paid off	52502022
53	Occupied rent-free	52502022
846	Owned and fully paid off	52502022
128	Other	52502022
453	Rented	52502023
175	Owned but not yet paid off	52502023
48	Occupied rent-free	52502023
1243	Owned and fully paid off	52502023
22	Other	52502023
695	Rented	52502024
171	Owned but not yet paid off	52502024
831	Occupied rent-free	52502024
1196	Owned and fully paid off	52502024
68	Other	52502024
1095	Rented	52502025
1054	Owned but not yet paid off	52502025
384	Occupied rent-free	52502025
1078	Owned and fully paid off	52502025
99	Other	52502025
382	Rented	52502026
136	Owned but not yet paid off	52502026
33	Occupied rent-free	52502026
1046	Owned and fully paid off	52502026
20	Other	52502026
727	Rented	52502027
137	Owned but not yet paid off	52502027
101	Occupied rent-free	52502027
1436	Owned and fully paid off	52502027
80	Other	52502027
757	Rented	52502028
188	Owned but not yet paid off	52502028
61	Occupied rent-free	52502028
611	Owned and fully paid off	52502028
44	Other	52502028
661	Rented	52502029
81	Owned but not yet paid off	52502029
127	Occupied rent-free	52502029
1534	Owned and fully paid off	52502029
131	Other	52502029
470	Rented	52502030
152	Owned but not yet paid off	52502030
1270	Occupied rent-free	52502030
640	Owned and fully paid off	52502030
188	Other	52502030
362	Rented	52502031
156	Owned but not yet paid off	52502031
406	Occupied rent-free	52502031
1656	Owned and fully paid off	52502031
47	Other	52502031
97	Rented	52503001
208	Owned but not yet paid off	52503001
923	Occupied rent-free	52503001
309	Owned and fully paid off	52503001
170	Other	52503001
758	Rented	52503002
145	Owned but not yet paid off	52503002
111	Occupied rent-free	52503002
411	Owned and fully paid off	52503002
23	Other	52503002
345	Rented	52503003
154	Owned but not yet paid off	52503003
464	Occupied rent-free	52503003
688	Owned and fully paid off	52503003
31	Other	52503003
50	Rented	52503004
288	Owned but not yet paid off	52503004
632	Occupied rent-free	52503004
410	Owned and fully paid off	52503004
36	Other	52503004
181	Rented	52504001
173	Owned but not yet paid off	52504001
465	Occupied rent-free	52504001
1035	Owned and fully paid off	52504001
218	Other	52504001
774	Rented	52504002
179	Owned but not yet paid off	52504002
353	Occupied rent-free	52504002
752	Owned and fully paid off	52504002
32	Other	52504002
632	Rented	52504003
92	Owned but not yet paid off	52504003
300	Occupied rent-free	52504003
813	Owned and fully paid off	52504003
15	Other	52504003
311	Rented	52504004
149	Owned but not yet paid off	52504004
871	Occupied rent-free	52504004
433	Owned and fully paid off	52504004
4	Other	52504004
215	Rented	52504005
15	Owned but not yet paid off	52504005
256	Occupied rent-free	52504005
784	Owned and fully paid off	52504005
147	Other	52504005
293	Rented	52504006
34	Owned but not yet paid off	52504006
625	Occupied rent-free	52504006
796	Owned and fully paid off	52504006
12	Other	52504006
461	Rented	52504007
32	Owned but not yet paid off	52504007
110	Occupied rent-free	52504007
913	Owned and fully paid off	52504007
5	Other	52504007
74	Rented	52504008
40	Owned but not yet paid off	52504008
1053	Occupied rent-free	52504008
641	Owned and fully paid off	52504008
10	Other	52504008
7	Rented	52504009
14	Owned but not yet paid off	52504009
1245	Occupied rent-free	52504009
788	Owned and fully paid off	52504009
6	Other	52504009
256	Rented	52504010
195	Owned but not yet paid off	52504010
847	Occupied rent-free	52504010
941	Owned and fully paid off	52504010
5	Other	52504010
508	Rented	52504011
76	Owned but not yet paid off	52504011
802	Occupied rent-free	52504011
446	Owned and fully paid off	52504011
6	Other	52504011
249	Rented	52603001
156	Owned but not yet paid off	52603001
632	Occupied rent-free	52603001
849	Owned and fully paid off	52603001
57	Other	52603001
132	Rented	52603002
95	Owned but not yet paid off	52603002
117	Occupied rent-free	52603002
560	Owned and fully paid off	52603002
257	Other	52603002
72	Rented	52603003
117	Owned but not yet paid off	52603003
266	Occupied rent-free	52603003
793	Owned and fully paid off	52603003
436	Other	52603003
66	Rented	52603004
36	Owned but not yet paid off	52603004
83	Occupied rent-free	52603004
611	Owned and fully paid off	52603004
10	Other	52603004
72	Rented	52603005
260	Owned but not yet paid off	52603005
335	Occupied rent-free	52603005
1134	Owned and fully paid off	52603005
115	Other	52603005
269	Rented	52603006
321	Owned but not yet paid off	52603006
343	Occupied rent-free	52603006
727	Owned and fully paid off	52603006
372	Other	52603006
328	Rented	52603007
171	Owned but not yet paid off	52603007
504	Occupied rent-free	52603007
1288	Owned and fully paid off	52603007
21	Other	52603007
751	Rented	52603008
280	Owned but not yet paid off	52603008
58	Occupied rent-free	52603008
337	Owned and fully paid off	52603008
30	Other	52603008
639	Rented	52603009
615	Owned but not yet paid off	52603009
77	Occupied rent-free	52603009
497	Owned and fully paid off	52603009
57	Other	52603009
244	Rented	52603010
117	Owned but not yet paid off	52603010
12	Occupied rent-free	52603010
387	Owned and fully paid off	52603010
4	Other	52603010
1543	Rented	52603011
366	Owned but not yet paid off	52603011
140	Occupied rent-free	52603011
1092	Owned and fully paid off	52603011
38	Other	52603011
420	Rented	52603012
370	Owned but not yet paid off	52603012
586	Occupied rent-free	52603012
995	Owned and fully paid off	52603012
24	Other	52603012
1077	Rented	52603013
119	Owned but not yet paid off	52603013
302	Occupied rent-free	52603013
1760	Owned and fully paid off	52603013
24	Other	52603013
38	Rented	52603014
171	Owned but not yet paid off	52603014
39	Occupied rent-free	52603014
1397	Owned and fully paid off	52603014
2	Other	52603014
25	Rented	52603015
54	Owned but not yet paid off	52603015
24	Occupied rent-free	52603015
1373	Owned and fully paid off	52603015
154	Other	52603015
172	Rented	52603016
108	Owned but not yet paid off	52603016
174	Occupied rent-free	52603016
1341	Owned and fully paid off	52603016
39	Other	52603016
47	Rented	52603017
32	Owned but not yet paid off	52603017
186	Occupied rent-free	52603017
1932	Owned and fully paid off	52603017
14	Other	52603017
242	Rented	52603018
169	Owned but not yet paid off	52603018
73	Occupied rent-free	52603018
1042	Owned and fully paid off	52603018
17	Other	52603018
22	Rented	52603019
37	Owned but not yet paid off	52603019
7	Occupied rent-free	52603019
1489	Owned and fully paid off	52603019
2	Other	52603019
119	Rented	52603020
252	Owned but not yet paid off	52603020
50	Occupied rent-free	52603020
1667	Owned and fully paid off	52603020
13	Other	52603020
106	Rented	52603021
347	Owned but not yet paid off	52603021
224	Occupied rent-free	52603021
1737	Owned and fully paid off	52603021
13	Other	52603021
562	Rented	52603022
192	Owned but not yet paid off	52603022
1314	Occupied rent-free	52603022
1423	Owned and fully paid off	52603022
43	Other	52603022
349	Rented	52601001
81	Owned but not yet paid off	52601001
1346	Occupied rent-free	52601001
412	Owned and fully paid off	52601001
56	Other	52601001
57	Rented	52601002
364	Owned but not yet paid off	52601002
308	Occupied rent-free	52601002
1953	Owned and fully paid off	52601002
134	Other	52601002
996	Rented	52601003
344	Owned but not yet paid off	52601003
261	Occupied rent-free	52601003
1196	Owned and fully paid off	52601003
27	Other	52601003
140	Rented	52601004
200	Owned but not yet paid off	52601004
139	Occupied rent-free	52601004
1660	Owned and fully paid off	52601004
24	Other	52601004
18	Rented	52601005
193	Owned but not yet paid off	52601005
190	Occupied rent-free	52601005
993	Owned and fully paid off	52601005
10	Other	52601005
20	Rented	52601006
41	Owned but not yet paid off	52601006
550	Occupied rent-free	52601006
928	Owned and fully paid off	52601006
5	Other	52601006
167	Rented	52601007
138	Owned but not yet paid off	52601007
493	Occupied rent-free	52601007
760	Owned and fully paid off	52601007
58	Other	52601007
55	Rented	52601008
165	Owned but not yet paid off	52601008
468	Occupied rent-free	52601008
669	Owned and fully paid off	52601008
169	Other	52601008
241	Rented	52602001
286	Owned but not yet paid off	52602001
230	Occupied rent-free	52602001
1220	Owned and fully paid off	52602001
17	Other	52602001
788	Rented	52602002
26	Owned but not yet paid off	52602002
196	Occupied rent-free	52602002
1150	Owned and fully paid off	52602002
91	Other	52602002
40	Rented	52602003
17	Owned but not yet paid off	52602003
92	Occupied rent-free	52602003
1372	Owned and fully paid off	52602003
14	Other	52602003
50	Rented	52602004
178	Owned but not yet paid off	52602004
605	Occupied rent-free	52602004
1095	Owned and fully paid off	52602004
17	Other	52602004
151	Rented	52602005
23	Owned but not yet paid off	52602005
853	Occupied rent-free	52602005
687	Owned and fully paid off	52602005
12	Other	52602005
42	Rented	52602006
12	Owned but not yet paid off	52602006
166	Occupied rent-free	52602006
1170	Owned and fully paid off	52602006
4	Other	52602006
58	Rented	52602007
143	Owned but not yet paid off	52602007
55	Occupied rent-free	52602007
1053	Owned and fully paid off	52602007
13	Other	52602007
15	Rented	52602008
66	Owned but not yet paid off	52602008
276	Occupied rent-free	52602008
743	Owned and fully paid off	52602008
149	Other	52602008
383	Rented	52602009
50	Owned but not yet paid off	52602009
375	Occupied rent-free	52602009
1493	Owned and fully paid off	52602009
17	Other	52602009
718	Rented	52602010
32	Owned but not yet paid off	52602010
542	Occupied rent-free	52602010
1385	Owned and fully paid off	52602010
45	Other	52602010
1443	Rented	52602011
445	Owned but not yet paid off	52602011
1395	Occupied rent-free	52602011
1036	Owned and fully paid off	52602011
66	Other	52602011
109	Rented	52602012
16	Owned but not yet paid off	52602012
368	Occupied rent-free	52602012
993	Owned and fully paid off	52602012
152	Other	52602012
16	Rented	52602013
11	Owned but not yet paid off	52602013
388	Occupied rent-free	52602013
448	Owned and fully paid off	52602013
2	Other	52602013
1250	Rented	52602014
530	Owned but not yet paid off	52602014
926	Occupied rent-free	52602014
647	Owned and fully paid off	52602014
75	Other	52602014
20	Rented	52605001
130	Owned but not yet paid off	52605001
66	Occupied rent-free	52605001
1487	Owned and fully paid off	52605001
6	Other	52605001
19	Rented	52605002
95	Owned but not yet paid off	52605002
476	Occupied rent-free	52605002
1027	Owned and fully paid off	52605002
17	Other	52605002
29	Rented	52605003
423	Owned but not yet paid off	52605003
115	Occupied rent-free	52605003
1196	Owned and fully paid off	52605003
11	Other	52605003
69	Rented	52605004
420	Owned but not yet paid off	52605004
1073	Occupied rent-free	52605004
580	Owned and fully paid off	52605004
33	Other	52605004
48	Rented	52605005
86	Owned but not yet paid off	52605005
237	Occupied rent-free	52605005
1078	Owned and fully paid off	52605005
160	Other	52605005
63	Rented	52605006
75	Owned but not yet paid off	52605006
249	Occupied rent-free	52605006
947	Owned and fully paid off	52605006
6	Other	52605006
47	Rented	52605007
561	Owned but not yet paid off	52605007
207	Occupied rent-free	52605007
848	Owned and fully paid off	52605007
26	Other	52605007
36	Rented	52605008
27	Owned but not yet paid off	52605008
248	Occupied rent-free	52605008
1257	Owned and fully paid off	52605008
4	Other	52605008
810	Rented	52605009
254	Owned but not yet paid off	52605009
420	Occupied rent-free	52605009
1287	Owned and fully paid off	52605009
161	Other	52605009
46	Rented	52605010
110	Owned but not yet paid off	52605010
909	Occupied rent-free	52605010
402	Owned and fully paid off	52605010
35	Other	52605010
20	Rented	52605011
334	Owned but not yet paid off	52605011
554	Occupied rent-free	52605011
709	Owned and fully paid off	52605011
3	Other	52605011
39	Rented	52605012
404	Owned but not yet paid off	52605012
880	Occupied rent-free	52605012
305	Owned and fully paid off	52605012
20	Other	52605012
14	Rented	52605013
193	Owned but not yet paid off	52605013
290	Occupied rent-free	52605013
553	Owned and fully paid off	52605013
6	Other	52605013
5	Rented	52605014
220	Owned but not yet paid off	52605014
229	Occupied rent-free	52605014
1385	Owned and fully paid off	52605014
5	Other	52605014
7	Rented	52605015
293	Owned but not yet paid off	52605015
724	Occupied rent-free	52605015
219	Owned and fully paid off	52605015
35	Other	52605015
999	Rented	52605016
130	Owned but not yet paid off	52605016
1323	Occupied rent-free	52605016
675	Owned and fully paid off	52605016
143	Other	52605016
32	Rented	52605017
281	Owned but not yet paid off	52605017
433	Occupied rent-free	52605017
662	Owned and fully paid off	52605017
12	Other	52605017
76	Rented	52605018
427	Owned but not yet paid off	52605018
264	Occupied rent-free	52605018
955	Owned and fully paid off	52605018
3	Other	52605018
146	Rented	52605019
2	Owned but not yet paid off	52605019
8	Occupied rent-free	52605019
20	Owned and fully paid off	52605019
2	Other	52605019
226	Rented	52605020
105	Owned but not yet paid off	52605020
87	Occupied rent-free	52605020
621	Owned and fully paid off	52605020
120	Other	52605020
13	Rented	52605021
85	Owned but not yet paid off	52605021
396	Occupied rent-free	52605021
709	Owned and fully paid off	52605021
4	Other	52605021
16	Rented	52606001
102	Owned but not yet paid off	52606001
544	Occupied rent-free	52606001
136	Owned and fully paid off	52606001
8	Other	52606001
41	Rented	52606002
125	Owned but not yet paid off	52606002
950	Occupied rent-free	52606002
426	Owned and fully paid off	52606002
16	Other	52606002
96	Rented	52606003
34	Owned but not yet paid off	52606003
311	Occupied rent-free	52606003
535	Owned and fully paid off	52606003
133	Other	52606003
136	Rented	52606004
182	Owned but not yet paid off	52606004
291	Occupied rent-free	52606004
479	Owned and fully paid off	52606004
207	Other	52606004
13	Rented	52606005
225	Owned but not yet paid off	52606005
22	Occupied rent-free	52606005
1265	Owned and fully paid off	52606005
9	Other	52606005
10	Rented	52606006
299	Owned but not yet paid off	52606006
675	Occupied rent-free	52606006
160	Owned and fully paid off	52606006
3	Other	52606006
2	Rented	52606007
57	Owned but not yet paid off	52606007
535	Occupied rent-free	52606007
576	Owned and fully paid off	52606007
5	Other	52606007
169	Rented	52606008
99	Owned but not yet paid off	52606008
607	Occupied rent-free	52606008
862	Owned and fully paid off	52606008
21	Other	52606008
220	Rented	52606009
22	Owned but not yet paid off	52606009
727	Occupied rent-free	52606009
604	Owned and fully paid off	52606009
56	Other	52606009
60	Rented	52606010
92	Owned but not yet paid off	52606010
600	Occupied rent-free	52606010
297	Owned and fully paid off	52606010
57	Other	52606010
337	Rented	52606011
27	Owned but not yet paid off	52606011
823	Occupied rent-free	52606011
667	Owned and fully paid off	52606011
18	Other	52606011
778	Rented	52606012
316	Owned but not yet paid off	52606012
102	Occupied rent-free	52606012
454	Owned and fully paid off	52606012
62	Other	52606012
88	Rented	52606013
103	Owned but not yet paid off	52606013
319	Occupied rent-free	52606013
1118	Owned and fully paid off	52606013
10	Other	52606013
7	Rented	52606014
83	Owned but not yet paid off	52606014
1216	Occupied rent-free	52606014
183	Owned and fully paid off	52606014
9	Other	52606014
8	Rented	52606015
182	Owned but not yet paid off	52606015
620	Occupied rent-free	52606015
536	Owned and fully paid off	52606015
7	Other	52606015
345	Rented	52606016
148	Owned but not yet paid off	52606016
152	Occupied rent-free	52606016
1231	Owned and fully paid off	52606016
2	Other	52606016
27	Rented	52606017
28	Owned but not yet paid off	52606017
290	Occupied rent-free	52606017
1071	Owned and fully paid off	52606017
93	Other	52606017
529	Rented	52606018
71	Owned but not yet paid off	52606018
349	Occupied rent-free	52606018
1306	Owned and fully paid off	52606018
40	Other	52606018
411	Rented	52606019
84	Owned but not yet paid off	52606019
202	Occupied rent-free	52606019
317	Owned and fully paid off	52606019
5	Other	52606019
23	Rented	52606020
54	Owned but not yet paid off	52606020
472	Occupied rent-free	52606020
840	Owned and fully paid off	52606020
6	Other	52606020
90	Rented	52606021
10	Owned but not yet paid off	52606021
294	Occupied rent-free	52606021
829	Owned and fully paid off	52606021
25	Other	52606021
725	Rented	52606022
606	Owned but not yet paid off	52606022
330	Occupied rent-free	52606022
519	Owned and fully paid off	52606022
107	Other	52606022
31	Rented	52606023
12	Owned but not yet paid off	52606023
17	Occupied rent-free	52606023
1164	Owned and fully paid off	52606023
10	Other	52606023
21	Rented	52606024
28	Owned but not yet paid off	52606024
533	Occupied rent-free	52606024
293	Owned and fully paid off	52606024
270	Other	52606024
149	Rented	52904001
75	Owned but not yet paid off	52904001
31	Occupied rent-free	52904001
1586	Owned and fully paid off	52904001
9	Other	52904001
16	Rented	52904002
411	Owned but not yet paid off	52904002
1	Occupied rent-free	52904002
1463	Owned and fully paid off	52904002
4	Other	52904002
80	Rented	52904003
140	Owned but not yet paid off	52904003
110	Occupied rent-free	52904003
1234	Owned and fully paid off	52904003
105	Other	52904003
46	Rented	52904004
384	Owned but not yet paid off	52904004
186	Occupied rent-free	52904004
1543	Owned and fully paid off	52904004
13	Other	52904004
28	Rented	52904005
139	Owned but not yet paid off	52904005
454	Occupied rent-free	52904005
1361	Owned and fully paid off	52904005
53	Other	52904005
198	Rented	52904006
198	Owned but not yet paid off	52904006
488	Occupied rent-free	52904006
787	Owned and fully paid off	52904006
7	Other	52904006
33	Rented	52904007
416	Owned but not yet paid off	52904007
86	Occupied rent-free	52904007
1042	Owned and fully paid off	52904007
4	Other	52904007
58	Rented	52904008
427	Owned but not yet paid off	52904008
20	Occupied rent-free	52904008
1471	Owned and fully paid off	52904008
4	Other	52904008
25	Rented	52904009
335	Owned but not yet paid off	52904009
651	Occupied rent-free	52904009
603	Owned and fully paid off	52904009
13	Other	52904009
204	Rented	52904010
78	Owned but not yet paid off	52904010
542	Occupied rent-free	52904010
1270	Owned and fully paid off	52904010
28	Other	52904010
15	Rented	52904011
34	Owned but not yet paid off	52904011
87	Occupied rent-free	52904011
1167	Owned and fully paid off	52904011
60	Other	52904011
16	Rented	52901001
41	Owned but not yet paid off	52901001
27	Occupied rent-free	52901001
1265	Owned and fully paid off	52901001
3	Other	52901001
56	Rented	52901002
61	Owned but not yet paid off	52901002
16	Occupied rent-free	52901002
1466	Owned and fully paid off	52901002
13	Other	52901002
643	Rented	52901003
352	Owned but not yet paid off	52901003
347	Occupied rent-free	52901003
968	Owned and fully paid off	52901003
24	Other	52901003
452	Rented	52901004
349	Owned but not yet paid off	52901004
1176	Occupied rent-free	52901004
1166	Owned and fully paid off	52901004
158	Other	52901004
33	Rented	52901005
17	Owned but not yet paid off	52901005
33	Occupied rent-free	52901005
1283	Owned and fully paid off	52901005
4	Other	52901005
16	Rented	52901006
31	Owned but not yet paid off	52901006
826	Occupied rent-free	52901006
513	Owned and fully paid off	52901006
4	Other	52901006
1733	Rented	52901007
96	Owned but not yet paid off	52901007
319	Occupied rent-free	52901007
920	Owned and fully paid off	52901007
218	Other	52901007
321	Rented	52901008
74	Owned but not yet paid off	52901008
324	Occupied rent-free	52901008
1327	Owned and fully paid off	52901008
8	Other	52901008
25	Rented	52901009
81	Owned but not yet paid off	52901009
271	Occupied rent-free	52901009
1256	Owned and fully paid off	52901009
180	Other	52901009
1160	Rented	52901010
45	Owned but not yet paid off	52901010
301	Occupied rent-free	52901010
1200	Owned and fully paid off	52901010
17	Other	52901010
574	Rented	52901011
41	Owned but not yet paid off	52901011
16	Occupied rent-free	52901011
1373	Owned and fully paid off	52901011
4	Other	52901011
1366	Rented	52901012
25	Owned but not yet paid off	52901012
372	Occupied rent-free	52901012
1753	Owned and fully paid off	52901012
91	Other	52901012
698	Rented	52901013
86	Owned but not yet paid off	52901013
19	Occupied rent-free	52901013
331	Owned and fully paid off	52901013
29	Other	52901013
1362	Rented	52901014
290	Owned but not yet paid off	52901014
70	Occupied rent-free	52901014
1137	Owned and fully paid off	52901014
35	Other	52901014
973	Rented	52901015
59	Owned but not yet paid off	52901015
35	Occupied rent-free	52901015
468	Owned and fully paid off	52901015
8	Other	52901015
1533	Rented	52901016
260	Owned but not yet paid off	52901016
243	Occupied rent-free	52901016
1054	Owned and fully paid off	52901016
3	Other	52901016
1777	Rented	52901017
163	Owned but not yet paid off	52901017
64	Occupied rent-free	52901017
674	Owned and fully paid off	52901017
14	Other	52901017
162	Rented	52902001
56	Owned but not yet paid off	52902001
179	Occupied rent-free	52902001
1383	Owned and fully paid off	52902001
24	Other	52902001
367	Rented	52902002
116	Owned but not yet paid off	52902002
974	Occupied rent-free	52902002
1247	Owned and fully paid off	52902002
245	Other	52902002
660	Rented	52902003
75	Owned but not yet paid off	52902003
730	Occupied rent-free	52902003
604	Owned and fully paid off	52902003
126	Other	52902003
2189	Rented	52902004
119	Owned but not yet paid off	52902004
642	Occupied rent-free	52902004
493	Owned and fully paid off	52902004
292	Other	52902004
610	Rented	52902005
108	Owned but not yet paid off	52902005
585	Occupied rent-free	52902005
857	Owned and fully paid off	52902005
23	Other	52902005
1005	Rented	52902006
775	Owned but not yet paid off	52902006
231	Occupied rent-free	52902006
875	Owned and fully paid off	52902006
130	Other	52902006
851	Rented	52902007
133	Owned but not yet paid off	52902007
1688	Occupied rent-free	52902007
613	Owned and fully paid off	52902007
236	Other	52902007
885	Rented	52902008
249	Owned but not yet paid off	52902008
956	Occupied rent-free	52902008
328	Owned and fully paid off	52902008
13	Other	52902008
263	Rented	52902009
276	Owned but not yet paid off	52902009
438	Occupied rent-free	52902009
806	Owned and fully paid off	52902009
25	Other	52902009
970	Rented	52902010
112	Owned but not yet paid off	52902010
632	Occupied rent-free	52902010
845	Owned and fully paid off	52902010
157	Other	52902010
905	Rented	52902011
328	Owned but not yet paid off	52902011
399	Occupied rent-free	52902011
1085	Owned and fully paid off	52902011
52	Other	52902011
1201	Rented	52902012
108	Owned but not yet paid off	52902012
487	Occupied rent-free	52902012
1220	Owned and fully paid off	52902012
123	Other	52902012
752	Rented	52902013
330	Owned but not yet paid off	52902013
276	Occupied rent-free	52902013
1063	Owned and fully paid off	52902013
28	Other	52902013
568	Rented	52902014
11	Owned but not yet paid off	52902014
657	Occupied rent-free	52902014
979	Owned and fully paid off	52902014
34	Other	52902014
1583	Rented	52902015
550	Owned but not yet paid off	52902015
635	Occupied rent-free	52902015
1040	Owned and fully paid off	52902015
17	Other	52902015
728	Rented	52902016
515	Owned but not yet paid off	52902016
291	Occupied rent-free	52902016
1201	Owned and fully paid off	52902016
12	Other	52902016
516	Rented	52902017
655	Owned but not yet paid off	52902017
216	Occupied rent-free	52902017
534	Owned and fully paid off	52902017
32	Other	52902017
968	Rented	52902018
43	Owned but not yet paid off	52902018
305	Occupied rent-free	52902018
756	Owned and fully paid off	52902018
220	Other	52902018
1522	Rented	52902019
419	Owned but not yet paid off	52902019
202	Occupied rent-free	52902019
301	Owned and fully paid off	52902019
43	Other	52902019
485	Rented	52902020
5	Owned but not yet paid off	52902020
408	Occupied rent-free	52902020
294	Owned and fully paid off	52902020
20	Other	52902020
406	Rented	52902021
36	Owned but not yet paid off	52902021
939	Occupied rent-free	52902021
626	Owned and fully paid off	52902021
343	Other	52902021
1275	Rented	52902022
838	Owned but not yet paid off	52902022
670	Occupied rent-free	52902022
1135	Owned and fully paid off	52902022
172	Other	52902022
1045	Rented	52902023
39	Owned but not yet paid off	52902023
1381	Occupied rent-free	52902023
729	Owned and fully paid off	52902023
53	Other	52902023
1219	Rented	52902024
42	Owned but not yet paid off	52902024
1223	Occupied rent-free	52902024
676	Owned and fully paid off	52902024
75	Other	52902024
95	Rented	52902025
205	Owned but not yet paid off	52902025
267	Occupied rent-free	52902025
1203	Owned and fully paid off	52902025
29	Other	52902025
1253	Rented	52902026
90	Owned but not yet paid off	52902026
267	Occupied rent-free	52902026
791	Owned and fully paid off	52902026
4	Other	52902026
238	Rented	52902027
11	Owned but not yet paid off	52902027
186	Occupied rent-free	52902027
1240	Owned and fully paid off	52902027
11	Other	52902027
432	Rented	52903001
106	Owned but not yet paid off	52903001
636	Occupied rent-free	52903001
773	Owned and fully paid off	52903001
51	Other	52903001
14	Rented	52903002
3	Owned but not yet paid off	52903002
13	Occupied rent-free	52903002
1063	Owned and fully paid off	52903002
2	Other	52903002
315	Rented	52903003
148	Owned but not yet paid off	52903003
1413	Occupied rent-free	52903003
863	Owned and fully paid off	52903003
254	Other	52903003
11	Rented	52903004
93	Owned but not yet paid off	52903004
117	Occupied rent-free	52903004
1077	Owned and fully paid off	52903004
5	Other	52903004
21	Rented	52903005
322	Owned but not yet paid off	52903005
60	Occupied rent-free	52903005
901	Owned and fully paid off	52903005
6	Other	52903005
89	Rented	52903006
561	Owned but not yet paid off	52903006
9	Occupied rent-free	52903006
1249	Owned and fully paid off	52903006
4	Other	52903006
3	Rented	52903007
14	Owned but not yet paid off	52903007
185	Occupied rent-free	52903007
690	Owned and fully paid off	52903007
90	Other	52903007
36	Rented	52903008
9	Owned but not yet paid off	52903008
217	Occupied rent-free	52903008
1207	Owned and fully paid off	52903008
4	Other	52903008
19	Rented	52903009
384	Owned but not yet paid off	52903009
25	Occupied rent-free	52903009
602	Owned and fully paid off	52903009
8	Other	52903009
14	Rented	52903010
148	Owned but not yet paid off	52903010
71	Occupied rent-free	52903010
1240	Owned and fully paid off	52903010
7	Other	52903010
8	Rented	52903011
365	Owned but not yet paid off	52903011
275	Occupied rent-free	52903011
838	Owned and fully paid off	52903011
8	Other	52903011
26	Rented	52903012
121	Owned but not yet paid off	52903012
63	Occupied rent-free	52903012
1907	Owned and fully paid off	52903012
54	Other	52903012
16	Rented	52903013
22	Owned but not yet paid off	52903013
105	Occupied rent-free	52903013
1465	Owned and fully paid off	52903013
1	Other	52903013
3	Rented	52903014
140	Owned but not yet paid off	52903014
129	Occupied rent-free	52903014
846	Owned and fully paid off	52903014
1	Other	52903014
172	Rented	52903015
15	Owned but not yet paid off	52903015
118	Occupied rent-free	52903015
1158	Owned and fully paid off	52903015
5	Other	52903015
9	Rented	52903016
88	Owned but not yet paid off	52903016
34	Occupied rent-free	52903016
1247	Owned and fully paid off	52903016
0	Other	52903016
9	Rented	52903017
184	Owned but not yet paid off	52903017
241	Occupied rent-free	52903017
910	Owned and fully paid off	52903017
4	Other	52903017
13	Rented	52903018
216	Owned but not yet paid off	52903018
156	Occupied rent-free	52903018
995	Owned and fully paid off	52903018
4	Other	52903018
14	Rented	52903019
160	Owned but not yet paid off	52903019
107	Occupied rent-free	52903019
1363	Owned and fully paid off	52903019
2	Other	52903019
363	Rented	59500001
500	Owned but not yet paid off	59500001
557	Occupied rent-free	59500001
4117	Owned and fully paid off	59500001
64	Other	59500001
222	Rented	59500002
244	Owned but not yet paid off	59500002
1093	Occupied rent-free	59500002
3704	Owned and fully paid off	59500002
207	Other	59500002
430	Rented	59500003
222	Owned but not yet paid off	59500003
680	Occupied rent-free	59500003
5940	Owned and fully paid off	59500003
790	Other	59500003
616	Rented	59500004
1048	Owned but not yet paid off	59500004
4607	Occupied rent-free	59500004
2710	Owned and fully paid off	59500004
234	Other	59500004
977	Rented	59500005
409	Owned but not yet paid off	59500005
1102	Occupied rent-free	59500005
3291	Owned and fully paid off	59500005
112	Other	59500005
888	Rented	59500006
476	Owned but not yet paid off	59500006
891	Occupied rent-free	59500006
3888	Owned and fully paid off	59500006
102	Other	59500006
694	Rented	59500007
859	Owned but not yet paid off	59500007
901	Occupied rent-free	59500007
3262	Owned and fully paid off	59500007
118	Other	59500007
2934	Rented	59500008
1809	Owned but not yet paid off	59500008
1758	Occupied rent-free	59500008
3030	Owned and fully paid off	59500008
636	Other	59500008
1625	Rented	59500009
1943	Owned but not yet paid off	59500009
1220	Occupied rent-free	59500009
3718	Owned and fully paid off	59500009
675	Other	59500009
1756	Rented	59500010
2934	Owned but not yet paid off	59500010
507	Occupied rent-free	59500010
2810	Owned and fully paid off	59500010
297	Other	59500010
2885	Rented	59500011
2628	Owned but not yet paid off	59500011
1483	Occupied rent-free	59500011
4901	Owned and fully paid off	59500011
534	Other	59500011
1035	Rented	59500012
810	Owned but not yet paid off	59500012
505	Occupied rent-free	59500012
3072	Owned and fully paid off	59500012
188	Other	59500012
2838	Rented	59500013
1134	Owned but not yet paid off	59500013
778	Occupied rent-free	59500013
4034	Owned and fully paid off	59500013
161	Other	59500013
3714	Rented	59500014
198	Owned but not yet paid off	59500014
781	Occupied rent-free	59500014
2838	Owned and fully paid off	59500014
227	Other	59500014
5521	Rented	59500015
512	Owned but not yet paid off	59500015
1269	Occupied rent-free	59500015
4186	Owned and fully paid off	59500015
405	Other	59500015
4568	Rented	59500016
2298	Owned but not yet paid off	59500016
821	Occupied rent-free	59500016
3316	Owned and fully paid off	59500016
409	Other	59500016
3233	Rented	59500017
997	Owned but not yet paid off	59500017
1295	Occupied rent-free	59500017
4348	Owned and fully paid off	59500017
228	Other	59500017
3309	Rented	59500018
3656	Owned but not yet paid off	59500018
361	Occupied rent-free	59500018
2472	Owned and fully paid off	59500018
186	Other	59500018
4819	Rented	59500019
2018	Owned but not yet paid off	59500019
1796	Occupied rent-free	59500019
4213	Owned and fully paid off	59500019
367	Other	59500019
3133	Rented	59500020
318	Owned but not yet paid off	59500020
654	Occupied rent-free	59500020
2253	Owned and fully paid off	59500020
256	Other	59500020
4726	Rented	59500021
2245	Owned but not yet paid off	59500021
932	Occupied rent-free	59500021
1471	Owned and fully paid off	59500021
252	Other	59500021
7676	Rented	59500022
583	Owned but not yet paid off	59500022
1223	Occupied rent-free	59500022
701	Owned and fully paid off	59500022
209	Other	59500022
2833	Rented	59500023
1934	Owned but not yet paid off	59500023
1277	Occupied rent-free	59500023
3824	Owned and fully paid off	59500023
518	Other	59500023
3415	Rented	59500024
2046	Owned but not yet paid off	59500024
1088	Occupied rent-free	59500024
3140	Owned and fully paid off	59500024
240	Other	59500024
4994	Rented	59500025
1531	Owned but not yet paid off	59500025
2306	Occupied rent-free	59500025
3002	Owned and fully paid off	59500025
1793	Other	59500025
9858	Rented	59500026
886	Owned but not yet paid off	59500026
328	Occupied rent-free	59500026
1540	Owned and fully paid off	59500026
127	Other	59500026
4700	Rented	59500027
2038	Owned but not yet paid off	59500027
487	Occupied rent-free	59500027
2353	Owned and fully paid off	59500027
155	Other	59500027
7463	Rented	59500028
446	Owned but not yet paid off	59500028
140	Occupied rent-free	59500028
612	Owned and fully paid off	59500028
78	Other	59500028
2762	Rented	59500029
741	Owned but not yet paid off	59500029
3507	Occupied rent-free	59500029
3126	Owned and fully paid off	59500029
657	Other	59500029
4489	Rented	59500030
1824	Owned but not yet paid off	59500030
1925	Occupied rent-free	59500030
3456	Owned and fully paid off	59500030
243	Other	59500030
5296	Rented	59500031
2269	Owned but not yet paid off	59500031
560	Occupied rent-free	59500031
2962	Owned and fully paid off	59500031
346	Other	59500031
6092	Rented	59500032
219	Owned but not yet paid off	59500032
330	Occupied rent-free	59500032
454	Owned and fully paid off	59500032
176	Other	59500032
6243	Rented	59500033
2889	Owned but not yet paid off	59500033
437	Occupied rent-free	59500033
2506	Owned and fully paid off	59500033
242	Other	59500033
3105	Rented	59500034
2244	Owned but not yet paid off	59500034
3598	Occupied rent-free	59500034
3307	Owned and fully paid off	59500034
416	Other	59500034
2960	Rented	59500035
4253	Owned but not yet paid off	59500035
629	Occupied rent-free	59500035
3341	Owned and fully paid off	59500035
288	Other	59500035
2998	Rented	59500036
3871	Owned but not yet paid off	59500036
856	Occupied rent-free	59500036
3080	Owned and fully paid off	59500036
417	Other	59500036
1033	Rented	59500037
3566	Owned but not yet paid off	59500037
860	Occupied rent-free	59500037
3824	Owned and fully paid off	59500037
322	Other	59500037
1590	Rented	59500038
623	Owned but not yet paid off	59500038
1476	Occupied rent-free	59500038
5607	Owned and fully paid off	59500038
449	Other	59500038
7203	Rented	59500039
1172	Owned but not yet paid off	59500039
2919	Occupied rent-free	59500039
2602	Owned and fully paid off	59500039
197	Other	59500039
2746	Rented	59500040
857	Owned but not yet paid off	59500040
1229	Occupied rent-free	59500040
3579	Owned and fully paid off	59500040
362	Other	59500040
1504	Rented	59500041
615	Owned but not yet paid off	59500041
2018	Occupied rent-free	59500041
3914	Owned and fully paid off	59500041
60	Other	59500041
1970	Rented	59500042
286	Owned but not yet paid off	59500042
1433	Occupied rent-free	59500042
5398	Owned and fully paid off	59500042
82	Other	59500042
717	Rented	59500043
1062	Owned but not yet paid off	59500043
1805	Occupied rent-free	59500043
4069	Owned and fully paid off	59500043
108	Other	59500043
1404	Rented	59500044
494	Owned but not yet paid off	59500044
1462	Occupied rent-free	59500044
5933	Owned and fully paid off	59500044
531	Other	59500044
1310	Rented	59500045
873	Owned but not yet paid off	59500045
1153	Occupied rent-free	59500045
5022	Owned and fully paid off	59500045
314	Other	59500045
1515	Rented	59500046
403	Owned but not yet paid off	59500046
877	Occupied rent-free	59500046
3855	Owned and fully paid off	59500046
86	Other	59500046
1052	Rented	59500047
463	Owned but not yet paid off	59500047
738	Occupied rent-free	59500047
4463	Owned and fully paid off	59500047
130	Other	59500047
1327	Rented	59500048
1763	Owned but not yet paid off	59500048
99	Occupied rent-free	59500048
3996	Owned and fully paid off	59500048
80	Other	59500048
2413	Rented	59500049
2087	Owned but not yet paid off	59500049
140	Occupied rent-free	59500049
4533	Owned and fully paid off	59500049
77	Other	59500049
1354	Rented	59500050
2557	Owned but not yet paid off	59500050
148	Occupied rent-free	59500050
3497	Owned and fully paid off	59500050
95	Other	59500050
1864	Rented	59500051
2757	Owned but not yet paid off	59500051
781	Occupied rent-free	59500051
4682	Owned and fully paid off	59500051
323	Other	59500051
1214	Rented	59500052
2266	Owned but not yet paid off	59500052
153	Occupied rent-free	59500052
4927	Owned and fully paid off	59500052
98	Other	59500052
3563	Rented	59500053
1614	Owned but not yet paid off	59500053
1840	Occupied rent-free	59500053
3494	Owned and fully paid off	59500053
179	Other	59500053
2068	Rented	59500054
654	Owned but not yet paid off	59500054
924	Occupied rent-free	59500054
4361	Owned and fully paid off	59500054
59	Other	59500054
2018	Rented	59500055
623	Owned but not yet paid off	59500055
1185	Occupied rent-free	59500055
6456	Owned and fully paid off	59500055
243	Other	59500055
1428	Rented	59500056
672	Owned but not yet paid off	59500056
1145	Occupied rent-free	59500056
6757	Owned and fully paid off	59500056
125	Other	59500056
2696	Rented	59500057
484	Owned but not yet paid off	59500057
2673	Occupied rent-free	59500057
3956	Owned and fully paid off	59500057
427	Other	59500057
3300	Rented	59500058
1859	Owned but not yet paid off	59500058
1512	Occupied rent-free	59500058
4468	Owned and fully paid off	59500058
427	Other	59500058
3694	Rented	59500059
813	Owned but not yet paid off	59500059
2178	Occupied rent-free	59500059
4903	Owned and fully paid off	59500059
275	Other	59500059
3073	Rented	59500060
2275	Owned but not yet paid off	59500060
2153	Occupied rent-free	59500060
3454	Owned and fully paid off	59500060
230	Other	59500060
3597	Rented	59500061
1652	Owned but not yet paid off	59500061
805	Occupied rent-free	59500061
4450	Owned and fully paid off	59500061
312	Other	59500061
3371	Rented	59500062
644	Owned but not yet paid off	59500062
1823	Occupied rent-free	59500062
2875	Owned and fully paid off	59500062
253	Other	59500062
2413	Rented	59500063
4460	Owned but not yet paid off	59500063
294	Occupied rent-free	59500063
3122	Owned and fully paid off	59500063
248	Other	59500063
3069	Rented	59500064
4789	Owned but not yet paid off	59500064
676	Occupied rent-free	59500064
1889	Owned and fully paid off	59500064
241	Other	59500064
3836	Rented	59500065
4345	Owned but not yet paid off	59500065
1330	Occupied rent-free	59500065
3198	Owned and fully paid off	59500065
241	Other	59500065
3149	Rented	59500066
3356	Owned but not yet paid off	59500066
416	Occupied rent-free	59500066
2152	Owned and fully paid off	59500066
195	Other	59500066
1180	Rented	59500067
589	Owned but not yet paid off	59500067
1467	Occupied rent-free	59500067
6467	Owned and fully paid off	59500067
236	Other	59500067
3673	Rented	59500068
1761	Owned but not yet paid off	59500068
278	Occupied rent-free	59500068
3900	Owned and fully paid off	59500068
158	Other	59500068
2786	Rented	59500069
1735	Owned but not yet paid off	59500069
564	Occupied rent-free	59500069
3360	Owned and fully paid off	59500069
327	Other	59500069
2492	Rented	59500070
1872	Owned but not yet paid off	59500070
207	Occupied rent-free	59500070
3444	Owned and fully paid off	59500070
118	Other	59500070
4982	Rented	59500071
2153	Owned but not yet paid off	59500071
1261	Occupied rent-free	59500071
3523	Owned and fully paid off	59500071
318	Other	59500071
1984	Rented	59500072
950	Owned but not yet paid off	59500072
1724	Occupied rent-free	59500072
6150	Owned and fully paid off	59500072
168	Other	59500072
1892	Rented	59500073
1878	Owned but not yet paid off	59500073
168	Occupied rent-free	59500073
3817	Owned and fully paid off	59500073
91	Other	59500073
2559	Rented	59500074
344	Owned but not yet paid off	59500074
897	Occupied rent-free	59500074
2304	Owned and fully paid off	59500074
108	Other	59500074
4750	Rented	59500075
315	Owned but not yet paid off	59500075
567	Occupied rent-free	59500075
1443	Owned and fully paid off	59500075
180	Other	59500075
5206	Rented	59500076
84	Owned but not yet paid off	59500076
524	Occupied rent-free	59500076
1579	Owned and fully paid off	59500076
79	Other	59500076
1764	Rented	59500077
677	Owned but not yet paid off	59500077
3389	Occupied rent-free	59500077
6246	Owned and fully paid off	59500077
459	Other	59500077
1335	Rented	59500078
336	Owned but not yet paid off	59500078
611	Occupied rent-free	59500078
4184	Owned and fully paid off	59500078
108	Other	59500078
1709	Rented	59500079
511	Owned but not yet paid off	59500079
1766	Occupied rent-free	59500079
5549	Owned and fully paid off	59500079
281	Other	59500079
2173	Rented	59500080
407	Owned but not yet paid off	59500080
756	Occupied rent-free	59500080
4076	Owned and fully paid off	59500080
379	Other	59500080
1112	Rented	59500081
194	Owned but not yet paid off	59500081
1191	Occupied rent-free	59500081
3231	Owned and fully paid off	59500081
191	Other	59500081
1553	Rented	59500082
904	Owned but not yet paid off	59500082
1482	Occupied rent-free	59500082
3087	Owned and fully paid off	59500082
141	Other	59500082
1398	Rented	59500083
294	Owned but not yet paid off	59500083
1441	Occupied rent-free	59500083
4804	Owned and fully paid off	59500083
197	Other	59500083
1003	Rented	59500084
1071	Owned but not yet paid off	59500084
1338	Occupied rent-free	59500084
5590	Owned and fully paid off	59500084
345	Other	59500084
1188	Rented	59500085
903	Owned but not yet paid off	59500085
767	Occupied rent-free	59500085
3820	Owned and fully paid off	59500085
184	Other	59500085
1387	Rented	59500086
1135	Owned but not yet paid off	59500086
1800	Occupied rent-free	59500086
3727	Owned and fully paid off	59500086
269	Other	59500086
1755	Rented	59500087
610	Owned but not yet paid off	59500087
1646	Occupied rent-free	59500087
2421	Owned and fully paid off	59500087
259	Other	59500087
4536	Rented	59500088
402	Owned but not yet paid off	59500088
686	Occupied rent-free	59500088
4655	Owned and fully paid off	59500088
113	Other	59500088
3912	Rented	59500089
767	Owned but not yet paid off	59500089
2800	Occupied rent-free	59500089
3077	Owned and fully paid off	59500089
496	Other	59500089
2685	Rented	59500090
1505	Owned but not yet paid off	59500090
1258	Occupied rent-free	59500090
1734	Owned and fully paid off	59500090
145	Other	59500090
804	Rented	59500091
497	Owned but not yet paid off	59500091
772	Occupied rent-free	59500091
5502	Owned and fully paid off	59500091
173	Other	59500091
6621	Rented	59500092
998	Owned but not yet paid off	59500092
411	Occupied rent-free	59500092
1849	Owned and fully paid off	59500092
194	Other	59500092
3655	Rented	59500093
1245	Owned but not yet paid off	59500093
1355	Occupied rent-free	59500093
4093	Owned and fully paid off	59500093
240	Other	59500093
983	Rented	59500094
813	Owned but not yet paid off	59500094
651	Occupied rent-free	59500094
3769	Owned and fully paid off	59500094
140	Other	59500094
881	Rented	59500095
1027	Owned but not yet paid off	59500095
1242	Occupied rent-free	59500095
4744	Owned and fully paid off	59500095
45	Other	59500095
664	Rented	59500096
297	Owned but not yet paid off	59500096
1232	Occupied rent-free	59500096
4658	Owned and fully paid off	59500096
167	Other	59500096
2817	Rented	59500097
2637	Owned but not yet paid off	59500097
277	Occupied rent-free	59500097
2295	Owned and fully paid off	59500097
181	Other	59500097
1089	Rented	59500098
958	Owned but not yet paid off	59500098
2068	Occupied rent-free	59500098
6657	Owned and fully paid off	59500098
601	Other	59500098
2276	Rented	59500099
914	Owned but not yet paid off	59500099
1223	Occupied rent-free	59500099
5124	Owned and fully paid off	59500099
613	Other	59500099
246	Rented	59500100
560	Owned but not yet paid off	59500100
886	Occupied rent-free	59500100
2559	Owned and fully paid off	59500100
398	Other	59500100
5074	Rented	59500101
1304	Owned but not yet paid off	59500101
1204	Occupied rent-free	59500101
2078	Owned and fully paid off	59500101
277	Other	59500101
2066	Rented	59500102
3010	Owned but not yet paid off	59500102
2136	Occupied rent-free	59500102
4696	Owned and fully paid off	59500102
755	Other	59500102
1288	Rented	59500103
1045	Owned but not yet paid off	59500103
1268	Occupied rent-free	59500103
3399	Owned and fully paid off	59500103
236	Other	59500103
8	Rented	93301001
60	Owned but not yet paid off	93301001
1614	Occupied rent-free	93301001
134	Owned and fully paid off	93301001
2	Other	93301001
9	Rented	93301002
51	Owned but not yet paid off	93301002
705	Occupied rent-free	93301002
585	Owned and fully paid off	93301002
2	Other	93301002
22	Rented	93301003
109	Owned but not yet paid off	93301003
1044	Occupied rent-free	93301003
1294	Owned and fully paid off	93301003
5	Other	93301003
20	Rented	93301004
11	Owned but not yet paid off	93301004
917	Occupied rent-free	93301004
1093	Owned and fully paid off	93301004
10	Other	93301004
6	Rented	93301005
39	Owned but not yet paid off	93301005
563	Occupied rent-free	93301005
1628	Owned and fully paid off	93301005
12	Other	93301005
23	Rented	93301006
9	Owned but not yet paid off	93301006
347	Occupied rent-free	93301006
1727	Owned and fully paid off	93301006
1	Other	93301006
49	Rented	93301007
91	Owned but not yet paid off	93301007
470	Occupied rent-free	93301007
2148	Owned and fully paid off	93301007
5	Other	93301007
40	Rented	93301008
172	Owned but not yet paid off	93301008
343	Occupied rent-free	93301008
1528	Owned and fully paid off	93301008
5	Other	93301008
7	Rented	93301009
144	Owned but not yet paid off	93301009
175	Occupied rent-free	93301009
1035	Owned and fully paid off	93301009
119	Other	93301009
7	Rented	93301010
127	Owned but not yet paid off	93301010
95	Occupied rent-free	93301010
1584	Owned and fully paid off	93301010
14	Other	93301010
531	Rented	93301011
567	Owned but not yet paid off	93301011
142	Occupied rent-free	93301011
1088	Owned and fully paid off	93301011
89	Other	93301011
285	Rented	93301012
149	Owned but not yet paid off	93301012
395	Occupied rent-free	93301012
2246	Owned and fully paid off	93301012
12	Other	93301012
900	Rented	93301013
299	Owned but not yet paid off	93301013
671	Occupied rent-free	93301013
1829	Owned and fully paid off	93301013
89	Other	93301013
164	Rented	93301014
20	Owned but not yet paid off	93301014
161	Occupied rent-free	93301014
2095	Owned and fully paid off	93301014
22	Other	93301014
10	Rented	93301015
331	Owned but not yet paid off	93301015
348	Occupied rent-free	93301015
801	Owned and fully paid off	93301015
117	Other	93301015
18	Rented	93301016
179	Owned but not yet paid off	93301016
134	Occupied rent-free	93301016
1193	Owned and fully paid off	93301016
0	Other	93301016
28	Rented	93301017
5	Owned but not yet paid off	93301017
214	Occupied rent-free	93301017
1378	Owned and fully paid off	93301017
18	Other	93301017
23	Rented	93301018
90	Owned but not yet paid off	93301018
563	Occupied rent-free	93301018
1323	Owned and fully paid off	93301018
9	Other	93301018
67	Rented	93301019
52	Owned but not yet paid off	93301019
422	Occupied rent-free	93301019
1885	Owned and fully paid off	93301019
133	Other	93301019
7	Rented	93301020
8	Owned but not yet paid off	93301020
478	Occupied rent-free	93301020
1311	Owned and fully paid off	93301020
3	Other	93301020
198	Rented	93301021
540	Owned but not yet paid off	93301021
259	Occupied rent-free	93301021
1186	Owned and fully paid off	93301021
47	Other	93301021
12	Rented	93301022
280	Owned but not yet paid off	93301022
218	Occupied rent-free	93301022
1352	Owned and fully paid off	93301022
11	Other	93301022
23	Rented	93301023
629	Owned but not yet paid off	93301023
224	Occupied rent-free	93301023
928	Owned and fully paid off	93301023
12	Other	93301023
41	Rented	93301024
218	Owned but not yet paid off	93301024
1058	Occupied rent-free	93301024
796	Owned and fully paid off	93301024
42	Other	93301024
22	Rented	93301025
93	Owned but not yet paid off	93301025
1395	Occupied rent-free	93301025
1429	Owned and fully paid off	93301025
3	Other	93301025
40	Rented	93301026
25	Owned but not yet paid off	93301026
393	Occupied rent-free	93301026
1522	Owned and fully paid off	93301026
1	Other	93301026
80	Rented	93301027
145	Owned but not yet paid off	93301027
805	Occupied rent-free	93301027
766	Owned and fully paid off	93301027
10	Other	93301027
35	Rented	93301028
10	Owned but not yet paid off	93301028
764	Occupied rent-free	93301028
1388	Owned and fully paid off	93301028
6	Other	93301028
20	Rented	93301029
62	Owned but not yet paid off	93301029
673	Occupied rent-free	93301029
1199	Owned and fully paid off	93301029
28	Other	93301029
10	Rented	93301030
19	Owned but not yet paid off	93301030
327	Occupied rent-free	93301030
1089	Owned and fully paid off	93301030
4	Other	93301030
27	Rented	93302001
36	Owned but not yet paid off	93302001
728	Occupied rent-free	93302001
1158	Owned and fully paid off	93302001
10	Other	93302001
18	Rented	93302002
335	Owned but not yet paid off	93302002
202	Occupied rent-free	93302002
450	Owned and fully paid off	93302002
235	Other	93302002
143	Rented	93302003
161	Owned but not yet paid off	93302003
328	Occupied rent-free	93302003
721	Owned and fully paid off	93302003
145	Other	93302003
291	Rented	93302004
341	Owned but not yet paid off	93302004
453	Occupied rent-free	93302004
1227	Owned and fully paid off	93302004
145	Other	93302004
30	Rented	93302005
9	Owned but not yet paid off	93302005
892	Occupied rent-free	93302005
805	Owned and fully paid off	93302005
160	Other	93302005
52	Rented	93302006
2	Owned but not yet paid off	93302006
395	Occupied rent-free	93302006
1433	Owned and fully paid off	93302006
94	Other	93302006
60	Rented	93302007
13	Owned but not yet paid off	93302007
638	Occupied rent-free	93302007
976	Owned and fully paid off	93302007
1	Other	93302007
222	Rented	93302008
152	Owned but not yet paid off	93302008
499	Occupied rent-free	93302008
904	Owned and fully paid off	93302008
68	Other	93302008
29	Rented	93302009
15	Owned but not yet paid off	93302009
1171	Occupied rent-free	93302009
1086	Owned and fully paid off	93302009
27	Other	93302009
37	Rented	93302010
20	Owned but not yet paid off	93302010
1210	Occupied rent-free	93302010
1113	Owned and fully paid off	93302010
9	Other	93302010
20	Rented	93302011
226	Owned but not yet paid off	93302011
535	Occupied rent-free	93302011
1262	Owned and fully paid off	93302011
3	Other	93302011
29	Rented	93302012
30	Owned but not yet paid off	93302012
1314	Occupied rent-free	93302012
273	Owned and fully paid off	93302012
14	Other	93302012
34	Rented	93302013
11	Owned but not yet paid off	93302013
940	Occupied rent-free	93302013
948	Owned and fully paid off	93302013
2	Other	93302013
735	Rented	93302014
65	Owned but not yet paid off	93302014
1067	Occupied rent-free	93302014
217	Owned and fully paid off	93302014
140	Other	93302014
41	Rented	93302015
23	Owned but not yet paid off	93302015
174	Occupied rent-free	93302015
1711	Owned and fully paid off	93302015
0	Other	93302015
17	Rented	93302016
32	Owned but not yet paid off	93302016
1826	Occupied rent-free	93302016
83	Owned and fully paid off	93302016
14	Other	93302016
35	Rented	93302017
1	Owned but not yet paid off	93302017
661	Occupied rent-free	93302017
1200	Owned and fully paid off	93302017
5	Other	93302017
38	Rented	93302018
137	Owned but not yet paid off	93302018
1024	Occupied rent-free	93302018
849	Owned and fully paid off	93302018
2	Other	93302018
79	Rented	93302019
6	Owned but not yet paid off	93302019
952	Occupied rent-free	93302019
941	Owned and fully paid off	93302019
3	Other	93302019
71	Rented	93302020
25	Owned but not yet paid off	93302020
666	Occupied rent-free	93302020
1317	Owned and fully paid off	93302020
8	Other	93302020
44	Rented	93302021
10	Owned but not yet paid off	93302021
1207	Occupied rent-free	93302021
602	Owned and fully paid off	93302021
332	Other	93302021
69	Rented	93302022
41	Owned but not yet paid off	93302022
554	Occupied rent-free	93302022
1514	Owned and fully paid off	93302022
150	Other	93302022
26	Rented	93302023
119	Owned but not yet paid off	93302023
1120	Occupied rent-free	93302023
681	Owned and fully paid off	93302023
13	Other	93302023
45	Rented	93302024
4	Owned but not yet paid off	93302024
639	Occupied rent-free	93302024
561	Owned and fully paid off	93302024
6	Other	93302024
23	Rented	93302025
16	Owned but not yet paid off	93302025
758	Occupied rent-free	93302025
1093	Owned and fully paid off	93302025
6	Other	93302025
38	Rented	93302026
52	Owned but not yet paid off	93302026
1115	Occupied rent-free	93302026
575	Owned and fully paid off	93302026
104	Other	93302026
64	Rented	93302027
5	Owned but not yet paid off	93302027
1093	Occupied rent-free	93302027
415	Owned and fully paid off	93302027
7	Other	93302027
2	Rented	93302028
2	Owned but not yet paid off	93302028
1194	Occupied rent-free	93302028
77	Owned and fully paid off	93302028
1	Other	93302028
3019	Rented	93302029
294	Owned but not yet paid off	93302029
884	Occupied rent-free	93302029
501	Owned and fully paid off	93302029
109	Other	93302029
112	Rented	93303001
54	Owned but not yet paid off	93303001
1811	Occupied rent-free	93303001
1161	Owned and fully paid off	93303001
133	Other	93303001
52	Rented	93303002
160	Owned but not yet paid off	93303002
436	Occupied rent-free	93303002
2128	Owned and fully paid off	93303002
54	Other	93303002
44	Rented	93303003
20	Owned but not yet paid off	93303003
737	Occupied rent-free	93303003
2308	Owned and fully paid off	93303003
11	Other	93303003
42	Rented	93303004
327	Owned but not yet paid off	93303004
668	Occupied rent-free	93303004
1771	Owned and fully paid off	93303004
303	Other	93303004
155	Rented	93303005
159	Owned but not yet paid off	93303005
354	Occupied rent-free	93303005
2730	Owned and fully paid off	93303005
31	Other	93303005
20	Rented	93303006
8	Owned but not yet paid off	93303006
1735	Occupied rent-free	93303006
882	Owned and fully paid off	93303006
98	Other	93303006
34	Rented	93303007
48	Owned but not yet paid off	93303007
1559	Occupied rent-free	93303007
928	Owned and fully paid off	93303007
224	Other	93303007
15	Rented	93303008
7	Owned but not yet paid off	93303008
1199	Occupied rent-free	93303008
956	Owned and fully paid off	93303008
10	Other	93303008
69	Rented	93303009
21	Owned but not yet paid off	93303009
1949	Occupied rent-free	93303009
2001	Owned and fully paid off	93303009
134	Other	93303009
16	Rented	93303010
12	Owned but not yet paid off	93303010
687	Occupied rent-free	93303010
755	Owned and fully paid off	93303010
7	Other	93303010
20	Rented	93303011
4	Owned but not yet paid off	93303011
1195	Occupied rent-free	93303011
849	Owned and fully paid off	93303011
29	Other	93303011
25	Rented	93303012
155	Owned but not yet paid off	93303012
797	Occupied rent-free	93303012
1529	Owned and fully paid off	93303012
215	Other	93303012
1294	Rented	93303013
259	Owned but not yet paid off	93303013
1268	Occupied rent-free	93303013
1707	Owned and fully paid off	93303013
24	Other	93303013
3581	Rented	93303014
593	Owned but not yet paid off	93303014
987	Occupied rent-free	93303014
697	Owned and fully paid off	93303014
66	Other	93303014
1053	Rented	93303015
286	Owned but not yet paid off	93303015
152	Occupied rent-free	93303015
454	Owned and fully paid off	93303015
34	Other	93303015
2178	Rented	93303016
582	Owned but not yet paid off	93303016
1689	Occupied rent-free	93303016
1720	Owned and fully paid off	93303016
217	Other	93303016
665	Rented	93303017
59	Owned but not yet paid off	93303017
916	Occupied rent-free	93303017
1972	Owned and fully paid off	93303017
68	Other	93303017
101	Rented	93303018
9	Owned but not yet paid off	93303018
1596	Occupied rent-free	93303018
745	Owned and fully paid off	93303018
934	Other	93303018
388	Rented	93303019
373	Owned but not yet paid off	93303019
111	Occupied rent-free	93303019
1340	Owned and fully paid off	93303019
17	Other	93303019
391	Rented	93303020
10	Owned but not yet paid off	93303020
838	Occupied rent-free	93303020
1984	Owned and fully paid off	93303020
26	Other	93303020
635	Rented	93303021
546	Owned but not yet paid off	93303021
819	Occupied rent-free	93303021
2020	Owned and fully paid off	93303021
56	Other	93303021
172	Rented	93303022
209	Owned but not yet paid off	93303022
770	Occupied rent-free	93303022
1330	Owned and fully paid off	93303022
6	Other	93303022
733	Rented	93303023
174	Owned but not yet paid off	93303023
606	Occupied rent-free	93303023
1152	Owned and fully paid off	93303023
51	Other	93303023
19	Rented	93303024
29	Owned but not yet paid off	93303024
1138	Occupied rent-free	93303024
1608	Owned and fully paid off	93303024
56	Other	93303024
121	Rented	93303025
109	Owned but not yet paid off	93303025
195	Occupied rent-free	93303025
2944	Owned and fully paid off	93303025
13	Other	93303025
80	Rented	93303026
126	Owned but not yet paid off	93303026
469	Occupied rent-free	93303026
1931	Owned and fully paid off	93303026
6	Other	93303026
182	Rented	93303027
14	Owned but not yet paid off	93303027
1024	Occupied rent-free	93303027
1824	Owned and fully paid off	93303027
4	Other	93303027
38	Rented	93303028
55	Owned but not yet paid off	93303028
1250	Occupied rent-free	93303028
1594	Owned and fully paid off	93303028
8	Other	93303028
237	Rented	93303029
13	Owned but not yet paid off	93303029
822	Occupied rent-free	93303029
3072	Owned and fully paid off	93303029
124	Other	93303029
115	Rented	93303030
7	Owned but not yet paid off	93303030
152	Occupied rent-free	93303030
1414	Owned and fully paid off	93303030
8	Other	93303030
552	Rented	93303031
188	Owned but not yet paid off	93303031
280	Occupied rent-free	93303031
2133	Owned and fully paid off	93303031
16	Other	93303031
45	Rented	93303032
231	Owned but not yet paid off	93303032
251	Occupied rent-free	93303032
2596	Owned and fully paid off	93303032
2	Other	93303032
49	Rented	93303033
386	Owned but not yet paid off	93303033
390	Occupied rent-free	93303033
3253	Owned and fully paid off	93303033
19	Other	93303033
26	Rented	93303034
215	Owned but not yet paid off	93303034
482	Occupied rent-free	93303034
1521	Owned and fully paid off	93303034
886	Other	93303034
675	Rented	93304001
103	Owned but not yet paid off	93304001
329	Occupied rent-free	93304001
2904	Owned and fully paid off	93304001
8	Other	93304001
239	Rented	93304002
157	Owned but not yet paid off	93304002
469	Occupied rent-free	93304002
975	Owned and fully paid off	93304002
7	Other	93304002
173	Rented	93304003
224	Owned but not yet paid off	93304003
299	Occupied rent-free	93304003
1006	Owned and fully paid off	93304003
20	Other	93304003
448	Rented	93304004
114	Owned but not yet paid off	93304004
196	Occupied rent-free	93304004
1258	Owned and fully paid off	93304004
25	Other	93304004
416	Rented	93304005
134	Owned but not yet paid off	93304005
186	Occupied rent-free	93304005
1093	Owned and fully paid off	93304005
14	Other	93304005
543	Rented	93304006
45	Owned but not yet paid off	93304006
198	Occupied rent-free	93304006
1300	Owned and fully paid off	93304006
1	Other	93304006
391	Rented	93304007
285	Owned but not yet paid off	93304007
54	Occupied rent-free	93304007
891	Owned and fully paid off	93304007
14	Other	93304007
60	Rented	93304008
26	Owned but not yet paid off	93304008
200	Occupied rent-free	93304008
1763	Owned and fully paid off	93304008
5	Other	93304008
29	Rented	93304009
6	Owned but not yet paid off	93304009
250	Occupied rent-free	93304009
1526	Owned and fully paid off	93304009
4	Other	93304009
338	Rented	93304010
56	Owned but not yet paid off	93304010
514	Occupied rent-free	93304010
1215	Owned and fully paid off	93304010
6	Other	93304010
722	Rented	93304011
510	Owned but not yet paid off	93304011
73	Occupied rent-free	93304011
299	Owned and fully paid off	93304011
25	Other	93304011
698	Rented	93304012
754	Owned but not yet paid off	93304012
315	Occupied rent-free	93304012
513	Owned and fully paid off	93304012
120	Other	93304012
172	Rented	93304013
7	Owned but not yet paid off	93304013
1227	Occupied rent-free	93304013
752	Owned and fully paid off	93304013
5	Other	93304013
154	Rented	93304014
71	Owned but not yet paid off	93304014
6	Occupied rent-free	93304014
589	Owned and fully paid off	93304014
3	Other	93304014
297	Rented	93304015
180	Owned but not yet paid off	93304015
68	Occupied rent-free	93304015
1805	Owned and fully paid off	93304015
47	Other	93304015
28	Rented	93304016
15	Owned but not yet paid off	93304016
1396	Occupied rent-free	93304016
1007	Owned and fully paid off	93304016
2	Other	93304016
135	Rented	93304017
82	Owned but not yet paid off	93304017
1375	Occupied rent-free	93304017
2376	Owned and fully paid off	93304017
18	Other	93304017
1230	Rented	93304018
96	Owned but not yet paid off	93304018
1538	Occupied rent-free	93304018
1172	Owned and fully paid off	93304018
41	Other	93304018
1296	Rented	93305001
124	Owned but not yet paid off	93305001
469	Occupied rent-free	93305001
125	Owned and fully paid off	93305001
51	Other	93305001
610	Rented	93305002
89	Owned but not yet paid off	93305002
1244	Occupied rent-free	93305002
426	Owned and fully paid off	93305002
26	Other	93305002
99	Rented	93305003
133	Owned but not yet paid off	93305003
394	Occupied rent-free	93305003
920	Owned and fully paid off	93305003
129	Other	93305003
121	Rented	93305004
3	Owned but not yet paid off	93305004
1247	Occupied rent-free	93305004
67	Owned and fully paid off	93305004
10	Other	93305004
42	Rented	93305005
4	Owned but not yet paid off	93305005
1516	Occupied rent-free	93305005
13	Owned and fully paid off	93305005
3	Other	93305005
88	Rented	93305006
196	Owned but not yet paid off	93305006
855	Occupied rent-free	93305006
769	Owned and fully paid off	93305006
51	Other	93305006
63	Rented	93305007
6	Owned but not yet paid off	93305007
503	Occupied rent-free	93305007
955	Owned and fully paid off	93305007
7	Other	93305007
23	Rented	93305008
68	Owned but not yet paid off	93305008
1262	Occupied rent-free	93305008
486	Owned and fully paid off	93305008
2	Other	93305008
73	Rented	93305009
4	Owned but not yet paid off	93305009
1462	Occupied rent-free	93305009
109	Owned and fully paid off	93305009
4	Other	93305009
90	Rented	93305010
9	Owned but not yet paid off	93305010
1404	Occupied rent-free	93305010
141	Owned and fully paid off	93305010
5	Other	93305010
82	Rented	93305011
1	Owned but not yet paid off	93305011
2086	Occupied rent-free	93305011
44	Owned and fully paid off	93305011
11	Other	93305011
106	Rented	93305012
29	Owned but not yet paid off	93305012
1465	Occupied rent-free	93305012
409	Owned and fully paid off	93305012
5	Other	93305012
65	Rented	93305013
9	Owned but not yet paid off	93305013
1106	Occupied rent-free	93305013
234	Owned and fully paid off	93305013
6	Other	93305013
32	Rented	93305014
5	Owned but not yet paid off	93305014
281	Occupied rent-free	93305014
667	Owned and fully paid off	93305014
31	Other	93305014
68	Rented	93402001
32	Owned but not yet paid off	93402001
1142	Occupied rent-free	93402001
461	Owned and fully paid off	93402001
9	Other	93402001
15	Rented	93402002
13	Owned but not yet paid off	93402002
1161	Occupied rent-free	93402002
589	Owned and fully paid off	93402002
26	Other	93402002
13	Rented	93402003
144	Owned but not yet paid off	93402003
697	Occupied rent-free	93402003
968	Owned and fully paid off	93402003
0	Other	93402003
39	Rented	93402004
21	Owned but not yet paid off	93402004
177	Occupied rent-free	93402004
1337	Owned and fully paid off	93402004
4	Other	93402004
186	Rented	93402005
41	Owned but not yet paid off	93402005
588	Occupied rent-free	93402005
1501	Owned and fully paid off	93402005
13	Other	93402005
14	Rented	93402006
15	Owned but not yet paid off	93402006
134	Occupied rent-free	93402006
1490	Owned and fully paid off	93402006
4	Other	93402006
42	Rented	93402007
228	Owned but not yet paid off	93402007
354	Occupied rent-free	93402007
893	Owned and fully paid off	93402007
18	Other	93402007
9	Rented	93402008
94	Owned but not yet paid off	93402008
10	Occupied rent-free	93402008
1293	Owned and fully paid off	93402008
8	Other	93402008
38	Rented	93402009
327	Owned but not yet paid off	93402009
572	Occupied rent-free	93402009
1122	Owned and fully paid off	93402009
0	Other	93402009
63	Rented	93402010
176	Owned but not yet paid off	93402010
160	Occupied rent-free	93402010
1308	Owned and fully paid off	93402010
54	Other	93402010
21	Rented	93402011
164	Owned but not yet paid off	93402011
262	Occupied rent-free	93402011
1614	Owned and fully paid off	93402011
26	Other	93402011
99	Rented	93402012
189	Owned but not yet paid off	93402012
1057	Occupied rent-free	93402012
840	Owned and fully paid off	93402012
8	Other	93402012
317	Rented	93402013
21	Owned but not yet paid off	93402013
1107	Occupied rent-free	93402013
352	Owned and fully paid off	93402013
8	Other	93402013
35	Rented	93403001
233	Owned but not yet paid off	93403001
2318	Occupied rent-free	93403001
1854	Owned and fully paid off	93403001
12	Other	93403001
23	Rented	93403002
13	Owned but not yet paid off	93403002
2601	Occupied rent-free	93403002
531	Owned and fully paid off	93403002
6	Other	93403002
32	Rented	93403003
187	Owned but not yet paid off	93403003
3182	Occupied rent-free	93403003
371	Owned and fully paid off	93403003
7	Other	93403003
38	Rented	93403004
203	Owned but not yet paid off	93403004
2243	Occupied rent-free	93403004
1419	Owned and fully paid off	93403004
8	Other	93403004
113	Rented	93403005
23	Owned but not yet paid off	93403005
559	Occupied rent-free	93403005
3297	Owned and fully paid off	93403005
18	Other	93403005
26	Rented	93403006
183	Owned but not yet paid off	93403006
882	Occupied rent-free	93403006
2807	Owned and fully paid off	93403006
8	Other	93403006
35	Rented	93403007
563	Owned but not yet paid off	93403007
3757	Occupied rent-free	93403007
480	Owned and fully paid off	93403007
12	Other	93403007
20	Rented	93403008
220	Owned but not yet paid off	93403008
2687	Occupied rent-free	93403008
610	Owned and fully paid off	93403008
10	Other	93403008
47	Rented	93403009
176	Owned but not yet paid off	93403009
1151	Occupied rent-free	93403009
2289	Owned and fully paid off	93403009
4	Other	93403009
21	Rented	93403010
51	Owned but not yet paid off	93403010
902	Occupied rent-free	93403010
2342	Owned and fully paid off	93403010
23	Other	93403010
32	Rented	93403011
82	Owned but not yet paid off	93403011
479	Occupied rent-free	93403011
3705	Owned and fully paid off	93403011
7	Other	93403011
49	Rented	93403012
626	Owned but not yet paid off	93403012
1872	Occupied rent-free	93403012
1331	Owned and fully paid off	93403012
11	Other	93403012
395	Rented	93403013
364	Owned but not yet paid off	93403013
253	Occupied rent-free	93403013
3149	Owned and fully paid off	93403013
29	Other	93403013
27	Rented	93403014
16	Owned but not yet paid off	93403014
302	Occupied rent-free	93403014
3653	Owned and fully paid off	93403014
10	Other	93403014
93	Rented	93403015
29	Owned but not yet paid off	93403015
809	Occupied rent-free	93403015
3439	Owned and fully paid off	93403015
14	Other	93403015
15	Rented	93403016
220	Owned but not yet paid off	93403016
1053	Occupied rent-free	93403016
1835	Owned and fully paid off	93403016
11	Other	93403016
36	Rented	93403017
24	Owned but not yet paid off	93403017
785	Occupied rent-free	93403017
2292	Owned and fully paid off	93403017
8	Other	93403017
71	Rented	93403018
174	Owned but not yet paid off	93403018
601	Occupied rent-free	93403018
3371	Owned and fully paid off	93403018
9	Other	93403018
83	Rented	93403019
43	Owned but not yet paid off	93403019
1480	Occupied rent-free	93403019
2439	Owned and fully paid off	93403019
23	Other	93403019
288	Rented	93403020
249	Owned but not yet paid off	93403020
669	Occupied rent-free	93403020
2911	Owned and fully paid off	93403020
14	Other	93403020
1170	Rented	93403021
518	Owned but not yet paid off	93403021
258	Occupied rent-free	93403021
2725	Owned and fully paid off	93403021
11	Other	93403021
1151	Rented	93403022
127	Owned but not yet paid off	93403022
435	Occupied rent-free	93403022
2814	Owned and fully paid off	93403022
14	Other	93403022
1112	Rented	93403023
63	Owned but not yet paid off	93403023
261	Occupied rent-free	93403023
2756	Owned and fully paid off	93403023
19	Other	93403023
289	Rented	93403024
469	Owned but not yet paid off	93403024
1066	Occupied rent-free	93403024
2902	Owned and fully paid off	93403024
23	Other	93403024
87	Rented	93403025
31	Owned but not yet paid off	93403025
187	Occupied rent-free	93403025
3486	Owned and fully paid off	93403025
45	Other	93403025
40	Rented	93403026
23	Owned but not yet paid off	93403026
724	Occupied rent-free	93403026
2983	Owned and fully paid off	93403026
11	Other	93403026
70	Rented	93403027
17	Owned but not yet paid off	93403027
802	Occupied rent-free	93403027
3426	Owned and fully paid off	93403027
19	Other	93403027
27	Rented	93403028
130	Owned but not yet paid off	93403028
1426	Occupied rent-free	93403028
1742	Owned and fully paid off	93403028
8	Other	93403028
93	Rented	93403029
171	Owned but not yet paid off	93403029
300	Occupied rent-free	93403029
3566	Owned and fully paid off	93403029
178	Other	93403029
60	Rented	93403030
157	Owned but not yet paid off	93403030
190	Occupied rent-free	93403030
2930	Owned and fully paid off	93403030
10	Other	93403030
52	Rented	93403031
167	Owned but not yet paid off	93403031
296	Occupied rent-free	93403031
2841	Owned and fully paid off	93403031
2	Other	93403031
69	Rented	93403032
285	Owned but not yet paid off	93403032
100	Occupied rent-free	93403032
3209	Owned and fully paid off	93403032
10	Other	93403032
111	Rented	93403033
25	Owned but not yet paid off	93403033
617	Occupied rent-free	93403033
3448	Owned and fully paid off	93403033
13	Other	93403033
89	Rented	93403034
247	Owned but not yet paid off	93403034
47	Occupied rent-free	93403034
3413	Owned and fully paid off	93403034
2	Other	93403034
351	Rented	93403035
45	Owned but not yet paid off	93403035
168	Occupied rent-free	93403035
3982	Owned and fully paid off	93403035
12	Other	93403035
1242	Rented	93403036
172	Owned but not yet paid off	93403036
801	Occupied rent-free	93403036
2190	Owned and fully paid off	93403036
12	Other	93403036
327	Rented	93403037
37	Owned but not yet paid off	93403037
159	Occupied rent-free	93403037
2858	Owned and fully paid off	93403037
20	Other	93403037
229	Rented	93403038
49	Owned but not yet paid off	93403038
258	Occupied rent-free	93403038
2836	Owned and fully paid off	93403038
7	Other	93403038
62	Rented	93403039
44	Owned but not yet paid off	93403039
469	Occupied rent-free	93403039
2769	Owned and fully paid off	93403039
22	Other	93403039
142	Rented	93403040
172	Owned but not yet paid off	93403040
1328	Occupied rent-free	93403040
1520	Owned and fully paid off	93403040
30	Other	93403040
348	Rented	93401001
206	Owned but not yet paid off	93401001
1832	Occupied rent-free	93401001
1715	Owned and fully paid off	93401001
22	Other	93401001
2788	Rented	93401002
59	Owned but not yet paid off	93401002
2005	Occupied rent-free	93401002
533	Owned and fully paid off	93401002
96	Other	93401002
1871	Rented	93401003
56	Owned but not yet paid off	93401003
132	Occupied rent-free	93401003
1445	Owned and fully paid off	93401003
8	Other	93401003
1107	Rented	93401004
25	Owned but not yet paid off	93401004
184	Occupied rent-free	93401004
346	Owned and fully paid off	93401004
6	Other	93401004
1444	Rented	93401005
67	Owned but not yet paid off	93401005
285	Occupied rent-free	93401005
754	Owned and fully paid off	93401005
29	Other	93401005
1113	Rented	93401006
266	Owned but not yet paid off	93401006
436	Occupied rent-free	93401006
799	Owned and fully paid off	93401006
65	Other	93401006
28	Rented	93404001
225	Owned but not yet paid off	93404001
218	Occupied rent-free	93404001
2646	Owned and fully paid off	93404001
10	Other	93404001
37	Rented	93404002
238	Owned but not yet paid off	93404002
1218	Occupied rent-free	93404002
1497	Owned and fully paid off	93404002
6	Other	93404002
175	Rented	93404003
211	Owned but not yet paid off	93404003
1048	Occupied rent-free	93404003
2166	Owned and fully paid off	93404003
73	Other	93404003
73	Rented	93404004
42	Owned but not yet paid off	93404004
370	Occupied rent-free	93404004
3963	Owned and fully paid off	93404004
56	Other	93404004
68	Rented	93404005
90	Owned but not yet paid off	93404005
2345	Occupied rent-free	93404005
729	Owned and fully paid off	93404005
1	Other	93404005
43	Rented	93404006
94	Owned but not yet paid off	93404006
2446	Occupied rent-free	93404006
562	Owned and fully paid off	93404006
18	Other	93404006
60	Rented	93404007
48	Owned but not yet paid off	93404007
1688	Occupied rent-free	93404007
1194	Owned and fully paid off	93404007
14	Other	93404007
66	Rented	93404008
33	Owned but not yet paid off	93404008
1456	Occupied rent-free	93404008
2089	Owned and fully paid off	93404008
122	Other	93404008
35	Rented	93404009
26	Owned but not yet paid off	93404009
395	Occupied rent-free	93404009
2759	Owned and fully paid off	93404009
15	Other	93404009
42	Rented	93404010
237	Owned but not yet paid off	93404010
471	Occupied rent-free	93404010
1554	Owned and fully paid off	93404010
115	Other	93404010
240	Rented	93404011
35	Owned but not yet paid off	93404011
1522	Occupied rent-free	93404011
1056	Owned and fully paid off	93404011
23	Other	93404011
28	Rented	93404012
60	Owned but not yet paid off	93404012
1231	Occupied rent-free	93404012
1108	Owned and fully paid off	93404012
121	Other	93404012
35	Rented	93404013
28	Owned but not yet paid off	93404013
332	Occupied rent-free	93404013
2874	Owned and fully paid off	93404013
155	Other	93404013
35	Rented	93404014
155	Owned but not yet paid off	93404014
262	Occupied rent-free	93404014
2903	Owned and fully paid off	93404014
12	Other	93404014
223	Rented	93404015
303	Owned but not yet paid off	93404015
795	Occupied rent-free	93404015
3105	Owned and fully paid off	93404015
21	Other	93404015
301	Rented	93404016
282	Owned but not yet paid off	93404016
507	Occupied rent-free	93404016
2588	Owned and fully paid off	93404016
32	Other	93404016
226	Rented	93404017
56	Owned but not yet paid off	93404017
512	Occupied rent-free	93404017
2529	Owned and fully paid off	93404017
13	Other	93404017
65	Rented	93404018
30	Owned but not yet paid off	93404018
2131	Occupied rent-free	93404018
612	Owned and fully paid off	93404018
27	Other	93404018
57	Rented	93404019
136	Owned but not yet paid off	93404019
1228	Occupied rent-free	93404019
1923	Owned and fully paid off	93404019
5	Other	93404019
1304	Rented	93404020
962	Owned but not yet paid off	93404020
920	Occupied rent-free	93404020
1995	Owned and fully paid off	93404020
79	Other	93404020
3795	Rented	93404021
403	Owned but not yet paid off	93404021
1711	Occupied rent-free	93404021
1251	Owned and fully paid off	93404021
151	Other	93404021
105	Rented	93404022
7	Owned but not yet paid off	93404022
734	Occupied rent-free	93404022
2813	Owned and fully paid off	93404022
24	Other	93404022
363	Rented	93404023
69	Owned but not yet paid off	93404023
506	Occupied rent-free	93404023
1806	Owned and fully paid off	93404023
20	Other	93404023
139	Rented	93404024
6	Owned but not yet paid off	93404024
1204	Occupied rent-free	93404024
3197	Owned and fully paid off	93404024
17	Other	93404024
67	Rented	93404025
120	Owned but not yet paid off	93404025
572	Occupied rent-free	93404025
3002	Owned and fully paid off	93404025
172	Other	93404025
365	Rented	93404026
143	Owned but not yet paid off	93404026
794	Occupied rent-free	93404026
2876	Owned and fully paid off	93404026
28	Other	93404026
40	Rented	93404027
29	Owned but not yet paid off	93404027
820	Occupied rent-free	93404027
1674	Owned and fully paid off	93404027
40	Other	93404027
660	Rented	93404028
391	Owned but not yet paid off	93404028
1230	Occupied rent-free	93404028
2039	Owned and fully paid off	93404028
134	Other	93404028
95	Rented	93404029
123	Owned but not yet paid off	93404029
1130	Occupied rent-free	93404029
1490	Owned and fully paid off	93404029
13	Other	93404029
593	Rented	93404030
169	Owned but not yet paid off	93404030
1221	Occupied rent-free	93404030
880	Owned and fully paid off	93404030
160	Other	93404030
242	Rented	93404031
81	Owned but not yet paid off	93404031
1132	Occupied rent-free	93404031
1830	Owned and fully paid off	93404031
23	Other	93404031
111	Rented	93404032
92	Owned but not yet paid off	93404032
1211	Occupied rent-free	93404032
2300	Owned and fully paid off	93404032
49	Other	93404032
125	Rented	93404033
129	Owned but not yet paid off	93404033
1034	Occupied rent-free	93404033
2167	Owned and fully paid off	93404033
7	Other	93404033
116	Rented	93404034
42	Owned but not yet paid off	93404034
1547	Occupied rent-free	93404034
1661	Owned and fully paid off	93404034
162	Other	93404034
282	Rented	93404035
27	Owned but not yet paid off	93404035
669	Occupied rent-free	93404035
2354	Owned and fully paid off	93404035
139	Other	93404035
45	Rented	93404036
409	Owned but not yet paid off	93404036
55	Occupied rent-free	93404036
3376	Owned and fully paid off	93404036
55	Other	93404036
56	Rented	93404037
179	Owned but not yet paid off	93404037
1274	Occupied rent-free	93404037
1298	Owned and fully paid off	93404037
13	Other	93404037
30	Rented	93404038
37	Owned but not yet paid off	93404038
580	Occupied rent-free	93404038
2249	Owned and fully paid off	93404038
12	Other	93404038
56	Rented	93501001
8	Owned but not yet paid off	93501001
649	Occupied rent-free	93501001
905	Owned and fully paid off	93501001
5	Other	93501001
28	Rented	93501002
2	Owned but not yet paid off	93501002
322	Occupied rent-free	93501002
1438	Owned and fully paid off	93501002
13	Other	93501002
24	Rented	93501003
19	Owned but not yet paid off	93501003
831	Occupied rent-free	93501003
626	Owned and fully paid off	93501003
88	Other	93501003
16	Rented	93501004
198	Owned but not yet paid off	93501004
884	Occupied rent-free	93501004
305	Owned and fully paid off	93501004
3	Other	93501004
318	Rented	93501005
151	Owned but not yet paid off	93501005
1271	Occupied rent-free	93501005
203	Owned and fully paid off	93501005
22	Other	93501005
22	Rented	93501006
222	Owned but not yet paid off	93501006
971	Occupied rent-free	93501006
431	Owned and fully paid off	93501006
5	Other	93501006
41	Rented	93501007
42	Owned but not yet paid off	93501007
908	Occupied rent-free	93501007
798	Owned and fully paid off	93501007
124	Other	93501007
40	Rented	93501008
19	Owned but not yet paid off	93501008
272	Occupied rent-free	93501008
953	Owned and fully paid off	93501008
9	Other	93501008
65	Rented	93501009
217	Owned but not yet paid off	93501009
584	Occupied rent-free	93501009
1364	Owned and fully paid off	93501009
15	Other	93501009
53	Rented	93501010
19	Owned but not yet paid off	93501010
74	Occupied rent-free	93501010
1954	Owned and fully paid off	93501010
16	Other	93501010
29	Rented	93501011
13	Owned but not yet paid off	93501011
195	Occupied rent-free	93501011
1522	Owned and fully paid off	93501011
30	Other	93501011
259	Rented	93501012
42	Owned but not yet paid off	93501012
691	Occupied rent-free	93501012
1190	Owned and fully paid off	93501012
9	Other	93501012
41	Rented	93501013
108	Owned but not yet paid off	93501013
308	Occupied rent-free	93501013
1105	Owned and fully paid off	93501013
41	Other	93501013
33	Rented	93501014
31	Owned but not yet paid off	93501014
845	Occupied rent-free	93501014
721	Owned and fully paid off	93501014
37	Other	93501014
60	Rented	93501015
153	Owned but not yet paid off	93501015
347	Occupied rent-free	93501015
1103	Owned and fully paid off	93501015
117	Other	93501015
87	Rented	93501016
108	Owned but not yet paid off	93501016
511	Occupied rent-free	93501016
719	Owned and fully paid off	93501016
166	Other	93501016
44	Rented	93501017
19	Owned but not yet paid off	93501017
302	Occupied rent-free	93501017
1439	Owned and fully paid off	93501017
7	Other	93501017
333	Rented	93501018
27	Owned but not yet paid off	93501018
815	Occupied rent-free	93501018
1033	Owned and fully paid off	93501018
14	Other	93501018
1252	Rented	93501019
256	Owned but not yet paid off	93501019
478	Occupied rent-free	93501019
2475	Owned and fully paid off	93501019
39	Other	93501019
28	Rented	93501020
14	Owned but not yet paid off	93501020
100	Occupied rent-free	93501020
1437	Owned and fully paid off	93501020
14	Other	93501020
966	Rented	93501021
147	Owned but not yet paid off	93501021
991	Occupied rent-free	93501021
681	Owned and fully paid off	93501021
57	Other	93501021
22	Rented	93502001
202	Owned but not yet paid off	93502001
451	Occupied rent-free	93502001
977	Owned and fully paid off	93502001
6	Other	93502001
41	Rented	93502002
10	Owned but not yet paid off	93502002
1591	Occupied rent-free	93502002
268	Owned and fully paid off	93502002
3	Other	93502002
23	Rented	93502003
12	Owned but not yet paid off	93502003
1369	Occupied rent-free	93502003
454	Owned and fully paid off	93502003
1	Other	93502003
12	Rented	93502004
7	Owned but not yet paid off	93502004
1371	Occupied rent-free	93502004
319	Owned and fully paid off	93502004
4	Other	93502004
20	Rented	93502005
2	Owned but not yet paid off	93502005
727	Occupied rent-free	93502005
854	Owned and fully paid off	93502005
3	Other	93502005
44	Rented	93502006
1	Owned but not yet paid off	93502006
1237	Occupied rent-free	93502006
225	Owned and fully paid off	93502006
6	Other	93502006
41	Rented	93502007
7	Owned but not yet paid off	93502007
1429	Occupied rent-free	93502007
602	Owned and fully paid off	93502007
4	Other	93502007
26	Rented	93502008
12	Owned but not yet paid off	93502008
1038	Occupied rent-free	93502008
674	Owned and fully paid off	93502008
6	Other	93502008
192	Rented	93502009
26	Owned but not yet paid off	93502009
830	Occupied rent-free	93502009
848	Owned and fully paid off	93502009
5	Other	93502009
24	Rented	93502010
43	Owned but not yet paid off	93502010
1479	Occupied rent-free	93502010
262	Owned and fully paid off	93502010
10	Other	93502010
25	Rented	93502011
50	Owned but not yet paid off	93502011
693	Occupied rent-free	93502011
811	Owned and fully paid off	93502011
1	Other	93502011
36	Rented	93502012
106	Owned but not yet paid off	93502012
688	Occupied rent-free	93502012
755	Owned and fully paid off	93502012
1	Other	93502012
28	Rented	93502013
9	Owned but not yet paid off	93502013
268	Occupied rent-free	93502013
1155	Owned and fully paid off	93502013
186	Other	93502013
37	Rented	93502014
3	Owned but not yet paid off	93502014
298	Occupied rent-free	93502014
1626	Owned and fully paid off	93502014
23	Other	93502014
33	Rented	93502015
9	Owned but not yet paid off	93502015
921	Occupied rent-free	93502015
637	Owned and fully paid off	93502015
358	Other	93502015
42	Rented	93502016
4	Owned but not yet paid off	93502016
733	Occupied rent-free	93502016
1275	Owned and fully paid off	93502016
5	Other	93502016
25	Rented	93502017
85	Owned but not yet paid off	93502017
1328	Occupied rent-free	93502017
193	Owned and fully paid off	93502017
5	Other	93502017
23	Rented	93502018
9	Owned but not yet paid off	93502018
667	Occupied rent-free	93502018
886	Owned and fully paid off	93502018
81	Other	93502018
60	Rented	93502019
51	Owned but not yet paid off	93502019
810	Occupied rent-free	93502019
1055	Owned and fully paid off	93502019
5	Other	93502019
1617	Rented	93503001
91	Owned but not yet paid off	93503001
1328	Occupied rent-free	93503001
986	Owned and fully paid off	93503001
39	Other	93503001
56	Rented	93503002
213	Owned but not yet paid off	93503002
597	Occupied rent-free	93503002
1619	Owned and fully paid off	93503002
9	Other	93503002
49	Rented	93503003
71	Owned but not yet paid off	93503003
537	Occupied rent-free	93503003
895	Owned and fully paid off	93503003
14	Other	93503003
43	Rented	93503004
113	Owned but not yet paid off	93503004
388	Occupied rent-free	93503004
1315	Owned and fully paid off	93503004
6	Other	93503004
7	Rented	93503005
9	Owned but not yet paid off	93503005
249	Occupied rent-free	93503005
937	Owned and fully paid off	93503005
2	Other	93503005
61	Rented	93503006
98	Owned but not yet paid off	93503006
1108	Occupied rent-free	93503006
987	Owned and fully paid off	93503006
10	Other	93503006
215	Rented	93503007
208	Owned but not yet paid off	93503007
463	Occupied rent-free	93503007
1888	Owned and fully paid off	93503007
44	Other	93503007
41	Rented	93503008
57	Owned but not yet paid off	93503008
936	Occupied rent-free	93503008
1509	Owned and fully paid off	93503008
121	Other	93503008
91	Rented	93503009
284	Owned but not yet paid off	93503009
571	Occupied rent-free	93503009
1114	Owned and fully paid off	93503009
26	Other	93503009
642	Rented	93503010
102	Owned but not yet paid off	93503010
364	Occupied rent-free	93503010
1010	Owned and fully paid off	93503010
15	Other	93503010
45	Rented	93503011
4	Owned but not yet paid off	93503011
49	Occupied rent-free	93503011
1184	Owned and fully paid off	93503011
1	Other	93503011
47	Rented	93503012
5	Owned but not yet paid off	93503012
154	Occupied rent-free	93503012
1873	Owned and fully paid off	93503012
109	Other	93503012
26	Rented	93503013
4	Owned but not yet paid off	93503013
164	Occupied rent-free	93503013
1530	Owned and fully paid off	93503013
2	Other	93503013
24	Rented	93503014
6	Owned but not yet paid off	93503014
140	Occupied rent-free	93503014
1516	Owned and fully paid off	93503014
3	Other	93503014
992	Rented	93504001
116	Owned but not yet paid off	93504001
2751	Occupied rent-free	93504001
2156	Owned and fully paid off	93504001
65	Other	93504001
93	Rented	93504002
6	Owned but not yet paid off	93504002
1689	Occupied rent-free	93504002
2054	Owned and fully paid off	93504002
7	Other	93504002
73	Rented	93504003
134	Owned but not yet paid off	93504003
2394	Occupied rent-free	93504003
642	Owned and fully paid off	93504003
21	Other	93504003
231	Rented	93504004
81	Owned but not yet paid off	93504004
1467	Occupied rent-free	93504004
2518	Owned and fully paid off	93504004
45	Other	93504004
122	Rented	93504005
30	Owned but not yet paid off	93504005
696	Occupied rent-free	93504005
3504	Owned and fully paid off	93504005
7	Other	93504005
1855	Rented	93504006
433	Owned but not yet paid off	93504006
1466	Occupied rent-free	93504006
2219	Owned and fully paid off	93504006
55	Other	93504006
85	Rented	93504007
42	Owned but not yet paid off	93504007
723	Occupied rent-free	93504007
2583	Owned and fully paid off	93504007
3	Other	93504007
6296	Rented	93504008
1376	Owned but not yet paid off	93504008
3118	Occupied rent-free	93504008
4386	Owned and fully paid off	93504008
373	Other	93504008
88	Rented	93504009
104	Owned but not yet paid off	93504009
544	Occupied rent-free	93504009
2562	Owned and fully paid off	93504009
17	Other	93504009
419	Rented	93504010
18	Owned but not yet paid off	93504010
483	Occupied rent-free	93504010
1224	Owned and fully paid off	93504010
2127	Other	93504010
1065	Rented	93504011
368	Owned but not yet paid off	93504011
178	Occupied rent-free	93504011
2292	Owned and fully paid off	93504011
897	Other	93504011
659	Rented	93504012
479	Owned but not yet paid off	93504012
94	Occupied rent-free	93504012
1240	Owned and fully paid off	93504012
80	Other	93504012
860	Rented	93504013
61	Owned but not yet paid off	93504013
386	Occupied rent-free	93504013
2036	Owned and fully paid off	93504013
44	Other	93504013
1407	Rented	93504014
1286	Owned but not yet paid off	93504014
597	Occupied rent-free	93504014
2003	Owned and fully paid off	93504014
56	Other	93504014
34	Rented	93504015
10	Owned but not yet paid off	93504015
1416	Occupied rent-free	93504015
1434	Owned and fully paid off	93504015
39	Other	93504015
399	Rented	93504016
48	Owned but not yet paid off	93504016
1468	Occupied rent-free	93504016
3277	Owned and fully paid off	93504016
330	Other	93504016
1766	Rented	93504017
240	Owned but not yet paid off	93504017
278	Occupied rent-free	93504017
2500	Owned and fully paid off	93504017
60	Other	93504017
117	Rented	93504018
27	Owned but not yet paid off	93504018
215	Occupied rent-free	93504018
3613	Owned and fully paid off	93504018
15	Other	93504018
1977	Rented	93504019
857	Owned but not yet paid off	93504019
613	Occupied rent-free	93504019
1632	Owned and fully paid off	93504019
265	Other	93504019
3020	Rented	93504020
3158	Owned but not yet paid off	93504020
511	Occupied rent-free	93504020
1498	Owned and fully paid off	93504020
185	Other	93504020
733	Rented	93504021
683	Owned but not yet paid off	93504021
66	Occupied rent-free	93504021
492	Owned and fully paid off	93504021
71	Other	93504021
2772	Rented	93504022
1446	Owned but not yet paid off	93504022
554	Occupied rent-free	93504022
766	Owned and fully paid off	93504022
69	Other	93504022
4875	Rented	93504023
595	Owned but not yet paid off	93504023
579	Occupied rent-free	93504023
564	Owned and fully paid off	93504023
139	Other	93504023
119	Rented	93504024
29	Owned but not yet paid off	93504024
935	Occupied rent-free	93504024
2950	Owned and fully paid off	93504024
10	Other	93504024
2639	Rented	93504025
658	Owned but not yet paid off	93504025
895	Occupied rent-free	93504025
3355	Owned and fully paid off	93504025
225	Other	93504025
1908	Rented	93504026
61	Owned but not yet paid off	93504026
76	Occupied rent-free	93504026
244	Owned and fully paid off	93504026
23	Other	93504026
337	Rented	93504027
178	Owned but not yet paid off	93504027
395	Occupied rent-free	93504027
4812	Owned and fully paid off	93504027
24	Other	93504027
62	Rented	93504028
9	Owned but not yet paid off	93504028
269	Occupied rent-free	93504028
3128	Owned and fully paid off	93504028
24	Other	93504028
21	Rented	93504029
98	Owned but not yet paid off	93504029
901	Occupied rent-free	93504029
1321	Owned and fully paid off	93504029
108	Other	93504029
60	Rented	93504030
293	Owned but not yet paid off	93504030
874	Occupied rent-free	93504030
1828	Owned and fully paid off	93504030
11	Other	93504030
1266	Rented	93504031
38	Owned but not yet paid off	93504031
702	Occupied rent-free	93504031
3426	Owned and fully paid off	93504031
68	Other	93504031
180	Rented	93504032
436	Owned but not yet paid off	93504032
1051	Occupied rent-free	93504032
2092	Owned and fully paid off	93504032
71	Other	93504032
55	Rented	93504033
161	Owned but not yet paid off	93504033
694	Occupied rent-free	93504033
3120	Owned and fully paid off	93504033
23	Other	93504033
35	Rented	93504034
90	Owned but not yet paid off	93504034
560	Occupied rent-free	93504034
3387	Owned and fully paid off	93504034
13	Other	93504034
57	Rented	93504035
307	Owned but not yet paid off	93504035
348	Occupied rent-free	93504035
1919	Owned and fully paid off	93504035
384	Other	93504035
502	Rented	93504036
397	Owned but not yet paid off	93504036
427	Occupied rent-free	93504036
2634	Owned and fully paid off	93504036
40	Other	93504036
2458	Rented	93504037
265	Owned but not yet paid off	93504037
448	Occupied rent-free	93504037
1845	Owned and fully paid off	93504037
362	Other	93504037
98	Rented	93504038
48	Owned but not yet paid off	93504038
567	Occupied rent-free	93504038
2556	Owned and fully paid off	93504038
6	Other	93504038
11	Rented	93505001
17	Owned but not yet paid off	93505001
365	Occupied rent-free	93505001
1614	Owned and fully paid off	93505001
8	Other	93505001
38	Rented	93505002
10	Owned but not yet paid off	93505002
205	Occupied rent-free	93505002
1811	Owned and fully paid off	93505002
0	Other	93505002
6	Rented	93505003
157	Owned but not yet paid off	93505003
531	Occupied rent-free	93505003
1220	Owned and fully paid off	93505003
6	Other	93505003
92	Rented	93505004
9	Owned but not yet paid off	93505004
408	Occupied rent-free	93505004
1295	Owned and fully paid off	93505004
15	Other	93505004
8	Rented	93505005
4	Owned but not yet paid off	93505005
626	Occupied rent-free	93505005
944	Owned and fully paid off	93505005
148	Other	93505005
24	Rented	93505006
22	Owned but not yet paid off	93505006
275	Occupied rent-free	93505006
1627	Owned and fully paid off	93505006
6	Other	93505006
35	Rented	93505007
8	Owned but not yet paid off	93505007
234	Occupied rent-free	93505007
1873	Owned and fully paid off	93505007
4	Other	93505007
321	Rented	93505008
18	Owned but not yet paid off	93505008
529	Occupied rent-free	93505008
2006	Owned and fully paid off	93505008
11	Other	93505008
88	Rented	93505009
19	Owned but not yet paid off	93505009
274	Occupied rent-free	93505009
1872	Owned and fully paid off	93505009
8	Other	93505009
77	Rented	93505010
6	Owned but not yet paid off	93505010
347	Occupied rent-free	93505010
1151	Owned and fully paid off	93505010
15	Other	93505010
18	Rented	93505011
12	Owned but not yet paid off	93505011
34	Occupied rent-free	93505011
1755	Owned and fully paid off	93505011
1	Other	93505011
119	Rented	93505012
5	Owned but not yet paid off	93505012
79	Occupied rent-free	93505012
1587	Owned and fully paid off	93505012
11	Other	93505012
194	Rented	93505013
4	Owned but not yet paid off	93505013
428	Occupied rent-free	93505013
1245	Owned and fully paid off	93505013
5	Other	93505013
102	Rented	93505014
17	Owned but not yet paid off	93505014
127	Occupied rent-free	93505014
1959	Owned and fully paid off	93505014
8	Other	93505014
786	Rented	93505015
651	Owned but not yet paid off	93505015
495	Occupied rent-free	93505015
1567	Owned and fully paid off	93505015
81	Other	93505015
435	Rented	93505016
266	Owned but not yet paid off	93505016
590	Occupied rent-free	93505016
1128	Owned and fully paid off	93505016
26	Other	93505016
555	Rented	93505017
296	Owned but not yet paid off	93505017
759	Occupied rent-free	93505017
985	Owned and fully paid off	93505017
24	Other	93505017
413	Rented	93505018
304	Owned but not yet paid off	93505018
160	Occupied rent-free	93505018
757	Owned and fully paid off	93505018
32	Other	93505018
26	Rented	93505019
9	Owned but not yet paid off	93505019
1185	Occupied rent-free	93505019
1032	Owned and fully paid off	93505019
12	Other	93505019
22	Rented	93505020
7	Owned but not yet paid off	93505020
1039	Occupied rent-free	93505020
801	Owned and fully paid off	93505020
1	Other	93505020
40	Rented	93505021
132	Owned but not yet paid off	93505021
1219	Occupied rent-free	93505021
248	Owned and fully paid off	93505021
105	Other	93505021
77	Rented	93505022
24	Owned but not yet paid off	93505022
307	Occupied rent-free	93505022
2143	Owned and fully paid off	93505022
4	Other	93505022
27	Rented	93505023
147	Owned but not yet paid off	93505023
702	Occupied rent-free	93505023
1008	Owned and fully paid off	93505023
6	Other	93505023
12	Rented	93505024
70	Owned but not yet paid off	93505024
151	Occupied rent-free	93505024
1059	Owned and fully paid off	93505024
1	Other	93505024
22	Rented	93505025
9	Owned but not yet paid off	93505025
1246	Occupied rent-free	93505025
436	Owned and fully paid off	93505025
137	Other	93505025
46	Rented	93505026
19	Owned but not yet paid off	93505026
737	Occupied rent-free	93505026
1658	Owned and fully paid off	93505026
4	Other	93505026
42	Rented	93505027
245	Owned but not yet paid off	93505027
282	Occupied rent-free	93505027
1331	Owned and fully paid off	93505027
9	Other	93505027
109	Rented	93505028
147	Owned but not yet paid off	93505028
560	Occupied rent-free	93505028
1020	Owned and fully paid off	93505028
7	Other	93505028
25	Rented	93505029
154	Owned but not yet paid off	93505029
981	Occupied rent-free	93505029
414	Owned and fully paid off	93505029
2	Other	93505029
717	Rented	93601001
153	Owned but not yet paid off	93601001
1193	Occupied rent-free	93601001
243	Owned and fully paid off	93601001
91	Other	93601001
1281	Rented	93601002
382	Owned but not yet paid off	93601002
576	Occupied rent-free	93601002
492	Owned and fully paid off	93601002
221	Other	93601002
2224	Rented	93601003
286	Owned but not yet paid off	93601003
618	Occupied rent-free	93601003
740	Owned and fully paid off	93601003
64	Other	93601003
446	Rented	93601004
102	Owned but not yet paid off	93601004
610	Occupied rent-free	93601004
216	Owned and fully paid off	93601004
56	Other	93601004
869	Rented	93601005
19	Owned but not yet paid off	93601005
202	Occupied rent-free	93601005
17	Owned and fully paid off	93601005
89	Other	93601005
885	Rented	93601006
4	Owned but not yet paid off	93601006
215	Occupied rent-free	93601006
1	Owned and fully paid off	93601006
20	Other	93601006
1877	Rented	93601007
619	Owned but not yet paid off	93601007
1007	Occupied rent-free	93601007
429	Owned and fully paid off	93601007
120	Other	93601007
828	Rented	93601008
192	Owned but not yet paid off	93601008
220	Occupied rent-free	93601008
183	Owned and fully paid off	93601008
119	Other	93601008
1686	Rented	93601009
262	Owned but not yet paid off	93601009
1276	Occupied rent-free	93601009
1042	Owned and fully paid off	93601009
155	Other	93601009
315	Rented	93601010
72	Owned but not yet paid off	93601010
411	Occupied rent-free	93601010
300	Owned and fully paid off	93601010
12	Other	93601010
0	Rented	93601011
0	Owned but not yet paid off	93601011
1	Occupied rent-free	93601011
0	Owned and fully paid off	93601011
0	Other	93601011
398	Rented	93601012
67	Owned but not yet paid off	93601012
95	Occupied rent-free	93601012
299	Owned and fully paid off	93601012
59	Other	93601012
1923	Rented	93602001
324	Owned but not yet paid off	93602001
2012	Occupied rent-free	93602001
750	Owned and fully paid off	93602001
107	Other	93602001
1165	Rented	93602002
303	Owned but not yet paid off	93602002
260	Occupied rent-free	93602002
597	Owned and fully paid off	93602002
256	Other	93602002
881	Rented	93602003
101	Owned but not yet paid off	93602003
1339	Occupied rent-free	93602003
389	Owned and fully paid off	93602003
235	Other	93602003
1541	Rented	93602004
486	Owned but not yet paid off	93602004
152	Occupied rent-free	93602004
367	Owned and fully paid off	93602004
69	Other	93602004
1369	Rented	93602005
199	Owned but not yet paid off	93602005
636	Occupied rent-free	93602005
523	Owned and fully paid off	93602005
181	Other	93602005
86	Rented	93602006
1	Owned but not yet paid off	93602006
18	Occupied rent-free	93602006
1244	Owned and fully paid off	93602006
5	Other	93602006
49	Rented	93602007
86	Owned but not yet paid off	93602007
164	Occupied rent-free	93602007
1217	Owned and fully paid off	93602007
5	Other	93602007
95	Rented	93602008
178	Owned but not yet paid off	93602008
151	Occupied rent-free	93602008
1588	Owned and fully paid off	93602008
43	Other	93602008
317	Rented	93602009
49	Owned but not yet paid off	93602009
755	Occupied rent-free	93602009
1239	Owned and fully paid off	93602009
29	Other	93602009
50	Rented	93602010
78	Owned but not yet paid off	93602010
1130	Occupied rent-free	93602010
645	Owned and fully paid off	93602010
2	Other	93602010
721	Rented	93602011
172	Owned but not yet paid off	93602011
596	Occupied rent-free	93602011
1134	Owned and fully paid off	93602011
37	Other	93602011
83	Rented	93602012
30	Owned but not yet paid off	93602012
1157	Occupied rent-free	93602012
458	Owned and fully paid off	93602012
102	Other	93602012
980	Rented	93604001
72	Owned but not yet paid off	93604001
658	Occupied rent-free	93604001
1473	Owned and fully paid off	93604001
210	Other	93604001
508	Rented	93604002
10	Owned but not yet paid off	93604002
26	Occupied rent-free	93604002
1012	Owned and fully paid off	93604002
12	Other	93604002
471	Rented	93604003
62	Owned but not yet paid off	93604003
922	Occupied rent-free	93604003
297	Owned and fully paid off	93604003
42	Other	93604003
528	Rented	93604004
169	Owned but not yet paid off	93604004
56	Occupied rent-free	93604004
645	Owned and fully paid off	93604004
30	Other	93604004
330	Rented	93604005
94	Owned but not yet paid off	93604005
623	Occupied rent-free	93604005
599	Owned and fully paid off	93604005
88	Other	93604005
289	Rented	93605001
75	Owned but not yet paid off	93605001
809	Occupied rent-free	93605001
728	Owned and fully paid off	93605001
22	Other	93605001
482	Rented	93605002
33	Owned but not yet paid off	93605002
684	Occupied rent-free	93605002
320	Owned and fully paid off	93605002
85	Other	93605002
248	Rented	93605003
38	Owned but not yet paid off	93605003
588	Occupied rent-free	93605003
603	Owned and fully paid off	93605003
42	Other	93605003
273	Rented	93605004
196	Owned but not yet paid off	93605004
465	Occupied rent-free	93605004
680	Owned and fully paid off	93605004
27	Other	93605004
399	Rented	93605005
24	Owned but not yet paid off	93605005
481	Occupied rent-free	93605005
2020	Owned and fully paid off	93605005
99	Other	93605005
247	Rented	93605006
40	Owned but not yet paid off	93605006
59	Occupied rent-free	93605006
1941	Owned and fully paid off	93605006
148	Other	93605006
359	Rented	93605007
194	Owned but not yet paid off	93605007
166	Occupied rent-free	93605007
1153	Owned and fully paid off	93605007
42	Other	93605007
928	Rented	93605008
219	Owned but not yet paid off	93605008
486	Occupied rent-free	93605008
543	Owned and fully paid off	93605008
39	Other	93605008
287	Rented	93605009
14	Owned but not yet paid off	93605009
134	Occupied rent-free	93605009
808	Owned and fully paid off	93605009
12	Other	93605009
1225	Rented	93606001
390	Owned but not yet paid off	93606001
1231	Occupied rent-free	93606001
1020	Owned and fully paid off	93606001
143	Other	93606001
874	Rented	93606002
140	Owned but not yet paid off	93606002
203	Occupied rent-free	93606002
952	Owned and fully paid off	93606002
48	Other	93606002
266	Rented	93606003
47	Owned but not yet paid off	93606003
24	Occupied rent-free	93606003
814	Owned and fully paid off	93606003
141	Other	93606003
947	Rented	93606004
158	Owned but not yet paid off	93606004
976	Occupied rent-free	93606004
888	Owned and fully paid off	93606004
411	Other	93606004
453	Rented	93606005
48	Owned but not yet paid off	93606005
7	Occupied rent-free	93606005
703	Owned and fully paid off	93606005
6	Other	93606005
232	Rented	93606006
66	Owned but not yet paid off	93606006
50	Occupied rent-free	93606006
860	Owned and fully paid off	93606006
21	Other	93606006
700	Rented	93606007
123	Owned but not yet paid off	93606007
217	Occupied rent-free	93606007
1033	Owned and fully paid off	93606007
167	Other	93606007
238	Rented	93606008
46	Owned but not yet paid off	93606008
912	Occupied rent-free	93606008
466	Owned and fully paid off	93606008
178	Other	93606008
97	Rented	93606009
81	Owned but not yet paid off	93606009
377	Occupied rent-free	93606009
56	Owned and fully paid off	93606009
31	Other	93606009
59	Rented	93607001
203	Owned but not yet paid off	93607001
611	Occupied rent-free	93607001
1495	Owned and fully paid off	93607001
12	Other	93607001
74	Rented	93607002
28	Owned but not yet paid off	93607002
272	Occupied rent-free	93607002
1899	Owned and fully paid off	93607002
8	Other	93607002
161	Rented	93607003
24	Owned but not yet paid off	93607003
456	Occupied rent-free	93607003
1737	Owned and fully paid off	93607003
15	Other	93607003
59	Rented	93607004
96	Owned but not yet paid off	93607004
96	Occupied rent-free	93607004
2107	Owned and fully paid off	93607004
8	Other	93607004
49	Rented	93607005
8	Owned but not yet paid off	93607005
1132	Occupied rent-free	93607005
833	Owned and fully paid off	93607005
2	Other	93607005
71	Rented	93607006
31	Owned but not yet paid off	93607006
267	Occupied rent-free	93607006
1846	Owned and fully paid off	93607006
6	Other	93607006
150	Rented	93607007
126	Owned but not yet paid off	93607007
247	Occupied rent-free	93607007
1996	Owned and fully paid off	93607007
20	Other	93607007
35	Rented	93607008
24	Owned but not yet paid off	93607008
1677	Occupied rent-free	93607008
257	Owned and fully paid off	93607008
9	Other	93607008
150	Rented	93607009
10	Owned but not yet paid off	93607009
1614	Occupied rent-free	93607009
462	Owned and fully paid off	93607009
7	Other	93607009
28	Rented	93607010
16	Owned but not yet paid off	93607010
1171	Occupied rent-free	93607010
839	Owned and fully paid off	93607010
9	Other	93607010
77	Rented	93607011
268	Owned but not yet paid off	93607011
867	Occupied rent-free	93607011
1216	Owned and fully paid off	93607011
284	Other	93607011
793	Rented	93607012
91	Owned but not yet paid off	93607012
986	Occupied rent-free	93607012
1212	Owned and fully paid off	93607012
109	Other	93607012
36	Rented	93607013
37	Owned but not yet paid off	93607013
760	Occupied rent-free	93607013
1717	Owned and fully paid off	93607013
104	Other	93607013
108	Rented	93607014
9	Owned but not yet paid off	93607014
389	Occupied rent-free	93607014
1814	Owned and fully paid off	93607014
5	Other	93607014
45	Rented	93607015
9	Owned but not yet paid off	93607015
774	Occupied rent-free	93607015
1049	Owned and fully paid off	93607015
6	Other	93607015
319	Rented	93607016
16	Owned but not yet paid off	93607016
742	Occupied rent-free	93607016
1461	Owned and fully paid off	93607016
10	Other	93607016
19	Rented	93607017
131	Owned but not yet paid off	93607017
810	Occupied rent-free	93607017
1130	Owned and fully paid off	93607017
146	Other	93607017
224	Rented	93607018
118	Owned but not yet paid off	93607018
1271	Occupied rent-free	93607018
1233	Owned and fully paid off	93607018
105	Other	93607018
32	Rented	93607019
3	Owned but not yet paid off	93607019
1914	Occupied rent-free	93607019
91	Owned and fully paid off	93607019
0	Other	93607019
79	Rented	93607020
16	Owned but not yet paid off	93607020
770	Occupied rent-free	93607020
1479	Owned and fully paid off	93607020
5	Other	93607020
46	Rented	93607021
0	Owned but not yet paid off	93607021
921	Occupied rent-free	93607021
311	Owned and fully paid off	93607021
84	Other	93607021
36	Rented	93607022
120	Owned but not yet paid off	93607022
1605	Occupied rent-free	93607022
570	Owned and fully paid off	93607022
9	Other	93607022
102	Rented	93607023
8	Owned but not yet paid off	93607023
418	Occupied rent-free	93607023
1493	Owned and fully paid off	93607023
12	Other	93607023
272	Rented	93607024
116	Owned but not yet paid off	93607024
272	Occupied rent-free	93607024
2206	Owned and fully paid off	93607024
14	Other	93607024
50	Rented	93607025
6	Owned but not yet paid off	93607025
570	Occupied rent-free	93607025
1761	Owned and fully paid off	93607025
147	Other	93607025
513	Rented	93607026
34	Owned but not yet paid off	93607026
56	Occupied rent-free	93607026
1086	Owned and fully paid off	93607026
8	Other	93607026
855	Rented	93607027
221	Owned but not yet paid off	93607027
112	Occupied rent-free	93607027
1448	Owned and fully paid off	93607027
35	Other	93607027
740	Rented	93607028
54	Owned but not yet paid off	93607028
243	Occupied rent-free	93607028
2022	Owned and fully paid off	93607028
6	Other	93607028
505	Rented	93607029
18	Owned but not yet paid off	93607029
522	Occupied rent-free	93607029
1792	Owned and fully paid off	93607029
207	Other	93607029
89	Rented	93607030
188	Owned but not yet paid off	93607030
424	Occupied rent-free	93607030
1220	Owned and fully paid off	93607030
7	Other	93607030
779	Rented	93607031
966	Owned but not yet paid off	93607031
2382	Occupied rent-free	93607031
1815	Owned and fully paid off	93607031
87	Other	93607031
1389	Rented	93607032
422	Owned but not yet paid off	93607032
63	Occupied rent-free	93607032
482	Owned and fully paid off	93607032
55	Other	93607032
107	Rented	94701001
6	Owned but not yet paid off	94701001
1113	Occupied rent-free	94701001
434	Owned and fully paid off	94701001
3	Other	94701001
35	Rented	94701002
7	Owned but not yet paid off	94701002
98	Occupied rent-free	94701002
1277	Owned and fully paid off	94701002
6	Other	94701002
48	Rented	94701003
65	Owned but not yet paid off	94701003
1152	Occupied rent-free	94701003
884	Owned and fully paid off	94701003
119	Other	94701003
47	Rented	94701004
4	Owned but not yet paid off	94701004
361	Occupied rent-free	94701004
1403	Owned and fully paid off	94701004
1	Other	94701004
1585	Rented	94701005
87	Owned but not yet paid off	94701005
1542	Occupied rent-free	94701005
386	Owned and fully paid off	94701005
92	Other	94701005
39	Rented	94701006
12	Owned but not yet paid off	94701006
344	Occupied rent-free	94701006
1064	Owned and fully paid off	94701006
287	Other	94701006
997	Rented	94701007
235	Owned but not yet paid off	94701007
574	Occupied rent-free	94701007
183	Owned and fully paid off	94701007
66	Other	94701007
375	Rented	94701008
23	Owned but not yet paid off	94701008
807	Occupied rent-free	94701008
1258	Owned and fully paid off	94701008
33	Other	94701008
240	Rented	94701009
9	Owned but not yet paid off	94701009
817	Occupied rent-free	94701009
1009	Owned and fully paid off	94701009
46	Other	94701009
41	Rented	94701010
9	Owned but not yet paid off	94701010
739	Occupied rent-free	94701010
911	Owned and fully paid off	94701010
14	Other	94701010
65	Rented	94701011
30	Owned but not yet paid off	94701011
936	Occupied rent-free	94701011
536	Owned and fully paid off	94701011
7	Other	94701011
28	Rented	94701012
10	Owned but not yet paid off	94701012
411	Occupied rent-free	94701012
1483	Owned and fully paid off	94701012
11	Other	94701012
177	Rented	94701013
39	Owned but not yet paid off	94701013
637	Occupied rent-free	94701013
1015	Owned and fully paid off	94701013
10	Other	94701013
28	Rented	94701014
31	Owned but not yet paid off	94701014
618	Occupied rent-free	94701014
581	Owned and fully paid off	94701014
149	Other	94701014
81	Rented	94701015
14	Owned but not yet paid off	94701015
1540	Occupied rent-free	94701015
460	Owned and fully paid off	94701015
23	Other	94701015
394	Rented	94701016
25	Owned but not yet paid off	94701016
1081	Occupied rent-free	94701016
668	Owned and fully paid off	94701016
201	Other	94701016
70	Rented	94702001
8	Owned but not yet paid off	94702001
980	Occupied rent-free	94702001
2081	Owned and fully paid off	94702001
41	Other	94702001
64	Rented	94702002
4	Owned but not yet paid off	94702002
317	Occupied rent-free	94702002
864	Owned and fully paid off	94702002
0	Other	94702002
26	Rented	94702003
14	Owned but not yet paid off	94702003
460	Occupied rent-free	94702003
1042	Owned and fully paid off	94702003
6	Other	94702003
30	Rented	94702004
6	Owned but not yet paid off	94702004
486	Occupied rent-free	94702004
763	Owned and fully paid off	94702004
3	Other	94702004
41	Rented	94702005
10	Owned but not yet paid off	94702005
53	Occupied rent-free	94702005
1885	Owned and fully paid off	94702005
9	Other	94702005
133	Rented	94702006
3	Owned but not yet paid off	94702006
42	Occupied rent-free	94702006
1376	Owned and fully paid off	94702006
5	Other	94702006
73	Rented	94702007
228	Owned but not yet paid off	94702007
127	Occupied rent-free	94702007
2413	Owned and fully paid off	94702007
14	Other	94702007
55	Rented	94702008
19	Owned but not yet paid off	94702008
204	Occupied rent-free	94702008
941	Owned and fully paid off	94702008
209	Other	94702008
160	Rented	94702009
25	Owned but not yet paid off	94702009
928	Occupied rent-free	94702009
1875	Owned and fully paid off	94702009
64	Other	94702009
38	Rented	94702010
55	Owned but not yet paid off	94702010
563	Occupied rent-free	94702010
1346	Owned and fully paid off	94702010
54	Other	94702010
113	Rented	94702011
5	Owned but not yet paid off	94702011
394	Occupied rent-free	94702011
710	Owned and fully paid off	94702011
2	Other	94702011
397	Rented	94702012
24	Owned but not yet paid off	94702012
358	Occupied rent-free	94702012
936	Owned and fully paid off	94702012
260	Other	94702012
583	Rented	94702013
295	Owned but not yet paid off	94702013
133	Occupied rent-free	94702013
248	Owned and fully paid off	94702013
25	Other	94702013
1165	Rented	94702014
206	Owned but not yet paid off	94702014
1299	Occupied rent-free	94702014
1123	Owned and fully paid off	94702014
29	Other	94702014
32	Rented	94702015
14	Owned but not yet paid off	94702015
435	Occupied rent-free	94702015
1406	Owned and fully paid off	94702015
8	Other	94702015
104	Rented	94702016
15	Owned but not yet paid off	94702016
1612	Occupied rent-free	94702016
421	Owned and fully paid off	94702016
10	Other	94702016
57	Rented	94702017
9	Owned but not yet paid off	94702017
576	Occupied rent-free	94702017
569	Owned and fully paid off	94702017
86	Other	94702017
37	Rented	94702018
97	Owned but not yet paid off	94702018
312	Occupied rent-free	94702018
919	Owned and fully paid off	94702018
167	Other	94702018
47	Rented	94702019
9	Owned but not yet paid off	94702019
196	Occupied rent-free	94702019
1359	Owned and fully paid off	94702019
250	Other	94702019
240	Rented	94702020
99	Owned but not yet paid off	94702020
986	Occupied rent-free	94702020
725	Owned and fully paid off	94702020
781	Other	94702020
53	Rented	94702021
17	Owned but not yet paid off	94702021
163	Occupied rent-free	94702021
2187	Owned and fully paid off	94702021
2	Other	94702021
33	Rented	94702022
22	Owned but not yet paid off	94702022
406	Occupied rent-free	94702022
718	Owned and fully paid off	94702022
0	Other	94702022
32	Rented	94702023
1	Owned but not yet paid off	94702023
306	Occupied rent-free	94702023
937	Owned and fully paid off	94702023
369	Other	94702023
142	Rented	94702024
42	Owned but not yet paid off	94702024
575	Occupied rent-free	94702024
1595	Owned and fully paid off	94702024
10	Other	94702024
34	Rented	94702025
11	Owned but not yet paid off	94702025
555	Occupied rent-free	94702025
1095	Owned and fully paid off	94702025
10	Other	94702025
192	Rented	94702026
9	Owned but not yet paid off	94702026
586	Occupied rent-free	94702026
427	Owned and fully paid off	94702026
65	Other	94702026
169	Rented	94702027
120	Owned but not yet paid off	94702027
1710	Occupied rent-free	94702027
297	Owned and fully paid off	94702027
283	Other	94702027
154	Rented	94702028
78	Owned but not yet paid off	94702028
659	Occupied rent-free	94702028
1136	Owned and fully paid off	94702028
23	Other	94702028
1038	Rented	94702029
29	Owned but not yet paid off	94702029
388	Occupied rent-free	94702029
1332	Owned and fully paid off	94702029
118	Other	94702029
517	Rented	94702030
183	Owned but not yet paid off	94702030
697	Occupied rent-free	94702030
598	Owned and fully paid off	94702030
32	Other	94702030
106	Rented	94703001
10	Owned but not yet paid off	94703001
313	Occupied rent-free	94703001
1669	Owned and fully paid off	94703001
291	Other	94703001
27	Rented	94703002
0	Owned but not yet paid off	94703002
37	Occupied rent-free	94703002
1604	Owned and fully paid off	94703002
0	Other	94703002
232	Rented	94703003
11	Owned but not yet paid off	94703003
283	Occupied rent-free	94703003
2039	Owned and fully paid off	94703003
3	Other	94703003
57	Rented	94703004
171	Owned but not yet paid off	94703004
375	Occupied rent-free	94703004
1215	Owned and fully paid off	94703004
2	Other	94703004
177	Rented	94703005
23	Owned but not yet paid off	94703005
580	Occupied rent-free	94703005
1356	Owned and fully paid off	94703005
1	Other	94703005
28	Rented	94703006
11	Owned but not yet paid off	94703006
729	Occupied rent-free	94703006
1026	Owned and fully paid off	94703006
2	Other	94703006
19	Rented	94703007
33	Owned but not yet paid off	94703007
476	Occupied rent-free	94703007
864	Owned and fully paid off	94703007
3	Other	94703007
230	Rented	94703008
185	Owned but not yet paid off	94703008
285	Occupied rent-free	94703008
2614	Owned and fully paid off	94703008
10	Other	94703008
126	Rented	94703009
327	Owned but not yet paid off	94703009
149	Occupied rent-free	94703009
1931	Owned and fully paid off	94703009
3	Other	94703009
49	Rented	94703010
9	Owned but not yet paid off	94703010
50	Occupied rent-free	94703010
1530	Owned and fully paid off	94703010
2	Other	94703010
280	Rented	94703011
49	Owned but not yet paid off	94703011
637	Occupied rent-free	94703011
547	Owned and fully paid off	94703011
6	Other	94703011
84	Rented	94703012
116	Owned but not yet paid off	94703012
158	Occupied rent-free	94703012
1686	Owned and fully paid off	94703012
7	Other	94703012
98	Rented	94703013
7	Owned but not yet paid off	94703013
199	Occupied rent-free	94703013
1150	Owned and fully paid off	94703013
1133	Other	94703013
157	Rented	94703014
33	Owned but not yet paid off	94703014
174	Occupied rent-free	94703014
832	Owned and fully paid off	94703014
332	Other	94703014
43	Rented	94703015
63	Owned but not yet paid off	94703015
503	Occupied rent-free	94703015
783	Owned and fully paid off	94703015
72	Other	94703015
49	Rented	94703016
88	Owned but not yet paid off	94703016
69	Occupied rent-free	94703016
1263	Owned and fully paid off	94703016
153	Other	94703016
25	Rented	94703017
165	Owned but not yet paid off	94703017
76	Occupied rent-free	94703017
1876	Owned and fully paid off	94703017
3	Other	94703017
463	Rented	94703018
63	Owned but not yet paid off	94703018
1696	Occupied rent-free	94703018
787	Owned and fully paid off	94703018
12	Other	94703018
41	Rented	94703019
15	Owned but not yet paid off	94703019
414	Occupied rent-free	94703019
1596	Owned and fully paid off	94703019
2	Other	94703019
44	Rented	94703020
170	Owned but not yet paid off	94703020
146	Occupied rent-free	94703020
1726	Owned and fully paid off	94703020
119	Other	94703020
244	Rented	94703021
6	Owned but not yet paid off	94703021
510	Occupied rent-free	94703021
1748	Owned and fully paid off	94703021
7	Other	94703021
31	Rented	94703022
32	Owned but not yet paid off	94703022
494	Occupied rent-free	94703022
1196	Owned and fully paid off	94703022
8	Other	94703022
51	Rented	94703023
20	Owned but not yet paid off	94703023
203	Occupied rent-free	94703023
2209	Owned and fully paid off	94703023
16	Other	94703023
27	Rented	94703024
102	Owned but not yet paid off	94703024
18	Occupied rent-free	94703024
1777	Owned and fully paid off	94703024
11	Other	94703024
63	Rented	94703025
37	Owned but not yet paid off	94703025
175	Occupied rent-free	94703025
1746	Owned and fully paid off	94703025
261	Other	94703025
82	Rented	94703026
3	Owned but not yet paid off	94703026
137	Occupied rent-free	94703026
2088	Owned and fully paid off	94703026
5	Other	94703026
20	Rented	94703027
247	Owned but not yet paid off	94703027
588	Occupied rent-free	94703027
790	Owned and fully paid off	94703027
415	Other	94703027
57	Rented	94703028
15	Owned but not yet paid off	94703028
1120	Occupied rent-free	94703028
1613	Owned and fully paid off	94703028
48	Other	94703028
20	Rented	94703029
171	Owned but not yet paid off	94703029
811	Occupied rent-free	94703029
710	Owned and fully paid off	94703029
14	Other	94703029
80	Rented	94703030
60	Owned but not yet paid off	94703030
1167	Occupied rent-free	94703030
622	Owned and fully paid off	94703030
40	Other	94703030
22	Rented	94703031
15	Owned but not yet paid off	94703031
61	Occupied rent-free	94703031
1709	Owned and fully paid off	94703031
3	Other	94703031
17	Rented	94704001
28	Owned but not yet paid off	94704001
391	Occupied rent-free	94704001
1027	Owned and fully paid off	94704001
0	Other	94704001
25	Rented	94704002
15	Owned but not yet paid off	94704002
112	Occupied rent-free	94704002
1646	Owned and fully paid off	94704002
9	Other	94704002
46	Rented	94704003
7	Owned but not yet paid off	94704003
215	Occupied rent-free	94704003
1550	Owned and fully paid off	94704003
10	Other	94704003
22	Rented	94704004
113	Owned but not yet paid off	94704004
238	Occupied rent-free	94704004
967	Owned and fully paid off	94704004
46	Other	94704004
68	Rented	94704005
1	Owned but not yet paid off	94704005
391	Occupied rent-free	94704005
1053	Owned and fully paid off	94704005
40	Other	94704005
188	Rented	94704006
25	Owned but not yet paid off	94704006
627	Occupied rent-free	94704006
1269	Owned and fully paid off	94704006
13	Other	94704006
62	Rented	94704007
61	Owned but not yet paid off	94704007
875	Occupied rent-free	94704007
1031	Owned and fully paid off	94704007
18	Other	94704007
187	Rented	94704008
38	Owned but not yet paid off	94704008
391	Occupied rent-free	94704008
1193	Owned and fully paid off	94704008
11	Other	94704008
40	Rented	94704009
98	Owned but not yet paid off	94704009
606	Occupied rent-free	94704009
649	Owned and fully paid off	94704009
11	Other	94704009
3	Rented	94704010
88	Owned but not yet paid off	94704010
874	Occupied rent-free	94704010
80	Owned and fully paid off	94704010
8	Other	94704010
34	Rented	94704011
11	Owned but not yet paid off	94704011
1703	Occupied rent-free	94704011
391	Owned and fully paid off	94704011
53	Other	94704011
1149	Rented	94704012
218	Owned but not yet paid off	94704012
270	Occupied rent-free	94704012
835	Owned and fully paid off	94704012
5	Other	94704012
139	Rented	94704013
210	Owned but not yet paid off	94704013
965	Occupied rent-free	94704013
382	Owned and fully paid off	94704013
4	Other	94704013
465	Rented	94705001
89	Owned but not yet paid off	94705001
721	Occupied rent-free	94705001
1399	Owned and fully paid off	94705001
42	Other	94705001
1698	Rented	94705002
468	Owned but not yet paid off	94705002
975	Occupied rent-free	94705002
1511	Owned and fully paid off	94705002
55	Other	94705002
139	Rented	94705003
23	Owned but not yet paid off	94705003
1991	Occupied rent-free	94705003
160	Owned and fully paid off	94705003
7	Other	94705003
167	Rented	94705004
158	Owned but not yet paid off	94705004
258	Occupied rent-free	94705004
552	Owned and fully paid off	94705004
4	Other	94705004
658	Rented	94705005
405	Owned but not yet paid off	94705005
411	Occupied rent-free	94705005
2037	Owned and fully paid off	94705005
16	Other	94705005
38	Rented	94705006
35	Owned but not yet paid off	94705006
1066	Occupied rent-free	94705006
671	Owned and fully paid off	94705006
15	Other	94705006
914	Rented	94705007
25	Owned but not yet paid off	94705007
194	Occupied rent-free	94705007
2135	Owned and fully paid off	94705007
25	Other	94705007
308	Rented	94705008
31	Owned but not yet paid off	94705008
903	Occupied rent-free	94705008
1290	Owned and fully paid off	94705008
34	Other	94705008
151	Rented	94705009
121	Owned but not yet paid off	94705009
1398	Occupied rent-free	94705009
1125	Owned and fully paid off	94705009
9	Other	94705009
661	Rented	94705010
146	Owned but not yet paid off	94705010
605	Occupied rent-free	94705010
1690	Owned and fully paid off	94705010
7	Other	94705010
440	Rented	94705011
17	Owned but not yet paid off	94705011
279	Occupied rent-free	94705011
1064	Owned and fully paid off	94705011
2	Other	94705011
117	Rented	94705012
32	Owned but not yet paid off	94705012
45	Occupied rent-free	94705012
1598	Owned and fully paid off	94705012
99	Other	94705012
1015	Rented	94705013
210	Owned but not yet paid off	94705013
2003	Occupied rent-free	94705013
1332	Owned and fully paid off	94705013
26	Other	94705013
439	Rented	94705014
215	Owned but not yet paid off	94705014
1898	Occupied rent-free	94705014
626	Owned and fully paid off	94705014
89	Other	94705014
19	Rented	94705015
207	Owned but not yet paid off	94705015
605	Occupied rent-free	94705015
713	Owned and fully paid off	94705015
234	Other	94705015
57	Rented	94705016
363	Owned but not yet paid off	94705016
273	Occupied rent-free	94705016
832	Owned and fully paid off	94705016
204	Other	94705016
198	Rented	94705017
28	Owned but not yet paid off	94705017
251	Occupied rent-free	94705017
2139	Owned and fully paid off	94705017
5	Other	94705017
1937	Rented	94705018
213	Owned but not yet paid off	94705018
388	Occupied rent-free	94705018
1094	Owned and fully paid off	94705018
121	Other	94705018
419	Rented	94705019
51	Owned but not yet paid off	94705019
177	Occupied rent-free	94705019
2134	Owned and fully paid off	94705019
2	Other	94705019
164	Rented	94705020
12	Owned but not yet paid off	94705020
688	Occupied rent-free	94705020
1944	Owned and fully paid off	94705020
8	Other	94705020
24	Rented	94705021
224	Owned but not yet paid off	94705021
352	Occupied rent-free	94705021
853	Owned and fully paid off	94705021
11	Other	94705021
10	Rented	94705022
5	Owned but not yet paid off	94705022
1291	Occupied rent-free	94705022
455	Owned and fully paid off	94705022
150	Other	94705022
44	Rented	94705023
206	Owned but not yet paid off	94705023
824	Occupied rent-free	94705023
1138	Owned and fully paid off	94705023
36	Other	94705023
34	Rented	94705024
17	Owned but not yet paid off	94705024
333	Occupied rent-free	94705024
1923	Owned and fully paid off	94705024
20	Other	94705024
633	Rented	94705025
182	Owned but not yet paid off	94705025
495	Occupied rent-free	94705025
2197	Owned and fully paid off	94705025
3	Other	94705025
45	Rented	94705026
140	Owned but not yet paid off	94705026
605	Occupied rent-free	94705026
1270	Owned and fully paid off	94705026
9	Other	94705026
190	Rented	94705027
10	Owned but not yet paid off	94705027
618	Occupied rent-free	94705027
1500	Owned and fully paid off	94705027
396	Other	94705027
407	Rented	94705028
38	Owned but not yet paid off	94705028
255	Occupied rent-free	94705028
1769	Owned and fully paid off	94705028
10	Other	94705028
103	Rented	94705029
7	Owned but not yet paid off	94705029
47	Occupied rent-free	94705029
2155	Owned and fully paid off	94705029
14	Other	94705029
498	Rented	94705030
16	Owned but not yet paid off	94705030
1719	Occupied rent-free	94705030
745	Owned and fully paid off	94705030
370	Other	94705030
1708	Rented	94705031
72	Owned but not yet paid off	94705031
907	Occupied rent-free	94705031
1056	Owned and fully paid off	94705031
25	Other	94705031
73	Rented	83001001
205	Owned but not yet paid off	83001001
1461	Occupied rent-free	83001001
250	Owned and fully paid off	83001001
28	Other	83001001
102	Rented	83001002
54	Owned but not yet paid off	83001002
1114	Occupied rent-free	83001002
587	Owned and fully paid off	83001002
6	Other	83001002
117	Rented	83001003
67	Owned but not yet paid off	83001003
1259	Occupied rent-free	83001003
442	Owned and fully paid off	83001003
3	Other	83001003
309	Rented	83001004
65	Owned but not yet paid off	83001004
185	Occupied rent-free	83001004
1577	Owned and fully paid off	83001004
21	Other	83001004
115	Rented	83001005
13	Owned but not yet paid off	83001005
142	Occupied rent-free	83001005
1264	Owned and fully paid off	83001005
116	Other	83001005
123	Rented	83001006
54	Owned but not yet paid off	83001006
1134	Occupied rent-free	83001006
521	Owned and fully paid off	83001006
8	Other	83001006
2	Rented	83001007
203	Owned but not yet paid off	83001007
114	Occupied rent-free	83001007
141	Owned and fully paid off	83001007
91	Other	83001007
35	Rented	83001008
43	Owned but not yet paid off	83001008
733	Occupied rent-free	83001008
93	Owned and fully paid off	83001008
7	Other	83001008
245	Rented	83001009
84	Owned but not yet paid off	83001009
190	Occupied rent-free	83001009
2412	Owned and fully paid off	83001009
118	Other	83001009
206	Rented	83001010
12	Owned but not yet paid off	83001010
211	Occupied rent-free	83001010
1234	Owned and fully paid off	83001010
8	Other	83001010
134	Rented	83001011
76	Owned but not yet paid off	83001011
238	Occupied rent-free	83001011
1399	Owned and fully paid off	83001011
20	Other	83001011
142	Rented	83001012
158	Owned but not yet paid off	83001012
457	Occupied rent-free	83001012
1134	Owned and fully paid off	83001012
107	Other	83001012
35	Rented	83001013
143	Owned but not yet paid off	83001013
111	Occupied rent-free	83001013
939	Owned and fully paid off	83001013
12	Other	83001013
542	Rented	83001014
169	Owned but not yet paid off	83001014
1030	Occupied rent-free	83001014
1175	Owned and fully paid off	83001014
22	Other	83001014
1084	Rented	83001015
184	Owned but not yet paid off	83001015
605	Occupied rent-free	83001015
1528	Owned and fully paid off	83001015
42	Other	83001015
91	Rented	83001016
298	Owned but not yet paid off	83001016
799	Occupied rent-free	83001016
781	Owned and fully paid off	83001016
261	Other	83001016
266	Rented	83001017
178	Owned but not yet paid off	83001017
25	Occupied rent-free	83001017
697	Owned and fully paid off	83001017
13	Other	83001017
48	Rented	83001018
25	Owned but not yet paid off	83001018
135	Occupied rent-free	83001018
2075	Owned and fully paid off	83001018
17	Other	83001018
49	Rented	83001019
35	Owned but not yet paid off	83001019
1089	Occupied rent-free	83001019
284	Owned and fully paid off	83001019
19	Other	83001019
118	Rented	83001020
8	Owned but not yet paid off	83001020
53	Occupied rent-free	83001020
897	Owned and fully paid off	83001020
193	Other	83001020
495	Rented	83001021
159	Owned but not yet paid off	83001021
1165	Occupied rent-free	83001021
714	Owned and fully paid off	83001021
94	Other	83001021
77	Rented	83001022
2	Owned but not yet paid off	83001022
257	Occupied rent-free	83001022
208	Owned and fully paid off	83001022
4	Other	83001022
508	Rented	83001023
277	Owned but not yet paid off	83001023
674	Occupied rent-free	83001023
1105	Owned and fully paid off	83001023
118	Other	83001023
305	Rented	83001024
86	Owned but not yet paid off	83001024
345	Occupied rent-free	83001024
1731	Owned and fully paid off	83001024
170	Other	83001024
62	Rented	83001025
5	Owned but not yet paid off	83001025
542	Occupied rent-free	83001025
1050	Owned and fully paid off	83001025
13	Other	83001025
633	Rented	83002001
217	Owned but not yet paid off	83002001
171	Occupied rent-free	83002001
828	Owned and fully paid off	83002001
99	Other	83002001
506	Rented	83002002
55	Owned but not yet paid off	83002002
284	Occupied rent-free	83002002
1407	Owned and fully paid off	83002002
42	Other	83002002
891	Rented	83002003
159	Owned but not yet paid off	83002003
301	Occupied rent-free	83002003
699	Owned and fully paid off	83002003
361	Other	83002003
910	Rented	83002004
81	Owned but not yet paid off	83002004
52	Occupied rent-free	83002004
569	Owned and fully paid off	83002004
36	Other	83002004
293	Rented	83002005
51	Owned but not yet paid off	83002005
28	Occupied rent-free	83002005
700	Owned and fully paid off	83002005
8	Other	83002005
960	Rented	83002006
229	Owned but not yet paid off	83002006
170	Occupied rent-free	83002006
485	Owned and fully paid off	83002006
14	Other	83002006
1071	Rented	83002007
172	Owned but not yet paid off	83002007
70	Occupied rent-free	83002007
237	Owned and fully paid off	83002007
30	Other	83002007
982	Rented	83002008
832	Owned but not yet paid off	83002008
577	Occupied rent-free	83002008
831	Owned and fully paid off	83002008
85	Other	83002008
905	Rented	83002009
90	Owned but not yet paid off	83002009
703	Occupied rent-free	83002009
1133	Owned and fully paid off	83002009
101	Other	83002009
623	Rented	83002010
128	Owned but not yet paid off	83002010
505	Occupied rent-free	83002010
807	Owned and fully paid off	83002010
106	Other	83002010
417	Rented	83002011
175	Owned but not yet paid off	83002011
526	Occupied rent-free	83002011
418	Owned and fully paid off	83002011
56	Other	83002011
94	Rented	83002012
55	Owned but not yet paid off	83002012
439	Occupied rent-free	83002012
242	Owned and fully paid off	83002012
17	Other	83002012
878	Rented	83002013
100	Owned but not yet paid off	83002013
270	Occupied rent-free	83002013
1011	Owned and fully paid off	83002013
120	Other	83002013
483	Rented	83002014
164	Owned but not yet paid off	83002014
202	Occupied rent-free	83002014
804	Owned and fully paid off	83002014
40	Other	83002014
666	Rented	83002015
275	Owned but not yet paid off	83002015
794	Occupied rent-free	83002015
713	Owned and fully paid off	83002015
174	Other	83002015
1506	Rented	83002016
459	Owned but not yet paid off	83002016
1314	Occupied rent-free	83002016
1242	Owned and fully paid off	83002016
136	Other	83002016
740	Rented	83002017
111	Owned but not yet paid off	83002017
96	Occupied rent-free	83002017
1089	Owned and fully paid off	83002017
60	Other	83002017
135	Rented	83002018
33	Owned but not yet paid off	83002018
582	Occupied rent-free	83002018
411	Owned and fully paid off	83002018
103	Other	83002018
715	Rented	83002019
115	Owned but not yet paid off	83002019
949	Occupied rent-free	83002019
647	Owned and fully paid off	83002019
122	Other	83002019
412	Rented	83003001
350	Owned but not yet paid off	83003001
680	Occupied rent-free	83003001
767	Owned and fully paid off	83003001
74	Other	83003001
298	Rented	83003002
456	Owned but not yet paid off	83003002
316	Occupied rent-free	83003002
1710	Owned and fully paid off	83003002
52	Other	83003002
63	Rented	83003003
10	Owned but not yet paid off	83003003
1496	Occupied rent-free	83003003
445	Owned and fully paid off	83003003
51	Other	83003003
92	Rented	83003004
106	Owned but not yet paid off	83003004
480	Occupied rent-free	83003004
623	Owned and fully paid off	83003004
174	Other	83003004
439	Rented	83003005
412	Owned but not yet paid off	83003005
473	Occupied rent-free	83003005
1420	Owned and fully paid off	83003005
43	Other	83003005
56	Rented	83003006
356	Owned but not yet paid off	83003006
432	Occupied rent-free	83003006
562	Owned and fully paid off	83003006
153	Other	83003006
587	Rented	83003007
256	Owned but not yet paid off	83003007
62	Occupied rent-free	83003007
405	Owned and fully paid off	83003007
17	Other	83003007
27	Rented	83003008
243	Owned but not yet paid off	83003008
362	Occupied rent-free	83003008
714	Owned and fully paid off	83003008
437	Other	83003008
161	Rented	83003009
289	Owned but not yet paid off	83003009
837	Occupied rent-free	83003009
953	Owned and fully paid off	83003009
32	Other	83003009
867	Rented	83003010
58	Owned but not yet paid off	83003010
298	Occupied rent-free	83003010
853	Owned and fully paid off	83003010
27	Other	83003010
888	Rented	83003011
595	Owned but not yet paid off	83003011
658	Occupied rent-free	83003011
992	Owned and fully paid off	83003011
228	Other	83003011
426	Rented	83003012
119	Owned but not yet paid off	83003012
66	Occupied rent-free	83003012
1006	Owned and fully paid off	83003012
5	Other	83003012
664	Rented	83003013
271	Owned but not yet paid off	83003013
364	Occupied rent-free	83003013
702	Owned and fully paid off	83003013
17	Other	83003013
837	Rented	83003014
492	Owned but not yet paid off	83003014
235	Occupied rent-free	83003014
945	Owned and fully paid off	83003014
74	Other	83003014
28	Rented	83003015
135	Owned but not yet paid off	83003015
445	Occupied rent-free	83003015
644	Owned and fully paid off	83003015
119	Other	83003015
434	Rented	83003016
147	Owned but not yet paid off	83003016
32	Occupied rent-free	83003016
840	Owned and fully paid off	83003016
217	Other	83003016
81	Rented	83003017
315	Owned but not yet paid off	83003017
951	Occupied rent-free	83003017
235	Owned and fully paid off	83003017
21	Other	83003017
125	Rented	83003018
29	Owned but not yet paid off	83003018
146	Occupied rent-free	83003018
374	Owned and fully paid off	83003018
14	Other	83003018
319	Rented	83003019
103	Owned but not yet paid off	83003019
870	Occupied rent-free	83003019
581	Owned and fully paid off	83003019
160	Other	83003019
1236	Rented	83004001
10	Owned but not yet paid off	83004001
225	Occupied rent-free	83004001
321	Owned and fully paid off	83004001
168	Other	83004001
325	Rented	83004002
35	Owned but not yet paid off	83004002
82	Occupied rent-free	83004002
392	Owned and fully paid off	83004002
4	Other	83004002
1122	Rented	83004003
137	Owned but not yet paid off	83004003
39	Occupied rent-free	83004003
771	Owned and fully paid off	83004003
38	Other	83004003
511	Rented	83004004
582	Owned but not yet paid off	83004004
199	Occupied rent-free	83004004
433	Owned and fully paid off	83004004
43	Other	83004004
928	Rented	83004005
116	Owned but not yet paid off	83004005
138	Occupied rent-free	83004005
355	Owned and fully paid off	83004005
57	Other	83004005
408	Rented	83004006
167	Owned but not yet paid off	83004006
700	Occupied rent-free	83004006
761	Owned and fully paid off	83004006
26	Other	83004006
643	Rented	83004007
78	Owned but not yet paid off	83004007
681	Occupied rent-free	83004007
627	Owned and fully paid off	83004007
32	Other	83004007
475	Rented	83004008
62	Owned but not yet paid off	83004008
427	Occupied rent-free	83004008
912	Owned and fully paid off	83004008
16	Other	83004008
53	Rented	83004009
18	Owned but not yet paid off	83004009
765	Occupied rent-free	83004009
344	Owned and fully paid off	83004009
0	Other	83004009
141	Rented	83004010
221	Owned but not yet paid off	83004010
1183	Occupied rent-free	83004010
775	Owned and fully paid off	83004010
97	Other	83004010
131	Rented	83004011
68	Owned but not yet paid off	83004011
1007	Occupied rent-free	83004011
747	Owned and fully paid off	83004011
6	Other	83004011
268	Rented	83005001
41	Owned but not yet paid off	83005001
163	Occupied rent-free	83005001
1245	Owned and fully paid off	83005001
28	Other	83005001
196	Rented	83005002
129	Owned but not yet paid off	83005002
42	Occupied rent-free	83005002
815	Owned and fully paid off	83005002
28	Other	83005002
429	Rented	83005003
370	Owned but not yet paid off	83005003
188	Occupied rent-free	83005003
859	Owned and fully paid off	83005003
169	Other	83005003
398	Rented	83005004
449	Owned but not yet paid off	83005004
134	Occupied rent-free	83005004
424	Owned and fully paid off	83005004
34	Other	83005004
1024	Rented	83005005
232	Owned but not yet paid off	83005005
263	Occupied rent-free	83005005
1057	Owned and fully paid off	83005005
18	Other	83005005
715	Rented	83005006
21	Owned but not yet paid off	83005006
170	Occupied rent-free	83005006
683	Owned and fully paid off	83005006
22	Other	83005006
770	Rented	83005007
243	Owned but not yet paid off	83005007
39	Occupied rent-free	83005007
656	Owned and fully paid off	83005007
27	Other	83005007
1210	Rented	83005008
720	Owned but not yet paid off	83005008
132	Occupied rent-free	83005008
353	Owned and fully paid off	83005008
57	Other	83005008
261	Rented	83005009
43	Owned but not yet paid off	83005009
981	Occupied rent-free	83005009
136	Owned and fully paid off	83005009
47	Other	83005009
660	Rented	83005010
315	Owned but not yet paid off	83005010
38	Occupied rent-free	83005010
394	Owned and fully paid off	83005010
17	Other	83005010
916	Rented	83005011
52	Owned but not yet paid off	83005011
142	Occupied rent-free	83005011
2598	Owned and fully paid off	83005011
100	Other	83005011
773	Rented	83005012
137	Owned but not yet paid off	83005012
910	Occupied rent-free	83005012
516	Owned and fully paid off	83005012
69	Other	83005012
105	Rented	83005013
91	Owned but not yet paid off	83005013
726	Occupied rent-free	83005013
289	Owned and fully paid off	83005013
43	Other	83005013
490	Rented	83005014
305	Owned but not yet paid off	83005014
123	Occupied rent-free	83005014
1140	Owned and fully paid off	83005014
40	Other	83005014
701	Rented	83005015
179	Owned but not yet paid off	83005015
1794	Occupied rent-free	83005015
1036	Owned and fully paid off	83005015
83	Other	83005015
303	Rented	83006001
69	Owned but not yet paid off	83006001
180	Occupied rent-free	83006001
1602	Owned and fully paid off	83006001
29	Other	83006001
616	Rented	83006002
176	Owned but not yet paid off	83006002
226	Occupied rent-free	83006002
1281	Owned and fully paid off	83006002
8	Other	83006002
587	Rented	83006003
154	Owned but not yet paid off	83006003
227	Occupied rent-free	83006003
496	Owned and fully paid off	83006003
36	Other	83006003
223	Rented	83006004
178	Owned but not yet paid off	83006004
577	Occupied rent-free	83006004
1316	Owned and fully paid off	83006004
63	Other	83006004
628	Rented	83006005
87	Owned but not yet paid off	83006005
808	Occupied rent-free	83006005
681	Owned and fully paid off	83006005
34	Other	83006005
213	Rented	83006006
24	Owned but not yet paid off	83006006
661	Occupied rent-free	83006006
1143	Owned and fully paid off	83006006
12	Other	83006006
735	Rented	83007001
448	Owned but not yet paid off	83007001
1269	Occupied rent-free	83007001
857	Owned and fully paid off	83007001
100	Other	83007001
657	Rented	83007002
267	Owned but not yet paid off	83007002
568	Occupied rent-free	83007002
1486	Owned and fully paid off	83007002
146	Other	83007002
305	Rented	83007003
76	Owned but not yet paid off	83007003
188	Occupied rent-free	83007003
1689	Owned and fully paid off	83007003
58	Other	83007003
1075	Rented	83007004
17	Owned but not yet paid off	83007004
15	Occupied rent-free	83007004
703	Owned and fully paid off	83007004
24	Other	83007004
791	Rented	83007005
771	Owned but not yet paid off	83007005
130	Occupied rent-free	83007005
342	Owned and fully paid off	83007005
52	Other	83007005
376	Rented	83007006
9	Owned but not yet paid off	83007006
234	Occupied rent-free	83007006
801	Owned and fully paid off	83007006
73	Other	83007006
420	Rented	83007007
522	Owned but not yet paid off	83007007
20	Occupied rent-free	83007007
770	Owned and fully paid off	83007007
20	Other	83007007
619	Rented	83007008
34	Owned but not yet paid off	83007008
224	Occupied rent-free	83007008
995	Owned and fully paid off	83007008
29	Other	83007008
1161	Rented	83007009
2	Owned but not yet paid off	83007009
60	Occupied rent-free	83007009
804	Owned and fully paid off	83007009
9	Other	83007009
1235	Rented	83007010
357	Owned but not yet paid off	83007010
457	Occupied rent-free	83007010
954	Owned and fully paid off	83007010
157	Other	83007010
781	Rented	83007011
305	Owned but not yet paid off	83007011
61	Occupied rent-free	83007011
959	Owned and fully paid off	83007011
63	Other	83007011
1382	Rented	83007012
274	Owned but not yet paid off	83007012
50	Occupied rent-free	83007012
1286	Owned and fully paid off	83007012
31	Other	83007012
649	Rented	83007013
111	Owned but not yet paid off	83007013
171	Occupied rent-free	83007013
1157	Owned and fully paid off	83007013
24	Other	83007013
658	Rented	83007014
193	Owned but not yet paid off	83007014
34	Occupied rent-free	83007014
672	Owned and fully paid off	83007014
34	Other	83007014
1012	Rented	83007015
514	Owned but not yet paid off	83007015
1005	Occupied rent-free	83007015
834	Owned and fully paid off	83007015
202	Other	83007015
1490	Rented	83007016
735	Owned but not yet paid off	83007016
543	Occupied rent-free	83007016
726	Owned and fully paid off	83007016
62	Other	83007016
903	Rented	83007017
443	Owned but not yet paid off	83007017
49	Occupied rent-free	83007017
236	Owned and fully paid off	83007017
62	Other	83007017
1156	Rented	83007018
1115	Owned but not yet paid off	83007018
185	Occupied rent-free	83007018
440	Owned and fully paid off	83007018
60	Other	83007018
1702	Rented	83007019
290	Owned but not yet paid off	83007019
881	Occupied rent-free	83007019
2557	Owned and fully paid off	83007019
165	Other	83007019
3165	Rented	83007020
313	Owned but not yet paid off	83007020
322	Occupied rent-free	83007020
1066	Owned and fully paid off	83007020
29	Other	83007020
1087	Rented	83007021
757	Owned but not yet paid off	83007021
26	Occupied rent-free	83007021
319	Owned and fully paid off	83007021
54	Other	83007021
407	Rented	83007022
238	Owned but not yet paid off	83007022
74	Occupied rent-free	83007022
2307	Owned and fully paid off	83007022
40	Other	83007022
443	Rented	83007023
26	Owned but not yet paid off	83007023
31	Occupied rent-free	83007023
965	Owned and fully paid off	83007023
10	Other	83007023
433	Rented	83007024
83	Owned but not yet paid off	83007024
151	Occupied rent-free	83007024
1521	Owned and fully paid off	83007024
16	Other	83007024
1525	Rented	83007025
998	Owned but not yet paid off	83007025
143	Occupied rent-free	83007025
338	Owned and fully paid off	83007025
47	Other	83007025
974	Rented	83007026
109	Owned but not yet paid off	83007026
517	Occupied rent-free	83007026
1888	Owned and fully paid off	83007026
128	Other	83007026
784	Rented	83007027
10	Owned but not yet paid off	83007027
197	Occupied rent-free	83007027
847	Owned and fully paid off	83007027
17	Other	83007027
1259	Rented	83007028
757	Owned but not yet paid off	83007028
114	Occupied rent-free	83007028
1207	Owned and fully paid off	83007028
212	Other	83007028
434	Rented	83007029
217	Owned but not yet paid off	83007029
19	Occupied rent-free	83007029
674	Owned and fully paid off	83007029
4	Other	83007029
644	Rented	83007030
1061	Owned but not yet paid off	83007030
78	Occupied rent-free	83007030
441	Owned and fully paid off	83007030
38	Other	83007030
846	Rented	83007031
135	Owned but not yet paid off	83007031
154	Occupied rent-free	83007031
1324	Owned and fully paid off	83007031
81	Other	83007031
919	Rented	83007032
202	Owned but not yet paid off	83007032
176	Occupied rent-free	83007032
1037	Owned and fully paid off	83007032
55	Other	83007032
384	Rented	83101001
90	Owned but not yet paid off	83101001
189	Occupied rent-free	83101001
967	Owned and fully paid off	83101001
17	Other	83101001
344	Rented	83101002
43	Owned but not yet paid off	83101002
519	Occupied rent-free	83101002
698	Owned and fully paid off	83101002
19	Other	83101002
710	Rented	83101003
355	Owned but not yet paid off	83101003
248	Occupied rent-free	83101003
2990	Owned and fully paid off	83101003
67	Other	83101003
219	Rented	83101004
107	Owned but not yet paid off	83101004
81	Occupied rent-free	83101004
1011	Owned and fully paid off	83101004
135	Other	83101004
372	Rented	83101005
30	Owned but not yet paid off	83101005
185	Occupied rent-free	83101005
1192	Owned and fully paid off	83101005
62	Other	83101005
523	Rented	83101006
79	Owned but not yet paid off	83101006
323	Occupied rent-free	83101006
799	Owned and fully paid off	83101006
54	Other	83101006
802	Rented	83101007
233	Owned but not yet paid off	83101007
1143	Occupied rent-free	83101007
600	Owned and fully paid off	83101007
237	Other	83101007
471	Rented	83101008
342	Owned but not yet paid off	83101008
510	Occupied rent-free	83101008
363	Owned and fully paid off	83101008
68	Other	83101008
884	Rented	83101009
372	Owned but not yet paid off	83101009
861	Occupied rent-free	83101009
762	Owned and fully paid off	83101009
85	Other	83101009
1059	Rented	83102001
23	Owned but not yet paid off	83102001
892	Occupied rent-free	83102001
2391	Owned and fully paid off	83102001
78	Other	83102001
537	Rented	83102002
119	Owned but not yet paid off	83102002
628	Occupied rent-free	83102002
1296	Owned and fully paid off	83102002
26	Other	83102002
463	Rented	83102003
68	Owned but not yet paid off	83102003
52	Occupied rent-free	83102003
757	Owned and fully paid off	83102003
7	Other	83102003
692	Rented	83102004
119	Owned but not yet paid off	83102004
830	Occupied rent-free	83102004
1218	Owned and fully paid off	83102004
19	Other	83102004
523	Rented	83102005
885	Owned but not yet paid off	83102005
75	Occupied rent-free	83102005
1222	Owned and fully paid off	83102005
38	Other	83102005
785	Rented	83102006
522	Owned but not yet paid off	83102006
900	Occupied rent-free	83102006
1162	Owned and fully paid off	83102006
159	Other	83102006
444	Rented	83102007
412	Owned but not yet paid off	83102007
67	Occupied rent-free	83102007
1279	Owned and fully paid off	83102007
48	Other	83102007
1100	Rented	83102008
78	Owned but not yet paid off	83102008
2411	Occupied rent-free	83102008
364	Owned and fully paid off	83102008
39	Other	83102008
1330	Rented	83102009
258	Owned but not yet paid off	83102009
855	Occupied rent-free	83102009
692	Owned and fully paid off	83102009
187	Other	83102009
434	Rented	83102010
64	Owned but not yet paid off	83102010
104	Occupied rent-free	83102010
1309	Owned and fully paid off	83102010
195	Other	83102010
480	Rented	83102011
125	Owned but not yet paid off	83102011
66	Occupied rent-free	83102011
909	Owned and fully paid off	83102011
19	Other	83102011
2080	Rented	83102012
508	Owned but not yet paid off	83102012
1282	Occupied rent-free	83102012
1014	Owned and fully paid off	83102012
103	Other	83102012
409	Rented	83102013
54	Owned but not yet paid off	83102013
128	Occupied rent-free	83102013
889	Owned and fully paid off	83102013
168	Other	83102013
1873	Rented	83102014
97	Owned but not yet paid off	83102014
1234	Occupied rent-free	83102014
2583	Owned and fully paid off	83102014
74	Other	83102014
2055	Rented	83102015
216	Owned but not yet paid off	83102015
1079	Occupied rent-free	83102015
2755	Owned and fully paid off	83102015
226	Other	83102015
605	Rented	83102016
137	Owned but not yet paid off	83102016
70	Occupied rent-free	83102016
1249	Owned and fully paid off	83102016
17	Other	83102016
1322	Rented	83102017
50	Owned but not yet paid off	83102017
43	Occupied rent-free	83102017
1281	Owned and fully paid off	83102017
80	Other	83102017
1231	Rented	83102018
1365	Owned but not yet paid off	83102018
117	Occupied rent-free	83102018
565	Owned and fully paid off	83102018
126	Other	83102018
2064	Rented	83102019
788	Owned but not yet paid off	83102019
1025	Occupied rent-free	83102019
445	Owned and fully paid off	83102019
187	Other	83102019
1181	Rented	83102020
939	Owned but not yet paid off	83102020
170	Occupied rent-free	83102020
372	Owned and fully paid off	83102020
101	Other	83102020
2551	Rented	83102021
1902	Owned but not yet paid off	83102021
803	Occupied rent-free	83102021
634	Owned and fully paid off	83102021
79	Other	83102021
1545	Rented	83102022
275	Owned but not yet paid off	83102022
40	Occupied rent-free	83102022
194	Owned and fully paid off	83102022
33	Other	83102022
630	Rented	83102023
627	Owned but not yet paid off	83102023
1145	Occupied rent-free	83102023
1423	Owned and fully paid off	83102023
46	Other	83102023
951	Rented	83102024
1044	Owned but not yet paid off	83102024
100	Occupied rent-free	83102024
597	Owned and fully paid off	83102024
56	Other	83102024
2019	Rented	83102025
102	Owned but not yet paid off	83102025
1199	Occupied rent-free	83102025
1498	Owned and fully paid off	83102025
40	Other	83102025
1295	Rented	83102026
556	Owned but not yet paid off	83102026
199	Occupied rent-free	83102026
649	Owned and fully paid off	83102026
79	Other	83102026
1121	Rented	83102027
514	Owned but not yet paid off	83102027
630	Occupied rent-free	83102027
317	Owned and fully paid off	83102027
56	Other	83102027
1327	Rented	83102028
134	Owned but not yet paid off	83102028
1479	Occupied rent-free	83102028
1652	Owned and fully paid off	83102028
192	Other	83102028
811	Rented	83102029
111	Owned but not yet paid off	83102029
2673	Occupied rent-free	83102029
2562	Owned and fully paid off	83102029
72	Other	83102029
580	Rented	83102030
561	Owned but not yet paid off	83102030
351	Occupied rent-free	83102030
1258	Owned and fully paid off	83102030
204	Other	83102030
576	Rented	83102031
170	Owned but not yet paid off	83102031
232	Occupied rent-free	83102031
1574	Owned and fully paid off	83102031
22	Other	83102031
2347	Rented	83102032
392	Owned but not yet paid off	83102032
788	Occupied rent-free	83102032
792	Owned and fully paid off	83102032
161	Other	83102032
1510	Rented	83102033
1199	Owned but not yet paid off	83102033
73	Occupied rent-free	83102033
774	Owned and fully paid off	83102033
88	Other	83102033
1534	Rented	83102034
1386	Owned but not yet paid off	83102034
1135	Occupied rent-free	83102034
842	Owned and fully paid off	83102034
193	Other	83102034
368	Rented	83103001
22	Owned but not yet paid off	83103001
23	Occupied rent-free	83103001
749	Owned and fully paid off	83103001
16	Other	83103001
1092	Rented	83103002
132	Owned but not yet paid off	83103002
557	Occupied rent-free	83103002
1780	Owned and fully paid off	83103002
80	Other	83103002
854	Rented	83103003
143	Owned but not yet paid off	83103003
190	Occupied rent-free	83103003
795	Owned and fully paid off	83103003
55	Other	83103003
1276	Rented	83103004
60	Owned but not yet paid off	83103004
351	Occupied rent-free	83103004
211	Owned and fully paid off	83103004
69	Other	83103004
797	Rented	83103005
166	Owned but not yet paid off	83103005
165	Occupied rent-free	83103005
209	Owned and fully paid off	83103005
16	Other	83103005
1108	Rented	83103006
92	Owned but not yet paid off	83103006
549	Occupied rent-free	83103006
133	Owned and fully paid off	83103006
226	Other	83103006
769	Rented	83103007
207	Owned but not yet paid off	83103007
234	Occupied rent-free	83103007
250	Owned and fully paid off	83103007
35	Other	83103007
1886	Rented	83103008
244	Owned but not yet paid off	83103008
493	Occupied rent-free	83103008
968	Owned and fully paid off	83103008
42	Other	83103008
153	Rented	83103009
74	Owned but not yet paid off	83103009
733	Occupied rent-free	83103009
308	Owned and fully paid off	83103009
55	Other	83103009
1157	Rented	83103010
916	Owned but not yet paid off	83103010
185	Occupied rent-free	83103010
1092	Owned and fully paid off	83103010
107	Other	83103010
1852	Rented	83103011
819	Owned but not yet paid off	83103011
115	Occupied rent-free	83103011
378	Owned and fully paid off	83103011
103	Other	83103011
1530	Rented	83103012
1333	Owned but not yet paid off	83103012
120	Occupied rent-free	83103012
638	Owned and fully paid off	83103012
124	Other	83103012
1240	Rented	83103013
355	Owned but not yet paid off	83103013
112	Occupied rent-free	83103013
276	Owned and fully paid off	83103013
51	Other	83103013
622	Rented	83103014
603	Owned but not yet paid off	83103014
184	Occupied rent-free	83103014
375	Owned and fully paid off	83103014
41	Other	83103014
542	Rented	83103015
662	Owned but not yet paid off	83103015
83	Occupied rent-free	83103015
358	Owned and fully paid off	83103015
27	Other	83103015
516	Rented	83103016
575	Owned but not yet paid off	83103016
276	Occupied rent-free	83103016
537	Owned and fully paid off	83103016
124	Other	83103016
826	Rented	83103017
131	Owned but not yet paid off	83103017
308	Occupied rent-free	83103017
990	Owned and fully paid off	83103017
118	Other	83103017
451	Rented	83103018
51	Owned but not yet paid off	83103018
12	Occupied rent-free	83103018
755	Owned and fully paid off	83103018
21	Other	83103018
1015	Rented	83103019
61	Owned but not yet paid off	83103019
39	Occupied rent-free	83103019
624	Owned and fully paid off	83103019
6	Other	83103019
402	Rented	83103020
120	Owned but not yet paid off	83103020
7	Occupied rent-free	83103020
585	Owned and fully paid off	83103020
16	Other	83103020
523	Rented	83103021
347	Owned but not yet paid off	83103021
38	Occupied rent-free	83103021
689	Owned and fully paid off	83103021
18	Other	83103021
417	Rented	83103022
21	Owned but not yet paid off	83103022
23	Occupied rent-free	83103022
397	Owned and fully paid off	83103022
9	Other	83103022
1067	Rented	83103023
439	Owned but not yet paid off	83103023
103	Occupied rent-free	83103023
1787	Owned and fully paid off	83103023
44	Other	83103023
150	Rented	83103024
17	Owned but not yet paid off	83103024
10	Occupied rent-free	83103024
259	Owned and fully paid off	83103024
5	Other	83103024
1603	Rented	83103025
169	Owned but not yet paid off	83103025
380	Occupied rent-free	83103025
1566	Owned and fully paid off	83103025
198	Other	83103025
357	Rented	83103026
5	Owned but not yet paid off	83103026
4	Occupied rent-free	83103026
261	Owned and fully paid off	83103026
1	Other	83103026
842	Rented	83103027
35	Owned but not yet paid off	83103027
767	Occupied rent-free	83103027
598	Owned and fully paid off	83103027
10	Other	83103027
3460	Rented	83103028
165	Owned but not yet paid off	83103028
422	Occupied rent-free	83103028
2592	Owned and fully paid off	83103028
66	Other	83103028
165	Rented	83103029
45	Owned but not yet paid off	83103029
772	Occupied rent-free	83103029
717	Owned and fully paid off	83103029
109	Other	83103029
444	Rented	83104001
114	Owned but not yet paid off	83104001
47	Occupied rent-free	83104001
727	Owned and fully paid off	83104001
269	Other	83104001
174	Rented	83104002
80	Owned but not yet paid off	83104002
411	Occupied rent-free	83104002
479	Owned and fully paid off	83104002
50	Other	83104002
379	Rented	83104003
252	Owned but not yet paid off	83104003
57	Occupied rent-free	83104003
1078	Owned and fully paid off	83104003
13	Other	83104003
436	Rented	83104004
328	Owned but not yet paid off	83104004
344	Occupied rent-free	83104004
606	Owned and fully paid off	83104004
76	Other	83104004
679	Rented	83104005
21	Owned but not yet paid off	83104005
553	Occupied rent-free	83104005
502	Owned and fully paid off	83104005
190	Other	83104005
753	Rented	83104006
85	Owned but not yet paid off	83104006
289	Occupied rent-free	83104006
1089	Owned and fully paid off	83104006
51	Other	83104006
520	Rented	83104007
100	Owned but not yet paid off	83104007
60	Occupied rent-free	83104007
1107	Owned and fully paid off	83104007
27	Other	83104007
495	Rented	83104008
168	Owned but not yet paid off	83104008
131	Occupied rent-free	83104008
502	Owned and fully paid off	83104008
33	Other	83104008
280	Rented	83105001
8	Owned but not yet paid off	83105001
46	Occupied rent-free	83105001
2282	Owned and fully paid off	83105001
4	Other	83105001
173	Rented	83105002
27	Owned but not yet paid off	83105002
265	Occupied rent-free	83105002
2519	Owned and fully paid off	83105002
5	Other	83105002
73	Rented	83105003
148	Owned but not yet paid off	83105003
156	Occupied rent-free	83105003
1664	Owned and fully paid off	83105003
5	Other	83105003
541	Rented	83105004
400	Owned but not yet paid off	83105004
1375	Occupied rent-free	83105004
2013	Owned and fully paid off	83105004
27	Other	83105004
41	Rented	83105005
3	Owned but not yet paid off	83105005
16	Occupied rent-free	83105005
1581	Owned and fully paid off	83105005
12	Other	83105005
70	Rented	83105006
75	Owned but not yet paid off	83105006
913	Occupied rent-free	83105006
1553	Owned and fully paid off	83105006
74	Other	83105006
115	Rented	83105007
5	Owned but not yet paid off	83105007
153	Occupied rent-free	83105007
2071	Owned and fully paid off	83105007
4	Other	83105007
152	Rented	83105008
24	Owned but not yet paid off	83105008
765	Occupied rent-free	83105008
1989	Owned and fully paid off	83105008
29	Other	83105008
60	Rented	83105009
11	Owned but not yet paid off	83105009
98	Occupied rent-free	83105009
1693	Owned and fully paid off	83105009
426	Other	83105009
60	Rented	83105010
10	Owned but not yet paid off	83105010
36	Occupied rent-free	83105010
1545	Owned and fully paid off	83105010
12	Other	83105010
158	Rented	83105011
95	Owned but not yet paid off	83105011
458	Occupied rent-free	83105011
1965	Owned and fully paid off	83105011
17	Other	83105011
38	Rented	83105012
37	Owned but not yet paid off	83105012
22	Occupied rent-free	83105012
1377	Owned and fully paid off	83105012
2	Other	83105012
73	Rented	83105013
134	Owned but not yet paid off	83105013
159	Occupied rent-free	83105013
1488	Owned and fully paid off	83105013
8	Other	83105013
479	Rented	83105014
157	Owned but not yet paid off	83105014
1740	Occupied rent-free	83105014
1493	Owned and fully paid off	83105014
40	Other	83105014
108	Rented	83105015
35	Owned but not yet paid off	83105015
93	Occupied rent-free	83105015
1969	Owned and fully paid off	83105015
17	Other	83105015
106	Rented	83105016
14	Owned but not yet paid off	83105016
97	Occupied rent-free	83105016
1879	Owned and fully paid off	83105016
136	Other	83105016
120	Rented	83105017
19	Owned but not yet paid off	83105017
311	Occupied rent-free	83105017
867	Owned and fully paid off	83105017
864	Other	83105017
57	Rented	83105018
21	Owned but not yet paid off	83105018
85	Occupied rent-free	83105018
2334	Owned and fully paid off	83105018
20	Other	83105018
158	Rented	83105019
24	Owned but not yet paid off	83105019
954	Occupied rent-free	83105019
1482	Owned and fully paid off	83105019
134	Other	83105019
95	Rented	83105020
18	Owned but not yet paid off	83105020
821	Occupied rent-free	83105020
2733	Owned and fully paid off	83105020
24	Other	83105020
73	Rented	83105021
76	Owned but not yet paid off	83105021
317	Occupied rent-free	83105021
1608	Owned and fully paid off	83105021
49	Other	83105021
62	Rented	83105022
17	Owned but not yet paid off	83105022
614	Occupied rent-free	83105022
1954	Owned and fully paid off	83105022
15	Other	83105022
85	Rented	83105023
62	Owned but not yet paid off	83105023
222	Occupied rent-free	83105023
1727	Owned and fully paid off	83105023
9	Other	83105023
89	Rented	83105024
119	Owned but not yet paid off	83105024
48	Occupied rent-free	83105024
2203	Owned and fully paid off	83105024
12	Other	83105024
292	Rented	83105025
38	Owned but not yet paid off	83105025
95	Occupied rent-free	83105025
1589	Owned and fully paid off	83105025
15	Other	83105025
161	Rented	83105026
13	Owned but not yet paid off	83105026
39	Occupied rent-free	83105026
1540	Owned and fully paid off	83105026
10	Other	83105026
55	Rented	83105027
21	Owned but not yet paid off	83105027
38	Occupied rent-free	83105027
1768	Owned and fully paid off	83105027
4	Other	83105027
107	Rented	83105028
11	Owned but not yet paid off	83105028
19	Occupied rent-free	83105028
1522	Owned and fully paid off	83105028
2	Other	83105028
127	Rented	83105029
5	Owned but not yet paid off	83105029
15	Occupied rent-free	83105029
1178	Owned and fully paid off	83105029
10	Other	83105029
72	Rented	83105030
13	Owned but not yet paid off	83105030
353	Occupied rent-free	83105030
1186	Owned and fully paid off	83105030
921	Other	83105030
52	Rented	83105031
10	Owned but not yet paid off	83105031
132	Occupied rent-free	83105031
1914	Owned and fully paid off	83105031
4	Other	83105031
267	Rented	83105032
368	Owned but not yet paid off	83105032
233	Occupied rent-free	83105032
885	Owned and fully paid off	83105032
45	Other	83105032
133	Rented	83106001
96	Owned but not yet paid off	83106001
181	Occupied rent-free	83106001
1623	Owned and fully paid off	83106001
13	Other	83106001
481	Rented	83106002
7	Owned but not yet paid off	83106002
77	Occupied rent-free	83106002
1352	Owned and fully paid off	83106002
657	Other	83106002
185	Rented	83106003
5	Owned but not yet paid off	83106003
250	Occupied rent-free	83106003
1377	Owned and fully paid off	83106003
11	Other	83106003
212	Rented	83106004
73	Owned but not yet paid off	83106004
354	Occupied rent-free	83106004
1142	Owned and fully paid off	83106004
6	Other	83106004
180	Rented	83106005
117	Owned but not yet paid off	83106005
92	Occupied rent-free	83106005
1736	Owned and fully paid off	83106005
14	Other	83106005
137	Rented	83106006
185	Owned but not yet paid off	83106006
251	Occupied rent-free	83106006
1873	Owned and fully paid off	83106006
11	Other	83106006
13	Rented	83106007
0	Owned but not yet paid off	83106007
104	Occupied rent-free	83106007
1396	Owned and fully paid off	83106007
137	Other	83106007
32	Rented	83106008
131	Owned but not yet paid off	83106008
15	Occupied rent-free	83106008
911	Owned and fully paid off	83106008
622	Other	83106008
47	Rented	83106009
7	Owned but not yet paid off	83106009
104	Occupied rent-free	83106009
1020	Owned and fully paid off	83106009
4	Other	83106009
48	Rented	83106010
11	Owned but not yet paid off	83106010
143	Occupied rent-free	83106010
1612	Owned and fully paid off	83106010
16	Other	83106010
67	Rented	83106011
18	Owned but not yet paid off	83106011
239	Occupied rent-free	83106011
1520	Owned and fully paid off	83106011
17	Other	83106011
68	Rented	83106012
11	Owned but not yet paid off	83106012
27	Occupied rent-free	83106012
2068	Owned and fully paid off	83106012
3	Other	83106012
42	Rented	83106013
7	Owned but not yet paid off	83106013
126	Occupied rent-free	83106013
1577	Owned and fully paid off	83106013
4	Other	83106013
52	Rented	83106014
140	Owned but not yet paid off	83106014
504	Occupied rent-free	83106014
901	Owned and fully paid off	83106014
3	Other	83106014
93	Rented	83106015
10	Owned but not yet paid off	83106015
111	Occupied rent-free	83106015
1991	Owned and fully paid off	83106015
105	Other	83106015
42	Rented	83106016
85	Owned but not yet paid off	83106016
5	Occupied rent-free	83106016
910	Owned and fully paid off	83106016
2	Other	83106016
179	Rented	83106017
19	Owned but not yet paid off	83106017
37	Occupied rent-free	83106017
2218	Owned and fully paid off	83106017
8	Other	83106017
75	Rented	83106018
132	Owned but not yet paid off	83106018
635	Occupied rent-free	83106018
932	Owned and fully paid off	83106018
5	Other	83106018
68	Rented	83106019
181	Owned but not yet paid off	83106019
242	Occupied rent-free	83106019
1930	Owned and fully paid off	83106019
5	Other	83106019
43	Rented	83106020
147	Owned but not yet paid off	83106020
230	Occupied rent-free	83106020
1289	Owned and fully paid off	83106020
16	Other	83106020
23	Rented	83106021
101	Owned but not yet paid off	83106021
128	Occupied rent-free	83106021
1766	Owned and fully paid off	83106021
17	Other	83106021
41	Rented	83106022
5	Owned but not yet paid off	83106022
57	Occupied rent-free	83106022
2339	Owned and fully paid off	83106022
13	Other	83106022
28	Rented	83106023
15	Owned but not yet paid off	83106023
514	Occupied rent-free	83106023
983	Owned and fully paid off	83106023
14	Other	83106023
111	Rented	83106024
141	Owned but not yet paid off	83106024
1171	Occupied rent-free	83106024
1548	Owned and fully paid off	83106024
22	Other	83106024
16	Rented	83106025
11	Owned but not yet paid off	83106025
22	Occupied rent-free	83106025
1852	Owned and fully paid off	83106025
4	Other	83106025
35	Rented	83106026
15	Owned but not yet paid off	83106026
142	Occupied rent-free	83106026
2158	Owned and fully paid off	83106026
11	Other	83106026
37	Rented	83106027
6	Owned but not yet paid off	83106027
250	Occupied rent-free	83106027
1610	Owned and fully paid off	83106027
7	Other	83106027
52	Rented	83106028
42	Owned but not yet paid off	83106028
316	Occupied rent-free	83106028
1366	Owned and fully paid off	83106028
3	Other	83106028
101	Rented	83106029
9	Owned but not yet paid off	83106029
82	Occupied rent-free	83106029
2132	Owned and fully paid off	83106029
12	Other	83106029
23	Rented	83106030
7	Owned but not yet paid off	83106030
41	Occupied rent-free	83106030
2136	Owned and fully paid off	83106030
5	Other	83106030
36	Rented	83106031
35	Owned but not yet paid off	83106031
30	Occupied rent-free	83106031
2171	Owned and fully paid off	83106031
7	Other	83106031
517	Rented	83201001
10	Owned but not yet paid off	83201001
95	Occupied rent-free	83201001
416	Owned and fully paid off	83201001
9	Other	83201001
1633	Rented	83201002
122	Owned but not yet paid off	83201002
126	Occupied rent-free	83201002
985	Owned and fully paid off	83201002
50	Other	83201002
1742	Rented	83201003
108	Owned but not yet paid off	83201003
239	Occupied rent-free	83201003
1090	Owned and fully paid off	83201003
80	Other	83201003
1427	Rented	83201004
135	Owned but not yet paid off	83201004
785	Occupied rent-free	83201004
260	Owned and fully paid off	83201004
87	Other	83201004
996	Rented	83201005
162	Owned but not yet paid off	83201005
618	Occupied rent-free	83201005
554	Owned and fully paid off	83201005
223	Other	83201005
1202	Rented	83201006
139	Owned but not yet paid off	83201006
245	Occupied rent-free	83201006
689	Owned and fully paid off	83201006
30	Other	83201006
1299	Rented	83201007
386	Owned but not yet paid off	83201007
664	Occupied rent-free	83201007
977	Owned and fully paid off	83201007
164	Other	83201007
131	Rented	83201008
18	Owned but not yet paid off	83201008
31	Occupied rent-free	83201008
1931	Owned and fully paid off	83201008
76	Other	83201008
64	Rented	83201009
22	Owned but not yet paid off	83201009
5	Occupied rent-free	83201009
2235	Owned and fully paid off	83201009
55	Other	83201009
1055	Rented	83201010
103	Owned but not yet paid off	83201010
686	Occupied rent-free	83201010
403	Owned and fully paid off	83201010
36	Other	83201010
1409	Rented	83201011
52	Owned but not yet paid off	83201011
800	Occupied rent-free	83201011
214	Owned and fully paid off	83201011
271	Other	83201011
511	Rented	83201012
165	Owned but not yet paid off	83201012
11	Occupied rent-free	83201012
252	Owned and fully paid off	83201012
19	Other	83201012
781	Rented	83201013
41	Owned but not yet paid off	83201013
92	Occupied rent-free	83201013
183	Owned and fully paid off	83201013
80	Other	83201013
2370	Rented	83201014
251	Owned but not yet paid off	83201014
114	Occupied rent-free	83201014
568	Owned and fully paid off	83201014
52	Other	83201014
818	Rented	83202001
441	Owned but not yet paid off	83202001
1145	Occupied rent-free	83202001
3715	Owned and fully paid off	83202001
234	Other	83202001
304	Rented	83202002
422	Owned but not yet paid off	83202002
1406	Occupied rent-free	83202002
3137	Owned and fully paid off	83202002
36	Other	83202002
819	Rented	83202003
210	Owned but not yet paid off	83202003
865	Occupied rent-free	83202003
3012	Owned and fully paid off	83202003
139	Other	83202003
231	Rented	83202004
24	Owned but not yet paid off	83202004
305	Occupied rent-free	83202004
1776	Owned and fully paid off	83202004
28	Other	83202004
102	Rented	83202005
137	Owned but not yet paid off	83202005
219	Occupied rent-free	83202005
3733	Owned and fully paid off	83202005
25	Other	83202005
242	Rented	83202006
62	Owned but not yet paid off	83202006
215	Occupied rent-free	83202006
3627	Owned and fully paid off	83202006
33	Other	83202006
206	Rented	83202007
35	Owned but not yet paid off	83202007
652	Occupied rent-free	83202007
2401	Owned and fully paid off	83202007
19	Other	83202007
1069	Rented	83202008
310	Owned but not yet paid off	83202008
640	Occupied rent-free	83202008
2879	Owned and fully paid off	83202008
89	Other	83202008
90	Rented	83202009
310	Owned but not yet paid off	83202009
439	Occupied rent-free	83202009
2980	Owned and fully paid off	83202009
17	Other	83202009
120	Rented	83202010
127	Owned but not yet paid off	83202010
443	Occupied rent-free	83202010
2531	Owned and fully paid off	83202010
349	Other	83202010
527	Rented	83202011
41	Owned but not yet paid off	83202011
443	Occupied rent-free	83202011
3020	Owned and fully paid off	83202011
96	Other	83202011
3214	Rented	83202012
117	Owned but not yet paid off	83202012
1582	Occupied rent-free	83202012
780	Owned and fully paid off	83202012
104	Other	83202012
313	Rented	83202013
50	Owned but not yet paid off	83202013
154	Occupied rent-free	83202013
2226	Owned and fully paid off	83202013
18	Other	83202013
1859	Rented	83202014
882	Owned but not yet paid off	83202014
1187	Occupied rent-free	83202014
1597	Owned and fully paid off	83202014
71	Other	83202014
1680	Rented	83202015
1361	Owned but not yet paid off	83202015
121	Occupied rent-free	83202015
645	Owned and fully paid off	83202015
71	Other	83202015
1655	Rented	83202016
778	Owned but not yet paid off	83202016
473	Occupied rent-free	83202016
440	Owned and fully paid off	83202016
86	Other	83202016
1846	Rented	83202017
1318	Owned but not yet paid off	83202017
157	Occupied rent-free	83202017
883	Owned and fully paid off	83202017
67	Other	83202017
1114	Rented	83202018
777	Owned but not yet paid off	83202018
1077	Occupied rent-free	83202018
1723	Owned and fully paid off	83202018
130	Other	83202018
1076	Rented	83202019
195	Owned but not yet paid off	83202019
463	Occupied rent-free	83202019
2503	Owned and fully paid off	83202019
80	Other	83202019
722	Rented	83202020
360	Owned but not yet paid off	83202020
418	Occupied rent-free	83202020
2425	Owned and fully paid off	83202020
51	Other	83202020
735	Rented	83202021
132	Owned but not yet paid off	83202021
782	Occupied rent-free	83202021
2684	Owned and fully paid off	83202021
39	Other	83202021
527	Rented	83202022
36	Owned but not yet paid off	83202022
764	Occupied rent-free	83202022
2319	Owned and fully paid off	83202022
36	Other	83202022
230	Rented	83202023
62	Owned but not yet paid off	83202023
416	Occupied rent-free	83202023
1631	Owned and fully paid off	83202023
157	Other	83202023
139	Rented	83202024
338	Owned but not yet paid off	83202024
343	Occupied rent-free	83202024
2012	Owned and fully paid off	83202024
11	Other	83202024
207	Rented	83202025
41	Owned but not yet paid off	83202025
365	Occupied rent-free	83202025
3361	Owned and fully paid off	83202025
21	Other	83202025
422	Rented	83202026
79	Owned but not yet paid off	83202026
981	Occupied rent-free	83202026
3001	Owned and fully paid off	83202026
165	Other	83202026
541	Rented	83202027
381	Owned but not yet paid off	83202027
685	Occupied rent-free	83202027
3322	Owned and fully paid off	83202027
59	Other	83202027
396	Rented	83202028
121	Owned but not yet paid off	83202028
297	Occupied rent-free	83202028
3171	Owned and fully paid off	83202028
46	Other	83202028
432	Rented	83202029
74	Owned but not yet paid off	83202029
602	Occupied rent-free	83202029
2771	Owned and fully paid off	83202029
120	Other	83202029
1311	Rented	83202030
867	Owned but not yet paid off	83202030
195	Occupied rent-free	83202030
881	Owned and fully paid off	83202030
82	Other	83202030
201	Rented	83202031
63	Owned but not yet paid off	83202031
369	Occupied rent-free	83202031
2020	Owned and fully paid off	83202031
10	Other	83202031
888	Rented	83202032
100	Owned but not yet paid off	83202032
1030	Occupied rent-free	83202032
3352	Owned and fully paid off	83202032
27	Other	83202032
845	Rented	83202033
222	Owned but not yet paid off	83202033
281	Occupied rent-free	83202033
2293	Owned and fully paid off	83202033
37	Other	83202033
98	Rented	83202034
163	Owned but not yet paid off	83202034
67	Occupied rent-free	83202034
2882	Owned and fully paid off	83202034
16	Other	83202034
392	Rented	83202035
78	Owned but not yet paid off	83202035
500	Occupied rent-free	83202035
3160	Owned and fully paid off	83202035
6	Other	83202035
287	Rented	83202036
47	Owned but not yet paid off	83202036
854	Occupied rent-free	83202036
1873	Owned and fully paid off	83202036
128	Other	83202036
95	Rented	83202037
128	Owned but not yet paid off	83202037
739	Occupied rent-free	83202037
2862	Owned and fully paid off	83202037
23	Other	83202037
1698	Rented	83202038
1270	Owned but not yet paid off	83202038
698	Occupied rent-free	83202038
2987	Owned and fully paid off	83202038
148	Other	83202038
594	Rented	83202039
158	Owned but not yet paid off	83202039
868	Occupied rent-free	83202039
2533	Owned and fully paid off	83202039
142	Other	83202039
339	Rented	83203001
131	Owned but not yet paid off	83203001
743	Occupied rent-free	83203001
558	Owned and fully paid off	83203001
67	Other	83203001
678	Rented	83203002
31	Owned but not yet paid off	83203002
1335	Occupied rent-free	83203002
851	Owned and fully paid off	83203002
26	Other	83203002
714	Rented	83203003
100	Owned but not yet paid off	83203003
569	Occupied rent-free	83203003
1604	Owned and fully paid off	83203003
172	Other	83203003
451	Rented	83203004
51	Owned but not yet paid off	83203004
460	Occupied rent-free	83203004
1385	Owned and fully paid off	83203004
28	Other	83203004
368	Rented	83203005
51	Owned but not yet paid off	83203005
56	Occupied rent-free	83203005
1178	Owned and fully paid off	83203005
10	Other	83203005
367	Rented	83203006
83	Owned but not yet paid off	83203006
258	Occupied rent-free	83203006
946	Owned and fully paid off	83203006
11	Other	83203006
711	Rented	83203007
100	Owned but not yet paid off	83203007
92	Occupied rent-free	83203007
424	Owned and fully paid off	83203007
27	Other	83203007
741	Rented	83203008
367	Owned but not yet paid off	83203008
298	Occupied rent-free	83203008
1283	Owned and fully paid off	83203008
37	Other	83203008
701	Rented	83203009
382	Owned but not yet paid off	83203009
87	Occupied rent-free	83203009
671	Owned and fully paid off	83203009
23	Other	83203009
469	Rented	83204001
62	Owned but not yet paid off	83204001
251	Occupied rent-free	83204001
2343	Owned and fully paid off	83204001
12	Other	83204001
295	Rented	83204002
376	Owned but not yet paid off	83204002
786	Occupied rent-free	83204002
3653	Owned and fully paid off	83204002
23	Other	83204002
499	Rented	83204003
123	Owned but not yet paid off	83204003
1084	Occupied rent-free	83204003
2434	Owned and fully paid off	83204003
51	Other	83204003
273	Rented	83204004
48	Owned but not yet paid off	83204004
556	Occupied rent-free	83204004
1235	Owned and fully paid off	83204004
8	Other	83204004
235	Rented	83204005
134	Owned but not yet paid off	83204005
541	Occupied rent-free	83204005
1818	Owned and fully paid off	83204005
6	Other	83204005
1307	Rented	83204006
177	Owned but not yet paid off	83204006
2017	Occupied rent-free	83204006
955	Owned and fully paid off	83204006
415	Other	83204006
1783	Rented	83204007
456	Owned but not yet paid off	83204007
1801	Occupied rent-free	83204007
1223	Owned and fully paid off	83204007
930	Other	83204007
39	Rented	83204008
34	Owned but not yet paid off	83204008
785	Occupied rent-free	83204008
2220	Owned and fully paid off	83204008
13	Other	83204008
364	Rented	83204009
129	Owned but not yet paid off	83204009
497	Occupied rent-free	83204009
2519	Owned and fully paid off	83204009
13	Other	83204009
116	Rented	83204010
281	Owned but not yet paid off	83204010
417	Occupied rent-free	83204010
2193	Owned and fully paid off	83204010
100	Other	83204010
311	Rented	83204011
313	Owned but not yet paid off	83204011
305	Occupied rent-free	83204011
1976	Owned and fully paid off	83204011
8	Other	83204011
38	Rented	83204012
185	Owned but not yet paid off	83204012
130	Occupied rent-free	83204012
1792	Owned and fully paid off	83204012
10	Other	83204012
25	Rented	83204013
94	Owned but not yet paid off	83204013
480	Occupied rent-free	83204013
1279	Owned and fully paid off	83204013
9	Other	83204013
70	Rented	83204014
8	Owned but not yet paid off	83204014
282	Occupied rent-free	83204014
1901	Owned and fully paid off	83204014
43	Other	83204014
88	Rented	83204015
249	Owned but not yet paid off	83204015
609	Occupied rent-free	83204015
1682	Owned and fully paid off	83204015
21	Other	83204015
36	Rented	83204016
18	Owned but not yet paid off	83204016
535	Occupied rent-free	83204016
1199	Owned and fully paid off	83204016
449	Other	83204016
72	Rented	83204017
115	Owned but not yet paid off	83204017
193	Occupied rent-free	83204017
1273	Owned and fully paid off	83204017
8	Other	83204017
38	Rented	83204018
314	Owned but not yet paid off	83204018
300	Occupied rent-free	83204018
1401	Owned and fully paid off	83204018
1	Other	83204018
42	Rented	83204019
3	Owned but not yet paid off	83204019
55	Occupied rent-free	83204019
1383	Owned and fully paid off	83204019
433	Other	83204019
227	Rented	83204020
99	Owned but not yet paid off	83204020
285	Occupied rent-free	83204020
3436	Owned and fully paid off	83204020
115	Other	83204020
253	Rented	83204021
109	Owned but not yet paid off	83204021
189	Occupied rent-free	83204021
3507	Owned and fully paid off	83204021
131	Other	83204021
482	Rented	83204022
67	Owned but not yet paid off	83204022
185	Occupied rent-free	83204022
2209	Owned and fully paid off	83204022
108	Other	83204022
16	Rented	83204023
18	Owned but not yet paid off	83204023
182	Occupied rent-free	83204023
1401	Owned and fully paid off	83204023
1	Other	83204023
115	Rented	83204024
20	Owned but not yet paid off	83204024
247	Occupied rent-free	83204024
2287	Owned and fully paid off	83204024
14	Other	83204024
29	Rented	83204025
12	Owned but not yet paid off	83204025
230	Occupied rent-free	83204025
1807	Owned and fully paid off	83204025
14	Other	83204025
190	Rented	83204026
10	Owned but not yet paid off	83204026
242	Occupied rent-free	83204026
978	Owned and fully paid off	83204026
12	Other	83204026
245	Rented	83204027
210	Owned but not yet paid off	83204027
443	Occupied rent-free	83204027
1484	Owned and fully paid off	83204027
437	Other	83204027
57	Rented	83204028
13	Owned but not yet paid off	83204028
526	Occupied rent-free	83204028
465	Owned and fully paid off	83204028
169	Other	83204028
355	Rented	83204029
190	Owned but not yet paid off	83204029
1042	Occupied rent-free	83204029
973	Owned and fully paid off	83204029
518	Other	83204029
1503	Rented	83204030
407	Owned but not yet paid off	83204030
1662	Occupied rent-free	83204030
1304	Owned and fully paid off	83204030
185	Other	83204030
66	Rented	83204031
252	Owned but not yet paid off	83204031
234	Occupied rent-free	83204031
1191	Owned and fully paid off	83204031
22	Other	83204031
54	Rented	83204032
96	Owned but not yet paid off	83204032
455	Occupied rent-free	83204032
1593	Owned and fully paid off	83204032
79	Other	83204032
243	Rented	83204033
60	Owned but not yet paid off	83204033
953	Occupied rent-free	83204033
1321	Owned and fully paid off	83204033
291	Other	83204033
459	Rented	83205001
190	Owned but not yet paid off	83205001
1641	Occupied rent-free	83205001
2866	Owned and fully paid off	83205001
14	Other	83205001
50	Rented	83205002
15	Owned but not yet paid off	83205002
1465	Occupied rent-free	83205002
1005	Owned and fully paid off	83205002
154	Other	83205002
144	Rented	83205003
26	Owned but not yet paid off	83205003
2126	Occupied rent-free	83205003
1154	Owned and fully paid off	83205003
40	Other	83205003
40	Rented	83205004
188	Owned but not yet paid off	83205004
105	Occupied rent-free	83205004
2318	Owned and fully paid off	83205004
13	Other	83205004
25	Rented	83205005
3	Owned but not yet paid off	83205005
253	Occupied rent-free	83205005
1667	Owned and fully paid off	83205005
492	Other	83205005
34	Rented	83205006
31	Owned but not yet paid off	83205006
149	Occupied rent-free	83205006
3858	Owned and fully paid off	83205006
234	Other	83205006
118	Rented	83205007
74	Owned but not yet paid off	83205007
569	Occupied rent-free	83205007
3206	Owned and fully paid off	83205007
61	Other	83205007
165	Rented	83205008
95	Owned but not yet paid off	83205008
263	Occupied rent-free	83205008
2827	Owned and fully paid off	83205008
8	Other	83205008
990	Rented	83205009
67	Owned but not yet paid off	83205009
349	Occupied rent-free	83205009
4005	Owned and fully paid off	83205009
37	Other	83205009
79	Rented	83205010
138	Owned but not yet paid off	83205010
1136	Occupied rent-free	83205010
1900	Owned and fully paid off	83205010
144	Other	83205010
84	Rented	83205011
167	Owned but not yet paid off	83205011
159	Occupied rent-free	83205011
3137	Owned and fully paid off	83205011
57	Other	83205011
34	Rented	83205012
64	Owned but not yet paid off	83205012
89	Occupied rent-free	83205012
3097	Owned and fully paid off	83205012
3	Other	83205012
42	Rented	83205013
17	Owned but not yet paid off	83205013
87	Occupied rent-free	83205013
2782	Owned and fully paid off	83205013
20	Other	83205013
50	Rented	83205014
10	Owned but not yet paid off	83205014
245	Occupied rent-free	83205014
2800	Owned and fully paid off	83205014
10	Other	83205014
32	Rented	83205015
23	Owned but not yet paid off	83205015
92	Occupied rent-free	83205015
3517	Owned and fully paid off	83205015
5	Other	83205015
29	Rented	83205016
21	Owned but not yet paid off	83205016
23	Occupied rent-free	83205016
2680	Owned and fully paid off	83205016
7	Other	83205016
310	Rented	83205017
109	Owned but not yet paid off	83205017
843	Occupied rent-free	83205017
2785	Owned and fully paid off	83205017
10	Other	83205017
428	Rented	83205018
60	Owned but not yet paid off	83205018
631	Occupied rent-free	83205018
4015	Owned and fully paid off	83205018
23	Other	83205018
66	Rented	83205019
28	Owned but not yet paid off	83205019
1078	Occupied rent-free	83205019
2845	Owned and fully paid off	83205019
27	Other	83205019
23	Rented	83205020
11	Owned but not yet paid off	83205020
1204	Occupied rent-free	83205020
1739	Owned and fully paid off	83205020
4	Other	83205020
46	Rented	83205021
6	Owned but not yet paid off	83205021
76	Occupied rent-free	83205021
3185	Owned and fully paid off	83205021
2	Other	83205021
89	Rented	83205022
31	Owned but not yet paid off	83205022
1028	Occupied rent-free	83205022
2084	Owned and fully paid off	83205022
67	Other	83205022
34	Rented	83205023
46	Owned but not yet paid off	83205023
1477	Occupied rent-free	83205023
1780	Owned and fully paid off	83205023
17	Other	83205023
42	Rented	83205024
101	Owned but not yet paid off	83205024
181	Occupied rent-free	83205024
3529	Owned and fully paid off	83205024
12	Other	83205024
47	Rented	83205025
32	Owned but not yet paid off	83205025
2050	Occupied rent-free	83205025
1696	Owned and fully paid off	83205025
171	Other	83205025
57	Rented	83205026
184	Owned but not yet paid off	83205026
1258	Occupied rent-free	83205026
1646	Owned and fully paid off	83205026
21	Other	83205026
34	Rented	83205027
8	Owned but not yet paid off	83205027
2380	Occupied rent-free	83205027
1183	Owned and fully paid off	83205027
6	Other	83205027
28	Rented	83205028
18	Owned but not yet paid off	83205028
232	Occupied rent-free	83205028
2144	Owned and fully paid off	83205028
3	Other	83205028
33	Rented	83205029
39	Owned but not yet paid off	83205029
21	Occupied rent-free	83205029
2757	Owned and fully paid off	83205029
7	Other	83205029
33	Rented	83205030
29	Owned but not yet paid off	83205030
235	Occupied rent-free	83205030
3758	Owned and fully paid off	83205030
9	Other	83205030
615	Rented	83205031
265	Owned but not yet paid off	83205031
126	Occupied rent-free	83205031
3768	Owned and fully paid off	83205031
254	Other	83205031
94	Rented	83205032
85	Owned but not yet paid off	83205032
356	Occupied rent-free	83205032
2817	Owned and fully paid off	83205032
7	Other	83205032
108	Rented	83205033
17	Owned but not yet paid off	83205033
2611	Occupied rent-free	83205033
1426	Owned and fully paid off	83205033
26	Other	83205033
186	Rented	83205034
331	Owned but not yet paid off	83205034
2720	Occupied rent-free	83205034
1618	Owned and fully paid off	83205034
101	Other	83205034
35	Rented	83205035
206	Owned but not yet paid off	83205035
815	Occupied rent-free	83205035
2776	Owned and fully paid off	83205035
56	Other	83205035
82	Rented	83205036
28	Owned but not yet paid off	83205036
976	Occupied rent-free	83205036
2225	Owned and fully paid off	83205036
9	Other	83205036
145	Rented	83205037
49	Owned but not yet paid off	83205037
137	Occupied rent-free	83205037
2425	Owned and fully paid off	83205037
142	Other	83205037
40	Rented	63701001
8	Owned but not yet paid off	63701001
237	Occupied rent-free	63701001
1748	Owned and fully paid off	63701001
4	Other	63701001
22	Rented	63701002
25	Owned but not yet paid off	63701002
32	Occupied rent-free	63701002
1940	Owned and fully paid off	63701002
4	Other	63701002
105	Rented	63701003
17	Owned but not yet paid off	63701003
1142	Occupied rent-free	63701003
1223	Owned and fully paid off	63701003
8	Other	63701003
70	Rented	63701004
12	Owned but not yet paid off	63701004
120	Occupied rent-free	63701004
1909	Owned and fully paid off	63701004
5	Other	63701004
11	Rented	63701005
7	Owned but not yet paid off	63701005
83	Occupied rent-free	63701005
1677	Owned and fully paid off	63701005
5	Other	63701005
34	Rented	63701006
7	Owned but not yet paid off	63701006
45	Occupied rent-free	63701006
1537	Owned and fully paid off	63701006
6	Other	63701006
24	Rented	63701007
12	Owned but not yet paid off	63701007
877	Occupied rent-free	63701007
907	Owned and fully paid off	63701007
7	Other	63701007
19	Rented	63701008
46	Owned but not yet paid off	63701008
910	Occupied rent-free	63701008
503	Owned and fully paid off	63701008
6	Other	63701008
45	Rented	63701009
8	Owned but not yet paid off	63701009
23	Occupied rent-free	63701009
1125	Owned and fully paid off	63701009
5	Other	63701009
12	Rented	63701010
21	Owned but not yet paid off	63701010
21	Occupied rent-free	63701010
1785	Owned and fully paid off	63701010
11	Other	63701010
38	Rented	63701011
12	Owned but not yet paid off	63701011
868	Occupied rent-free	63701011
900	Owned and fully paid off	63701011
7	Other	63701011
62	Rented	63701012
14	Owned but not yet paid off	63701012
903	Occupied rent-free	63701012
1770	Owned and fully paid off	63701012
57	Other	63701012
312	Rented	63701013
58	Owned but not yet paid off	63701013
1962	Occupied rent-free	63701013
988	Owned and fully paid off	63701013
173	Other	63701013
16	Rented	63701014
5	Owned but not yet paid off	63701014
54	Occupied rent-free	63701014
1889	Owned and fully paid off	63701014
5	Other	63701014
18	Rented	63701015
6	Owned but not yet paid off	63701015
84	Occupied rent-free	63701015
991	Owned and fully paid off	63701015
4	Other	63701015
29	Rented	63701016
19	Owned but not yet paid off	63701016
1085	Occupied rent-free	63701016
758	Owned and fully paid off	63701016
25	Other	63701016
17	Rented	63701017
131	Owned but not yet paid off	63701017
48	Occupied rent-free	63701017
1024	Owned and fully paid off	63701017
6	Other	63701017
14	Rented	63701018
6	Owned but not yet paid off	63701018
163	Occupied rent-free	63701018
1076	Owned and fully paid off	63701018
0	Other	63701018
26	Rented	63701019
7	Owned but not yet paid off	63701019
92	Occupied rent-free	63701019
1652	Owned and fully paid off	63701019
8	Other	63701019
44	Rented	63701020
5	Owned but not yet paid off	63701020
27	Occupied rent-free	63701020
1609	Owned and fully paid off	63701020
11	Other	63701020
30	Rented	63701021
5	Owned but not yet paid off	63701021
33	Occupied rent-free	63701021
1560	Owned and fully paid off	63701021
23	Other	63701021
44	Rented	63701022
6	Owned but not yet paid off	63701022
99	Occupied rent-free	63701022
2055	Owned and fully paid off	63701022
15	Other	63701022
79	Rented	63701023
57	Owned but not yet paid off	63701023
954	Occupied rent-free	63701023
843	Owned and fully paid off	63701023
5	Other	63701023
11	Rented	63701024
9	Owned but not yet paid off	63701024
279	Occupied rent-free	63701024
1056	Owned and fully paid off	63701024
8	Other	63701024
47	Rented	63701025
5	Owned but not yet paid off	63701025
293	Occupied rent-free	63701025
1386	Owned and fully paid off	63701025
4	Other	63701025
8	Rented	63701026
10	Owned but not yet paid off	63701026
765	Occupied rent-free	63701026
1028	Owned and fully paid off	63701026
6	Other	63701026
17	Rented	63701027
8	Owned but not yet paid off	63701027
4	Occupied rent-free	63701027
1128	Owned and fully paid off	63701027
5	Other	63701027
60	Rented	63701028
20	Owned but not yet paid off	63701028
1136	Occupied rent-free	63701028
1422	Owned and fully paid off	63701028
10	Other	63701028
78	Rented	63702001
20	Owned but not yet paid off	63702001
803	Occupied rent-free	63702001
2080	Owned and fully paid off	63702001
169	Other	63702001
82	Rented	63702002
162	Owned but not yet paid off	63702002
308	Occupied rent-free	63702002
1939	Owned and fully paid off	63702002
68	Other	63702002
64	Rented	63702003
16	Owned but not yet paid off	63702003
485	Occupied rent-free	63702003
2706	Owned and fully paid off	63702003
10	Other	63702003
111	Rented	63702004
27	Owned but not yet paid off	63702004
171	Occupied rent-free	63702004
2262	Owned and fully paid off	63702004
7	Other	63702004
192	Rented	63702005
47	Owned but not yet paid off	63702005
105	Occupied rent-free	63702005
3028	Owned and fully paid off	63702005
19	Other	63702005
74	Rented	63702006
10	Owned but not yet paid off	63702006
77	Occupied rent-free	63702006
2261	Owned and fully paid off	63702006
45	Other	63702006
1190	Rented	63702007
13	Owned but not yet paid off	63702007
101	Occupied rent-free	63702007
1895	Owned and fully paid off	63702007
12	Other	63702007
71	Rented	63702008
37	Owned but not yet paid off	63702008
428	Occupied rent-free	63702008
2185	Owned and fully paid off	63702008
6	Other	63702008
279	Rented	63702009
81	Owned but not yet paid off	63702009
807	Occupied rent-free	63702009
2886	Owned and fully paid off	63702009
204	Other	63702009
410	Rented	63702010
34	Owned but not yet paid off	63702010
553	Occupied rent-free	63702010
5956	Owned and fully paid off	63702010
67	Other	63702010
398	Rented	63702011
600	Owned but not yet paid off	63702011
351	Occupied rent-free	63702011
2334	Owned and fully paid off	63702011
41	Other	63702011
335	Rented	63702012
67	Owned but not yet paid off	63702012
488	Occupied rent-free	63702012
1768	Owned and fully paid off	63702012
66	Other	63702012
1369	Rented	63702013
28	Owned but not yet paid off	63702013
210	Occupied rent-free	63702013
1341	Owned and fully paid off	63702013
7	Other	63702013
2690	Rented	63702014
240	Owned but not yet paid off	63702014
3013	Occupied rent-free	63702014
1824	Owned and fully paid off	63702014
396	Other	63702014
421	Rented	63702015
101	Owned but not yet paid off	63702015
280	Occupied rent-free	63702015
1884	Owned and fully paid off	63702015
25	Other	63702015
317	Rented	63702016
22	Owned but not yet paid off	63702016
243	Occupied rent-free	63702016
3025	Owned and fully paid off	63702016
51	Other	63702016
1695	Rented	63702017
13	Owned but not yet paid off	63702017
454	Occupied rent-free	63702017
2259	Owned and fully paid off	63702017
223	Other	63702017
486	Rented	63702018
17	Owned but not yet paid off	63702018
198	Occupied rent-free	63702018
2464	Owned and fully paid off	63702018
16	Other	63702018
562	Rented	63702019
22	Owned but not yet paid off	63702019
325	Occupied rent-free	63702019
2473	Owned and fully paid off	63702019
191	Other	63702019
885	Rented	63702020
132	Owned but not yet paid off	63702020
192	Occupied rent-free	63702020
2276	Owned and fully paid off	63702020
16	Other	63702020
2229	Rented	63702021
716	Owned but not yet paid off	63702021
541	Occupied rent-free	63702021
1395	Owned and fully paid off	63702021
63	Other	63702021
2657	Rented	63702022
614	Owned but not yet paid off	63702022
413	Occupied rent-free	63702022
1415	Owned and fully paid off	63702022
39	Other	63702022
1181	Rented	63702023
172	Owned but not yet paid off	63702023
87	Occupied rent-free	63702023
282	Owned and fully paid off	63702023
13	Other	63702023
89	Rented	63702024
48	Owned but not yet paid off	63702024
1435	Occupied rent-free	63702024
2580	Owned and fully paid off	63702024
17	Other	63702024
4375	Rented	63702025
390	Owned but not yet paid off	63702025
1555	Occupied rent-free	63702025
5840	Owned and fully paid off	63702025
247	Other	63702025
7430	Rented	63702026
350	Owned but not yet paid off	63702026
912	Occupied rent-free	63702026
2040	Owned and fully paid off	63702026
42	Other	63702026
2784	Rented	63702027
448	Owned but not yet paid off	63702027
1432	Occupied rent-free	63702027
1607	Owned and fully paid off	63702027
80	Other	63702027
1320	Rented	63702028
21	Owned but not yet paid off	63702028
218	Occupied rent-free	63702028
2101	Owned and fully paid off	63702028
96	Other	63702028
3849	Rented	63702029
1061	Owned but not yet paid off	63702029
2915	Occupied rent-free	63702029
1530	Owned and fully paid off	63702029
161	Other	63702029
2155	Rented	63702030
1138	Owned but not yet paid off	63702030
1317	Occupied rent-free	63702030
1349	Owned and fully paid off	63702030
149	Other	63702030
1429	Rented	63702031
21	Owned but not yet paid off	63702031
484	Occupied rent-free	63702031
1121	Owned and fully paid off	63702031
24	Other	63702031
1990	Rented	63702032
24	Owned but not yet paid off	63702032
188	Occupied rent-free	63702032
1121	Owned and fully paid off	63702032
15	Other	63702032
2411	Rented	63702033
591	Owned but not yet paid off	63702033
1637	Occupied rent-free	63702033
559	Owned and fully paid off	63702033
195	Other	63702033
33	Rented	63702034
22	Owned but not yet paid off	63702034
178	Occupied rent-free	63702034
2821	Owned and fully paid off	63702034
105	Other	63702034
141	Rented	63702035
171	Owned but not yet paid off	63702035
890	Occupied rent-free	63702035
2872	Owned and fully paid off	63702035
647	Other	63702035
169	Rented	63702036
34	Owned but not yet paid off	63702036
441	Occupied rent-free	63702036
1989	Owned and fully paid off	63702036
24	Other	63702036
2139	Rented	63703001
118	Owned but not yet paid off	63703001
1573	Occupied rent-free	63703001
1196	Owned and fully paid off	63703001
271	Other	63703001
2303	Rented	63703002
184	Owned but not yet paid off	63703002
410	Occupied rent-free	63703002
2221	Owned and fully paid off	63703002
74	Other	63703002
3400	Rented	63703003
11	Owned but not yet paid off	63703003
174	Occupied rent-free	63703003
770	Owned and fully paid off	63703003
390	Other	63703003
5270	Rented	63703004
41	Owned but not yet paid off	63703004
458	Occupied rent-free	63703004
959	Owned and fully paid off	63703004
369	Other	63703004
1601	Rented	63703005
24	Owned but not yet paid off	63703005
337	Occupied rent-free	63703005
1121	Owned and fully paid off	63703005
302	Other	63703005
1913	Rented	63703006
96	Owned but not yet paid off	63703006
523	Occupied rent-free	63703006
1583	Owned and fully paid off	63703006
320	Other	63703006
3675	Rented	63703007
26	Owned but not yet paid off	63703007
814	Occupied rent-free	63703007
2114	Owned and fully paid off	63703007
150	Other	63703007
1140	Rented	63703008
4640	Owned but not yet paid off	63703008
168	Occupied rent-free	63703008
589	Owned and fully paid off	63703008
149	Other	63703008
1835	Rented	63703009
131	Owned but not yet paid off	63703009
127	Occupied rent-free	63703009
973	Owned and fully paid off	63703009
55	Other	63703009
4299	Rented	63703010
450	Owned but not yet paid off	63703010
387	Occupied rent-free	63703010
1164	Owned and fully paid off	63703010
40	Other	63703010
2814	Rented	63703011
158	Owned but not yet paid off	63703011
1881	Occupied rent-free	63703011
1845	Owned and fully paid off	63703011
65	Other	63703011
2575	Rented	63703012
682	Owned but not yet paid off	63703012
1672	Occupied rent-free	63703012
669	Owned and fully paid off	63703012
60	Other	63703012
1459	Rented	63703013
530	Owned but not yet paid off	63703013
38	Occupied rent-free	63703013
443	Owned and fully paid off	63703013
23	Other	63703013
1464	Rented	63703014
753	Owned but not yet paid off	63703014
170	Occupied rent-free	63703014
513	Owned and fully paid off	63703014
100	Other	63703014
1712	Rented	63703015
998	Owned but not yet paid off	63703015
147	Occupied rent-free	63703015
714	Owned and fully paid off	63703015
243	Other	63703015
1112	Rented	63703016
870	Owned but not yet paid off	63703016
488	Occupied rent-free	63703016
439	Owned and fully paid off	63703016
171	Other	63703016
4062	Rented	63703017
1605	Owned but not yet paid off	63703017
401	Occupied rent-free	63703017
525	Owned and fully paid off	63703017
345	Other	63703017
3459	Rented	63703018
671	Owned but not yet paid off	63703018
1809	Occupied rent-free	63703018
2254	Owned and fully paid off	63703018
323	Other	63703018
1103	Rented	63703019
2981	Owned but not yet paid off	63703019
1545	Occupied rent-free	63703019
2430	Owned and fully paid off	63703019
69	Other	63703019
1174	Rented	63703020
24	Owned but not yet paid off	63703020
616	Occupied rent-free	63703020
1114	Owned and fully paid off	63703020
92	Other	63703020
1858	Rented	63703021
129	Owned but not yet paid off	63703021
937	Occupied rent-free	63703021
2879	Owned and fully paid off	63703021
115	Other	63703021
3043	Rented	63703022
333	Owned but not yet paid off	63703022
1735	Occupied rent-free	63703022
1354	Owned and fully paid off	63703022
194	Other	63703022
2650	Rented	63703023
22	Owned but not yet paid off	63703023
934	Occupied rent-free	63703023
1434	Owned and fully paid off	63703023
150	Other	63703023
6329	Rented	63703024
197	Owned but not yet paid off	63703024
3847	Occupied rent-free	63703024
288	Owned and fully paid off	63703024
272	Other	63703024
305	Rented	63703025
37	Owned but not yet paid off	63703025
582	Occupied rent-free	63703025
2305	Owned and fully paid off	63703025
138	Other	63703025
173	Rented	63703026
91	Owned but not yet paid off	63703026
2379	Occupied rent-free	63703026
1444	Owned and fully paid off	63703026
17	Other	63703026
96	Rented	63703027
18	Owned but not yet paid off	63703027
3377	Occupied rent-free	63703027
145	Owned and fully paid off	63703027
36	Other	63703027
101	Rented	63703028
10	Owned but not yet paid off	63703028
2313	Occupied rent-free	63703028
306	Owned and fully paid off	63703028
22	Other	63703028
1077	Rented	63703029
57	Owned but not yet paid off	63703029
1493	Occupied rent-free	63703029
2907	Owned and fully paid off	63703029
146	Other	63703029
373	Rented	63703030
38	Owned but not yet paid off	63703030
423	Occupied rent-free	63703030
2798	Owned and fully paid off	63703030
1135	Other	63703030
4403	Rented	63703031
196	Owned but not yet paid off	63703031
850	Occupied rent-free	63703031
340	Owned and fully paid off	63703031
134	Other	63703031
5397	Rented	63703032
557	Owned but not yet paid off	63703032
1435	Occupied rent-free	63703032
1145	Owned and fully paid off	63703032
143	Other	63703032
751	Rented	63703033
32	Owned but not yet paid off	63703033
25	Occupied rent-free	63703033
185	Owned and fully paid off	63703033
39	Other	63703033
3169	Rented	63703034
423	Owned but not yet paid off	63703034
892	Occupied rent-free	63703034
427	Owned and fully paid off	63703034
21	Other	63703034
1493	Rented	63703035
88	Owned but not yet paid off	63703035
579	Occupied rent-free	63703035
162	Owned and fully paid off	63703035
63	Other	63703035
1869	Rented	63703036
482	Owned but not yet paid off	63703036
2504	Occupied rent-free	63703036
1087	Owned and fully paid off	63703036
100	Other	63703036
6754	Rented	63703037
602	Owned but not yet paid off	63703037
1581	Occupied rent-free	63703037
1010	Owned and fully paid off	63703037
100	Other	63703037
1693	Rented	63703038
118	Owned but not yet paid off	63703038
440	Occupied rent-free	63703038
165	Owned and fully paid off	63703038
65	Other	63703038
388	Rented	63704001
89	Owned but not yet paid off	63704001
377	Occupied rent-free	63704001
792	Owned and fully paid off	63704001
203	Other	63704001
733	Rented	63704002
281	Owned but not yet paid off	63704002
1367	Occupied rent-free	63704002
557	Owned and fully paid off	63704002
342	Other	63704002
438	Rented	63704003
295	Owned but not yet paid off	63704003
339	Occupied rent-free	63704003
295	Owned and fully paid off	63704003
58	Other	63704003
166	Rented	63704004
41	Owned but not yet paid off	63704004
303	Occupied rent-free	63704004
724	Owned and fully paid off	63704004
54	Other	63704004
328	Rented	63704005
177	Owned but not yet paid off	63704005
1537	Occupied rent-free	63704005
1106	Owned and fully paid off	63704005
66	Other	63704005
622	Rented	63704006
434	Owned but not yet paid off	63704006
1322	Occupied rent-free	63704006
1026	Owned and fully paid off	63704006
213	Other	63704006
38	Rented	63705001
160	Owned but not yet paid off	63705001
451	Occupied rent-free	63705001
1190	Owned and fully paid off	63705001
217	Other	63705001
85	Rented	63705002
171	Owned but not yet paid off	63705002
333	Occupied rent-free	63705002
1055	Owned and fully paid off	63705002
783	Other	63705002
126	Rented	63705003
68	Owned but not yet paid off	63705003
815	Occupied rent-free	63705003
1136	Owned and fully paid off	63705003
92	Other	63705003
89	Rented	63705004
29	Owned but not yet paid off	63705004
712	Occupied rent-free	63705004
1446	Owned and fully paid off	63705004
203	Other	63705004
648	Rented	63705005
34	Owned but not yet paid off	63705005
566	Occupied rent-free	63705005
2021	Owned and fully paid off	63705005
26	Other	63705005
189	Rented	63705006
57	Owned but not yet paid off	63705006
217	Occupied rent-free	63705006
1599	Owned and fully paid off	63705006
178	Other	63705006
1268	Rented	63705007
408	Owned but not yet paid off	63705007
322	Occupied rent-free	63705007
792	Owned and fully paid off	63705007
47	Other	63705007
368	Rented	63705008
118	Owned but not yet paid off	63705008
299	Occupied rent-free	63705008
1657	Owned and fully paid off	63705008
6	Other	63705008
539	Rented	63705009
16	Owned but not yet paid off	63705009
202	Occupied rent-free	63705009
2128	Owned and fully paid off	63705009
6	Other	63705009
686	Rented	63705010
374	Owned but not yet paid off	63705010
955	Occupied rent-free	63705010
1952	Owned and fully paid off	63705010
88	Other	63705010
26	Rented	63705011
3	Owned but not yet paid off	63705011
45	Occupied rent-free	63705011
1449	Owned and fully paid off	63705011
5	Other	63705011
16	Rented	63705012
2	Owned but not yet paid off	63705012
50	Occupied rent-free	63705012
1627	Owned and fully paid off	63705012
3	Other	63705012
1517	Rented	63705013
184	Owned but not yet paid off	63705013
276	Occupied rent-free	63705013
864	Owned and fully paid off	63705013
81	Other	63705013
768	Rented	63705014
10	Owned but not yet paid off	63705014
1436	Occupied rent-free	63705014
119	Owned and fully paid off	63705014
74	Other	63705014
471	Rented	63705015
214	Owned but not yet paid off	63705015
555	Occupied rent-free	63705015
1599	Owned and fully paid off	63705015
45	Other	63705015
532	Rented	63705016
16	Owned but not yet paid off	63705016
94	Occupied rent-free	63705016
2286	Owned and fully paid off	63705016
11	Other	63705016
527	Rented	63705017
27	Owned but not yet paid off	63705017
96	Occupied rent-free	63705017
2015	Owned and fully paid off	63705017
51	Other	63705017
36	Rented	63705018
4	Owned but not yet paid off	63705018
40	Occupied rent-free	63705018
1823	Owned and fully paid off	63705018
108	Other	63705018
158	Rented	63705019
45	Owned but not yet paid off	63705019
159	Occupied rent-free	63705019
1867	Owned and fully paid off	63705019
109	Other	63705019
32	Rented	63705020
16	Owned but not yet paid off	63705020
152	Occupied rent-free	63705020
1866	Owned and fully paid off	63705020
6	Other	63705020
31	Rented	63705021
22	Owned but not yet paid off	63705021
565	Occupied rent-free	63705021
1591	Owned and fully paid off	63705021
136	Other	63705021
171	Rented	63705022
44	Owned but not yet paid off	63705022
193	Occupied rent-free	63705022
1379	Owned and fully paid off	63705022
75	Other	63705022
37	Rented	63705023
252	Owned but not yet paid off	63705023
574	Occupied rent-free	63705023
1606	Owned and fully paid off	63705023
23	Other	63705023
30	Rented	63705024
44	Owned but not yet paid off	63705024
41	Occupied rent-free	63705024
1114	Owned and fully paid off	63705024
157	Other	63705024
72	Rented	63705025
3	Owned but not yet paid off	63705025
1192	Occupied rent-free	63705025
653	Owned and fully paid off	63705025
337	Other	63705025
73	Rented	63705026
15	Owned but not yet paid off	63705026
645	Occupied rent-free	63705026
1354	Owned and fully paid off	63705026
9	Other	63705026
297	Rented	63705027
31	Owned but not yet paid off	63705027
910	Occupied rent-free	63705027
1292	Owned and fully paid off	63705027
14	Other	63705027
613	Rented	63705028
12	Owned but not yet paid off	63705028
1748	Occupied rent-free	63705028
563	Owned and fully paid off	63705028
24	Other	63705028
92	Rented	63705029
9	Owned but not yet paid off	63705029
229	Occupied rent-free	63705029
2102	Owned and fully paid off	63705029
6	Other	63705029
278	Rented	63705030
55	Owned but not yet paid off	63705030
1449	Occupied rent-free	63705030
472	Owned and fully paid off	63705030
13	Other	63705030
124	Rented	63705031
142	Owned but not yet paid off	63705031
165	Occupied rent-free	63705031
1610	Owned and fully paid off	63705031
24	Other	63705031
93	Rented	63801001
94	Owned but not yet paid off	63801001
843	Occupied rent-free	63801001
702	Owned and fully paid off	63801001
143	Other	63801001
63	Rented	63801002
246	Owned but not yet paid off	63801002
332	Occupied rent-free	63801002
1314	Owned and fully paid off	63801002
38	Other	63801002
23	Rented	63801003
26	Owned but not yet paid off	63801003
236	Occupied rent-free	63801003
1370	Owned and fully paid off	63801003
119	Other	63801003
111	Rented	63801004
19	Owned but not yet paid off	63801004
420	Occupied rent-free	63801004
1390	Owned and fully paid off	63801004
35	Other	63801004
131	Rented	63801005
19	Owned but not yet paid off	63801005
452	Occupied rent-free	63801005
578	Owned and fully paid off	63801005
37	Other	63801005
150	Rented	63801006
1	Owned but not yet paid off	63801006
751	Occupied rent-free	63801006
640	Owned and fully paid off	63801006
13	Other	63801006
21	Rented	63801007
11	Owned but not yet paid off	63801007
792	Occupied rent-free	63801007
891	Owned and fully paid off	63801007
158	Other	63801007
96	Rented	63801008
35	Owned but not yet paid off	63801008
1476	Occupied rent-free	63801008
1269	Owned and fully paid off	63801008
59	Other	63801008
107	Rented	63801009
239	Owned but not yet paid off	63801009
658	Occupied rent-free	63801009
1096	Owned and fully paid off	63801009
48	Other	63801009
13	Rented	63801010
2	Owned but not yet paid off	63801010
333	Occupied rent-free	63801010
241	Owned and fully paid off	63801010
19	Other	63801010
450	Rented	63801011
36	Owned but not yet paid off	63801011
507	Occupied rent-free	63801011
995	Owned and fully paid off	63801011
30	Other	63801011
57	Rented	63801012
9	Owned but not yet paid off	63801012
903	Occupied rent-free	63801012
728	Owned and fully paid off	63801012
27	Other	63801012
359	Rented	63801013
54	Owned but not yet paid off	63801013
730	Occupied rent-free	63801013
1342	Owned and fully paid off	63801013
145	Other	63801013
125	Rented	63801014
8	Owned but not yet paid off	63801014
1190	Occupied rent-free	63801014
1198	Owned and fully paid off	63801014
44	Other	63801014
291	Rented	63802001
16	Owned but not yet paid off	63802001
642	Occupied rent-free	63802001
1531	Owned and fully paid off	63802001
19	Other	63802001
49	Rented	63802002
181	Owned but not yet paid off	63802002
183	Occupied rent-free	63802002
1549	Owned and fully paid off	63802002
29	Other	63802002
53	Rented	63802003
29	Owned but not yet paid off	63802003
272	Occupied rent-free	63802003
1225	Owned and fully paid off	63802003
21	Other	63802003
72	Rented	63802004
5	Owned but not yet paid off	63802004
499	Occupied rent-free	63802004
1271	Owned and fully paid off	63802004
18	Other	63802004
82	Rented	63802005
4	Owned but not yet paid off	63802005
82	Occupied rent-free	63802005
1617	Owned and fully paid off	63802005
2	Other	63802005
56	Rented	63802006
3	Owned but not yet paid off	63802006
117	Occupied rent-free	63802006
1576	Owned and fully paid off	63802006
5	Other	63802006
352	Rented	63802007
44	Owned but not yet paid off	63802007
803	Occupied rent-free	63802007
1067	Owned and fully paid off	63802007
110	Other	63802007
380	Rented	63802008
39	Owned but not yet paid off	63802008
418	Occupied rent-free	63802008
496	Owned and fully paid off	63802008
28	Other	63802008
541	Rented	63802009
206	Owned but not yet paid off	63802009
1157	Occupied rent-free	63802009
2136	Owned and fully paid off	63802009
107	Other	63802009
507	Rented	63802010
17	Owned but not yet paid off	63802010
887	Occupied rent-free	63802010
926	Owned and fully paid off	63802010
27	Other	63802010
113	Rented	63802011
10	Owned but not yet paid off	63802011
803	Occupied rent-free	63802011
737	Owned and fully paid off	63802011
6	Other	63802011
504	Rented	63802012
223	Owned but not yet paid off	63802012
997	Occupied rent-free	63802012
626	Owned and fully paid off	63802012
56	Other	63802012
129	Rented	63802013
3	Owned but not yet paid off	63802013
124	Occupied rent-free	63802013
572	Owned and fully paid off	63802013
12	Other	63802013
500	Rented	63802014
190	Owned but not yet paid off	63802014
714	Occupied rent-free	63802014
461	Owned and fully paid off	63802014
23	Other	63802014
439	Rented	63802015
80	Owned but not yet paid off	63802015
934	Occupied rent-free	63802015
585	Owned and fully paid off	63802015
45	Other	63802015
49	Rented	63803001
40	Owned but not yet paid off	63803001
1470	Occupied rent-free	63803001
924	Owned and fully paid off	63803001
11	Other	63803001
140	Rented	63803002
394	Owned but not yet paid off	63803002
689	Occupied rent-free	63803002
1074	Owned and fully paid off	63803002
28	Other	63803002
221	Rented	63803003
7	Owned but not yet paid off	63803003
151	Occupied rent-free	63803003
649	Owned and fully paid off	63803003
1614	Other	63803003
426	Rented	63803004
40	Owned but not yet paid off	63803004
595	Occupied rent-free	63803004
1313	Owned and fully paid off	63803004
188	Other	63803004
133	Rented	63803005
5	Owned but not yet paid off	63803005
154	Occupied rent-free	63803005
593	Owned and fully paid off	63803005
2	Other	63803005
759	Rented	63803006
396	Owned but not yet paid off	63803006
546	Occupied rent-free	63803006
1457	Owned and fully paid off	63803006
42	Other	63803006
1268	Rented	63803007
608	Owned but not yet paid off	63803007
1382	Occupied rent-free	63803007
1530	Owned and fully paid off	63803007
76	Other	63803007
1057	Rented	63803008
140	Owned but not yet paid off	63803008
146	Occupied rent-free	63803008
793	Owned and fully paid off	63803008
35	Other	63803008
721	Rented	63803009
493	Owned but not yet paid off	63803009
636	Occupied rent-free	63803009
981	Owned and fully paid off	63803009
42	Other	63803009
1047	Rented	63803010
709	Owned but not yet paid off	63803010
56	Occupied rent-free	63803010
872	Owned and fully paid off	63803010
55	Other	63803010
440	Rented	63803011
8	Owned but not yet paid off	63803011
792	Occupied rent-free	63803011
262	Owned and fully paid off	63803011
14	Other	63803011
521	Rented	63803012
1287	Owned but not yet paid off	63803012
472	Occupied rent-free	63803012
852	Owned and fully paid off	63803012
32	Other	63803012
515	Rented	63803013
1215	Owned but not yet paid off	63803013
561	Occupied rent-free	63803013
2935	Owned and fully paid off	63803013
182	Other	63803013
474	Rented	63803014
30	Owned but not yet paid off	63803014
2016	Occupied rent-free	63803014
1054	Owned and fully paid off	63803014
19	Other	63803014
977	Rented	63803015
16	Owned but not yet paid off	63803015
436	Occupied rent-free	63803015
1171	Owned and fully paid off	63803015
145	Other	63803015
1593	Rented	63803016
9	Owned but not yet paid off	63803016
1168	Occupied rent-free	63803016
811	Owned and fully paid off	63803016
21	Other	63803016
218	Rented	63803017
103	Owned but not yet paid off	63803017
470	Occupied rent-free	63803017
1362	Owned and fully paid off	63803017
18	Other	63803017
283	Rented	63803018
55	Owned but not yet paid off	63803018
616	Occupied rent-free	63803018
1493	Owned and fully paid off	63803018
132	Other	63803018
108	Rented	63803019
15	Owned but not yet paid off	63803019
362	Occupied rent-free	63803019
896	Owned and fully paid off	63803019
24	Other	63803019
742	Rented	63803020
193	Owned but not yet paid off	63803020
513	Occupied rent-free	63803020
580	Owned and fully paid off	63803020
76	Other	63803020
215	Rented	63803021
8	Owned but not yet paid off	63803021
310	Occupied rent-free	63803021
1629	Owned and fully paid off	63803021
37	Other	63803021
150	Rented	63803022
45	Owned but not yet paid off	63803022
1068	Occupied rent-free	63803022
1397	Owned and fully paid off	63803022
602	Other	63803022
44	Rented	63803023
20	Owned but not yet paid off	63803023
88	Occupied rent-free	63803023
1965	Owned and fully paid off	63803023
29	Other	63803023
102	Rented	63803024
32	Owned but not yet paid off	63803024
1742	Occupied rent-free	63803024
459	Owned and fully paid off	63803024
57	Other	63803024
106	Rented	63803025
44	Owned but not yet paid off	63803025
565	Occupied rent-free	63803025
1354	Owned and fully paid off	63803025
7	Other	63803025
16	Rented	63803026
34	Owned but not yet paid off	63803026
1261	Occupied rent-free	63803026
695	Owned and fully paid off	63803026
47	Other	63803026
182	Rented	63803027
81	Owned but not yet paid off	63803027
694	Occupied rent-free	63803027
1613	Owned and fully paid off	63803027
43	Other	63803027
522	Rented	63803028
43	Owned but not yet paid off	63803028
620	Occupied rent-free	63803028
1557	Owned and fully paid off	63803028
23	Other	63803028
795	Rented	63803029
104	Owned but not yet paid off	63803029
337	Occupied rent-free	63803029
1889	Owned and fully paid off	63803029
37	Other	63803029
2092	Rented	63803030
167	Owned but not yet paid off	63803030
757	Occupied rent-free	63803030
380	Owned and fully paid off	63803030
57	Other	63803030
164	Rented	63803031
23	Owned but not yet paid off	63803031
335	Occupied rent-free	63803031
2523	Owned and fully paid off	63803031
29	Other	63803031
186	Rented	63804001
24	Owned but not yet paid off	63804001
924	Occupied rent-free	63804001
751	Owned and fully paid off	63804001
6	Other	63804001
428	Rented	63804002
75	Owned but not yet paid off	63804002
134	Occupied rent-free	63804002
1055	Owned and fully paid off	63804002
12	Other	63804002
336	Rented	63804003
64	Owned but not yet paid off	63804003
595	Occupied rent-free	63804003
847	Owned and fully paid off	63804003
301	Other	63804003
409	Rented	63804004
29	Owned but not yet paid off	63804004
1542	Occupied rent-free	63804004
346	Owned and fully paid off	63804004
28	Other	63804004
933	Rented	63804005
621	Owned but not yet paid off	63804005
489	Occupied rent-free	63804005
530	Owned and fully paid off	63804005
45	Other	63804005
923	Rented	63804006
355	Owned but not yet paid off	63804006
106	Occupied rent-free	63804006
439	Owned and fully paid off	63804006
44	Other	63804006
203	Rented	63804007
23	Owned but not yet paid off	63804007
133	Occupied rent-free	63804007
1192	Owned and fully paid off	63804007
16	Other	63804007
213	Rented	63804008
106	Owned but not yet paid off	63804008
170	Occupied rent-free	63804008
1637	Owned and fully paid off	63804008
12	Other	63804008
185	Rented	63804009
95	Owned but not yet paid off	63804009
61	Occupied rent-free	63804009
1045	Owned and fully paid off	63804009
7	Other	63804009
141	Rented	63804010
35	Owned but not yet paid off	63804010
222	Occupied rent-free	63804010
1785	Owned and fully paid off	63804010
37	Other	63804010
27	Rented	63804011
9	Owned but not yet paid off	63804011
156	Occupied rent-free	63804011
1238	Owned and fully paid off	63804011
7	Other	63804011
225	Rented	63804012
48	Owned but not yet paid off	63804012
255	Occupied rent-free	63804012
998	Owned and fully paid off	63804012
89	Other	63804012
445	Rented	63804013
75	Owned but not yet paid off	63804013
1820	Occupied rent-free	63804013
468	Owned and fully paid off	63804013
204	Other	63804013
470	Rented	63804014
83	Owned but not yet paid off	63804014
1205	Occupied rent-free	63804014
1520	Owned and fully paid off	63804014
65	Other	63804014
107	Rented	63804015
162	Owned but not yet paid off	63804015
1929	Occupied rent-free	63804015
537	Owned and fully paid off	63804015
17	Other	63804015
574	Rented	63804016
147	Owned but not yet paid off	63804016
1341	Occupied rent-free	63804016
530	Owned and fully paid off	63804016
77	Other	63804016
40	Rented	63804017
9	Owned but not yet paid off	63804017
152	Occupied rent-free	63804017
1407	Owned and fully paid off	63804017
28	Other	63804017
32	Rented	63804018
26	Owned but not yet paid off	63804018
59	Occupied rent-free	63804018
1187	Owned and fully paid off	63804018
4	Other	63804018
21	Rented	63804019
21	Owned but not yet paid off	63804019
474	Occupied rent-free	63804019
1314	Owned and fully paid off	63804019
38	Other	63804019
421	Rented	63804020
33	Owned but not yet paid off	63804020
1227	Occupied rent-free	63804020
293	Owned and fully paid off	63804020
56	Other	63804020
426	Rented	63804021
68	Owned but not yet paid off	63804021
932	Occupied rent-free	63804021
1430	Owned and fully paid off	63804021
81	Other	63804021
96	Rented	63805001
4	Owned but not yet paid off	63805001
55	Occupied rent-free	63805001
1426	Owned and fully paid off	63805001
37	Other	63805001
87	Rented	63805002
30	Owned but not yet paid off	63805002
245	Occupied rent-free	63805002
1842	Owned and fully paid off	63805002
6	Other	63805002
33	Rented	63805003
101	Owned but not yet paid off	63805003
13	Occupied rent-free	63805003
1160	Owned and fully paid off	63805003
6	Other	63805003
56	Rented	63805004
21	Owned but not yet paid off	63805004
67	Occupied rent-free	63805004
1565	Owned and fully paid off	63805004
66	Other	63805004
37	Rented	63805005
114	Owned but not yet paid off	63805005
283	Occupied rent-free	63805005
1173	Owned and fully paid off	63805005
16	Other	63805005
103	Rented	63805006
8	Owned but not yet paid off	63805006
301	Occupied rent-free	63805006
1205	Owned and fully paid off	63805006
9	Other	63805006
32	Rented	63805007
27	Owned but not yet paid off	63805007
573	Occupied rent-free	63805007
1038	Owned and fully paid off	63805007
3	Other	63805007
45	Rented	63805008
68	Owned but not yet paid off	63805008
28	Occupied rent-free	63805008
1287	Owned and fully paid off	63805008
2	Other	63805008
35	Rented	63805009
42	Owned but not yet paid off	63805009
121	Occupied rent-free	63805009
1478	Owned and fully paid off	63805009
6	Other	63805009
27	Rented	63805010
9	Owned but not yet paid off	63805010
82	Occupied rent-free	63805010
1132	Owned and fully paid off	63805010
2	Other	63805010
109	Rented	63805011
17	Owned but not yet paid off	63805011
167	Occupied rent-free	63805011
2175	Owned and fully paid off	63805011
69	Other	63805011
502	Rented	63805012
320	Owned but not yet paid off	63805012
344	Occupied rent-free	63805012
1359	Owned and fully paid off	63805012
19	Other	63805012
61	Rented	63805013
119	Owned but not yet paid off	63805013
279	Occupied rent-free	63805013
1821	Owned and fully paid off	63805013
28	Other	63805013
93	Rented	63805014
27	Owned but not yet paid off	63805014
552	Occupied rent-free	63805014
1197	Owned and fully paid off	63805014
44	Other	63805014
810	Rented	63805015
554	Owned but not yet paid off	63805015
93	Occupied rent-free	63805015
428	Owned and fully paid off	63805015
45	Other	63805015
690	Rented	63805016
252	Owned but not yet paid off	63805016
74	Occupied rent-free	63805016
1114	Owned and fully paid off	63805016
317	Other	63805016
403	Rented	63805017
158	Owned but not yet paid off	63805017
550	Occupied rent-free	63805017
1032	Owned and fully paid off	63805017
514	Other	63805017
45	Rented	63805018
188	Owned but not yet paid off	63805018
164	Occupied rent-free	63805018
1217	Owned and fully paid off	63805018
19	Other	63805018
499	Rented	63805019
240	Owned but not yet paid off	63805019
2642	Occupied rent-free	63805019
950	Owned and fully paid off	63805019
162	Other	63805019
110	Rented	63805020
98	Owned but not yet paid off	63805020
259	Occupied rent-free	63805020
1570	Owned and fully paid off	63805020
39	Other	63805020
495	Rented	63902001
258	Owned but not yet paid off	63902001
1145	Occupied rent-free	63902001
340	Owned and fully paid off	63902001
35	Other	63902001
632	Rented	63902002
222	Owned but not yet paid off	63902002
190	Occupied rent-free	63902002
572	Owned and fully paid off	63902002
216	Other	63902002
199	Rented	63902003
155	Owned but not yet paid off	63902003
417	Occupied rent-free	63902003
646	Owned and fully paid off	63902003
481	Other	63902003
306	Rented	63902004
339	Owned but not yet paid off	63902004
1001	Occupied rent-free	63902004
1414	Owned and fully paid off	63902004
165	Other	63902004
401	Rented	63902005
188	Owned but not yet paid off	63902005
1145	Occupied rent-free	63902005
423	Owned and fully paid off	63902005
312	Other	63902005
899	Rented	63902006
120	Owned but not yet paid off	63902006
37	Occupied rent-free	63902006
559	Owned and fully paid off	63902006
7	Other	63902006
954	Rented	63902007
469	Owned but not yet paid off	63902007
284	Occupied rent-free	63902007
489	Owned and fully paid off	63902007
56	Other	63902007
502	Rented	63902008
40	Owned but not yet paid off	63902008
87	Occupied rent-free	63902008
885	Owned and fully paid off	63902008
11	Other	63902008
767	Rented	63902009
49	Owned but not yet paid off	63902009
39	Occupied rent-free	63902009
591	Owned and fully paid off	63902009
30	Other	63902009
244	Rented	63903001
164	Owned but not yet paid off	63903001
649	Occupied rent-free	63903001
453	Owned and fully paid off	63903001
507	Other	63903001
236	Rented	63903002
149	Owned but not yet paid off	63903002
35	Occupied rent-free	63903002
866	Owned and fully paid off	63903002
5	Other	63903002
266	Rented	63903003
320	Owned but not yet paid off	63903003
674	Occupied rent-free	63903003
676	Owned and fully paid off	63903003
60	Other	63903003
192	Rented	63903004
72	Owned but not yet paid off	63903004
249	Occupied rent-free	63903004
1044	Owned and fully paid off	63903004
11	Other	63903004
184	Rented	63903005
21	Owned but not yet paid off	63903005
499	Occupied rent-free	63903005
1328	Owned and fully paid off	63903005
152	Other	63903005
171	Rented	63903006
117	Owned but not yet paid off	63903006
457	Occupied rent-free	63903006
812	Owned and fully paid off	63903006
214	Other	63903006
489	Rented	63903007
365	Owned but not yet paid off	63903007
762	Occupied rent-free	63903007
576	Owned and fully paid off	63903007
205	Other	63903007
97	Rented	63903008
15	Owned but not yet paid off	63903008
529	Occupied rent-free	63903008
732	Owned and fully paid off	63903008
28	Other	63903008
301	Rented	63904001
69	Owned but not yet paid off	63904001
566	Occupied rent-free	63904001
946	Owned and fully paid off	63904001
66	Other	63904001
79	Rented	63904002
10	Owned but not yet paid off	63904002
155	Occupied rent-free	63904002
2062	Owned and fully paid off	63904002
82	Other	63904002
42	Rented	63904003
33	Owned but not yet paid off	63904003
42	Occupied rent-free	63904003
1477	Owned and fully paid off	63904003
283	Other	63904003
20	Rented	63904004
6	Owned but not yet paid off	63904004
85	Occupied rent-free	63904004
1329	Owned and fully paid off	63904004
3	Other	63904004
513	Rented	63904005
278	Owned but not yet paid off	63904005
218	Occupied rent-free	63904005
1331	Owned and fully paid off	63904005
35	Other	63904005
67	Rented	63904006
13	Owned but not yet paid off	63904006
543	Occupied rent-free	63904006
1699	Owned and fully paid off	63904006
6	Other	63904006
46	Rented	63904007
6	Owned but not yet paid off	63904007
181	Occupied rent-free	63904007
1227	Owned and fully paid off	63904007
4	Other	63904007
143	Rented	63904008
87	Owned but not yet paid off	63904008
265	Occupied rent-free	63904008
1239	Owned and fully paid off	63904008
125	Other	63904008
47	Rented	63904009
160	Owned but not yet paid off	63904009
332	Occupied rent-free	63904009
1630	Owned and fully paid off	63904009
169	Other	63904009
33	Rented	63904010
5	Owned but not yet paid off	63904010
332	Occupied rent-free	63904010
1222	Owned and fully paid off	63904010
65	Other	63904010
531	Rented	63904011
16	Owned but not yet paid off	63904011
264	Occupied rent-free	63904011
1022	Owned and fully paid off	63904011
26	Other	63904011
48	Rented	63904012
10	Owned but not yet paid off	63904012
244	Occupied rent-free	63904012
1670	Owned and fully paid off	63904012
29	Other	63904012
297	Rented	63904013
4	Owned but not yet paid off	63904013
55	Occupied rent-free	63904013
1254	Owned and fully paid off	63904013
2	Other	63904013
58	Rented	63904014
20	Owned but not yet paid off	63904014
269	Occupied rent-free	63904014
1529	Owned and fully paid off	63904014
44	Other	63904014
53	Rented	63904015
5	Owned but not yet paid off	63904015
182	Occupied rent-free	63904015
1692	Owned and fully paid off	63904015
4	Other	63904015
35	Rented	63904016
1	Owned but not yet paid off	63904016
640	Occupied rent-free	63904016
506	Owned and fully paid off	63904016
294	Other	63904016
34	Rented	63904017
23	Owned but not yet paid off	63904017
1245	Occupied rent-free	63904017
402	Owned and fully paid off	63904017
41	Other	63904017
32	Rented	63904018
4	Owned but not yet paid off	63904018
1698	Occupied rent-free	63904018
408	Owned and fully paid off	63904018
9	Other	63904018
45	Rented	63904019
2	Owned but not yet paid off	63904019
41	Occupied rent-free	63904019
1581	Owned and fully paid off	63904019
51	Other	63904019
62	Rented	63904020
15	Owned but not yet paid off	63904020
123	Occupied rent-free	63904020
646	Owned and fully paid off	63904020
1490	Other	63904020
39	Rented	63904021
3	Owned but not yet paid off	63904021
64	Occupied rent-free	63904021
1913	Owned and fully paid off	63904021
5	Other	63904021
21	Rented	63904022
4	Owned but not yet paid off	63904022
25	Occupied rent-free	63904022
860	Owned and fully paid off	63904022
744	Other	63904022
41	Rented	63904023
23	Owned but not yet paid off	63904023
18	Occupied rent-free	63904023
1255	Owned and fully paid off	63904023
7	Other	63904023
34	Rented	63904024
11	Owned but not yet paid off	63904024
139	Occupied rent-free	63904024
1521	Owned and fully paid off	63904024
28	Other	63904024
286	Rented	63904025
165	Owned but not yet paid off	63904025
167	Occupied rent-free	63904025
1219	Owned and fully paid off	63904025
14	Other	63904025
56	Rented	63904026
11	Owned but not yet paid off	63904026
43	Occupied rent-free	63904026
1390	Owned and fully paid off	63904026
69	Other	63904026
262	Rented	63906001
118	Owned but not yet paid off	63906001
596	Occupied rent-free	63906001
1346	Owned and fully paid off	63906001
15	Other	63906001
163	Rented	63906002
16	Owned but not yet paid off	63906002
197	Occupied rent-free	63906002
891	Owned and fully paid off	63906002
31	Other	63906002
159	Rented	63906003
11	Owned but not yet paid off	63906003
1156	Occupied rent-free	63906003
921	Owned and fully paid off	63906003
12	Other	63906003
519	Rented	63906004
123	Owned but not yet paid off	63906004
405	Occupied rent-free	63906004
637	Owned and fully paid off	63906004
50	Other	63906004
235	Rented	63906005
20	Owned but not yet paid off	63906005
380	Occupied rent-free	63906005
1796	Owned and fully paid off	63906005
0	Other	63906005
861	Rented	63906006
204	Owned but not yet paid off	63906006
740	Occupied rent-free	63906006
656	Owned and fully paid off	63906006
71	Other	63906006
352	Rented	63906007
43	Owned but not yet paid off	63906007
652	Occupied rent-free	63906007
1271	Owned and fully paid off	63906007
21	Other	63906007
194	Rented	63907001
116	Owned but not yet paid off	63907001
1211	Occupied rent-free	63907001
572	Owned and fully paid off	63907001
20	Other	63907001
319	Rented	63907002
141	Owned but not yet paid off	63907002
1482	Occupied rent-free	63907002
263	Owned and fully paid off	63907002
57	Other	63907002
196	Rented	63907003
86	Owned but not yet paid off	63907003
882	Occupied rent-free	63907003
1872	Owned and fully paid off	63907003
153	Other	63907003
236	Rented	63907004
9	Owned but not yet paid off	63907004
898	Occupied rent-free	63907004
841	Owned and fully paid off	63907004
10	Other	63907004
271	Rented	63907005
23	Owned but not yet paid off	63907005
93	Occupied rent-free	63907005
915	Owned and fully paid off	63907005
1	Other	63907005
226	Rented	63907006
244	Owned but not yet paid off	63907006
267	Occupied rent-free	63907006
892	Owned and fully paid off	63907006
45	Other	63907006
104	Rented	63907007
23	Owned but not yet paid off	63907007
550	Occupied rent-free	63907007
1029	Owned and fully paid off	63907007
34	Other	63907007
224	Rented	63907008
57	Owned but not yet paid off	63907008
1205	Occupied rent-free	63907008
442	Owned and fully paid off	63907008
62	Other	63907008
65	Rented	63907009
16	Owned but not yet paid off	63907009
188	Occupied rent-free	63907009
1090	Owned and fully paid off	63907009
83	Other	63907009
164	Rented	63907010
230	Owned but not yet paid off	63907010
89	Occupied rent-free	63907010
1621	Owned and fully paid off	63907010
7	Other	63907010
62	Rented	63907011
58	Owned but not yet paid off	63907011
452	Occupied rent-free	63907011
1023	Owned and fully paid off	63907011
9	Other	63907011
83	Rented	63907012
161	Owned but not yet paid off	63907012
507	Occupied rent-free	63907012
760	Owned and fully paid off	63907012
11	Other	63907012
171	Rented	63907013
17	Owned but not yet paid off	63907013
263	Occupied rent-free	63907013
1354	Owned and fully paid off	63907013
5	Other	63907013
122	Rented	63907014
91	Owned but not yet paid off	63907014
873	Occupied rent-free	63907014
787	Owned and fully paid off	63907014
10	Other	63907014
351	Rented	63907015
37	Owned but not yet paid off	63907015
409	Occupied rent-free	63907015
1033	Owned and fully paid off	63907015
61	Other	63907015
140	Rented	64001001
55	Owned but not yet paid off	64001001
214	Occupied rent-free	64001001
774	Owned and fully paid off	64001001
28	Other	64001001
254	Rented	64001002
22	Owned but not yet paid off	64001002
172	Occupied rent-free	64001002
989	Owned and fully paid off	64001002
7	Other	64001002
142	Rented	64001003
90	Owned but not yet paid off	64001003
732	Occupied rent-free	64001003
2253	Owned and fully paid off	64001003
23	Other	64001003
397	Rented	64001004
170	Owned but not yet paid off	64001004
946	Occupied rent-free	64001004
670	Owned and fully paid off	64001004
104	Other	64001004
470	Rented	64001005
93	Owned but not yet paid off	64001005
1488	Occupied rent-free	64001005
991	Owned and fully paid off	64001005
127	Other	64001005
655	Rented	64001006
396	Owned but not yet paid off	64001006
503	Occupied rent-free	64001006
1616	Owned and fully paid off	64001006
39	Other	64001006
374	Rented	64002001
305	Owned but not yet paid off	64002001
310	Occupied rent-free	64002001
518	Owned and fully paid off	64002001
399	Other	64002001
1645	Rented	64002002
543	Owned but not yet paid off	64002002
1631	Occupied rent-free	64002002
680	Owned and fully paid off	64002002
175	Other	64002002
1269	Rented	64002003
737	Owned but not yet paid off	64002003
687	Occupied rent-free	64002003
720	Owned and fully paid off	64002003
73	Other	64002003
711	Rented	64002004
334	Owned but not yet paid off	64002004
177	Occupied rent-free	64002004
1436	Owned and fully paid off	64002004
120	Other	64002004
385	Rented	64002005
299	Owned but not yet paid off	64002005
38	Occupied rent-free	64002005
246	Owned and fully paid off	64002005
22	Other	64002005
768	Rented	64002006
199	Owned but not yet paid off	64002006
17	Occupied rent-free	64002006
500	Owned and fully paid off	64002006
93	Other	64002006
2542	Rented	64002007
158	Owned but not yet paid off	64002007
56	Occupied rent-free	64002007
333	Owned and fully paid off	64002007
22	Other	64002007
359	Rented	64002008
76	Owned but not yet paid off	64002008
30	Occupied rent-free	64002008
726	Owned and fully paid off	64002008
62	Other	64002008
359	Rented	64002009
261	Owned but not yet paid off	64002009
219	Occupied rent-free	64002009
1358	Owned and fully paid off	64002009
43	Other	64002009
169	Rented	64002010
83	Owned but not yet paid off	64002010
6	Occupied rent-free	64002010
807	Owned and fully paid off	64002010
13	Other	64002010
155	Rented	64002011
33	Owned but not yet paid off	64002011
14	Occupied rent-free	64002011
523	Owned and fully paid off	64002011
6	Other	64002011
425	Rented	64002012
312	Owned but not yet paid off	64002012
18	Occupied rent-free	64002012
941	Owned and fully paid off	64002012
11	Other	64002012
634	Rented	64002013
503	Owned but not yet paid off	64002013
177	Occupied rent-free	64002013
1124	Owned and fully paid off	64002013
25	Other	64002013
217	Rented	64002014
95	Owned but not yet paid off	64002014
25	Occupied rent-free	64002014
918	Owned and fully paid off	64002014
6	Other	64002014
717	Rented	64002015
422	Owned but not yet paid off	64002015
32	Occupied rent-free	64002015
389	Owned and fully paid off	64002015
11	Other	64002015
389	Rented	64002016
24	Owned but not yet paid off	64002016
19	Occupied rent-free	64002016
727	Owned and fully paid off	64002016
10	Other	64002016
326	Rented	64002017
15	Owned but not yet paid off	64002017
46	Occupied rent-free	64002017
1071	Owned and fully paid off	64002017
111	Other	64002017
568	Rented	64002018
22	Owned but not yet paid off	64002018
54	Occupied rent-free	64002018
1058	Owned and fully paid off	64002018
265	Other	64002018
572	Rented	64002019
21	Owned but not yet paid off	64002019
206	Occupied rent-free	64002019
1600	Owned and fully paid off	64002019
238	Other	64002019
271	Rented	64002020
127	Owned but not yet paid off	64002020
641	Occupied rent-free	64002020
1140	Owned and fully paid off	64002020
28	Other	64002020
877	Rented	64002021
171	Owned but not yet paid off	64002021
367	Occupied rent-free	64002021
1921	Owned and fully paid off	64002021
342	Other	64002021
1460	Rented	64002022
126	Owned but not yet paid off	64002022
21	Occupied rent-free	64002022
182	Owned and fully paid off	64002022
8	Other	64002022
509	Rented	64002023
458	Owned but not yet paid off	64002023
55	Occupied rent-free	64002023
439	Owned and fully paid off	64002023
26	Other	64002023
418	Rented	64002024
51	Owned but not yet paid off	64002024
9	Occupied rent-free	64002024
61	Owned and fully paid off	64002024
5	Other	64002024
812	Rented	64002025
217	Owned but not yet paid off	64002025
25	Occupied rent-free	64002025
248	Owned and fully paid off	64002025
28	Other	64002025
580	Rented	64002026
321	Owned but not yet paid off	64002026
532	Occupied rent-free	64002026
1676	Owned and fully paid off	64002026
217	Other	64002026
650	Rented	64003001
177	Owned but not yet paid off	64003001
1507	Occupied rent-free	64003001
1104	Owned and fully paid off	64003001
232	Other	64003001
715	Rented	64003002
347	Owned but not yet paid off	64003002
600	Occupied rent-free	64003002
1857	Owned and fully paid off	64003002
368	Other	64003002
516	Rented	64003003
240	Owned but not yet paid off	64003003
62	Occupied rent-free	64003003
1535	Owned and fully paid off	64003003
59	Other	64003003
1198	Rented	64003004
280	Owned but not yet paid off	64003004
381	Occupied rent-free	64003004
3589	Owned and fully paid off	64003004
227	Other	64003004
644	Rented	64003005
47	Owned but not yet paid off	64003005
118	Occupied rent-free	64003005
2202	Owned and fully paid off	64003005
180	Other	64003005
934	Rented	64003006
300	Owned but not yet paid off	64003006
273	Occupied rent-free	64003006
2025	Owned and fully paid off	64003006
41	Other	64003006
504	Rented	64003007
443	Owned but not yet paid off	64003007
31	Occupied rent-free	64003007
1897	Owned and fully paid off	64003007
255	Other	64003007
666	Rented	64003008
263	Owned but not yet paid off	64003008
31	Occupied rent-free	64003008
1707	Owned and fully paid off	64003008
67	Other	64003008
767	Rented	64003009
350	Owned but not yet paid off	64003009
303	Occupied rent-free	64003009
1450	Owned and fully paid off	64003009
31	Other	64003009
489	Rented	64003010
43	Owned but not yet paid off	64003010
144	Occupied rent-free	64003010
1287	Owned and fully paid off	64003010
28	Other	64003010
907	Rented	64003011
37	Owned but not yet paid off	64003011
214	Occupied rent-free	64003011
1408	Owned and fully paid off	64003011
9	Other	64003011
689	Rented	64003012
209	Owned but not yet paid off	64003012
894	Occupied rent-free	64003012
2939	Owned and fully paid off	64003012
100	Other	64003012
795	Rented	64003013
67	Owned but not yet paid off	64003013
148	Occupied rent-free	64003013
2082	Owned and fully paid off	64003013
79	Other	64003013
407	Rented	64003014
42	Owned but not yet paid off	64003014
106	Occupied rent-free	64003014
2255	Owned and fully paid off	64003014
32	Other	64003014
1171	Rented	64003015
787	Owned but not yet paid off	64003015
318	Occupied rent-free	64003015
850	Owned and fully paid off	64003015
165	Other	64003015
960	Rented	64003016
1064	Owned but not yet paid off	64003016
75	Occupied rent-free	64003016
890	Owned and fully paid off	64003016
72	Other	64003016
1411	Rented	64003017
1262	Owned but not yet paid off	64003017
272	Occupied rent-free	64003017
1105	Owned and fully paid off	64003017
137	Other	64003017
1086	Rented	64003018
842	Owned but not yet paid off	64003018
869	Occupied rent-free	64003018
1131	Owned and fully paid off	64003018
197	Other	64003018
2475	Rented	64003019
708	Owned but not yet paid off	64003019
145	Occupied rent-free	64003019
864	Owned and fully paid off	64003019
36	Other	64003019
620	Rented	64003020
131	Owned but not yet paid off	64003020
32	Occupied rent-free	64003020
1191	Owned and fully paid off	64003020
10	Other	64003020
2089	Rented	64003021
6	Owned but not yet paid off	64003021
48	Occupied rent-free	64003021
8	Owned and fully paid off	64003021
13	Other	64003021
1189	Rented	64003022
158	Owned but not yet paid off	64003022
885	Occupied rent-free	64003022
4580	Owned and fully paid off	64003022
252	Other	64003022
812	Rented	64003023
286	Owned but not yet paid off	64003023
186	Occupied rent-free	64003023
2803	Owned and fully paid off	64003023
40	Other	64003023
548	Rented	64003024
84	Owned but not yet paid off	64003024
136	Occupied rent-free	64003024
2158	Owned and fully paid off	64003024
131	Other	64003024
538	Rented	64003025
382	Owned but not yet paid off	64003025
74	Occupied rent-free	64003025
1755	Owned and fully paid off	64003025
32	Other	64003025
712	Rented	64003026
240	Owned but not yet paid off	64003026
392	Occupied rent-free	64003026
1269	Owned and fully paid off	64003026
11	Other	64003026
734	Rented	64003027
83	Owned but not yet paid off	64003027
485	Occupied rent-free	64003027
1926	Owned and fully paid off	64003027
189	Other	64003027
1869	Rented	64003028
459	Owned but not yet paid off	64003028
221	Occupied rent-free	64003028
774	Owned and fully paid off	64003028
69	Other	64003028
1980	Rented	64003029
593	Owned but not yet paid off	64003029
181	Occupied rent-free	64003029
648	Owned and fully paid off	64003029
47	Other	64003029
1649	Rented	64003030
735	Owned but not yet paid off	64003030
219	Occupied rent-free	64003030
1188	Owned and fully paid off	64003030
34	Other	64003030
1636	Rented	64003031
1129	Owned but not yet paid off	64003031
243	Occupied rent-free	64003031
1087	Owned and fully paid off	64003031
132	Other	64003031
2048	Rented	64003032
508	Owned but not yet paid off	64003032
148	Occupied rent-free	64003032
407	Owned and fully paid off	64003032
268	Other	64003032
841	Rented	64003033
260	Owned but not yet paid off	64003033
491	Occupied rent-free	64003033
1676	Owned and fully paid off	64003033
253	Other	64003033
637	Rented	64003034
164	Owned but not yet paid off	64003034
282	Occupied rent-free	64003034
1286	Owned and fully paid off	64003034
68	Other	64003034
587	Rented	64003035
291	Owned but not yet paid off	64003035
833	Occupied rent-free	64003035
1773	Owned and fully paid off	64003035
39	Other	64003035
195	Rented	64004001
302	Owned but not yet paid off	64004001
370	Occupied rent-free	64004001
575	Owned and fully paid off	64004001
16	Other	64004001
134	Rented	64004002
106	Owned but not yet paid off	64004002
538	Occupied rent-free	64004002
391	Owned and fully paid off	64004002
164	Other	64004002
221	Rented	64004003
86	Owned but not yet paid off	64004003
595	Occupied rent-free	64004003
422	Owned and fully paid off	64004003
45	Other	64004003
160	Rented	64004004
119	Owned but not yet paid off	64004004
425	Occupied rent-free	64004004
694	Owned and fully paid off	64004004
47	Other	64004004
518	Rented	64004005
232	Owned but not yet paid off	64004005
323	Occupied rent-free	64004005
505	Owned and fully paid off	64004005
51	Other	64004005
369	Rented	64004006
120	Owned but not yet paid off	64004006
74	Occupied rent-free	64004006
1375	Owned and fully paid off	64004006
28	Other	64004006
95	Rented	64004007
29	Owned but not yet paid off	64004007
33	Occupied rent-free	64004007
802	Owned and fully paid off	64004007
26	Other	64004007
462	Rented	64004008
167	Owned but not yet paid off	64004008
1610	Occupied rent-free	64004008
1927	Owned and fully paid off	64004008
136	Other	64004008
141	Rented	64004009
74	Owned but not yet paid off	64004009
365	Occupied rent-free	64004009
733	Owned and fully paid off	64004009
16	Other	64004009
248	Rented	64004010
54	Owned but not yet paid off	64004010
1157	Occupied rent-free	64004010
1401	Owned and fully paid off	64004010
87	Other	64004010
95	Rented	64004011
95	Owned but not yet paid off	64004011
248	Occupied rent-free	64004011
1147	Owned and fully paid off	64004011
156	Other	64004011
62	Rented	30601001
16	Owned but not yet paid off	30601001
86	Occupied rent-free	30601001
422	Owned and fully paid off	30601001
41	Other	30601001
334	Rented	30601002
63	Owned but not yet paid off	30601002
519	Occupied rent-free	30601002
126	Owned and fully paid off	30601002
16	Other	30601002
302	Rented	30601003
45	Owned but not yet paid off	30601003
129	Occupied rent-free	30601003
496	Owned and fully paid off	30601003
17	Other	30601003
138	Rented	30601004
58	Owned but not yet paid off	30601004
96	Occupied rent-free	30601004
548	Owned and fully paid off	30601004
28	Other	30601004
157	Rented	30602001
124	Owned but not yet paid off	30602001
197	Occupied rent-free	30602001
1062	Owned and fully paid off	30602001
152	Other	30602001
108	Rented	30602002
35	Owned but not yet paid off	30602002
206	Occupied rent-free	30602002
1161	Owned and fully paid off	30602002
129	Other	30602002
86	Rented	30602003
12	Owned but not yet paid off	30602003
59	Occupied rent-free	30602003
1045	Owned and fully paid off	30602003
14	Other	30602003
450	Rented	30602004
207	Owned but not yet paid off	30602004
92	Occupied rent-free	30602004
511	Owned and fully paid off	30602004
33	Other	30602004
288	Rented	30602005
110	Owned but not yet paid off	30602005
52	Occupied rent-free	30602005
849	Owned and fully paid off	30602005
10	Other	30602005
235	Rented	30602006
16	Owned but not yet paid off	30602006
187	Occupied rent-free	30602006
1179	Owned and fully paid off	30602006
50	Other	30602006
122	Rented	30602007
19	Owned but not yet paid off	30602007
98	Occupied rent-free	30602007
1056	Owned and fully paid off	30602007
13	Other	30602007
341	Rented	30602008
4	Owned but not yet paid off	30602008
287	Occupied rent-free	30602008
1017	Owned and fully paid off	30602008
17	Other	30602008
134	Rented	30602009
66	Owned but not yet paid off	30602009
89	Occupied rent-free	30602009
1093	Owned and fully paid off	30602009
23	Other	30602009
61	Rented	30604001
13	Owned but not yet paid off	30604001
116	Occupied rent-free	30604001
433	Owned and fully paid off	30604001
40	Other	30604001
131	Rented	30604002
36	Owned but not yet paid off	30604002
177	Occupied rent-free	30604002
669	Owned and fully paid off	30604002
5	Other	30604002
107	Rented	30604003
12	Owned but not yet paid off	30604003
115	Occupied rent-free	30604003
475	Owned and fully paid off	30604003
42	Other	30604003
48	Rented	30604004
8	Owned but not yet paid off	30604004
274	Occupied rent-free	30604004
363	Owned and fully paid off	30604004
19	Other	30604004
204	Rented	30605001
141	Owned but not yet paid off	30605001
82	Occupied rent-free	30605001
545	Owned and fully paid off	30605001
25	Other	30605001
523	Rented	30605002
156	Owned but not yet paid off	30605002
117	Occupied rent-free	30605002
656	Owned and fully paid off	30605002
30	Other	30605002
221	Rented	30605003
71	Owned but not yet paid off	30605003
352	Occupied rent-free	30605003
532	Owned and fully paid off	30605003
47	Other	30605003
296	Rented	30605004
158	Owned but not yet paid off	30605004
469	Occupied rent-free	30605004
500	Owned and fully paid off	30605004
23	Other	30605004
173	Rented	30605005
57	Owned but not yet paid off	30605005
329	Occupied rent-free	30605005
605	Owned and fully paid off	30605005
28	Other	30605005
196	Rented	30606001
82	Owned but not yet paid off	30606001
68	Occupied rent-free	30606001
465	Owned and fully paid off	30606001
7	Other	30606001
191	Rented	30606002
52	Owned but not yet paid off	30606002
141	Occupied rent-free	30606002
467	Owned and fully paid off	30606002
5	Other	30606002
191	Rented	30606003
35	Owned but not yet paid off	30606003
788	Occupied rent-free	30606003
316	Owned and fully paid off	30606003
19	Other	30606003
197	Rented	30606004
24	Owned but not yet paid off	30606004
214	Occupied rent-free	30606004
374	Owned and fully paid off	30606004
8	Other	30606004
530	Rented	30607001
16	Owned but not yet paid off	30607001
135	Occupied rent-free	30607001
465	Owned and fully paid off	30607001
14	Other	30607001
73	Rented	30607002
5	Owned but not yet paid off	30607002
67	Occupied rent-free	30607002
529	Owned and fully paid off	30607002
16	Other	30607002
196	Rented	30607003
6	Owned but not yet paid off	30607003
176	Occupied rent-free	30607003
551	Owned and fully paid off	30607003
11	Other	30607003
633	Rented	30607004
26	Owned but not yet paid off	30607004
156	Occupied rent-free	30607004
171	Owned and fully paid off	30607004
20	Other	30607004
176	Rented	30701001
33	Owned but not yet paid off	30701001
104	Occupied rent-free	30701001
920	Owned and fully paid off	30701001
21	Other	30701001
163	Rented	30701002
13	Owned but not yet paid off	30701002
76	Occupied rent-free	30701002
835	Owned and fully paid off	30701002
171	Other	30701002
215	Rented	30701003
64	Owned but not yet paid off	30701003
886	Occupied rent-free	30701003
354	Owned and fully paid off	30701003
88	Other	30701003
218	Rented	30701004
51	Owned but not yet paid off	30701004
163	Occupied rent-free	30701004
538	Owned and fully paid off	30701004
38	Other	30701004
418	Rented	30702001
109	Owned but not yet paid off	30702001
362	Occupied rent-free	30702001
786	Owned and fully paid off	30702001
27	Other	30702001
186	Rented	30702002
59	Owned but not yet paid off	30702002
787	Occupied rent-free	30702002
278	Owned and fully paid off	30702002
54	Other	30702002
394	Rented	30702003
169	Owned but not yet paid off	30702003
515	Occupied rent-free	30702003
729	Owned and fully paid off	30702003
65	Other	30702003
229	Rented	30702004
13	Owned but not yet paid off	30702004
172	Occupied rent-free	30702004
1060	Owned and fully paid off	30702004
53	Other	30702004
331	Rented	30702005
98	Owned but not yet paid off	30702005
112	Occupied rent-free	30702005
827	Owned and fully paid off	30702005
5	Other	30702005
160	Rented	30703001
91	Owned but not yet paid off	30703001
43	Occupied rent-free	30703001
727	Owned and fully paid off	30703001
30	Other	30703001
229	Rented	30703002
262	Owned but not yet paid off	30703002
41	Occupied rent-free	30703002
944	Owned and fully paid off	30703002
50	Other	30703002
151	Rented	30703003
473	Owned but not yet paid off	30703003
62	Occupied rent-free	30703003
770	Owned and fully paid off	30703003
27	Other	30703003
228	Rented	30703004
18	Owned but not yet paid off	30703004
407	Occupied rent-free	30703004
576	Owned and fully paid off	30703004
35	Other	30703004
539	Rented	30703005
471	Owned but not yet paid off	30703005
22	Occupied rent-free	30703005
630	Owned and fully paid off	30703005
19	Other	30703005
525	Rented	30703006
84	Owned but not yet paid off	30703006
647	Occupied rent-free	30703006
470	Owned and fully paid off	30703006
33	Other	30703006
333	Rented	30703007
45	Owned but not yet paid off	30703007
409	Occupied rent-free	30703007
742	Owned and fully paid off	30703007
161	Other	30703007
212	Rented	30704001
78	Owned but not yet paid off	30704001
51	Occupied rent-free	30704001
330	Owned and fully paid off	30704001
6	Other	30704001
167	Rented	30704002
20	Owned but not yet paid off	30704002
94	Occupied rent-free	30704002
581	Owned and fully paid off	30704002
14	Other	30704002
141	Rented	30704003
38	Owned but not yet paid off	30704003
281	Occupied rent-free	30704003
230	Owned and fully paid off	30704003
39	Other	30704003
164	Rented	30704004
27	Owned but not yet paid off	30704004
347	Occupied rent-free	30704004
362	Owned and fully paid off	30704004
41	Other	30704004
101	Rented	30705001
16	Owned but not yet paid off	30705001
130	Occupied rent-free	30705001
427	Owned and fully paid off	30705001
73	Other	30705001
79	Rented	30705002
15	Owned but not yet paid off	30705002
248	Occupied rent-free	30705002
577	Owned and fully paid off	30705002
155	Other	30705002
176	Rented	30705003
48	Owned but not yet paid off	30705003
107	Occupied rent-free	30705003
175	Owned and fully paid off	30705003
15	Other	30705003
135	Rented	30705004
33	Owned but not yet paid off	30705004
197	Occupied rent-free	30705004
274	Owned and fully paid off	30705004
15	Other	30705004
152	Rented	30706001
52	Owned but not yet paid off	30706001
280	Occupied rent-free	30706001
424	Owned and fully paid off	30706001
48	Other	30706001
340	Rented	30706002
99	Owned but not yet paid off	30706002
450	Occupied rent-free	30706002
556	Owned and fully paid off	30706002
39	Other	30706002
102	Rented	30706003
81	Owned but not yet paid off	30706003
82	Occupied rent-free	30706003
441	Owned and fully paid off	30706003
5	Other	30706003
79	Rented	30706004
263	Owned but not yet paid off	30706004
423	Occupied rent-free	30706004
211	Owned and fully paid off	30706004
12	Other	30706004
263	Rented	30707001
8	Owned but not yet paid off	30707001
84	Occupied rent-free	30707001
1209	Owned and fully paid off	30707001
14	Other	30707001
87	Rented	30707002
15	Owned but not yet paid off	30707002
35	Occupied rent-free	30707002
623	Owned and fully paid off	30707002
2	Other	30707002
349	Rented	30707003
97	Owned but not yet paid off	30707003
753	Occupied rent-free	30707003
614	Owned and fully paid off	30707003
45	Other	30707003
388	Rented	30707004
50	Owned but not yet paid off	30707004
612	Occupied rent-free	30707004
550	Owned and fully paid off	30707004
31	Other	30707004
305	Rented	30708001
53	Owned but not yet paid off	30708001
556	Occupied rent-free	30708001
627	Owned and fully paid off	30708001
37	Other	30708001
243	Rented	30708002
46	Owned but not yet paid off	30708002
1009	Occupied rent-free	30708002
176	Owned and fully paid off	30708002
73	Other	30708002
232	Rented	30708003
16	Owned but not yet paid off	30708003
412	Occupied rent-free	30708003
798	Owned and fully paid off	30708003
187	Other	30708003
138	Rented	30708004
27	Owned but not yet paid off	30708004
472	Occupied rent-free	30708004
1139	Owned and fully paid off	30708004
45	Other	30708004
280	Rented	30708005
98	Owned but not yet paid off	30708005
376	Occupied rent-free	30708005
266	Owned and fully paid off	30708005
225	Other	30708005
251	Rented	30708006
91	Owned but not yet paid off	30708006
811	Occupied rent-free	30708006
459	Owned and fully paid off	30708006
131	Other	30708006
25	Rented	30801001
7	Owned but not yet paid off	30801001
113	Occupied rent-free	30801001
73	Owned and fully paid off	30801001
0	Other	30801001
46	Rented	30801002
6	Owned but not yet paid off	30801002
256	Occupied rent-free	30801002
388	Owned and fully paid off	30801002
27	Other	30801002
85	Rented	30801003
43	Owned but not yet paid off	30801003
33	Occupied rent-free	30801003
309	Owned and fully paid off	30801003
3	Other	30801003
87	Rented	30801004
1	Owned but not yet paid off	30801004
73	Occupied rent-free	30801004
208	Owned and fully paid off	30801004
2	Other	30801004
1813	Rented	30802001
33	Owned but not yet paid off	30802001
588	Occupied rent-free	30802001
492	Owned and fully paid off	30802001
118	Other	30802001
698	Rented	30802002
30	Owned but not yet paid off	30802002
185	Occupied rent-free	30802002
879	Owned and fully paid off	30802002
100	Other	30802002
760	Rented	30802003
122	Owned but not yet paid off	30802003
360	Occupied rent-free	30802003
766	Owned and fully paid off	30802003
36	Other	30802003
660	Rented	30802004
79	Owned but not yet paid off	30802004
176	Occupied rent-free	30802004
749	Owned and fully paid off	30802004
17	Other	30802004
323	Rented	30802005
149	Owned but not yet paid off	30802005
463	Occupied rent-free	30802005
585	Owned and fully paid off	30802005
45	Other	30802005
142	Rented	30802006
138	Owned but not yet paid off	30802006
318	Occupied rent-free	30802006
1112	Owned and fully paid off	30802006
20	Other	30802006
236	Rented	30802007
29	Owned but not yet paid off	30802007
471	Occupied rent-free	30802007
494	Owned and fully paid off	30802007
69	Other	30802007
431	Rented	30802008
114	Owned but not yet paid off	30802008
469	Occupied rent-free	30802008
591	Owned and fully paid off	30802008
177	Other	30802008
357	Rented	30802009
73	Owned but not yet paid off	30802009
447	Occupied rent-free	30802009
760	Owned and fully paid off	30802009
29	Other	30802009
117	Rented	30803001
301	Owned but not yet paid off	30803001
150	Occupied rent-free	30803001
709	Owned and fully paid off	30803001
23	Other	30803001
217	Rented	30803002
98	Owned but not yet paid off	30803002
529	Occupied rent-free	30803002
704	Owned and fully paid off	30803002
30	Other	30803002
168	Rented	30803003
173	Owned but not yet paid off	30803003
42	Occupied rent-free	30803003
759	Owned and fully paid off	30803003
17	Other	30803003
245	Rented	30803004
12	Owned but not yet paid off	30803004
41	Occupied rent-free	30803004
717	Owned and fully paid off	30803004
7	Other	30803004
168	Rented	30803005
108	Owned but not yet paid off	30803005
309	Occupied rent-free	30803005
967	Owned and fully paid off	30803005
11	Other	30803005
283	Rented	30803006
614	Owned but not yet paid off	30803006
478	Occupied rent-free	30803006
333	Owned and fully paid off	30803006
29	Other	30803006
206	Rented	30803007
174	Owned but not yet paid off	30803007
179	Occupied rent-free	30803007
383	Owned and fully paid off	30803007
7	Other	30803007
968	Rented	30803008
591	Owned but not yet paid off	30803008
92	Occupied rent-free	30803008
601	Owned and fully paid off	30803008
28	Other	30803008
807	Rented	30803009
485	Owned but not yet paid off	30803009
223	Occupied rent-free	30803009
650	Owned and fully paid off	30803009
38	Other	30803009
168	Rented	30803010
74	Owned but not yet paid off	30803010
1405	Occupied rent-free	30803010
682	Owned and fully paid off	30803010
9	Other	30803010
309	Rented	30803011
216	Owned but not yet paid off	30803011
737	Occupied rent-free	30803011
492	Owned and fully paid off	30803011
461	Other	30803011
200	Rented	30803012
141	Owned but not yet paid off	30803012
528	Occupied rent-free	30803012
697	Owned and fully paid off	30803012
102	Other	30803012
291	Rented	30803013
10	Owned but not yet paid off	30803013
579	Occupied rent-free	30803013
915	Owned and fully paid off	30803013
15	Other	30803013
193	Rented	30803014
81	Owned but not yet paid off	30803014
113	Occupied rent-free	30803014
877	Owned and fully paid off	30803014
156	Other	30803014
110	Rented	30804001
26	Owned but not yet paid off	30804001
254	Occupied rent-free	30804001
707	Owned and fully paid off	30804001
5	Other	30804001
102	Rented	30804002
494	Owned but not yet paid off	30804002
295	Occupied rent-free	30804002
334	Owned and fully paid off	30804002
37	Other	30804002
362	Rented	30804003
50	Owned but not yet paid off	30804003
99	Occupied rent-free	30804003
439	Owned and fully paid off	30804003
11	Other	30804003
65	Rented	30804004
9	Owned but not yet paid off	30804004
12	Occupied rent-free	30804004
724	Owned and fully paid off	30804004
11	Other	30804004
256	Rented	30805001
28	Owned but not yet paid off	30805001
27	Occupied rent-free	30805001
449	Owned and fully paid off	30805001
143	Other	30805001
468	Rented	30805002
50	Owned but not yet paid off	30805002
451	Occupied rent-free	30805002
766	Owned and fully paid off	30805002
20	Other	30805002
204	Rented	30805003
34	Owned but not yet paid off	30805003
569	Occupied rent-free	30805003
662	Owned and fully paid off	30805003
17	Other	30805003
225	Rented	30805004
6	Owned but not yet paid off	30805004
145	Occupied rent-free	30805004
911	Owned and fully paid off	30805004
7	Other	30805004
664	Rented	30805005
203	Owned but not yet paid off	30805005
768	Occupied rent-free	30805005
803	Owned and fully paid off	30805005
177	Other	30805005
573	Rented	30805006
102	Owned but not yet paid off	30805006
639	Occupied rent-free	30805006
388	Owned and fully paid off	30805006
83	Other	30805006
113	Rented	30806001
128	Owned but not yet paid off	30806001
153	Occupied rent-free	30806001
621	Owned and fully paid off	30806001
23	Other	30806001
246	Rented	30806002
55	Owned but not yet paid off	30806002
257	Occupied rent-free	30806002
208	Owned and fully paid off	30806002
67	Other	30806002
418	Rented	30806003
117	Owned but not yet paid off	30806003
524	Occupied rent-free	30806003
626	Owned and fully paid off	30806003
16	Other	30806003
1003	Rented	30806004
52	Owned but not yet paid off	30806004
530	Occupied rent-free	30806004
138	Owned and fully paid off	30806004
86	Other	30806004
140	Rented	30901001
367	Owned but not yet paid off	30901001
126	Occupied rent-free	30901001
660	Owned and fully paid off	30901001
53	Other	30901001
591	Rented	30901002
308	Owned but not yet paid off	30901002
555	Occupied rent-free	30901002
1135	Owned and fully paid off	30901002
125	Other	30901002
234	Rented	30901003
754	Owned but not yet paid off	30901003
177	Occupied rent-free	30901003
727	Owned and fully paid off	30901003
26	Other	30901003
175	Rented	30901004
43	Owned but not yet paid off	30901004
333	Occupied rent-free	30901004
866	Owned and fully paid off	30901004
142	Other	30901004
139	Rented	30901005
221	Owned but not yet paid off	30901005
70	Occupied rent-free	30901005
1001	Owned and fully paid off	30901005
140	Other	30901005
150	Rented	30901006
248	Owned but not yet paid off	30901006
281	Occupied rent-free	30901006
708	Owned and fully paid off	30901006
91	Other	30901006
180	Rented	30901007
110	Owned but not yet paid off	30901007
35	Occupied rent-free	30901007
1498	Owned and fully paid off	30901007
24	Other	30901007
349	Rented	30901008
500	Owned but not yet paid off	30901008
657	Occupied rent-free	30901008
683	Owned and fully paid off	30901008
71	Other	30901008
64	Rented	30901009
472	Owned but not yet paid off	30901009
3	Occupied rent-free	30901009
907	Owned and fully paid off	30901009
14	Other	30901009
155	Rented	30901010
157	Owned but not yet paid off	30901010
132	Occupied rent-free	30901010
935	Owned and fully paid off	30901010
18	Other	30901010
258	Rented	30901011
426	Owned but not yet paid off	30901011
46	Occupied rent-free	30901011
905	Owned and fully paid off	30901011
22	Other	30901011
148	Rented	30901012
167	Owned but not yet paid off	30901012
150	Occupied rent-free	30901012
770	Owned and fully paid off	30901012
8	Other	30901012
795	Rented	30901013
172	Owned but not yet paid off	30901013
253	Occupied rent-free	30901013
733	Owned and fully paid off	30901013
80	Other	30901013
334	Rented	30901014
446	Owned but not yet paid off	30901014
68	Occupied rent-free	30901014
775	Owned and fully paid off	30901014
29	Other	30901014
156	Rented	30901015
324	Owned but not yet paid off	30901015
322	Occupied rent-free	30901015
724	Owned and fully paid off	30901015
101	Other	30901015
218	Rented	30901016
276	Owned but not yet paid off	30901016
2013	Occupied rent-free	30901016
1496	Owned and fully paid off	30901016
44	Other	30901016
315	Rented	30901017
528	Owned but not yet paid off	30901017
372	Occupied rent-free	30901017
1222	Owned and fully paid off	30901017
30	Other	30901017
579	Rented	30901018
13	Owned but not yet paid off	30901018
235	Occupied rent-free	30901018
337	Owned and fully paid off	30901018
15	Other	30901018
294	Rented	30901019
303	Owned but not yet paid off	30901019
67	Occupied rent-free	30901019
900	Owned and fully paid off	30901019
25	Other	30901019
1020	Rented	30901020
430	Owned but not yet paid off	30901020
161	Occupied rent-free	30901020
563	Owned and fully paid off	30901020
71	Other	30901020
1081	Rented	30901021
780	Owned but not yet paid off	30901021
119	Occupied rent-free	30901021
520	Owned and fully paid off	30901021
81	Other	30901021
378	Rented	30901022
231	Owned but not yet paid off	30901022
641	Occupied rent-free	30901022
817	Owned and fully paid off	30901022
125	Other	30901022
678	Rented	30901023
515	Owned but not yet paid off	30901023
52	Occupied rent-free	30901023
515	Owned and fully paid off	30901023
35	Other	30901023
473	Rented	30901024
692	Owned but not yet paid off	30901024
90	Occupied rent-free	30901024
490	Owned and fully paid off	30901024
29	Other	30901024
607	Rented	30901025
449	Owned but not yet paid off	30901025
107	Occupied rent-free	30901025
568	Owned and fully paid off	30901025
95	Other	30901025
262	Rented	30901026
209	Owned but not yet paid off	30901026
434	Occupied rent-free	30901026
1485	Owned and fully paid off	30901026
110	Other	30901026
165	Rented	30901027
26	Owned but not yet paid off	30901027
512	Occupied rent-free	30901027
1324	Owned and fully paid off	30901027
527	Other	30901027
450	Rented	30901028
415	Owned but not yet paid off	30901028
95	Occupied rent-free	30901028
953	Owned and fully paid off	30901028
129	Other	30901028
92	Rented	30901029
46	Owned but not yet paid off	30901029
224	Occupied rent-free	30901029
122	Owned and fully paid off	30901029
36	Other	30901029
110	Rented	30901030
64	Owned but not yet paid off	30901030
730	Occupied rent-free	30901030
916	Owned and fully paid off	30901030
922	Other	30901030
270	Rented	30901031
439	Owned but not yet paid off	30901031
210	Occupied rent-free	30901031
1533	Owned and fully paid off	30901031
30	Other	30901031
60	Rented	30902001
9	Owned but not yet paid off	30902001
338	Occupied rent-free	30902001
841	Owned and fully paid off	30902001
33	Other	30902001
260	Rented	30902002
85	Owned but not yet paid off	30902002
349	Occupied rent-free	30902002
746	Owned and fully paid off	30902002
82	Other	30902002
136	Rented	30902003
10	Owned but not yet paid off	30902003
976	Occupied rent-free	30902003
1041	Owned and fully paid off	30902003
187	Other	30902003
102	Rented	30902004
19	Owned but not yet paid off	30902004
768	Occupied rent-free	30902004
550	Owned and fully paid off	30902004
147	Other	30902004
108	Rented	30902005
17	Owned but not yet paid off	30902005
1090	Occupied rent-free	30902005
900	Owned and fully paid off	30902005
56	Other	30902005
464	Rented	30902006
45	Owned but not yet paid off	30902006
567	Occupied rent-free	30902006
266	Owned and fully paid off	30902006
103	Other	30902006
95	Rented	30902007
76	Owned but not yet paid off	30902007
371	Occupied rent-free	30902007
1029	Owned and fully paid off	30902007
41	Other	30902007
123	Rented	30903001
36	Owned but not yet paid off	30903001
310	Occupied rent-free	30903001
1277	Owned and fully paid off	30903001
34	Other	30903001
138	Rented	30903002
3	Owned but not yet paid off	30903002
457	Occupied rent-free	30903002
619	Owned and fully paid off	30903002
35	Other	30903002
29	Rented	30903003
35	Owned but not yet paid off	30903003
46	Occupied rent-free	30903003
483	Owned and fully paid off	30903003
6	Other	30903003
241	Rented	30903004
74	Owned but not yet paid off	30903004
393	Occupied rent-free	30903004
625	Owned and fully paid off	30903004
145	Other	30903004
236	Rented	30903005
90	Owned but not yet paid off	30903005
96	Occupied rent-free	30903005
346	Owned and fully paid off	30903005
244	Other	30903005
97	Rented	30904001
8	Owned but not yet paid off	30904001
1132	Occupied rent-free	30904001
988	Owned and fully paid off	30904001
211	Other	30904001
158	Rented	30904002
27	Owned but not yet paid off	30904002
42	Occupied rent-free	30904002
1187	Owned and fully paid off	30904002
3	Other	30904002
117	Rented	30904003
11	Owned but not yet paid off	30904003
154	Occupied rent-free	30904003
971	Owned and fully paid off	30904003
137	Other	30904003
296	Rented	30904004
22	Owned but not yet paid off	30904004
769	Occupied rent-free	30904004
845	Owned and fully paid off	30904004
24	Other	30904004
573	Rented	30904005
77	Owned but not yet paid off	30904005
1137	Occupied rent-free	30904005
635	Owned and fully paid off	30904005
31	Other	30904005
446	Rented	30904006
278	Owned but not yet paid off	30904006
46	Occupied rent-free	30904006
310	Owned and fully paid off	30904006
52	Other	30904006
167	Rented	30904007
6	Owned but not yet paid off	30904007
210	Occupied rent-free	30904007
1970	Owned and fully paid off	30904007
47	Other	30904007
344	Rented	30904008
19	Owned but not yet paid off	30904008
150	Occupied rent-free	30904008
1765	Owned and fully paid off	30904008
31	Other	30904008
241	Rented	30904009
19	Owned but not yet paid off	30904009
449	Occupied rent-free	30904009
1163	Owned and fully paid off	30904009
183	Other	30904009
131	Rented	34501001
189	Owned but not yet paid off	34501001
646	Occupied rent-free	34501001
533	Owned and fully paid off	34501001
103	Other	34501001
53	Rented	34501002
3	Owned but not yet paid off	34501002
36	Occupied rent-free	34501002
287	Owned and fully paid off	34501002
1194	Other	34501002
53	Rented	34501003
48	Owned but not yet paid off	34501003
72	Occupied rent-free	34501003
452	Owned and fully paid off	34501003
903	Other	34501003
823	Rented	34501004
38	Owned but not yet paid off	34501004
493	Occupied rent-free	34501004
466	Owned and fully paid off	34501004
507	Other	34501004
113	Rented	34501005
46	Owned but not yet paid off	34501005
73	Occupied rent-free	34501005
1333	Owned and fully paid off	34501005
7	Other	34501005
38	Rented	34501006
2	Owned but not yet paid off	34501006
17	Occupied rent-free	34501006
1468	Owned and fully paid off	34501006
23	Other	34501006
49	Rented	34501007
12	Owned but not yet paid off	34501007
279	Occupied rent-free	34501007
906	Owned and fully paid off	34501007
101	Other	34501007
46	Rented	34501008
4	Owned but not yet paid off	34501008
618	Occupied rent-free	34501008
516	Owned and fully paid off	34501008
203	Other	34501008
69	Rented	34501009
60	Owned but not yet paid off	34501009
825	Occupied rent-free	34501009
864	Owned and fully paid off	34501009
5	Other	34501009
41	Rented	34501010
10	Owned but not yet paid off	34501010
539	Occupied rent-free	34501010
965	Owned and fully paid off	34501010
40	Other	34501010
76	Rented	34501011
11	Owned but not yet paid off	34501011
136	Occupied rent-free	34501011
1158	Owned and fully paid off	34501011
4	Other	34501011
59	Rented	34501012
226	Owned but not yet paid off	34501012
619	Occupied rent-free	34501012
497	Owned and fully paid off	34501012
7	Other	34501012
46	Rented	34501013
98	Owned but not yet paid off	34501013
582	Occupied rent-free	34501013
1037	Owned and fully paid off	34501013
29	Other	34501013
29	Rented	34501014
41	Owned but not yet paid off	34501014
748	Occupied rent-free	34501014
569	Owned and fully paid off	34501014
17	Other	34501014
55	Rented	34501015
27	Owned but not yet paid off	34501015
733	Occupied rent-free	34501015
589	Owned and fully paid off	34501015
10	Other	34501015
699	Rented	34502001
421	Owned but not yet paid off	34502001
90	Occupied rent-free	34502001
438	Owned and fully paid off	34502001
20	Other	34502001
182	Rented	34502002
171	Owned but not yet paid off	34502002
430	Occupied rent-free	34502002
1818	Owned and fully paid off	34502002
76	Other	34502002
773	Rented	34502003
91	Owned but not yet paid off	34502003
1071	Occupied rent-free	34502003
1417	Owned and fully paid off	34502003
144	Other	34502003
330	Rented	34502004
155	Owned but not yet paid off	34502004
36	Occupied rent-free	34502004
1103	Owned and fully paid off	34502004
11	Other	34502004
130	Rented	34502005
10	Owned but not yet paid off	34502005
52	Occupied rent-free	34502005
615	Owned and fully paid off	34502005
199	Other	34502005
522	Rented	34502006
18	Owned but not yet paid off	34502006
116	Occupied rent-free	34502006
2229	Owned and fully paid off	34502006
10	Other	34502006
51	Rented	34502007
9	Owned but not yet paid off	34502007
13	Occupied rent-free	34502007
1513	Owned and fully paid off	34502007
2	Other	34502007
210	Rented	34502008
4	Owned but not yet paid off	34502008
484	Occupied rent-free	34502008
684	Owned and fully paid off	34502008
413	Other	34502008
74	Rented	34502009
2	Owned but not yet paid off	34502009
27	Occupied rent-free	34502009
847	Owned and fully paid off	34502009
14	Other	34502009
286	Rented	34502010
10	Owned but not yet paid off	34502010
69	Occupied rent-free	34502010
1929	Owned and fully paid off	34502010
623	Other	34502010
211	Rented	34502011
10	Owned but not yet paid off	34502011
333	Occupied rent-free	34502011
1338	Owned and fully paid off	34502011
15	Other	34502011
285	Rented	34502012
119	Owned but not yet paid off	34502012
380	Occupied rent-free	34502012
1904	Owned and fully paid off	34502012
109	Other	34502012
389	Rented	34502013
151	Owned but not yet paid off	34502013
296	Occupied rent-free	34502013
615	Owned and fully paid off	34502013
22	Other	34502013
1516	Rented	34503001
1114	Owned but not yet paid off	34503001
233	Occupied rent-free	34503001
329	Owned and fully paid off	34503001
71	Other	34503001
295	Rented	34503002
91	Owned but not yet paid off	34503002
536	Occupied rent-free	34503002
162	Owned and fully paid off	34503002
379	Other	34503002
655	Rented	34503003
20	Owned but not yet paid off	34503003
69	Occupied rent-free	34503003
631	Owned and fully paid off	34503003
21	Other	34503003
365	Rented	34503004
50	Owned but not yet paid off	34503004
200	Occupied rent-free	34503004
960	Owned and fully paid off	34503004
105	Other	34503004
2166	Rented	34503005
46	Owned but not yet paid off	34503005
419	Occupied rent-free	34503005
330	Owned and fully paid off	34503005
47	Other	34503005
584	Rented	10101001
124	Owned but not yet paid off	10101001
1054	Occupied rent-free	10101001
700	Owned and fully paid off	10101001
40	Other	10101001
701	Rented	10101002
74	Owned but not yet paid off	10101002
597	Occupied rent-free	10101002
1004	Owned and fully paid off	10101002
52	Other	10101002
380	Rented	10101003
100	Owned but not yet paid off	10101003
336	Occupied rent-free	10101003
1101	Owned and fully paid off	10101003
60	Other	10101003
609	Rented	10101004
194	Owned but not yet paid off	10101004
211	Occupied rent-free	10101004
925	Owned and fully paid off	10101004
47	Other	10101004
1028	Rented	10101005
253	Owned but not yet paid off	10101005
565	Occupied rent-free	10101005
427	Owned and fully paid off	10101005
121	Other	10101005
451	Rented	10101006
218	Owned but not yet paid off	10101006
287	Occupied rent-free	10101006
964	Owned and fully paid off	10101006
67	Other	10101006
633	Rented	10101007
206	Owned but not yet paid off	10101007
687	Occupied rent-free	10101007
1199	Owned and fully paid off	10101007
49	Other	10101007
358	Rented	10101008
68	Owned but not yet paid off	10101008
1075	Occupied rent-free	10101008
1041	Owned and fully paid off	10101008
248	Other	10101008
265	Rented	10102001
281	Owned but not yet paid off	10102001
926	Occupied rent-free	10102001
504	Owned and fully paid off	10102001
573	Other	10102001
408	Rented	10102002
201	Owned but not yet paid off	10102002
44	Occupied rent-free	10102002
853	Owned and fully paid off	10102002
64	Other	10102002
308	Rented	10102003
355	Owned but not yet paid off	10102003
285	Occupied rent-free	10102003
1258	Owned and fully paid off	10102003
88	Other	10102003
555	Rented	10102004
132	Owned but not yet paid off	10102004
960	Occupied rent-free	10102004
859	Owned and fully paid off	10102004
173	Other	10102004
488	Rented	10102005
219	Owned but not yet paid off	10102005
333	Occupied rent-free	10102005
1037	Owned and fully paid off	10102005
78	Other	10102005
375	Rented	10102006
64	Owned but not yet paid off	10102006
884	Occupied rent-free	10102006
846	Owned and fully paid off	10102006
97	Other	10102006
1198	Rented	10103001
88	Owned but not yet paid off	10103001
721	Occupied rent-free	10103001
523	Owned and fully paid off	10103001
147	Other	10103001
263	Rented	10103002
147	Owned but not yet paid off	10103002
40	Occupied rent-free	10103002
485	Owned and fully paid off	10103002
303	Other	10103002
693	Rented	10103003
130	Owned but not yet paid off	10103003
656	Occupied rent-free	10103003
828	Owned and fully paid off	10103003
173	Other	10103003
386	Rented	10103004
277	Owned but not yet paid off	10103004
69	Occupied rent-free	10103004
1214	Owned and fully paid off	10103004
30	Other	10103004
464	Rented	10103005
73	Owned but not yet paid off	10103005
1381	Occupied rent-free	10103005
891	Owned and fully paid off	10103005
178	Other	10103005
154	Rented	10103006
45	Owned but not yet paid off	10103006
307	Occupied rent-free	10103006
485	Owned and fully paid off	10103006
220	Other	10103006
952	Rented	10103007
413	Owned but not yet paid off	10103007
318	Occupied rent-free	10103007
1961	Owned and fully paid off	10103007
63	Other	10103007
203	Rented	10104001
499	Owned but not yet paid off	10104001
168	Occupied rent-free	10104001
1833	Owned and fully paid off	10104001
18	Other	10104001
992	Rented	10104002
314	Owned but not yet paid off	10104002
173	Occupied rent-free	10104002
1155	Owned and fully paid off	10104002
281	Other	10104002
414	Rented	10104003
213	Owned but not yet paid off	10104003
56	Occupied rent-free	10104003
528	Owned and fully paid off	10104003
36	Other	10104003
382	Rented	10104004
216	Owned but not yet paid off	10104004
172	Occupied rent-free	10104004
1174	Owned and fully paid off	10104004
42	Other	10104004
846	Rented	10104005
514	Owned but not yet paid off	10104005
107	Occupied rent-free	10104005
593	Owned and fully paid off	10104005
44	Other	10104005
932	Rented	10104006
570	Owned but not yet paid off	10104006
116	Occupied rent-free	10104006
1316	Owned and fully paid off	10104006
67	Other	10104006
352	Rented	10104007
178	Owned but not yet paid off	10104007
170	Occupied rent-free	10104007
1365	Owned and fully paid off	10104007
28	Other	10104007
919	Rented	10104008
459	Owned but not yet paid off	10104008
111	Occupied rent-free	10104008
401	Owned and fully paid off	10104008
35	Other	10104008
2252	Rented	10104009
244	Owned but not yet paid off	10104009
142	Occupied rent-free	10104009
890	Owned and fully paid off	10104009
5	Other	10104009
501	Rented	10104010
562	Owned but not yet paid off	10104010
53	Occupied rent-free	10104010
1080	Owned and fully paid off	10104010
25	Other	10104010
393	Rented	10104011
192	Owned but not yet paid off	10104011
95	Occupied rent-free	10104011
843	Owned and fully paid off	10104011
81	Other	10104011
218	Rented	10104012
137	Owned but not yet paid off	10104012
105	Occupied rent-free	10104012
1489	Owned and fully paid off	10104012
28	Other	10104012
317	Rented	10104013
375	Owned but not yet paid off	10104013
35	Occupied rent-free	10104013
764	Owned and fully paid off	10104013
17	Other	10104013
514	Rented	10105001
235	Owned but not yet paid off	10105001
372	Occupied rent-free	10105001
927	Owned and fully paid off	10105001
39	Other	10105001
678	Rented	10105002
252	Owned but not yet paid off	10105002
239	Occupied rent-free	10105002
1377	Owned and fully paid off	10105002
22	Other	10105002
670	Rented	10105003
143	Owned but not yet paid off	10105003
658	Occupied rent-free	10105003
810	Owned and fully paid off	10105003
79	Other	10105003
595	Rented	10105004
98	Owned but not yet paid off	10105004
1104	Occupied rent-free	10105004
1007	Owned and fully paid off	10105004
162	Other	10105004
592	Rented	10105005
286	Owned but not yet paid off	10105005
347	Occupied rent-free	10105005
1169	Owned and fully paid off	10105005
54	Other	10105005
438	Rented	10105006
66	Owned but not yet paid off	10105006
171	Occupied rent-free	10105006
1450	Owned and fully paid off	10105006
18	Other	10105006
827	Rented	10105007
160	Owned but not yet paid off	10105007
881	Occupied rent-free	10105007
1061	Owned and fully paid off	10105007
139	Other	10105007
696	Rented	10105008
256	Owned but not yet paid off	10105008
59	Occupied rent-free	10105008
640	Owned and fully paid off	10105008
34	Other	10105008
1645	Rented	10105009
78	Owned but not yet paid off	10105009
273	Occupied rent-free	10105009
982	Owned and fully paid off	10105009
51	Other	10105009
575	Rented	10105010
680	Owned but not yet paid off	10105010
51	Occupied rent-free	10105010
1091	Owned and fully paid off	10105010
27	Other	10105010
300	Rented	10105011
161	Owned but not yet paid off	10105011
131	Occupied rent-free	10105011
1362	Owned and fully paid off	10105011
32	Other	10105011
680	Rented	10105012
115	Owned but not yet paid off	10105012
790	Occupied rent-free	10105012
917	Owned and fully paid off	10105012
59	Other	10105012
1421	Rented	10202001
18	Owned but not yet paid off	10202001
156	Occupied rent-free	10202001
358	Owned and fully paid off	10202001
402	Other	10202001
388	Rented	10202002
196	Owned but not yet paid off	10202002
498	Occupied rent-free	10202002
238	Owned and fully paid off	10202002
234	Other	10202002
532	Rented	10202003
357	Owned but not yet paid off	10202003
487	Occupied rent-free	10202003
712	Owned and fully paid off	10202003
43	Other	10202003
270	Rented	10202004
149	Owned but not yet paid off	10202004
350	Occupied rent-free	10202004
792	Owned and fully paid off	10202004
37	Other	10202004
626	Rented	10202005
302	Owned but not yet paid off	10202005
639	Occupied rent-free	10202005
545	Owned and fully paid off	10202005
92	Other	10202005
371	Rented	10202006
384	Owned but not yet paid off	10202006
80	Occupied rent-free	10202006
1377	Owned and fully paid off	10202006
52	Other	10202006
936	Rented	10202007
552	Owned but not yet paid off	10202007
663	Occupied rent-free	10202007
1490	Owned and fully paid off	10202007
89	Other	10202007
120	Rented	10202008
6	Owned but not yet paid off	10202008
1063	Occupied rent-free	10202008
34	Owned and fully paid off	10202008
617	Other	10202008
131	Rented	10202009
74	Owned but not yet paid off	10202009
931	Occupied rent-free	10202009
249	Owned and fully paid off	10202009
368	Other	10202009
183	Rented	10202010
157	Owned but not yet paid off	10202010
1840	Occupied rent-free	10202010
44	Owned and fully paid off	10202010
105	Other	10202010
917	Rented	10202011
234	Owned but not yet paid off	10202011
968	Occupied rent-free	10202011
977	Owned and fully paid off	10202011
188	Other	10202011
660	Rented	10202012
29	Owned but not yet paid off	10202012
1285	Occupied rent-free	10202012
188	Owned and fully paid off	10202012
216	Other	10202012
600	Rented	10203001
75	Owned but not yet paid off	10203001
1161	Occupied rent-free	10203001
130	Owned and fully paid off	10203001
240	Other	10203001
719	Rented	10203002
586	Owned but not yet paid off	10203002
36	Occupied rent-free	10203002
490	Owned and fully paid off	10203002
15	Other	10203002
508	Rented	10203003
99	Owned but not yet paid off	10203003
1623	Occupied rent-free	10203003
139	Owned and fully paid off	10203003
292	Other	10203003
1038	Rented	10203004
518	Owned but not yet paid off	10203004
33	Occupied rent-free	10203004
582	Owned and fully paid off	10203004
42	Other	10203004
770	Rented	10203005
28	Owned but not yet paid off	10203005
51	Occupied rent-free	10203005
584	Owned and fully paid off	10203005
13	Other	10203005
827	Rented	10203006
200	Owned but not yet paid off	10203006
139	Occupied rent-free	10203006
262	Owned and fully paid off	10203006
175	Other	10203006
529	Rented	10203007
313	Owned but not yet paid off	10203007
93	Occupied rent-free	10203007
1074	Owned and fully paid off	10203007
19	Other	10203007
282	Rented	10203008
86	Owned but not yet paid off	10203008
59	Occupied rent-free	10203008
111	Owned and fully paid off	10203008
5	Other	10203008
867	Rented	10203009
112	Owned but not yet paid off	10203009
56	Occupied rent-free	10203009
627	Owned and fully paid off	10203009
18	Other	10203009
521	Rented	10203010
140	Owned but not yet paid off	10203010
49	Occupied rent-free	10203010
948	Owned and fully paid off	10203010
48	Other	10203010
737	Rented	10203011
517	Owned but not yet paid off	10203011
262	Occupied rent-free	10203011
1261	Owned and fully paid off	10203011
15	Other	10203011
1025	Rented	10203012
219	Owned but not yet paid off	10203012
68	Occupied rent-free	10203012
327	Owned and fully paid off	10203012
7	Other	10203012
241	Rented	10203013
327	Owned but not yet paid off	10203013
253	Occupied rent-free	10203013
767	Owned and fully paid off	10203013
211	Other	10203013
473	Rented	10203014
195	Owned but not yet paid off	10203014
188	Occupied rent-free	10203014
1771	Owned and fully paid off	10203014
459	Other	10203014
791	Rented	10203015
697	Owned but not yet paid off	10203015
111	Occupied rent-free	10203015
766	Owned and fully paid off	10203015
37	Other	10203015
838	Rented	10203016
8	Owned but not yet paid off	10203016
715	Occupied rent-free	10203016
636	Owned and fully paid off	10203016
31	Other	10203016
513	Rented	10203017
624	Owned but not yet paid off	10203017
442	Occupied rent-free	10203017
637	Owned and fully paid off	10203017
49	Other	10203017
869	Rented	10203018
327	Owned but not yet paid off	10203018
343	Occupied rent-free	10203018
484	Owned and fully paid off	10203018
36	Other	10203018
1128	Rented	10203019
447	Owned but not yet paid off	10203019
47	Occupied rent-free	10203019
608	Owned and fully paid off	10203019
32	Other	10203019
263	Rented	10203020
71	Owned but not yet paid off	10203020
13	Occupied rent-free	10203020
331	Owned and fully paid off	10203020
15	Other	10203020
1373	Rented	10203021
91	Owned but not yet paid off	10203021
198	Occupied rent-free	10203021
511	Owned and fully paid off	10203021
217	Other	10203021
528	Rented	10203022
515	Owned but not yet paid off	10203022
64	Occupied rent-free	10203022
997	Owned and fully paid off	10203022
85	Other	10203022
356	Rented	10203023
585	Owned but not yet paid off	10203023
39	Occupied rent-free	10203023
737	Owned and fully paid off	10203023
71	Other	10203023
796	Rented	10203024
64	Owned but not yet paid off	10203024
140	Occupied rent-free	10203024
378	Owned and fully paid off	10203024
97	Other	10203024
564	Rented	10203025
200	Owned but not yet paid off	10203025
163	Occupied rent-free	10203025
525	Owned and fully paid off	10203025
231	Other	10203025
817	Rented	10203026
507	Owned but not yet paid off	10203026
61	Occupied rent-free	10203026
864	Owned and fully paid off	10203026
62	Other	10203026
350	Rented	10203027
64	Owned but not yet paid off	10203027
40	Occupied rent-free	10203027
614	Owned and fully paid off	10203027
31	Other	10203027
556	Rented	10203028
108	Owned but not yet paid off	10203028
389	Occupied rent-free	10203028
132	Owned and fully paid off	10203028
26	Other	10203028
769	Rented	10203029
493	Owned but not yet paid off	10203029
199	Occupied rent-free	10203029
685	Owned and fully paid off	10203029
18	Other	10203029
346	Rented	10203030
257	Owned but not yet paid off	10203030
879	Occupied rent-free	10203030
845	Owned and fully paid off	10203030
135	Other	10203030
479	Rented	10203031
61	Owned but not yet paid off	10203031
889	Occupied rent-free	10203031
346	Owned and fully paid off	10203031
63	Other	10203031
1018	Rented	10204001
322	Owned but not yet paid off	10204001
1058	Occupied rent-free	10204001
836	Owned and fully paid off	10204001
176	Other	10204001
210	Rented	10204002
74	Owned but not yet paid off	10204002
1668	Occupied rent-free	10204002
339	Owned and fully paid off	10204002
493	Other	10204002
303	Rented	10204003
39	Owned but not yet paid off	10204003
577	Occupied rent-free	10204003
985	Owned and fully paid off	10204003
175	Other	10204003
402	Rented	10204004
249	Owned but not yet paid off	10204004
270	Occupied rent-free	10204004
916	Owned and fully paid off	10204004
109	Other	10204004
276	Rented	10204005
360	Owned but not yet paid off	10204005
108	Occupied rent-free	10204005
484	Owned and fully paid off	10204005
56	Other	10204005
444	Rented	10204006
210	Owned but not yet paid off	10204006
222	Occupied rent-free	10204006
462	Owned and fully paid off	10204006
52	Other	10204006
1059	Rented	10204007
231	Owned but not yet paid off	10204007
56	Occupied rent-free	10204007
399	Owned and fully paid off	10204007
10	Other	10204007
645	Rented	10204008
13	Owned but not yet paid off	10204008
37	Occupied rent-free	10204008
88	Owned and fully paid off	10204008
27	Other	10204008
163	Rented	10204009
17	Owned but not yet paid off	10204009
4	Occupied rent-free	10204009
34	Owned and fully paid off	10204009
1	Other	10204009
1702	Rented	10204010
113	Owned but not yet paid off	10204010
20	Occupied rent-free	10204010
215	Owned and fully paid off	10204010
14	Other	10204010
1251	Rented	10204011
166	Owned but not yet paid off	10204011
336	Occupied rent-free	10204011
332	Owned and fully paid off	10204011
107	Other	10204011
386	Rented	10204012
65	Owned but not yet paid off	10204012
1941	Occupied rent-free	10204012
567	Owned and fully paid off	10204012
115	Other	10204012
180	Rented	10204013
98	Owned but not yet paid off	10204013
130	Occupied rent-free	10204013
186	Owned and fully paid off	10204013
10	Other	10204013
392	Rented	10204014
27	Owned but not yet paid off	10204014
846	Occupied rent-free	10204014
419	Owned and fully paid off	10204014
27	Other	10204014
338	Rented	10204015
70	Owned but not yet paid off	10204015
2079	Occupied rent-free	10204015
885	Owned and fully paid off	10204015
113	Other	10204015
458	Rented	10204016
318	Owned but not yet paid off	10204016
113	Occupied rent-free	10204016
808	Owned and fully paid off	10204016
35	Other	10204016
1032	Rented	10204017
538	Owned but not yet paid off	10204017
35	Occupied rent-free	10204017
574	Owned and fully paid off	10204017
58	Other	10204017
513	Rented	10204018
109	Owned but not yet paid off	10204018
712	Occupied rent-free	10204018
692	Owned and fully paid off	10204018
175	Other	10204018
768	Rented	10204019
125	Owned but not yet paid off	10204019
897	Occupied rent-free	10204019
288	Owned and fully paid off	10204019
294	Other	10204019
618	Rented	10204020
126	Owned but not yet paid off	10204020
954	Occupied rent-free	10204020
291	Owned and fully paid off	10204020
204	Other	10204020
498	Rented	10204021
622	Owned but not yet paid off	10204021
405	Occupied rent-free	10204021
708	Owned and fully paid off	10204021
65	Other	10204021
380	Rented	10204022
430	Owned but not yet paid off	10204022
115	Occupied rent-free	10204022
615	Owned and fully paid off	10204022
39	Other	10204022
519	Rented	10205001
156	Owned but not yet paid off	10205001
155	Occupied rent-free	10205001
1150	Owned and fully paid off	10205001
92	Other	10205001
351	Rented	10205002
150	Owned but not yet paid off	10205002
2142	Occupied rent-free	10205002
644	Owned and fully paid off	10205002
73	Other	10205002
492	Rented	10205003
70	Owned but not yet paid off	10205003
919	Occupied rent-free	10205003
613	Owned and fully paid off	10205003
61	Other	10205003
784	Rented	10205004
41	Owned but not yet paid off	10205004
837	Occupied rent-free	10205004
574	Owned and fully paid off	10205004
41	Other	10205004
491	Rented	10205005
156	Owned but not yet paid off	10205005
1690	Occupied rent-free	10205005
338	Owned and fully paid off	10205005
43	Other	10205005
599	Rented	10205006
449	Owned but not yet paid off	10205006
32	Occupied rent-free	10205006
459	Owned and fully paid off	10205006
115	Other	10205006
1057	Rented	10205007
422	Owned but not yet paid off	10205007
51	Occupied rent-free	10205007
590	Owned and fully paid off	10205007
33	Other	10205007
1139	Rented	10205008
278	Owned but not yet paid off	10205008
107	Occupied rent-free	10205008
787	Owned and fully paid off	10205008
17	Other	10205008
561	Rented	10205009
184	Owned but not yet paid off	10205009
49	Occupied rent-free	10205009
702	Owned and fully paid off	10205009
17	Other	10205009
877	Rented	10205010
281	Owned but not yet paid off	10205010
34	Occupied rent-free	10205010
416	Owned and fully paid off	10205010
24	Other	10205010
737	Rented	10205011
291	Owned but not yet paid off	10205011
49	Occupied rent-free	10205011
610	Owned and fully paid off	10205011
69	Other	10205011
753	Rented	10205012
413	Owned but not yet paid off	10205012
11	Occupied rent-free	10205012
299	Owned and fully paid off	10205012
48	Other	10205012
291	Rented	10205013
457	Owned but not yet paid off	10205013
8	Occupied rent-free	10205013
978	Owned and fully paid off	10205013
14	Other	10205013
772	Rented	10205014
137	Owned but not yet paid off	10205014
26	Occupied rent-free	10205014
378	Owned and fully paid off	10205014
8	Other	10205014
850	Rented	10205015
531	Owned but not yet paid off	10205015
183	Occupied rent-free	10205015
465	Owned and fully paid off	10205015
16	Other	10205015
550	Rented	10205016
14	Owned but not yet paid off	10205016
1457	Occupied rent-free	10205016
663	Owned and fully paid off	10205016
19	Other	10205016
471	Rented	10205017
92	Owned but not yet paid off	10205017
215	Occupied rent-free	10205017
147	Owned and fully paid off	10205017
2	Other	10205017
689	Rented	10205018
62	Owned but not yet paid off	10205018
1007	Occupied rent-free	10205018
283	Owned and fully paid off	10205018
20	Other	10205018
479	Rented	10205019
48	Owned but not yet paid off	10205019
671	Occupied rent-free	10205019
146	Owned and fully paid off	10205019
55	Other	10205019
548	Rented	10205020
98	Owned but not yet paid off	10205020
731	Occupied rent-free	10205020
262	Owned and fully paid off	10205020
189	Other	10205020
514	Rented	10205021
335	Owned but not yet paid off	10205021
397	Occupied rent-free	10205021
2085	Owned and fully paid off	10205021
21	Other	10205021
617	Rented	10206001
196	Owned but not yet paid off	10206001
96	Occupied rent-free	10206001
736	Owned and fully paid off	10206001
28	Other	10206001
1093	Rented	10206002
228	Owned but not yet paid off	10206002
101	Occupied rent-free	10206002
947	Owned and fully paid off	10206002
591	Other	10206002
398	Rented	10206003
195	Owned but not yet paid off	10206003
127	Occupied rent-free	10206003
1214	Owned and fully paid off	10206003
29	Other	10206003
263	Rented	10206004
54	Owned but not yet paid off	10206004
153	Occupied rent-free	10206004
1343	Owned and fully paid off	10206004
47	Other	10206004
292	Rented	10206005
57	Owned but not yet paid off	10206005
477	Occupied rent-free	10206005
404	Owned and fully paid off	10206005
69	Other	10206005
393	Rented	10206006
119	Owned but not yet paid off	10206006
755	Occupied rent-free	10206006
814	Owned and fully paid off	10206006
44	Other	10206006
740	Rented	10206007
273	Owned but not yet paid off	10206007
375	Occupied rent-free	10206007
1283	Owned and fully paid off	10206007
31	Other	10206007
547	Rented	10206008
132	Owned but not yet paid off	10206008
1380	Occupied rent-free	10206008
552	Owned and fully paid off	10206008
76	Other	10206008
433	Rented	10206009
243	Owned but not yet paid off	10206009
223	Occupied rent-free	10206009
805	Owned and fully paid off	10206009
17	Other	10206009
1306	Rented	10206010
188	Owned but not yet paid off	10206010
26	Occupied rent-free	10206010
54	Owned and fully paid off	10206010
5	Other	10206010
257	Rented	10206011
175	Owned but not yet paid off	10206011
515	Occupied rent-free	10206011
418	Owned and fully paid off	10206011
11	Other	10206011
939	Rented	10206012
110	Owned but not yet paid off	10206012
732	Occupied rent-free	10206012
1212	Owned and fully paid off	10206012
186	Other	10206012
653	Rented	10304001
323	Owned but not yet paid off	10304001
496	Occupied rent-free	10304001
782	Owned and fully paid off	10304001
61	Other	10304001
262	Rented	10304002
68	Owned but not yet paid off	10304002
770	Occupied rent-free	10304002
880	Owned and fully paid off	10304002
74	Other	10304002
492	Rented	10304003
49	Owned but not yet paid off	10304003
577	Occupied rent-free	10304003
916	Owned and fully paid off	10304003
115	Other	10304003
266	Rented	10304004
129	Owned but not yet paid off	10304004
32	Occupied rent-free	10304004
661	Owned and fully paid off	10304004
24	Other	10304004
430	Rented	10304005
197	Owned but not yet paid off	10304005
90	Occupied rent-free	10304005
1766	Owned and fully paid off	10304005
25	Other	10304005
781	Rented	10301001
50	Owned but not yet paid off	10301001
730	Occupied rent-free	10301001
1124	Owned and fully paid off	10301001
33	Other	10301001
401	Rented	10301002
76	Owned but not yet paid off	10301002
278	Occupied rent-free	10301002
1752	Owned and fully paid off	10301002
76	Other	10301002
752	Rented	10301003
253	Owned but not yet paid off	10301003
214	Occupied rent-free	10301003
1570	Owned and fully paid off	10301003
53	Other	10301003
822	Rented	10301004
247	Owned but not yet paid off	10301004
445	Occupied rent-free	10301004
663	Owned and fully paid off	10301004
121	Other	10301004
817	Rented	10301005
106	Owned but not yet paid off	10301005
1259	Occupied rent-free	10301005
493	Owned and fully paid off	10301005
210	Other	10301005
211	Rented	10301006
169	Owned but not yet paid off	10301006
1198	Occupied rent-free	10301006
544	Owned and fully paid off	10301006
123	Other	10301006
307	Rented	10301007
68	Owned but not yet paid off	10301007
379	Occupied rent-free	10301007
1084	Owned and fully paid off	10301007
255	Other	10301007
36	Rented	10301008
56	Owned but not yet paid off	10301008
395	Occupied rent-free	10301008
396	Owned and fully paid off	10301008
147	Other	10301008
112	Rented	10301009
19	Owned but not yet paid off	10301009
509	Occupied rent-free	10301009
164	Owned and fully paid off	10301009
806	Other	10301009
133	Rented	10301010
33	Owned but not yet paid off	10301010
818	Occupied rent-free	10301010
80	Owned and fully paid off	10301010
334	Other	10301010
77	Rented	10301011
87	Owned but not yet paid off	10301011
737	Occupied rent-free	10301011
440	Owned and fully paid off	10301011
212	Other	10301011
172	Rented	10301012
258	Owned but not yet paid off	10301012
658	Occupied rent-free	10301012
458	Owned and fully paid off	10301012
245	Other	10301012
647	Rented	10301013
531	Owned but not yet paid off	10301013
838	Occupied rent-free	10301013
1438	Owned and fully paid off	10301013
388	Other	10301013
265	Rented	10302001
138	Owned but not yet paid off	10302001
801	Occupied rent-free	10302001
1205	Owned and fully paid off	10302001
36	Other	10302001
485	Rented	10302002
256	Owned but not yet paid off	10302002
223	Occupied rent-free	10302002
1223	Owned and fully paid off	10302002
26	Other	10302002
457	Rented	10302003
221	Owned but not yet paid off	10302003
82	Occupied rent-free	10302003
955	Owned and fully paid off	10302003
39	Other	10302003
495	Rented	10302004
140	Owned but not yet paid off	10302004
164	Occupied rent-free	10302004
970	Owned and fully paid off	10302004
76	Other	10302004
1519	Rented	10302005
151	Owned but not yet paid off	10302005
295	Occupied rent-free	10302005
220	Owned and fully paid off	10302005
46	Other	10302005
1169	Rented	10302006
74	Owned but not yet paid off	10302006
376	Occupied rent-free	10302006
642	Owned and fully paid off	10302006
18	Other	10302006
437	Rented	10302007
341	Owned but not yet paid off	10302007
41	Occupied rent-free	10302007
703	Owned and fully paid off	10302007
117	Other	10302007
604	Rented	10302008
199	Owned but not yet paid off	10302008
118	Occupied rent-free	10302008
1409	Owned and fully paid off	10302008
78	Other	10302008
264	Rented	10302009
152	Owned but not yet paid off	10302009
40	Occupied rent-free	10302009
664	Owned and fully paid off	10302009
23	Other	10302009
587	Rented	10302010
275	Owned but not yet paid off	10302010
393	Occupied rent-free	10302010
1517	Owned and fully paid off	10302010
38	Other	10302010
882	Rented	10302011
106	Owned but not yet paid off	10302011
665	Occupied rent-free	10302011
1407	Owned and fully paid off	10302011
105	Other	10302011
1032	Rented	10302012
64	Owned but not yet paid off	10302012
236	Occupied rent-free	10302012
420	Owned and fully paid off	10302012
23	Other	10302012
517	Rented	10302013
315	Owned but not yet paid off	10302013
52	Occupied rent-free	10302013
1277	Owned and fully paid off	10302013
147	Other	10302013
338	Rented	10303001
75	Owned but not yet paid off	10303001
139	Occupied rent-free	10303001
1257	Owned and fully paid off	10303001
30	Other	10303001
546	Rented	10303002
290	Owned but not yet paid off	10303002
309	Occupied rent-free	10303002
895	Owned and fully paid off	10303002
79	Other	10303002
307	Rented	10303003
74	Owned but not yet paid off	10303003
39	Occupied rent-free	10303003
1277	Owned and fully paid off	10303003
22	Other	10303003
710	Rented	10303004
311	Owned but not yet paid off	10303004
358	Occupied rent-free	10303004
604	Owned and fully paid off	10303004
43	Other	10303004
425	Rented	10303005
154	Owned but not yet paid off	10303005
323	Occupied rent-free	10303005
1484	Owned and fully paid off	10303005
71	Other	10303005
361	Rented	10401001
263	Owned but not yet paid off	10401001
62	Occupied rent-free	10401001
916	Owned and fully paid off	10401001
50	Other	10401001
276	Rented	10401002
192	Owned but not yet paid off	10401002
370	Occupied rent-free	10401002
669	Owned and fully paid off	10401002
89	Other	10401002
118	Rented	10401003
146	Owned but not yet paid off	10401003
302	Occupied rent-free	10401003
527	Owned and fully paid off	10401003
237	Other	10401003
434	Rented	10401004
150	Owned but not yet paid off	10401004
435	Occupied rent-free	10401004
545	Owned and fully paid off	10401004
72	Other	10401004
453	Rented	10402001
164	Owned but not yet paid off	10402001
351	Occupied rent-free	10402001
1411	Owned and fully paid off	10402001
46	Other	10402001
389	Rented	10402002
93	Owned but not yet paid off	10402002
502	Occupied rent-free	10402002
1453	Owned and fully paid off	10402002
86	Other	10402002
427	Rented	10402003
102	Owned but not yet paid off	10402003
365	Occupied rent-free	10402003
906	Owned and fully paid off	10402003
45	Other	10402003
400	Rented	10402004
72	Owned but not yet paid off	10402004
410	Occupied rent-free	10402004
1149	Owned and fully paid off	10402004
130	Other	10402004
477	Rented	10402005
237	Owned but not yet paid off	10402005
82	Occupied rent-free	10402005
742	Owned and fully paid off	10402005
56	Other	10402005
493	Rented	10402006
121	Owned but not yet paid off	10402006
322	Occupied rent-free	10402006
891	Owned and fully paid off	10402006
21	Other	10402006
542	Rented	10402007
174	Owned but not yet paid off	10402007
257	Occupied rent-free	10402007
890	Owned and fully paid off	10402007
141	Other	10402007
182	Rented	10402008
50	Owned but not yet paid off	10402008
95	Occupied rent-free	10402008
1117	Owned and fully paid off	10402008
30	Other	10402008
523	Rented	10403001
182	Owned but not yet paid off	10403001
186	Occupied rent-free	10403001
1160	Owned and fully paid off	10403001
103	Other	10403001
461	Rented	10403002
48	Owned but not yet paid off	10403002
309	Occupied rent-free	10403002
886	Owned and fully paid off	10403002
68	Other	10403002
888	Rented	10403003
333	Owned but not yet paid off	10403003
801	Occupied rent-free	10403003
1356	Owned and fully paid off	10403003
215	Other	10403003
382	Rented	10403004
210	Owned but not yet paid off	10403004
215	Occupied rent-free	10403004
1026	Owned and fully paid off	10403004
81	Other	10403004
492	Rented	10403005
278	Owned but not yet paid off	10403005
343	Occupied rent-free	10403005
1282	Owned and fully paid off	10403005
80	Other	10403005
633	Rented	10403006
494	Owned but not yet paid off	10403006
35	Occupied rent-free	10403006
830	Owned and fully paid off	10403006
284	Other	10403006
403	Rented	10403007
263	Owned but not yet paid off	10403007
175	Occupied rent-free	10403007
813	Owned and fully paid off	10403007
60	Other	10403007
524	Rented	10403008
283	Owned but not yet paid off	10403008
36	Occupied rent-free	10403008
629	Owned and fully paid off	10403008
25	Other	10403008
227	Rented	10403009
99	Owned but not yet paid off	10403009
46	Occupied rent-free	10403009
1099	Owned and fully paid off	10403009
31	Other	10403009
732	Rented	10403010
211	Owned but not yet paid off	10403010
49	Occupied rent-free	10403010
660	Owned and fully paid off	10403010
65	Other	10403010
667	Rented	10403011
237	Owned but not yet paid off	10403011
160	Occupied rent-free	10403011
1321	Owned and fully paid off	10403011
43	Other	10403011
151	Rented	10403012
24	Owned but not yet paid off	10403012
153	Occupied rent-free	10403012
664	Owned and fully paid off	10403012
24	Other	10403012
194	Rented	10403013
208	Owned but not yet paid off	10403013
76	Occupied rent-free	10403013
881	Owned and fully paid off	10403013
228	Other	10403013
306	Rented	10403014
71	Owned but not yet paid off	10403014
218	Occupied rent-free	10403014
1455	Owned and fully paid off	10403014
332	Other	10403014
656	Rented	10404001
212	Owned but not yet paid off	10404001
512	Occupied rent-free	10404001
1124	Owned and fully paid off	10404001
56	Other	10404001
444	Rented	10404002
344	Owned but not yet paid off	10404002
20	Occupied rent-free	10404002
483	Owned and fully paid off	10404002
16	Other	10404002
675	Rented	10404003
509	Owned but not yet paid off	10404003
68	Occupied rent-free	10404003
994	Owned and fully paid off	10404003
25	Other	10404003
585	Rented	10404004
188	Owned but not yet paid off	10404004
337	Occupied rent-free	10404004
1422	Owned and fully paid off	10404004
81	Other	10404004
888	Rented	10404005
463	Owned but not yet paid off	10404005
82	Occupied rent-free	10404005
727	Owned and fully paid off	10404005
73	Other	10404005
672	Rented	10404006
119	Owned but not yet paid off	10404006
211	Occupied rent-free	10404006
1209	Owned and fully paid off	10404006
19	Other	10404006
649	Rented	10404007
147	Owned but not yet paid off	10404007
593	Occupied rent-free	10404007
862	Owned and fully paid off	10404007
23	Other	10404007
303	Rented	10404008
78	Owned but not yet paid off	10404008
285	Occupied rent-free	10404008
888	Owned and fully paid off	10404008
71	Other	10404008
431	Rented	10404009
51	Owned but not yet paid off	10404009
704	Occupied rent-free	10404009
518	Owned and fully paid off	10404009
164	Other	10404009
229	Rented	10404010
36	Owned but not yet paid off	10404010
178	Occupied rent-free	10404010
387	Owned and fully paid off	10404010
44	Other	10404010
458	Rented	10404011
105	Owned but not yet paid off	10404011
995	Occupied rent-free	10404011
667	Owned and fully paid off	10404011
45	Other	10404011
456	Rented	10404012
35	Owned but not yet paid off	10404012
556	Occupied rent-free	10404012
187	Owned and fully paid off	10404012
60	Other	10404012
805	Rented	10404013
43	Owned but not yet paid off	10404013
631	Occupied rent-free	10404013
710	Owned and fully paid off	10404013
145	Other	10404013
554	Rented	10404014
303	Owned but not yet paid off	10404014
162	Occupied rent-free	10404014
963	Owned and fully paid off	10404014
349	Other	10404014
608	Rented	10404015
24	Owned but not yet paid off	10404015
391	Occupied rent-free	10404015
807	Owned and fully paid off	10404015
17	Other	10404015
483	Rented	10404016
359	Owned but not yet paid off	10404016
188	Occupied rent-free	10404016
1573	Owned and fully paid off	10404016
15	Other	10404016
438	Rented	10404017
178	Owned but not yet paid off	10404017
209	Occupied rent-free	10404017
1109	Owned and fully paid off	10404017
17	Other	10404017
509	Rented	10404018
488	Owned but not yet paid off	10404018
36	Occupied rent-free	10404018
772	Owned and fully paid off	10404018
62	Other	10404018
1908	Rented	10404019
508	Owned but not yet paid off	10404019
65	Occupied rent-free	10404019
755	Owned and fully paid off	10404019
54	Other	10404019
318	Rented	10404020
113	Owned but not yet paid off	10404020
251	Occupied rent-free	10404020
997	Owned and fully paid off	10404020
30	Other	10404020
483	Rented	10404021
136	Owned but not yet paid off	10404021
1446	Occupied rent-free	10404021
1019	Owned and fully paid off	10404021
121	Other	10404021
782	Rented	10404022
196	Owned but not yet paid off	10404022
869	Occupied rent-free	10404022
504	Owned and fully paid off	10404022
43	Other	10404022
683	Rented	10404023
612	Owned but not yet paid off	10404023
289	Occupied rent-free	10404023
842	Owned and fully paid off	10404023
50	Other	10404023
361	Rented	10404024
51	Owned but not yet paid off	10404024
908	Occupied rent-free	10404024
490	Owned and fully paid off	10404024
105	Other	10404024
431	Rented	10404025
142	Owned but not yet paid off	10404025
669	Occupied rent-free	10404025
792	Owned and fully paid off	10404025
162	Other	10404025
398	Rented	10405001
193	Owned but not yet paid off	10405001
283	Occupied rent-free	10405001
772	Owned and fully paid off	10405001
59	Other	10405001
428	Rented	10405002
273	Owned but not yet paid off	10405002
423	Occupied rent-free	10405002
741	Owned and fully paid off	10405002
40	Other	10405002
997	Rented	10405003
423	Owned but not yet paid off	10405003
42	Occupied rent-free	10405003
1010	Owned and fully paid off	10405003
27	Other	10405003
173	Rented	10405004
70	Owned but not yet paid off	10405004
40	Occupied rent-free	10405004
684	Owned and fully paid off	10405004
29	Other	10405004
164	Rented	10405005
65	Owned but not yet paid off	10405005
38	Occupied rent-free	10405005
864	Owned and fully paid off	10405005
30	Other	10405005
181	Rented	10405006
296	Owned but not yet paid off	10405006
888	Occupied rent-free	10405006
1129	Owned and fully paid off	10405006
50	Other	10405006
517	Rented	10405007
172	Owned but not yet paid off	10405007
51	Occupied rent-free	10405007
938	Owned and fully paid off	10405007
24	Other	10405007
497	Rented	10405008
519	Owned but not yet paid off	10405008
138	Occupied rent-free	10405008
1178	Owned and fully paid off	10405008
74	Other	10405008
194	Rented	10405009
214	Owned but not yet paid off	10405009
41	Occupied rent-free	10405009
547	Owned and fully paid off	10405009
27	Other	10405009
250	Rented	10405010
50	Owned but not yet paid off	10405010
82	Occupied rent-free	10405010
883	Owned and fully paid off	10405010
11	Other	10405010
503	Rented	10405011
132	Owned but not yet paid off	10405011
559	Occupied rent-free	10405011
941	Owned and fully paid off	10405011
63	Other	10405011
400	Rented	10405012
57	Owned but not yet paid off	10405012
391	Occupied rent-free	10405012
534	Owned and fully paid off	10405012
64	Other	10405012
163	Rented	10405013
128	Owned but not yet paid off	10405013
15	Occupied rent-free	10405013
714	Owned and fully paid off	10405013
29	Other	10405013
377	Rented	10407001
173	Owned but not yet paid off	10407001
523	Occupied rent-free	10407001
990	Owned and fully paid off	10407001
496	Other	10407001
780	Rented	10407002
387	Owned but not yet paid off	10407002
595	Occupied rent-free	10407002
1145	Owned and fully paid off	10407002
71	Other	10407002
137	Rented	10407003
64	Owned but not yet paid off	10407003
902	Occupied rent-free	10407003
785	Owned and fully paid off	10407003
33	Other	10407003
567	Rented	10407004
368	Owned but not yet paid off	10407004
141	Occupied rent-free	10407004
712	Owned and fully paid off	10407004
124	Other	10407004
1201	Rented	10407005
205	Owned but not yet paid off	10407005
288	Occupied rent-free	10407005
453	Owned and fully paid off	10407005
28	Other	10407005
641	Rented	10407006
284	Owned but not yet paid off	10407006
88	Occupied rent-free	10407006
547	Owned and fully paid off	10407006
12	Other	10407006
1294	Rented	10407007
205	Owned but not yet paid off	10407007
625	Occupied rent-free	10407007
1330	Owned and fully paid off	10407007
75	Other	10407007
651	Rented	10408001
300	Owned but not yet paid off	10408001
316	Occupied rent-free	10408001
765	Owned and fully paid off	10408001
113	Other	10408001
581	Rented	10408002
162	Owned but not yet paid off	10408002
342	Occupied rent-free	10408002
736	Owned and fully paid off	10408002
144	Other	10408002
239	Rented	10408003
26	Owned but not yet paid off	10408003
197	Occupied rent-free	10408003
1026	Owned and fully paid off	10408003
32	Other	10408003
447	Rented	10408004
52	Owned but not yet paid off	10408004
470	Occupied rent-free	10408004
1039	Owned and fully paid off	10408004
30	Other	10408004
344	Rented	10408005
75	Owned but not yet paid off	10408005
166	Occupied rent-free	10408005
1213	Owned and fully paid off	10408005
62	Other	10408005
352	Rented	10408006
116	Owned but not yet paid off	10408006
308	Occupied rent-free	10408006
1509	Owned and fully paid off	10408006
19	Other	10408006
577	Rented	10408007
39	Owned but not yet paid off	10408007
848	Occupied rent-free	10408007
2240	Owned and fully paid off	10408007
218	Other	10408007
468	Rented	10408008
202	Owned but not yet paid off	10408008
347	Occupied rent-free	10408008
651	Owned and fully paid off	10408008
83	Other	10408008
518	Rented	10408009
267	Owned but not yet paid off	10408009
72	Occupied rent-free	10408009
1495	Owned and fully paid off	10408009
35	Other	10408009
911	Rented	10408010
299	Owned but not yet paid off	10408010
91	Occupied rent-free	10408010
649	Owned and fully paid off	10408010
50	Other	10408010
199	Rented	10501001
70	Owned but not yet paid off	10501001
311	Occupied rent-free	10501001
184	Owned and fully paid off	10501001
17	Other	10501001
152	Rented	10501002
17	Owned but not yet paid off	10501002
51	Occupied rent-free	10501002
67	Owned and fully paid off	10501002
7	Other	10501002
55	Rented	10501003
29	Owned but not yet paid off	10501003
5	Occupied rent-free	10501003
39	Owned and fully paid off	10501003
0	Other	10501003
266	Rented	10501004
55	Owned but not yet paid off	10501004
464	Occupied rent-free	10501004
411	Owned and fully paid off	10501004
9	Other	10501004
287	Rented	10502001
112	Owned but not yet paid off	10502001
170	Occupied rent-free	10502001
365	Owned and fully paid off	10502001
11	Other	10502001
239	Rented	10502002
93	Owned but not yet paid off	10502002
47	Occupied rent-free	10502002
492	Owned and fully paid off	10502002
14	Other	10502002
75	Rented	10502003
17	Owned but not yet paid off	10502003
23	Occupied rent-free	10502003
449	Owned and fully paid off	10502003
8	Other	10502003
191	Rented	10502004
135	Owned but not yet paid off	10502004
465	Occupied rent-free	10502004
370	Owned and fully paid off	10502004
14	Other	10502004
251	Rented	10503001
19	Owned but not yet paid off	10503001
915	Occupied rent-free	10503001
756	Owned and fully paid off	10503001
29	Other	10503001
470	Rented	10503002
352	Owned but not yet paid off	10503002
455	Occupied rent-free	10503002
556	Owned and fully paid off	10503002
19	Other	10503002
236	Rented	10503003
226	Owned but not yet paid off	10503003
38	Occupied rent-free	10503003
998	Owned and fully paid off	10503003
48	Other	10503003
486	Rented	10503004
414	Owned but not yet paid off	10503004
39	Occupied rent-free	10503004
719	Owned and fully paid off	10503004
53	Other	10503004
469	Rented	10503005
179	Owned but not yet paid off	10503005
86	Occupied rent-free	10503005
1111	Owned and fully paid off	10503005
40	Other	10503005
159	Rented	10503006
171	Owned but not yet paid off	10503006
48	Occupied rent-free	10503006
752	Owned and fully paid off	10503006
35	Other	10503006
687	Rented	10503007
467	Owned but not yet paid off	10503007
550	Occupied rent-free	10503007
1225	Owned and fully paid off	10503007
33	Other	10503007
1885	Rented	19100001
3638	Owned but not yet paid off	19100001
237	Occupied rent-free	19100001
3185	Owned and fully paid off	19100001
138	Other	19100001
3335	Rented	19100002
2791	Owned but not yet paid off	19100002
196	Occupied rent-free	19100002
2293	Owned and fully paid off	19100002
113	Other	19100002
3804	Rented	19100003
3938	Owned but not yet paid off	19100003
154	Occupied rent-free	19100003
2961	Owned and fully paid off	19100003
123	Other	19100003
7671	Rented	19100004
3874	Owned but not yet paid off	19100004
1445	Occupied rent-free	19100004
2016	Owned and fully paid off	19100004
280	Other	19100004
1623	Rented	19100005
3570	Owned but not yet paid off	19100005
116	Occupied rent-free	19100005
2251	Owned and fully paid off	19100005
45	Other	19100005
1064	Rented	19100006
1405	Owned but not yet paid off	19100006
1666	Occupied rent-free	19100006
2048	Owned and fully paid off	19100006
133	Other	19100006
1923	Rented	19100007
2538	Owned but not yet paid off	19100007
109	Occupied rent-free	19100007
2185	Owned and fully paid off	19100007
47	Other	19100007
3953	Rented	19100008
5515	Owned but not yet paid off	19100008
571	Occupied rent-free	19100008
2762	Owned and fully paid off	19100008
201	Other	19100008
2393	Rented	19100009
943	Owned but not yet paid off	19100009
178	Occupied rent-free	19100009
2441	Owned and fully paid off	19100009
93	Other	19100009
3737	Rented	19100010
1893	Owned but not yet paid off	19100010
127	Occupied rent-free	19100010
1793	Owned and fully paid off	19100010
69	Other	19100010
3165	Rented	19100011
3103	Owned but not yet paid off	19100011
614	Occupied rent-free	19100011
3483	Owned and fully paid off	19100011
461	Other	19100011
1980	Rented	19100012
3096	Owned but not yet paid off	19100012
214	Occupied rent-free	19100012
2092	Owned and fully paid off	19100012
209	Other	19100012
2061	Rented	19100013
1331	Owned but not yet paid off	19100013
3316	Occupied rent-free	19100013
2990	Owned and fully paid off	19100013
822	Other	19100013
3353	Rented	19100014
4042	Owned but not yet paid off	19100014
866	Occupied rent-free	19100014
3642	Owned and fully paid off	19100014
204	Other	19100014
1896	Rented	19100015
2436	Owned but not yet paid off	19100015
170	Occupied rent-free	19100015
3573	Owned and fully paid off	19100015
89	Other	19100015
2297	Rented	19100016
3900	Owned but not yet paid off	19100016
1323	Occupied rent-free	19100016
2338	Owned and fully paid off	19100016
270	Other	19100016
1824	Rented	19100017
3740	Owned but not yet paid off	19100017
383	Occupied rent-free	19100017
2802	Owned and fully paid off	19100017
253	Other	19100017
563	Rented	19100018
740	Owned but not yet paid off	19100018
1677	Occupied rent-free	19100018
2601	Owned and fully paid off	19100018
452	Other	19100018
2891	Rented	19100019
3797	Owned but not yet paid off	19100019
1598	Occupied rent-free	19100019
4916	Owned and fully paid off	19100019
489	Other	19100019
2671	Rented	19100020
875	Owned but not yet paid off	19100020
1220	Occupied rent-free	19100020
4689	Owned and fully paid off	19100020
1050	Other	19100020
2492	Rented	19100021
2856	Owned but not yet paid off	19100021
221	Occupied rent-free	19100021
2310	Owned and fully paid off	19100021
179	Other	19100021
2296	Rented	19100022
1802	Owned but not yet paid off	19100022
626	Occupied rent-free	19100022
2597	Owned and fully paid off	19100022
131	Other	19100022
5618	Rented	19100023
4266	Owned but not yet paid off	19100023
260	Occupied rent-free	19100023
2801	Owned and fully paid off	19100023
270	Other	19100023
1906	Rented	19100024
482	Owned but not yet paid off	19100024
102	Occupied rent-free	19100024
3102	Owned and fully paid off	19100024
493	Other	19100024
4160	Rented	19100025
1604	Owned but not yet paid off	19100025
336	Occupied rent-free	19100025
2377	Owned and fully paid off	19100025
239	Other	19100025
4103	Rented	19100026
1931	Owned but not yet paid off	19100026
110	Occupied rent-free	19100026
1686	Owned and fully paid off	19100026
105	Other	19100026
3666	Rented	19100027
2919	Owned but not yet paid off	19100027
99	Occupied rent-free	19100027
2273	Owned and fully paid off	19100027
96	Other	19100027
2945	Rented	19100028
1669	Owned but not yet paid off	19100028
90	Occupied rent-free	19100028
1721	Owned and fully paid off	19100028
114	Other	19100028
1907	Rented	19100029
2602	Owned but not yet paid off	19100029
251	Occupied rent-free	19100029
4251	Owned and fully paid off	19100029
249	Other	19100029
3609	Rented	19100030
1769	Owned but not yet paid off	19100030
152	Occupied rent-free	19100030
2719	Owned and fully paid off	19100030
116	Other	19100030
2811	Rented	19100031
1262	Owned but not yet paid off	19100031
170	Occupied rent-free	19100031
2493	Owned and fully paid off	19100031
173	Other	19100031
1815	Rented	19100032
3389	Owned but not yet paid off	19100032
1676	Occupied rent-free	19100032
2274	Owned and fully paid off	19100032
314	Other	19100032
3198	Rented	19100033
399	Owned but not yet paid off	19100033
4099	Occupied rent-free	19100033
7035	Owned and fully paid off	19100033
459	Other	19100033
3078	Rented	19100034
416	Owned but not yet paid off	19100034
3063	Occupied rent-free	19100034
4537	Owned and fully paid off	19100034
789	Other	19100034
4113	Rented	19100035
535	Owned but not yet paid off	19100035
3280	Occupied rent-free	19100035
3568	Owned and fully paid off	19100035
302	Other	19100035
1677	Rented	19100036
178	Owned but not yet paid off	19100036
3588	Occupied rent-free	19100036
3492	Owned and fully paid off	19100036
835	Other	19100036
2116	Rented	19100037
55	Owned but not yet paid off	19100037
1817	Occupied rent-free	19100037
991	Owned and fully paid off	19100037
1003	Other	19100037
1208	Rented	19100038
244	Owned but not yet paid off	19100038
476	Occupied rent-free	19100038
2637	Owned and fully paid off	19100038
16	Other	19100038
1383	Rented	19100039
77	Owned but not yet paid off	19100039
2778	Occupied rent-free	19100039
3385	Owned and fully paid off	19100039
618	Other	19100039
687	Rented	19100040
98	Owned but not yet paid off	19100040
3162	Occupied rent-free	19100040
3893	Owned and fully paid off	19100040
368	Other	19100040
1092	Rented	19100041
382	Owned but not yet paid off	19100041
805	Occupied rent-free	19100041
2725	Owned and fully paid off	19100041
71	Other	19100041
3027	Rented	19100042
251	Owned but not yet paid off	19100042
2200	Occupied rent-free	19100042
3629	Owned and fully paid off	19100042
81	Other	19100042
1346	Rented	19100043
5290	Owned but not yet paid off	19100043
256	Occupied rent-free	19100043
2768	Owned and fully paid off	19100043
164	Other	19100043
2820	Rented	19100044
1227	Owned but not yet paid off	19100044
2315	Occupied rent-free	19100044
2521	Owned and fully paid off	19100044
56	Other	19100044
5016	Rented	19100045
307	Owned but not yet paid off	19100045
423	Occupied rent-free	19100045
1785	Owned and fully paid off	19100045
82	Other	19100045
2825	Rented	19100046
1392	Owned but not yet paid off	19100046
135	Occupied rent-free	19100046
2507	Owned and fully paid off	19100046
116	Other	19100046
4783	Rented	19100047
634	Owned but not yet paid off	19100047
93	Occupied rent-free	19100047
1351	Owned and fully paid off	19100047
101	Other	19100047
1934	Rented	19100048
1648	Owned but not yet paid off	19100048
473	Occupied rent-free	19100048
3398	Owned and fully paid off	19100048
247	Other	19100048
2282	Rented	19100049
1566	Owned but not yet paid off	19100049
200	Occupied rent-free	19100049
4482	Owned and fully paid off	19100049
120	Other	19100049
1839	Rented	19100050
1205	Owned but not yet paid off	19100050
92	Occupied rent-free	19100050
3780	Owned and fully paid off	19100050
115	Other	19100050
3634	Rented	19100051
700	Owned but not yet paid off	19100051
1244	Occupied rent-free	19100051
1648	Owned and fully paid off	19100051
131	Other	19100051
3261	Rented	19100052
107	Owned but not yet paid off	19100052
3169	Occupied rent-free	19100052
2000	Owned and fully paid off	19100052
119	Other	19100052
3484	Rented	19100053
2649	Owned but not yet paid off	19100053
311	Occupied rent-free	19100053
2448	Owned and fully paid off	19100053
102	Other	19100053
6555	Rented	19100054
2150	Owned but not yet paid off	19100054
601	Occupied rent-free	19100054
3757	Owned and fully paid off	19100054
271	Other	19100054
6087	Rented	19100055
2540	Owned but not yet paid off	19100055
170	Occupied rent-free	19100055
2379	Owned and fully paid off	19100055
300	Other	19100055
3553	Rented	19100056
1570	Owned but not yet paid off	19100056
500	Occupied rent-free	19100056
2858	Owned and fully paid off	19100056
180	Other	19100056
5546	Rented	19100057
2172	Owned but not yet paid off	19100057
170	Occupied rent-free	19100057
2057	Owned and fully paid off	19100057
257	Other	19100057
3848	Rented	19100058
3483	Owned but not yet paid off	19100058
178	Occupied rent-free	19100058
3219	Owned and fully paid off	19100058
126	Other	19100058
5253	Rented	19100059
2017	Owned but not yet paid off	19100059
280	Occupied rent-free	19100059
3155	Owned and fully paid off	19100059
183	Other	19100059
1856	Rented	19100060
3482	Owned but not yet paid off	19100060
220	Occupied rent-free	19100060
2594	Owned and fully paid off	19100060
166	Other	19100060
2354	Rented	19100061
1599	Owned but not yet paid off	19100061
407	Occupied rent-free	19100061
3246	Owned and fully paid off	19100061
194	Other	19100061
3033	Rented	19100062
1947	Owned but not yet paid off	19100062
443	Occupied rent-free	19100062
3293	Owned and fully paid off	19100062
284	Other	19100062
1833	Rented	19100063
3432	Owned but not yet paid off	19100063
275	Occupied rent-free	19100063
2272	Owned and fully paid off	19100063
142	Other	19100063
3549	Rented	19100064
2858	Owned but not yet paid off	19100064
190	Occupied rent-free	19100064
2973	Owned and fully paid off	19100064
136	Other	19100064
2558	Rented	19100065
1760	Owned but not yet paid off	19100065
288	Occupied rent-free	19100065
2191	Owned and fully paid off	19100065
79	Other	19100065
3471	Rented	19100066
1445	Owned but not yet paid off	19100066
151	Occupied rent-free	19100066
1262	Owned and fully paid off	19100066
66	Other	19100066
3881	Rented	19100067
2282	Owned but not yet paid off	19100067
2375	Occupied rent-free	19100067
3242	Owned and fully paid off	19100067
369	Other	19100067
3441	Rented	19100068
1384	Owned but not yet paid off	19100068
93	Occupied rent-free	19100068
2116	Owned and fully paid off	19100068
105	Other	19100068
5726	Rented	19100069
2171	Owned but not yet paid off	19100069
2002	Occupied rent-free	19100069
2791	Owned and fully paid off	19100069
396	Other	19100069
2488	Rented	19100070
3562	Owned but not yet paid off	19100070
398	Occupied rent-free	19100070
2863	Owned and fully paid off	19100070
136	Other	19100070
2892	Rented	19100071
2822	Owned but not yet paid off	19100071
197	Occupied rent-free	19100071
3204	Owned and fully paid off	19100071
166	Other	19100071
1845	Rented	19100072
2370	Owned but not yet paid off	19100072
187	Occupied rent-free	19100072
2284	Owned and fully paid off	19100072
95	Other	19100072
2275	Rented	19100073
3017	Owned but not yet paid off	19100073
105	Occupied rent-free	19100073
2905	Owned and fully paid off	19100073
191	Other	19100073
4353	Rented	19100074
2131	Owned but not yet paid off	19100074
2957	Occupied rent-free	19100074
3587	Owned and fully paid off	19100074
279	Other	19100074
2949	Rented	19100075
3772	Owned but not yet paid off	19100075
565	Occupied rent-free	19100075
2395	Owned and fully paid off	19100075
190	Other	19100075
1281	Rented	19100076
3621	Owned but not yet paid off	19100076
116	Occupied rent-free	19100076
3794	Owned and fully paid off	19100076
82	Other	19100076
6511	Rented	19100077
1812	Owned but not yet paid off	19100077
170	Occupied rent-free	19100077
2511	Owned and fully paid off	19100077
151	Other	19100077
1475	Rented	19100078
3779	Owned but not yet paid off	19100078
88	Occupied rent-free	19100078
3606	Owned and fully paid off	19100078
100	Other	19100078
1668	Rented	19100079
2598	Owned but not yet paid off	19100079
63	Occupied rent-free	19100079
2897	Owned and fully paid off	19100079
93	Other	19100079
2117	Rented	19100080
1033	Owned but not yet paid off	19100080
5175	Occupied rent-free	19100080
6803	Owned and fully paid off	19100080
704	Other	19100080
811	Rented	19100081
2822	Owned but not yet paid off	19100081
45	Occupied rent-free	19100081
3423	Owned and fully paid off	19100081
91	Other	19100081
2130	Rented	19100082
3468	Owned but not yet paid off	19100082
315	Occupied rent-free	19100082
2572	Owned and fully paid off	19100082
133	Other	19100082
4033	Rented	19100083
1259	Owned but not yet paid off	19100083
916	Occupied rent-free	19100083
2513	Owned and fully paid off	19100083
141	Other	19100083
2738	Rented	19100084
2117	Owned but not yet paid off	19100084
300	Occupied rent-free	19100084
3419	Owned and fully paid off	19100084
195	Other	19100084
5355	Rented	19100085
950	Owned but not yet paid off	19100085
893	Occupied rent-free	19100085
3118	Owned and fully paid off	19100085
252	Other	19100085
4391	Rented	19100086
792	Owned but not yet paid off	19100086
2063	Occupied rent-free	19100086
4026	Owned and fully paid off	19100086
463	Other	19100086
137	Rented	19100087
47	Owned but not yet paid off	19100087
4528	Occupied rent-free	19100087
3507	Owned and fully paid off	19100087
384	Other	19100087
2479	Rented	19100088
2300	Owned but not yet paid off	19100088
1846	Occupied rent-free	19100088
2739	Owned and fully paid off	19100088
449	Other	19100088
261	Rented	19100089
374	Owned but not yet paid off	19100089
2074	Occupied rent-free	19100089
6306	Owned and fully paid off	19100089
559	Other	19100089
717	Rented	19100090
543	Owned but not yet paid off	19100090
3229	Occupied rent-free	19100090
4466	Owned and fully paid off	19100090
377	Other	19100090
575	Rented	19100091
309	Owned but not yet paid off	19100091
2106	Occupied rent-free	19100091
5767	Owned and fully paid off	19100091
248	Other	19100091
2213	Rented	19100092
1929	Owned but not yet paid off	19100092
580	Occupied rent-free	19100092
4420	Owned and fully paid off	19100092
226	Other	19100092
1368	Rented	19100093
558	Owned but not yet paid off	19100093
3650	Occupied rent-free	19100093
3939	Owned and fully paid off	19100093
156	Other	19100093
1497	Rented	19100094
1211	Owned but not yet paid off	19100094
1377	Occupied rent-free	19100094
2120	Owned and fully paid off	19100094
199	Other	19100094
1985	Rented	19100095
1174	Owned but not yet paid off	19100095
6127	Occupied rent-free	19100095
9977	Owned and fully paid off	19100095
1088	Other	19100095
1276	Rented	19100096
209	Owned but not yet paid off	19100096
2027	Occupied rent-free	19100096
3883	Owned and fully paid off	19100096
98	Other	19100096
1278	Rented	19100097
603	Owned but not yet paid off	19100097
2400	Occupied rent-free	19100097
2997	Owned and fully paid off	19100097
376	Other	19100097
1790	Rented	19100098
134	Owned but not yet paid off	19100098
1449	Occupied rent-free	19100098
5297	Owned and fully paid off	19100098
151	Other	19100098
1682	Rented	19100099
3148	Owned but not yet paid off	19100099
2115	Occupied rent-free	19100099
5163	Owned and fully paid off	19100099
580	Other	19100099
4965	Rented	19100100
2551	Owned but not yet paid off	19100100
1282	Occupied rent-free	19100100
4173	Owned and fully paid off	19100100
212	Other	19100100
2830	Rented	19100101
400	Owned but not yet paid off	19100101
2906	Occupied rent-free	19100101
2456	Owned and fully paid off	19100101
418	Other	19100101
3430	Rented	19100102
3961	Owned but not yet paid off	19100102
90	Occupied rent-free	19100102
1735	Owned and fully paid off	19100102
58	Other	19100102
5086	Rented	19100103
6489	Owned but not yet paid off	19100103
193	Occupied rent-free	19100103
2955	Owned and fully paid off	19100103
220	Other	19100103
4556	Rented	19100104
488	Owned but not yet paid off	19100104
2344	Occupied rent-free	19100104
6749	Owned and fully paid off	19100104
252	Other	19100104
3579	Rented	19100105
3091	Owned but not yet paid off	19100105
1948	Occupied rent-free	19100105
3745	Owned and fully paid off	19100105
495	Other	19100105
3216	Rented	19100106
627	Owned but not yet paid off	19100106
9202	Occupied rent-free	19100106
3589	Owned and fully paid off	19100106
1913	Other	19100106
6769	Rented	19100107
6226	Owned but not yet paid off	19100107
168	Occupied rent-free	19100107
2815	Owned and fully paid off	19100107
98	Other	19100107
2370	Rented	19100108
1170	Owned but not yet paid off	19100108
8231	Occupied rent-free	19100108
4814	Owned and fully paid off	19100108
885	Other	19100108
2288	Rented	19100109
1350	Owned but not yet paid off	19100109
674	Occupied rent-free	19100109
4963	Owned and fully paid off	19100109
192	Other	19100109
2385	Rented	19100110
1318	Owned but not yet paid off	19100110
169	Occupied rent-free	19100110
2046	Owned and fully paid off	19100110
194	Other	19100110
2535	Rented	19100111
1936	Owned but not yet paid off	19100111
1360	Occupied rent-free	19100111
3057	Owned and fully paid off	19100111
859	Other	19100111
\.


--
-- Name: tenurestatus_country_pkey; Type: CONSTRAINT; Schema: public; Owner: census; Tablespace: 
--

ALTER TABLE ONLY tenurestatus_country
    ADD CONSTRAINT tenurestatus_country_pkey PRIMARY KEY ("tenure status");


--
-- Name: tenurestatus_municipality_pkey; Type: CONSTRAINT; Schema: public; Owner: census; Tablespace: 
--

ALTER TABLE ONLY tenurestatus_municipality
    ADD CONSTRAINT tenurestatus_municipality_pkey PRIMARY KEY ("tenure status", municipality_code);


--
-- Name: tenurestatus_province_pkey; Type: CONSTRAINT; Schema: public; Owner: census; Tablespace: 
--

ALTER TABLE ONLY tenurestatus_province
    ADD CONSTRAINT tenurestatus_province_pkey PRIMARY KEY ("tenure status", province_code);


--
-- Name: tenurestatus_ward_pkey; Type: CONSTRAINT; Schema: public; Owner: census; Tablespace: 
--

ALTER TABLE ONLY tenurestatus_ward
    ADD CONSTRAINT tenurestatus_ward_pkey PRIMARY KEY ("tenure status", ward_code);


--
-- Name: tenurestatus_country_country_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: census
--

ALTER TABLE ONLY tenurestatus_country
    ADD CONSTRAINT tenurestatus_country_country_code_fkey FOREIGN KEY (country_code) REFERENCES country(code);


--
-- Name: tenurestatus_municipality_municipality_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: census
--

ALTER TABLE ONLY tenurestatus_municipality
    ADD CONSTRAINT tenurestatus_municipality_municipality_code_fkey FOREIGN KEY (municipality_code) REFERENCES municipality(code);


--
-- Name: tenurestatus_province_province_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: census
--

ALTER TABLE ONLY tenurestatus_province
    ADD CONSTRAINT tenurestatus_province_province_code_fkey FOREIGN KEY (province_code) REFERENCES province(code);


--
-- Name: tenurestatus_ward_ward_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: census
--

ALTER TABLE ONLY tenurestatus_ward
    ADD CONSTRAINT tenurestatus_ward_ward_code_fkey FOREIGN KEY (ward_code) REFERENCES ward(code);


--
-- PostgreSQL database dump complete
--

