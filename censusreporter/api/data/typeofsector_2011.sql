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
-- Name: typeofsector_country; Type: TABLE; Schema: public; Owner: census; Tablespace: 
--

CREATE TABLE typeofsector_country (
    total integer NOT NULL,
    "type of sector" character varying(128) NOT NULL,
    country_code character varying(8) NOT NULL
);


ALTER TABLE public.typeofsector_country OWNER TO census;

--
-- Name: typeofsector_district; Type: TABLE; Schema: public; Owner: census; Tablespace: 
--

CREATE TABLE typeofsector_district (
    total integer NOT NULL,
    "type of sector" character varying(128) NOT NULL,
    district_code character varying(8) NOT NULL
);


ALTER TABLE public.typeofsector_district OWNER TO census;

--
-- Name: typeofsector_municipality; Type: TABLE; Schema: public; Owner: census; Tablespace: 
--

CREATE TABLE typeofsector_municipality (
    total integer NOT NULL,
    "type of sector" character varying(128) NOT NULL,
    municipality_code character varying(8) NOT NULL
);


ALTER TABLE public.typeofsector_municipality OWNER TO census;

--
-- Name: typeofsector_province; Type: TABLE; Schema: public; Owner: census; Tablespace: 
--

CREATE TABLE typeofsector_province (
    total integer NOT NULL,
    "type of sector" character varying(128) NOT NULL,
    province_code character varying(8) NOT NULL
);


ALTER TABLE public.typeofsector_province OWNER TO census;

--
-- Name: typeofsector_ward; Type: TABLE; Schema: public; Owner: census; Tablespace: 
--

CREATE TABLE typeofsector_ward (
    total integer NOT NULL,
    "type of sector" character varying(128) NOT NULL,
    ward_code character varying(8) NOT NULL
);


ALTER TABLE public.typeofsector_ward OWNER TO census;

--
-- Data for Name: typeofsector_country; Type: TABLE DATA; Schema: public; Owner: census
--

COPY typeofsector_country (total, "type of sector", country_code) FROM stdin;
9956436	In the formal sector	ZA
1640901	In the informal sector	ZA
1534843	Private household	ZA
318446	Do not know	ZA
0	Unspecified	ZA
38319935	Not applicable	ZA
\.


--
-- Data for Name: typeofsector_district; Type: TABLE DATA; Schema: public; Owner: census
--

COPY typeofsector_district (total, "type of sector", district_code) FROM stdin;
82811	In the formal sector	DC10
22824	In the informal sector	DC10
16221	Private household	DC10
3301	Do not know	DC10
0	Unspecified	DC10
325427	Not applicable	DC10
62137	In the formal sector	DC12
17841	In the informal sector	DC12
12221	Private household	DC12
1862	Do not know	DC12
0	Unspecified	DC12
798575	Not applicable	DC12
71356	In the formal sector	DC13
15789	In the informal sector	DC13
12645	Private household	DC13
2339	Do not know	DC13
0	Unspecified	DC13
693331	Not applicable	DC13
32703	In the formal sector	DC14
11322	In the informal sector	DC14
7316	Private household	DC14
1479	Do not know	DC14
0	Unspecified	DC14
296948	Not applicable	DC14
86986	In the formal sector	DC15
20577	In the informal sector	DC15
13899	Private household	DC15
2114	Do not know	DC15
0	Unspecified	DC15
1241368	Not applicable	DC15
46590	In the formal sector	DC44
14068	In the informal sector	DC44
8450	Private household	DC44
1631	Do not know	DC44
0	Unspecified	DC44
730604	Not applicable	DC44
138435	In the formal sector	BUF
23209	In the informal sector	BUF
23364	Private household	BUF
4031	Do not know	BUF
0	Unspecified	BUF
566161	Not applicable	BUF
232812	In the formal sector	NMA
26252	In the informal sector	NMA
30217	Private household	NMA
7219	Do not know	NMA
0	Unspecified	NMA
855615	Not applicable	NMA
19007	In the formal sector	DC16
8180	In the informal sector	DC16
5786	Private household	DC16
764	Do not know	DC16
0	Unspecified	DC16
112521	Not applicable	DC16
104019	In the formal sector	DC18
17920	In the informal sector	DC18
20445	Private household	DC18
3515	Do not know	DC18
0	Unspecified	DC18
481728	Not applicable	DC18
100286	In the formal sector	DC19
22955	In the informal sector	DC19
19950	Private household	DC19
3689	Do not know	DC19
0	Unspecified	DC19
589358	Not applicable	DC19
83149	In the formal sector	DC20
17589	In the informal sector	DC20
16554	Private household	DC20
2906	Do not know	DC20
0	Unspecified	DC20
367838	Not applicable	DC20
148905	In the formal sector	MAN
27008	In the informal sector	MAN
34235	Private household	MAN
5297	Do not know	MAN
0	Unspecified	MAN
531986	Not applicable	MAN
210029	In the formal sector	DC42
26464	In the informal sector	DC42
33336	Private household	DC42
6805	Do not know	DC42
0	Unspecified	DC42
639849	Not applicable	DC42
224504	In the formal sector	DC48
30773	In the informal sector	DC48
35979	Private household	DC48
6786	Do not know	DC48
0	Unspecified	DC48
522952	Not applicable	DC48
899756	In the formal sector	EKU
97710	In the informal sector	EKU
121689	Private household	EKU
29256	Do not know	EKU
0	Unspecified	EKU
2030059	Not applicable	EKU
1328219	In the formal sector	JHB
143859	In the informal sector	JHB
223302	Private household	JHB
39553	Do not know	JHB
0	Unspecified	JHB
2699894	Not applicable	JHB
830814	In the formal sector	TSH
107488	In the informal sector	TSH
138403	Private household	TSH
25058	Do not know	TSH
0	Unspecified	TSH
1819725	Not applicable	TSH
83148	In the formal sector	DC21
20918	In the informal sector	DC21
12929	Private household	DC21
2610	Do not know	DC21
0	Unspecified	DC21
602879	Not applicable	DC21
182090	In the formal sector	DC22
34931	In the informal sector	DC22
26211	Private household	DC22
8031	Do not know	DC22
0	Unspecified	DC22
766500	Not applicable	DC22
67750	In the formal sector	DC23
14902	In the informal sector	DC23
6426	Private household	DC23
2455	Do not know	DC23
0	Unspecified	DC23
577315	Not applicable	DC23
41820	In the formal sector	DC27
10960	In the informal sector	DC27
5438	Private household	DC27
2160	Do not know	DC27
0	Unspecified	DC27
565468	Not applicable	DC27
114705	In the formal sector	DC28
21010	In the informal sector	DC28
11280	Private household	DC28
4064	Do not know	DC28
0	Unspecified	DC28
756461	Not applicable	DC28
43294	In the formal sector	DC43
10891	In the informal sector	DC43
6337	Private household	DC43
2704	Do not know	DC43
0	Unspecified	DC43
398193	Not applicable	DC43
36299	In the formal sector	DC24
9530	In the informal sector	DC24
4916	Private household	DC24
1037	Do not know	DC24
0	Unspecified	DC24
459056	Not applicable	DC24
58457	In the formal sector	DC25
12575	In the informal sector	DC25
7144	Private household	DC25
2796	Do not know	DC25
0	Unspecified	DC25
418866	Not applicable	DC25
60250	In the formal sector	DC26
16084	In the informal sector	DC26
6538	Private household	DC26
2517	Do not know	DC26
0	Unspecified	DC26
718185	Not applicable	DC26
82953	In the formal sector	DC29
22401	In the informal sector	DC29
9460	Private household	DC29
2173	Do not know	DC29
0	Unspecified	DC29
489823	Not applicable	DC29
812920	In the formal sector	ETH
87831	In the informal sector	ETH
87849	Private household	ETH
26000	Do not know	ETH
0	Unspecified	ETH
2427760	Not applicable	ETH
116750	In the formal sector	DC33
33329	In the informal sector	DC33
22799	Private household	DC33
4285	Do not know	DC33
0	Unspecified	DC33
915344	Not applicable	DC33
119272	In the formal sector	DC34
41492	In the informal sector	DC34
28845	Private household	DC34
3308	Do not know	DC34
0	Unspecified	DC34
1101804	Not applicable	DC34
156341	In the formal sector	DC35
36461	In the informal sector	DC35
32384	Private household	DC35
4184	Do not know	DC35
0	Unspecified	DC35
1032092	Not applicable	DC35
116027	In the formal sector	DC36
26534	In the informal sector	DC36
24115	Private household	DC36
4007	Do not know	DC36
0	Unspecified	DC36
508653	Not applicable	DC36
87894	In the formal sector	DC47
25575	In the informal sector	DC47
14553	Private household	DC47
3219	Do not know	DC47
0	Unspecified	DC47
945599	Not applicable	DC47
188517	In the formal sector	DC30
39954	In the informal sector	DC30
27668	Private household	DC30
7682	Do not know	DC30
0	Unspecified	DC30
779373	Not applicable	DC30
249922	In the formal sector	DC31
53956	In the informal sector	DC31
48368	Private household	DC31
9208	Do not know	DC31
0	Unspecified	DC31
946676	Not applicable	DC31
240505	In the formal sector	DC32
69214	In the informal sector	DC32
44557	Private household	DC32
7609	Do not know	DC32
0	Unspecified	DC32
1326729	Not applicable	DC32
314968	In the formal sector	DC37
58955	In the informal sector	DC37
58875	Private household	DC37
10273	Do not know	DC37
0	Unspecified	DC37
1064435	Not applicable	DC37
97692	In the formal sector	DC38
25063	In the informal sector	DC38
26963	Private household	DC38
2267	Do not know	DC38
0	Unspecified	DC38
690713	Not applicable	DC38
41948	In the formal sector	DC39
16006	In the informal sector	DC39
13665	Private household	DC39
2024	Do not know	DC39
0	Unspecified	DC39
390172	Not applicable	DC39
131215	In the formal sector	DC40
27992	In the informal sector	DC40
26761	Private household	DC40
3727	Do not know	DC40
0	Unspecified	DC40
506238	Not applicable	DC40
24383	In the formal sector	DC6
6762	In the informal sector	DC6
2962	Private household	DC6
537	Do not know	DC6
0	Unspecified	DC6
81198	Not applicable	DC6
29732	In the formal sector	DC7
8243	In the informal sector	DC7
5662	Private household	DC7
1074	Do not know	DC7
0	Unspecified	DC7
141640	Not applicable	DC7
52956	In the formal sector	DC8
13439	In the informal sector	DC8
7511	Private household	DC8
1778	Do not know	DC8
0	Unspecified	DC8
161100	Not applicable	DC8
65612	In the formal sector	DC9
10728	In the informal sector	DC9
10526	Private household	DC9
1815	Do not know	DC9
0	Unspecified	DC9
293405	Not applicable	DC9
33141	In the formal sector	DC45
4691	In the informal sector	DC45
5594	Private household	DC45
1041	Do not know	DC45
0	Unspecified	DC45
180331	Not applicable	DC45
118008	In the formal sector	DC1
13759	In the informal sector	DC1
9036	Private household	DC1
2862	Do not know	DC1
0	Unspecified	DC1
248101	Not applicable	DC1
223924	In the formal sector	DC2
47154	In the informal sector	DC2
18362	Private household	DC2
5221	Do not know	DC2
0	Unspecified	DC2
492829	Not applicable	DC2
70745	In the formal sector	DC3
15071	In the informal sector	DC3
7028	Private household	DC3
2710	Do not know	DC3
0	Unspecified	DC3
162622	Not applicable	DC3
129593	In the formal sector	DC4
25718	In the informal sector	DC4
18843	Private household	DC4
5615	Do not know	DC4
0	Unspecified	DC4
394496	Not applicable	DC4
13638	In the formal sector	DC5
2604	In the informal sector	DC5
1338	Private household	DC5
437	Do not know	DC5
0	Unspecified	DC5
52993	Not applicable	DC5
1047444	In the formal sector	CPT
124338	In the informal sector	CPT
119887	Private household	CPT
29410	Do not know	CPT
0	Unspecified	CPT
2418948	Not applicable	CPT
\.


--
-- Data for Name: typeofsector_municipality; Type: TABLE DATA; Schema: public; Owner: census
--

COPY typeofsector_municipality (total, "type of sector", municipality_code) FROM stdin;
8512	In the formal sector	EC101
2481	In the informal sector	EC101
1301	Private household	EC101
336	Do not know	EC101
0	Unspecified	EC101
38363	Not applicable	EC101
4589	In the formal sector	EC102
1526	In the informal sector	EC102
1255	Private household	EC102
251	Do not know	EC102
0	Unspecified	EC102
28380	Not applicable	EC102
1568	In the formal sector	EC103
674	In the informal sector	EC103
496	Private household	EC103
26	Do not know	EC103
0	Unspecified	EC103
7773	Not applicable	EC103
12977	In the formal sector	EC104
3154	In the informal sector	EC104
3101	Private household	EC104
478	Do not know	EC104
0	Unspecified	EC104
60680	Not applicable	EC104
10268	In the formal sector	EC105
2311	In the informal sector	EC105
2687	Private household	EC105
579	Do not know	EC105
0	Unspecified	EC105
45331	Not applicable	EC105
11877	In the formal sector	EC106
2242	In the informal sector	EC106
1722	Private household	EC106
553	Do not know	EC106
0	Unspecified	EC106
38109	Not applicable	EC106
2416	In the formal sector	EC107
805	In the informal sector	EC107
877	Private household	EC107
95	Do not know	EC107
0	Unspecified	EC107
13568	Not applicable	EC107
20157	In the formal sector	EC108
6468	In the informal sector	EC108
3568	Private household	EC108
692	Do not know	EC108
0	Unspecified	EC108
67673	Not applicable	EC108
10447	In the formal sector	EC109
3163	In the informal sector	EC109
1213	Private household	EC109
292	Do not know	EC109
0	Unspecified	EC109
25549	Not applicable	EC109
12374	In the formal sector	EC121
3734	In the informal sector	EC121
1997	Private household	EC121
230	Do not know	EC121
0	Unspecified	EC121
236575	Not applicable	EC121
16809	In the formal sector	EC122
4473	In the informal sector	EC122
2969	Private household	EC122
298	Do not know	EC122
0	Unspecified	EC122
227841	Not applicable	EC122
3941	In the formal sector	EC123
1173	In the informal sector	EC123
1492	Private household	EC123
353	Do not know	EC123
0	Unspecified	EC123
32032	Not applicable	EC123
10939	In the formal sector	EC124
4059	In the informal sector	EC124
2475	Private household	EC124
317	Do not know	EC124
0	Unspecified	EC124
104988	Not applicable	EC124
4304	In the formal sector	EC126
1233	In the informal sector	EC126
828	Private household	EC126
228	Do not know	EC126
0	Unspecified	EC126
65598	Not applicable	EC126
10812	In the formal sector	EC127
2012	In the informal sector	EC127
1639	Private household	EC127
365	Do not know	EC127
0	Unspecified	EC127
112287	Not applicable	EC127
2959	In the formal sector	EC128
1158	In the informal sector	EC128
822	Private household	EC128
71	Do not know	EC128
0	Unspecified	EC128
19255	Not applicable	EC128
12867	In the formal sector	EC131
2211	In the informal sector	EC131
1879	Private household	EC131
278	Do not know	EC131
0	Unspecified	EC131
48324	Not applicable	EC131
2796	In the formal sector	EC132
556	In the informal sector	EC132
1071	Private household	EC132
115	Do not know	EC132
0	Unspecified	EC132
28742	Not applicable	EC132
2873	In the formal sector	EC133
459	In the informal sector	EC133
764	Private household	EC133
94	Do not know	EC133
0	Unspecified	EC133
17781	Not applicable	EC133
24550	In the formal sector	EC134
4565	In the informal sector	EC134
4529	Private household	EC134
701	Do not know	EC134
0	Unspecified	EC134
156378	Not applicable	EC134
7432	In the formal sector	EC135
2063	In the informal sector	EC135
1315	Private household	EC135
259	Do not know	EC135
0	Unspecified	EC135
134302	Not applicable	EC135
6431	In the formal sector	EC136
1681	In the informal sector	EC136
1207	Private household	EC136
340	Do not know	EC136
0	Unspecified	EC136
109800	Not applicable	EC136
8574	In the formal sector	EC137
2015	In the informal sector	EC137
947	Private household	EC137
278	Do not know	EC137
0	Unspecified	EC137
143698	Not applicable	EC137
5832	In the formal sector	EC138
2238	In the informal sector	EC138
933	Private household	EC138
275	Do not know	EC138
0	Unspecified	EC138
54306	Not applicable	EC138
9502	In the formal sector	EC141
3288	In the informal sector	EC141
1405	Private household	EC141
460	Do not know	EC141
0	Unspecified	EC141
123484	Not applicable	EC141
10902	In the formal sector	EC142
4842	In the informal sector	EC142
2562	Private household	EC142
436	Do not know	EC142
0	Unspecified	EC142
115409	Not applicable	EC142
7127	In the formal sector	EC143
1553	In the informal sector	EC143
1778	Private household	EC143
418	Do not know	EC143
0	Unspecified	EC143
32924	Not applicable	EC143
5172	In the formal sector	EC144
1639	In the informal sector	EC144
1571	Private household	EC144
164	Do not know	EC144
0	Unspecified	EC144
25131	Not applicable	EC144
13234	In the formal sector	EC153
3342	In the informal sector	EC153
1988	Private household	EC153
403	Do not know	EC153
0	Unspecified	EC153
259515	Not applicable	EC153
6065	In the formal sector	EC154
1273	In the informal sector	EC154
699	Private household	EC154
178	Do not know	EC154
0	Unspecified	EC154
147920	Not applicable	EC154
15134	In the formal sector	EC155
3323	In the informal sector	EC155
2365	Private household	EC155
373	Do not know	EC155
0	Unspecified	EC155
269195	Not applicable	EC155
10759	In the formal sector	EC156
2551	In the informal sector	EC156
1588	Private household	EC156
248	Do not know	EC156
0	Unspecified	EC156
173079	Not applicable	EC156
41794	In the formal sector	EC157
10088	In the informal sector	EC157
7259	Private household	EC157
911	Do not know	EC157
0	Unspecified	EC157
391658	Not applicable	EC157
15067	In the formal sector	EC441
6105	In the informal sector	EC441
3100	Private household	EC441
593	Do not know	EC441
0	Unspecified	EC441
178978	Not applicable	EC441
13279	In the formal sector	EC442
3447	In the informal sector	EC442
1814	Private household	EC442
452	Do not know	EC442
0	Unspecified	EC442
172629	Not applicable	EC442
13040	In the formal sector	EC443
3490	In the informal sector	EC443
2930	Private household	EC443
390	Do not know	EC443
0	Unspecified	EC443
262055	Not applicable	EC443
5204	In the formal sector	EC444
1026	In the informal sector	EC444
607	Private household	EC444
196	Do not know	EC444
0	Unspecified	EC444
116942	Not applicable	EC444
138435	In the formal sector	BUF
23209	In the informal sector	BUF
23364	Private household	BUF
4031	Do not know	BUF
0	Unspecified	BUF
566161	Not applicable	BUF
232812	In the formal sector	NMA
26252	In the informal sector	NMA
30217	Private household	NMA
7219	Do not know	NMA
0	Unspecified	NMA
855615	Not applicable	NMA
5126	In the formal sector	FS161
2939	In the informal sector	FS161
985	Private household	FS161
297	Do not know	FS161
0	Unspecified	FS161
29282	Not applicable	FS161
6525	In the formal sector	FS162
2793	In the informal sector	FS162
2105	Private household	FS162
237	Do not know	FS162
0	Unspecified	FS162
37511	Not applicable	FS162
4570	In the formal sector	FS163
1639	In the informal sector	FS163
1543	Private household	FS163
149	Do not know	FS163
0	Unspecified	FS163
26246	Not applicable	FS163
2787	In the formal sector	FS164
811	In the informal sector	FS164
1153	Private household	FS164
81	Do not know	FS164
0	Unspecified	FS164
19482	Not applicable	FS164
7384	In the formal sector	FS181
1456	In the informal sector	FS181
2260	Private household	FS181
583	Do not know	FS181
0	Unspecified	FS181
51651	Not applicable	FS181
4066	In the formal sector	FS182
1069	In the informal sector	FS182
1558	Private household	FS182
107	Do not know	FS182
0	Unspecified	FS182
22186	Not applicable	FS182
6627	In the formal sector	FS183
1306	In the informal sector	FS183
1816	Private household	FS183
186	Do not know	FS183
0	Unspecified	FS183
37691	Not applicable	FS183
75439	In the formal sector	FS184
10965	In the informal sector	FS184
12643	Private household	FS184
2233	Do not know	FS184
0	Unspecified	FS184
305180	Not applicable	FS184
10503	In the formal sector	FS185
3123	In the informal sector	FS185
2168	Private household	FS185
407	Do not know	FS185
0	Unspecified	FS185
65019	Not applicable	FS185
14435	In the formal sector	FS191
2885	In the informal sector	FS191
3997	Private household	FS191
601	Do not know	FS191
0	Unspecified	FS191
90679	Not applicable	FS191
24948	In the formal sector	FS192
3851	In the informal sector	FS192
5083	Private household	FS192
623	Do not know	FS192
0	Unspecified	FS192
94199	Not applicable	FS192
9630	In the formal sector	FS193
2045	In the informal sector	FS193
1900	Private household	FS193
179	Do not know	FS193
0	Unspecified	FS193
46571	Not applicable	FS193
35742	In the formal sector	FS194
10601	In the informal sector	FS194
5778	Private household	FS194
1548	Do not know	FS194
0	Unspecified	FS194
282115	Not applicable	FS194
7961	In the formal sector	FS195
1410	In the informal sector	FS195
1314	Private household	FS195
280	Do not know	FS195
0	Unspecified	FS195
36806	Not applicable	FS195
7570	In the formal sector	FS196
2164	In the informal sector	FS196
1878	Private household	FS196
458	Do not know	FS196
0	Unspecified	FS196
38988	Not applicable	FS196
24266	In the formal sector	FS201
6254	In the informal sector	FS201
5626	Private household	FS201
683	Do not know	FS201
0	Unspecified	FS201
123703	Not applicable	FS201
17367	In the formal sector	FS203
4779	In the informal sector	FS203
3455	Private household	FS203
665	Do not know	FS203
0	Unspecified	FS203
94253	Not applicable	FS203
34194	In the formal sector	FS204
4002	In the informal sector	FS204
5626	Private household	FS204
1212	Do not know	FS204
0	Unspecified	FS204
104074	Not applicable	FS204
7322	In the formal sector	FS205
2554	In the informal sector	FS205
1847	Private household	FS205
346	Do not know	FS205
0	Unspecified	FS205
45807	Not applicable	FS205
148905	In the formal sector	MAN
27008	In the informal sector	MAN
34235	Private household	MAN
5297	Do not know	MAN
0	Unspecified	MAN
531986	Not applicable	MAN
159674	In the formal sector	GT421
19283	In the informal sector	GT421
22754	Private household	GT421
4388	Do not know	GT421
0	Unspecified	GT421
515564	Not applicable	GT421
27256	In the formal sector	GT422
3766	In the informal sector	GT422
6211	Private household	GT422
1175	Do not know	GT422
0	Unspecified	GT422
56892	Not applicable	GT422
23100	In the formal sector	GT423
3415	In the informal sector	GT423
4371	Private household	GT423
1242	Do not know	GT423
0	Unspecified	GT423
67393	Not applicable	GT423
98043	In the formal sector	GT481
15125	In the informal sector	GT481
20646	Private household	GT481
3553	Do not know	GT481
0	Unspecified	GT481
225054	Not applicable	GT481
40706	In the formal sector	GT482
4581	In the informal sector	GT482
5723	Private household	GT482
1265	Do not know	GT482
0	Unspecified	GT482
97011	Not applicable	GT482
30999	In the formal sector	GT483
5453	In the informal sector	GT483
3740	Private household	GT483
763	Do not know	GT483
0	Unspecified	GT483
70812	Not applicable	GT483
54756	In the formal sector	GT484
5614	In the informal sector	GT484
5870	Private household	GT484
1204	Do not know	GT484
0	Unspecified	GT484
130075	Not applicable	GT484
899756	In the formal sector	EKU
97710	In the informal sector	EKU
121689	Private household	EKU
29256	Do not know	EKU
0	Unspecified	EKU
2030059	Not applicable	EKU
1328219	In the formal sector	JHB
143859	In the informal sector	JHB
223302	Private household	JHB
39553	Do not know	JHB
0	Unspecified	JHB
2699894	Not applicable	JHB
830814	In the formal sector	TSH
107488	In the informal sector	TSH
138403	Private household	TSH
25058	Do not know	TSH
0	Unspecified	TSH
1819725	Not applicable	TSH
8535	In the formal sector	KZN213
2843	In the informal sector	KZN213
1351	Private household	KZN213
197	Do not know	KZN213
0	Unspecified	KZN213
148049	Not applicable	KZN213
7778	In the formal sector	KZN214
2398	In the informal sector	KZN214
902	Private household	KZN214
376	Do not know	KZN214
0	Unspecified	KZN214
85102	Not applicable	KZN214
3898	In the formal sector	KZN215
1094	In the informal sector	KZN215
809	Private household	KZN215
193	Do not know	KZN215
0	Unspecified	KZN215
46545	Not applicable	KZN215
46953	In the formal sector	KZN216
10399	In the informal sector	KZN216
7399	Private household	KZN216
1265	Do not know	KZN216
0	Unspecified	KZN216
190119	Not applicable	KZN216
3799	In the formal sector	KZN211
1514	In the informal sector	KZN211
555	Private household	KZN211
151	Do not know	KZN211
0	Unspecified	KZN211
71384	Not applicable	KZN211
12185	In the formal sector	KZN212
2669	In the informal sector	KZN212
1913	Private household	KZN212
427	Do not know	KZN212
0	Unspecified	KZN212
61680	Not applicable	KZN212
13601	In the formal sector	KZN221
4926	In the informal sector	KZN221
2089	Private household	KZN221
1137	Do not know	KZN221
0	Unspecified	KZN221
84620	Not applicable	KZN221
23825	In the formal sector	KZN222
3261	In the informal sector	KZN222
3837	Private household	KZN222
1069	Do not know	KZN222
0	Unspecified	KZN222
60718	Not applicable	KZN222
6353	In the formal sector	KZN223
2505	In the informal sector	KZN223
1037	Private household	KZN223
536	Do not know	KZN223
0	Unspecified	KZN223
27672	Not applicable	KZN223
1777	In the formal sector	KZN224
324	In the informal sector	KZN224
184	Private household	KZN224
132	Do not know	KZN224
0	Unspecified	KZN224
30688	Not applicable	KZN224
119383	In the formal sector	KZN225
17532	In the informal sector	KZN225
16316	Private household	KZN225
4024	Do not know	KZN225
0	Unspecified	KZN225
461281	Not applicable	KZN225
9013	In the formal sector	KZN226
2882	In the informal sector	KZN226
1314	Private household	KZN226
569	Do not know	KZN226
0	Unspecified	KZN226
49363	Not applicable	KZN226
8139	In the formal sector	KZN227
3500	In the informal sector	KZN227
1433	Private household	KZN227
564	Do not know	KZN227
0	Unspecified	KZN227
52157	Not applicable	KZN227
36984	In the formal sector	KZN232
7228	In the informal sector	KZN232
3285	Private household	KZN232
923	Do not know	KZN232
0	Unspecified	KZN232
189016	Not applicable	KZN232
3365	In the formal sector	KZN233
785	In the informal sector	KZN233
224	Private household	KZN233
92	Do not know	KZN233
0	Unspecified	KZN233
98650	Not applicable	KZN233
10382	In the formal sector	KZN234
1897	In the informal sector	KZN234
907	Private household	KZN234
464	Do not know	KZN234
0	Unspecified	KZN234
69503	Not applicable	KZN234
9080	In the formal sector	KZN235
3223	In the informal sector	KZN235
1220	Private household	KZN235
518	Do not know	KZN235
0	Unspecified	KZN235
118026	Not applicable	KZN235
7939	In the formal sector	KZN236
1767	In the informal sector	KZN236
790	Private household	KZN236
457	Do not know	KZN236
0	Unspecified	KZN236
102120	Not applicable	KZN236
8591	In the formal sector	KZN271
2378	In the informal sector	KZN271
948	Private household	KZN271
378	Do not know	KZN271
0	Unspecified	KZN271
144441	Not applicable	KZN271
12045	In the formal sector	KZN272
2775	In the informal sector	KZN272
1169	Private household	KZN272
402	Do not know	KZN272
0	Unspecified	KZN272
170111	Not applicable	KZN272
3410	In the formal sector	KZN273
849	In the informal sector	KZN273
916	Private household	KZN273
276	Do not know	KZN273
0	Unspecified	KZN273
29807	Not applicable	KZN273
4024	In the formal sector	KZN274
1003	In the informal sector	KZN274
328	Private household	KZN274
173	Do not know	KZN274
0	Unspecified	KZN274
66397	Not applicable	KZN274
13749	In the formal sector	KZN275
3955	In the informal sector	KZN275
2077	Private household	KZN275
931	Do not know	KZN275
0	Unspecified	KZN275
154712	Not applicable	KZN275
68052	In the formal sector	KZN282
10778	In the informal sector	KZN282
6667	Private household	KZN282
1592	Do not know	KZN282
0	Unspecified	KZN282
247369	Not applicable	KZN282
5814	In the formal sector	KZN286
964	In the informal sector	KZN286
191	Private household	KZN286
154	Do not know	KZN286
0	Unspecified	KZN286
107294	Not applicable	KZN286
12192	In the formal sector	KZN281
3019	In the informal sector	KZN281
1111	Private household	KZN281
466	Do not know	KZN281
0	Unspecified	KZN281
106100	Not applicable	KZN281
4956	In the formal sector	KZN283
1299	In the informal sector	KZN283
338	Private household	KZN283
255	Do not know	KZN283
0	Unspecified	KZN283
67489	Not applicable	KZN283
17655	In the formal sector	KZN284
4031	In the informal sector	KZN284
2532	Private household	KZN284
1279	Do not know	KZN284
0	Unspecified	KZN284
188104	Not applicable	KZN284
6036	In the formal sector	KZN285
917	In the informal sector	KZN285
441	Private household	KZN285
318	Do not know	KZN285
0	Unspecified	KZN285
40105	Not applicable	KZN285
6333	In the formal sector	KZN431
2406	In the informal sector	KZN431
1286	Private household	KZN431
798	Do not know	KZN431
0	Unspecified	KZN431
89724	Not applicable	KZN431
3437	In the formal sector	KZN432
713	In the informal sector	KZN432
539	Private household	KZN432
741	Do not know	KZN432
0	Unspecified	KZN432
7467	Not applicable	KZN432
13589	In the formal sector	KZN433
2730	In the informal sector	KZN433
2503	Private household	KZN433
314	Do not know	KZN433
0	Unspecified	KZN433
46845	Not applicable	KZN433
9180	In the formal sector	KZN434
2441	In the informal sector	KZN434
786	Private household	KZN434
428	Do not know	KZN434
0	Unspecified	KZN434
88855	Not applicable	KZN434
10754	In the formal sector	KZN435
2601	In the informal sector	KZN435
1223	Private household	KZN435
422	Do not know	KZN435
0	Unspecified	KZN435
165301	Not applicable	KZN435
11988	In the formal sector	KZN241
1601	In the informal sector	KZN241
1720	Private household	KZN241
242	Do not know	KZN241
0	Unspecified	KZN241
49312	Not applicable	KZN241
6934	In the formal sector	KZN242
1891	In the informal sector	KZN242
1277	Private household	KZN242
120	Do not know	KZN242
0	Unspecified	KZN242
155084	Not applicable	KZN242
6912	In the formal sector	KZN244
1398	In the informal sector	KZN244
469	Private household	KZN244
131	Do not know	KZN244
0	Unspecified	KZN244
168667	Not applicable	KZN244
10465	In the formal sector	KZN245
4639	In the informal sector	KZN245
1450	Private household	KZN245
545	Do not know	KZN245
0	Unspecified	KZN245
85994	Not applicable	KZN245
47809	In the formal sector	KZN252
8403	In the informal sector	KZN252
5435	Private household	KZN252
2327	Do not know	KZN252
0	Unspecified	KZN252
299263	Not applicable	KZN252
3585	In the formal sector	KZN253
1858	In the informal sector	KZN253
448	Private household	KZN253
56	Do not know	KZN253
0	Unspecified	KZN253
28495	Not applicable	KZN253
7064	In the formal sector	KZN254
2314	In the informal sector	KZN254
1262	Private household	KZN254
413	Do not know	KZN254
0	Unspecified	KZN254
91108	Not applicable	KZN254
20671	In the formal sector	KZN263
4693	In the informal sector	KZN263
2304	Private household	KZN263
637	Do not know	KZN263
0	Unspecified	KZN263
182755	Not applicable	KZN263
5855	In the formal sector	KZN261
2707	In the informal sector	KZN261
918	Private household	KZN261
355	Do not know	KZN261
0	Unspecified	KZN261
72217	Not applicable	KZN261
11282	In the formal sector	KZN262
4442	In the informal sector	KZN262
1689	Private household	KZN262
1198	Do not know	KZN262
0	Unspecified	KZN262
108627	Not applicable	KZN262
10283	In the formal sector	KZN265
2103	In the informal sector	KZN265
626	Private household	KZN265
170	Do not know	KZN265
0	Unspecified	KZN265
181726	Not applicable	KZN265
12160	In the formal sector	KZN266
2138	In the informal sector	KZN266
1001	Private household	KZN266
158	Do not know	KZN266
0	Unspecified	KZN266
172860	Not applicable	KZN266
4484	In the formal sector	KZN294
922	In the informal sector	KZN294
207	Private household	KZN294
71	Do not know	KZN294
0	Unspecified	KZN294
91040	Not applicable	KZN294
23523	In the formal sector	KZN291
4349	In the informal sector	KZN291
1701	Private household	KZN291
453	Do not know	KZN291
0	Unspecified	KZN291
108053	Not applicable	KZN291
47530	In the formal sector	KZN292
13998	In the informal sector	KZN292
6804	Private household	KZN292
1387	Do not know	KZN292
0	Unspecified	KZN292
161469	Not applicable	KZN292
7416	In the formal sector	KZN293
3131	In the informal sector	KZN293
748	Private household	KZN293
262	Do not know	KZN293
0	Unspecified	KZN293
129262	Not applicable	KZN293
812920	In the formal sector	ETH
87831	In the informal sector	ETH
87849	Private household	ETH
26000	Do not know	ETH
0	Unspecified	ETH
2427760	Not applicable	ETH
17898	In the formal sector	LIM331
4320	In the informal sector	LIM331
3201	Private household	LIM331
433	Do not know	LIM331
0	Unspecified	LIM331
218365	Not applicable	LIM331
18084	In the formal sector	LIM332
6787	In the informal sector	LIM332
2626	Private household	LIM332
858	Do not know	LIM332
0	Unspecified	LIM332
184347	Not applicable	LIM332
46862	In the formal sector	LIM333
14603	In the informal sector	LIM333
11421	Private household	LIM333
1838	Do not know	LIM333
0	Unspecified	LIM333
315372	Not applicable	LIM333
26005	In the formal sector	LIM334
4087	In the informal sector	LIM334
3665	Private household	LIM334
725	Do not know	LIM334
0	Unspecified	LIM334
116156	Not applicable	LIM334
7901	In the formal sector	LIM335
3532	In the informal sector	LIM335
1887	Private household	LIM335
432	Do not know	LIM335
0	Unspecified	LIM335
81105	Not applicable	LIM335
6711	In the formal sector	LIM342
1728	In the informal sector	LIM342
1012	Private household	LIM342
150	Do not know	LIM342
0	Unspecified	LIM342
82270	Not applicable	LIM342
47585	In the formal sector	LIM343
16880	In the informal sector	LIM343
11523	Private household	LIM343
858	Do not know	LIM343
0	Unspecified	LIM343
541617	Not applicable	LIM343
16587	In the formal sector	LIM341
5294	In the informal sector	LIM341
3315	Private household	LIM341
779	Do not know	LIM341
0	Unspecified	LIM341
42383	Not applicable	LIM341
48389	In the formal sector	LIM344
17591	In the informal sector	LIM344
12996	Private household	LIM344
1521	Do not know	LIM344
0	Unspecified	LIM344
435534	Not applicable	LIM344
8405	In the formal sector	LIM351
4637	In the informal sector	LIM351
2794	Private household	LIM351
380	Do not know	LIM351
0	Unspecified	LIM351
146413	Not applicable	LIM351
7222	In the formal sector	LIM352
2524	In the informal sector	LIM352
1764	Private household	LIM352
202	Do not know	LIM352
0	Unspecified	LIM352
119451	Not applicable	LIM352
9165	In the formal sector	LIM353
2845	In the informal sector	LIM353
3273	Private household	LIM353
252	Do not know	LIM353
0	Unspecified	LIM353
92785	Not applicable	LIM353
111688	In the formal sector	LIM354
21233	In the informal sector	LIM354
22012	Private household	LIM354
2915	Do not know	LIM354
0	Unspecified	LIM354
471149	Not applicable	LIM354
19861	In the formal sector	LIM355
5222	In the informal sector	LIM355
2540	Private household	LIM355
433	Do not know	LIM355
0	Unspecified	LIM355
202294	Not applicable	LIM355
23976	In the formal sector	LIM361
3906	In the informal sector	LIM361
4309	Private household	LIM361
1109	Do not know	LIM361
0	Unspecified	LIM361
51934	Not applicable	LIM361
25573	In the formal sector	LIM362
4668	In the informal sector	LIM362
4988	Private household	LIM362
575	Do not know	LIM362
0	Unspecified	LIM362
79964	Not applicable	LIM362
6147	In the formal sector	LIM364
3009	In the informal sector	LIM364
2785	Private household	LIM364
404	Do not know	LIM364
0	Unspecified	LIM364
23295	Not applicable	LIM364
13559	In the formal sector	LIM365
2863	In the informal sector	LIM365
3153	Private household	LIM365
504	Do not know	LIM365
0	Unspecified	LIM365
48434	Not applicable	LIM365
13187	In the formal sector	LIM366
3708	In the informal sector	LIM366
3544	Private household	LIM366
761	Do not know	LIM366
0	Unspecified	LIM366
45299	Not applicable	LIM366
33583	In the formal sector	LIM367
8382	In the informal sector	LIM367
5335	Private household	LIM367
654	Do not know	LIM367
0	Unspecified	LIM367
259727	Not applicable	LIM367
12345	In the formal sector	LIM471
3132	In the informal sector	LIM471
2705	Private household	LIM471
536	Do not know	LIM471
0	Unspecified	LIM471
104930	Not applicable	LIM471
21274	In the formal sector	LIM472
6584	In the informal sector	LIM472
4135	Private household	LIM472
885	Do not know	LIM472
0	Unspecified	LIM472
216484	Not applicable	LIM472
13666	In the formal sector	LIM473
4111	In the informal sector	LIM473
1820	Private household	LIM473
417	Do not know	LIM473
0	Unspecified	LIM473
254343	Not applicable	LIM473
6387	In the formal sector	LIM474
2123	In the informal sector	LIM474
757	Private household	LIM474
115	Do not know	LIM474
0	Unspecified	LIM474
84414	Not applicable	LIM474
34222	In the formal sector	LIM475
9626	In the informal sector	LIM475
5136	Private household	LIM475
1265	Do not know	LIM475
0	Unspecified	LIM475
285428	Not applicable	LIM475
19485	In the formal sector	MP301
6508	In the informal sector	MP301
2808	Private household	MP301
974	Do not know	MP301
0	Unspecified	MP301
156235	Not applicable	MP301
29772	In the formal sector	MP302
7010	In the informal sector	MP302
4652	Private household	MP302
1007	Do not know	MP302
0	Unspecified	MP302
106936	Not applicable	MP302
19655	In the formal sector	MP303
7103	In the informal sector	MP303
2548	Private household	MP303
1847	Do not know	MP303
0	Unspecified	MP303
140829	Not applicable	MP303
9774	In the formal sector	MP304
2748	In the informal sector	MP304
1547	Private household	MP304
246	Do not know	MP304
0	Unspecified	MP304
68920	Not applicable	MP304
24755	In the formal sector	MP305
5824	In the informal sector	MP305
3404	Private household	MP305
718	Do not know	MP305
0	Unspecified	MP305
80960	Not applicable	MP305
7793	In the formal sector	MP306
1498	In the informal sector	MP306
1304	Private household	MP306
131	Do not know	MP306
0	Unspecified	MP306
31664	Not applicable	MP306
77284	In the formal sector	MP307
9263	In the informal sector	MP307
11404	Private household	MP307
2759	Do not know	MP307
0	Unspecified	MP307
193829	Not applicable	MP307
15426	In the formal sector	MP311
3113	In the informal sector	MP311
2864	Private household	MP311
966	Do not know	MP311
0	Unspecified	MP311
53082	Not applicable	MP311
108059	In the formal sector	MP312
14817	In the informal sector	MP312
14566	Private household	MP312
2969	Do not know	MP312
0	Unspecified	MP312
255056	Not applicable	MP312
63953	In the formal sector	MP313
10573	In the informal sector	MP313
10343	Private household	MP313
2716	Do not know	MP313
0	Unspecified	MP313
142246	Not applicable	MP313
8243	In the formal sector	MP314
3147	In the informal sector	MP314
2229	Private household	MP314
375	Do not know	MP314
0	Unspecified	MP314
33223	Not applicable	MP314
33895	In the formal sector	MP315
14112	In the informal sector	MP315
12941	Private household	MP315
1599	Do not know	MP315
0	Unspecified	MP315
247910	Not applicable	MP315
20345	In the formal sector	MP316
8194	In the informal sector	MP316
5426	Private household	MP316
583	Do not know	MP316
0	Unspecified	MP316
215158	Not applicable	MP316
24669	In the formal sector	MP321
6063	In the informal sector	MP321
4518	Private household	MP321
1328	Do not know	MP321
0	Unspecified	MP321
61808	Not applicable	MP321
115587	In the formal sector	MP322
26853	In the informal sector	MP322
21241	Private household	MP322
3539	Do not know	MP322
0	Unspecified	MP322
421573	Not applicable	MP322
14229	In the formal sector	MP323
3532	In the informal sector	MP323
3158	Private household	MP323
367	Do not know	MP323
0	Unspecified	MP323
45871	Not applicable	MP323
44160	In the formal sector	MP324
20813	In the informal sector	MP324
7306	Private household	MP324
1802	Do not know	MP324
0	Unspecified	MP324
318949	Not applicable	MP324
41861	In the formal sector	MP325
11953	In the informal sector	MP325
8333	Private household	MP325
572	Do not know	MP325
0	Unspecified	MP325
478528	Not applicable	MP325
19407	In the formal sector	NW371
4897	In the informal sector	NW371
5011	Private household	NW371
721	Do not know	NW371
0	Unspecified	NW371
156912	Not applicable	NW371
104251	In the formal sector	NW372
21437	In the informal sector	NW372
22336	Private household	NW372
3995	Do not know	NW372
0	Unspecified	NW372
325362	Not applicable	NW372
147924	In the formal sector	NW373
22110	In the informal sector	NW373
24023	Private household	NW373
4398	Do not know	NW373
0	Unspecified	NW373
351120	Not applicable	NW373
7575	In the formal sector	NW374
4158	In the informal sector	NW374
3077	Private household	NW374
609	Do not know	NW374
0	Unspecified	NW374
35630	Not applicable	NW374
35811	In the formal sector	NW375
6354	In the informal sector	NW375
4428	Private household	NW375
550	Do not know	NW375
0	Unspecified	NW375
195411	Not applicable	NW375
4875	In the formal sector	NW381
1808	In the informal sector	NW381
2094	Private household	NW381
275	Do not know	NW381
0	Unspecified	NW381
98286	Not applicable	NW381
11898	In the formal sector	NW382
4117	In the informal sector	NW382
4972	Private household	NW382
250	Do not know	NW382
0	Unspecified	NW382
102980	Not applicable	NW382
41518	In the formal sector	NW383
10154	In the informal sector	NW383
7995	Private household	NW383
822	Do not know	NW383
0	Unspecified	NW383
231038	Not applicable	NW383
24195	In the formal sector	NW384
5736	In the informal sector	NW384
7857	Private household	NW384
490	Do not know	NW384
0	Unspecified	NW384
130624	Not applicable	NW384
15205	In the formal sector	NW385
3248	In the informal sector	NW385
4046	Private household	NW385
429	Do not know	NW385
0	Unspecified	NW385
127785	Not applicable	NW385
10710	In the formal sector	NW392
3508	In the informal sector	NW392
4041	Private household	NW392
416	Do not know	NW392
0	Unspecified	NW392
48106	Not applicable	NW392
6327	In the formal sector	NW393
2421	In the informal sector	NW393
2165	Private household	NW393
334	Do not know	NW393
0	Unspecified	NW393
49108	Not applicable	NW393
11236	In the formal sector	NW394
3106	In the informal sector	NW394
2274	Private household	NW394
304	Do not know	NW394
0	Unspecified	NW394
160722	Not applicable	NW394
6637	In the formal sector	NW396
2060	In the informal sector	NW396
2293	Private household	NW396
585	Do not know	NW396
0	Unspecified	NW396
41673	Not applicable	NW396
7037	In the formal sector	NW397
4912	In the informal sector	NW397
2893	Private household	NW397
385	Do not know	NW397
0	Unspecified	NW397
90562	Not applicable	NW397
6578	In the formal sector	NW401
3442	In the informal sector	NW401
1747	Private household	NW401
198	Do not know	NW401
0	Unspecified	NW401
44736	Not applicable	NW401
34455	In the formal sector	NW402
8950	In the informal sector	NW402
8237	Private household	NW402
1292	Do not know	NW402
0	Unspecified	NW402
109827	Not applicable	NW402
80787	In the formal sector	NW403
12016	In the informal sector	NW403
14479	Private household	NW403
1881	Do not know	NW403
0	Unspecified	NW403
289513	Not applicable	NW403
9395	In the formal sector	NW404
3583	In the informal sector	NW404
2298	Private household	NW404
356	Do not know	NW404
0	Unspecified	NW404
62162	Not applicable	NW404
3879	In the formal sector	NC061
613	In the informal sector	NC061
139	Private household	NC061
110	Do not know	NC061
0	Unspecified	NC061
7240	Not applicable	NC061
8681	In the formal sector	NC062
2865	In the informal sector	NC062
919	Private household	NC062
150	Do not know	NC062
0	Unspecified	NC062
34426	Not applicable	NC062
1804	In the formal sector	NC064
300	In the informal sector	NC064
165	Private household	NC064
31	Do not know	NC064
0	Unspecified	NC064
7888	Not applicable	NC064
3842	In the formal sector	NC065
1390	In the informal sector	NC065
1138	Private household	NC065
129	Do not know	NC065
0	Unspecified	NC065
15080	Not applicable	NC065
2586	In the formal sector	NC066
905	In the informal sector	NC066
282	Private household	NC066
54	Do not know	NC066
0	Unspecified	NC066
8762	Not applicable	NC066
3590	In the formal sector	NC067
690	In the informal sector	NC067
320	Private household	NC067
64	Do not know	NC067
0	Unspecified	NC067
7802	Not applicable	NC067
3557	In the formal sector	NC071
973	In the informal sector	NC071
546	Private household	NC071
98	Do not know	NC071
0	Unspecified	NC071
13426	Not applicable	NC071
4222	In the formal sector	NC072
1029	In the informal sector	NC072
868	Private household	NC072
142	Do not know	NC072
0	Unspecified	NC072
22116	Not applicable	NC072
6768	In the formal sector	NC073
1872	In the informal sector	NC073
1277	Private household	NC073
140	Do not know	NC073
0	Unspecified	NC073
32298	Not applicable	NC073
1825	In the formal sector	NC074
611	In the informal sector	NC074
419	Private household	NC074
123	Do not know	NC074
0	Unspecified	NC074
8696	Not applicable	NC074
1624	In the formal sector	NC075
853	In the informal sector	NC075
196	Private household	NC075
20	Do not know	NC075
0	Unspecified	NC075
8285	Not applicable	NC075
2725	In the formal sector	NC076
794	In the informal sector	NC076
282	Private household	NC076
147	Do not know	NC076
0	Unspecified	NC076
11753	Not applicable	NC076
4236	In the formal sector	NC077
571	In the informal sector	NC077
625	Private household	NC077
41	Do not know	NC077
0	Unspecified	NC077
16117	Not applicable	NC077
4774	In the formal sector	NC078
1540	In the informal sector	NC078
1450	Private household	NC078
363	Do not know	NC078
0	Unspecified	NC078
28948	Not applicable	NC078
901	In the formal sector	NC081
316	In the informal sector	NC081
120	Private household	NC081
5	Do not know	NC081
0	Unspecified	NC081
5661	Not applicable	NC081
19914	In the formal sector	NC082
4739	In the informal sector	NC082
2917	Private household	NC082
642	Do not know	NC082
0	Unspecified	NC082
37657	Not applicable	NC082
18171	In the formal sector	NC083
4101	In the informal sector	NC083
2656	Private household	NC083
638	Do not know	NC083
0	Unspecified	NC083
67927	Not applicable	NC083
2929	In the formal sector	NC084
1074	In the informal sector	NC084
163	Private household	NC084
38	Do not know	NC084
0	Unspecified	NC084
12433	Not applicable	NC084
6829	In the formal sector	NC085
2641	In the informal sector	NC085
1149	Private household	NC085
310	Do not know	NC085
0	Unspecified	NC085
24164	Not applicable	NC085
4211	In the formal sector	NC086
567	In the informal sector	NC086
506	Private household	NC086
145	Do not know	NC086
0	Unspecified	NC086
13257	Not applicable	NC086
48658	In the formal sector	NC091
7042	In the informal sector	NC091
7434	Private household	NC091
999	Do not know	NC091
0	Unspecified	NC091
183908	Not applicable	NC091
5309	In the formal sector	NC092
1296	In the informal sector	NC092
1000	Private household	NC092
359	Do not know	NC092
0	Unspecified	NC092
38877	Not applicable	NC092
2863	In the formal sector	NC093
368	In the informal sector	NC093
421	Private household	NC093
83	Do not know	NC093
0	Unspecified	NC093
20469	Not applicable	NC093
8782	In the formal sector	NC094
2023	In the informal sector	NC094
1671	Private household	NC094
373	Do not know	NC094
0	Unspecified	NC094
50150	Not applicable	NC094
5203	In the formal sector	NC451
1343	In the informal sector	NC451
1278	Private household	NC451
202	Do not know	NC451
0	Unspecified	NC451
81504	Not applicable	NC451
15102	In the formal sector	NC452
1740	In the informal sector	NC452
2894	Private household	NC452
496	Do not know	NC452
0	Unspecified	NC452
73419	Not applicable	NC452
12837	In the formal sector	NC453
1608	In the informal sector	NC453
1421	Private household	NC453
343	Do not know	NC453
0	Unspecified	NC453
25408	Not applicable	NC453
19940	In the formal sector	WC011
3075	In the informal sector	WC011
1150	Private household	WC011
159	Do not know	WC011
0	Unspecified	WC011
42822	Not applicable	WC011
15673	In the formal sector	WC012
1873	In the informal sector	WC012
823	Private household	WC012
515	Do not know	WC012
0	Unspecified	WC012
30883	Not applicable	WC012
19990	In the formal sector	WC013
2021	In the informal sector	WC013
1683	Private household	WC013
442	Do not know	WC013
0	Unspecified	WC013
37761	Not applicable	WC013
28290	In the formal sector	WC014
3167	In the informal sector	WC014
2477	Private household	WC014
992	Do not know	WC014
0	Unspecified	WC014
64267	Not applicable	WC014
34115	In the formal sector	WC015
3623	In the informal sector	WC015
2904	Private household	WC015
754	Do not know	WC015
0	Unspecified	WC015
72367	Not applicable	WC015
43943	In the formal sector	WC022
6069	In the informal sector	WC022
2054	Private household	WC022
591	Do not know	WC022
0	Unspecified	WC022
63289	Not applicable	WC022
70494	In the formal sector	WC023
10886	In the informal sector	WC023
5919	Private household	WC023
1516	Do not know	WC023
0	Unspecified	WC023
162446	Not applicable	WC023
43022	In the formal sector	WC024
8527	In the informal sector	WC024
5327	Private household	WC024
1344	Do not know	WC024
0	Unspecified	WC024
97513	Not applicable	WC024
45042	In the formal sector	WC025
10246	In the informal sector	WC025
3048	Private household	WC025
1174	Do not know	WC025
0	Unspecified	WC025
107316	Not applicable	WC025
21424	In the formal sector	WC026
11426	In the informal sector	WC026
2014	Private household	WC026
597	Do not know	WC026
0	Unspecified	WC026
62264	Not applicable	WC026
9808	In the formal sector	WC034
1805	In the informal sector	WC034
955	Private household	WC034
404	Do not know	WC034
0	Unspecified	WC034
22944	Not applicable	WC034
31357	In the formal sector	WC031
7332	In the informal sector	WC031
1438	Private household	WC031
1062	Do not know	WC031
0	Unspecified	WC031
67601	Not applicable	WC031
19339	In the formal sector	WC032
4588	In the informal sector	WC032
3715	Private household	WC032
832	Do not know	WC032
0	Unspecified	WC032
51957	Not applicable	WC032
10241	In the formal sector	WC033
1345	In the informal sector	WC033
920	Private household	WC033
411	Do not know	WC033
0	Unspecified	WC033
20121	Not applicable	WC033
3841	In the formal sector	WC041
1891	In the informal sector	WC041
394	Private household	WC041
260	Do not know	WC041
0	Unspecified	WC041
18381	Not applicable	WC041
10695	In the formal sector	WC042
3879	In the informal sector	WC042
1887	Private household	WC042
1136	Do not know	WC042
0	Unspecified	WC042
35045	Not applicable	WC042
20289	In the formal sector	WC043
4115	In the informal sector	WC043
2385	Private household	WC043
1170	Do not know	WC043
0	Unspecified	WC043
61471	Not applicable	WC043
48953	In the formal sector	WC044
8178	In the informal sector	WC044
5578	Private household	WC044
1757	Do not know	WC044
0	Unspecified	WC044
129206	Not applicable	WC044
18208	In the formal sector	WC045
3181	In the informal sector	WC045
2019	Private household	WC045
389	Do not know	WC045
0	Unspecified	WC045
72136	Not applicable	WC045
11646	In the formal sector	WC047
2022	In the informal sector	WC047
2980	Private household	WC047
377	Do not know	WC047
0	Unspecified	WC047
32137	Not applicable	WC047
15961	In the formal sector	WC048
2453	In the informal sector	WC048
3600	Private household	WC048
526	Do not know	WC048
0	Unspecified	WC048
46120	Not applicable	WC048
2602	In the formal sector	WC051
212	In the informal sector	WC051
137	Private household	WC051
59	Do not know	WC051
0	Unspecified	WC051
5278	Not applicable	WC051
2741	In the formal sector	WC052
534	In the informal sector	WC052
326	Private household	WC052
74	Do not know	WC052
0	Unspecified	WC052
9460	Not applicable	WC052
8296	In the formal sector	WC053
1858	In the informal sector	WC053
875	Private household	WC053
304	Do not know	WC053
0	Unspecified	WC053
38254	Not applicable	WC053
1047444	In the formal sector	CPT
124338	In the informal sector	CPT
119887	Private household	CPT
29410	Do not know	CPT
0	Unspecified	CPT
2418948	Not applicable	CPT
\.


--
-- Data for Name: typeofsector_province; Type: TABLE DATA; Schema: public; Owner: census
--

COPY typeofsector_province (total, "type of sector", province_code) FROM stdin;
753831	In the formal sector	EC
151884	In the informal sector	EC
124333	Private household	EC
23976	Do not know	EC
0	Unspecified	EC
5508029	Not applicable	EC
455366	In the formal sector	FS
93651	In the informal sector	FS
96971	Private household	FS
16171	Do not know	FS
0	Unspecified	FS
2083430	Not applicable	FS
3493322	In the formal sector	GT
406295	In the informal sector	GT
552709	Private household	GT
107458	Do not know	GT
0	Unspecified	GT
7712479	Not applicable	GT
1583687	In the formal sector	KZN
262032	In the informal sector	KZN
184527	Private household	KZN
56548	Do not know	KZN
0	Unspecified	KZN
8180506	Not applicable	KZN
596283	In the formal sector	LIM
163392	In the informal sector	LIM
122696	Private household	LIM
19003	Do not know	LIM
0	Unspecified	LIM
4503493	Not applicable	LIM
678945	In the formal sector	MP
163124	In the informal sector	MP
120594	Private household	MP
24499	Do not know	MP
0	Unspecified	MP
3052778	Not applicable	MP
585824	In the formal sector	NW
128017	In the informal sector	NW
126264	Private household	NW
18290	Do not know	NW
0	Unspecified	NW
2651558	Not applicable	NW
205824	In the formal sector	NC
43863	In the informal sector	NC
32255	Private household	NC
6244	Do not know	NC
0	Unspecified	NC
857674	Not applicable	NC
1603353	In the formal sector	WC
228643	In the informal sector	WC
174495	Private household	WC
46256	Do not know	WC
0	Unspecified	WC
3769988	Not applicable	WC
\.


--
-- Data for Name: typeofsector_ward; Type: TABLE DATA; Schema: public; Owner: census
--

COPY typeofsector_ward (total, "type of sector", ward_code) FROM stdin;
1257	In the formal sector	21001001
289	In the informal sector	21001001
229	Private household	21001001
85	Do not know	21001001
0	Unspecified	21001001
6885	Not applicable	21001001
1613	In the formal sector	21001002
300	In the informal sector	21001002
170	Private household	21001002
54	Do not know	21001002
0	Unspecified	21001002
5122	Not applicable	21001002
926	In the formal sector	21001003
121	In the informal sector	21001003
145	Private household	21001003
3	Do not know	21001003
0	Unspecified	21001003
4724	Not applicable	21001003
1721	In the formal sector	21001004
226	In the informal sector	21001004
152	Private household	21001004
79	Do not know	21001004
0	Unspecified	21001004
8104	Not applicable	21001004
995	In the formal sector	21001005
231	In the informal sector	21001005
188	Private household	21001005
33	Do not know	21001005
0	Unspecified	21001005
4572	Not applicable	21001005
917	In the formal sector	21001006
91	In the informal sector	21001006
122	Private household	21001006
32	Do not know	21001006
0	Unspecified	21001006
5297	Not applicable	21001006
1085	In the formal sector	21001007
1223	In the informal sector	21001007
297	Private household	21001007
51	Do not know	21001007
0	Unspecified	21001007
3658	Not applicable	21001007
602	In the formal sector	21002001
426	In the informal sector	21002001
225	Private household	21002001
41	Do not know	21002001
0	Unspecified	21002001
3454	Not applicable	21002001
1024	In the formal sector	21002002
163	In the informal sector	21002002
123	Private household	21002002
30	Do not know	21002002
0	Unspecified	21002002
5407	Not applicable	21002002
624	In the formal sector	21002003
122	In the informal sector	21002003
212	Private household	21002003
75	Do not know	21002003
0	Unspecified	21002003
5946	Not applicable	21002003
708	In the formal sector	21002004
253	In the informal sector	21002004
263	Private household	21002004
36	Do not know	21002004
0	Unspecified	21002004
4673	Not applicable	21002004
820	In the formal sector	21002005
40	In the informal sector	21002005
36	Private household	21002005
16	Do not know	21002005
0	Unspecified	21002005
4533	Not applicable	21002005
811	In the formal sector	21002006
521	In the informal sector	21002006
395	Private household	21002006
54	Do not know	21002006
0	Unspecified	21002006
4367	Not applicable	21002006
482	In the formal sector	21003001
208	In the informal sector	21003001
111	Private household	21003001
14	Do not know	21003001
0	Unspecified	21003001
1654	Not applicable	21003001
503	In the formal sector	21003002
146	In the informal sector	21003002
222	Private household	21003002
7	Do not know	21003002
0	Unspecified	21003002
3166	Not applicable	21003002
216	In the formal sector	21003003
57	In the informal sector	21003003
29	Private household	21003003
2	Do not know	21003003
0	Unspecified	21003003
1262	Not applicable	21003003
367	In the formal sector	21003004
263	In the informal sector	21003004
135	Private household	21003004
3	Do not know	21003004
0	Unspecified	21003004
1692	Not applicable	21003004
714	In the formal sector	21004001
250	In the informal sector	21004001
174	Private household	21004001
14	Do not know	21004001
0	Unspecified	21004001
1803	Not applicable	21004001
978	In the formal sector	21004002
95	In the informal sector	21004002
290	Private household	21004002
44	Do not know	21004002
0	Unspecified	21004002
5689	Not applicable	21004002
1186	In the formal sector	21004003
344	In the informal sector	21004003
160	Private household	21004003
26	Do not know	21004003
0	Unspecified	21004003
4750	Not applicable	21004003
2176	In the formal sector	21004004
268	In the informal sector	21004004
376	Private household	21004004
69	Do not know	21004004
0	Unspecified	21004004
5579	Not applicable	21004004
1170	In the formal sector	21004005
176	In the informal sector	21004005
246	Private household	21004005
41	Do not know	21004005
0	Unspecified	21004005
6686	Not applicable	21004005
707	In the formal sector	21004006
119	In the informal sector	21004006
124	Private household	21004006
5	Do not know	21004006
0	Unspecified	21004006
3753	Not applicable	21004006
417	In the formal sector	21004007
144	In the informal sector	21004007
106	Private household	21004007
33	Do not know	21004007
0	Unspecified	21004007
2238	Not applicable	21004007
1026	In the formal sector	21004008
130	In the informal sector	21004008
94	Private household	21004008
35	Do not know	21004008
0	Unspecified	21004008
3301	Not applicable	21004008
652	In the formal sector	21004009
252	In the informal sector	21004009
107	Private household	21004009
23	Do not know	21004009
0	Unspecified	21004009
3977	Not applicable	21004009
887	In the formal sector	21004010
235	In the informal sector	21004010
215	Private household	21004010
114	Do not know	21004010
0	Unspecified	21004010
5301	Not applicable	21004010
865	In the formal sector	21004011
244	In the informal sector	21004011
211	Private household	21004011
26	Do not know	21004011
0	Unspecified	21004011
5569	Not applicable	21004011
116	In the formal sector	21004012
1	In the informal sector	21004012
4	Private household	21004012
3	Do not know	21004012
0	Unspecified	21004012
2804	Not applicable	21004012
1011	In the formal sector	21004013
612	In the informal sector	21004013
384	Private household	21004013
13	Do not know	21004013
0	Unspecified	21004013
4474	Not applicable	21004013
1072	In the formal sector	21004014
284	In the informal sector	21004014
609	Private household	21004014
31	Do not know	21004014
0	Unspecified	21004014
4756	Not applicable	21004014
429	In the formal sector	21005001
115	In the informal sector	21005001
107	Private household	21005001
22	Do not know	21005001
0	Unspecified	21005001
5040	Not applicable	21005001
860	In the formal sector	21005002
249	In the informal sector	21005002
380	Private household	21005002
62	Do not know	21005002
0	Unspecified	21005002
5397	Not applicable	21005002
956	In the formal sector	21005003
213	In the informal sector	21005003
355	Private household	21005003
20	Do not know	21005003
0	Unspecified	21005003
4945	Not applicable	21005003
1200	In the formal sector	21005004
139	In the informal sector	21005004
236	Private household	21005004
10	Do not know	21005004
0	Unspecified	21005004
3609	Not applicable	21005004
783	In the formal sector	21005005
310	In the informal sector	21005005
213	Private household	21005005
48	Do not know	21005005
0	Unspecified	21005005
4964	Not applicable	21005005
2118	In the formal sector	21005006
555	In the informal sector	21005006
662	Private household	21005006
102	Do not know	21005006
0	Unspecified	21005006
5554	Not applicable	21005006
713	In the formal sector	21005007
128	In the informal sector	21005007
188	Private household	21005007
135	Do not know	21005007
0	Unspecified	21005007
4230	Not applicable	21005007
916	In the formal sector	21005008
111	In the informal sector	21005008
121	Private household	21005008
31	Do not know	21005008
0	Unspecified	21005008
3154	Not applicable	21005008
945	In the formal sector	21005009
342	In the informal sector	21005009
207	Private household	21005009
107	Do not know	21005009
0	Unspecified	21005009
4785	Not applicable	21005009
1348	In the formal sector	21005010
150	In the informal sector	21005010
220	Private household	21005010
44	Do not know	21005010
0	Unspecified	21005010
3653	Not applicable	21005010
905	In the formal sector	21006001
197	In the informal sector	21006001
141	Private household	21006001
13	Do not know	21006001
0	Unspecified	21006001
4753	Not applicable	21006001
1280	In the formal sector	21006002
271	In the informal sector	21006002
169	Private household	21006002
85	Do not know	21006002
0	Unspecified	21006002
5500	Not applicable	21006002
1539	In the formal sector	21006003
487	In the informal sector	21006003
357	Private household	21006003
51	Do not know	21006003
0	Unspecified	21006003
5309	Not applicable	21006003
908	In the formal sector	21006004
108	In the informal sector	21006004
199	Private household	21006004
21	Do not know	21006004
0	Unspecified	21006004
3596	Not applicable	21006004
1054	In the formal sector	21006005
151	In the informal sector	21006005
53	Private household	21006005
161	Do not know	21006005
0	Unspecified	21006005
3884	Not applicable	21006005
1538	In the formal sector	21006006
280	In the informal sector	21006006
205	Private household	21006006
95	Do not know	21006006
0	Unspecified	21006006
3621	Not applicable	21006006
2202	In the formal sector	21006007
382	In the informal sector	21006007
276	Private household	21006007
80	Do not know	21006007
0	Unspecified	21006007
5306	Not applicable	21006007
2451	In the formal sector	21006008
367	In the informal sector	21006008
322	Private household	21006008
47	Do not know	21006008
0	Unspecified	21006008
6140	Not applicable	21006008
499	In the formal sector	21007001
102	In the informal sector	21007001
57	Private household	21007001
11	Do not know	21007001
0	Unspecified	21007001
1652	Not applicable	21007001
592	In the formal sector	21007002
218	In the informal sector	21007002
300	Private household	21007002
8	Do not know	21007002
0	Unspecified	21007002
3610	Not applicable	21007002
840	In the formal sector	21007003
165	In the informal sector	21007003
436	Private household	21007003
54	Do not know	21007003
0	Unspecified	21007003
6196	Not applicable	21007003
485	In the formal sector	21007004
321	In the informal sector	21007004
84	Private household	21007004
22	Do not know	21007004
0	Unspecified	21007004
2110	Not applicable	21007004
424	In the formal sector	21008001
417	In the informal sector	21008001
79	Private household	21008001
36	Do not know	21008001
0	Unspecified	21008001
1171	Not applicable	21008001
859	In the formal sector	21008002
111	In the informal sector	21008002
18	Private household	21008002
17	Do not know	21008002
0	Unspecified	21008002
2131	Not applicable	21008002
230	In the formal sector	21008003
25	In the informal sector	21008003
14	Private household	21008003
3	Do not know	21008003
0	Unspecified	21008003
524	Not applicable	21008003
2679	In the formal sector	21008004
504	In the informal sector	21008004
279	Private household	21008004
40	Do not know	21008004
0	Unspecified	21008004
10910	Not applicable	21008004
585	In the formal sector	21008005
99	In the informal sector	21008005
82	Private household	21008005
18	Do not know	21008005
0	Unspecified	21008005
2476	Not applicable	21008005
1280	In the formal sector	21008006
129	In the informal sector	21008006
253	Private household	21008006
14	Do not know	21008006
0	Unspecified	21008006
4269	Not applicable	21008006
1591	In the formal sector	21008007
1165	In the informal sector	21008007
427	Private household	21008007
24	Do not know	21008007
0	Unspecified	21008007
6209	Not applicable	21008007
2065	In the formal sector	21008008
251	In the informal sector	21008008
412	Private household	21008008
79	Do not know	21008008
0	Unspecified	21008008
5413	Not applicable	21008008
1164	In the formal sector	21008009
855	In the informal sector	21008009
151	Private household	21008009
27	Do not know	21008009
0	Unspecified	21008009
7711	Not applicable	21008009
933	In the formal sector	21008010
1202	In the informal sector	21008010
114	Private household	21008010
50	Do not know	21008010
0	Unspecified	21008010
4633	Not applicable	21008010
791	In the formal sector	21008011
115	In the informal sector	21008011
65	Private household	21008011
21	Do not know	21008011
0	Unspecified	21008011
1892	Not applicable	21008011
1684	In the formal sector	21008012
172	In the informal sector	21008012
405	Private household	21008012
78	Do not know	21008012
0	Unspecified	21008012
3794	Not applicable	21008012
1557	In the formal sector	21008013
661	In the informal sector	21008013
116	Private household	21008013
38	Do not know	21008013
0	Unspecified	21008013
4113	Not applicable	21008013
1486	In the formal sector	21008014
361	In the informal sector	21008014
587	Private household	21008014
53	Do not know	21008014
0	Unspecified	21008014
4517	Not applicable	21008014
2830	In the formal sector	21008015
401	In the informal sector	21008015
564	Private household	21008015
195	Do not know	21008015
0	Unspecified	21008015
7909	Not applicable	21008015
3360	In the formal sector	21009001
1446	In the informal sector	21009001
95	Private household	21009001
6	Do not know	21009001
0	Unspecified	21009001
5749	Not applicable	21009001
1804	In the formal sector	21009002
290	In the informal sector	21009002
236	Private household	21009002
13	Do not know	21009002
0	Unspecified	21009002
3508	Not applicable	21009002
874	In the formal sector	21009003
564	In the informal sector	21009003
87	Private household	21009003
46	Do not know	21009003
0	Unspecified	21009003
3925	Not applicable	21009003
1556	In the formal sector	21009004
298	In the informal sector	21009004
203	Private household	21009004
92	Do not know	21009004
0	Unspecified	21009004
4177	Not applicable	21009004
1550	In the formal sector	21009005
315	In the informal sector	21009005
292	Private household	21009005
97	Do not know	21009005
0	Unspecified	21009005
4649	Not applicable	21009005
1304	In the formal sector	21009006
250	In the informal sector	21009006
300	Private household	21009006
38	Do not know	21009006
0	Unspecified	21009006
3542	Not applicable	21009006
999	In the formal sector	21201001
249	In the informal sector	21201001
125	Private household	21201001
4	Do not know	21201001
0	Unspecified	21201001
5697	Not applicable	21201001
761	In the formal sector	21201002
202	In the informal sector	21201002
106	Private household	21201002
21	Do not know	21201002
0	Unspecified	21201002
7306	Not applicable	21201002
356	In the formal sector	21201003
115	In the informal sector	21201003
41	Private household	21201003
7	Do not know	21201003
0	Unspecified	21201003
6474	Not applicable	21201003
260	In the formal sector	21201004
200	In the informal sector	21201004
36	Private household	21201004
13	Do not know	21201004
0	Unspecified	21201004
6470	Not applicable	21201004
441	In the formal sector	21201005
80	In the informal sector	21201005
143	Private household	21201005
5	Do not know	21201005
0	Unspecified	21201005
8532	Not applicable	21201005
284	In the formal sector	21201006
58	In the informal sector	21201006
51	Private household	21201006
11	Do not know	21201006
0	Unspecified	21201006
7498	Not applicable	21201006
221	In the formal sector	21201007
41	In the informal sector	21201007
37	Private household	21201007
10	Do not know	21201007
0	Unspecified	21201007
6563	Not applicable	21201007
343	In the formal sector	21201008
71	In the informal sector	21201008
40	Private household	21201008
1	Do not know	21201008
0	Unspecified	21201008
7505	Not applicable	21201008
1646	In the formal sector	21201009
703	In the informal sector	21201009
186	Private household	21201009
39	Do not know	21201009
0	Unspecified	21201009
8940	Not applicable	21201009
372	In the formal sector	21201010
113	In the informal sector	21201010
72	Private household	21201010
4	Do not know	21201010
0	Unspecified	21201010
7408	Not applicable	21201010
152	In the formal sector	21201011
44	In the informal sector	21201011
37	Private household	21201011
5	Do not know	21201011
0	Unspecified	21201011
7337	Not applicable	21201011
219	In the formal sector	21201012
35	In the informal sector	21201012
11	Private household	21201012
0	Do not know	21201012
0	Unspecified	21201012
7840	Not applicable	21201012
753	In the formal sector	21201013
406	In the informal sector	21201013
119	Private household	21201013
4	Do not know	21201013
0	Unspecified	21201013
5826	Not applicable	21201013
253	In the formal sector	21201014
37	In the informal sector	21201014
14	Private household	21201014
4	Do not know	21201014
0	Unspecified	21201014
7109	Not applicable	21201014
375	In the formal sector	21201015
140	In the informal sector	21201015
49	Private household	21201015
7	Do not know	21201015
0	Unspecified	21201015
10953	Not applicable	21201015
373	In the formal sector	21201016
61	In the informal sector	21201016
45	Private household	21201016
6	Do not know	21201016
0	Unspecified	21201016
9887	Not applicable	21201016
148	In the formal sector	21201017
56	In the informal sector	21201017
41	Private household	21201017
0	Do not know	21201017
0	Unspecified	21201017
8692	Not applicable	21201017
123	In the formal sector	21201018
33	In the informal sector	21201018
19	Private household	21201018
1	Do not know	21201018
0	Unspecified	21201018
6273	Not applicable	21201018
448	In the formal sector	21201019
66	In the informal sector	21201019
36	Private household	21201019
9	Do not know	21201019
0	Unspecified	21201019
11956	Not applicable	21201019
284	In the formal sector	21201020
121	In the informal sector	21201020
50	Private household	21201020
4	Do not know	21201020
0	Unspecified	21201020
8530	Not applicable	21201020
242	In the formal sector	21201021
14	In the informal sector	21201021
45	Private household	21201021
6	Do not know	21201021
0	Unspecified	21201021
6365	Not applicable	21201021
236	In the formal sector	21201022
67	In the informal sector	21201022
39	Private household	21201022
6	Do not know	21201022
0	Unspecified	21201022
7440	Not applicable	21201022
349	In the formal sector	21201023
60	In the informal sector	21201023
93	Private household	21201023
7	Do not know	21201023
0	Unspecified	21201023
8187	Not applicable	21201023
311	In the formal sector	21201024
54	In the informal sector	21201024
55	Private household	21201024
13	Do not know	21201024
0	Unspecified	21201024
6516	Not applicable	21201024
764	In the formal sector	21201025
179	In the informal sector	21201025
224	Private household	21201025
9	Do not know	21201025
0	Unspecified	21201025
6572	Not applicable	21201025
226	In the formal sector	21201026
90	In the informal sector	21201026
30	Private household	21201026
2	Do not know	21201026
0	Unspecified	21201026
8987	Not applicable	21201026
277	In the formal sector	21201027
93	In the informal sector	21201027
44	Private household	21201027
4	Do not know	21201027
0	Unspecified	21201027
5798	Not applicable	21201027
406	In the formal sector	21201028
134	In the informal sector	21201028
70	Private household	21201028
8	Do not know	21201028
0	Unspecified	21201028
8757	Not applicable	21201028
264	In the formal sector	21201029
65	In the informal sector	21201029
33	Private household	21201029
15	Do not know	21201029
0	Unspecified	21201029
6074	Not applicable	21201029
334	In the formal sector	21201030
115	In the informal sector	21201030
76	Private household	21201030
5	Do not know	21201030
0	Unspecified	21201030
7957	Not applicable	21201030
156	In the formal sector	21201031
35	In the informal sector	21201031
27	Private household	21201031
1	Do not know	21201031
0	Unspecified	21201031
7125	Not applicable	21201031
1594	In the formal sector	21202001
345	In the informal sector	21202001
290	Private household	21202001
2	Do not know	21202001
0	Unspecified	21202001
3932	Not applicable	21202001
1294	In the formal sector	21202002
536	In the informal sector	21202002
255	Private household	21202002
15	Do not know	21202002
0	Unspecified	21202002
5828	Not applicable	21202002
1450	In the formal sector	21202003
236	In the informal sector	21202003
130	Private household	21202003
3	Do not know	21202003
0	Unspecified	21202003
5786	Not applicable	21202003
1848	In the formal sector	21202004
271	In the informal sector	21202004
185	Private household	21202004
15	Do not know	21202004
0	Unspecified	21202004
5923	Not applicable	21202004
1471	In the formal sector	21202005
347	In the informal sector	21202005
188	Private household	21202005
24	Do not know	21202005
0	Unspecified	21202005
7551	Not applicable	21202005
416	In the formal sector	21202006
100	In the informal sector	21202006
66	Private household	21202006
7	Do not know	21202006
0	Unspecified	21202006
5574	Not applicable	21202006
656	In the formal sector	21202007
163	In the informal sector	21202007
114	Private household	21202007
7	Do not know	21202007
0	Unspecified	21202007
7872	Not applicable	21202007
351	In the formal sector	21202008
138	In the informal sector	21202008
83	Private household	21202008
6	Do not know	21202008
0	Unspecified	21202008
6603	Not applicable	21202008
552	In the formal sector	21202009
126	In the informal sector	21202009
135	Private household	21202009
9	Do not know	21202009
0	Unspecified	21202009
7137	Not applicable	21202009
195	In the formal sector	21202010
68	In the informal sector	21202010
52	Private household	21202010
9	Do not know	21202010
0	Unspecified	21202010
6145	Not applicable	21202010
232	In the formal sector	21202011
92	In the informal sector	21202011
56	Private household	21202011
9	Do not know	21202011
0	Unspecified	21202011
7527	Not applicable	21202011
357	In the formal sector	21202012
151	In the informal sector	21202012
100	Private household	21202012
8	Do not know	21202012
0	Unspecified	21202012
6842	Not applicable	21202012
391	In the formal sector	21202013
118	In the informal sector	21202013
70	Private household	21202013
7	Do not know	21202013
0	Unspecified	21202013
6570	Not applicable	21202013
251	In the formal sector	21202014
97	In the informal sector	21202014
69	Private household	21202014
6	Do not know	21202014
0	Unspecified	21202014
7015	Not applicable	21202014
168	In the formal sector	21202015
39	In the informal sector	21202015
50	Private household	21202015
5	Do not know	21202015
0	Unspecified	21202015
5858	Not applicable	21202015
442	In the formal sector	21202016
227	In the informal sector	21202016
81	Private household	21202016
1	Do not know	21202016
0	Unspecified	21202016
6689	Not applicable	21202016
511	In the formal sector	21202017
95	In the informal sector	21202017
68	Private household	21202017
18	Do not know	21202017
0	Unspecified	21202017
7283	Not applicable	21202017
636	In the formal sector	21202018
156	In the informal sector	21202018
98	Private household	21202018
6	Do not know	21202018
0	Unspecified	21202018
7707	Not applicable	21202018
264	In the formal sector	21202019
84	In the informal sector	21202019
51	Private household	21202019
1	Do not know	21202019
0	Unspecified	21202019
7122	Not applicable	21202019
294	In the formal sector	21202020
57	In the informal sector	21202020
63	Private household	21202020
6	Do not know	21202020
0	Unspecified	21202020
6983	Not applicable	21202020
406	In the formal sector	21202021
95	In the informal sector	21202021
155	Private household	21202021
14	Do not know	21202021
0	Unspecified	21202021
7067	Not applicable	21202021
328	In the formal sector	21202022
148	In the informal sector	21202022
76	Private household	21202022
14	Do not know	21202022
0	Unspecified	21202022
9129	Not applicable	21202022
217	In the formal sector	21202023
99	In the informal sector	21202023
89	Private household	21202023
10	Do not know	21202023
0	Unspecified	21202023
7079	Not applicable	21202023
282	In the formal sector	21202024
120	In the informal sector	21202024
72	Private household	21202024
5	Do not know	21202024
0	Unspecified	21202024
9721	Not applicable	21202024
418	In the formal sector	21202025
74	In the informal sector	21202025
71	Private household	21202025
8	Do not know	21202025
0	Unspecified	21202025
11041	Not applicable	21202025
306	In the formal sector	21202026
93	In the informal sector	21202026
36	Private household	21202026
12	Do not know	21202026
0	Unspecified	21202026
10043	Not applicable	21202026
187	In the formal sector	21202027
59	In the informal sector	21202027
74	Private household	21202027
13	Do not know	21202027
0	Unspecified	21202027
9128	Not applicable	21202027
196	In the formal sector	21202028
33	In the informal sector	21202028
56	Private household	21202028
24	Do not know	21202028
0	Unspecified	21202028
8472	Not applicable	21202028
299	In the formal sector	21202029
90	In the informal sector	21202029
57	Private household	21202029
6	Do not know	21202029
0	Unspecified	21202029
8441	Not applicable	21202029
495	In the formal sector	21202030
122	In the informal sector	21202030
58	Private household	21202030
24	Do not know	21202030
0	Unspecified	21202030
6846	Not applicable	21202030
301	In the formal sector	21202031
94	In the informal sector	21202031
20	Private household	21202031
4	Do not know	21202031
0	Unspecified	21202031
8929	Not applicable	21202031
986	In the formal sector	21203001
514	In the informal sector	21203001
281	Private household	21203001
81	Do not know	21203001
0	Unspecified	21203001
4811	Not applicable	21203001
214	In the formal sector	21203002
58	In the informal sector	21203002
109	Private household	21203002
28	Do not know	21203002
0	Unspecified	21203002
3927	Not applicable	21203002
282	In the formal sector	21203003
85	In the informal sector	21203003
115	Private household	21203003
45	Do not know	21203003
0	Unspecified	21203003
5115	Not applicable	21203003
281	In the formal sector	21203004
38	In the informal sector	21203004
139	Private household	21203004
25	Do not know	21203004
0	Unspecified	21203004
5477	Not applicable	21203004
529	In the formal sector	21203005
224	In the informal sector	21203005
318	Private household	21203005
15	Do not know	21203005
0	Unspecified	21203005
4260	Not applicable	21203005
774	In the formal sector	21203006
125	In the informal sector	21203006
352	Private household	21203006
147	Do not know	21203006
0	Unspecified	21203006
4317	Not applicable	21203006
875	In the formal sector	21203007
130	In the informal sector	21203007
179	Private household	21203007
12	Do not know	21203007
0	Unspecified	21203007
4124	Not applicable	21203007
297	In the formal sector	21204001
237	In the informal sector	21204001
89	Private household	21204001
5	Do not know	21204001
0	Unspecified	21204001
4855	Not applicable	21204001
729	In the formal sector	21204002
702	In the informal sector	21204002
187	Private household	21204002
28	Do not know	21204002
0	Unspecified	21204002
5670	Not applicable	21204002
337	In the formal sector	21204003
320	In the informal sector	21204003
93	Private household	21204003
3	Do not know	21204003
0	Unspecified	21204003
5259	Not applicable	21204003
1291	In the formal sector	21204004
229	In the informal sector	21204004
95	Private household	21204004
45	Do not know	21204004
0	Unspecified	21204004
4944	Not applicable	21204004
603	In the formal sector	21204005
136	In the informal sector	21204005
266	Private household	21204005
12	Do not know	21204005
0	Unspecified	21204005
5905	Not applicable	21204005
1184	In the formal sector	21204006
304	In the informal sector	21204006
266	Private household	21204006
21	Do not know	21204006
0	Unspecified	21204006
5768	Not applicable	21204006
268	In the formal sector	21204007
120	In the informal sector	21204007
73	Private household	21204007
30	Do not know	21204007
0	Unspecified	21204007
5103	Not applicable	21204007
293	In the formal sector	21204008
92	In the informal sector	21204008
104	Private household	21204008
18	Do not know	21204008
0	Unspecified	21204008
5849	Not applicable	21204008
369	In the formal sector	21204009
231	In the informal sector	21204009
149	Private household	21204009
20	Do not know	21204009
0	Unspecified	21204009
4357	Not applicable	21204009
422	In the formal sector	21204010
103	In the informal sector	21204010
92	Private household	21204010
7	Do not know	21204010
0	Unspecified	21204010
4436	Not applicable	21204010
195	In the formal sector	21204011
87	In the informal sector	21204011
32	Private household	21204011
3	Do not know	21204011
0	Unspecified	21204011
4815	Not applicable	21204011
261	In the formal sector	21204012
120	In the informal sector	21204012
28	Private household	21204012
13	Do not know	21204012
0	Unspecified	21204012
7087	Not applicable	21204012
269	In the formal sector	21204013
69	In the informal sector	21204013
21	Private household	21204013
7	Do not know	21204013
0	Unspecified	21204013
4707	Not applicable	21204013
475	In the formal sector	21204014
238	In the informal sector	21204014
125	Private household	21204014
15	Do not know	21204014
0	Unspecified	21204014
6234	Not applicable	21204014
562	In the formal sector	21204015
240	In the informal sector	21204015
116	Private household	21204015
1	Do not know	21204015
0	Unspecified	21204015
4747	Not applicable	21204015
894	In the formal sector	21204016
203	In the informal sector	21204016
163	Private household	21204016
6	Do not know	21204016
0	Unspecified	21204016
6277	Not applicable	21204016
1316	In the formal sector	21204017
210	In the informal sector	21204017
216	Private household	21204017
49	Do not know	21204017
0	Unspecified	21204017
3344	Not applicable	21204017
402	In the formal sector	21204018
138	In the informal sector	21204018
186	Private household	21204018
19	Do not know	21204018
0	Unspecified	21204018
4819	Not applicable	21204018
259	In the formal sector	21204019
83	In the informal sector	21204019
97	Private household	21204019
5	Do not know	21204019
0	Unspecified	21204019
5204	Not applicable	21204019
514	In the formal sector	21204020
197	In the informal sector	21204020
76	Private household	21204020
8	Do not know	21204020
0	Unspecified	21204020
5607	Not applicable	21204020
230	In the formal sector	21206001
110	In the informal sector	21206001
21	Private household	21206001
14	Do not know	21206001
0	Unspecified	21206001
5180	Not applicable	21206001
330	In the formal sector	21206002
90	In the informal sector	21206002
45	Private household	21206002
29	Do not know	21206002
0	Unspecified	21206002
5469	Not applicable	21206002
246	In the formal sector	21206003
70	In the informal sector	21206003
32	Private household	21206003
6	Do not know	21206003
0	Unspecified	21206003
5476	Not applicable	21206003
253	In the formal sector	21206004
71	In the informal sector	21206004
35	Private household	21206004
18	Do not know	21206004
0	Unspecified	21206004
5182	Not applicable	21206004
306	In the formal sector	21206005
142	In the informal sector	21206005
73	Private household	21206005
3	Do not know	21206005
0	Unspecified	21206005
5540	Not applicable	21206005
301	In the formal sector	21206006
59	In the informal sector	21206006
55	Private household	21206006
12	Do not know	21206006
0	Unspecified	21206006
4916	Not applicable	21206006
423	In the formal sector	21206007
84	In the informal sector	21206007
76	Private household	21206007
11	Do not know	21206007
0	Unspecified	21206007
5456	Not applicable	21206007
342	In the formal sector	21206008
90	In the informal sector	21206008
76	Private household	21206008
28	Do not know	21206008
0	Unspecified	21206008
4853	Not applicable	21206008
292	In the formal sector	21206009
74	In the informal sector	21206009
80	Private household	21206009
29	Do not know	21206009
0	Unspecified	21206009
4422	Not applicable	21206009
615	In the formal sector	21206010
158	In the informal sector	21206010
113	Private household	21206010
3	Do not know	21206010
0	Unspecified	21206010
4122	Not applicable	21206010
501	In the formal sector	21206011
173	In the informal sector	21206011
137	Private household	21206011
57	Do not know	21206011
0	Unspecified	21206011
5096	Not applicable	21206011
222	In the formal sector	21206012
76	In the informal sector	21206012
43	Private household	21206012
14	Do not know	21206012
0	Unspecified	21206012
4428	Not applicable	21206012
242	In the formal sector	21206013
33	In the informal sector	21206013
42	Private household	21206013
3	Do not know	21206013
0	Unspecified	21206013
5456	Not applicable	21206013
199	In the formal sector	21207001
29	In the informal sector	21207001
26	Private household	21207001
8	Do not know	21207001
0	Unspecified	21207001
4559	Not applicable	21207001
370	In the formal sector	21207002
87	In the informal sector	21207002
64	Private household	21207002
1	Do not know	21207002
0	Unspecified	21207002
5281	Not applicable	21207002
467	In the formal sector	21207003
83	In the informal sector	21207003
56	Private household	21207003
26	Do not know	21207003
0	Unspecified	21207003
4843	Not applicable	21207003
987	In the formal sector	21207004
120	In the informal sector	21207004
89	Private household	21207004
42	Do not know	21207004
0	Unspecified	21207004
6221	Not applicable	21207004
324	In the formal sector	21207005
43	In the informal sector	21207005
73	Private household	21207005
6	Do not know	21207005
0	Unspecified	21207005
5116	Not applicable	21207005
1175	In the formal sector	21207006
231	In the informal sector	21207006
291	Private household	21207006
33	Do not know	21207006
0	Unspecified	21207006
4412	Not applicable	21207006
399	In the formal sector	21207007
142	In the informal sector	21207007
105	Private household	21207007
18	Do not know	21207007
0	Unspecified	21207007
5540	Not applicable	21207007
664	In the formal sector	21207008
377	In the informal sector	21207008
154	Private household	21207008
21	Do not know	21207008
0	Unspecified	21207008
5881	Not applicable	21207008
632	In the formal sector	21207009
128	In the informal sector	21207009
100	Private household	21207009
20	Do not know	21207009
0	Unspecified	21207009
7323	Not applicable	21207009
436	In the formal sector	21207010
158	In the informal sector	21207010
100	Private household	21207010
19	Do not know	21207010
0	Unspecified	21207010
5167	Not applicable	21207010
197	In the formal sector	21207011
12	In the informal sector	21207011
15	Private household	21207011
0	Do not know	21207011
0	Unspecified	21207011
4426	Not applicable	21207011
329	In the formal sector	21207012
40	In the informal sector	21207012
91	Private household	21207012
59	Do not know	21207012
0	Unspecified	21207012
5086	Not applicable	21207012
286	In the formal sector	21207013
74	In the informal sector	21207013
42	Private household	21207013
1	Do not know	21207013
0	Unspecified	21207013
6158	Not applicable	21207013
240	In the formal sector	21207014
27	In the informal sector	21207014
6	Private household	21207014
1	Do not know	21207014
0	Unspecified	21207014
5688	Not applicable	21207014
501	In the formal sector	21207015
88	In the informal sector	21207015
98	Private household	21207015
8	Do not know	21207015
0	Unspecified	21207015
6790	Not applicable	21207015
567	In the formal sector	21207016
91	In the informal sector	21207016
73	Private household	21207016
12	Do not know	21207016
0	Unspecified	21207016
6041	Not applicable	21207016
243	In the formal sector	21207017
45	In the informal sector	21207017
27	Private household	21207017
3	Do not know	21207017
0	Unspecified	21207017
4529	Not applicable	21207017
418	In the formal sector	21207018
53	In the informal sector	21207018
88	Private household	21207018
2	Do not know	21207018
0	Unspecified	21207018
5766	Not applicable	21207018
256	In the formal sector	21207019
40	In the informal sector	21207019
17	Private household	21207019
1	Do not know	21207019
0	Unspecified	21207019
4693	Not applicable	21207019
903	In the formal sector	21207020
72	In the informal sector	21207020
59	Private household	21207020
26	Do not know	21207020
0	Unspecified	21207020
4296	Not applicable	21207020
1219	In the formal sector	21207021
72	In the informal sector	21207021
64	Private household	21207021
57	Do not know	21207021
0	Unspecified	21207021
4471	Not applicable	21207021
857	In the formal sector	21208001
143	In the informal sector	21208001
217	Private household	21208001
12	Do not know	21208001
0	Unspecified	21208001
4137	Not applicable	21208001
446	In the formal sector	21208002
88	In the informal sector	21208002
48	Private household	21208002
19	Do not know	21208002
0	Unspecified	21208002
3669	Not applicable	21208002
501	In the formal sector	21208003
80	In the informal sector	21208003
83	Private household	21208003
8	Do not know	21208003
0	Unspecified	21208003
2714	Not applicable	21208003
1155	In the formal sector	21208004
846	In the informal sector	21208004
474	Private household	21208004
32	Do not know	21208004
0	Unspecified	21208004
8734	Not applicable	21208004
688	In the formal sector	21301001
210	In the informal sector	21301001
114	Private household	21301001
8	Do not know	21301001
0	Unspecified	21301001
5909	Not applicable	21301001
538	In the formal sector	21301002
155	In the informal sector	21301002
125	Private household	21301002
36	Do not know	21301002
0	Unspecified	21301002
4712	Not applicable	21301002
494	In the formal sector	21301003
108	In the informal sector	21301003
65	Private household	21301003
21	Do not know	21301003
0	Unspecified	21301003
4230	Not applicable	21301003
1292	In the formal sector	21301004
68	In the informal sector	21301004
43	Private household	21301004
8	Do not know	21301004
0	Unspecified	21301004
5095	Not applicable	21301004
2866	In the formal sector	21301005
357	In the informal sector	21301005
395	Private household	21301005
94	Do not know	21301005
0	Unspecified	21301005
5038	Not applicable	21301005
3357	In the formal sector	21301006
665	In the informal sector	21301006
738	Private household	21301006
41	Do not know	21301006
0	Unspecified	21301006
7435	Not applicable	21301006
1469	In the formal sector	21301007
110	In the informal sector	21301007
78	Private household	21301007
36	Do not know	21301007
0	Unspecified	21301007
6709	Not applicable	21301007
1105	In the formal sector	21301008
110	In the informal sector	21301008
151	Private household	21301008
14	Do not know	21301008
0	Unspecified	21301008
4994	Not applicable	21301008
1059	In the formal sector	21301009
428	In the informal sector	21301009
171	Private household	21301009
21	Do not know	21301009
0	Unspecified	21301009
4202	Not applicable	21301009
355	In the formal sector	21302001
79	In the informal sector	21302001
77	Private household	21302001
8	Do not know	21302001
0	Unspecified	21302001
6584	Not applicable	21302001
430	In the formal sector	21302002
61	In the informal sector	21302002
210	Private household	21302002
14	Do not know	21302002
0	Unspecified	21302002
4927	Not applicable	21302002
448	In the formal sector	21302003
68	In the informal sector	21302003
41	Private household	21302003
26	Do not know	21302003
0	Unspecified	21302003
7046	Not applicable	21302003
633	In the formal sector	21302004
135	In the informal sector	21302004
136	Private household	21302004
21	Do not know	21302004
0	Unspecified	21302004
5134	Not applicable	21302004
932	In the formal sector	21302005
213	In the informal sector	21302005
607	Private household	21302005
45	Do not know	21302005
0	Unspecified	21302005
5051	Not applicable	21302005
381	In the formal sector	21303001
30	In the informal sector	21303001
43	Private household	21303001
1	Do not know	21303001
0	Unspecified	21303001
4086	Not applicable	21303001
1245	In the formal sector	21303002
290	In the informal sector	21303002
543	Private household	21303002
57	Do not know	21303002
0	Unspecified	21303002
3855	Not applicable	21303002
600	In the formal sector	21303003
110	In the informal sector	21303003
117	Private household	21303003
32	Do not know	21303003
0	Unspecified	21303003
4989	Not applicable	21303003
646	In the formal sector	21303004
30	In the informal sector	21303004
61	Private household	21303004
3	Do not know	21303004
0	Unspecified	21303004
4852	Not applicable	21303004
643	In the formal sector	21304001
174	In the informal sector	21304001
177	Private household	21304001
15	Do not know	21304001
0	Unspecified	21304001
7897	Not applicable	21304001
564	In the formal sector	21304002
148	In the informal sector	21304002
54	Private household	21304002
1	Do not know	21304002
0	Unspecified	21304002
6153	Not applicable	21304002
269	In the formal sector	21304003
62	In the informal sector	21304003
38	Private household	21304003
0	Do not know	21304003
0	Unspecified	21304003
6330	Not applicable	21304003
1001	In the formal sector	21304004
122	In the informal sector	21304004
88	Private household	21304004
38	Do not know	21304004
0	Unspecified	21304004
4176	Not applicable	21304004
318	In the formal sector	21304005
55	In the informal sector	21304005
60	Private household	21304005
11	Do not know	21304005
0	Unspecified	21304005
5534	Not applicable	21304005
1739	In the formal sector	21304006
274	In the informal sector	21304006
293	Private household	21304006
16	Do not know	21304006
0	Unspecified	21304006
4805	Not applicable	21304006
1338	In the formal sector	21304007
369	In the informal sector	21304007
230	Private household	21304007
34	Do not know	21304007
0	Unspecified	21304007
8493	Not applicable	21304007
987	In the formal sector	21304008
75	In the informal sector	21304008
126	Private household	21304008
6	Do not know	21304008
0	Unspecified	21304008
5490	Not applicable	21304008
460	In the formal sector	21304009
160	In the informal sector	21304009
45	Private household	21304009
2	Do not know	21304009
0	Unspecified	21304009
6242	Not applicable	21304009
316	In the formal sector	21304010
74	In the informal sector	21304010
102	Private household	21304010
10	Do not know	21304010
0	Unspecified	21304010
3802	Not applicable	21304010
624	In the formal sector	21304011
133	In the informal sector	21304011
143	Private household	21304011
40	Do not know	21304011
0	Unspecified	21304011
7271	Not applicable	21304011
221	In the formal sector	21304012
82	In the informal sector	21304012
42	Private household	21304012
7	Do not know	21304012
0	Unspecified	21304012
5317	Not applicable	21304012
200	In the formal sector	21304013
36	In the informal sector	21304013
42	Private household	21304013
5	Do not know	21304013
0	Unspecified	21304013
5210	Not applicable	21304013
340	In the formal sector	21304014
94	In the informal sector	21304014
127	Private household	21304014
11	Do not know	21304014
0	Unspecified	21304014
5496	Not applicable	21304014
658	In the formal sector	21304015
111	In the informal sector	21304015
90	Private household	21304015
26	Do not know	21304015
0	Unspecified	21304015
3937	Not applicable	21304015
583	In the formal sector	21304016
101	In the informal sector	21304016
267	Private household	21304016
42	Do not know	21304016
0	Unspecified	21304016
5098	Not applicable	21304016
598	In the formal sector	21304017
95	In the informal sector	21304017
22	Private household	21304017
5	Do not know	21304017
0	Unspecified	21304017
6314	Not applicable	21304017
1888	In the formal sector	21304018
370	In the informal sector	21304018
521	Private household	21304018
95	Do not know	21304018
0	Unspecified	21304018
9663	Not applicable	21304018
1517	In the formal sector	21304019
382	In the informal sector	21304019
195	Private household	21304019
23	Do not know	21304019
0	Unspecified	21304019
6719	Not applicable	21304019
1059	In the formal sector	21304020
166	In the informal sector	21304020
138	Private household	21304020
15	Do not know	21304020
0	Unspecified	21304020
5056	Not applicable	21304020
946	In the formal sector	21304021
184	In the informal sector	21304021
165	Private household	21304021
40	Do not know	21304021
0	Unspecified	21304021
4767	Not applicable	21304021
1464	In the formal sector	21304022
158	In the informal sector	21304022
136	Private household	21304022
22	Do not know	21304022
0	Unspecified	21304022
6200	Not applicable	21304022
706	In the formal sector	21304023
102	In the informal sector	21304023
139	Private household	21304023
36	Do not know	21304023
0	Unspecified	21304023
3692	Not applicable	21304023
1092	In the formal sector	21304024
110	In the informal sector	21304024
137	Private household	21304024
68	Do not know	21304024
0	Unspecified	21304024
4119	Not applicable	21304024
1688	In the formal sector	21304025
394	In the informal sector	21304025
438	Private household	21304025
43	Do not know	21304025
0	Unspecified	21304025
6867	Not applicable	21304025
2744	In the formal sector	21304026
285	In the informal sector	21304026
497	Private household	21304026
38	Do not know	21304026
0	Unspecified	21304026
5825	Not applicable	21304026
589	In the formal sector	21304027
247	In the informal sector	21304027
216	Private household	21304027
54	Do not know	21304027
0	Unspecified	21304027
5904	Not applicable	21304027
261	In the formal sector	21305001
86	In the informal sector	21305001
22	Private household	21305001
2	Do not know	21305001
0	Unspecified	21305001
6934	Not applicable	21305001
224	In the formal sector	21305002
76	In the informal sector	21305002
59	Private household	21305002
13	Do not know	21305002
0	Unspecified	21305002
5339	Not applicable	21305002
174	In the formal sector	21305003
89	In the informal sector	21305003
49	Private household	21305003
23	Do not know	21305003
0	Unspecified	21305003
6424	Not applicable	21305003
376	In the formal sector	21305004
138	In the informal sector	21305004
84	Private household	21305004
7	Do not know	21305004
0	Unspecified	21305004
7146	Not applicable	21305004
347	In the formal sector	21305005
71	In the informal sector	21305005
49	Private household	21305005
2	Do not know	21305005
0	Unspecified	21305005
7545	Not applicable	21305005
320	In the formal sector	21305006
76	In the informal sector	21305006
30	Private household	21305006
12	Do not know	21305006
0	Unspecified	21305006
6808	Not applicable	21305006
219	In the formal sector	21305007
80	In the informal sector	21305007
37	Private household	21305007
10	Do not know	21305007
0	Unspecified	21305007
6069	Not applicable	21305007
775	In the formal sector	21305008
161	In the informal sector	21305008
81	Private household	21305008
57	Do not know	21305008
0	Unspecified	21305008
6364	Not applicable	21305008
150	In the formal sector	21305009
23	In the informal sector	21305009
11	Private household	21305009
5	Do not know	21305009
0	Unspecified	21305009
5471	Not applicable	21305009
225	In the formal sector	21305010
60	In the informal sector	21305010
69	Private household	21305010
5	Do not know	21305010
0	Unspecified	21305010
5790	Not applicable	21305010
114	In the formal sector	21305011
37	In the informal sector	21305011
46	Private household	21305011
0	Do not know	21305011
0	Unspecified	21305011
4953	Not applicable	21305011
207	In the formal sector	21305012
77	In the informal sector	21305012
41	Private household	21305012
5	Do not know	21305012
0	Unspecified	21305012
6085	Not applicable	21305012
297	In the formal sector	21305013
62	In the informal sector	21305013
50	Private household	21305013
12	Do not know	21305013
0	Unspecified	21305013
7025	Not applicable	21305013
1692	In the formal sector	21305014
387	In the informal sector	21305014
380	Private household	21305014
55	Do not know	21305014
0	Unspecified	21305014
6269	Not applicable	21305014
410	In the formal sector	21305015
130	In the informal sector	21305015
53	Private household	21305015
7	Do not know	21305015
0	Unspecified	21305015
6583	Not applicable	21305015
331	In the formal sector	21305016
84	In the informal sector	21305016
39	Private household	21305016
9	Do not know	21305016
0	Unspecified	21305016
7976	Not applicable	21305016
375	In the formal sector	21305017
127	In the informal sector	21305017
73	Private household	21305017
9	Do not know	21305017
0	Unspecified	21305017
6449	Not applicable	21305017
331	In the formal sector	21305018
77	In the informal sector	21305018
35	Private household	21305018
5	Do not know	21305018
0	Unspecified	21305018
6966	Not applicable	21305018
173	In the formal sector	21305019
96	In the informal sector	21305019
21	Private household	21305019
4	Do not know	21305019
0	Unspecified	21305019
5095	Not applicable	21305019
194	In the formal sector	21305020
54	In the informal sector	21305020
20	Private household	21305020
10	Do not know	21305020
0	Unspecified	21305020
5705	Not applicable	21305020
236	In the formal sector	21305021
72	In the informal sector	21305021
66	Private household	21305021
7	Do not know	21305021
0	Unspecified	21305021
7305	Not applicable	21305021
210	In the formal sector	21306001
77	In the informal sector	21306001
97	Private household	21306001
15	Do not know	21306001
0	Unspecified	21306001
6632	Not applicable	21306001
186	In the formal sector	21306002
87	In the informal sector	21306002
20	Private household	21306002
16	Do not know	21306002
0	Unspecified	21306002
5536	Not applicable	21306002
220	In the formal sector	21306003
70	In the informal sector	21306003
17	Private household	21306003
19	Do not know	21306003
0	Unspecified	21306003
6574	Not applicable	21306003
807	In the formal sector	21306004
154	In the informal sector	21306004
127	Private household	21306004
17	Do not know	21306004
0	Unspecified	21306004
5855	Not applicable	21306004
651	In the formal sector	21306005
136	In the informal sector	21306005
97	Private household	21306005
47	Do not know	21306005
0	Unspecified	21306005
8717	Not applicable	21306005
245	In the formal sector	21306006
82	In the informal sector	21306006
27	Private household	21306006
3	Do not know	21306006
0	Unspecified	21306006
7420	Not applicable	21306006
231	In the formal sector	21306007
69	In the informal sector	21306007
41	Private household	21306007
9	Do not know	21306007
0	Unspecified	21306007
7960	Not applicable	21306007
250	In the formal sector	21306008
86	In the informal sector	21306008
34	Private household	21306008
20	Do not know	21306008
0	Unspecified	21306008
7516	Not applicable	21306008
278	In the formal sector	21306009
67	In the informal sector	21306009
35	Private household	21306009
27	Do not know	21306009
0	Unspecified	21306009
6347	Not applicable	21306009
210	In the formal sector	21306010
202	In the informal sector	21306010
27	Private household	21306010
2	Do not know	21306010
0	Unspecified	21306010
5431	Not applicable	21306010
524	In the formal sector	21306011
116	In the informal sector	21306011
145	Private household	21306011
14	Do not know	21306011
0	Unspecified	21306011
6117	Not applicable	21306011
275	In the formal sector	21306012
56	In the informal sector	21306012
38	Private household	21306012
32	Do not know	21306012
0	Unspecified	21306012
6344	Not applicable	21306012
266	In the formal sector	21306013
107	In the informal sector	21306013
35	Private household	21306013
7	Do not know	21306013
0	Unspecified	21306013
5402	Not applicable	21306013
619	In the formal sector	21306014
103	In the informal sector	21306014
157	Private household	21306014
47	Do not know	21306014
0	Unspecified	21306014
6824	Not applicable	21306014
793	In the formal sector	21306015
102	In the informal sector	21306015
217	Private household	21306015
23	Do not know	21306015
0	Unspecified	21306015
5766	Not applicable	21306015
493	In the formal sector	21306016
103	In the informal sector	21306016
75	Private household	21306016
39	Do not know	21306016
0	Unspecified	21306016
5592	Not applicable	21306016
171	In the formal sector	21306017
65	In the informal sector	21306017
19	Private household	21306017
2	Do not know	21306017
0	Unspecified	21306017
5768	Not applicable	21306017
125	In the formal sector	21307001
23	In the informal sector	21307001
23	Private household	21307001
10	Do not know	21307001
0	Unspecified	21307001
5877	Not applicable	21307001
201	In the formal sector	21307002
59	In the informal sector	21307002
28	Private household	21307002
6	Do not know	21307002
0	Unspecified	21307002
6376	Not applicable	21307002
285	In the formal sector	21307003
111	In the informal sector	21307003
75	Private household	21307003
6	Do not know	21307003
0	Unspecified	21307003
5217	Not applicable	21307003
462	In the formal sector	21307004
48	In the informal sector	21307004
25	Private household	21307004
7	Do not know	21307004
0	Unspecified	21307004
6737	Not applicable	21307004
162	In the formal sector	21307005
70	In the informal sector	21307005
18	Private household	21307005
1	Do not know	21307005
0	Unspecified	21307005
6518	Not applicable	21307005
250	In the formal sector	21307006
49	In the informal sector	21307006
29	Private household	21307006
7	Do not know	21307006
0	Unspecified	21307006
7758	Not applicable	21307006
288	In the formal sector	21307007
141	In the informal sector	21307007
43	Private household	21307007
5	Do not know	21307007
0	Unspecified	21307007
7433	Not applicable	21307007
329	In the formal sector	21307008
84	In the informal sector	21307008
47	Private household	21307008
11	Do not know	21307008
0	Unspecified	21307008
8147	Not applicable	21307008
545	In the formal sector	21307009
109	In the informal sector	21307009
77	Private household	21307009
6	Do not know	21307009
0	Unspecified	21307009
6850	Not applicable	21307009
1513	In the formal sector	21307010
453	In the informal sector	21307010
128	Private household	21307010
30	Do not know	21307010
0	Unspecified	21307010
9347	Not applicable	21307010
1150	In the formal sector	21307011
197	In the informal sector	21307011
137	Private household	21307011
111	Do not know	21307011
0	Unspecified	21307011
3882	Not applicable	21307011
333	In the formal sector	21307012
54	In the informal sector	21307012
27	Private household	21307012
9	Do not know	21307012
0	Unspecified	21307012
7244	Not applicable	21307012
304	In the formal sector	21307013
48	In the informal sector	21307013
39	Private household	21307013
6	Do not know	21307013
0	Unspecified	21307013
7520	Not applicable	21307013
387	In the formal sector	21307014
62	In the informal sector	21307014
29	Private household	21307014
7	Do not know	21307014
0	Unspecified	21307014
7588	Not applicable	21307014
476	In the formal sector	21307015
162	In the informal sector	21307015
24	Private household	21307015
19	Do not know	21307015
0	Unspecified	21307015
8756	Not applicable	21307015
298	In the formal sector	21307016
110	In the informal sector	21307016
48	Private household	21307016
8	Do not know	21307016
0	Unspecified	21307016
7354	Not applicable	21307016
433	In the formal sector	21307017
92	In the informal sector	21307017
55	Private household	21307017
7	Do not know	21307017
0	Unspecified	21307017
7819	Not applicable	21307017
487	In the formal sector	21307018
84	In the informal sector	21307018
56	Private household	21307018
14	Do not know	21307018
0	Unspecified	21307018
8426	Not applicable	21307018
290	In the formal sector	21307019
41	In the informal sector	21307019
18	Private household	21307019
1	Do not know	21307019
0	Unspecified	21307019
8286	Not applicable	21307019
258	In the formal sector	21307020
18	In the informal sector	21307020
22	Private household	21307020
7	Do not know	21307020
0	Unspecified	21307020
6564	Not applicable	21307020
1162	In the formal sector	21308001
832	In the informal sector	21308001
123	Private household	21308001
35	Do not know	21308001
0	Unspecified	21308001
6102	Not applicable	21308001
650	In the formal sector	21308002
206	In the informal sector	21308002
143	Private household	21308002
21	Do not know	21308002
0	Unspecified	21308002
6153	Not applicable	21308002
451	In the formal sector	21308003
203	In the informal sector	21308003
235	Private household	21308003
36	Do not know	21308003
0	Unspecified	21308003
7250	Not applicable	21308003
1100	In the formal sector	21308004
239	In the informal sector	21308004
103	Private household	21308004
31	Do not know	21308004
0	Unspecified	21308004
4279	Not applicable	21308004
917	In the formal sector	21308005
316	In the informal sector	21308005
179	Private household	21308005
37	Do not know	21308005
0	Unspecified	21308005
7231	Not applicable	21308005
588	In the formal sector	21308006
82	In the informal sector	21308006
44	Private household	21308006
65	Do not know	21308006
0	Unspecified	21308006
5394	Not applicable	21308006
284	In the formal sector	21308007
40	In the informal sector	21308007
36	Private household	21308007
6	Do not know	21308007
0	Unspecified	21308007
6097	Not applicable	21308007
259	In the formal sector	21308008
48	In the informal sector	21308008
33	Private household	21308008
16	Do not know	21308008
0	Unspecified	21308008
6280	Not applicable	21308008
419	In the formal sector	21308009
272	In the informal sector	21308009
37	Private household	21308009
29	Do not know	21308009
0	Unspecified	21308009
5520	Not applicable	21308009
551	In the formal sector	21401001
353	In the informal sector	21401001
62	Private household	21401001
21	Do not know	21401001
0	Unspecified	21401001
8471	Not applicable	21401001
968	In the formal sector	21401002
274	In the informal sector	21401002
200	Private household	21401002
129	Do not know	21401002
0	Unspecified	21401002
8288	Not applicable	21401002
1282	In the formal sector	21401003
275	In the informal sector	21401003
212	Private household	21401003
53	Do not know	21401003
0	Unspecified	21401003
6309	Not applicable	21401003
719	In the formal sector	21401004
164	In the informal sector	21401004
56	Private household	21401004
21	Do not know	21401004
0	Unspecified	21401004
5987	Not applicable	21401004
415	In the formal sector	21401005
82	In the informal sector	21401005
42	Private household	21401005
15	Do not know	21401005
0	Unspecified	21401005
7893	Not applicable	21401005
271	In the formal sector	21401006
50	In the informal sector	21401006
37	Private household	21401006
20	Do not know	21401006
0	Unspecified	21401006
5055	Not applicable	21401006
425	In the formal sector	21401007
153	In the informal sector	21401007
86	Private household	21401007
18	Do not know	21401007
0	Unspecified	21401007
6917	Not applicable	21401007
174	In the formal sector	21401008
89	In the informal sector	21401008
32	Private household	21401008
5	Do not know	21401008
0	Unspecified	21401008
6092	Not applicable	21401008
1318	In the formal sector	21401009
435	In the informal sector	21401009
139	Private household	21401009
22	Do not know	21401009
0	Unspecified	21401009
9310	Not applicable	21401009
449	In the formal sector	21401010
142	In the informal sector	21401010
72	Private household	21401010
32	Do not know	21401010
0	Unspecified	21401010
8150	Not applicable	21401010
341	In the formal sector	21401011
127	In the informal sector	21401011
24	Private household	21401011
14	Do not know	21401011
0	Unspecified	21401011
8144	Not applicable	21401011
238	In the formal sector	21401012
181	In the informal sector	21401012
43	Private household	21401012
9	Do not know	21401012
0	Unspecified	21401012
7288	Not applicable	21401012
520	In the formal sector	21401013
97	In the informal sector	21401013
85	Private household	21401013
22	Do not know	21401013
0	Unspecified	21401013
8833	Not applicable	21401013
320	In the formal sector	21401014
137	In the informal sector	21401014
19	Private household	21401014
2	Do not know	21401014
0	Unspecified	21401014
6453	Not applicable	21401014
449	In the formal sector	21401015
137	In the informal sector	21401015
111	Private household	21401015
7	Do not know	21401015
0	Unspecified	21401015
7928	Not applicable	21401015
277	In the formal sector	21401016
111	In the informal sector	21401016
40	Private household	21401016
2	Do not know	21401016
0	Unspecified	21401016
6885	Not applicable	21401016
786	In the formal sector	21401017
482	In the informal sector	21401017
148	Private household	21401017
68	Do not know	21401017
0	Unspecified	21401017
5482	Not applicable	21401017
441	In the formal sector	21402001
152	In the informal sector	21402001
38	Private household	21402001
6	Do not know	21402001
0	Unspecified	21402001
6010	Not applicable	21402001
659	In the formal sector	21402002
166	In the informal sector	21402002
58	Private household	21402002
7	Do not know	21402002
0	Unspecified	21402002
10966	Not applicable	21402002
279	In the formal sector	21402003
228	In the informal sector	21402003
14	Private household	21402003
15	Do not know	21402003
0	Unspecified	21402003
4843	Not applicable	21402003
233	In the formal sector	21402004
61	In the informal sector	21402004
54	Private household	21402004
1	Do not know	21402004
0	Unspecified	21402004
4677	Not applicable	21402004
170	In the formal sector	21402005
13	In the informal sector	21402005
51	Private household	21402005
12	Do not know	21402005
0	Unspecified	21402005
4820	Not applicable	21402005
406	In the formal sector	21402006
120	In the informal sector	21402006
55	Private household	21402006
8	Do not know	21402006
0	Unspecified	21402006
6049	Not applicable	21402006
508	In the formal sector	21402007
181	In the informal sector	21402007
124	Private household	21402007
81	Do not know	21402007
0	Unspecified	21402007
6261	Not applicable	21402007
1218	In the formal sector	21402008
439	In the informal sector	21402008
152	Private household	21402008
16	Do not know	21402008
0	Unspecified	21402008
8129	Not applicable	21402008
396	In the formal sector	21402009
110	In the informal sector	21402009
58	Private household	21402009
0	Do not know	21402009
0	Unspecified	21402009
6302	Not applicable	21402009
1338	In the formal sector	21402010
387	In the informal sector	21402010
225	Private household	21402010
61	Do not know	21402010
0	Unspecified	21402010
7041	Not applicable	21402010
473	In the formal sector	21402011
263	In the informal sector	21402011
210	Private household	21402011
7	Do not know	21402011
0	Unspecified	21402011
6841	Not applicable	21402011
259	In the formal sector	21402012
64	In the informal sector	21402012
45	Private household	21402012
5	Do not know	21402012
0	Unspecified	21402012
5247	Not applicable	21402012
306	In the formal sector	21402013
62	In the informal sector	21402013
42	Private household	21402013
9	Do not know	21402013
0	Unspecified	21402013
6242	Not applicable	21402013
1007	In the formal sector	21402014
176	In the informal sector	21402014
192	Private household	21402014
7	Do not know	21402014
0	Unspecified	21402014
5733	Not applicable	21402014
629	In the formal sector	21402015
756	In the informal sector	21402015
512	Private household	21402015
36	Do not know	21402015
0	Unspecified	21402015
4552	Not applicable	21402015
597	In the formal sector	21402016
1122	In the informal sector	21402016
436	Private household	21402016
91	Do not know	21402016
0	Unspecified	21402016
3532	Not applicable	21402016
367	In the formal sector	21402017
164	In the informal sector	21402017
96	Private household	21402017
19	Do not know	21402017
0	Unspecified	21402017
6136	Not applicable	21402017
487	In the formal sector	21402018
189	In the informal sector	21402018
108	Private household	21402018
1	Do not know	21402018
0	Unspecified	21402018
5252	Not applicable	21402018
1127	In the formal sector	21402019
189	In the informal sector	21402019
93	Private household	21402019
52	Do not know	21402019
0	Unspecified	21402019
6777	Not applicable	21402019
732	In the formal sector	21403001
338	In the informal sector	21403001
658	Private household	21403001
184	Do not know	21403001
0	Unspecified	21403001
5522	Not applicable	21403001
1387	In the formal sector	21403002
539	In the informal sector	21403002
330	Private household	21403002
20	Do not know	21403002
0	Unspecified	21403002
6724	Not applicable	21403002
969	In the formal sector	21403003
124	In the informal sector	21403003
139	Private household	21403003
37	Do not know	21403003
0	Unspecified	21403003
4427	Not applicable	21403003
1598	In the formal sector	21403004
189	In the informal sector	21403004
260	Private household	21403004
141	Do not know	21403004
0	Unspecified	21403004
5307	Not applicable	21403004
1314	In the formal sector	21403005
151	In the informal sector	21403005
114	Private household	21403005
10	Do not know	21403005
0	Unspecified	21403005
3348	Not applicable	21403005
1127	In the formal sector	21403006
213	In the informal sector	21403006
276	Private household	21403006
26	Do not know	21403006
0	Unspecified	21403006
7597	Not applicable	21403006
1285	In the formal sector	21404001
153	In the informal sector	21404001
209	Private household	21404001
10	Do not know	21404001
0	Unspecified	21404001
4527	Not applicable	21404001
456	In the formal sector	21404002
136	In the informal sector	21404002
52	Private household	21404002
50	Do not know	21404002
0	Unspecified	21404002
4033	Not applicable	21404002
1975	In the formal sector	21404003
882	In the informal sector	21404003
965	Private household	21404003
71	Do not know	21404003
0	Unspecified	21404003
6256	Not applicable	21404003
696	In the formal sector	21404004
237	In the informal sector	21404004
89	Private household	21404004
7	Do not know	21404004
0	Unspecified	21404004
4221	Not applicable	21404004
761	In the formal sector	21404005
231	In the informal sector	21404005
257	Private household	21404005
26	Do not know	21404005
0	Unspecified	21404005
6093	Not applicable	21404005
134	In the formal sector	21503001
13	In the informal sector	21503001
12	Private household	21503001
4	Do not know	21503001
0	Unspecified	21503001
6749	Not applicable	21503001
226	In the formal sector	21503002
84	In the informal sector	21503002
8	Private household	21503002
6	Do not know	21503002
0	Unspecified	21503002
11010	Not applicable	21503002
173	In the formal sector	21503003
27	In the informal sector	21503003
8	Private household	21503003
1	Do not know	21503003
0	Unspecified	21503003
7941	Not applicable	21503003
287	In the formal sector	21503004
41	In the informal sector	21503004
25	Private household	21503004
3	Do not know	21503004
0	Unspecified	21503004
8295	Not applicable	21503004
313	In the formal sector	21503005
39	In the informal sector	21503005
26	Private household	21503005
7	Do not know	21503005
0	Unspecified	21503005
9616	Not applicable	21503005
1096	In the formal sector	21503006
403	In the informal sector	21503006
151	Private household	21503006
14	Do not know	21503006
0	Unspecified	21503006
8796	Not applicable	21503006
338	In the formal sector	21503007
74	In the informal sector	21503007
63	Private household	21503007
20	Do not know	21503007
0	Unspecified	21503007
9514	Not applicable	21503007
256	In the formal sector	21503008
52	In the informal sector	21503008
44	Private household	21503008
15	Do not know	21503008
0	Unspecified	21503008
6953	Not applicable	21503008
754	In the formal sector	21503009
155	In the informal sector	21503009
74	Private household	21503009
11	Do not know	21503009
0	Unspecified	21503009
8447	Not applicable	21503009
232	In the formal sector	21503010
65	In the informal sector	21503010
19	Private household	21503010
10	Do not know	21503010
0	Unspecified	21503010
7926	Not applicable	21503010
273	In the formal sector	21503011
78	In the informal sector	21503011
32	Private household	21503011
6	Do not know	21503011
0	Unspecified	21503011
8822	Not applicable	21503011
187	In the formal sector	21503012
33	In the informal sector	21503012
29	Private household	21503012
0	Do not know	21503012
0	Unspecified	21503012
7380	Not applicable	21503012
385	In the formal sector	21503013
87	In the informal sector	21503013
46	Private household	21503013
9	Do not know	21503013
0	Unspecified	21503013
8703	Not applicable	21503013
567	In the formal sector	21503014
75	In the informal sector	21503014
63	Private household	21503014
6	Do not know	21503014
0	Unspecified	21503014
8005	Not applicable	21503014
1437	In the formal sector	21503015
238	In the informal sector	21503015
199	Private household	21503015
11	Do not know	21503015
0	Unspecified	21503015
4776	Not applicable	21503015
223	In the formal sector	21503016
52	In the informal sector	21503016
34	Private household	21503016
5	Do not know	21503016
0	Unspecified	21503016
7811	Not applicable	21503016
478	In the formal sector	21503017
163	In the informal sector	21503017
42	Private household	21503017
1	Do not know	21503017
0	Unspecified	21503017
6992	Not applicable	21503017
231	In the formal sector	21503018
65	In the informal sector	21503018
66	Private household	21503018
2	Do not know	21503018
0	Unspecified	21503018
7830	Not applicable	21503018
1120	In the formal sector	21503019
299	In the informal sector	21503019
152	Private household	21503019
30	Do not know	21503019
0	Unspecified	21503019
9530	Not applicable	21503019
719	In the formal sector	21503020
230	In the informal sector	21503020
114	Private household	21503020
4	Do not know	21503020
0	Unspecified	21503020
10204	Not applicable	21503020
693	In the formal sector	21503021
264	In the informal sector	21503021
108	Private household	21503021
23	Do not know	21503021
0	Unspecified	21503021
10562	Not applicable	21503021
499	In the formal sector	21503022
153	In the informal sector	21503022
329	Private household	21503022
13	Do not know	21503022
0	Unspecified	21503022
7856	Not applicable	21503022
342	In the formal sector	21503023
125	In the informal sector	21503023
40	Private household	21503023
6	Do not know	21503023
0	Unspecified	21503023
6409	Not applicable	21503023
159	In the formal sector	21503024
87	In the informal sector	21503024
18	Private household	21503024
4	Do not know	21503024
0	Unspecified	21503024
7597	Not applicable	21503024
332	In the formal sector	21503025
55	In the informal sector	21503025
30	Private household	21503025
40	Do not know	21503025
0	Unspecified	21503025
8183	Not applicable	21503025
325	In the formal sector	21503026
28	In the informal sector	21503026
25	Private household	21503026
49	Do not know	21503026
0	Unspecified	21503026
8779	Not applicable	21503026
234	In the formal sector	21503027
64	In the informal sector	21503027
62	Private household	21503027
21	Do not know	21503027
0	Unspecified	21503027
6062	Not applicable	21503027
240	In the formal sector	21503028
30	In the informal sector	21503028
25	Private household	21503028
67	Do not know	21503028
0	Unspecified	21503028
10171	Not applicable	21503028
424	In the formal sector	21503029
77	In the informal sector	21503029
68	Private household	21503029
5	Do not know	21503029
0	Unspecified	21503029
9360	Not applicable	21503029
285	In the formal sector	21503030
90	In the informal sector	21503030
24	Private household	21503030
8	Do not know	21503030
0	Unspecified	21503030
10379	Not applicable	21503030
271	In the formal sector	21503031
98	In the informal sector	21503031
54	Private household	21503031
2	Do not know	21503031
0	Unspecified	21503031
8857	Not applicable	21503031
301	In the formal sector	21504001
19	In the informal sector	21504001
14	Private household	21504001
1	Do not know	21504001
0	Unspecified	21504001
8997	Not applicable	21504001
416	In the formal sector	21504002
62	In the informal sector	21504002
66	Private household	21504002
18	Do not know	21504002
0	Unspecified	21504002
8209	Not applicable	21504002
367	In the formal sector	21504003
28	In the informal sector	21504003
27	Private household	21504003
5	Do not know	21504003
0	Unspecified	21504003
8363	Not applicable	21504003
375	In the formal sector	21504004
38	In the informal sector	21504004
30	Private household	21504004
4	Do not know	21504004
0	Unspecified	21504004
6684	Not applicable	21504004
332	In the formal sector	21504005
124	In the informal sector	21504005
50	Private household	21504005
1	Do not know	21504005
0	Unspecified	21504005
6392	Not applicable	21504005
1128	In the formal sector	21504006
316	In the informal sector	21504006
146	Private household	21504006
28	Do not know	21504006
0	Unspecified	21504006
4129	Not applicable	21504006
316	In the formal sector	21504007
59	In the informal sector	21504007
23	Private household	21504007
2	Do not know	21504007
0	Unspecified	21504007
7773	Not applicable	21504007
392	In the formal sector	21504008
115	In the informal sector	21504008
41	Private household	21504008
14	Do not know	21504008
0	Unspecified	21504008
6133	Not applicable	21504008
297	In the formal sector	21504009
61	In the informal sector	21504009
35	Private household	21504009
12	Do not know	21504009
0	Unspecified	21504009
5501	Not applicable	21504009
251	In the formal sector	21504010
102	In the informal sector	21504010
78	Private household	21504010
5	Do not know	21504010
0	Unspecified	21504010
8341	Not applicable	21504010
152	In the formal sector	21504011
54	In the informal sector	21504011
12	Private household	21504011
7	Do not know	21504011
0	Unspecified	21504011
8453	Not applicable	21504011
151	In the formal sector	21504012
39	In the informal sector	21504012
19	Private household	21504012
8	Do not know	21504012
0	Unspecified	21504012
9096	Not applicable	21504012
208	In the formal sector	21504013
38	In the informal sector	21504013
35	Private household	21504013
9	Do not know	21504013
0	Unspecified	21504013
7970	Not applicable	21504013
218	In the formal sector	21504014
18	In the informal sector	21504014
13	Private household	21504014
15	Do not know	21504014
0	Unspecified	21504014
6698	Not applicable	21504014
91	In the formal sector	21504015
8	In the informal sector	21504015
4	Private household	21504015
0	Do not know	21504015
0	Unspecified	21504015
3915	Not applicable	21504015
189	In the formal sector	21504016
49	In the informal sector	21504016
43	Private household	21504016
13	Do not know	21504016
0	Unspecified	21504016
6143	Not applicable	21504016
127	In the formal sector	21504017
6	In the informal sector	21504017
6	Private household	21504017
5	Do not know	21504017
0	Unspecified	21504017
7204	Not applicable	21504017
155	In the formal sector	21504018
8	In the informal sector	21504018
17	Private household	21504018
13	Do not know	21504018
0	Unspecified	21504018
8165	Not applicable	21504018
349	In the formal sector	21504019
77	In the informal sector	21504019
21	Private household	21504019
4	Do not know	21504019
0	Unspecified	21504019
10175	Not applicable	21504019
251	In the formal sector	21504020
53	In the informal sector	21504020
19	Private household	21504020
16	Do not know	21504020
0	Unspecified	21504020
9577	Not applicable	21504020
306	In the formal sector	21505001
152	In the informal sector	21505001
105	Private household	21505001
8	Do not know	21505001
0	Unspecified	21505001
9396	Not applicable	21505001
296	In the formal sector	21505002
24	In the informal sector	21505002
20	Private household	21505002
2	Do not know	21505002
0	Unspecified	21505002
7697	Not applicable	21505002
330	In the formal sector	21505003
118	In the informal sector	21505003
68	Private household	21505003
0	Do not know	21505003
0	Unspecified	21505003
6972	Not applicable	21505003
258	In the formal sector	21505004
102	In the informal sector	21505004
80	Private household	21505004
14	Do not know	21505004
0	Unspecified	21505004
7372	Not applicable	21505004
183	In the formal sector	21505005
29	In the informal sector	21505005
21	Private household	21505005
2	Do not know	21505005
0	Unspecified	21505005
8397	Not applicable	21505005
277	In the formal sector	21505006
14	In the informal sector	21505006
14	Private household	21505006
6	Do not know	21505006
0	Unspecified	21505006
9708	Not applicable	21505006
1039	In the formal sector	21505007
218	In the informal sector	21505007
142	Private household	21505007
5	Do not know	21505007
0	Unspecified	21505007
6641	Not applicable	21505007
251	In the formal sector	21505008
59	In the informal sector	21505008
43	Private household	21505008
0	Do not know	21505008
0	Unspecified	21505008
7522	Not applicable	21505008
717	In the formal sector	21505009
194	In the informal sector	21505009
147	Private household	21505009
11	Do not know	21505009
0	Unspecified	21505009
9357	Not applicable	21505009
1250	In the formal sector	21505010
234	In the informal sector	21505010
116	Private household	21505010
98	Do not know	21505010
0	Unspecified	21505010
9165	Not applicable	21505010
1629	In the formal sector	21505011
503	In the informal sector	21505011
365	Private household	21505011
28	Do not know	21505011
0	Unspecified	21505011
10721	Not applicable	21505011
1807	In the formal sector	21505012
546	In the informal sector	21505012
198	Private household	21505012
19	Do not know	21505012
0	Unspecified	21505012
8060	Not applicable	21505012
724	In the formal sector	21505013
76	In the informal sector	21505013
76	Private household	21505013
16	Do not know	21505013
0	Unspecified	21505013
7598	Not applicable	21505013
273	In the formal sector	21505014
55	In the informal sector	21505014
44	Private household	21505014
6	Do not know	21505014
0	Unspecified	21505014
7951	Not applicable	21505014
659	In the formal sector	21505015
165	In the informal sector	21505015
146	Private household	21505015
16	Do not know	21505015
0	Unspecified	21505015
10895	Not applicable	21505015
152	In the formal sector	21505016
34	In the informal sector	21505016
15	Private household	21505016
1	Do not know	21505016
0	Unspecified	21505016
7944	Not applicable	21505016
421	In the formal sector	21505017
27	In the informal sector	21505017
13	Private household	21505017
5	Do not know	21505017
0	Unspecified	21505017
9800	Not applicable	21505017
198	In the formal sector	21505018
67	In the informal sector	21505018
26	Private household	21505018
12	Do not know	21505018
0	Unspecified	21505018
7992	Not applicable	21505018
269	In the formal sector	21505019
31	In the informal sector	21505019
16	Private household	21505019
6	Do not know	21505019
0	Unspecified	21505019
10773	Not applicable	21505019
355	In the formal sector	21505020
44	In the informal sector	21505020
55	Private household	21505020
29	Do not know	21505020
0	Unspecified	21505020
11097	Not applicable	21505020
619	In the formal sector	21505021
62	In the informal sector	21505021
159	Private household	21505021
24	Do not know	21505021
0	Unspecified	21505021
6542	Not applicable	21505021
294	In the formal sector	21505022
29	In the informal sector	21505022
8	Private household	21505022
2	Do not know	21505022
0	Unspecified	21505022
10447	Not applicable	21505022
362	In the formal sector	21505023
23	In the informal sector	21505023
98	Private household	21505023
1	Do not know	21505023
0	Unspecified	21505023
8921	Not applicable	21505023
165	In the formal sector	21505024
71	In the informal sector	21505024
47	Private household	21505024
2	Do not know	21505024
0	Unspecified	21505024
7120	Not applicable	21505024
256	In the formal sector	21505025
21	In the informal sector	21505025
11	Private household	21505025
2	Do not know	21505025
0	Unspecified	21505025
8269	Not applicable	21505025
284	In the formal sector	21505026
42	In the informal sector	21505026
11	Private household	21505026
5	Do not know	21505026
0	Unspecified	21505026
11045	Not applicable	21505026
232	In the formal sector	21505027
20	In the informal sector	21505027
6	Private household	21505027
4	Do not know	21505027
0	Unspecified	21505027
6337	Not applicable	21505027
263	In the formal sector	21505028
29	In the informal sector	21505028
61	Private household	21505028
8	Do not know	21505028
0	Unspecified	21505028
7980	Not applicable	21505028
549	In the formal sector	21505029
110	In the informal sector	21505029
101	Private household	21505029
17	Do not know	21505029
0	Unspecified	21505029
9435	Not applicable	21505029
369	In the formal sector	21505030
104	In the informal sector	21505030
60	Private household	21505030
20	Do not know	21505030
0	Unspecified	21505030
9817	Not applicable	21505030
348	In the formal sector	21505031
118	In the informal sector	21505031
92	Private household	21505031
2	Do not know	21505031
0	Unspecified	21505031
8225	Not applicable	21505031
220	In the formal sector	21506001
48	In the informal sector	21506001
44	Private household	21506001
6	Do not know	21506001
0	Unspecified	21506001
7073	Not applicable	21506001
906	In the formal sector	21506002
231	In the informal sector	21506002
176	Private household	21506002
7	Do not know	21506002
0	Unspecified	21506002
5367	Not applicable	21506002
511	In the formal sector	21506003
171	In the informal sector	21506003
121	Private household	21506003
4	Do not know	21506003
0	Unspecified	21506003
7085	Not applicable	21506003
444	In the formal sector	21506004
146	In the informal sector	21506004
68	Private household	21506004
14	Do not know	21506004
0	Unspecified	21506004
6326	Not applicable	21506004
219	In the formal sector	21506005
76	In the informal sector	21506005
35	Private household	21506005
7	Do not know	21506005
0	Unspecified	21506005
5860	Not applicable	21506005
1453	In the formal sector	21506006
359	In the informal sector	21506006
205	Private household	21506006
19	Do not know	21506006
0	Unspecified	21506006
8542	Not applicable	21506006
244	In the formal sector	21506007
33	In the informal sector	21506007
40	Private household	21506007
18	Do not know	21506007
0	Unspecified	21506007
5168	Not applicable	21506007
333	In the formal sector	21506008
60	In the informal sector	21506008
30	Private household	21506008
7	Do not know	21506008
0	Unspecified	21506008
7968	Not applicable	21506008
294	In the formal sector	21506009
59	In the informal sector	21506009
27	Private household	21506009
14	Do not know	21506009
0	Unspecified	21506009
5182	Not applicable	21506009
286	In the formal sector	21506010
53	In the informal sector	21506010
35	Private household	21506010
12	Do not know	21506010
0	Unspecified	21506010
5955	Not applicable	21506010
258	In the formal sector	21506011
11	In the informal sector	21506011
26	Private household	21506011
27	Do not know	21506011
0	Unspecified	21506011
7290	Not applicable	21506011
233	In the formal sector	21506012
29	In the informal sector	21506012
55	Private household	21506012
15	Do not know	21506012
0	Unspecified	21506012
8028	Not applicable	21506012
225	In the formal sector	21506013
43	In the informal sector	21506013
21	Private household	21506013
8	Do not know	21506013
0	Unspecified	21506013
7907	Not applicable	21506013
388	In the formal sector	21506014
97	In the informal sector	21506014
44	Private household	21506014
2	Do not know	21506014
0	Unspecified	21506014
7633	Not applicable	21506014
1314	In the formal sector	21506015
293	In the informal sector	21506015
182	Private household	21506015
21	Do not know	21506015
0	Unspecified	21506015
7269	Not applicable	21506015
322	In the formal sector	21506016
94	In the informal sector	21506016
41	Private household	21506016
8	Do not know	21506016
0	Unspecified	21506016
6974	Not applicable	21506016
365	In the formal sector	21506017
87	In the informal sector	21506017
44	Private household	21506017
6	Do not know	21506017
0	Unspecified	21506017
7702	Not applicable	21506017
268	In the formal sector	21506018
79	In the informal sector	21506018
59	Private household	21506018
14	Do not know	21506018
0	Unspecified	21506018
6719	Not applicable	21506018
380	In the formal sector	21506019
100	In the informal sector	21506019
65	Private household	21506019
4	Do not know	21506019
0	Unspecified	21506019
6335	Not applicable	21506019
358	In the formal sector	21506020
102	In the informal sector	21506020
90	Private household	21506020
1	Do not know	21506020
0	Unspecified	21506020
5195	Not applicable	21506020
527	In the formal sector	21506021
106	In the informal sector	21506021
47	Private household	21506021
3	Do not know	21506021
0	Unspecified	21506021
5454	Not applicable	21506021
275	In the formal sector	21506022
33	In the informal sector	21506022
18	Private household	21506022
3	Do not know	21506022
0	Unspecified	21506022
5602	Not applicable	21506022
270	In the formal sector	21506023
65	In the informal sector	21506023
49	Private household	21506023
2	Do not know	21506023
0	Unspecified	21506023
6822	Not applicable	21506023
172	In the formal sector	21506024
50	In the informal sector	21506024
14	Private household	21506024
1	Do not know	21506024
0	Unspecified	21506024
7463	Not applicable	21506024
244	In the formal sector	21506025
46	In the informal sector	21506025
12	Private household	21506025
14	Do not know	21506025
0	Unspecified	21506025
7118	Not applicable	21506025
250	In the formal sector	21506026
79	In the informal sector	21506026
41	Private household	21506026
10	Do not know	21506026
0	Unspecified	21506026
5043	Not applicable	21506026
1601	In the formal sector	21507001
505	In the informal sector	21507001
350	Private household	21507001
43	Do not know	21507001
0	Unspecified	21507001
8311	Not applicable	21507001
2120	In the formal sector	21507002
509	In the informal sector	21507002
468	Private household	21507002
31	Do not know	21507002
0	Unspecified	21507002
7095	Not applicable	21507002
2292	In the formal sector	21507003
474	In the informal sector	21507003
702	Private household	21507003
57	Do not know	21507003
0	Unspecified	21507003
8982	Not applicable	21507003
3137	In the formal sector	21507004
748	In the informal sector	21507004
421	Private household	21507004
44	Do not know	21507004
0	Unspecified	21507004
11545	Not applicable	21507004
1263	In the formal sector	21507005
181	In the informal sector	21507005
210	Private household	21507005
14	Do not know	21507005
0	Unspecified	21507005
6854	Not applicable	21507005
3885	In the formal sector	21507006
551	In the informal sector	21507006
753	Private household	21507006
30	Do not know	21507006
0	Unspecified	21507006
6978	Not applicable	21507006
632	In the formal sector	21507007
90	In the informal sector	21507007
62	Private household	21507007
14	Do not know	21507007
0	Unspecified	21507007
1220	Not applicable	21507007
2720	In the formal sector	21507008
426	In the informal sector	21507008
308	Private household	21507008
28	Do not know	21507008
0	Unspecified	21507008
8822	Not applicable	21507008
2251	In the formal sector	21507009
469	In the informal sector	21507009
533	Private household	21507009
24	Do not know	21507009
0	Unspecified	21507009
9667	Not applicable	21507009
652	In the formal sector	21507010
158	In the informal sector	21507010
98	Private household	21507010
12	Do not know	21507010
0	Unspecified	21507010
10277	Not applicable	21507010
3113	In the formal sector	21507011
819	In the informal sector	21507011
370	Private household	21507011
95	Do not know	21507011
0	Unspecified	21507011
19087	Not applicable	21507011
1816	In the formal sector	21507012
605	In the informal sector	21507012
525	Private household	21507012
35	Do not know	21507012
0	Unspecified	21507012
11228	Not applicable	21507012
1902	In the formal sector	21507013
410	In the informal sector	21507013
169	Private household	21507013
8	Do not know	21507013
0	Unspecified	21507013
7375	Not applicable	21507013
990	In the formal sector	21507014
190	In the informal sector	21507014
259	Private household	21507014
19	Do not know	21507014
0	Unspecified	21507014
10260	Not applicable	21507014
401	In the formal sector	21507015
132	In the informal sector	21507015
84	Private household	21507015
8	Do not know	21507015
0	Unspecified	21507015
10484	Not applicable	21507015
411	In the formal sector	21507016
112	In the informal sector	21507016
63	Private household	21507016
9	Do not know	21507016
0	Unspecified	21507016
12739	Not applicable	21507016
205	In the formal sector	21507017
34	In the informal sector	21507017
34	Private household	21507017
6	Do not know	21507017
0	Unspecified	21507017
11495	Not applicable	21507017
307	In the formal sector	21507018
85	In the informal sector	21507018
31	Private household	21507018
20	Do not know	21507018
0	Unspecified	21507018
11855	Not applicable	21507018
368	In the formal sector	21507019
149	In the informal sector	21507019
60	Private household	21507019
46	Do not know	21507019
0	Unspecified	21507019
13289	Not applicable	21507019
422	In the formal sector	21507020
129	In the informal sector	21507020
82	Private household	21507020
88	Do not know	21507020
0	Unspecified	21507020
14310	Not applicable	21507020
438	In the formal sector	21507021
133	In the informal sector	21507021
97	Private household	21507021
11	Do not know	21507021
0	Unspecified	21507021
13324	Not applicable	21507021
503	In the formal sector	21507022
123	In the informal sector	21507022
76	Private household	21507022
11	Do not know	21507022
0	Unspecified	21507022
13657	Not applicable	21507022
740	In the formal sector	21507023
235	In the informal sector	21507023
105	Private household	21507023
6	Do not know	21507023
0	Unspecified	21507023
14426	Not applicable	21507023
598	In the formal sector	21507024
102	In the informal sector	21507024
60	Private household	21507024
20	Do not know	21507024
0	Unspecified	21507024
15109	Not applicable	21507024
483	In the formal sector	21507025
66	In the informal sector	21507025
39	Private household	21507025
5	Do not know	21507025
0	Unspecified	21507025
19381	Not applicable	21507025
438	In the formal sector	21507026
49	In the informal sector	21507026
62	Private household	21507026
12	Do not know	21507026
0	Unspecified	21507026
11950	Not applicable	21507026
339	In the formal sector	21507027
35	In the informal sector	21507027
24	Private household	21507027
2	Do not know	21507027
0	Unspecified	21507027
12046	Not applicable	21507027
485	In the formal sector	21507028
133	In the informal sector	21507028
87	Private household	21507028
9	Do not know	21507028
0	Unspecified	21507028
11308	Not applicable	21507028
1246	In the formal sector	21507029
467	In the informal sector	21507029
128	Private household	21507029
16	Do not know	21507029
0	Unspecified	21507029
11893	Not applicable	21507029
1892	In the formal sector	21507030
785	In the informal sector	21507030
361	Private household	21507030
23	Do not know	21507030
0	Unspecified	21507030
9695	Not applicable	21507030
357	In the formal sector	21507031
77	In the informal sector	21507031
57	Private household	21507031
9	Do not know	21507031
0	Unspecified	21507031
11626	Not applicable	21507031
770	In the formal sector	21507032
290	In the informal sector	21507032
125	Private household	21507032
15	Do not know	21507032
0	Unspecified	21507032
12961	Not applicable	21507032
1316	In the formal sector	21507033
534	In the informal sector	21507033
292	Private household	21507033
56	Do not know	21507033
0	Unspecified	21507033
10797	Not applicable	21507033
392	In the formal sector	21507034
106	In the informal sector	21507034
38	Private household	21507034
32	Do not know	21507034
0	Unspecified	21507034
11158	Not applicable	21507034
1312	In the formal sector	21507035
178	In the informal sector	21507035
129	Private household	21507035
54	Do not know	21507035
0	Unspecified	21507035
10456	Not applicable	21507035
1062	In the formal sector	24401001
330	In the informal sector	24401001
202	Private household	24401001
53	Do not know	24401001
0	Unspecified	24401001
4787	Not applicable	24401001
1266	In the formal sector	24401002
516	In the informal sector	24401002
332	Private household	24401002
34	Do not know	24401002
0	Unspecified	24401002
11425	Not applicable	24401002
407	In the formal sector	24401003
180	In the informal sector	24401003
147	Private household	24401003
22	Do not know	24401003
0	Unspecified	24401003
7054	Not applicable	24401003
288	In the formal sector	24401004
74	In the informal sector	24401004
65	Private household	24401004
11	Do not know	24401004
0	Unspecified	24401004
7886	Not applicable	24401004
423	In the formal sector	24401005
445	In the informal sector	24401005
41	Private household	24401005
28	Do not know	24401005
0	Unspecified	24401005
7537	Not applicable	24401005
635	In the formal sector	24401006
225	In the informal sector	24401006
155	Private household	24401006
56	Do not know	24401006
0	Unspecified	24401006
6328	Not applicable	24401006
285	In the formal sector	24401007
76	In the informal sector	24401007
16	Private household	24401007
10	Do not know	24401007
0	Unspecified	24401007
7224	Not applicable	24401007
419	In the formal sector	24401008
146	In the informal sector	24401008
181	Private household	24401008
62	Do not know	24401008
0	Unspecified	24401008
8939	Not applicable	24401008
485	In the formal sector	24401009
86	In the informal sector	24401009
43	Private household	24401009
7	Do not know	24401009
0	Unspecified	24401009
5984	Not applicable	24401009
521	In the formal sector	24401010
242	In the informal sector	24401010
54	Private household	24401010
5	Do not know	24401010
0	Unspecified	24401010
8042	Not applicable	24401010
442	In the formal sector	24401011
193	In the informal sector	24401011
51	Private household	24401011
17	Do not know	24401011
0	Unspecified	24401011
10718	Not applicable	24401011
357	In the formal sector	24401012
75	In the informal sector	24401012
13	Private household	24401012
19	Do not know	24401012
0	Unspecified	24401012
6162	Not applicable	24401012
389	In the formal sector	24401013
92	In the informal sector	24401013
72	Private household	24401013
15	Do not know	24401013
0	Unspecified	24401013
7673	Not applicable	24401013
396	In the formal sector	24401014
52	In the informal sector	24401014
22	Private household	24401014
70	Do not know	24401014
0	Unspecified	24401014
6046	Not applicable	24401014
287	In the formal sector	24401015
47	In the informal sector	24401015
51	Private household	24401015
5	Do not know	24401015
0	Unspecified	24401015
6324	Not applicable	24401015
270	In the formal sector	24401016
65	In the informal sector	24401016
57	Private household	24401016
30	Do not know	24401016
0	Unspecified	24401016
5982	Not applicable	24401016
440	In the formal sector	24401017
124	In the informal sector	24401017
67	Private household	24401017
13	Do not know	24401017
0	Unspecified	24401017
7866	Not applicable	24401017
395	In the formal sector	24401018
87	In the informal sector	24401018
52	Private household	24401018
7	Do not know	24401018
0	Unspecified	24401018
6712	Not applicable	24401018
1281	In the formal sector	24401019
623	In the informal sector	24401019
168	Private household	24401019
18	Do not know	24401019
0	Unspecified	24401019
2034	Not applicable	24401019
1822	In the formal sector	24401020
659	In the informal sector	24401020
457	Private household	24401020
53	Do not know	24401020
0	Unspecified	24401020
8825	Not applicable	24401020
647	In the formal sector	24401021
164	In the informal sector	24401021
73	Private household	24401021
7	Do not know	24401021
0	Unspecified	24401021
6250	Not applicable	24401021
304	In the formal sector	24401022
114	In the informal sector	24401022
71	Private household	24401022
11	Do not know	24401022
0	Unspecified	24401022
5788	Not applicable	24401022
381	In the formal sector	24401023
143	In the informal sector	24401023
68	Private household	24401023
11	Do not know	24401023
0	Unspecified	24401023
5741	Not applicable	24401023
276	In the formal sector	24401024
49	In the informal sector	24401024
8	Private household	24401024
10	Do not know	24401024
0	Unspecified	24401024
5226	Not applicable	24401024
441	In the formal sector	24401025
126	In the informal sector	24401025
62	Private household	24401025
11	Do not know	24401025
0	Unspecified	24401025
6427	Not applicable	24401025
1145	In the formal sector	24401026
1171	In the informal sector	24401026
571	Private household	24401026
8	Do not know	24401026
0	Unspecified	24401026
5998	Not applicable	24401026
390	In the formal sector	24402001
193	In the informal sector	24402001
58	Private household	24402001
31	Do not know	24402001
0	Unspecified	24402001
7011	Not applicable	24402001
194	In the formal sector	24402002
6	In the informal sector	24402002
5	Private household	24402002
8	Do not know	24402002
0	Unspecified	24402002
5631	Not applicable	24402002
483	In the formal sector	24402003
231	In the informal sector	24402003
93	Private household	24402003
21	Do not know	24402003
0	Unspecified	24402003
8368	Not applicable	24402003
395	In the formal sector	24402004
116	In the informal sector	24402004
179	Private household	24402004
22	Do not know	24402004
0	Unspecified	24402004
6944	Not applicable	24402004
249	In the formal sector	24402005
58	In the informal sector	24402005
29	Private household	24402005
20	Do not know	24402005
0	Unspecified	24402005
5336	Not applicable	24402005
211	In the formal sector	24402006
60	In the informal sector	24402006
15	Private household	24402006
20	Do not know	24402006
0	Unspecified	24402006
5859	Not applicable	24402006
1318	In the formal sector	24402007
297	In the informal sector	24402007
100	Private household	24402007
39	Do not know	24402007
0	Unspecified	24402007
6283	Not applicable	24402007
342	In the formal sector	24402008
151	In the informal sector	24402008
64	Private household	24402008
8	Do not know	24402008
0	Unspecified	24402008
6014	Not applicable	24402008
341	In the formal sector	24402009
56	In the informal sector	24402009
39	Private household	24402009
7	Do not know	24402009
0	Unspecified	24402009
5566	Not applicable	24402009
193	In the formal sector	24402010
21	In the informal sector	24402010
25	Private household	24402010
16	Do not know	24402010
0	Unspecified	24402010
7212	Not applicable	24402010
311	In the formal sector	24402011
89	In the informal sector	24402011
26	Private household	24402011
29	Do not know	24402011
0	Unspecified	24402011
7801	Not applicable	24402011
346	In the formal sector	24402012
52	In the informal sector	24402012
34	Private household	24402012
39	Do not know	24402012
0	Unspecified	24402012
6208	Not applicable	24402012
349	In the formal sector	24402013
23	In the informal sector	24402013
20	Private household	24402013
15	Do not know	24402013
0	Unspecified	24402013
5859	Not applicable	24402013
308	In the formal sector	24402014
68	In the informal sector	24402014
23	Private household	24402014
14	Do not know	24402014
0	Unspecified	24402014
6794	Not applicable	24402014
417	In the formal sector	24402015
73	In the informal sector	24402015
121	Private household	24402015
8	Do not know	24402015
0	Unspecified	24402015
5960	Not applicable	24402015
1048	In the formal sector	24402016
337	In the informal sector	24402016
167	Private household	24402016
16	Do not know	24402016
0	Unspecified	24402016
7118	Not applicable	24402016
607	In the formal sector	24402017
167	In the informal sector	24402017
87	Private household	24402017
40	Do not know	24402017
0	Unspecified	24402017
7322	Not applicable	24402017
1926	In the formal sector	24402018
418	In the informal sector	24402018
94	Private household	24402018
16	Do not know	24402018
0	Unspecified	24402018
4211	Not applicable	24402018
562	In the formal sector	24402019
195	In the informal sector	24402019
71	Private household	24402019
2	Do not know	24402019
0	Unspecified	24402019
7358	Not applicable	24402019
603	In the formal sector	24402020
136	In the informal sector	24402020
140	Private household	24402020
27	Do not know	24402020
0	Unspecified	24402020
7013	Not applicable	24402020
440	In the formal sector	24402021
124	In the informal sector	24402021
81	Private household	24402021
13	Do not know	24402021
0	Unspecified	24402021
5879	Not applicable	24402021
358	In the formal sector	24402022
67	In the informal sector	24402022
37	Private household	24402022
9	Do not know	24402022
0	Unspecified	24402022
6529	Not applicable	24402022
581	In the formal sector	24402023
109	In the informal sector	24402023
43	Private household	24402023
6	Do not know	24402023
0	Unspecified	24402023
5993	Not applicable	24402023
355	In the formal sector	24402024
96	In the informal sector	24402024
55	Private household	24402024
6	Do not know	24402024
0	Unspecified	24402024
6554	Not applicable	24402024
296	In the formal sector	24402025
87	In the informal sector	24402025
96	Private household	24402025
5	Do not know	24402025
0	Unspecified	24402025
5863	Not applicable	24402025
294	In the formal sector	24402026
96	In the informal sector	24402026
79	Private household	24402026
7	Do not know	24402026
0	Unspecified	24402026
6797	Not applicable	24402026
362	In the formal sector	24402027
122	In the informal sector	24402027
35	Private household	24402027
6	Do not know	24402027
0	Unspecified	24402027
5148	Not applicable	24402027
1405	In the formal sector	24403001
364	In the informal sector	24403001
425	Private household	24403001
68	Do not know	24403001
0	Unspecified	24403001
5711	Not applicable	24403001
252	In the formal sector	24403002
52	In the informal sector	24403002
13	Private household	24403002
2	Do not know	24403002
0	Unspecified	24403002
7386	Not applicable	24403002
311	In the formal sector	24403003
101	In the informal sector	24403003
102	Private household	24403003
6	Do not know	24403003
0	Unspecified	24403003
7323	Not applicable	24403003
287	In the formal sector	24403004
127	In the informal sector	24403004
114	Private household	24403004
9	Do not know	24403004
0	Unspecified	24403004
6335	Not applicable	24403004
398	In the formal sector	24403005
96	In the informal sector	24403005
61	Private household	24403005
8	Do not know	24403005
0	Unspecified	24403005
7714	Not applicable	24403005
525	In the formal sector	24403006
109	In the informal sector	24403006
96	Private household	24403006
25	Do not know	24403006
0	Unspecified	24403006
11063	Not applicable	24403006
484	In the formal sector	24403007
155	In the informal sector	24403007
50	Private household	24403007
5	Do not know	24403007
0	Unspecified	24403007
7673	Not applicable	24403007
355	In the formal sector	24403008
115	In the informal sector	24403008
73	Private household	24403008
20	Do not know	24403008
0	Unspecified	24403008
8496	Not applicable	24403008
438	In the formal sector	24403009
208	In the informal sector	24403009
193	Private household	24403009
5	Do not know	24403009
0	Unspecified	24403009
11470	Not applicable	24403009
260	In the formal sector	24403010
37	In the informal sector	24403010
20	Private household	24403010
9	Do not know	24403010
0	Unspecified	24403010
9346	Not applicable	24403010
263	In the formal sector	24403011
18	In the informal sector	24403011
38	Private household	24403011
5	Do not know	24403011
0	Unspecified	24403011
8100	Not applicable	24403011
155	In the formal sector	24403012
18	In the informal sector	24403012
5	Private household	24403012
9	Do not know	24403012
0	Unspecified	24403012
8278	Not applicable	24403012
843	In the formal sector	24403013
243	In the informal sector	24403013
78	Private household	24403013
10	Do not know	24403013
0	Unspecified	24403013
6998	Not applicable	24403013
277	In the formal sector	24403014
72	In the informal sector	24403014
44	Private household	24403014
15	Do not know	24403014
0	Unspecified	24403014
9783	Not applicable	24403014
262	In the formal sector	24403015
30	In the informal sector	24403015
39	Private household	24403015
1	Do not know	24403015
0	Unspecified	24403015
9046	Not applicable	24403015
226	In the formal sector	24403016
41	In the informal sector	24403016
20	Private household	24403016
5	Do not know	24403016
0	Unspecified	24403016
8774	Not applicable	24403016
747	In the formal sector	24403017
200	In the informal sector	24403017
118	Private household	24403017
12	Do not know	24403017
0	Unspecified	24403017
10804	Not applicable	24403017
398	In the formal sector	24403018
98	In the informal sector	24403018
51	Private household	24403018
27	Do not know	24403018
0	Unspecified	24403018
8847	Not applicable	24403018
370	In the formal sector	24403019
57	In the informal sector	24403019
32	Private household	24403019
18	Do not know	24403019
0	Unspecified	24403019
10238	Not applicable	24403019
499	In the formal sector	24403020
146	In the informal sector	24403020
52	Private household	24403020
8	Do not know	24403020
0	Unspecified	24403020
9580	Not applicable	24403020
325	In the formal sector	24403021
69	In the informal sector	24403021
32	Private household	24403021
0	Do not know	24403021
0	Unspecified	24403021
6484	Not applicable	24403021
332	In the formal sector	24403022
40	In the informal sector	24403022
24	Private household	24403022
8	Do not know	24403022
0	Unspecified	24403022
8640	Not applicable	24403022
834	In the formal sector	24403023
327	In the informal sector	24403023
216	Private household	24403023
20	Do not know	24403023
0	Unspecified	24403023
10731	Not applicable	24403023
730	In the formal sector	24403024
250	In the informal sector	24403024
549	Private household	24403024
45	Do not know	24403024
0	Unspecified	24403024
5278	Not applicable	24403024
363	In the formal sector	24403025
45	In the informal sector	24403025
12	Private household	24403025
15	Do not know	24403025
0	Unspecified	24403025
11382	Not applicable	24403025
422	In the formal sector	24403026
136	In the informal sector	24403026
114	Private household	24403026
12	Do not know	24403026
0	Unspecified	24403026
6988	Not applicable	24403026
284	In the formal sector	24403027
81	In the informal sector	24403027
111	Private household	24403027
2	Do not know	24403027
0	Unspecified	24403027
8639	Not applicable	24403027
130	In the formal sector	24403028
18	In the informal sector	24403028
8	Private household	24403028
3	Do not know	24403028
0	Unspecified	24403028
6764	Not applicable	24403028
242	In the formal sector	24403029
67	In the informal sector	24403029
45	Private household	24403029
5	Do not know	24403029
0	Unspecified	24403029
8193	Not applicable	24403029
280	In the formal sector	24403030
81	In the informal sector	24403030
86	Private household	24403030
11	Do not know	24403030
0	Unspecified	24403030
8379	Not applicable	24403030
344	In the formal sector	24403031
90	In the informal sector	24403031
112	Private household	24403031
0	Do not know	24403031
0	Unspecified	24403031
7612	Not applicable	24403031
189	In the formal sector	24404001
25	In the informal sector	24404001
18	Private household	24404001
9	Do not know	24404001
0	Unspecified	24404001
5986	Not applicable	24404001
202	In the formal sector	24404002
15	In the informal sector	24404002
34	Private household	24404002
14	Do not know	24404002
0	Unspecified	24404002
6738	Not applicable	24404002
171	In the formal sector	24404003
24	In the informal sector	24404003
8	Private household	24404003
7	Do not know	24404003
0	Unspecified	24404003
6070	Not applicable	24404003
306	In the formal sector	24404004
28	In the informal sector	24404004
41	Private household	24404004
8	Do not know	24404004
0	Unspecified	24404004
5608	Not applicable	24404004
443	In the formal sector	24404005
22	In the informal sector	24404005
4	Private household	24404005
5	Do not know	24404005
0	Unspecified	24404005
5654	Not applicable	24404005
160	In the formal sector	24404006
28	In the informal sector	24404006
7	Private household	24404006
2	Do not know	24404006
0	Unspecified	24404006
6611	Not applicable	24404006
303	In the formal sector	24404007
111	In the informal sector	24404007
106	Private household	24404007
5	Do not know	24404007
0	Unspecified	24404007
7712	Not applicable	24404007
193	In the formal sector	24404008
36	In the informal sector	24404008
33	Private household	24404008
2	Do not know	24404008
0	Unspecified	24404008
7128	Not applicable	24404008
869	In the formal sector	24404009
261	In the informal sector	24404009
18	Private household	24404009
21	Do not know	24404009
0	Unspecified	24404009
5750	Not applicable	24404009
124	In the formal sector	24404010
23	In the informal sector	24404010
17	Private household	24404010
9	Do not know	24404010
0	Unspecified	24404010
5095	Not applicable	24404010
294	In the formal sector	24404011
48	In the informal sector	24404011
33	Private household	24404011
10	Do not know	24404011
0	Unspecified	24404011
6041	Not applicable	24404011
291	In the formal sector	24404012
51	In the informal sector	24404012
19	Private household	24404012
2	Do not know	24404012
0	Unspecified	24404012
6499	Not applicable	24404012
417	In the formal sector	24404013
103	In the informal sector	24404013
37	Private household	24404013
13	Do not know	24404013
0	Unspecified	24404013
8313	Not applicable	24404013
267	In the formal sector	24404014
48	In the informal sector	24404014
76	Private household	24404014
22	Do not know	24404014
0	Unspecified	24404014
6181	Not applicable	24404014
227	In the formal sector	24404015
39	In the informal sector	24404015
22	Private household	24404015
5	Do not know	24404015
0	Unspecified	24404015
4944	Not applicable	24404015
359	In the formal sector	24404016
87	In the informal sector	24404016
80	Private household	24404016
35	Do not know	24404016
0	Unspecified	24404016
8292	Not applicable	24404016
225	In the formal sector	24404017
32	In the informal sector	24404017
26	Private household	24404017
15	Do not know	24404017
0	Unspecified	24404017
6890	Not applicable	24404017
166	In the formal sector	24404018
46	In the informal sector	24404018
28	Private household	24404018
11	Do not know	24404018
0	Unspecified	24404018
7431	Not applicable	24404018
2499	In the formal sector	29200001
685	In the informal sector	29200001
202	Private household	29200001
39	Do not know	29200001
0	Unspecified	29200001
9660	Not applicable	29200001
1682	In the formal sector	29200002
629	In the informal sector	29200002
602	Private household	29200002
41	Do not know	29200002
0	Unspecified	29200002
8571	Not applicable	29200002
4814	In the formal sector	29200003
676	In the informal sector	29200003
849	Private household	29200003
109	Do not know	29200003
0	Unspecified	29200003
11504	Not applicable	29200003
5504	In the formal sector	29200004
318	In the informal sector	29200004
673	Private household	29200004
117	Do not know	29200004
0	Unspecified	29200004
6252	Not applicable	29200004
2528	In the formal sector	29200005
427	In the informal sector	29200005
630	Private household	29200005
253	Do not know	29200005
0	Unspecified	29200005
11224	Not applicable	29200005
2621	In the formal sector	29200006
409	In the informal sector	29200006
425	Private household	29200006
85	Do not know	29200006
0	Unspecified	29200006
10603	Not applicable	29200006
2192	In the formal sector	29200007
417	In the informal sector	29200007
203	Private household	29200007
33	Do not know	29200007
0	Unspecified	29200007
8842	Not applicable	29200007
1993	In the formal sector	29200008
364	In the informal sector	29200008
257	Private household	29200008
62	Do not know	29200008
0	Unspecified	29200008
7787	Not applicable	29200008
5010	In the formal sector	29200009
852	In the informal sector	29200009
810	Private household	29200009
152	Do not know	29200009
0	Unspecified	29200009
11721	Not applicable	29200009
3754	In the formal sector	29200010
468	In the informal sector	29200010
302	Private household	29200010
104	Do not know	29200010
0	Unspecified	29200010
14554	Not applicable	29200010
2098	In the formal sector	29200011
354	In the informal sector	29200011
194	Private household	29200011
34	Do not know	29200011
0	Unspecified	29200011
12858	Not applicable	29200011
1995	In the formal sector	29200012
261	In the informal sector	29200012
411	Private household	29200012
111	Do not know	29200012
0	Unspecified	29200012
12337	Not applicable	29200012
3969	In the formal sector	29200013
1590	In the informal sector	29200013
1327	Private household	29200013
302	Do not know	29200013
0	Unspecified	29200013
18757	Not applicable	29200013
1195	In the formal sector	29200014
297	In the informal sector	29200014
209	Private household	29200014
20	Do not know	29200014
0	Unspecified	29200014
7763	Not applicable	29200014
3492	In the formal sector	29200015
358	In the informal sector	29200015
386	Private household	29200015
156	Do not know	29200015
0	Unspecified	29200015
7519	Not applicable	29200015
7737	In the formal sector	29200016
1033	In the informal sector	29200016
1231	Private household	29200016
174	Do not know	29200016
0	Unspecified	29200016
17259	Not applicable	29200016
2260	In the formal sector	29200017
344	In the informal sector	29200017
493	Private household	29200017
14	Do not know	29200017
0	Unspecified	29200017
13463	Not applicable	29200017
4313	In the formal sector	29200018
331	In the informal sector	29200018
484	Private household	29200018
121	Do not know	29200018
0	Unspecified	29200018
6356	Not applicable	29200018
3221	In the formal sector	29200019
398	In the informal sector	29200019
179	Private household	29200019
51	Do not know	29200019
0	Unspecified	29200019
8610	Not applicable	29200019
1519	In the formal sector	29200020
165	In the informal sector	29200020
213	Private household	29200020
33	Do not know	29200020
0	Unspecified	29200020
9166	Not applicable	29200020
2663	In the formal sector	29200021
380	In the informal sector	29200021
269	Private household	29200021
34	Do not know	29200021
0	Unspecified	29200021
12211	Not applicable	29200021
2910	In the formal sector	29200022
420	In the informal sector	29200022
289	Private household	29200022
34	Do not know	29200022
0	Unspecified	29200022
11790	Not applicable	29200022
2949	In the formal sector	29200023
450	In the informal sector	29200023
432	Private household	29200023
49	Do not know	29200023
0	Unspecified	29200023
11557	Not applicable	29200023
1412	In the formal sector	29200024
238	In the informal sector	29200024
298	Private household	29200024
46	Do not know	29200024
0	Unspecified	29200024
12496	Not applicable	29200024
2297	In the formal sector	29200025
287	In the informal sector	29200025
266	Private household	29200025
4	Do not know	29200025
0	Unspecified	29200025
10062	Not applicable	29200025
1383	In the formal sector	29200026
491	In the informal sector	29200026
860	Private household	29200026
162	Do not know	29200026
0	Unspecified	29200026
14051	Not applicable	29200026
3849	In the formal sector	29200027
515	In the informal sector	29200027
609	Private household	29200027
138	Do not know	29200027
0	Unspecified	29200027
6162	Not applicable	29200027
4716	In the formal sector	29200028
835	In the informal sector	29200028
1052	Private household	29200028
94	Do not know	29200028
0	Unspecified	29200028
9555	Not applicable	29200028
5429	In the formal sector	29200029
698	In the informal sector	29200029
1555	Private household	29200029
175	Do not know	29200029
0	Unspecified	29200029
12711	Not applicable	29200029
1455	In the formal sector	29200030
279	In the informal sector	29200030
489	Private household	29200030
23	Do not know	29200030
0	Unspecified	29200030
10716	Not applicable	29200030
3859	In the formal sector	29200031
761	In the informal sector	29200031
1194	Private household	29200031
288	Do not know	29200031
0	Unspecified	29200031
14960	Not applicable	29200031
862	In the formal sector	29200032
182	In the informal sector	29200032
108	Private household	29200032
61	Do not know	29200032
0	Unspecified	29200032
13715	Not applicable	29200032
1050	In the formal sector	29200033
211	In the informal sector	29200033
146	Private household	29200033
71	Do not know	29200033
0	Unspecified	29200033
14467	Not applicable	29200033
1262	In the formal sector	29200034
173	In the informal sector	29200034
107	Private household	29200034
32	Do not know	29200034
0	Unspecified	29200034
11426	Not applicable	29200034
3081	In the formal sector	29200035
544	In the informal sector	29200035
713	Private household	29200035
28	Do not know	29200035
0	Unspecified	29200035
9745	Not applicable	29200035
1602	In the formal sector	29200036
414	In the informal sector	29200036
187	Private household	29200036
19	Do not know	29200036
0	Unspecified	29200036
13482	Not applicable	29200036
3432	In the formal sector	29200037
490	In the informal sector	29200037
494	Private household	29200037
42	Do not know	29200037
0	Unspecified	29200037
9312	Not applicable	29200037
896	In the formal sector	29200038
395	In the informal sector	29200038
150	Private household	29200038
63	Do not know	29200038
0	Unspecified	29200038
14045	Not applicable	29200038
2651	In the formal sector	29200039
547	In the informal sector	29200039
254	Private household	29200039
63	Do not know	29200039
0	Unspecified	29200039
12787	Not applicable	29200039
1012	In the formal sector	29200040
206	In the informal sector	29200040
207	Private household	29200040
14	Do not know	29200040
0	Unspecified	29200040
10846	Not applicable	29200040
2745	In the formal sector	29200041
417	In the informal sector	29200041
253	Private household	29200041
22	Do not know	29200041
0	Unspecified	29200041
9112	Not applicable	29200041
1691	In the formal sector	29200042
355	In the informal sector	29200042
286	Private household	29200042
19	Do not know	29200042
0	Unspecified	29200042
12228	Not applicable	29200042
3458	In the formal sector	29200043
409	In the informal sector	29200043
218	Private household	29200043
36	Do not know	29200043
0	Unspecified	29200043
14543	Not applicable	29200043
3598	In the formal sector	29200044
729	In the informal sector	29200044
485	Private household	29200044
120	Do not know	29200044
0	Unspecified	29200044
16650	Not applicable	29200044
1622	In the formal sector	29200045
339	In the informal sector	29200045
420	Private household	29200045
75	Do not know	29200045
0	Unspecified	29200045
10352	Not applicable	29200045
4756	In the formal sector	29200046
777	In the informal sector	29200046
848	Private household	29200046
168	Do not know	29200046
0	Unspecified	29200046
12987	Not applicable	29200046
3223	In the formal sector	29200047
535	In the informal sector	29200047
467	Private household	29200047
76	Do not know	29200047
0	Unspecified	29200047
9437	Not applicable	29200047
1661	In the formal sector	29200048
228	In the informal sector	29200048
265	Private household	29200048
16	Do not know	29200048
0	Unspecified	29200048
9600	Not applicable	29200048
1025	In the formal sector	29200049
203	In the informal sector	29200049
116	Private household	29200049
26	Do not know	29200049
0	Unspecified	29200049
11311	Not applicable	29200049
1492	In the formal sector	29200050
329	In the informal sector	29200050
247	Private household	29200050
20	Do not know	29200050
0	Unspecified	29200050
9039	Not applicable	29200050
5543	In the formal sector	29300001
349	In the informal sector	29300001
948	Private household	29300001
118	Do not know	29300001
0	Unspecified	29300001
12187	Not applicable	29300001
6624	In the formal sector	29300002
672	In the informal sector	29300002
935	Private household	29300002
161	Do not know	29300002
0	Unspecified	29300002
12635	Not applicable	29300002
5762	In the formal sector	29300003
451	In the informal sector	29300003
671	Private household	29300003
202	Do not know	29300003
0	Unspecified	29300003
8298	Not applicable	29300003
4417	In the formal sector	29300004
1020	In the informal sector	29300004
1764	Private household	29300004
234	Do not know	29300004
0	Unspecified	29300004
18379	Not applicable	29300004
6185	In the formal sector	29300005
732	In the informal sector	29300005
722	Private household	29300005
128	Do not know	29300005
0	Unspecified	29300005
10458	Not applicable	29300005
5412	In the formal sector	29300006
707	In the informal sector	29300006
588	Private household	29300006
131	Do not know	29300006
0	Unspecified	29300006
6962	Not applicable	29300006
4962	In the formal sector	29300007
847	In the informal sector	29300007
647	Private household	29300007
177	Do not know	29300007
0	Unspecified	29300007
11124	Not applicable	29300007
8550	In the formal sector	29300008
668	In the informal sector	29300008
768	Private household	29300008
253	Do not know	29300008
0	Unspecified	29300008
10217	Not applicable	29300008
6227	In the formal sector	29300009
357	In the informal sector	29300009
433	Private household	29300009
141	Do not know	29300009
0	Unspecified	29300009
8708	Not applicable	29300009
4598	In the formal sector	29300010
214	In the informal sector	29300010
288	Private household	29300010
203	Do not know	29300010
0	Unspecified	29300010
13494	Not applicable	29300010
4371	In the formal sector	29300011
592	In the informal sector	29300011
260	Private household	29300011
35	Do not know	29300011
0	Unspecified	29300011
11299	Not applicable	29300011
9010	In the formal sector	29300012
499	In the informal sector	29300012
772	Private household	29300012
281	Do not know	29300012
0	Unspecified	29300012
16373	Not applicable	29300012
2070	In the formal sector	29300013
521	In the informal sector	29300013
117	Private household	29300013
108	Do not know	29300013
0	Unspecified	29300013
17578	Not applicable	29300013
2099	In the formal sector	29300014
263	In the informal sector	29300014
168	Private household	29300014
60	Do not know	29300014
0	Unspecified	29300014
10444	Not applicable	29300014
2144	In the formal sector	29300015
278	In the informal sector	29300015
223	Private household	29300015
141	Do not know	29300015
0	Unspecified	29300015
12501	Not applicable	29300015
1296	In the formal sector	29300016
211	In the informal sector	29300016
211	Private household	29300016
47	Do not know	29300016
0	Unspecified	29300016
7421	Not applicable	29300016
2382	In the formal sector	29300017
233	In the informal sector	29300017
253	Private household	29300017
66	Do not know	29300017
0	Unspecified	29300017
12676	Not applicable	29300017
2485	In the formal sector	29300018
207	In the informal sector	29300018
272	Private household	29300018
65	Do not know	29300018
0	Unspecified	29300018
13908	Not applicable	29300018
1554	In the formal sector	29300019
174	In the informal sector	29300019
197	Private household	29300019
44	Do not know	29300019
0	Unspecified	29300019
9576	Not applicable	29300019
1843	In the formal sector	29300020
149	In the informal sector	29300020
255	Private household	29300020
14	Do not know	29300020
0	Unspecified	29300020
9132	Not applicable	29300020
1910	In the formal sector	29300021
315	In the informal sector	29300021
179	Private household	29300021
38	Do not know	29300021
0	Unspecified	29300021
11496	Not applicable	29300021
2061	In the formal sector	29300022
441	In the informal sector	29300022
252	Private household	29300022
129	Do not know	29300022
0	Unspecified	29300022
12699	Not applicable	29300022
2196	In the formal sector	29300023
292	In the informal sector	29300023
519	Private household	29300023
105	Do not know	29300023
0	Unspecified	29300023
10473	Not applicable	29300023
1811	In the formal sector	29300024
358	In the informal sector	29300024
265	Private household	29300024
101	Do not know	29300024
0	Unspecified	29300024
12070	Not applicable	29300024
2201	In the formal sector	29300025
271	In the informal sector	29300025
237	Private household	29300025
27	Do not know	29300025
0	Unspecified	29300025
14154	Not applicable	29300025
1291	In the formal sector	29300026
261	In the informal sector	29300026
469	Private household	29300026
70	Do not know	29300026
0	Unspecified	29300026
9498	Not applicable	29300026
1440	In the formal sector	29300027
389	In the informal sector	29300027
542	Private household	29300027
167	Do not know	29300027
0	Unspecified	29300027
11917	Not applicable	29300027
2995	In the formal sector	29300028
264	In the informal sector	29300028
296	Private household	29300028
118	Do not know	29300028
0	Unspecified	29300028
14006	Not applicable	29300028
4592	In the formal sector	29300029
539	In the informal sector	29300029
326	Private household	29300029
68	Do not know	29300029
0	Unspecified	29300029
15000	Not applicable	29300029
3163	In the formal sector	29300030
226	In the informal sector	29300030
260	Private household	29300030
36	Do not know	29300030
0	Unspecified	29300030
11272	Not applicable	29300030
4545	In the formal sector	29300031
391	In the informal sector	29300031
683	Private household	29300031
67	Do not know	29300031
0	Unspecified	29300031
15130	Not applicable	29300031
5325	In the formal sector	29300032
550	In the informal sector	29300032
320	Private household	29300032
208	Do not know	29300032
0	Unspecified	29300032
16423	Not applicable	29300032
2054	In the formal sector	29300033
538	In the informal sector	29300033
427	Private household	29300033
131	Do not know	29300033
0	Unspecified	29300033
14479	Not applicable	29300033
4405	In the formal sector	29300034
343	In the informal sector	29300034
152	Private household	29300034
92	Do not know	29300034
0	Unspecified	29300034
16656	Not applicable	29300034
4562	In the formal sector	29300035
258	In the informal sector	29300035
84	Private household	29300035
69	Do not know	29300035
0	Unspecified	29300035
14706	Not applicable	29300035
3087	In the formal sector	29300036
253	In the informal sector	29300036
313	Private household	29300036
69	Do not know	29300036
0	Unspecified	29300036
10014	Not applicable	29300036
2680	In the formal sector	29300037
502	In the informal sector	29300037
216	Private household	29300037
151	Do not know	29300037
0	Unspecified	29300037
15960	Not applicable	29300037
2699	In the formal sector	29300038
312	In the informal sector	29300038
315	Private household	29300038
170	Do not know	29300038
0	Unspecified	29300038
14136	Not applicable	29300038
6748	In the formal sector	29300039
378	In the informal sector	29300039
721	Private household	29300039
144	Do not know	29300039
0	Unspecified	29300039
9316	Not applicable	29300039
6799	In the formal sector	29300040
795	In the informal sector	29300040
1960	Private household	29300040
211	Do not know	29300040
0	Unspecified	29300040
17250	Not applicable	29300040
8080	In the formal sector	29300041
1234	In the informal sector	29300041
1503	Private household	29300041
232	Do not know	29300041
0	Unspecified	29300041
38687	Not applicable	29300041
1976	In the formal sector	29300042
286	In the informal sector	29300042
361	Private household	29300042
109	Do not know	29300042
0	Unspecified	29300042
16459	Not applicable	29300042
1941	In the formal sector	29300043
313	In the informal sector	29300043
328	Private household	29300043
90	Do not know	29300043
0	Unspecified	29300043
13720	Not applicable	29300043
3560	In the formal sector	29300044
414	In the informal sector	29300044
273	Private household	29300044
116	Do not know	29300044
0	Unspecified	29300044
21789	Not applicable	29300044
3021	In the formal sector	29300045
497	In the informal sector	29300045
411	Private household	29300045
59	Do not know	29300045
0	Unspecified	29300045
16847	Not applicable	29300045
2639	In the formal sector	29300046
137	In the informal sector	29300046
202	Private household	29300046
111	Do not know	29300046
0	Unspecified	29300046
15314	Not applicable	29300046
1710	In the formal sector	29300047
220	In the informal sector	29300047
216	Private household	29300047
127	Do not know	29300047
0	Unspecified	29300047
12973	Not applicable	29300047
2735	In the formal sector	29300048
200	In the informal sector	29300048
264	Private household	29300048
104	Do not know	29300048
0	Unspecified	29300048
12896	Not applicable	29300048
4220	In the formal sector	29300049
246	In the informal sector	29300049
195	Private household	29300049
38	Do not know	29300049
0	Unspecified	29300049
13896	Not applicable	29300049
3603	In the formal sector	29300050
357	In the informal sector	29300050
613	Private household	29300050
66	Do not know	29300050
0	Unspecified	29300050
20504	Not applicable	29300050
8756	In the formal sector	29300051
383	In the informal sector	29300051
661	Private household	29300051
84	Do not know	29300051
0	Unspecified	29300051
14362	Not applicable	29300051
5314	In the formal sector	29300052
774	In the informal sector	29300052
893	Private household	29300052
187	Do not know	29300052
0	Unspecified	29300052
16414	Not applicable	29300052
6855	In the formal sector	29300053
785	In the informal sector	29300053
863	Private household	29300053
207	Do not know	29300053
0	Unspecified	29300053
23042	Not applicable	29300053
3290	In the formal sector	29300054
736	In the informal sector	29300054
817	Private household	29300054
115	Do not know	29300054
0	Unspecified	29300054
20286	Not applicable	29300054
3249	In the formal sector	29300055
749	In the informal sector	29300055
887	Private household	29300055
142	Do not know	29300055
0	Unspecified	29300055
21444	Not applicable	29300055
3413	In the formal sector	29300056
540	In the informal sector	29300056
711	Private household	29300056
182	Do not know	29300056
0	Unspecified	29300056
19333	Not applicable	29300056
2554	In the formal sector	29300057
448	In the informal sector	29300057
344	Private household	29300057
89	Do not know	29300057
0	Unspecified	29300057
13148	Not applicable	29300057
3050	In the formal sector	29300058
216	In the informal sector	29300058
487	Private household	29300058
72	Do not know	29300058
0	Unspecified	29300058
13618	Not applicable	29300058
3949	In the formal sector	29300059
312	In the informal sector	29300059
295	Private household	29300059
52	Do not know	29300059
0	Unspecified	29300059
12211	Not applicable	29300059
4799	In the formal sector	29300060
582	In the informal sector	29300060
861	Private household	29300060
256	Do not know	29300060
0	Unspecified	29300060
18644	Not applicable	29300060
665	In the formal sector	41601001
589	In the informal sector	41601001
71	Private household	41601001
57	Do not know	41601001
0	Unspecified	41601001
4507	Not applicable	41601001
936	In the formal sector	41601002
169	In the informal sector	41601002
206	Private household	41601002
13	Do not know	41601002
0	Unspecified	41601002
5411	Not applicable	41601002
1162	In the formal sector	41601003
1302	In the informal sector	41601003
307	Private household	41601003
112	Do not know	41601003
0	Unspecified	41601003
4389	Not applicable	41601003
542	In the formal sector	41601004
159	In the informal sector	41601004
80	Private household	41601004
35	Do not know	41601004
0	Unspecified	41601004
4918	Not applicable	41601004
947	In the formal sector	41601005
407	In the informal sector	41601005
172	Private household	41601005
12	Do not know	41601005
0	Unspecified	41601005
5119	Not applicable	41601005
874	In the formal sector	41601006
312	In the informal sector	41601006
149	Private household	41601006
69	Do not know	41601006
0	Unspecified	41601006
4936	Not applicable	41601006
818	In the formal sector	41602001
437	In the informal sector	41602001
373	Private household	41602001
85	Do not know	41602001
0	Unspecified	41602001
4518	Not applicable	41602001
1271	In the formal sector	41602002
522	In the informal sector	41602002
434	Private household	41602002
26	Do not know	41602002
0	Unspecified	41602002
4621	Not applicable	41602002
713	In the formal sector	41602003
202	In the informal sector	41602003
229	Private household	41602003
10	Do not know	41602003
0	Unspecified	41602003
5582	Not applicable	41602003
838	In the formal sector	41602004
204	In the informal sector	41602004
174	Private household	41602004
17	Do not know	41602004
0	Unspecified	41602004
4449	Not applicable	41602004
826	In the formal sector	41602005
640	In the informal sector	41602005
147	Private household	41602005
6	Do not know	41602005
0	Unspecified	41602005
4119	Not applicable	41602005
813	In the formal sector	41602006
89	In the informal sector	41602006
105	Private household	41602006
19	Do not know	41602006
0	Unspecified	41602006
4704	Not applicable	41602006
565	In the formal sector	41602007
546	In the informal sector	41602007
392	Private household	41602007
50	Do not know	41602007
0	Unspecified	41602007
4166	Not applicable	41602007
679	In the formal sector	41602008
153	In the informal sector	41602008
251	Private household	41602008
24	Do not know	41602008
0	Unspecified	41602008
5353	Not applicable	41602008
430	In the formal sector	41603001
155	In the informal sector	41603001
117	Private household	41603001
14	Do not know	41603001
0	Unspecified	41603001
5464	Not applicable	41603001
948	In the formal sector	41603002
340	In the informal sector	41603002
454	Private household	41603002
49	Do not know	41603002
0	Unspecified	41603002
5579	Not applicable	41603002
1061	In the formal sector	41603003
297	In the informal sector	41603003
176	Private household	41603003
7	Do not know	41603003
0	Unspecified	41603003
4766	Not applicable	41603003
280	In the formal sector	41603004
254	In the informal sector	41603004
242	Private household	41603004
23	Do not know	41603004
0	Unspecified	41603004
2183	Not applicable	41603004
1044	In the formal sector	41603005
77	In the informal sector	41603005
71	Private household	41603005
1	Do not know	41603005
0	Unspecified	41603005
3570	Not applicable	41603005
807	In the formal sector	41603006
515	In the informal sector	41603006
483	Private household	41603006
55	Do not know	41603006
0	Unspecified	41603006
4684	Not applicable	41603006
948	In the formal sector	41604001
282	In the informal sector	41604001
421	Private household	41604001
45	Do not know	41604001
0	Unspecified	41604001
6750	Not applicable	41604001
568	In the formal sector	41604002
279	In the informal sector	41604002
209	Private household	41604002
19	Do not know	41604002
0	Unspecified	41604002
4250	Not applicable	41604002
720	In the formal sector	41604003
175	In the informal sector	41604003
450	Private household	41604003
14	Do not know	41604003
0	Unspecified	41604003
4112	Not applicable	41604003
550	In the formal sector	41604004
74	In the informal sector	41604004
73	Private household	41604004
3	Do not know	41604004
0	Unspecified	41604004
4369	Not applicable	41604004
863	In the formal sector	41801001
137	In the informal sector	41801001
140	Private household	41801001
28	Do not know	41801001
0	Unspecified	41801001
3620	Not applicable	41801001
1080	In the formal sector	41801002
333	In the informal sector	41801002
386	Private household	41801002
180	Do not know	41801002
0	Unspecified	41801002
5673	Not applicable	41801002
557	In the formal sector	41801003
198	In the informal sector	41801003
526	Private household	41801003
91	Do not know	41801003
0	Unspecified	41801003
5485	Not applicable	41801003
566	In the formal sector	41801004
96	In the informal sector	41801004
204	Private household	41801004
24	Do not know	41801004
0	Unspecified	41801004
3521	Not applicable	41801004
777	In the formal sector	41801005
128	In the informal sector	41801005
278	Private household	41801005
12	Do not know	41801005
0	Unspecified	41801005
8909	Not applicable	41801005
437	In the formal sector	41801006
125	In the informal sector	41801006
153	Private household	41801006
13	Do not know	41801006
0	Unspecified	41801006
4494	Not applicable	41801006
929	In the formal sector	41801007
101	In the informal sector	41801007
129	Private household	41801007
35	Do not know	41801007
0	Unspecified	41801007
5409	Not applicable	41801007
418	In the formal sector	41801008
77	In the informal sector	41801008
73	Private household	41801008
87	Do not know	41801008
0	Unspecified	41801008
4159	Not applicable	41801008
1080	In the formal sector	41801009
203	In the informal sector	41801009
177	Private household	41801009
63	Do not know	41801009
0	Unspecified	41801009
6249	Not applicable	41801009
677	In the formal sector	41801010
58	In the informal sector	41801010
195	Private household	41801010
50	Do not know	41801010
0	Unspecified	41801010
4131	Not applicable	41801010
851	In the formal sector	41802001
366	In the informal sector	41802001
501	Private household	41802001
67	Do not know	41802001
0	Unspecified	41802001
5297	Not applicable	41802001
949	In the formal sector	41802002
152	In the informal sector	41802002
145	Private household	41802002
20	Do not know	41802002
0	Unspecified	41802002
7243	Not applicable	41802002
1142	In the formal sector	41802003
323	In the informal sector	41802003
615	Private household	41802003
15	Do not know	41802003
0	Unspecified	41802003
6505	Not applicable	41802003
1124	In the formal sector	41802004
228	In the informal sector	41802004
296	Private household	41802004
5	Do not know	41802004
0	Unspecified	41802004
3141	Not applicable	41802004
493	In the formal sector	41803001
86	In the informal sector	41803001
79	Private household	41803001
2	Do not know	41803001
0	Unspecified	41803001
4314	Not applicable	41803001
491	In the formal sector	41803002
59	In the informal sector	41803002
24	Private household	41803002
1	Do not know	41803002
0	Unspecified	41803002
4126	Not applicable	41803002
636	In the formal sector	41803003
89	In the informal sector	41803003
157	Private household	41803003
6	Do not know	41803003
0	Unspecified	41803003
5433	Not applicable	41803003
823	In the formal sector	41803004
289	In the informal sector	41803004
348	Private household	41803004
64	Do not know	41803004
0	Unspecified	41803004
5929	Not applicable	41803004
1699	In the formal sector	41803005
474	In the informal sector	41803005
852	Private household	41803005
31	Do not know	41803005
0	Unspecified	41803005
4231	Not applicable	41803005
658	In the formal sector	41803006
71	In the informal sector	41803006
94	Private household	41803006
26	Do not know	41803006
0	Unspecified	41803006
4890	Not applicable	41803006
845	In the formal sector	41803007
55	In the informal sector	41803007
97	Private household	41803007
7	Do not know	41803007
0	Unspecified	41803007
4488	Not applicable	41803007
983	In the formal sector	41803008
183	In the informal sector	41803008
166	Private household	41803008
49	Do not know	41803008
0	Unspecified	41803008
4280	Not applicable	41803008
1112	In the formal sector	41804001
290	In the informal sector	41804001
548	Private household	41804001
30	Do not know	41804001
0	Unspecified	41804001
9762	Not applicable	41804001
1400	In the formal sector	41804002
336	In the informal sector	41804002
333	Private household	41804002
13	Do not know	41804002
0	Unspecified	41804002
10509	Not applicable	41804002
2648	In the formal sector	41804003
457	In the informal sector	41804003
473	Private household	41804003
69	Do not know	41804003
0	Unspecified	41804003
10341	Not applicable	41804003
1762	In the formal sector	41804004
250	In the informal sector	41804004
291	Private household	41804004
26	Do not know	41804004
0	Unspecified	41804004
9398	Not applicable	41804004
1742	In the formal sector	41804005
200	In the informal sector	41804005
211	Private household	41804005
129	Do not know	41804005
0	Unspecified	41804005
8825	Not applicable	41804005
1043	In the formal sector	41804006
296	In the informal sector	41804006
433	Private household	41804006
32	Do not know	41804006
0	Unspecified	41804006
7838	Not applicable	41804006
1496	In the formal sector	41804007
351	In the informal sector	41804007
325	Private household	41804007
57	Do not know	41804007
0	Unspecified	41804007
9966	Not applicable	41804007
3123	In the formal sector	41804008
169	In the informal sector	41804008
209	Private household	41804008
47	Do not know	41804008
0	Unspecified	41804008
6619	Not applicable	41804008
3045	In the formal sector	41804009
253	In the informal sector	41804009
501	Private household	41804009
95	Do not know	41804009
0	Unspecified	41804009
7487	Not applicable	41804009
2217	In the formal sector	41804010
315	In the informal sector	41804010
372	Private household	41804010
23	Do not know	41804010
0	Unspecified	41804010
9010	Not applicable	41804010
2142	In the formal sector	41804011
337	In the informal sector	41804011
274	Private household	41804011
31	Do not know	41804011
0	Unspecified	41804011
9846	Not applicable	41804011
2479	In the formal sector	41804012
603	In the informal sector	41804012
660	Private household	41804012
202	Do not know	41804012
0	Unspecified	41804012
13888	Not applicable	41804012
895	In the formal sector	41804013
208	In the informal sector	41804013
255	Private household	41804013
79	Do not know	41804013
0	Unspecified	41804013
5105	Not applicable	41804013
2399	In the formal sector	41804014
303	In the informal sector	41804014
363	Private household	41804014
95	Do not know	41804014
0	Unspecified	41804014
9215	Not applicable	41804014
2041	In the formal sector	41804015
379	In the informal sector	41804015
460	Private household	41804015
29	Do not know	41804015
0	Unspecified	41804015
10184	Not applicable	41804015
2021	In the formal sector	41804016
425	In the informal sector	41804016
638	Private household	41804016
40	Do not know	41804016
0	Unspecified	41804016
10698	Not applicable	41804016
1680	In the formal sector	41804017
599	In the informal sector	41804017
486	Private household	41804017
72	Do not know	41804017
0	Unspecified	41804017
11335	Not applicable	41804017
1253	In the formal sector	41804018
215	In the informal sector	41804018
194	Private household	41804018
23	Do not know	41804018
0	Unspecified	41804018
7999	Not applicable	41804018
1630	In the formal sector	41804019
178	In the informal sector	41804019
344	Private household	41804019
28	Do not know	41804019
0	Unspecified	41804019
12079	Not applicable	41804019
1663	In the formal sector	41804020
269	In the informal sector	41804020
221	Private household	41804020
16	Do not know	41804020
0	Unspecified	41804020
8889	Not applicable	41804020
1724	In the formal sector	41804021
266	In the informal sector	41804021
406	Private household	41804021
109	Do not know	41804021
0	Unspecified	41804021
10320	Not applicable	41804021
1564	In the formal sector	41804022
247	In the informal sector	41804022
283	Private household	41804022
70	Do not know	41804022
0	Unspecified	41804022
10330	Not applicable	41804022
1235	In the formal sector	41804023
193	In the informal sector	41804023
67	Private household	41804023
15	Do not know	41804023
0	Unspecified	41804023
5142	Not applicable	41804023
1464	In the formal sector	41804024
451	In the informal sector	41804024
429	Private household	41804024
85	Do not know	41804024
0	Unspecified	41804024
4389	Not applicable	41804024
3929	In the formal sector	41804025
533	In the informal sector	41804025
685	Private household	41804025
124	Do not know	41804025
0	Unspecified	41804025
9319	Not applicable	41804025
1510	In the formal sector	41804026
169	In the informal sector	41804026
221	Private household	41804026
38	Do not know	41804026
0	Unspecified	41804026
6937	Not applicable	41804026
3352	In the formal sector	41804027
295	In the informal sector	41804027
414	Private household	41804027
108	Do not know	41804027
0	Unspecified	41804027
5975	Not applicable	41804027
1249	In the formal sector	41804028
210	In the informal sector	41804028
120	Private household	41804028
6	Do not know	41804028
0	Unspecified	41804028
6677	Not applicable	41804028
1343	In the formal sector	41804029
186	In the informal sector	41804029
159	Private household	41804029
27	Do not know	41804029
0	Unspecified	41804029
5995	Not applicable	41804029
1707	In the formal sector	41804030
280	In the informal sector	41804030
291	Private household	41804030
61	Do not know	41804030
0	Unspecified	41804030
6751	Not applicable	41804030
1729	In the formal sector	41804031
248	In the informal sector	41804031
198	Private household	41804031
46	Do not know	41804031
0	Unspecified	41804031
6987	Not applicable	41804031
3798	In the formal sector	41804032
354	In the informal sector	41804032
416	Private household	41804032
93	Do not know	41804032
0	Unspecified	41804032
7193	Not applicable	41804032
3280	In the formal sector	41804033
233	In the informal sector	41804033
356	Private household	41804033
57	Do not know	41804033
0	Unspecified	41804033
5794	Not applicable	41804033
3985	In the formal sector	41804034
335	In the informal sector	41804034
538	Private household	41804034
91	Do not know	41804034
0	Unspecified	41804034
7966	Not applicable	41804034
2639	In the formal sector	41804035
246	In the informal sector	41804035
231	Private household	41804035
59	Do not know	41804035
0	Unspecified	41804035
8518	Not applicable	41804035
3138	In the formal sector	41804036
287	In the informal sector	41804036
237	Private household	41804036
110	Do not know	41804036
0	Unspecified	41804036
7895	Not applicable	41804036
658	In the formal sector	41805001
176	In the informal sector	41805001
100	Private household	41805001
28	Do not know	41805001
0	Unspecified	41805001
6174	Not applicable	41805001
1047	In the formal sector	41805002
238	In the informal sector	41805002
163	Private household	41805002
47	Do not know	41805002
0	Unspecified	41805002
4001	Not applicable	41805002
658	In the formal sector	41805003
227	In the informal sector	41805003
162	Private household	41805003
2	Do not know	41805003
0	Unspecified	41805003
5639	Not applicable	41805003
475	In the formal sector	41805004
387	In the informal sector	41805004
200	Private household	41805004
59	Do not know	41805004
0	Unspecified	41805004
6816	Not applicable	41805004
1066	In the formal sector	41805005
169	In the informal sector	41805005
98	Private household	41805005
17	Do not know	41805005
0	Unspecified	41805005
5265	Not applicable	41805005
595	In the formal sector	41805006
75	In the informal sector	41805006
58	Private household	41805006
9	Do not know	41805006
0	Unspecified	41805006
4869	Not applicable	41805006
686	In the formal sector	41805007
99	In the informal sector	41805007
151	Private household	41805007
35	Do not know	41805007
0	Unspecified	41805007
4514	Not applicable	41805007
746	In the formal sector	41805008
170	In the informal sector	41805008
116	Private household	41805008
45	Do not know	41805008
0	Unspecified	41805008
4510	Not applicable	41805008
981	In the formal sector	41805009
329	In the informal sector	41805009
147	Private household	41805009
37	Do not know	41805009
0	Unspecified	41805009
9129	Not applicable	41805009
1378	In the formal sector	41805010
871	In the informal sector	41805010
659	Private household	41805010
31	Do not know	41805010
0	Unspecified	41805010
3547	Not applicable	41805010
843	In the formal sector	41805011
152	In the informal sector	41805011
108	Private household	41805011
48	Do not know	41805011
0	Unspecified	41805011
6794	Not applicable	41805011
1370	In the formal sector	41805012
232	In the informal sector	41805012
206	Private household	41805012
50	Do not know	41805012
0	Unspecified	41805012
3761	Not applicable	41805012
710	In the formal sector	41901001
243	In the informal sector	41901001
220	Private household	41901001
34	Do not know	41901001
0	Unspecified	41901001
4288	Not applicable	41901001
804	In the formal sector	41901002
382	In the informal sector	41901002
220	Private household	41901002
92	Do not know	41901002
0	Unspecified	41901002
8511	Not applicable	41901002
1561	In the formal sector	41901003
330	In the informal sector	41901003
510	Private household	41901003
17	Do not know	41901003
0	Unspecified	41901003
3000	Not applicable	41901003
604	In the formal sector	41901004
65	In the informal sector	41901004
174	Private household	41901004
10	Do not know	41901004
0	Unspecified	41901004
4149	Not applicable	41901004
146	In the formal sector	41901005
58	In the informal sector	41901005
46	Private household	41901005
6	Do not know	41901005
0	Unspecified	41901005
2541	Not applicable	41901005
875	In the formal sector	41901006
172	In the informal sector	41901006
436	Private household	41901006
62	Do not know	41901006
0	Unspecified	41901006
9068	Not applicable	41901006
687	In the formal sector	41901007
93	In the informal sector	41901007
207	Private household	41901007
59	Do not know	41901007
0	Unspecified	41901007
6085	Not applicable	41901007
709	In the formal sector	41901008
138	In the informal sector	41901008
181	Private household	41901008
65	Do not know	41901008
0	Unspecified	41901008
7231	Not applicable	41901008
1139	In the formal sector	41901009
215	In the informal sector	41901009
415	Private household	41901009
49	Do not know	41901009
0	Unspecified	41901009
4390	Not applicable	41901009
794	In the formal sector	41901010
107	In the informal sector	41901010
143	Private household	41901010
16	Do not know	41901010
0	Unspecified	41901010
2888	Not applicable	41901010
669	In the formal sector	41901011
123	In the informal sector	41901011
172	Private household	41901011
38	Do not know	41901011
0	Unspecified	41901011
5279	Not applicable	41901011
462	In the formal sector	41901012
98	In the informal sector	41901012
160	Private household	41901012
38	Do not know	41901012
0	Unspecified	41901012
4501	Not applicable	41901012
610	In the formal sector	41901013
125	In the informal sector	41901013
220	Private household	41901013
28	Do not know	41901013
0	Unspecified	41901013
6532	Not applicable	41901013
801	In the formal sector	41901014
106	In the informal sector	41901014
199	Private household	41901014
9	Do not know	41901014
0	Unspecified	41901014
4606	Not applicable	41901014
2309	In the formal sector	41901015
357	In the informal sector	41901015
231	Private household	41901015
33	Do not know	41901015
0	Unspecified	41901015
5774	Not applicable	41901015
869	In the formal sector	41901016
155	In the informal sector	41901016
244	Private household	41901016
9	Do not know	41901016
0	Unspecified	41901016
5901	Not applicable	41901016
286	In the formal sector	41901017
43	In the informal sector	41901017
23	Private household	41901017
0	Do not know	41901017
0	Unspecified	41901017
1383	Not applicable	41901017
402	In the formal sector	41901018
76	In the informal sector	41901018
195	Private household	41901018
38	Do not know	41901018
0	Unspecified	41901018
4554	Not applicable	41901018
1316	In the formal sector	41902001
207	In the informal sector	41902001
100	Private household	41902001
8	Do not know	41902001
0	Unspecified	41902001
4501	Not applicable	41902001
1035	In the formal sector	41902002
142	In the informal sector	41902002
204	Private household	41902002
6	Do not know	41902002
0	Unspecified	41902002
3579	Not applicable	41902002
1809	In the formal sector	41902003
153	In the informal sector	41902003
293	Private household	41902003
11	Do not know	41902003
0	Unspecified	41902003
4427	Not applicable	41902003
1169	In the formal sector	41902004
164	In the informal sector	41902004
372	Private household	41902004
12	Do not know	41902004
0	Unspecified	41902004
4624	Not applicable	41902004
545	In the formal sector	41902005
202	In the informal sector	41902005
450	Private household	41902005
28	Do not know	41902005
0	Unspecified	41902005
3872	Not applicable	41902005
1332	In the formal sector	41902006
202	In the informal sector	41902006
216	Private household	41902006
77	Do not know	41902006
0	Unspecified	41902006
5056	Not applicable	41902006
957	In the formal sector	41902007
167	In the informal sector	41902007
256	Private household	41902007
17	Do not know	41902007
0	Unspecified	41902007
3903	Not applicable	41902007
1367	In the formal sector	41902008
241	In the informal sector	41902008
258	Private household	41902008
3	Do not know	41902008
0	Unspecified	41902008
3951	Not applicable	41902008
754	In the formal sector	41902009
91	In the informal sector	41902009
96	Private household	41902009
43	Do not know	41902009
0	Unspecified	41902009
2031	Not applicable	41902009
1345	In the formal sector	41902010
267	In the informal sector	41902010
236	Private household	41902010
66	Do not know	41902010
0	Unspecified	41902010
2048	Not applicable	41902010
1975	In the formal sector	41902011
305	In the informal sector	41902011
425	Private household	41902011
30	Do not know	41902011
0	Unspecified	41902011
6729	Not applicable	41902011
915	In the formal sector	41902012
134	In the informal sector	41902012
211	Private household	41902012
42	Do not know	41902012
0	Unspecified	41902012
7970	Not applicable	41902012
287	In the formal sector	41902013
29	In the informal sector	41902013
84	Private household	41902013
10	Do not know	41902013
0	Unspecified	41902013
2865	Not applicable	41902013
1118	In the formal sector	41902014
172	In the informal sector	41902014
108	Private household	41902014
48	Do not know	41902014
0	Unspecified	41902014
4730	Not applicable	41902014
901	In the formal sector	41902015
196	In the informal sector	41902015
261	Private household	41902015
59	Do not know	41902015
0	Unspecified	41902015
5194	Not applicable	41902015
1581	In the formal sector	41902016
233	In the informal sector	41902016
199	Private household	41902016
7	Do not know	41902016
0	Unspecified	41902016
3707	Not applicable	41902016
630	In the formal sector	41902017
101	In the informal sector	41902017
79	Private household	41902017
3	Do not know	41902017
0	Unspecified	41902017
6202	Not applicable	41902017
2326	In the formal sector	41902018
345	In the informal sector	41902018
278	Private household	41902018
83	Do not know	41902018
0	Unspecified	41902018
4682	Not applicable	41902018
1898	In the formal sector	41902019
280	In the informal sector	41902019
524	Private household	41902019
45	Do not know	41902019
0	Unspecified	41902019
8588	Not applicable	41902019
1688	In the formal sector	41902020
221	In the informal sector	41902020
430	Private household	41902020
26	Do not know	41902020
0	Unspecified	41902020
5539	Not applicable	41902020
1053	In the formal sector	41903001
165	In the informal sector	41903001
154	Private household	41903001
46	Do not know	41903001
0	Unspecified	41903001
5367	Not applicable	41903001
777	In the formal sector	41903002
143	In the informal sector	41903002
150	Private household	41903002
6	Do not know	41903002
0	Unspecified	41903002
6429	Not applicable	41903002
852	In the formal sector	41903003
102	In the informal sector	41903003
197	Private household	41903003
7	Do not know	41903003
0	Unspecified	41903003
6767	Not applicable	41903003
1145	In the formal sector	41903004
101	In the informal sector	41903004
87	Private household	41903004
7	Do not know	41903004
0	Unspecified	41903004
4527	Not applicable	41903004
712	In the formal sector	41903005
451	In the informal sector	41903005
173	Private household	41903005
5	Do not know	41903005
0	Unspecified	41903005
4701	Not applicable	41903005
1752	In the formal sector	41903006
254	In the informal sector	41903006
292	Private household	41903006
24	Do not know	41903006
0	Unspecified	41903006
4191	Not applicable	41903006
1597	In the formal sector	41903007
308	In the informal sector	41903007
285	Private household	41903007
16	Do not know	41903007
0	Unspecified	41903007
4247	Not applicable	41903007
716	In the formal sector	41903008
279	In the informal sector	41903008
118	Private household	41903008
2	Do not know	41903008
0	Unspecified	41903008
4018	Not applicable	41903008
1027	In the formal sector	41903009
241	In the informal sector	41903009
444	Private household	41903009
67	Do not know	41903009
0	Unspecified	41903009
6323	Not applicable	41903009
1711	In the formal sector	41904001
562	In the informal sector	41904001
419	Private household	41904001
74	Do not know	41904001
0	Unspecified	41904001
11611	Not applicable	41904001
1046	In the formal sector	41904002
395	In the informal sector	41904002
170	Private household	41904002
22	Do not know	41904002
0	Unspecified	41904002
7269	Not applicable	41904002
1011	In the formal sector	41904003
185	In the informal sector	41904003
166	Private household	41904003
12	Do not know	41904003
0	Unspecified	41904003
7216	Not applicable	41904003
1515	In the formal sector	41904004
299	In the informal sector	41904004
260	Private household	41904004
50	Do not know	41904004
0	Unspecified	41904004
6303	Not applicable	41904004
2233	In the formal sector	41904005
336	In the informal sector	41904005
321	Private household	41904005
67	Do not know	41904005
0	Unspecified	41904005
7659	Not applicable	41904005
1515	In the formal sector	41904006
351	In the informal sector	41904006
323	Private household	41904006
108	Do not know	41904006
0	Unspecified	41904006
4284	Not applicable	41904006
798	In the formal sector	41904007
263	In the informal sector	41904007
83	Private household	41904007
23	Do not know	41904007
0	Unspecified	41904007
6869	Not applicable	41904007
368	In the formal sector	41904008
112	In the informal sector	41904008
90	Private household	41904008
51	Do not know	41904008
0	Unspecified	41904008
4173	Not applicable	41904008
626	In the formal sector	41904009
218	In the informal sector	41904009
199	Private household	41904009
17	Do not know	41904009
0	Unspecified	41904009
8940	Not applicable	41904009
577	In the formal sector	41904010
255	In the informal sector	41904010
60	Private household	41904010
77	Do not know	41904010
0	Unspecified	41904010
7826	Not applicable	41904010
485	In the formal sector	41904011
212	In the informal sector	41904011
47	Private household	41904011
13	Do not know	41904011
0	Unspecified	41904011
7897	Not applicable	41904011
913	In the formal sector	41904012
305	In the informal sector	41904012
96	Private household	41904012
168	Do not know	41904012
0	Unspecified	41904012
11364	Not applicable	41904012
683	In the formal sector	41904013
223	In the informal sector	41904013
73	Private household	41904013
27	Do not know	41904013
0	Unspecified	41904013
7569	Not applicable	41904013
756	In the formal sector	41904014
292	In the informal sector	41904014
116	Private household	41904014
62	Do not know	41904014
0	Unspecified	41904014
8260	Not applicable	41904014
553	In the formal sector	41904015
293	In the informal sector	41904015
109	Private household	41904015
22	Do not know	41904015
0	Unspecified	41904015
8235	Not applicable	41904015
748	In the formal sector	41904016
368	In the informal sector	41904016
165	Private household	41904016
19	Do not know	41904016
0	Unspecified	41904016
8056	Not applicable	41904016
572	In the formal sector	41904017
188	In the informal sector	41904017
117	Private household	41904017
9	Do not know	41904017
0	Unspecified	41904017
6847	Not applicable	41904017
752	In the formal sector	41904018
219	In the informal sector	41904018
111	Private household	41904018
31	Do not know	41904018
0	Unspecified	41904018
6958	Not applicable	41904018
534	In the formal sector	41904019
202	In the informal sector	41904019
195	Private household	41904019
46	Do not know	41904019
0	Unspecified	41904019
8838	Not applicable	41904019
411	In the formal sector	41904020
84	In the informal sector	41904020
35	Private household	41904020
8	Do not know	41904020
0	Unspecified	41904020
6361	Not applicable	41904020
417	In the formal sector	41904021
250	In the informal sector	41904021
73	Private household	41904021
15	Do not know	41904021
0	Unspecified	41904021
9054	Not applicable	41904021
3244	In the formal sector	41904022
584	In the informal sector	41904022
423	Private household	41904022
78	Do not know	41904022
0	Unspecified	41904022
7759	Not applicable	41904022
919	In the formal sector	41904023
262	In the informal sector	41904023
147	Private household	41904023
31	Do not know	41904023
0	Unspecified	41904023
8494	Not applicable	41904023
1275	In the formal sector	41904024
496	In the informal sector	41904024
199	Private household	41904024
56	Do not know	41904024
0	Unspecified	41904024
14403	Not applicable	41904024
1073	In the formal sector	41904025
303	In the informal sector	41904025
182	Private household	41904025
58	Do not know	41904025
0	Unspecified	41904025
6300	Not applicable	41904025
559	In the formal sector	41904026
210	In the informal sector	41904026
68	Private household	41904026
5	Do not know	41904026
0	Unspecified	41904026
5908	Not applicable	41904026
1661	In the formal sector	41904027
336	In the informal sector	41904027
62	Private household	41904027
26	Do not know	41904027
0	Unspecified	41904027
7099	Not applicable	41904027
1378	In the formal sector	41904028
476	In the informal sector	41904028
322	Private household	41904028
28	Do not know	41904028
0	Unspecified	41904028
9668	Not applicable	41904028
1323	In the formal sector	41904029
339	In the informal sector	41904029
81	Private household	41904029
36	Do not know	41904029
0	Unspecified	41904029
7855	Not applicable	41904029
570	In the formal sector	41904030
205	In the informal sector	41904030
94	Private household	41904030
70	Do not know	41904030
0	Unspecified	41904030
5933	Not applicable	41904030
557	In the formal sector	41904031
248	In the informal sector	41904031
124	Private household	41904031
19	Do not know	41904031
0	Unspecified	41904031
7439	Not applicable	41904031
897	In the formal sector	41904032
341	In the informal sector	41904032
242	Private household	41904032
93	Do not know	41904032
0	Unspecified	41904032
11440	Not applicable	41904032
1255	In the formal sector	41904033
584	In the informal sector	41904033
156	Private household	41904033
87	Do not know	41904033
0	Unspecified	41904033
10530	Not applicable	41904033
2398	In the formal sector	41904034
426	In the informal sector	41904034
406	Private household	41904034
33	Do not know	41904034
0	Unspecified	41904034
11655	Not applicable	41904034
410	In the formal sector	41904035
181	In the informal sector	41904035
41	Private household	41904035
7	Do not know	41904035
0	Unspecified	41904035
6041	Not applicable	41904035
280	In the formal sector	41905001
72	In the informal sector	41905001
152	Private household	41905001
22	Do not know	41905001
0	Unspecified	41905001
1794	Not applicable	41905001
729	In the formal sector	41905002
98	In the informal sector	41905002
208	Private household	41905002
7	Do not know	41905002
0	Unspecified	41905002
5329	Not applicable	41905002
833	In the formal sector	41905003
142	In the informal sector	41905003
97	Private household	41905003
23	Do not know	41905003
0	Unspecified	41905003
3033	Not applicable	41905003
653	In the formal sector	41905004
55	In the informal sector	41905004
137	Private household	41905004
14	Do not know	41905004
0	Unspecified	41905004
4653	Not applicable	41905004
1762	In the formal sector	41905005
419	In the informal sector	41905005
281	Private household	41905005
22	Do not know	41905005
0	Unspecified	41905005
4394	Not applicable	41905005
513	In the formal sector	41905006
80	In the informal sector	41905006
83	Private household	41905006
119	Do not know	41905006
0	Unspecified	41905006
4989	Not applicable	41905006
1191	In the formal sector	41905007
232	In the informal sector	41905007
106	Private household	41905007
58	Do not know	41905007
0	Unspecified	41905007
4891	Not applicable	41905007
2000	In the formal sector	41905008
311	In the informal sector	41905008
250	Private household	41905008
16	Do not know	41905008
0	Unspecified	41905008
7724	Not applicable	41905008
1118	In the formal sector	41906001
187	In the informal sector	41906001
100	Private household	41906001
20	Do not know	41906001
0	Unspecified	41906001
4922	Not applicable	41906001
664	In the formal sector	41906002
257	In the informal sector	41906002
250	Private household	41906002
29	Do not know	41906002
0	Unspecified	41906002
4621	Not applicable	41906002
963	In the formal sector	41906003
219	In the informal sector	41906003
460	Private household	41906003
63	Do not know	41906003
0	Unspecified	41906003
4053	Not applicable	41906003
1008	In the formal sector	41906004
375	In the informal sector	41906004
125	Private household	41906004
156	Do not know	41906004
0	Unspecified	41906004
5782	Not applicable	41906004
777	In the formal sector	41906005
182	In the informal sector	41906005
234	Private household	41906005
8	Do not know	41906005
0	Unspecified	41906005
4167	Not applicable	41906005
467	In the formal sector	41906006
188	In the informal sector	41906006
107	Private household	41906006
74	Do not know	41906006
0	Unspecified	41906006
3896	Not applicable	41906006
1216	In the formal sector	41906007
382	In the informal sector	41906007
316	Private household	41906007
72	Do not know	41906007
0	Unspecified	41906007
3275	Not applicable	41906007
760	In the formal sector	41906008
155	In the informal sector	41906008
103	Private household	41906008
27	Do not know	41906008
0	Unspecified	41906008
4439	Not applicable	41906008
597	In the formal sector	41906009
217	In the informal sector	41906009
182	Private household	41906009
9	Do not know	41906009
0	Unspecified	41906009
3835	Not applicable	41906009
471	In the formal sector	42001001
167	In the informal sector	42001001
144	Private household	42001001
3	Do not know	42001001
0	Unspecified	42001001
7009	Not applicable	42001001
937	In the formal sector	42001002
1373	In the informal sector	42001002
737	Private household	42001002
38	Do not know	42001002
0	Unspecified	42001002
5095	Not applicable	42001002
1902	In the formal sector	42001003
117	In the informal sector	42001003
133	Private household	42001003
50	Do not know	42001003
0	Unspecified	42001003
6186	Not applicable	42001003
762	In the formal sector	42001004
233	In the informal sector	42001004
209	Private household	42001004
44	Do not know	42001004
0	Unspecified	42001004
5351	Not applicable	42001004
649	In the formal sector	42001005
199	In the informal sector	42001005
306	Private household	42001005
119	Do not know	42001005
0	Unspecified	42001005
5777	Not applicable	42001005
502	In the formal sector	42001006
79	In the informal sector	42001006
111	Private household	42001006
35	Do not know	42001006
0	Unspecified	42001006
2235	Not applicable	42001006
1016	In the formal sector	42001007
295	In the informal sector	42001007
233	Private household	42001007
47	Do not know	42001007
0	Unspecified	42001007
6237	Not applicable	42001007
864	In the formal sector	42001008
56	In the informal sector	42001008
138	Private household	42001008
13	Do not know	42001008
0	Unspecified	42001008
3987	Not applicable	42001008
1040	In the formal sector	42001009
150	In the informal sector	42001009
398	Private household	42001009
18	Do not know	42001009
0	Unspecified	42001009
6297	Not applicable	42001009
867	In the formal sector	42001010
92	In the informal sector	42001010
63	Private household	42001010
6	Do not know	42001010
0	Unspecified	42001010
4379	Not applicable	42001010
720	In the formal sector	42001011
110	In the informal sector	42001011
95	Private household	42001011
6	Do not know	42001011
0	Unspecified	42001011
3722	Not applicable	42001011
685	In the formal sector	42001012
84	In the informal sector	42001012
160	Private household	42001012
2	Do not know	42001012
0	Unspecified	42001012
3539	Not applicable	42001012
1213	In the formal sector	42001013
305	In the informal sector	42001013
315	Private household	42001013
21	Do not know	42001013
0	Unspecified	42001013
6218	Not applicable	42001013
727	In the formal sector	42001014
158	In the informal sector	42001014
201	Private household	42001014
13	Do not know	42001014
0	Unspecified	42001014
3282	Not applicable	42001014
1195	In the formal sector	42001015
286	In the informal sector	42001015
160	Private household	42001015
15	Do not know	42001015
0	Unspecified	42001015
4190	Not applicable	42001015
2003	In the formal sector	42001016
317	In the informal sector	42001016
247	Private household	42001016
55	Do not know	42001016
0	Unspecified	42001016
4253	Not applicable	42001016
1840	In the formal sector	42001017
243	In the informal sector	42001017
236	Private household	42001017
42	Do not know	42001017
0	Unspecified	42001017
2914	Not applicable	42001017
818	In the formal sector	42001018
227	In the informal sector	42001018
153	Private household	42001018
40	Do not know	42001018
0	Unspecified	42001018
6112	Not applicable	42001018
743	In the formal sector	42001019
348	In the informal sector	42001019
104	Private household	42001019
8	Do not know	42001019
0	Unspecified	42001019
5611	Not applicable	42001019
900	In the formal sector	42001020
72	In the informal sector	42001020
97	Private household	42001020
4	Do not know	42001020
0	Unspecified	42001020
6610	Not applicable	42001020
722	In the formal sector	42001021
89	In the informal sector	42001021
132	Private household	42001021
8	Do not know	42001021
0	Unspecified	42001021
5745	Not applicable	42001021
1212	In the formal sector	42001022
197	In the informal sector	42001022
380	Private household	42001022
8	Do not know	42001022
0	Unspecified	42001022
5626	Not applicable	42001022
778	In the formal sector	42001023
565	In the informal sector	42001023
148	Private household	42001023
21	Do not know	42001023
0	Unspecified	42001023
2621	Not applicable	42001023
315	In the formal sector	42001024
22	In the informal sector	42001024
311	Private household	42001024
7	Do not know	42001024
0	Unspecified	42001024
5565	Not applicable	42001024
1382	In the formal sector	42001025
471	In the informal sector	42001025
415	Private household	42001025
59	Do not know	42001025
0	Unspecified	42001025
5143	Not applicable	42001025
1140	In the formal sector	42003001
957	In the informal sector	42003001
399	Private household	42003001
84	Do not know	42003001
0	Unspecified	42003001
5330	Not applicable	42003001
990	In the formal sector	42003002
113	In the informal sector	42003002
139	Private household	42003002
23	Do not know	42003002
0	Unspecified	42003002
4305	Not applicable	42003002
1011	In the formal sector	42003003
127	In the informal sector	42003003
206	Private household	42003003
113	Do not know	42003003
0	Unspecified	42003003
4064	Not applicable	42003003
319	In the formal sector	42003004
52	In the informal sector	42003004
24	Private household	42003004
5	Do not know	42003004
0	Unspecified	42003004
3074	Not applicable	42003004
518	In the formal sector	42003005
127	In the informal sector	42003005
93	Private household	42003005
18	Do not know	42003005
0	Unspecified	42003005
3917	Not applicable	42003005
365	In the formal sector	42003006
73	In the informal sector	42003006
125	Private household	42003006
5	Do not know	42003006
0	Unspecified	42003006
1640	Not applicable	42003006
903	In the formal sector	42003007
270	In the informal sector	42003007
242	Private household	42003007
33	Do not know	42003007
0	Unspecified	42003007
8349	Not applicable	42003007
1833	In the formal sector	42003008
336	In the informal sector	42003008
247	Private household	42003008
28	Do not know	42003008
0	Unspecified	42003008
9740	Not applicable	42003008
898	In the formal sector	42003009
94	In the informal sector	42003009
120	Private household	42003009
11	Do not know	42003009
0	Unspecified	42003009
4554	Not applicable	42003009
850	In the formal sector	42003010
201	In the informal sector	42003010
184	Private household	42003010
10	Do not know	42003010
0	Unspecified	42003010
4215	Not applicable	42003010
496	In the formal sector	42003011
139	In the informal sector	42003011
84	Private household	42003011
10	Do not know	42003011
0	Unspecified	42003011
3499	Not applicable	42003011
944	In the formal sector	42003012
120	In the informal sector	42003012
125	Private household	42003012
25	Do not know	42003012
0	Unspecified	42003012
4245	Not applicable	42003012
1194	In the formal sector	42003013
148	In the informal sector	42003013
96	Private household	42003013
31	Do not know	42003013
0	Unspecified	42003013
3971	Not applicable	42003013
901	In the formal sector	42003014
149	In the informal sector	42003014
210	Private household	42003014
24	Do not know	42003014
0	Unspecified	42003014
4864	Not applicable	42003014
524	In the formal sector	42003015
98	In the informal sector	42003015
29	Private household	42003015
5	Do not know	42003015
0	Unspecified	42003015
3867	Not applicable	42003015
767	In the formal sector	42003016
245	In the informal sector	42003016
222	Private household	42003016
14	Do not know	42003016
0	Unspecified	42003016
7523	Not applicable	42003016
1162	In the formal sector	42003017
172	In the informal sector	42003017
150	Private household	42003017
111	Do not know	42003017
0	Unspecified	42003017
5543	Not applicable	42003017
857	In the formal sector	42003018
260	In the informal sector	42003018
418	Private household	42003018
80	Do not know	42003018
0	Unspecified	42003018
3283	Not applicable	42003018
829	In the formal sector	42003019
204	In the informal sector	42003019
137	Private household	42003019
18	Do not know	42003019
0	Unspecified	42003019
5541	Not applicable	42003019
870	In the formal sector	42003020
895	In the informal sector	42003020
204	Private household	42003020
18	Do not know	42003020
0	Unspecified	42003020
2729	Not applicable	42003020
2973	In the formal sector	42004001
470	In the informal sector	42004001
841	Private household	42004001
91	Do not know	42004001
0	Unspecified	42004001
11839	Not applicable	42004001
781	In the formal sector	42004002
40	In the informal sector	42004002
245	Private household	42004002
12	Do not know	42004002
0	Unspecified	42004002
3408	Not applicable	42004002
1118	In the formal sector	42004003
146	In the informal sector	42004003
61	Private household	42004003
50	Do not know	42004003
0	Unspecified	42004003
4563	Not applicable	42004003
694	In the formal sector	42004004
68	In the informal sector	42004004
93	Private household	42004004
37	Do not know	42004004
0	Unspecified	42004004
4537	Not applicable	42004004
1070	In the formal sector	42004005
238	In the informal sector	42004005
372	Private household	42004005
60	Do not know	42004005
0	Unspecified	42004005
4962	Not applicable	42004005
933	In the formal sector	42004006
67	In the informal sector	42004006
299	Private household	42004006
3	Do not know	42004006
0	Unspecified	42004006
3626	Not applicable	42004006
666	In the formal sector	42004007
90	In the informal sector	42004007
226	Private household	42004007
5	Do not know	42004007
0	Unspecified	42004007
3026	Not applicable	42004007
1319	In the formal sector	42004008
130	In the informal sector	42004008
229	Private household	42004008
38	Do not know	42004008
0	Unspecified	42004008
5631	Not applicable	42004008
1184	In the formal sector	42004009
70	In the informal sector	42004009
345	Private household	42004009
12	Do not know	42004009
0	Unspecified	42004009
3343	Not applicable	42004009
1589	In the formal sector	42004010
292	In the informal sector	42004010
210	Private household	42004010
8	Do not know	42004010
0	Unspecified	42004010
4980	Not applicable	42004010
1249	In the formal sector	42004011
110	In the informal sector	42004011
177	Private household	42004011
2	Do not know	42004011
0	Unspecified	42004011
3571	Not applicable	42004011
1160	In the formal sector	42004012
156	In the informal sector	42004012
66	Private household	42004012
13	Do not know	42004012
0	Unspecified	42004012
2678	Not applicable	42004012
2148	In the formal sector	42004013
523	In the informal sector	42004013
477	Private household	42004013
137	Do not know	42004013
0	Unspecified	42004013
9228	Not applicable	42004013
4636	In the formal sector	42004014
305	In the informal sector	42004014
348	Private household	42004014
201	Do not know	42004014
0	Unspecified	42004014
5192	Not applicable	42004014
1168	In the formal sector	42004015
65	In the informal sector	42004015
68	Private household	42004015
74	Do not know	42004015
0	Unspecified	42004015
1967	Not applicable	42004015
2701	In the formal sector	42004016
138	In the informal sector	42004016
198	Private household	42004016
111	Do not know	42004016
0	Unspecified	42004016
3546	Not applicable	42004016
2763	In the formal sector	42004017
161	In the informal sector	42004017
173	Private household	42004017
90	Do not know	42004017
0	Unspecified	42004017
4648	Not applicable	42004017
1353	In the formal sector	42004018
77	In the informal sector	42004018
167	Private household	42004018
51	Do not know	42004018
0	Unspecified	42004018
1360	Not applicable	42004018
2511	In the formal sector	42004019
377	In the informal sector	42004019
475	Private household	42004019
131	Do not know	42004019
0	Unspecified	42004019
9181	Not applicable	42004019
1497	In the formal sector	42004020
423	In the informal sector	42004020
426	Private household	42004020
63	Do not know	42004020
0	Unspecified	42004020
9325	Not applicable	42004020
681	In the formal sector	42004021
57	In the informal sector	42004021
133	Private household	42004021
21	Do not know	42004021
0	Unspecified	42004021
3465	Not applicable	42004021
419	In the formal sector	42005001
459	In the informal sector	42005001
47	Private household	42005001
49	Do not know	42005001
0	Unspecified	42005001
3170	Not applicable	42005001
1049	In the formal sector	42005002
325	In the informal sector	42005002
440	Private household	42005002
26	Do not know	42005002
0	Unspecified	42005002
7767	Not applicable	42005002
759	In the formal sector	42005003
90	In the informal sector	42005003
125	Private household	42005003
73	Do not know	42005003
0	Unspecified	42005003
4865	Not applicable	42005003
1108	In the formal sector	42005004
338	In the informal sector	42005004
242	Private household	42005004
37	Do not know	42005004
0	Unspecified	42005004
4489	Not applicable	42005004
1069	In the formal sector	42005005
200	In the informal sector	42005005
215	Private household	42005005
55	Do not know	42005005
0	Unspecified	42005005
3843	Not applicable	42005005
987	In the formal sector	42005006
93	In the informal sector	42005006
149	Private household	42005006
19	Do not know	42005006
0	Unspecified	42005006
4018	Not applicable	42005006
744	In the formal sector	42005007
299	In the informal sector	42005007
362	Private household	42005007
58	Do not know	42005007
0	Unspecified	42005007
5217	Not applicable	42005007
558	In the formal sector	42005008
427	In the informal sector	42005008
153	Private household	42005008
26	Do not know	42005008
0	Unspecified	42005008
6206	Not applicable	42005008
628	In the formal sector	42005009
322	In the informal sector	42005009
113	Private household	42005009
4	Do not know	42005009
0	Unspecified	42005009
6233	Not applicable	42005009
2483	In the formal sector	49400001
473	In the informal sector	49400001
955	Private household	49400001
72	Do not know	49400001
0	Unspecified	49400001
8465	Not applicable	49400001
2948	In the formal sector	49400002
502	In the informal sector	49400002
517	Private household	49400002
58	Do not know	49400002
0	Unspecified	49400002
9179	Not applicable	49400002
2778	In the formal sector	49400003
299	In the informal sector	49400003
347	Private household	49400003
15	Do not know	49400003
0	Unspecified	49400003
8645	Not applicable	49400003
2227	In the formal sector	49400004
323	In the informal sector	49400004
816	Private household	49400004
105	Do not know	49400004
0	Unspecified	49400004
8787	Not applicable	49400004
3060	In the formal sector	49400005
532	In the informal sector	49400005
736	Private household	49400005
82	Do not know	49400005
0	Unspecified	49400005
10225	Not applicable	49400005
2783	In the formal sector	49400006
842	In the informal sector	49400006
942	Private household	49400006
192	Do not know	49400006
0	Unspecified	49400006
12204	Not applicable	49400006
1468	In the formal sector	49400007
320	In the informal sector	49400007
601	Private household	49400007
80	Do not know	49400007
0	Unspecified	49400007
5540	Not applicable	49400007
2839	In the formal sector	49400008
650	In the informal sector	49400008
980	Private household	49400008
343	Do not know	49400008
0	Unspecified	49400008
12037	Not applicable	49400008
3916	In the formal sector	49400009
360	In the informal sector	49400009
476	Private household	49400009
29	Do not know	49400009
0	Unspecified	49400009
8114	Not applicable	49400009
3338	In the formal sector	49400010
631	In the informal sector	49400010
1024	Private household	49400010
94	Do not know	49400010
0	Unspecified	49400010
12206	Not applicable	49400010
2646	In the formal sector	49400011
636	In the informal sector	49400011
691	Private household	49400011
111	Do not know	49400011
0	Unspecified	49400011
10828	Not applicable	49400011
4302	In the formal sector	49400012
1027	In the informal sector	49400012
1570	Private household	49400012
174	Do not know	49400012
0	Unspecified	49400012
15336	Not applicable	49400012
2018	In the formal sector	49400013
229	In the informal sector	49400013
226	Private household	49400013
55	Do not know	49400013
0	Unspecified	49400013
6801	Not applicable	49400013
3397	In the formal sector	49400014
568	In the informal sector	49400014
393	Private household	49400014
38	Do not know	49400014
0	Unspecified	49400014
10542	Not applicable	49400014
3782	In the formal sector	49400015
224	In the informal sector	49400015
507	Private household	49400015
100	Do not know	49400015
0	Unspecified	49400015
10107	Not applicable	49400015
3590	In the formal sector	49400016
275	In the informal sector	49400016
240	Private household	49400016
32	Do not know	49400016
0	Unspecified	49400016
10180	Not applicable	49400016
3671	In the formal sector	49400017
783	In the informal sector	49400017
1226	Private household	49400017
73	Do not know	49400017
0	Unspecified	49400017
10700	Not applicable	49400017
7387	In the formal sector	49400018
861	In the informal sector	49400018
1139	Private household	49400018
219	Do not know	49400018
0	Unspecified	49400018
14571	Not applicable	49400018
3998	In the formal sector	49400019
546	In the informal sector	49400019
1013	Private household	49400019
80	Do not know	49400019
0	Unspecified	49400019
8099	Not applicable	49400019
4193	In the formal sector	49400020
430	In the informal sector	49400020
666	Private household	49400020
110	Do not know	49400020
0	Unspecified	49400020
7704	Not applicable	49400020
3758	In the formal sector	49400021
445	In the informal sector	49400021
495	Private household	49400021
98	Do not know	49400021
0	Unspecified	49400021
5630	Not applicable	49400021
4652	In the formal sector	49400022
450	In the informal sector	49400022
549	Private household	49400022
198	Do not know	49400022
0	Unspecified	49400022
7365	Not applicable	49400022
2178	In the formal sector	49400023
218	In the informal sector	49400023
189	Private household	49400023
151	Do not know	49400023
0	Unspecified	49400023
7726	Not applicable	49400023
3883	In the formal sector	49400024
591	In the informal sector	49400024
432	Private household	49400024
249	Do not know	49400024
0	Unspecified	49400024
5651	Not applicable	49400024
5575	In the formal sector	49400025
482	In the informal sector	49400025
434	Private household	49400025
187	Do not know	49400025
0	Unspecified	49400025
6604	Not applicable	49400025
3280	In the formal sector	49400026
591	In the informal sector	49400026
673	Private household	49400026
197	Do not know	49400026
0	Unspecified	49400026
5867	Not applicable	49400026
2319	In the formal sector	49400027
715	In the informal sector	49400027
862	Private household	49400027
152	Do not know	49400027
0	Unspecified	49400027
17622	Not applicable	49400027
2099	In the formal sector	49400028
475	In the informal sector	49400028
621	Private household	49400028
46	Do not know	49400028
0	Unspecified	49400028
12071	Not applicable	49400028
1737	In the formal sector	49400029
344	In the informal sector	49400029
589	Private household	49400029
40	Do not know	49400029
0	Unspecified	49400029
11154	Not applicable	49400029
3181	In the formal sector	49400030
352	In the informal sector	49400030
311	Private household	49400030
55	Do not know	49400030
0	Unspecified	49400030
11411	Not applicable	49400030
1120	In the formal sector	49400031
278	In the informal sector	49400031
348	Private household	49400031
51	Do not know	49400031
0	Unspecified	49400031
9934	Not applicable	49400031
1137	In the formal sector	49400032
421	In the informal sector	49400032
608	Private household	49400032
68	Do not know	49400032
0	Unspecified	49400032
10846	Not applicable	49400032
1109	In the formal sector	49400033
366	In the informal sector	49400033
297	Private household	49400033
107	Do not know	49400033
0	Unspecified	49400033
11922	Not applicable	49400033
1646	In the formal sector	49400034
481	In the informal sector	49400034
810	Private household	49400034
112	Do not know	49400034
0	Unspecified	49400034
15556	Not applicable	49400034
1656	In the formal sector	49400035
481	In the informal sector	49400035
643	Private household	49400035
35	Do not know	49400035
0	Unspecified	49400035
14893	Not applicable	49400035
1438	In the formal sector	49400036
487	In the informal sector	49400036
557	Private household	49400036
68	Do not know	49400036
0	Unspecified	49400036
11057	Not applicable	49400036
1940	In the formal sector	49400037
634	In the informal sector	49400037
745	Private household	49400037
138	Do not know	49400037
0	Unspecified	49400037
15375	Not applicable	49400037
913	In the formal sector	49400038
269	In the informal sector	49400038
415	Private household	49400038
50	Do not know	49400038
0	Unspecified	49400038
10267	Not applicable	49400038
1728	In the formal sector	49400039
639	In the informal sector	49400039
315	Private household	49400039
37	Do not know	49400039
0	Unspecified	49400039
10272	Not applicable	49400039
2694	In the formal sector	49400040
225	In the informal sector	49400040
270	Private household	49400040
12	Do not know	49400040
0	Unspecified	49400040
9076	Not applicable	49400040
1018	In the formal sector	49400041
267	In the informal sector	49400041
457	Private household	49400041
24	Do not know	49400041
0	Unspecified	49400041
10321	Not applicable	49400041
1346	In the formal sector	49400042
375	In the informal sector	49400042
328	Private household	49400042
30	Do not know	49400042
0	Unspecified	49400042
10151	Not applicable	49400042
1640	In the formal sector	49400043
327	In the informal sector	49400043
337	Private household	49400043
39	Do not know	49400043
0	Unspecified	49400043
12178	Not applicable	49400043
6712	In the formal sector	49400044
1319	In the informal sector	49400044
1140	Private household	49400044
286	Do not know	49400044
0	Unspecified	49400044
9447	Not applicable	49400044
6268	In the formal sector	49400045
1787	In the informal sector	49400045
2135	Private household	49400045
278	Do not know	49400045
0	Unspecified	49400045
24651	Not applicable	49400045
6042	In the formal sector	49400046
1647	In the informal sector	49400046
2513	Private household	49400046
286	Do not know	49400046
0	Unspecified	49400046
28567	Not applicable	49400046
4607	In the formal sector	49400047
594	In the informal sector	49400047
476	Private household	49400047
40	Do not know	49400047
0	Unspecified	49400047
9221	Not applicable	49400047
4403	In the formal sector	49400048
802	In the informal sector	49400048
1072	Private household	49400048
168	Do not know	49400048
0	Unspecified	49400048
4991	Not applicable	49400048
1999	In the formal sector	49400049
431	In the informal sector	49400049
550	Private household	49400049
34	Do not know	49400049
0	Unspecified	49400049
11885	Not applicable	49400049
6479	In the formal sector	74201001
560	In the informal sector	74201001
689	Private household	74201001
213	Do not know	74201001
0	Unspecified	74201001
8275	Not applicable	74201001
3920	In the formal sector	74201002
343	In the informal sector	74201002
370	Private household	74201002
54	Do not know	74201002
0	Unspecified	74201002
12191	Not applicable	74201002
5207	In the formal sector	74201003
479	In the informal sector	74201003
527	Private household	74201003
67	Do not know	74201003
0	Unspecified	74201003
12053	Not applicable	74201003
5183	In the formal sector	74201004
341	In the informal sector	74201004
488	Private household	74201004
123	Do not know	74201004
0	Unspecified	74201004
8585	Not applicable	74201004
7032	In the formal sector	74201005
408	In the informal sector	74201005
629	Private household	74201005
201	Do not know	74201005
0	Unspecified	74201005
9054	Not applicable	74201005
4503	In the formal sector	74201006
744	In the informal sector	74201006
1124	Private household	74201006
172	Do not know	74201006
0	Unspecified	74201006
18497	Not applicable	74201006
3798	In the formal sector	74201007
668	In the informal sector	74201007
1116	Private household	74201007
117	Do not know	74201007
0	Unspecified	74201007
13383	Not applicable	74201007
3803	In the formal sector	74201008
275	In the informal sector	74201008
316	Private household	74201008
22	Do not know	74201008
0	Unspecified	74201008
9334	Not applicable	74201008
5968	In the formal sector	74201009
404	In the informal sector	74201009
308	Private household	74201009
122	Do not know	74201009
0	Unspecified	74201009
11188	Not applicable	74201009
5777	In the formal sector	74201010
776	In the informal sector	74201010
684	Private household	74201010
321	Do not know	74201010
0	Unspecified	74201010
13503	Not applicable	74201010
4285	In the formal sector	74201011
415	In the informal sector	74201011
598	Private household	74201011
152	Do not know	74201011
0	Unspecified	74201011
15930	Not applicable	74201011
2361	In the formal sector	74201012
210	In the informal sector	74201012
225	Private household	74201012
19	Do not know	74201012
0	Unspecified	74201012
8373	Not applicable	74201012
3094	In the formal sector	74201013
254	In the informal sector	74201013
240	Private household	74201013
22	Do not know	74201013
0	Unspecified	74201013
11170	Not applicable	74201013
2330	In the formal sector	74201014
308	In the informal sector	74201014
219	Private household	74201014
5	Do not know	74201014
0	Unspecified	74201014
8814	Not applicable	74201014
6544	In the formal sector	74201015
493	In the informal sector	74201015
917	Private household	74201015
375	Do not know	74201015
0	Unspecified	74201015
12251	Not applicable	74201015
5139	In the formal sector	74201016
629	In the informal sector	74201016
429	Private household	74201016
212	Do not know	74201016
0	Unspecified	74201016
8993	Not applicable	74201016
2218	In the formal sector	74201017
221	In the informal sector	74201017
364	Private household	74201017
35	Do not know	74201017
0	Unspecified	74201017
7548	Not applicable	74201017
2172	In the formal sector	74201018
439	In the informal sector	74201018
487	Private household	74201018
91	Do not know	74201018
0	Unspecified	74201018
11963	Not applicable	74201018
2855	In the formal sector	74201019
638	In the informal sector	74201019
507	Private household	74201019
44	Do not know	74201019
0	Unspecified	74201019
13417	Not applicable	74201019
4515	In the formal sector	74201020
371	In the informal sector	74201020
330	Private household	74201020
24	Do not know	74201020
0	Unspecified	74201020
12218	Not applicable	74201020
3938	In the formal sector	74201021
738	In the informal sector	74201021
869	Private household	74201021
146	Do not know	74201021
0	Unspecified	74201021
14096	Not applicable	74201021
3605	In the formal sector	74201022
612	In the informal sector	74201022
505	Private household	74201022
31	Do not know	74201022
0	Unspecified	74201022
13205	Not applicable	74201022
3391	In the formal sector	74201023
415	In the informal sector	74201023
560	Private household	74201023
200	Do not know	74201023
0	Unspecified	74201023
10150	Not applicable	74201023
2131	In the formal sector	74201024
206	In the informal sector	74201024
346	Private household	74201024
40	Do not know	74201024
0	Unspecified	74201024
9049	Not applicable	74201024
3851	In the formal sector	74201025
924	In the informal sector	74201025
1330	Private household	74201025
188	Do not know	74201025
0	Unspecified	74201025
14401	Not applicable	74201025
5222	In the formal sector	74201026
943	In the informal sector	74201026
479	Private household	74201026
87	Do not know	74201026
0	Unspecified	74201026
19905	Not applicable	74201026
1869	In the formal sector	74201027
268	In the informal sector	74201027
193	Private household	74201027
25	Do not know	74201027
0	Unspecified	74201027
8975	Not applicable	74201027
4671	In the formal sector	74201028
436	In the informal sector	74201028
984	Private household	74201028
126	Do not know	74201028
0	Unspecified	74201028
18902	Not applicable	74201028
2135	In the formal sector	74201029
236	In the informal sector	74201029
624	Private household	74201029
72	Do not know	74201029
0	Unspecified	74201029
13144	Not applicable	74201029
1976	In the formal sector	74201030
140	In the informal sector	74201030
290	Private household	74201030
41	Do not know	74201030
0	Unspecified	74201030
9873	Not applicable	74201030
3054	In the formal sector	74201031
177	In the informal sector	74201031
94	Private household	74201031
47	Do not know	74201031
0	Unspecified	74201031
8336	Not applicable	74201031
1639	In the formal sector	74201032
218	In the informal sector	74201032
273	Private household	74201032
25	Do not know	74201032
0	Unspecified	74201032
9509	Not applicable	74201032
2647	In the formal sector	74201033
265	In the informal sector	74201033
358	Private household	74201033
47	Do not know	74201033
0	Unspecified	74201033
12560	Not applicable	74201033
2310	In the formal sector	74201034
154	In the informal sector	74201034
278	Private household	74201034
36	Do not know	74201034
0	Unspecified	74201034
9083	Not applicable	74201034
1811	In the formal sector	74201035
219	In the informal sector	74201035
183	Private household	74201035
31	Do not know	74201035
0	Unspecified	74201035
9077	Not applicable	74201035
4791	In the formal sector	74201036
588	In the informal sector	74201036
758	Private household	74201036
94	Do not know	74201036
0	Unspecified	74201036
15947	Not applicable	74201036
1906	In the formal sector	74201037
120	In the informal sector	74201037
214	Private household	74201037
29	Do not know	74201037
0	Unspecified	74201037
9535	Not applicable	74201037
3334	In the formal sector	74201038
296	In the informal sector	74201038
527	Private household	74201038
73	Do not know	74201038
0	Unspecified	74201038
11062	Not applicable	74201038
1853	In the formal sector	74201039
374	In the informal sector	74201039
609	Private household	74201039
151	Do not know	74201039
0	Unspecified	74201039
10568	Not applicable	74201039
2246	In the formal sector	74201040
195	In the informal sector	74201040
161	Private household	74201040
33	Do not know	74201040
0	Unspecified	74201040
10104	Not applicable	74201040
2809	In the formal sector	74201041
301	In the informal sector	74201041
408	Private household	74201041
20	Do not know	74201041
0	Unspecified	74201041
9760	Not applicable	74201041
1291	In the formal sector	74201042
378	In the informal sector	74201042
268	Private household	74201042
101	Do not know	74201042
0	Unspecified	74201042
6676	Not applicable	74201042
2761	In the formal sector	74201043
895	In the informal sector	74201043
608	Private household	74201043
71	Do not know	74201043
0	Unspecified	74201043
12451	Not applicable	74201043
2737	In the formal sector	74201044
878	In the informal sector	74201044
610	Private household	74201044
120	Do not know	74201044
0	Unspecified	74201044
14265	Not applicable	74201044
4519	In the formal sector	74201045
330	In the informal sector	74201045
657	Private household	74201045
164	Do not know	74201045
0	Unspecified	74201045
8192	Not applicable	74201045
1845	In the formal sector	74202001
455	In the informal sector	74202001
925	Private household	74202001
155	Do not know	74202001
0	Unspecified	74202001
3881	Not applicable	74202001
2115	In the formal sector	74202002
213	In the informal sector	74202002
147	Private household	74202002
55	Do not know	74202002
0	Unspecified	74202002
2529	Not applicable	74202002
2161	In the formal sector	74202003
121	In the informal sector	74202003
91	Private household	74202003
67	Do not know	74202003
0	Unspecified	74202003
3158	Not applicable	74202003
2468	In the formal sector	74202004
246	In the informal sector	74202004
654	Private household	74202004
57	Do not know	74202004
0	Unspecified	74202004
4669	Not applicable	74202004
3161	In the formal sector	74202005
544	In the informal sector	74202005
810	Private household	74202005
221	Do not know	74202005
0	Unspecified	74202005
5642	Not applicable	74202005
1498	In the formal sector	74202006
359	In the informal sector	74202006
392	Private household	74202006
36	Do not know	74202006
0	Unspecified	74202006
7120	Not applicable	74202006
1870	In the formal sector	74202007
287	In the informal sector	74202007
824	Private household	74202007
100	Do not know	74202007
0	Unspecified	74202007
3739	Not applicable	74202007
2079	In the formal sector	74202008
325	In the informal sector	74202008
206	Private household	74202008
81	Do not know	74202008
0	Unspecified	74202008
5866	Not applicable	74202008
286	In the formal sector	74202009
17	In the informal sector	74202009
10	Private household	74202009
1	Do not know	74202009
0	Unspecified	74202009
582	Not applicable	74202009
2182	In the formal sector	74202010
301	In the informal sector	74202010
379	Private household	74202010
113	Do not know	74202010
0	Unspecified	74202010
5816	Not applicable	74202010
1710	In the formal sector	74202011
319	In the informal sector	74202011
588	Private household	74202011
33	Do not know	74202011
0	Unspecified	74202011
4520	Not applicable	74202011
1148	In the formal sector	74202012
97	In the informal sector	74202012
341	Private household	74202012
59	Do not know	74202012
0	Unspecified	74202012
2211	Not applicable	74202012
2241	In the formal sector	74202013
299	In the informal sector	74202013
583	Private household	74202013
106	Do not know	74202013
0	Unspecified	74202013
4106	Not applicable	74202013
2492	In the formal sector	74202014
184	In the informal sector	74202014
261	Private household	74202014
93	Do not know	74202014
0	Unspecified	74202014
3054	Not applicable	74202014
1436	In the formal sector	74203001
214	In the informal sector	74203001
295	Private household	74203001
49	Do not know	74203001
0	Unspecified	74203001
3802	Not applicable	74203001
1320	In the formal sector	74203002
340	In the informal sector	74203002
288	Private household	74203002
91	Do not know	74203002
0	Unspecified	74203002
6078	Not applicable	74203002
1668	In the formal sector	74203003
250	In the informal sector	74203003
182	Private household	74203003
28	Do not know	74203003
0	Unspecified	74203003
4784	Not applicable	74203003
1387	In the formal sector	74203004
228	In the informal sector	74203004
85	Private household	74203004
38	Do not know	74203004
0	Unspecified	74203004
4899	Not applicable	74203004
1170	In the formal sector	74203005
149	In the informal sector	74203005
308	Private household	74203005
143	Do not know	74203005
0	Unspecified	74203005
5120	Not applicable	74203005
1100	In the formal sector	74203006
314	In the informal sector	74203006
434	Private household	74203006
110	Do not know	74203006
0	Unspecified	74203006
4254	Not applicable	74203006
1986	In the formal sector	74203007
321	In the informal sector	74203007
500	Private household	74203007
123	Do not know	74203007
0	Unspecified	74203007
7255	Not applicable	74203007
3076	In the formal sector	74203008
249	In the informal sector	74203008
568	Private household	74203008
124	Do not know	74203008
0	Unspecified	74203008
6231	Not applicable	74203008
2495	In the formal sector	74203009
178	In the informal sector	74203009
246	Private household	74203009
52	Do not know	74203009
0	Unspecified	74203009
3447	Not applicable	74203009
2326	In the formal sector	74203010
354	In the informal sector	74203010
406	Private household	74203010
155	Do not know	74203010
0	Unspecified	74203010
3984	Not applicable	74203010
1706	In the formal sector	74203011
199	In the informal sector	74203011
261	Private household	74203011
79	Do not know	74203011
0	Unspecified	74203011
4243	Not applicable	74203011
1954	In the formal sector	74203012
409	In the informal sector	74203012
641	Private household	74203012
207	Do not know	74203012
0	Unspecified	74203012
6614	Not applicable	74203012
1476	In the formal sector	74203013
210	In the informal sector	74203013
159	Private household	74203013
44	Do not know	74203013
0	Unspecified	74203013
6682	Not applicable	74203013
2543	In the formal sector	74801001
593	In the informal sector	74801001
600	Private household	74801001
92	Do not know	74801001
0	Unspecified	74801001
9711	Not applicable	74801001
2846	In the formal sector	74801002
791	In the informal sector	74801002
372	Private household	74801002
58	Do not know	74801002
0	Unspecified	74801002
11797	Not applicable	74801002
3138	In the formal sector	74801003
347	In the informal sector	74801003
806	Private household	74801003
123	Do not know	74801003
0	Unspecified	74801003
8890	Not applicable	74801003
2407	In the formal sector	74801004
601	In the informal sector	74801004
815	Private household	74801004
59	Do not know	74801004
0	Unspecified	74801004
8977	Not applicable	74801004
1972	In the formal sector	74801005
209	In the informal sector	74801005
227	Private household	74801005
21	Do not know	74801005
0	Unspecified	74801005
5362	Not applicable	74801005
1765	In the formal sector	74801006
121	In the informal sector	74801006
308	Private household	74801006
76	Do not know	74801006
0	Unspecified	74801006
5575	Not applicable	74801006
3066	In the formal sector	74801007
344	In the informal sector	74801007
159	Private household	74801007
40	Do not know	74801007
0	Unspecified	74801007
6345	Not applicable	74801007
2894	In the formal sector	74801008
268	In the informal sector	74801008
495	Private household	74801008
72	Do not know	74801008
0	Unspecified	74801008
7497	Not applicable	74801008
2146	In the formal sector	74801009
162	In the informal sector	74801009
315	Private household	74801009
31	Do not know	74801009
0	Unspecified	74801009
3995	Not applicable	74801009
2032	In the formal sector	74801010
172	In the informal sector	74801010
254	Private household	74801010
19	Do not know	74801010
0	Unspecified	74801010
6067	Not applicable	74801010
3235	In the formal sector	74801011
415	In the informal sector	74801011
422	Private household	74801011
23	Do not know	74801011
0	Unspecified	74801011
9150	Not applicable	74801011
1336	In the formal sector	74801012
201	In the informal sector	74801012
292	Private household	74801012
40	Do not know	74801012
0	Unspecified	74801012
4653	Not applicable	74801012
2753	In the formal sector	74801013
333	In the informal sector	74801013
441	Private household	74801013
14	Do not know	74801013
0	Unspecified	74801013
6508	Not applicable	74801013
3551	In the formal sector	74801014
315	In the informal sector	74801014
920	Private household	74801014
109	Do not know	74801014
0	Unspecified	74801014
8487	Not applicable	74801014
1899	In the formal sector	74801015
392	In the informal sector	74801015
177	Private household	74801015
68	Do not know	74801015
0	Unspecified	74801015
4999	Not applicable	74801015
2788	In the formal sector	74801016
648	In the informal sector	74801016
858	Private household	74801016
196	Do not know	74801016
0	Unspecified	74801016
7102	Not applicable	74801016
3514	In the formal sector	74801017
331	In the informal sector	74801017
446	Private household	74801017
103	Do not know	74801017
0	Unspecified	74801017
4416	Not applicable	74801017
4315	In the formal sector	74801018
490	In the informal sector	74801018
367	Private household	74801018
193	Do not know	74801018
0	Unspecified	74801018
4866	Not applicable	74801018
1377	In the formal sector	74801019
121	In the informal sector	74801019
301	Private household	74801019
8	Do not know	74801019
0	Unspecified	74801019
4893	Not applicable	74801019
4418	In the formal sector	74801020
465	In the informal sector	74801020
392	Private household	74801020
179	Do not know	74801020
0	Unspecified	74801020
6749	Not applicable	74801020
3430	In the formal sector	74801021
384	In the informal sector	74801021
456	Private household	74801021
124	Do not know	74801021
0	Unspecified	74801021
5129	Not applicable	74801021
4338	In the formal sector	74801022
375	In the informal sector	74801022
668	Private household	74801022
144	Do not know	74801022
0	Unspecified	74801022
4755	Not applicable	74801022
3895	In the formal sector	74801023
723	In the informal sector	74801023
1062	Private household	74801023
130	Do not know	74801023
0	Unspecified	74801023
5732	Not applicable	74801023
2902	In the formal sector	74801024
301	In the informal sector	74801024
728	Private household	74801024
102	Do not know	74801024
0	Unspecified	74801024
8775	Not applicable	74801024
1297	In the formal sector	74801025
362	In the informal sector	74801025
524	Private household	74801025
43	Do not know	74801025
0	Unspecified	74801025
4615	Not applicable	74801025
4564	In the formal sector	74801026
520	In the informal sector	74801026
392	Private household	74801026
271	Do not know	74801026
0	Unspecified	74801026
10154	Not applicable	74801026
2554	In the formal sector	74801027
846	In the informal sector	74801027
1938	Private household	74801027
203	Do not know	74801027
0	Unspecified	74801027
7858	Not applicable	74801027
4441	In the formal sector	74801028
376	In the informal sector	74801028
522	Private household	74801028
133	Do not know	74801028
0	Unspecified	74801028
4152	Not applicable	74801028
3542	In the formal sector	74801029
514	In the informal sector	74801029
448	Private household	74801029
127	Do not know	74801029
0	Unspecified	74801029
3221	Not applicable	74801029
3237	In the formal sector	74801030
1455	In the informal sector	74801030
1109	Private household	74801030
289	Do not know	74801030
0	Unspecified	74801030
9853	Not applicable	74801030
2486	In the formal sector	74801031
416	In the informal sector	74801031
882	Private household	74801031
97	Do not know	74801031
0	Unspecified	74801031
6418	Not applicable	74801031
2283	In the formal sector	74801032
430	In the informal sector	74801032
910	Private household	74801032
98	Do not know	74801032
0	Unspecified	74801032
3759	Not applicable	74801032
2357	In the formal sector	74801033
631	In the informal sector	74801033
1245	Private household	74801033
132	Do not know	74801033
0	Unspecified	74801033
3914	Not applicable	74801033
2724	In the formal sector	74801034
473	In the informal sector	74801034
797	Private household	74801034
137	Do not know	74801034
0	Unspecified	74801034
10679	Not applicable	74801034
2310	In the formal sector	74802001
824	In the informal sector	74802001
854	Private household	74802001
131	Do not know	74802001
0	Unspecified	74802001
6831	Not applicable	74802001
3040	In the formal sector	74802002
230	In the informal sector	74802002
907	Private household	74802002
82	Do not know	74802002
0	Unspecified	74802002
7536	Not applicable	74802002
1703	In the formal sector	74802003
430	In the informal sector	74802003
368	Private household	74802003
131	Do not know	74802003
0	Unspecified	74802003
3697	Not applicable	74802003
1466	In the formal sector	74802004
132	In the informal sector	74802004
171	Private household	74802004
95	Do not know	74802004
0	Unspecified	74802004
2411	Not applicable	74802004
1743	In the formal sector	74802005
199	In the informal sector	74802005
190	Private household	74802005
46	Do not know	74802005
0	Unspecified	74802005
2689	Not applicable	74802005
2596	In the formal sector	74802006
213	In the informal sector	74802006
230	Private household	74802006
104	Do not know	74802006
0	Unspecified	74802006
3554	Not applicable	74802006
3298	In the formal sector	74802007
257	In the informal sector	74802007
253	Private household	74802007
135	Do not know	74802007
0	Unspecified	74802007
3936	Not applicable	74802007
2373	In the formal sector	74802008
127	In the informal sector	74802008
254	Private household	74802008
39	Do not know	74802008
0	Unspecified	74802008
7233	Not applicable	74802008
2988	In the formal sector	74802009
363	In the informal sector	74802009
649	Private household	74802009
98	Do not know	74802009
0	Unspecified	74802009
5657	Not applicable	74802009
921	In the formal sector	74802010
21	In the informal sector	74802010
117	Private household	74802010
11	Do not know	74802010
0	Unspecified	74802010
3021	Not applicable	74802010
1212	In the formal sector	74802011
83	In the informal sector	74802011
173	Private household	74802011
12	Do not know	74802011
0	Unspecified	74802011
2452	Not applicable	74802011
1185	In the formal sector	74802012
383	In the informal sector	74802012
276	Private household	74802012
61	Do not know	74802012
0	Unspecified	74802012
4498	Not applicable	74802012
2201	In the formal sector	74802013
94	In the informal sector	74802013
142	Private household	74802013
31	Do not know	74802013
0	Unspecified	74802013
4929	Not applicable	74802013
2053	In the formal sector	74802014
140	In the informal sector	74802014
159	Private household	74802014
25	Do not know	74802014
0	Unspecified	74802014
4465	Not applicable	74802014
1248	In the formal sector	74802015
176	In the informal sector	74802015
233	Private household	74802015
116	Do not know	74802015
0	Unspecified	74802015
5017	Not applicable	74802015
2175	In the formal sector	74802016
173	In the informal sector	74802016
79	Private household	74802016
47	Do not know	74802016
0	Unspecified	74802016
5126	Not applicable	74802016
925	In the formal sector	74802017
72	In the informal sector	74802017
39	Private household	74802017
11	Do not know	74802017
0	Unspecified	74802017
3090	Not applicable	74802017
1838	In the formal sector	74802018
179	In the informal sector	74802018
151	Private household	74802018
24	Do not know	74802018
0	Unspecified	74802018
5050	Not applicable	74802018
967	In the formal sector	74802019
24	In the informal sector	74802019
116	Private household	74802019
5	Do not know	74802019
0	Unspecified	74802019
3425	Not applicable	74802019
2293	In the formal sector	74802020
182	In the informal sector	74802020
209	Private household	74802020
45	Do not know	74802020
0	Unspecified	74802020
6080	Not applicable	74802020
1007	In the formal sector	74802021
124	In the informal sector	74802021
68	Private household	74802021
6	Do not know	74802021
0	Unspecified	74802021
3129	Not applicable	74802021
1162	In the formal sector	74802022
154	In the informal sector	74802022
88	Private household	74802022
9	Do not know	74802022
0	Unspecified	74802022
3185	Not applicable	74802022
3682	In the formal sector	74803001
552	In the informal sector	74803001
144	Private household	74803001
23	Do not know	74803001
0	Unspecified	74803001
3088	Not applicable	74803001
4259	In the formal sector	74803002
203	In the informal sector	74803002
512	Private household	74803002
79	Do not know	74803002
0	Unspecified	74803002
3837	Not applicable	74803002
1200	In the formal sector	74803003
1274	In the informal sector	74803003
3	Private household	74803003
4	Do not know	74803003
0	Unspecified	74803003
242	Not applicable	74803003
1815	In the formal sector	74803004
66	In the informal sector	74803004
113	Private household	74803004
29	Do not know	74803004
0	Unspecified	74803004
3007	Not applicable	74803004
2239	In the formal sector	74803005
103	In the informal sector	74803005
204	Private household	74803005
73	Do not know	74803005
0	Unspecified	74803005
2440	Not applicable	74803005
2756	In the formal sector	74803006
141	In the informal sector	74803006
249	Private household	74803006
73	Do not know	74803006
0	Unspecified	74803006
4573	Not applicable	74803006
1751	In the formal sector	74803007
84	In the informal sector	74803007
211	Private household	74803007
18	Do not know	74803007
0	Unspecified	74803007
6499	Not applicable	74803007
1712	In the formal sector	74803008
321	In the informal sector	74803008
307	Private household	74803008
36	Do not know	74803008
0	Unspecified	74803008
7411	Not applicable	74803008
1031	In the formal sector	74803009
327	In the informal sector	74803009
139	Private household	74803009
118	Do not know	74803009
0	Unspecified	74803009
4595	Not applicable	74803009
1571	In the formal sector	74803010
464	In the informal sector	74803010
228	Private household	74803010
27	Do not know	74803010
0	Unspecified	74803010
5449	Not applicable	74803010
653	In the formal sector	74803011
366	In the informal sector	74803011
166	Private household	74803011
27	Do not know	74803011
0	Unspecified	74803011
3634	Not applicable	74803011
2008	In the formal sector	74803012
204	In the informal sector	74803012
183	Private household	74803012
52	Do not know	74803012
0	Unspecified	74803012
5635	Not applicable	74803012
1558	In the formal sector	74803013
219	In the informal sector	74803013
88	Private household	74803013
12	Do not know	74803013
0	Unspecified	74803013
4345	Not applicable	74803013
1022	In the formal sector	74803014
447	In the informal sector	74803014
309	Private household	74803014
74	Do not know	74803014
0	Unspecified	74803014
5129	Not applicable	74803014
1318	In the formal sector	74803015
253	In the informal sector	74803015
172	Private household	74803015
8	Do not know	74803015
0	Unspecified	74803015
4858	Not applicable	74803015
2425	In the formal sector	74803016
429	In the informal sector	74803016
712	Private household	74803016
112	Do not know	74803016
0	Unspecified	74803016
6068	Not applicable	74803016
2306	In the formal sector	74804001
408	In the informal sector	74804001
551	Private household	74804001
78	Do not know	74804001
0	Unspecified	74804001
7708	Not applicable	74804001
1430	In the formal sector	74804002
194	In the informal sector	74804002
291	Private household	74804002
37	Do not know	74804002
0	Unspecified	74804002
6166	Not applicable	74804002
1054	In the formal sector	74804003
302	In the informal sector	74804003
267	Private household	74804003
1	Do not know	74804003
0	Unspecified	74804003
4762	Not applicable	74804003
1325	In the formal sector	74804004
412	In the informal sector	74804004
403	Private household	74804004
46	Do not know	74804004
0	Unspecified	74804004
6953	Not applicable	74804004
1382	In the formal sector	74804005
34	In the informal sector	74804005
32	Private household	74804005
7	Do not know	74804005
0	Unspecified	74804005
1161	Not applicable	74804005
1283	In the formal sector	74804006
140	In the informal sector	74804006
30	Private household	74804006
0	Do not know	74804006
0	Unspecified	74804006
4330	Not applicable	74804006
1569	In the formal sector	74804007
218	In the informal sector	74804007
118	Private household	74804007
10	Do not know	74804007
0	Unspecified	74804007
5862	Not applicable	74804007
821	In the formal sector	74804008
171	In the informal sector	74804008
143	Private household	74804008
13	Do not know	74804008
0	Unspecified	74804008
4930	Not applicable	74804008
935	In the formal sector	74804009
216	In the informal sector	74804009
160	Private household	74804009
55	Do not know	74804009
0	Unspecified	74804009
4712	Not applicable	74804009
1136	In the formal sector	74804010
151	In the informal sector	74804010
61	Private household	74804010
24	Do not know	74804010
0	Unspecified	74804010
5209	Not applicable	74804010
3254	In the formal sector	74804011
44	In the informal sector	74804011
131	Private household	74804011
77	Do not know	74804011
0	Unspecified	74804011
2526	Not applicable	74804011
1139	In the formal sector	74804012
118	In the informal sector	74804012
263	Private household	74804012
56	Do not know	74804012
0	Unspecified	74804012
4225	Not applicable	74804012
2441	In the formal sector	74804013
64	In the informal sector	74804013
104	Private household	74804013
16	Do not know	74804013
0	Unspecified	74804013
4943	Not applicable	74804013
5776	In the formal sector	74804014
84	In the informal sector	74804014
126	Private household	74804014
20	Do not know	74804014
0	Unspecified	74804014
2017	Not applicable	74804014
2156	In the formal sector	74804015
201	In the informal sector	74804015
97	Private household	74804015
49	Do not know	74804015
0	Unspecified	74804015
2465	Not applicable	74804015
2818	In the formal sector	74804016
111	In the informal sector	74804016
236	Private household	74804016
59	Do not know	74804016
0	Unspecified	74804016
4305	Not applicable	74804016
2145	In the formal sector	74804017
92	In the informal sector	74804017
203	Private household	74804017
79	Do not know	74804017
0	Unspecified	74804017
3229	Not applicable	74804017
2198	In the formal sector	74804018
261	In the informal sector	74804018
118	Private household	74804018
28	Do not know	74804018
0	Unspecified	74804018
3140	Not applicable	74804018
0	In the formal sector	74804019
0	In the informal sector	74804019
0	Private household	74804019
0	Do not know	74804019
0	Unspecified	74804019
3798	Not applicable	74804019
2600	In the formal sector	74804020
314	In the informal sector	74804020
252	Private household	74804020
91	Do not know	74804020
0	Unspecified	74804020
6465	Not applicable	74804020
4573	In the formal sector	74804021
619	In the informal sector	74804021
429	Private household	74804021
138	Do not know	74804021
0	Unspecified	74804021
8154	Not applicable	74804021
947	In the formal sector	74804022
197	In the informal sector	74804022
185	Private household	74804022
75	Do not know	74804022
0	Unspecified	74804022
5756	Not applicable	74804022
1740	In the formal sector	74804023
207	In the informal sector	74804023
360	Private household	74804023
25	Do not know	74804023
0	Unspecified	74804023
4445	Not applicable	74804023
1618	In the formal sector	74804024
65	In the informal sector	74804024
151	Private household	74804024
22	Do not know	74804024
0	Unspecified	74804024
3413	Not applicable	74804024
1479	In the formal sector	74804025
104	In the informal sector	74804025
264	Private household	74804025
51	Do not know	74804025
0	Unspecified	74804025
5543	Not applicable	74804025
2137	In the formal sector	74804026
400	In the informal sector	74804026
526	Private household	74804026
60	Do not know	74804026
0	Unspecified	74804026
7611	Not applicable	74804026
2162	In the formal sector	74804027
318	In the informal sector	74804027
99	Private household	74804027
19	Do not know	74804027
0	Unspecified	74804027
2453	Not applicable	74804027
2332	In the formal sector	74804028
168	In the informal sector	74804028
273	Private household	74804028
68	Do not know	74804028
0	Unspecified	74804028
3794	Not applicable	74804028
17162	In the formal sector	79700001
2164	In the informal sector	79700001
2593	Private household	79700001
696	Do not know	79700001
0	Unspecified	79700001
32272	Not applicable	79700001
10484	In the formal sector	79700002
717	In the informal sector	79700002
1079	Private household	79700002
187	Do not know	79700002
0	Unspecified	79700002
20638	Not applicable	79700002
7812	In the formal sector	79700003
918	In the informal sector	79700003
1000	Private household	79700003
155	Do not know	79700003
0	Unspecified	79700003
16440	Not applicable	79700003
4453	In the formal sector	79700004
393	In the informal sector	79700004
327	Private household	79700004
87	Do not know	79700004
0	Unspecified	79700004
7858	Not applicable	79700004
7127	In the formal sector	79700005
487	In the informal sector	79700005
824	Private household	79700005
185	Do not know	79700005
0	Unspecified	79700005
18585	Not applicable	79700005
8241	In the formal sector	79700006
1233	In the informal sector	79700006
599	Private household	79700006
158	Do not know	79700006
0	Unspecified	79700006
19327	Not applicable	79700006
7181	In the formal sector	79700007
397	In the informal sector	79700007
551	Private household	79700007
151	Do not know	79700007
0	Unspecified	79700007
17267	Not applicable	79700007
7064	In the formal sector	79700008
1010	In the informal sector	79700008
1774	Private household	79700008
378	Do not know	79700008
0	Unspecified	79700008
22345	Not applicable	79700008
7081	In the formal sector	79700009
453	In the informal sector	79700009
1192	Private household	79700009
81	Do not know	79700009
0	Unspecified	79700009
15467	Not applicable	79700009
7453	In the formal sector	79700010
504	In the informal sector	79700010
925	Private household	79700010
303	Do not know	79700010
0	Unspecified	79700010
16544	Not applicable	79700010
7672	In the formal sector	79700011
669	In the informal sector	79700011
1677	Private household	79700011
392	Do not know	79700011
0	Unspecified	79700011
20478	Not applicable	79700011
9258	In the formal sector	79700012
1355	In the informal sector	79700012
1427	Private household	79700012
381	Do not know	79700012
0	Unspecified	79700012
24350	Not applicable	79700012
10521	In the formal sector	79700013
1102	In the informal sector	79700013
2109	Private household	79700013
289	Do not know	79700013
0	Unspecified	79700013
15559	Not applicable	79700013
7259	In the formal sector	79700014
668	In the informal sector	79700014
844	Private household	79700014
235	Do not know	79700014
0	Unspecified	79700014
22040	Not applicable	79700014
12334	In the formal sector	79700015
1153	In the informal sector	79700015
1559	Private household	79700015
555	Do not know	79700015
0	Unspecified	79700015
13842	Not applicable	79700015
11454	In the formal sector	79700016
1300	In the informal sector	79700016
1251	Private household	79700016
598	Do not know	79700016
0	Unspecified	79700016
12682	Not applicable	79700016
14714	In the formal sector	79700017
1463	In the informal sector	79700017
2070	Private household	79700017
480	Do not know	79700017
0	Unspecified	79700017
18039	Not applicable	79700017
12633	In the formal sector	79700018
1051	In the informal sector	79700018
1623	Private household	79700018
474	Do not know	79700018
0	Unspecified	79700018
11661	Not applicable	79700018
11785	In the formal sector	79700019
822	In the informal sector	79700019
1827	Private household	79700019
429	Do not know	79700019
0	Unspecified	79700019
11745	Not applicable	79700019
12595	In the formal sector	79700020
739	In the informal sector	79700020
1796	Private household	79700020
490	Do not know	79700020
0	Unspecified	79700020
13298	Not applicable	79700020
15774	In the formal sector	79700021
1493	In the informal sector	79700021
2654	Private household	79700021
594	Do not know	79700021
0	Unspecified	79700021
22595	Not applicable	79700021
13222	In the formal sector	79700022
888	In the informal sector	79700022
1472	Private household	79700022
532	Do not know	79700022
0	Unspecified	79700022
13124	Not applicable	79700022
13036	In the formal sector	79700023
1023	In the informal sector	79700023
1487	Private household	79700023
662	Do not know	79700023
0	Unspecified	79700023
12532	Not applicable	79700023
15523	In the formal sector	79700024
1445	In the informal sector	79700024
2205	Private household	79700024
516	Do not know	79700024
0	Unspecified	79700024
26356	Not applicable	79700024
10343	In the formal sector	79700025
2000	In the informal sector	79700025
1760	Private household	79700025
401	Do not know	79700025
0	Unspecified	79700025
29560	Not applicable	79700025
6072	In the formal sector	79700026
1308	In the informal sector	79700026
1153	Private household	79700026
263	Do not know	79700026
0	Unspecified	79700026
24229	Not applicable	79700026
10289	In the formal sector	79700027
709	In the informal sector	79700027
1385	Private household	79700027
444	Do not know	79700027
0	Unspecified	79700027
11030	Not applicable	79700027
11719	In the formal sector	79700028
653	In the informal sector	79700028
1188	Private household	79700028
376	Do not know	79700028
0	Unspecified	79700028
11917	Not applicable	79700028
5125	In the formal sector	79700029
497	In the informal sector	79700029
326	Private household	79700029
100	Do not know	79700029
0	Unspecified	79700029
12458	Not applicable	79700029
5948	In the formal sector	79700030
802	In the informal sector	79700030
717	Private household	79700030
83	Do not know	79700030
0	Unspecified	79700030
15051	Not applicable	79700030
12212	In the formal sector	79700031
805	In the informal sector	79700031
1230	Private household	79700031
409	Do not know	79700031
0	Unspecified	79700031
19522	Not applicable	79700031
10411	In the formal sector	79700032
577	In the informal sector	79700032
971	Private household	79700032
254	Do not know	79700032
0	Unspecified	79700032
12063	Not applicable	79700032
13656	In the formal sector	79700033
1114	In the informal sector	79700033
2240	Private household	79700033
710	Do not know	79700033
0	Unspecified	79700033
23027	Not applicable	79700033
5611	In the formal sector	79700034
461	In the informal sector	79700034
615	Private household	79700034
158	Do not know	79700034
0	Unspecified	79700034
19132	Not applicable	79700034
7843	In the formal sector	79700035
1276	In the informal sector	79700035
1632	Private household	79700035
635	Do not know	79700035
0	Unspecified	79700035
16713	Not applicable	79700035
10620	In the formal sector	79700036
1241	In the informal sector	79700036
1298	Private household	79700036
379	Do not know	79700036
0	Unspecified	79700036
13518	Not applicable	79700036
12752	In the formal sector	79700037
1291	In the informal sector	79700037
1318	Private household	79700037
367	Do not know	79700037
0	Unspecified	79700037
14708	Not applicable	79700037
14924	In the formal sector	79700038
1130	In the informal sector	79700038
1571	Private household	79700038
357	Do not know	79700038
0	Unspecified	79700038
15695	Not applicable	79700038
13106	In the formal sector	79700039
1240	In the informal sector	79700039
1134	Private household	79700039
456	Do not know	79700039
0	Unspecified	79700039
18680	Not applicable	79700039
8819	In the formal sector	79700040
796	In the informal sector	79700040
1142	Private household	79700040
228	Do not know	79700040
0	Unspecified	79700040
19502	Not applicable	79700040
11470	In the formal sector	79700041
1292	In the informal sector	79700041
1607	Private household	79700041
238	Do not know	79700041
0	Unspecified	79700041
27802	Not applicable	79700041
11133	In the formal sector	79700042
925	In the informal sector	79700042
1491	Private household	79700042
454	Do not know	79700042
0	Unspecified	79700042
22024	Not applicable	79700042
10947	In the formal sector	79700043
657	In the informal sector	79700043
813	Private household	79700043
181	Do not know	79700043
0	Unspecified	79700043
14369	Not applicable	79700043
8435	In the formal sector	79700044
903	In the informal sector	79700044
1678	Private household	79700044
216	Do not know	79700044
0	Unspecified	79700044
20871	Not applicable	79700044
8153	In the formal sector	79700045
1088	In the informal sector	79700045
1131	Private household	79700045
131	Do not know	79700045
0	Unspecified	79700045
19910	Not applicable	79700045
7085	In the formal sector	79700046
468	In the informal sector	79700046
755	Private household	79700046
77	Do not know	79700046
0	Unspecified	79700046
19220	Not applicable	79700046
7852	In the formal sector	79700047
420	In the informal sector	79700047
561	Private household	79700047
135	Do not know	79700047
0	Unspecified	79700047
21306	Not applicable	79700047
5194	In the formal sector	79700048
474	In the informal sector	79700048
441	Private household	79700048
47	Do not know	79700048
0	Unspecified	79700048
16983	Not applicable	79700048
6025	In the formal sector	79700049
672	In the informal sector	79700049
450	Private household	79700049
111	Do not know	79700049
0	Unspecified	79700049
18018	Not applicable	79700049
6832	In the formal sector	79700050
713	In the informal sector	79700050
620	Private household	79700050
121	Do not know	79700050
0	Unspecified	79700050
19127	Not applicable	79700050
7798	In the formal sector	79700051
990	In the informal sector	79700051
1138	Private household	79700051
263	Do not know	79700051
0	Unspecified	79700051
20728	Not applicable	79700051
8736	In the formal sector	79700052
1053	In the informal sector	79700052
953	Private household	79700052
133	Do not know	79700052
0	Unspecified	79700052
22005	Not applicable	79700052
7653	In the formal sector	79700053
803	In the informal sector	79700053
1325	Private household	79700053
521	Do not know	79700053
0	Unspecified	79700053
25585	Not applicable	79700053
5929	In the formal sector	79700054
601	In the informal sector	79700054
826	Private household	79700054
106	Do not know	79700054
0	Unspecified	79700054
18581	Not applicable	79700054
6668	In the formal sector	79700055
959	In the informal sector	79700055
763	Private household	79700055
194	Do not know	79700055
0	Unspecified	79700055
21241	Not applicable	79700055
5671	In the formal sector	79700056
527	In the informal sector	79700056
713	Private household	79700056
156	Do not know	79700056
0	Unspecified	79700056
17081	Not applicable	79700056
8344	In the formal sector	79700057
816	In the informal sector	79700057
989	Private household	79700057
308	Do not know	79700057
0	Unspecified	79700057
23801	Not applicable	79700057
10471	In the formal sector	79700058
1407	In the informal sector	79700058
1300	Private household	79700058
311	Do not know	79700058
0	Unspecified	79700058
30854	Not applicable	79700058
7245	In the formal sector	79700059
794	In the informal sector	79700059
1474	Private household	79700059
292	Do not know	79700059
0	Unspecified	79700059
22373	Not applicable	79700059
7265	In the formal sector	79700060
734	In the informal sector	79700060
947	Private household	79700060
163	Do not know	79700060
0	Unspecified	79700060
22296	Not applicable	79700060
6175	In the formal sector	79700061
1385	In the informal sector	79700061
1104	Private household	79700061
182	Do not know	79700061
0	Unspecified	79700061
30052	Not applicable	79700061
3857	In the formal sector	79700062
1143	In the informal sector	79700062
576	Private household	79700062
87	Do not know	79700062
0	Unspecified	79700062
18182	Not applicable	79700062
6210	In the formal sector	79700063
866	In the informal sector	79700063
843	Private household	79700063
216	Do not know	79700063
0	Unspecified	79700063
27325	Not applicable	79700063
7274	In the formal sector	79700064
1247	In the informal sector	79700064
1050	Private household	79700064
403	Do not know	79700064
0	Unspecified	79700064
24502	Not applicable	79700064
6861	In the formal sector	79700065
1546	In the informal sector	79700065
1937	Private household	79700065
258	Do not know	79700065
0	Unspecified	79700065
28768	Not applicable	79700065
6773	In the formal sector	79700066
1202	In the informal sector	79700066
2475	Private household	79700066
345	Do not know	79700066
0	Unspecified	79700066
31158	Not applicable	79700066
7982	In the formal sector	79700067
1157	In the informal sector	79700067
994	Private household	79700067
106	Do not know	79700067
0	Unspecified	79700067
23925	Not applicable	79700067
6387	In the formal sector	79700068
949	In the informal sector	79700068
1179	Private household	79700068
113	Do not know	79700068
0	Unspecified	79700068
24876	Not applicable	79700068
5077	In the formal sector	79700069
595	In the informal sector	79700069
665	Private household	79700069
174	Do not know	79700069
0	Unspecified	79700069
15159	Not applicable	79700069
5376	In the formal sector	79700070
619	In the informal sector	79700070
775	Private household	79700070
175	Do not know	79700070
0	Unspecified	79700070
16332	Not applicable	79700070
9723	In the formal sector	79700071
1153	In the informal sector	79700071
1212	Private household	79700071
143	Do not know	79700071
0	Unspecified	79700071
30333	Not applicable	79700071
9523	In the formal sector	79700072
1005	In the informal sector	79700072
1366	Private household	79700072
319	Do not know	79700072
0	Unspecified	79700072
20075	Not applicable	79700072
9795	In the formal sector	79700073
990	In the informal sector	79700073
1371	Private household	79700073
286	Do not know	79700073
0	Unspecified	79700073
20091	Not applicable	79700073
8543	In the formal sector	79700074
810	In the informal sector	79700074
905	Private household	79700074
243	Do not know	79700074
0	Unspecified	79700074
16338	Not applicable	79700074
11105	In the formal sector	79700075
1008	In the informal sector	79700075
1380	Private household	79700075
416	Do not know	79700075
0	Unspecified	79700075
19265	Not applicable	79700075
10247	In the formal sector	79700076
800	In the informal sector	79700076
1131	Private household	79700076
390	Do not know	79700076
0	Unspecified	79700076
16062	Not applicable	79700076
7746	In the formal sector	79700077
704	In the informal sector	79700077
745	Private household	79700077
150	Do not know	79700077
0	Unspecified	79700077
23180	Not applicable	79700077
6268	In the formal sector	79700078
559	In the informal sector	79700078
393	Private household	79700078
98	Do not know	79700078
0	Unspecified	79700078
16486	Not applicable	79700078
6545	In the formal sector	79700079
725	In the informal sector	79700079
701	Private household	79700079
91	Do not know	79700079
0	Unspecified	79700079
24375	Not applicable	79700079
4413	In the formal sector	79700080
548	In the informal sector	79700080
396	Private household	79700080
71	Do not know	79700080
0	Unspecified	79700080
16482	Not applicable	79700080
8033	In the formal sector	79700081
1615	In the informal sector	79700081
1231	Private household	79700081
336	Do not know	79700081
0	Unspecified	79700081
33249	Not applicable	79700081
6016	In the formal sector	79700082
749	In the informal sector	79700082
530	Private household	79700082
78	Do not know	79700082
0	Unspecified	79700082
19564	Not applicable	79700082
4329	In the formal sector	79700083
970	In the informal sector	79700083
827	Private household	79700083
153	Do not know	79700083
0	Unspecified	79700083
19355	Not applicable	79700083
7970	In the formal sector	79700084
1383	In the informal sector	79700084
1085	Private household	79700084
149	Do not know	79700084
0	Unspecified	79700084
29128	Not applicable	79700084
6565	In the formal sector	79700085
781	In the informal sector	79700085
799	Private household	79700085
309	Do not know	79700085
0	Unspecified	79700085
22081	Not applicable	79700085
6971	In the formal sector	79700086
1160	In the informal sector	79700086
1347	Private household	79700086
360	Do not know	79700086
0	Unspecified	79700086
29426	Not applicable	79700086
5788	In the formal sector	79700087
570	In the informal sector	79700087
772	Private household	79700087
173	Do not know	79700087
0	Unspecified	79700087
23335	Not applicable	79700087
8865	In the formal sector	79700088
907	In the informal sector	79700088
755	Private household	79700088
326	Do not know	79700088
0	Unspecified	79700088
20604	Not applicable	79700088
15508	In the formal sector	79700089
2261	In the informal sector	79700089
2303	Private household	79700089
899	Do not know	79700089
0	Unspecified	79700089
30300	Not applicable	79700089
8636	In the formal sector	79700090
983	In the informal sector	79700090
1265	Private household	79700090
416	Do not know	79700090
0	Unspecified	79700090
21156	Not applicable	79700090
12607	In the formal sector	79700091
798	In the informal sector	79700091
1599	Private household	79700091
274	Do not know	79700091
0	Unspecified	79700091
18130	Not applicable	79700091
12316	In the formal sector	79700092
1218	In the informal sector	79700092
1569	Private household	79700092
478	Do not know	79700092
0	Unspecified	79700092
14272	Not applicable	79700092
7169	In the formal sector	79700093
1082	In the informal sector	79700093
1427	Private household	79700093
138	Do not know	79700093
0	Unspecified	79700093
14011	Not applicable	79700093
12180	In the formal sector	79700094
895	In the informal sector	79700094
1279	Private household	79700094
243	Do not know	79700094
0	Unspecified	79700094
12050	Not applicable	79700094
6958	In the formal sector	79700095
974	In the informal sector	79700095
1067	Private household	79700095
143	Do not know	79700095
0	Unspecified	79700095
20188	Not applicable	79700095
5589	In the formal sector	79700096
1004	In the informal sector	79700096
1094	Private household	79700096
155	Do not know	79700096
0	Unspecified	79700096
19366	Not applicable	79700096
12312	In the formal sector	79700097
800	In the informal sector	79700097
1250	Private household	79700097
438	Do not know	79700097
0	Unspecified	79700097
19834	Not applicable	79700097
5276	In the formal sector	79700098
475	In the informal sector	79700098
483	Private household	79700098
72	Do not know	79700098
0	Unspecified	79700098
15722	Not applicable	79700098
9460	In the formal sector	79700099
1334	In the informal sector	79700099
2015	Private household	79700099
271	Do not know	79700099
0	Unspecified	79700099
34452	Not applicable	79700099
13070	In the formal sector	79700100
1412	In the informal sector	79700100
2003	Private household	79700100
556	Do not know	79700100
0	Unspecified	79700100
13835	Not applicable	79700100
8066	In the formal sector	79700101
1681	In the informal sector	79700101
1274	Private household	79700101
238	Do not know	79700101
0	Unspecified	79700101
31012	Not applicable	79700101
6964	In the formal sector	79800001
1930	In the informal sector	79800001
1501	Private household	79800001
263	Do not know	79800001
0	Unspecified	79800001
34846	Not applicable	79800001
7020	In the formal sector	79800002
931	In the informal sector	79800002
1878	Private household	79800002
171	Do not know	79800002
0	Unspecified	79800002
31667	Not applicable	79800002
4755	In the formal sector	79800003
1155	In the informal sector	79800003
1463	Private household	79800003
169	Do not know	79800003
0	Unspecified	79800003
24028	Not applicable	79800003
6754	In the formal sector	79800004
1135	In the informal sector	79800004
1132	Private household	79800004
297	Do not know	79800004
0	Unspecified	79800004
32300	Not applicable	79800004
7825	In the formal sector	79800005
2671	In the informal sector	79800005
1457	Private household	79800005
280	Do not know	79800005
0	Unspecified	79800005
37521	Not applicable	79800005
6788	In the formal sector	79800006
1376	In the informal sector	79800006
1206	Private household	79800006
166	Do not know	79800006
0	Unspecified	79800006
28742	Not applicable	79800006
9012	In the formal sector	79800007
1679	In the informal sector	79800007
1434	Private household	79800007
244	Do not know	79800007
0	Unspecified	79800007
26775	Not applicable	79800007
11429	In the formal sector	79800008
1493	In the informal sector	79800008
2113	Private household	79800008
327	Do not know	79800008
0	Unspecified	79800008
24748	Not applicable	79800008
9249	In the formal sector	79800009
501	In the informal sector	79800009
1065	Private household	79800009
321	Do not know	79800009
0	Unspecified	79800009
18834	Not applicable	79800009
8446	In the formal sector	79800010
1320	In the informal sector	79800010
1376	Private household	79800010
194	Do not know	79800010
0	Unspecified	79800010
22664	Not applicable	79800010
8237	In the formal sector	79800011
1002	In the informal sector	79800011
1354	Private household	79800011
137	Do not know	79800011
0	Unspecified	79800011
22543	Not applicable	79800011
6642	In the formal sector	79800012
776	In the informal sector	79800012
1394	Private household	79800012
226	Do not know	79800012
0	Unspecified	79800012
18268	Not applicable	79800012
11627	In the formal sector	79800013
1250	In the informal sector	79800013
1532	Private household	79800013
103	Do not know	79800013
0	Unspecified	79800013
23153	Not applicable	79800013
9247	In the formal sector	79800014
678	In the informal sector	79800014
1017	Private household	79800014
125	Do not know	79800014
0	Unspecified	79800014
20000	Not applicable	79800014
5232	In the formal sector	79800015
561	In the informal sector	79800015
303	Private household	79800015
262	Do not know	79800015
0	Unspecified	79800015
20426	Not applicable	79800015
6173	In the formal sector	79800016
585	In the informal sector	79800016
916	Private household	79800016
109	Do not know	79800016
0	Unspecified	79800016
19201	Not applicable	79800016
7472	In the formal sector	79800017
1414	In the informal sector	79800017
1026	Private household	79800017
307	Do not know	79800017
0	Unspecified	79800017
27540	Not applicable	79800017
8887	In the formal sector	79800018
594	In the informal sector	79800018
800	Private household	79800018
168	Do not know	79800018
0	Unspecified	79800018
28041	Not applicable	79800018
5581	In the formal sector	79800019
1244	In the informal sector	79800019
1080	Private household	79800019
246	Do not know	79800019
0	Unspecified	79800019
20521	Not applicable	79800019
7729	In the formal sector	79800020
841	In the informal sector	79800020
687	Private household	79800020
108	Do not know	79800020
0	Unspecified	79800020
22632	Not applicable	79800020
7169	In the formal sector	79800021
823	In the informal sector	79800021
648	Private household	79800021
157	Do not know	79800021
0	Unspecified	79800021
20463	Not applicable	79800021
6754	In the formal sector	79800022
724	In the informal sector	79800022
1100	Private household	79800022
170	Do not know	79800022
0	Unspecified	79800022
22945	Not applicable	79800022
14862	In the formal sector	79800023
877	In the informal sector	79800023
1825	Private household	79800023
478	Do not know	79800023
0	Unspecified	79800023
14146	Not applicable	79800023
7326	In the formal sector	79800024
1903	In the informal sector	79800024
1309	Private household	79800024
282	Do not know	79800024
0	Unspecified	79800024
23133	Not applicable	79800024
8363	In the formal sector	79800025
894	In the informal sector	79800025
822	Private household	79800025
291	Do not know	79800025
0	Unspecified	79800025
25228	Not applicable	79800025
5943	In the formal sector	79800026
438	In the informal sector	79800026
635	Private household	79800026
137	Do not know	79800026
0	Unspecified	79800026
18211	Not applicable	79800026
5252	In the formal sector	79800027
541	In the informal sector	79800027
705	Private household	79800027
216	Do not know	79800027
0	Unspecified	79800027
18174	Not applicable	79800027
6469	In the formal sector	79800028
460	In the informal sector	79800028
854	Private household	79800028
126	Do not know	79800028
0	Unspecified	79800028
21044	Not applicable	79800028
6457	In the formal sector	79800029
806	In the informal sector	79800029
930	Private household	79800029
171	Do not know	79800029
0	Unspecified	79800029
21982	Not applicable	79800029
6578	In the formal sector	79800030
781	In the informal sector	79800030
1369	Private household	79800030
215	Do not know	79800030
0	Unspecified	79800030
25782	Not applicable	79800030
6664	In the formal sector	79800031
772	In the informal sector	79800031
743	Private household	79800031
147	Do not know	79800031
0	Unspecified	79800031
19363	Not applicable	79800031
16937	In the formal sector	79800032
938	In the informal sector	79800032
2326	Private household	79800032
415	Do not know	79800032
0	Unspecified	79800032
20552	Not applicable	79800032
6200	In the formal sector	79800033
664	In the informal sector	79800033
765	Private household	79800033
193	Do not know	79800033
0	Unspecified	79800033
20088	Not applicable	79800033
6556	In the formal sector	79800034
1107	In the informal sector	79800034
945	Private household	79800034
155	Do not know	79800034
0	Unspecified	79800034
19729	Not applicable	79800034
4735	In the formal sector	79800035
478	In the informal sector	79800035
636	Private household	79800035
166	Do not know	79800035
0	Unspecified	79800035
19155	Not applicable	79800035
4984	In the formal sector	79800036
636	In the informal sector	79800036
512	Private household	79800036
154	Do not know	79800036
0	Unspecified	79800036
18195	Not applicable	79800036
5922	In the formal sector	79800037
975	In the informal sector	79800037
739	Private household	79800037
235	Do not know	79800037
0	Unspecified	79800037
22201	Not applicable	79800037
5241	In the formal sector	79800038
596	In the informal sector	79800038
589	Private household	79800038
143	Do not know	79800038
0	Unspecified	79800038
15146	Not applicable	79800038
7528	In the formal sector	79800039
584	In the informal sector	79800039
796	Private household	79800039
112	Do not know	79800039
0	Unspecified	79800039
22763	Not applicable	79800039
5899	In the formal sector	79800040
286	In the informal sector	79800040
636	Private household	79800040
189	Do not know	79800040
0	Unspecified	79800040
17989	Not applicable	79800040
5613	In the formal sector	79800041
355	In the informal sector	79800041
657	Private household	79800041
158	Do not know	79800041
0	Unspecified	79800041
18112	Not applicable	79800041
5613	In the formal sector	79800042
680	In the informal sector	79800042
513	Private household	79800042
131	Do not know	79800042
0	Unspecified	79800042
17038	Not applicable	79800042
5358	In the formal sector	79800043
491	In the informal sector	79800043
651	Private household	79800043
77	Do not know	79800043
0	Unspecified	79800043
19565	Not applicable	79800043
13010	In the formal sector	79800044
1501	In the informal sector	79800044
2439	Private household	79800044
398	Do not know	79800044
0	Unspecified	79800044
37186	Not applicable	79800044
7133	In the formal sector	79800045
736	In the informal sector	79800045
559	Private household	79800045
103	Do not know	79800045
0	Unspecified	79800045
19281	Not applicable	79800045
6313	In the formal sector	79800046
1108	In the informal sector	79800046
1103	Private household	79800046
115	Do not know	79800046
0	Unspecified	79800046
19902	Not applicable	79800046
7338	In the formal sector	79800047
838	In the informal sector	79800047
1274	Private household	79800047
161	Do not know	79800047
0	Unspecified	79800047
19796	Not applicable	79800047
8726	In the formal sector	79800048
680	In the informal sector	79800048
1055	Private household	79800048
119	Do not know	79800048
0	Unspecified	79800048
21607	Not applicable	79800048
11818	In the formal sector	79800049
1171	In the informal sector	79800049
1527	Private household	79800049
493	Do not know	79800049
0	Unspecified	79800049
35842	Not applicable	79800049
3770	In the formal sector	79800050
560	In the informal sector	79800050
508	Private household	79800050
276	Do not know	79800050
0	Unspecified	79800050
18181	Not applicable	79800050
5237	In the formal sector	79800051
1043	In the informal sector	79800051
584	Private household	79800051
132	Do not know	79800051
0	Unspecified	79800051
21413	Not applicable	79800051
6388	In the formal sector	79800052
571	In the informal sector	79800052
564	Private household	79800052
172	Do not know	79800052
0	Unspecified	79800052
22039	Not applicable	79800052
18252	In the formal sector	79800053
1744	In the informal sector	79800053
2899	Private household	79800053
519	Do not know	79800053
0	Unspecified	79800053
39873	Not applicable	79800053
17994	In the formal sector	79800054
796	In the informal sector	79800054
2198	Private household	79800054
399	Do not know	79800054
0	Unspecified	79800054
21426	Not applicable	79800054
10425	In the formal sector	79800055
1100	In the informal sector	79800055
1434	Private household	79800055
263	Do not know	79800055
0	Unspecified	79800055
16724	Not applicable	79800055
10858	In the formal sector	79800056
1150	In the informal sector	79800056
1477	Private household	79800056
592	Do not know	79800056
0	Unspecified	79800056
17018	Not applicable	79800056
13399	In the formal sector	79800057
1235	In the informal sector	79800057
1094	Private household	79800057
415	Do not know	79800057
0	Unspecified	79800057
20529	Not applicable	79800057
8570	In the formal sector	79800058
815	In the informal sector	79800058
1595	Private household	79800058
245	Do not know	79800058
0	Unspecified	79800058
20192	Not applicable	79800058
2148	In the formal sector	79800059
266	In the informal sector	79800059
379	Private household	79800059
43	Do not know	79800059
0	Unspecified	79800059
2708	Not applicable	79800059
13600	In the formal sector	79800060
1809	In the informal sector	79800060
2138	Private household	79800060
284	Do not know	79800060
0	Unspecified	79800060
27542	Not applicable	79800060
5323	In the formal sector	79800061
498	In the informal sector	79800061
1123	Private household	79800061
206	Do not know	79800061
0	Unspecified	79800061
9822	Not applicable	79800061
8325	In the formal sector	79800062
639	In the informal sector	79800062
1221	Private household	79800062
324	Do not know	79800062
0	Unspecified	79800062
10638	Not applicable	79800062
9804	In the formal sector	79800063
1282	In the informal sector	79800063
1487	Private household	79800063
266	Do not know	79800063
0	Unspecified	79800063
14243	Not applicable	79800063
11610	In the formal sector	79800064
1279	In the informal sector	79800064
2544	Private household	79800064
268	Do not know	79800064
0	Unspecified	79800064
18607	Not applicable	79800064
6810	In the formal sector	79800065
1608	In the informal sector	79800065
1625	Private household	79800065
163	Do not know	79800065
0	Unspecified	79800065
13829	Not applicable	79800065
15754	In the formal sector	79800066
1203	In the informal sector	79800066
2370	Private household	79800066
625	Do not know	79800066
0	Unspecified	79800066
25500	Not applicable	79800066
7598	In the formal sector	79800067
566	In the informal sector	79800067
971	Private household	79800067
123	Do not know	79800067
0	Unspecified	79800067
12909	Not applicable	79800067
9587	In the formal sector	79800068
871	In the informal sector	79800068
998	Private household	79800068
230	Do not know	79800068
0	Unspecified	79800068
21342	Not applicable	79800068
10018	In the formal sector	79800069
797	In the informal sector	79800069
1711	Private household	79800069
218	Do not know	79800069
0	Unspecified	79800069
20968	Not applicable	79800069
12200	In the formal sector	79800070
943	In the informal sector	79800070
1757	Private household	79800070
278	Do not know	79800070
0	Unspecified	79800070
15846	Not applicable	79800070
12126	In the formal sector	79800071
662	In the informal sector	79800071
944	Private household	79800071
429	Do not know	79800071
0	Unspecified	79800071
17313	Not applicable	79800071
7396	In the formal sector	79800072
551	In the informal sector	79800072
1580	Private household	79800072
177	Do not know	79800072
0	Unspecified	79800072
8684	Not applicable	79800072
11768	In the formal sector	79800073
849	In the informal sector	79800073
2483	Private household	79800073
308	Do not know	79800073
0	Unspecified	79800073
12554	Not applicable	79800073
11169	In the formal sector	79800074
970	In the informal sector	79800074
2390	Private household	79800074
308	Do not know	79800074
0	Unspecified	79800074
10942	Not applicable	79800074
7086	In the formal sector	79800075
579	In the informal sector	79800075
1083	Private household	79800075
302	Do not know	79800075
0	Unspecified	79800075
13669	Not applicable	79800075
5046	In the formal sector	79800076
504	In the informal sector	79800076
733	Private household	79800076
216	Do not know	79800076
0	Unspecified	79800076
11764	Not applicable	79800076
12671	In the formal sector	79800077
2274	In the informal sector	79800077
2134	Private household	79800077
341	Do not know	79800077
0	Unspecified	79800077
34280	Not applicable	79800077
11164	In the formal sector	79800078
1964	In the informal sector	79800078
2393	Private household	79800078
683	Do not know	79800078
0	Unspecified	79800078
31837	Not applicable	79800078
12654	In the formal sector	79800079
1614	In the informal sector	79800079
2514	Private household	79800079
788	Do not know	79800079
0	Unspecified	79800079
30043	Not applicable	79800079
8332	In the formal sector	79800080
1242	In the informal sector	79800080
1281	Private household	79800080
257	Do not know	79800080
0	Unspecified	79800080
17018	Not applicable	79800080
11234	In the formal sector	79800081
1526	In the informal sector	79800081
2574	Private household	79800081
310	Do not know	79800081
0	Unspecified	79800081
18789	Not applicable	79800081
9771	In the formal sector	79800082
617	In the informal sector	79800082
538	Private household	79800082
142	Do not know	79800082
0	Unspecified	79800082
24317	Not applicable	79800082
9291	In the formal sector	79800083
731	In the informal sector	79800083
1220	Private household	79800083
326	Do not know	79800083
0	Unspecified	79800083
9781	Not applicable	79800083
13241	In the formal sector	79800084
815	In the informal sector	79800084
1673	Private household	79800084
420	Do not know	79800084
0	Unspecified	79800084
17030	Not applicable	79800084
10780	In the formal sector	79800085
997	In the informal sector	79800085
1469	Private household	79800085
300	Do not know	79800085
0	Unspecified	79800085
12462	Not applicable	79800085
13387	In the formal sector	79800086
961	In the informal sector	79800086
1680	Private household	79800086
306	Do not know	79800086
0	Unspecified	79800086
18045	Not applicable	79800086
7060	In the formal sector	79800087
488	In the informal sector	79800087
1758	Private household	79800087
153	Do not know	79800087
0	Unspecified	79800087
7244	Not applicable	79800087
11090	In the formal sector	79800088
589	In the informal sector	79800088
2072	Private household	79800088
220	Do not know	79800088
0	Unspecified	79800088
10280	Not applicable	79800088
10546	In the formal sector	79800089
676	In the informal sector	79800089
1432	Private household	79800089
235	Do not know	79800089
0	Unspecified	79800089
8867	Not applicable	79800089
10623	In the formal sector	79800090
669	In the informal sector	79800090
2978	Private household	79800090
229	Do not know	79800090
0	Unspecified	79800090
8366	Not applicable	79800090
9829	In the formal sector	79800091
820	In the informal sector	79800091
2188	Private household	79800091
338	Do not know	79800091
0	Unspecified	79800091
12911	Not applicable	79800091
14907	In the formal sector	79800092
1110	In the informal sector	79800092
3266	Private household	79800092
415	Do not know	79800092
0	Unspecified	79800092
27880	Not applicable	79800092
13010	In the formal sector	79800093
460	In the informal sector	79800093
1355	Private household	79800093
293	Do not know	79800093
0	Unspecified	79800093
8739	Not applicable	79800093
10039	In the formal sector	79800094
670	In the informal sector	79800094
1868	Private household	79800094
246	Do not know	79800094
0	Unspecified	79800094
7809	Not applicable	79800094
12481	In the formal sector	79800095
2820	In the informal sector	79800095
4170	Private household	79800095
457	Do not know	79800095
0	Unspecified	79800095
26311	Not applicable	79800095
22236	In the formal sector	79800096
2662	In the informal sector	79800096
4735	Private household	79800096
919	Do not know	79800096
0	Unspecified	79800096
28238	Not applicable	79800096
25048	In the formal sector	79800097
1834	In the informal sector	79800097
3830	Private household	79800097
950	Do not know	79800097
0	Unspecified	79800097
22418	Not applicable	79800097
12864	In the formal sector	79800098
1147	In the informal sector	79800098
2542	Private household	79800098
442	Do not know	79800098
0	Unspecified	79800098
13311	Not applicable	79800098
9407	In the formal sector	79800099
640	In the informal sector	79800099
1571	Private household	79800099
156	Do not know	79800099
0	Unspecified	79800099
8346	Not applicable	79800099
17920	In the formal sector	79800100
1945	In the informal sector	79800100
4271	Private household	79800100
494	Do not know	79800100
0	Unspecified	79800100
30018	Not applicable	79800100
15132	In the formal sector	79800101
1095	In the informal sector	79800101
2007	Private household	79800101
465	Do not know	79800101
0	Unspecified	79800101
12315	Not applicable	79800101
14130	In the formal sector	79800102
962	In the informal sector	79800102
2976	Private household	79800102
344	Do not know	79800102
0	Unspecified	79800102
14464	Not applicable	79800102
17250	In the formal sector	79800103
717	In the informal sector	79800103
3294	Private household	79800103
390	Do not know	79800103
0	Unspecified	79800103
14756	Not applicable	79800103
14105	In the formal sector	79800104
972	In the informal sector	79800104
2629	Private household	79800104
332	Do not know	79800104
0	Unspecified	79800104
11386	Not applicable	79800104
12241	In the formal sector	79800105
1773	In the informal sector	79800105
2779	Private household	79800105
461	Do not know	79800105
0	Unspecified	79800105
31997	Not applicable	79800105
17530	In the formal sector	79800106
901	In the informal sector	79800106
2902	Private household	79800106
393	Do not know	79800106
0	Unspecified	79800106
12730	Not applicable	79800106
5071	In the formal sector	79800107
588	In the informal sector	79800107
725	Private household	79800107
119	Do not know	79800107
0	Unspecified	79800107
12897	Not applicable	79800107
9358	In the formal sector	79800108
1577	In the informal sector	79800108
896	Private household	79800108
393	Do not know	79800108
0	Unspecified	79800108
20034	Not applicable	79800108
9342	In the formal sector	79800109
698	In the informal sector	79800109
1610	Private household	79800109
283	Do not know	79800109
0	Unspecified	79800109
13135	Not applicable	79800109
14920	In the formal sector	79800110
2749	In the informal sector	79800110
3463	Private household	79800110
709	Do not know	79800110
0	Unspecified	79800110
35106	Not applicable	79800110
15903	In the formal sector	79800111
1932	In the informal sector	79800111
2922	Private household	79800111
496	Do not know	79800111
0	Unspecified	79800111
37833	Not applicable	79800111
26994	In the formal sector	79800112
1750	In the informal sector	79800112
5739	Private household	79800112
509	Do not know	79800112
0	Unspecified	79800112
22786	Not applicable	79800112
25581	In the formal sector	79800113
4398	In the informal sector	79800113
7870	Private household	79800113
903	Do not know	79800113
0	Unspecified	79800113
52965	Not applicable	79800113
17559	In the formal sector	79800114
2353	In the informal sector	79800114
4102	Private household	79800114
756	Do not know	79800114
0	Unspecified	79800114
23417	Not applicable	79800114
19395	In the formal sector	79800115
1031	In the informal sector	79800115
2721	Private household	79800115
438	Do not know	79800115
0	Unspecified	79800115
13369	Not applicable	79800115
5245	In the formal sector	79800116
608	In the informal sector	79800116
1055	Private household	79800116
217	Do not know	79800116
0	Unspecified	79800116
13748	Not applicable	79800116
9250	In the formal sector	79800117
547	In the informal sector	79800117
2054	Private household	79800117
207	Do not know	79800117
0	Unspecified	79800117
7510	Not applicable	79800117
10811	In the formal sector	79800118
838	In the informal sector	79800118
1481	Private household	79800118
246	Do not know	79800118
0	Unspecified	79800118
17042	Not applicable	79800118
12941	In the formal sector	79800119
1979	In the informal sector	79800119
2329	Private household	79800119
579	Do not know	79800119
0	Unspecified	79800119
29353	Not applicable	79800119
11273	In the formal sector	79800120
1100	In the informal sector	79800120
1353	Private household	79800120
184	Do not know	79800120
0	Unspecified	79800120
24941	Not applicable	79800120
12938	In the formal sector	79800121
1425	In the informal sector	79800121
1817	Private household	79800121
216	Do not know	79800121
0	Unspecified	79800121
36944	Not applicable	79800121
10749	In the formal sector	79800122
2241	In the informal sector	79800122
2617	Private household	79800122
367	Do not know	79800122
0	Unspecified	79800122
36083	Not applicable	79800122
14394	In the formal sector	79800123
2064	In the informal sector	79800123
3067	Private household	79800123
473	Do not know	79800123
0	Unspecified	79800123
23194	Not applicable	79800123
15244	In the formal sector	79800124
2116	In the informal sector	79800124
2616	Private household	79800124
535	Do not know	79800124
0	Unspecified	79800124
22555	Not applicable	79800124
14936	In the formal sector	79800125
953	In the informal sector	79800125
1456	Private household	79800125
262	Do not know	79800125
0	Unspecified	79800125
28064	Not applicable	79800125
14008	In the formal sector	79800126
1028	In the informal sector	79800126
1763	Private household	79800126
369	Do not know	79800126
0	Unspecified	79800126
11084	Not applicable	79800126
6767	In the formal sector	79800127
836	In the informal sector	79800127
1400	Private household	79800127
377	Do not know	79800127
0	Unspecified	79800127
18225	Not applicable	79800127
10393	In the formal sector	79800128
2832	In the informal sector	79800128
2655	Private household	79800128
605	Do not know	79800128
0	Unspecified	79800128
36774	Not applicable	79800128
6209	In the formal sector	79800129
1245	In the informal sector	79800129
1570	Private household	79800129
417	Do not know	79800129
0	Unspecified	79800129
27875	Not applicable	79800129
4871	In the formal sector	79800130
411	In the informal sector	79800130
637	Private household	79800130
177	Do not know	79800130
0	Unspecified	79800130
17635	Not applicable	79800130
9502	In the formal sector	79900001
1160	In the informal sector	79900001
887	Private household	79900001
497	Do not know	79900001
0	Unspecified	79900001
13303	Not applicable	79900001
7869	In the formal sector	79900002
793	In the informal sector	79900002
1006	Private household	79900002
290	Do not know	79900002
0	Unspecified	79900002
10849	Not applicable	79900002
11133	In the formal sector	79900003
815	In the informal sector	79900003
1384	Private household	79900003
184	Do not know	79900003
0	Unspecified	79900003
20598	Not applicable	79900003
15260	In the formal sector	79900004
1130	In the informal sector	79900004
2608	Private household	79900004
211	Do not know	79900004
0	Unspecified	79900004
18378	Not applicable	79900004
11644	In the formal sector	79900005
1123	In the informal sector	79900005
1381	Private household	79900005
498	Do not know	79900005
0	Unspecified	79900005
12790	Not applicable	79900005
4952	In the formal sector	79900006
288	In the informal sector	79900006
575	Private household	79900006
100	Do not know	79900006
0	Unspecified	79900006
11259	Not applicable	79900006
11417	In the formal sector	79900007
1862	In the informal sector	79900007
2523	Private household	79900007
268	Do not know	79900007
0	Unspecified	79900007
26776	Not applicable	79900007
3855	In the formal sector	79900008
860	In the informal sector	79900008
1183	Private household	79900008
235	Do not know	79900008
0	Unspecified	79900008
23720	Not applicable	79900008
4798	In the formal sector	79900009
1265	In the informal sector	79900009
996	Private household	79900009
335	Do not know	79900009
0	Unspecified	79900009
30085	Not applicable	79900009
7297	In the formal sector	79900010
2847	In the informal sector	79900010
3602	Private household	79900010
290	Do not know	79900010
0	Unspecified	79900010
25932	Not applicable	79900010
5113	In the formal sector	79900011
875	In the informal sector	79900011
759	Private household	79900011
179	Do not know	79900011
0	Unspecified	79900011
17313	Not applicable	79900011
4701	In the formal sector	79900012
752	In the informal sector	79900012
883	Private household	79900012
125	Do not know	79900012
0	Unspecified	79900012
15286	Not applicable	79900012
3668	In the formal sector	79900013
828	In the informal sector	79900013
935	Private household	79900013
267	Do not know	79900013
0	Unspecified	79900013
21449	Not applicable	79900013
3988	In the formal sector	79900014
965	In the informal sector	79900014
849	Private household	79900014
237	Do not know	79900014
0	Unspecified	79900014
20998	Not applicable	79900014
5627	In the formal sector	79900015
425	In the informal sector	79900015
804	Private household	79900015
230	Do not know	79900015
0	Unspecified	79900015
12426	Not applicable	79900015
4792	In the formal sector	79900016
538	In the informal sector	79900016
1133	Private household	79900016
92	Do not know	79900016
0	Unspecified	79900016
14528	Not applicable	79900016
11780	In the formal sector	79900017
1445	In the informal sector	79900017
1445	Private household	79900017
275	Do not know	79900017
0	Unspecified	79900017
25825	Not applicable	79900017
6963	In the formal sector	79900018
814	In the informal sector	79900018
527	Private household	79900018
118	Do not know	79900018
0	Unspecified	79900018
16156	Not applicable	79900018
4643	In the formal sector	79900019
1007	In the informal sector	79900019
472	Private household	79900019
181	Do not know	79900019
0	Unspecified	79900019
24169	Not applicable	79900019
6270	In the formal sector	79900020
518	In the informal sector	79900020
597	Private household	79900020
150	Do not know	79900020
0	Unspecified	79900020
19577	Not applicable	79900020
6714	In the formal sector	79900021
582	In the informal sector	79900021
699	Private household	79900021
112	Do not know	79900021
0	Unspecified	79900021
21762	Not applicable	79900021
7427	In the formal sector	79900022
798	In the informal sector	79900022
1153	Private household	79900022
120	Do not know	79900022
0	Unspecified	79900022
24099	Not applicable	79900022
4907	In the formal sector	79900023
484	In the informal sector	79900023
825	Private household	79900023
140	Do not know	79900023
0	Unspecified	79900023
15114	Not applicable	79900023
6240	In the formal sector	79900024
1646	In the informal sector	79900024
1327	Private household	79900024
399	Do not know	79900024
0	Unspecified	79900024
38126	Not applicable	79900024
4714	In the formal sector	79900025
799	In the informal sector	79900025
701	Private household	79900025
176	Do not know	79900025
0	Unspecified	79900025
19220	Not applicable	79900025
4730	In the formal sector	79900026
832	In the informal sector	79900026
734	Private household	79900026
148	Do not know	79900026
0	Unspecified	79900026
19552	Not applicable	79900026
4250	In the formal sector	79900027
762	In the informal sector	79900027
1449	Private household	79900027
91	Do not know	79900027
0	Unspecified	79900027
21768	Not applicable	79900027
4636	In the formal sector	79900028
541	In the informal sector	79900028
391	Private household	79900028
150	Do not know	79900028
0	Unspecified	79900028
12139	Not applicable	79900028
5653	In the formal sector	79900029
979	In the informal sector	79900029
1338	Private household	79900029
82	Do not know	79900029
0	Unspecified	79900029
20616	Not applicable	79900029
8400	In the formal sector	79900030
710	In the informal sector	79900030
1549	Private household	79900030
184	Do not know	79900030
0	Unspecified	79900030
26926	Not applicable	79900030
4572	In the formal sector	79900031
737	In the informal sector	79900031
1142	Private household	79900031
203	Do not know	79900031
0	Unspecified	79900031
17680	Not applicable	79900031
7287	In the formal sector	79900032
829	In the informal sector	79900032
1508	Private household	79900032
283	Do not know	79900032
0	Unspecified	79900032
20979	Not applicable	79900032
3588	In the formal sector	79900033
255	In the informal sector	79900033
388	Private household	79900033
17	Do not know	79900033
0	Unspecified	79900033
12746	Not applicable	79900033
3766	In the formal sector	79900034
249	In the informal sector	79900034
415	Private household	79900034
36	Do not know	79900034
0	Unspecified	79900034
17684	Not applicable	79900034
4173	In the formal sector	79900035
323	In the informal sector	79900035
727	Private household	79900035
104	Do not know	79900035
0	Unspecified	79900035
12514	Not applicable	79900035
4661	In the formal sector	79900036
443	In the informal sector	79900036
531	Private household	79900036
143	Do not know	79900036
0	Unspecified	79900036
16883	Not applicable	79900036
9675	In the formal sector	79900037
1793	In the informal sector	79900037
1707	Private household	79900037
259	Do not know	79900037
0	Unspecified	79900037
30203	Not applicable	79900037
3197	In the formal sector	79900038
285	In the informal sector	79900038
535	Private household	79900038
110	Do not know	79900038
0	Unspecified	79900038
5236	Not applicable	79900038
6312	In the formal sector	79900039
1287	In the informal sector	79900039
1339	Private household	79900039
152	Do not know	79900039
0	Unspecified	79900039
22070	Not applicable	79900039
17038	In the formal sector	79900040
2540	In the informal sector	79900040
3081	Private household	79900040
505	Do not know	79900040
0	Unspecified	79900040
39077	Not applicable	79900040
7845	In the formal sector	79900041
824	In the informal sector	79900041
909	Private household	79900041
237	Do not know	79900041
0	Unspecified	79900041
8601	Not applicable	79900041
9043	In the formal sector	79900042
698	In the informal sector	79900042
1752	Private household	79900042
229	Do not know	79900042
0	Unspecified	79900042
8671	Not applicable	79900042
7530	In the formal sector	79900043
1439	In the informal sector	79900043
1016	Private household	79900043
212	Do not know	79900043
0	Unspecified	79900043
15959	Not applicable	79900043
7878	In the formal sector	79900044
770	In the informal sector	79900044
1105	Private household	79900044
283	Do not know	79900044
0	Unspecified	79900044
8057	Not applicable	79900044
5033	In the formal sector	79900045
445	In the informal sector	79900045
582	Private household	79900045
161	Do not know	79900045
0	Unspecified	79900045
4901	Not applicable	79900045
8921	In the formal sector	79900046
627	In the informal sector	79900046
1185	Private household	79900046
231	Do not know	79900046
0	Unspecified	79900046
9738	Not applicable	79900046
7414	In the formal sector	79900047
818	In the informal sector	79900047
1092	Private household	79900047
263	Do not know	79900047
0	Unspecified	79900047
6821	Not applicable	79900047
9586	In the formal sector	79900048
1750	In the informal sector	79900048
2623	Private household	79900048
243	Do not know	79900048
0	Unspecified	79900048
21694	Not applicable	79900048
6591	In the formal sector	79900049
1807	In the informal sector	79900049
1933	Private household	79900049
273	Do not know	79900049
0	Unspecified	79900049
24821	Not applicable	79900049
8970	In the formal sector	79900050
920	In the informal sector	79900050
987	Private household	79900050
360	Do not know	79900050
0	Unspecified	79900050
9611	Not applicable	79900050
6592	In the formal sector	79900051
808	In the informal sector	79900051
1279	Private household	79900051
180	Do not know	79900051
0	Unspecified	79900051
16815	Not applicable	79900051
8579	In the formal sector	79900052
719	In the informal sector	79900052
1197	Private household	79900052
313	Do not know	79900052
0	Unspecified	79900052
10437	Not applicable	79900052
9169	In the formal sector	79900053
1226	In the informal sector	79900053
1293	Private household	79900053
238	Do not know	79900053
0	Unspecified	79900053
11952	Not applicable	79900053
8083	In the formal sector	79900054
846	In the informal sector	79900054
1169	Private household	79900054
260	Do not know	79900054
0	Unspecified	79900054
10473	Not applicable	79900054
8658	In the formal sector	79900055
1279	In the informal sector	79900055
1665	Private household	79900055
518	Do not know	79900055
0	Unspecified	79900055
13703	Not applicable	79900055
4891	In the formal sector	79900056
422	In the informal sector	79900056
668	Private household	79900056
150	Do not know	79900056
0	Unspecified	79900056
13249	Not applicable	79900056
13033	In the formal sector	79900057
1015	In the informal sector	79900057
1531	Private household	79900057
350	Do not know	79900057
0	Unspecified	79900057
12203	Not applicable	79900057
10675	In the formal sector	79900058
1005	In the informal sector	79900058
1125	Private household	79900058
250	Do not know	79900058
0	Unspecified	79900058
20606	Not applicable	79900058
7627	In the formal sector	79900059
1022	In the informal sector	79900059
1220	Private household	79900059
201	Do not know	79900059
0	Unspecified	79900059
13659	Not applicable	79900059
9651	In the formal sector	79900060
975	In the informal sector	79900060
2377	Private household	79900060
295	Do not know	79900060
0	Unspecified	79900060
19383	Not applicable	79900060
13886	In the formal sector	79900061
1387	In the informal sector	79900061
2024	Private household	79900061
447	Do not know	79900061
0	Unspecified	79900061
25012	Not applicable	79900061
4982	In the formal sector	79900062
366	In the informal sector	79900062
644	Private household	79900062
44	Do not know	79900062
0	Unspecified	79900062
14243	Not applicable	79900062
4558	In the formal sector	79900063
859	In the informal sector	79900063
1049	Private household	79900063
128	Do not know	79900063
0	Unspecified	79900063
10470	Not applicable	79900063
17667	In the formal sector	79900064
1171	In the informal sector	79900064
1718	Private household	79900064
410	Do not know	79900064
0	Unspecified	79900064
14250	Not applicable	79900064
9374	In the formal sector	79900065
745	In the informal sector	79900065
1493	Private household	79900065
180	Do not know	79900065
0	Unspecified	79900065
9605	Not applicable	79900065
9090	In the formal sector	79900066
753	In the informal sector	79900066
1078	Private household	79900066
377	Do not know	79900066
0	Unspecified	79900066
12188	Not applicable	79900066
5574	In the formal sector	79900067
1068	In the informal sector	79900067
951	Private household	79900067
126	Do not know	79900067
0	Unspecified	79900067
12923	Not applicable	79900067
7252	In the formal sector	79900068
963	In the informal sector	79900068
686	Private household	79900068
142	Do not know	79900068
0	Unspecified	79900068
20159	Not applicable	79900068
11816	In the formal sector	79900069
917	In the informal sector	79900069
1411	Private household	79900069
298	Do not know	79900069
0	Unspecified	79900069
10188	Not applicable	79900069
14133	In the formal sector	79900070
1266	In the informal sector	79900070
1953	Private household	79900070
388	Do not know	79900070
0	Unspecified	79900070
13468	Not applicable	79900070
8256	In the formal sector	79900071
1600	In the informal sector	79900071
1253	Private household	79900071
261	Do not know	79900071
0	Unspecified	79900071
19429	Not applicable	79900071
5859	In the formal sector	79900072
549	In the informal sector	79900072
917	Private household	79900072
218	Do not know	79900072
0	Unspecified	79900072
14604	Not applicable	79900072
6589	In the formal sector	79900073
1680	In the informal sector	79900073
1261	Private household	79900073
134	Do not know	79900073
0	Unspecified	79900073
29952	Not applicable	79900073
4312	In the formal sector	79900074
807	In the informal sector	79900074
652	Private household	79900074
118	Do not know	79900074
0	Unspecified	79900074
18232	Not applicable	79900074
6636	In the formal sector	79900075
793	In the informal sector	79900075
1047	Private household	79900075
116	Do not know	79900075
0	Unspecified	79900075
20797	Not applicable	79900075
3624	In the formal sector	79900076
827	In the informal sector	79900076
759	Private household	79900076
151	Do not know	79900076
0	Unspecified	79900076
18256	Not applicable	79900076
26660	In the formal sector	79900077
5776	In the informal sector	79900077
6774	Private household	79900077
1041	Do not know	79900077
0	Unspecified	79900077
44286	Not applicable	79900077
11868	In the formal sector	79900078
904	In the informal sector	79900078
1354	Private household	79900078
284	Do not know	79900078
0	Unspecified	79900078
8776	Not applicable	79900078
13967	In the formal sector	79900079
1055	In the informal sector	79900079
1414	Private household	79900079
367	Do not know	79900079
0	Unspecified	79900079
12100	Not applicable	79900079
8001	In the formal sector	79900080
1129	In the informal sector	79900080
1357	Private household	79900080
171	Do not know	79900080
0	Unspecified	79900080
16144	Not applicable	79900080
3789	In the formal sector	79900081
520	In the informal sector	79900081
762	Private household	79900081
105	Do not know	79900081
0	Unspecified	79900081
7163	Not applicable	79900081
7573	In the formal sector	79900082
531	In the informal sector	79900082
1219	Private household	79900082
198	Do not know	79900082
0	Unspecified	79900082
10496	Not applicable	79900082
5458	In the formal sector	79900083
467	In the informal sector	79900083
685	Private household	79900083
164	Do not know	79900083
0	Unspecified	79900083
5323	Not applicable	79900083
9673	In the formal sector	79900084
1024	In the informal sector	79900084
1195	Private household	79900084
312	Do not know	79900084
0	Unspecified	79900084
14264	Not applicable	79900084
15988	In the formal sector	79900085
1226	In the informal sector	79900085
1945	Private household	79900085
383	Do not know	79900085
0	Unspecified	79900085
15084	Not applicable	79900085
11850	In the formal sector	79900086
1792	In the informal sector	79900086
2219	Private household	79900086
344	Do not know	79900086
0	Unspecified	79900086
27380	Not applicable	79900086
7808	In the formal sector	79900087
1844	In the informal sector	79900087
1322	Private household	79900087
265	Do not know	79900087
0	Unspecified	79900087
13628	Not applicable	79900087
5717	In the formal sector	79900088
741	In the informal sector	79900088
865	Private household	79900088
74	Do not know	79900088
0	Unspecified	79900088
20452	Not applicable	79900088
6710	In the formal sector	79900089
918	In the informal sector	79900089
1237	Private household	79900089
223	Do not know	79900089
0	Unspecified	79900089
19038	Not applicable	79900089
12287	In the formal sector	79900090
956	In the informal sector	79900090
1660	Private household	79900090
295	Do not know	79900090
0	Unspecified	79900090
27623	Not applicable	79900090
19014	In the formal sector	79900091
1616	In the informal sector	79900091
2345	Private household	79900091
558	Do not know	79900091
0	Unspecified	79900091
16947	Not applicable	79900091
8977	In the formal sector	79900092
756	In the informal sector	79900092
2018	Private household	79900092
269	Do not know	79900092
0	Unspecified	79900092
18418	Not applicable	79900092
4445	In the formal sector	79900093
370	In the informal sector	79900093
691	Private household	79900093
56	Do not know	79900093
0	Unspecified	79900093
12224	Not applicable	79900093
5296	In the formal sector	79900094
449	In the informal sector	79900094
484	Private household	79900094
68	Do not know	79900094
0	Unspecified	79900094
14316	Not applicable	79900094
2804	In the formal sector	79900095
862	In the informal sector	79900095
726	Private household	79900095
95	Do not know	79900095
0	Unspecified	79900095
19822	Not applicable	79900095
10008	In the formal sector	79900096
1451	In the informal sector	79900096
2342	Private household	79900096
498	Do not know	79900096
0	Unspecified	79900096
16086	Not applicable	79900096
4999	In the formal sector	79900097
871	In the informal sector	79900097
1360	Private household	79900097
109	Do not know	79900097
0	Unspecified	79900097
13721	Not applicable	79900097
9754	In the formal sector	79900098
1006	In the informal sector	79900098
1198	Private household	79900098
298	Do not know	79900098
0	Unspecified	79900098
13239	Not applicable	79900098
8718	In the formal sector	79900099
1618	In the informal sector	79900099
2132	Private household	79900099
291	Do not know	79900099
0	Unspecified	79900099
20653	Not applicable	79900099
7040	In the formal sector	79900100
1270	In the informal sector	79900100
1707	Private household	79900100
335	Do not know	79900100
0	Unspecified	79900100
22268	Not applicable	79900100
11290	In the formal sector	79900101
1863	In the informal sector	79900101
3044	Private household	79900101
417	Do not know	79900101
0	Unspecified	79900101
13754	Not applicable	79900101
6969	In the formal sector	79900102
1541	In the informal sector	79900102
1757	Private household	79900102
327	Do not know	79900102
0	Unspecified	79900102
21115	Not applicable	79900102
5332	In the formal sector	79900103
450	In the informal sector	79900103
887	Private household	79900103
127	Do not know	79900103
0	Unspecified	79900103
19047	Not applicable	79900103
5814	In the formal sector	79900104
738	In the informal sector	79900104
831	Private household	79900104
234	Do not know	79900104
0	Unspecified	79900104
18478	Not applicable	79900104
6413	In the formal sector	79900105
1391	In the informal sector	79900105
1183	Private household	79900105
191	Do not know	79900105
0	Unspecified	79900105
16940	Not applicable	79900105
285	In the formal sector	52103001
82	In the informal sector	52103001
10	Private household	52103001
11	Do not know	52103001
0	Unspecified	52103001
7293	Not applicable	52103001
406	In the formal sector	52103002
127	In the informal sector	52103002
19	Private household	52103002
17	Do not know	52103002
0	Unspecified	52103002
8249	Not applicable	52103002
429	In the formal sector	52103003
72	In the informal sector	52103003
17	Private household	52103003
9	Do not know	52103003
0	Unspecified	52103003
8562	Not applicable	52103003
324	In the formal sector	52103004
119	In the informal sector	52103004
24	Private household	52103004
22	Do not know	52103004
0	Unspecified	52103004
9073	Not applicable	52103004
814	In the formal sector	52103005
317	In the informal sector	52103005
126	Private household	52103005
8	Do not know	52103005
0	Unspecified	52103005
8252	Not applicable	52103005
248	In the formal sector	52103006
33	In the informal sector	52103006
11	Private household	52103006
2	Do not know	52103006
0	Unspecified	52103006
5629	Not applicable	52103006
220	In the formal sector	52103007
53	In the informal sector	52103007
11	Private household	52103007
1	Do not know	52103007
0	Unspecified	52103007
5829	Not applicable	52103007
332	In the formal sector	52103008
121	In the informal sector	52103008
122	Private household	52103008
11	Do not know	52103008
0	Unspecified	52103008
7725	Not applicable	52103008
128	In the formal sector	52103009
10	In the informal sector	52103009
4	Private household	52103009
2	Do not know	52103009
0	Unspecified	52103009
6159	Not applicable	52103009
971	In the formal sector	52103010
247	In the informal sector	52103010
216	Private household	52103010
16	Do not know	52103010
0	Unspecified	52103010
9790	Not applicable	52103010
301	In the formal sector	52103011
42	In the informal sector	52103011
20	Private household	52103011
6	Do not know	52103011
0	Unspecified	52103011
8226	Not applicable	52103011
182	In the formal sector	52103012
64	In the informal sector	52103012
14	Private household	52103012
0	Do not know	52103012
0	Unspecified	52103012
6329	Not applicable	52103012
205	In the formal sector	52103013
48	In the informal sector	52103013
16	Private household	52103013
6	Do not know	52103013
0	Unspecified	52103013
6455	Not applicable	52103013
267	In the formal sector	52103014
102	In the informal sector	52103014
16	Private household	52103014
15	Do not know	52103014
0	Unspecified	52103014
7340	Not applicable	52103014
412	In the formal sector	52103015
174	In the informal sector	52103015
29	Private household	52103015
14	Do not know	52103015
0	Unspecified	52103015
8368	Not applicable	52103015
479	In the formal sector	52103016
414	In the informal sector	52103016
51	Private household	52103016
13	Do not know	52103016
0	Unspecified	52103016
8319	Not applicable	52103016
663	In the formal sector	52103017
150	In the informal sector	52103017
184	Private household	52103017
5	Do not know	52103017
0	Unspecified	52103017
6697	Not applicable	52103017
937	In the formal sector	52103018
204	In the informal sector	52103018
146	Private household	52103018
26	Do not know	52103018
0	Unspecified	52103018
11743	Not applicable	52103018
933	In the formal sector	52103019
463	In the informal sector	52103019
316	Private household	52103019
13	Do not know	52103019
0	Unspecified	52103019
8011	Not applicable	52103019
360	In the formal sector	52104001
76	In the informal sector	52104001
42	Private household	52104001
4	Do not know	52104001
0	Unspecified	52104001
9268	Not applicable	52104001
643	In the formal sector	52104002
350	In the informal sector	52104002
33	Private household	52104002
108	Do not know	52104002
0	Unspecified	52104002
9343	Not applicable	52104002
2058	In the formal sector	52104003
592	In the informal sector	52104003
184	Private household	52104003
53	Do not know	52104003
0	Unspecified	52104003
6656	Not applicable	52104003
601	In the formal sector	52104004
185	In the informal sector	52104004
50	Private household	52104004
15	Do not know	52104004
0	Unspecified	52104004
7383	Not applicable	52104004
707	In the formal sector	52104005
171	In the informal sector	52104005
86	Private household	52104005
7	Do not know	52104005
0	Unspecified	52104005
8767	Not applicable	52104005
445	In the formal sector	52104006
64	In the informal sector	52104006
22	Private household	52104006
10	Do not know	52104006
0	Unspecified	52104006
7109	Not applicable	52104006
1358	In the formal sector	52104007
430	In the informal sector	52104007
284	Private household	52104007
94	Do not know	52104007
0	Unspecified	52104007
8521	Not applicable	52104007
618	In the formal sector	52104008
196	In the informal sector	52104008
83	Private household	52104008
13	Do not know	52104008
0	Unspecified	52104008
8878	Not applicable	52104008
370	In the formal sector	52104009
71	In the informal sector	52104009
31	Private household	52104009
39	Do not know	52104009
0	Unspecified	52104009
9694	Not applicable	52104009
617	In the formal sector	52104010
261	In the informal sector	52104010
85	Private household	52104010
33	Do not know	52104010
0	Unspecified	52104010
9483	Not applicable	52104010
974	In the formal sector	52105001
197	In the informal sector	52105001
56	Private household	52105001
18	Do not know	52105001
0	Unspecified	52105001
6141	Not applicable	52105001
726	In the formal sector	52105002
326	In the informal sector	52105002
341	Private household	52105002
108	Do not know	52105002
0	Unspecified	52105002
5799	Not applicable	52105002
474	In the formal sector	52105003
248	In the informal sector	52105003
123	Private household	52105003
4	Do not know	52105003
0	Unspecified	52105003
9379	Not applicable	52105003
489	In the formal sector	52105004
113	In the informal sector	52105004
118	Private household	52105004
51	Do not know	52105004
0	Unspecified	52105004
8658	Not applicable	52105004
640	In the formal sector	52105005
119	In the informal sector	52105005
106	Private household	52105005
7	Do not know	52105005
0	Unspecified	52105005
9657	Not applicable	52105005
595	In the formal sector	52105006
91	In the informal sector	52105006
65	Private household	52105006
6	Do not know	52105006
0	Unspecified	52105006
6910	Not applicable	52105006
2070	In the formal sector	52106001
580	In the informal sector	52106001
304	Private household	52106001
66	Do not know	52106001
0	Unspecified	52106001
4438	Not applicable	52106001
2520	In the formal sector	52106002
303	In the informal sector	52106002
612	Private household	52106002
77	Do not know	52106002
0	Unspecified	52106002
5326	Not applicable	52106002
2790	In the formal sector	52106003
529	In the informal sector	52106003
522	Private household	52106003
58	Do not know	52106003
0	Unspecified	52106003
4632	Not applicable	52106003
1025	In the formal sector	52106004
323	In the informal sector	52106004
145	Private household	52106004
15	Do not know	52106004
0	Unspecified	52106004
7027	Not applicable	52106004
683	In the formal sector	52106005
252	In the informal sector	52106005
130	Private household	52106005
2	Do not know	52106005
0	Unspecified	52106005
8281	Not applicable	52106005
2547	In the formal sector	52106006
210	In the informal sector	52106006
255	Private household	52106006
45	Do not know	52106006
0	Unspecified	52106006
6058	Not applicable	52106006
1082	In the formal sector	52106007
149	In the informal sector	52106007
187	Private household	52106007
108	Do not know	52106007
0	Unspecified	52106007
7024	Not applicable	52106007
619	In the formal sector	52106008
238	In the informal sector	52106008
74	Private household	52106008
16	Do not know	52106008
0	Unspecified	52106008
7035	Not applicable	52106008
1173	In the formal sector	52106009
773	In the informal sector	52106009
357	Private household	52106009
11	Do not know	52106009
0	Unspecified	52106009
9701	Not applicable	52106009
949	In the formal sector	52106010
394	In the informal sector	52106010
431	Private household	52106010
7	Do not know	52106010
0	Unspecified	52106010
8854	Not applicable	52106010
632	In the formal sector	52106011
407	In the informal sector	52106011
368	Private household	52106011
6	Do not know	52106011
0	Unspecified	52106011
7385	Not applicable	52106011
3142	In the formal sector	52106012
344	In the informal sector	52106012
198	Private household	52106012
93	Do not know	52106012
0	Unspecified	52106012
6126	Not applicable	52106012
1326	In the formal sector	52106013
107	In the informal sector	52106013
133	Private household	52106013
26	Do not know	52106013
0	Unspecified	52106013
4121	Not applicable	52106013
668	In the formal sector	52106014
297	In the informal sector	52106014
209	Private household	52106014
7	Do not know	52106014
0	Unspecified	52106014
6845	Not applicable	52106014
1323	In the formal sector	52106015
238	In the informal sector	52106015
161	Private household	52106015
82	Do not know	52106015
0	Unspecified	52106015
4001	Not applicable	52106015
2265	In the formal sector	52106016
258	In the informal sector	52106016
340	Private household	52106016
66	Do not know	52106016
0	Unspecified	52106016
4590	Not applicable	52106016
2680	In the formal sector	52106017
145	In the informal sector	52106017
169	Private household	52106017
36	Do not know	52106017
0	Unspecified	52106017
5326	Not applicable	52106017
2372	In the formal sector	52106018
388	In the informal sector	52106018
187	Private household	52106018
57	Do not know	52106018
0	Unspecified	52106018
5001	Not applicable	52106018
1585	In the formal sector	52106019
185	In the informal sector	52106019
297	Private household	52106019
94	Do not know	52106019
0	Unspecified	52106019
3644	Not applicable	52106019
2941	In the formal sector	52106020
1331	In the informal sector	52106020
325	Private household	52106020
37	Do not know	52106020
0	Unspecified	52106020
10222	Not applicable	52106020
1223	In the formal sector	52106021
141	In the informal sector	52106021
189	Private household	52106021
6	Do not know	52106021
0	Unspecified	52106021
5568	Not applicable	52106021
1007	In the formal sector	52106022
478	In the informal sector	52106022
108	Private household	52106022
23	Do not know	52106022
0	Unspecified	52106022
6820	Not applicable	52106022
1245	In the formal sector	52106023
329	In the informal sector	52106023
141	Private household	52106023
9	Do not know	52106023
0	Unspecified	52106023
4798	Not applicable	52106023
1604	In the formal sector	52106024
576	In the informal sector	52106024
70	Private household	52106024
28	Do not know	52106024
0	Unspecified	52106024
7512	Not applicable	52106024
1245	In the formal sector	52106025
417	In the informal sector	52106025
252	Private household	52106025
42	Do not know	52106025
0	Unspecified	52106025
7420	Not applicable	52106025
2485	In the formal sector	52106026
461	In the informal sector	52106026
348	Private household	52106026
58	Do not know	52106026
0	Unspecified	52106026
9469	Not applicable	52106026
1218	In the formal sector	52106027
322	In the informal sector	52106027
422	Private household	52106027
98	Do not know	52106027
0	Unspecified	52106027
9029	Not applicable	52106027
1435	In the formal sector	52106028
74	In the informal sector	52106028
149	Private household	52106028
4	Do not know	52106028
0	Unspecified	52106028
5276	Not applicable	52106028
1098	In the formal sector	52106029
149	In the informal sector	52106029
316	Private household	52106029
90	Do not know	52106029
0	Unspecified	52106029
8590	Not applicable	52106029
215	In the formal sector	52101001
44	In the informal sector	52101001
22	Private household	52101001
7	Do not know	52101001
0	Unspecified	52101001
6898	Not applicable	52101001
574	In the formal sector	52101002
174	In the informal sector	52101002
129	Private household	52101002
36	Do not know	52101002
0	Unspecified	52101002
6409	Not applicable	52101002
467	In the formal sector	52101003
109	In the informal sector	52101003
66	Private household	52101003
23	Do not know	52101003
0	Unspecified	52101003
5563	Not applicable	52101003
296	In the formal sector	52101004
62	In the informal sector	52101004
3	Private household	52101004
5	Do not know	52101004
0	Unspecified	52101004
7678	Not applicable	52101004
191	In the formal sector	52101005
27	In the informal sector	52101005
24	Private household	52101005
8	Do not know	52101005
0	Unspecified	52101005
10376	Not applicable	52101005
559	In the formal sector	52101006
154	In the informal sector	52101006
8	Private household	52101006
2	Do not know	52101006
0	Unspecified	52101006
8646	Not applicable	52101006
280	In the formal sector	52101007
98	In the informal sector	52101007
112	Private household	52101007
4	Do not know	52101007
0	Unspecified	52101007
5659	Not applicable	52101007
207	In the formal sector	52101008
43	In the informal sector	52101008
14	Private household	52101008
26	Do not know	52101008
0	Unspecified	52101008
6563	Not applicable	52101008
575	In the formal sector	52101009
572	In the informal sector	52101009
124	Private household	52101009
31	Do not know	52101009
0	Unspecified	52101009
7336	Not applicable	52101009
434	In the formal sector	52101010
231	In the informal sector	52101010
53	Private household	52101010
8	Do not know	52101010
0	Unspecified	52101010
6255	Not applicable	52101010
662	In the formal sector	52102001
221	In the informal sector	52102001
93	Private household	52102001
41	Do not know	52102001
0	Unspecified	52102001
6438	Not applicable	52102001
687	In the formal sector	52102002
206	In the informal sector	52102002
89	Private household	52102002
23	Do not know	52102002
0	Unspecified	52102002
8899	Not applicable	52102002
2060	In the formal sector	52102003
335	In the informal sector	52102003
452	Private household	52102003
28	Do not know	52102003
0	Unspecified	52102003
6423	Not applicable	52102003
1505	In the formal sector	52102004
225	In the informal sector	52102004
147	Private household	52102004
25	Do not know	52102004
0	Unspecified	52102004
4961	Not applicable	52102004
1312	In the formal sector	52102005
150	In the informal sector	52102005
225	Private household	52102005
31	Do not know	52102005
0	Unspecified	52102005
4838	Not applicable	52102005
1191	In the formal sector	52102006
198	In the informal sector	52102006
145	Private household	52102006
75	Do not know	52102006
0	Unspecified	52102006
4469	Not applicable	52102006
1173	In the formal sector	52102007
526	In the informal sector	52102007
253	Private household	52102007
64	Do not know	52102007
0	Unspecified	52102007
6749	Not applicable	52102007
1026	In the formal sector	52102008
385	In the informal sector	52102008
187	Private household	52102008
11	Do not know	52102008
0	Unspecified	52102008
7602	Not applicable	52102008
523	In the formal sector	52102009
178	In the informal sector	52102009
72	Private household	52102009
78	Do not know	52102009
0	Unspecified	52102009
5880	Not applicable	52102009
2045	In the formal sector	52102010
246	In the informal sector	52102010
250	Private household	52102010
53	Do not know	52102010
0	Unspecified	52102010
5420	Not applicable	52102010
2805	In the formal sector	52201001
1623	In the informal sector	52201001
437	Private household	52201001
353	Do not know	52201001
0	Unspecified	52201001
7290	Not applicable	52201001
1461	In the formal sector	52201002
163	In the informal sector	52201002
203	Private household	52201002
297	Do not know	52201002
0	Unspecified	52201002
3812	Not applicable	52201002
806	In the formal sector	52201003
170	In the informal sector	52201003
46	Private household	52201003
61	Do not know	52201003
0	Unspecified	52201003
9103	Not applicable	52201003
1466	In the formal sector	52201004
219	In the informal sector	52201004
218	Private household	52201004
25	Do not know	52201004
0	Unspecified	52201004
7297	Not applicable	52201004
604	In the formal sector	52201005
88	In the informal sector	52201005
67	Private household	52201005
12	Do not know	52201005
0	Unspecified	52201005
10386	Not applicable	52201005
412	In the formal sector	52201006
48	In the informal sector	52201006
8	Private household	52201006
2	Do not know	52201006
0	Unspecified	52201006
7089	Not applicable	52201006
1595	In the formal sector	52201007
342	In the informal sector	52201007
181	Private household	52201007
98	Do not know	52201007
0	Unspecified	52201007
3362	Not applicable	52201007
338	In the formal sector	52201008
42	In the informal sector	52201008
43	Private household	52201008
13	Do not know	52201008
0	Unspecified	52201008
6422	Not applicable	52201008
1816	In the formal sector	52201009
1266	In the informal sector	52201009
512	Private household	52201009
116	Do not know	52201009
0	Unspecified	52201009
6300	Not applicable	52201009
970	In the formal sector	52201010
266	In the informal sector	52201010
97	Private household	52201010
29	Do not know	52201010
0	Unspecified	52201010
5272	Not applicable	52201010
279	In the formal sector	52201011
123	In the informal sector	52201011
59	Private household	52201011
18	Do not know	52201011
0	Unspecified	52201011
6914	Not applicable	52201011
842	In the formal sector	52201012
491	In the informal sector	52201012
193	Private household	52201012
110	Do not know	52201012
0	Unspecified	52201012
6390	Not applicable	52201012
208	In the formal sector	52201013
85	In the informal sector	52201013
25	Private household	52201013
4	Do not know	52201013
0	Unspecified	52201013
4984	Not applicable	52201013
1658	In the formal sector	52202001
416	In the informal sector	52202001
219	Private household	52202001
206	Do not know	52202001
0	Unspecified	52202001
5161	Not applicable	52202001
506	In the formal sector	52202002
49	In the informal sector	52202002
60	Private household	52202002
19	Do not know	52202002
0	Unspecified	52202002
632	Not applicable	52202002
2283	In the formal sector	52202003
600	In the informal sector	52202003
451	Private household	52202003
83	Do not know	52202003
0	Unspecified	52202003
2995	Not applicable	52202003
3588	In the formal sector	52202004
466	In the informal sector	52202004
426	Private household	52202004
119	Do not know	52202004
0	Unspecified	52202004
4704	Not applicable	52202004
1972	In the formal sector	52202005
245	In the informal sector	52202005
300	Private household	52202005
76	Do not know	52202005
0	Unspecified	52202005
4458	Not applicable	52202005
2001	In the formal sector	52202006
256	In the informal sector	52202006
453	Private household	52202006
75	Do not know	52202006
0	Unspecified	52202006
4561	Not applicable	52202006
2812	In the formal sector	52202007
248	In the informal sector	52202007
398	Private household	52202007
100	Do not know	52202007
0	Unspecified	52202007
4107	Not applicable	52202007
2128	In the formal sector	52202008
199	In the informal sector	52202008
443	Private household	52202008
116	Do not know	52202008
0	Unspecified	52202008
10622	Not applicable	52202008
2114	In the formal sector	52202009
394	In the informal sector	52202009
344	Private household	52202009
54	Do not know	52202009
0	Unspecified	52202009
6666	Not applicable	52202009
857	In the formal sector	52202010
90	In the informal sector	52202010
149	Private household	52202010
49	Do not know	52202010
0	Unspecified	52202010
4163	Not applicable	52202010
1122	In the formal sector	52202011
145	In the informal sector	52202011
222	Private household	52202011
101	Do not know	52202011
0	Unspecified	52202011
5731	Not applicable	52202011
2785	In the formal sector	52202012
154	In the informal sector	52202012
373	Private household	52202012
71	Do not know	52202012
0	Unspecified	52202012
6919	Not applicable	52202012
1990	In the formal sector	52203001
587	In the informal sector	52203001
255	Private household	52203001
296	Do not know	52203001
0	Unspecified	52203001
8286	Not applicable	52203001
2271	In the formal sector	52203002
1321	In the informal sector	52203002
434	Private household	52203002
74	Do not know	52203002
0	Unspecified	52203002
4363	Not applicable	52203002
1259	In the formal sector	52203003
215	In the informal sector	52203003
223	Private household	52203003
126	Do not know	52203003
0	Unspecified	52203003
5093	Not applicable	52203003
832	In the formal sector	52203004
382	In the informal sector	52203004
125	Private household	52203004
40	Do not know	52203004
0	Unspecified	52203004
9930	Not applicable	52203004
580	In the formal sector	52204001
119	In the informal sector	52204001
72	Private household	52204001
46	Do not know	52204001
0	Unspecified	52204001
7866	Not applicable	52204001
224	In the formal sector	52204002
13	In the informal sector	52204002
15	Private household	52204002
52	Do not know	52204002
0	Unspecified	52204002
9242	Not applicable	52204002
327	In the formal sector	52204003
122	In the informal sector	52204003
14	Private household	52204003
25	Do not know	52204003
0	Unspecified	52204003
7581	Not applicable	52204003
646	In the formal sector	52204004
70	In the informal sector	52204004
82	Private household	52204004
9	Do not know	52204004
0	Unspecified	52204004
5999	Not applicable	52204004
2757	In the formal sector	52205001
836	In the informal sector	52205001
224	Private household	52205001
52	Do not know	52205001
0	Unspecified	52205001
14901	Not applicable	52205001
2847	In the formal sector	52205002
459	In the informal sector	52205002
355	Private household	52205002
17	Do not know	52205002
0	Unspecified	52205002
14755	Not applicable	52205002
1855	In the formal sector	52205003
335	In the informal sector	52205003
348	Private household	52205003
92	Do not know	52205003
0	Unspecified	52205003
12946	Not applicable	52205003
1435	In the formal sector	52205004
381	In the informal sector	52205004
187	Private household	52205004
121	Do not know	52205004
0	Unspecified	52205004
12100	Not applicable	52205004
1663	In the formal sector	52205005
390	In the informal sector	52205005
353	Private household	52205005
37	Do not know	52205005
0	Unspecified	52205005
13398	Not applicable	52205005
1375	In the formal sector	52205006
461	In the informal sector	52205006
347	Private household	52205006
50	Do not know	52205006
0	Unspecified	52205006
15049	Not applicable	52205006
1365	In the formal sector	52205007
341	In the informal sector	52205007
155	Private household	52205007
91	Do not know	52205007
0	Unspecified	52205007
16097	Not applicable	52205007
1160	In the formal sector	52205008
310	In the informal sector	52205008
74	Private household	52205008
44	Do not know	52205008
0	Unspecified	52205008
13702	Not applicable	52205008
949	In the formal sector	52205009
824	In the informal sector	52205009
213	Private household	52205009
56	Do not know	52205009
0	Unspecified	52205009
12496	Not applicable	52205009
1626	In the formal sector	52205010
208	In the informal sector	52205010
137	Private household	52205010
166	Do not know	52205010
0	Unspecified	52205010
12014	Not applicable	52205010
2152	In the formal sector	52205011
550	In the informal sector	52205011
383	Private household	52205011
165	Do not know	52205011
0	Unspecified	52205011
16695	Not applicable	52205011
1817	In the formal sector	52205012
392	In the informal sector	52205012
354	Private household	52205012
18	Do not know	52205012
0	Unspecified	52205012
9194	Not applicable	52205012
4214	In the formal sector	52205013
447	In the informal sector	52205013
538	Private household	52205013
163	Do not know	52205013
0	Unspecified	52205013
16591	Not applicable	52205013
1624	In the formal sector	52205014
436	In the informal sector	52205014
341	Private household	52205014
59	Do not know	52205014
0	Unspecified	52205014
12857	Not applicable	52205014
3490	In the formal sector	52205015
378	In the informal sector	52205015
439	Private household	52205015
57	Do not know	52205015
0	Unspecified	52205015
14180	Not applicable	52205015
2205	In the formal sector	52205016
1138	In the informal sector	52205016
552	Private household	52205016
98	Do not know	52205016
0	Unspecified	52205016
17238	Not applicable	52205016
4063	In the formal sector	52205017
710	In the informal sector	52205017
675	Private household	52205017
153	Do not know	52205017
0	Unspecified	52205017
15931	Not applicable	52205017
3148	In the formal sector	52205018
685	In the informal sector	52205018
665	Private household	52205018
221	Do not know	52205018
0	Unspecified	52205018
15989	Not applicable	52205018
2397	In the formal sector	52205019
309	In the informal sector	52205019
416	Private household	52205019
7	Do not know	52205019
0	Unspecified	52205019
13316	Not applicable	52205019
1797	In the formal sector	52205020
325	In the informal sector	52205020
200	Private household	52205020
79	Do not know	52205020
0	Unspecified	52205020
11265	Not applicable	52205020
1276	In the formal sector	52205021
440	In the informal sector	52205021
257	Private household	52205021
85	Do not know	52205021
0	Unspecified	52205021
7914	Not applicable	52205021
2805	In the formal sector	52205022
268	In the informal sector	52205022
331	Private household	52205022
51	Do not know	52205022
0	Unspecified	52205022
11211	Not applicable	52205022
2410	In the formal sector	52205023
488	In the informal sector	52205023
420	Private household	52205023
24	Do not know	52205023
0	Unspecified	52205023
11042	Not applicable	52205023
4881	In the formal sector	52205024
485	In the informal sector	52205024
554	Private household	52205024
72	Do not know	52205024
0	Unspecified	52205024
10189	Not applicable	52205024
6425	In the formal sector	52205025
392	In the informal sector	52205025
485	Private household	52205025
127	Do not know	52205025
0	Unspecified	52205025
8032	Not applicable	52205025
6139	In the formal sector	52205026
448	In the informal sector	52205026
636	Private household	52205026
161	Do not know	52205026
0	Unspecified	52205026
10402	Not applicable	52205026
4127	In the formal sector	52205027
325	In the informal sector	52205027
762	Private household	52205027
179	Do not know	52205027
0	Unspecified	52205027
7644	Not applicable	52205027
6139	In the formal sector	52205028
429	In the informal sector	52205028
710	Private household	52205028
93	Do not know	52205028
0	Unspecified	52205028
13210	Not applicable	52205028
3285	In the formal sector	52205029
606	In the informal sector	52205029
1247	Private household	52205029
500	Do not know	52205029
0	Unspecified	52205029
13344	Not applicable	52205029
6091	In the formal sector	52205030
439	In the informal sector	52205030
776	Private household	52205030
102	Do not know	52205030
0	Unspecified	52205030
12679	Not applicable	52205030
2531	In the formal sector	52205031
369	In the informal sector	52205031
230	Private household	52205031
89	Do not know	52205031
0	Unspecified	52205031
8876	Not applicable	52205031
3615	In the formal sector	52205032
757	In the informal sector	52205032
291	Private household	52205032
97	Do not know	52205032
0	Unspecified	52205032
11213	Not applicable	52205032
3381	In the formal sector	52205033
278	In the informal sector	52205033
417	Private household	52205033
75	Do not know	52205033
0	Unspecified	52205033
8758	Not applicable	52205033
5269	In the formal sector	52205034
793	In the informal sector	52205034
432	Private household	52205034
82	Do not know	52205034
0	Unspecified	52205034
14833	Not applicable	52205034
5008	In the formal sector	52205035
246	In the informal sector	52205035
720	Private household	52205035
138	Do not know	52205035
0	Unspecified	52205035
10731	Not applicable	52205035
7132	In the formal sector	52205036
579	In the informal sector	52205036
628	Private household	52205036
203	Do not know	52205036
0	Unspecified	52205036
10937	Not applicable	52205036
4933	In the formal sector	52205037
276	In the informal sector	52205037
464	Private household	52205037
199	Do not know	52205037
0	Unspecified	52205037
9552	Not applicable	52205037
798	In the formal sector	52206001
209	In the informal sector	52206001
110	Private household	52206001
126	Do not know	52206001
0	Unspecified	52206001
10218	Not applicable	52206001
928	In the formal sector	52206002
81	In the informal sector	52206002
137	Private household	52206002
56	Do not know	52206002
0	Unspecified	52206002
9009	Not applicable	52206002
1476	In the formal sector	52206003
698	In the informal sector	52206003
255	Private household	52206003
105	Do not know	52206003
0	Unspecified	52206003
5057	Not applicable	52206003
2909	In the formal sector	52206004
1332	In the informal sector	52206004
510	Private household	52206004
166	Do not know	52206004
0	Unspecified	52206004
4279	Not applicable	52206004
436	In the formal sector	52206005
56	In the informal sector	52206005
17	Private household	52206005
35	Do not know	52206005
0	Unspecified	52206005
7918	Not applicable	52206005
2151	In the formal sector	52206006
443	In the informal sector	52206006
265	Private household	52206006
70	Do not know	52206006
0	Unspecified	52206006
5981	Not applicable	52206006
313	In the formal sector	52206007
62	In the informal sector	52206007
21	Private household	52206007
11	Do not know	52206007
0	Unspecified	52206007
6902	Not applicable	52206007
1304	In the formal sector	52207001
282	In the informal sector	52207001
452	Private household	52207001
47	Do not know	52207001
0	Unspecified	52207001
4750	Not applicable	52207001
1180	In the formal sector	52207002
790	In the informal sector	52207002
110	Private household	52207002
83	Do not know	52207002
0	Unspecified	52207002
8123	Not applicable	52207002
2585	In the formal sector	52207003
518	In the informal sector	52207003
443	Private household	52207003
72	Do not know	52207003
0	Unspecified	52207003
10995	Not applicable	52207003
1178	In the formal sector	52207004
722	In the informal sector	52207004
100	Private household	52207004
187	Do not know	52207004
0	Unspecified	52207004
1636	Not applicable	52207004
461	In the formal sector	52207005
83	In the informal sector	52207005
29	Private household	52207005
15	Do not know	52207005
0	Unspecified	52207005
8279	Not applicable	52207005
615	In the formal sector	52207006
727	In the informal sector	52207006
157	Private household	52207006
91	Do not know	52207006
0	Unspecified	52207006
8995	Not applicable	52207006
816	In the formal sector	52207007
378	In the informal sector	52207007
143	Private household	52207007
69	Do not know	52207007
0	Unspecified	52207007
9380	Not applicable	52207007
1298	In the formal sector	52302001
144	In the informal sector	52302001
48	Private household	52302001
10	Do not know	52302001
0	Unspecified	52302001
7068	Not applicable	52302001
1521	In the formal sector	52302002
157	In the informal sector	52302002
106	Private household	52302002
5	Do not know	52302002
0	Unspecified	52302002
5589	Not applicable	52302002
2009	In the formal sector	52302003
184	In the informal sector	52302003
83	Private household	52302003
20	Do not know	52302003
0	Unspecified	52302003
8261	Not applicable	52302003
752	In the formal sector	52302004
128	In the informal sector	52302004
24	Private household	52302004
10	Do not know	52302004
0	Unspecified	52302004
4723	Not applicable	52302004
1114	In the formal sector	52302005
124	In the informal sector	52302005
50	Private household	52302005
48	Do not know	52302005
0	Unspecified	52302005
7539	Not applicable	52302005
2152	In the formal sector	52302006
284	In the informal sector	52302006
123	Private household	52302006
48	Do not know	52302006
0	Unspecified	52302006
6940	Not applicable	52302006
588	In the formal sector	52302007
133	In the informal sector	52302007
40	Private household	52302007
21	Do not know	52302007
0	Unspecified	52302007
7921	Not applicable	52302007
1075	In the formal sector	52302008
220	In the informal sector	52302008
51	Private household	52302008
18	Do not know	52302008
0	Unspecified	52302008
5324	Not applicable	52302008
1667	In the formal sector	52302009
283	In the informal sector	52302009
302	Private household	52302009
78	Do not know	52302009
0	Unspecified	52302009
8086	Not applicable	52302009
1429	In the formal sector	52302010
593	In the informal sector	52302010
97	Private household	52302010
18	Do not know	52302010
0	Unspecified	52302010
4511	Not applicable	52302010
2192	In the formal sector	52302011
261	In the informal sector	52302011
319	Private household	52302011
54	Do not know	52302011
0	Unspecified	52302011
4771	Not applicable	52302011
2569	In the formal sector	52302012
297	In the informal sector	52302012
291	Private household	52302012
45	Do not know	52302012
0	Unspecified	52302012
3293	Not applicable	52302012
1001	In the formal sector	52302013
415	In the informal sector	52302013
80	Private household	52302013
55	Do not know	52302013
0	Unspecified	52302013
11034	Not applicable	52302013
934	In the formal sector	52302014
240	In the informal sector	52302014
143	Private household	52302014
80	Do not know	52302014
0	Unspecified	52302014
10701	Not applicable	52302014
866	In the formal sector	52302015
105	In the informal sector	52302015
42	Private household	52302015
6	Do not know	52302015
0	Unspecified	52302015
6941	Not applicable	52302015
738	In the formal sector	52302016
172	In the informal sector	52302016
18	Private household	52302016
11	Do not know	52302016
0	Unspecified	52302016
6361	Not applicable	52302016
496	In the formal sector	52302017
173	In the informal sector	52302017
13	Private household	52302017
1	Do not know	52302017
0	Unspecified	52302017
7249	Not applicable	52302017
1020	In the formal sector	52302018
219	In the informal sector	52302018
104	Private household	52302018
30	Do not know	52302018
0	Unspecified	52302018
6855	Not applicable	52302018
567	In the formal sector	52302019
196	In the informal sector	52302019
21	Private household	52302019
13	Do not know	52302019
0	Unspecified	52302019
6911	Not applicable	52302019
2433	In the formal sector	52302020
384	In the informal sector	52302020
226	Private household	52302020
89	Do not know	52302020
0	Unspecified	52302020
7947	Not applicable	52302020
1713	In the formal sector	52302021
420	In the informal sector	52302021
87	Private household	52302021
10	Do not know	52302021
0	Unspecified	52302021
6308	Not applicable	52302021
3659	In the formal sector	52302022
505	In the informal sector	52302022
393	Private household	52302022
41	Do not know	52302022
0	Unspecified	52302022
5787	Not applicable	52302022
296	In the formal sector	52302023
146	In the informal sector	52302023
53	Private household	52302023
0	Do not know	52302023
0	Unspecified	52302023
7161	Not applicable	52302023
594	In the formal sector	52302024
329	In the informal sector	52302024
148	Private household	52302024
93	Do not know	52302024
0	Unspecified	52302024
7232	Not applicable	52302024
1777	In the formal sector	52302025
210	In the informal sector	52302025
171	Private household	52302025
79	Do not know	52302025
0	Unspecified	52302025
7365	Not applicable	52302025
562	In the formal sector	52302026
323	In the informal sector	52302026
106	Private household	52302026
13	Do not know	52302026
0	Unspecified	52302026
5386	Not applicable	52302026
1962	In the formal sector	52302027
583	In the informal sector	52302027
147	Private household	52302027
27	Do not know	52302027
0	Unspecified	52302027
11754	Not applicable	52302027
296	In the formal sector	52303001
150	In the informal sector	52303001
36	Private household	52303001
7	Do not know	52303001
0	Unspecified	52303001
9768	Not applicable	52303001
503	In the formal sector	52303002
83	In the informal sector	52303002
30	Private household	52303002
18	Do not know	52303002
0	Unspecified	52303002
10834	Not applicable	52303002
356	In the formal sector	52303003
74	In the informal sector	52303003
13	Private household	52303003
15	Do not know	52303003
0	Unspecified	52303003
9451	Not applicable	52303003
342	In the formal sector	52303004
106	In the informal sector	52303004
29	Private household	52303004
9	Do not know	52303004
0	Unspecified	52303004
10635	Not applicable	52303004
498	In the formal sector	52303005
78	In the informal sector	52303005
41	Private household	52303005
13	Do not know	52303005
0	Unspecified	52303005
8336	Not applicable	52303005
207	In the formal sector	52303006
67	In the informal sector	52303006
7	Private household	52303006
7	Do not know	52303006
0	Unspecified	52303006
9398	Not applicable	52303006
174	In the formal sector	52303007
29	In the informal sector	52303007
20	Private household	52303007
3	Do not know	52303007
0	Unspecified	52303007
10167	Not applicable	52303007
272	In the formal sector	52303008
40	In the informal sector	52303008
5	Private household	52303008
4	Do not know	52303008
0	Unspecified	52303008
10837	Not applicable	52303008
408	In the formal sector	52303009
126	In the informal sector	52303009
40	Private household	52303009
5	Do not know	52303009
0	Unspecified	52303009
10389	Not applicable	52303009
311	In the formal sector	52303010
32	In the informal sector	52303010
4	Private household	52303010
13	Do not know	52303010
0	Unspecified	52303010
8834	Not applicable	52303010
1506	In the formal sector	52304001
115	In the informal sector	52304001
123	Private household	52304001
14	Do not know	52304001
0	Unspecified	52304001
7749	Not applicable	52304001
652	In the formal sector	52304002
105	In the informal sector	52304002
28	Private household	52304002
41	Do not know	52304002
0	Unspecified	52304002
7544	Not applicable	52304002
2379	In the formal sector	52304003
463	In the informal sector	52304003
205	Private household	52304003
87	Do not know	52304003
0	Unspecified	52304003
6938	Not applicable	52304003
2164	In the formal sector	52304004
277	In the informal sector	52304004
140	Private household	52304004
125	Do not know	52304004
0	Unspecified	52304004
5517	Not applicable	52304004
321	In the formal sector	52304005
235	In the informal sector	52304005
10	Private household	52304005
4	Do not know	52304005
0	Unspecified	52304005
9092	Not applicable	52304005
958	In the formal sector	52304006
149	In the informal sector	52304006
126	Private household	52304006
55	Do not know	52304006
0	Unspecified	52304006
6253	Not applicable	52304006
403	In the formal sector	52304007
41	In the informal sector	52304007
21	Private household	52304007
16	Do not know	52304007
0	Unspecified	52304007
9068	Not applicable	52304007
792	In the formal sector	52304008
299	In the informal sector	52304008
126	Private household	52304008
103	Do not know	52304008
0	Unspecified	52304008
10018	Not applicable	52304008
1206	In the formal sector	52304009
213	In the informal sector	52304009
127	Private household	52304009
19	Do not know	52304009
0	Unspecified	52304009
7325	Not applicable	52304009
1304	In the formal sector	52305001
703	In the informal sector	52305001
247	Private household	52305001
118	Do not know	52305001
0	Unspecified	52305001
6923	Not applicable	52305001
561	In the formal sector	52305002
70	In the informal sector	52305002
29	Private household	52305002
56	Do not know	52305002
0	Unspecified	52305002
10349	Not applicable	52305002
307	In the formal sector	52305003
102	In the informal sector	52305003
50	Private household	52305003
17	Do not know	52305003
0	Unspecified	52305003
8637	Not applicable	52305003
421	In the formal sector	52305004
69	In the informal sector	52305004
37	Private household	52305004
22	Do not know	52305004
0	Unspecified	52305004
8713	Not applicable	52305004
213	In the formal sector	52305005
27	In the informal sector	52305005
10	Private household	52305005
4	Do not know	52305005
0	Unspecified	52305005
8303	Not applicable	52305005
556	In the formal sector	52305006
406	In the informal sector	52305006
20	Private household	52305006
4	Do not know	52305006
0	Unspecified	52305006
8237	Not applicable	52305006
407	In the formal sector	52305007
170	In the informal sector	52305007
27	Private household	52305007
2	Do not know	52305007
0	Unspecified	52305007
8114	Not applicable	52305007
469	In the formal sector	52305008
49	In the informal sector	52305008
23	Private household	52305008
8	Do not know	52305008
0	Unspecified	52305008
8369	Not applicable	52305008
360	In the formal sector	52305009
137	In the informal sector	52305009
109	Private household	52305009
15	Do not know	52305009
0	Unspecified	52305009
8089	Not applicable	52305009
932	In the formal sector	52305010
216	In the informal sector	52305010
57	Private household	52305010
31	Do not know	52305010
0	Unspecified	52305010
8091	Not applicable	52305010
772	In the formal sector	52305011
335	In the informal sector	52305011
111	Private household	52305011
86	Do not know	52305011
0	Unspecified	52305011
9582	Not applicable	52305011
1276	In the formal sector	52305012
400	In the informal sector	52305012
249	Private household	52305012
64	Do not know	52305012
0	Unspecified	52305012
8124	Not applicable	52305012
787	In the formal sector	52305013
292	In the informal sector	52305013
44	Private household	52305013
18	Do not know	52305013
0	Unspecified	52305013
8175	Not applicable	52305013
715	In the formal sector	52305014
247	In the informal sector	52305014
207	Private household	52305014
74	Do not know	52305014
0	Unspecified	52305014
8321	Not applicable	52305014
930	In the formal sector	52306001
162	In the informal sector	52306001
48	Private household	52306001
101	Do not know	52306001
0	Unspecified	52306001
7201	Not applicable	52306001
302	In the formal sector	52306002
82	In the informal sector	52306002
13	Private household	52306002
13	Do not know	52306002
0	Unspecified	52306002
7226	Not applicable	52306002
489	In the formal sector	52306003
168	In the informal sector	52306003
57	Private household	52306003
29	Do not know	52306003
0	Unspecified	52306003
6654	Not applicable	52306003
620	In the formal sector	52306004
207	In the informal sector	52306004
70	Private household	52306004
24	Do not know	52306004
0	Unspecified	52306004
8311	Not applicable	52306004
378	In the formal sector	52306005
150	In the informal sector	52306005
100	Private household	52306005
2	Do not know	52306005
0	Unspecified	52306005
6429	Not applicable	52306005
449	In the formal sector	52306006
223	In the informal sector	52306006
81	Private household	52306006
27	Do not know	52306006
0	Unspecified	52306006
7802	Not applicable	52306006
604	In the formal sector	52306007
95	In the informal sector	52306007
36	Private household	52306007
8	Do not know	52306007
0	Unspecified	52306007
6498	Not applicable	52306007
347	In the formal sector	52306008
52	In the informal sector	52306008
3	Private household	52306008
25	Do not know	52306008
0	Unspecified	52306008
8997	Not applicable	52306008
745	In the formal sector	52306009
49	In the informal sector	52306009
27	Private household	52306009
14	Do not know	52306009
0	Unspecified	52306009
9498	Not applicable	52306009
691	In the formal sector	52306010
63	In the informal sector	52306010
24	Private household	52306010
39	Do not know	52306010
0	Unspecified	52306010
11090	Not applicable	52306010
762	In the formal sector	52306011
108	In the informal sector	52306011
55	Private household	52306011
68	Do not know	52306011
0	Unspecified	52306011
7792	Not applicable	52306011
520	In the formal sector	52306012
181	In the informal sector	52306012
150	Private household	52306012
60	Do not know	52306012
0	Unspecified	52306012
6100	Not applicable	52306012
1101	In the formal sector	52306013
227	In the informal sector	52306013
125	Private household	52306013
48	Do not know	52306013
0	Unspecified	52306013
8523	Not applicable	52306013
480	In the formal sector	52701001
139	In the informal sector	52701001
6	Private household	52701001
24	Do not know	52701001
0	Unspecified	52701001
4060	Not applicable	52701001
656	In the formal sector	52701002
246	In the informal sector	52701002
144	Private household	52701002
4	Do not know	52701002
0	Unspecified	52701002
6694	Not applicable	52701002
861	In the formal sector	52701003
247	In the informal sector	52701003
197	Private household	52701003
54	Do not know	52701003
0	Unspecified	52701003
10041	Not applicable	52701003
734	In the formal sector	52701004
205	In the informal sector	52701004
47	Private household	52701004
32	Do not know	52701004
0	Unspecified	52701004
11071	Not applicable	52701004
833	In the formal sector	52701005
185	In the informal sector	52701005
74	Private household	52701005
13	Do not know	52701005
0	Unspecified	52701005
7783	Not applicable	52701005
418	In the formal sector	52701006
111	In the informal sector	52701006
67	Private household	52701006
2	Do not know	52701006
0	Unspecified	52701006
12466	Not applicable	52701006
495	In the formal sector	52701007
230	In the informal sector	52701007
69	Private household	52701007
70	Do not know	52701007
0	Unspecified	52701007
8932	Not applicable	52701007
293	In the formal sector	52701008
121	In the informal sector	52701008
35	Private household	52701008
31	Do not know	52701008
0	Unspecified	52701008
8012	Not applicable	52701008
260	In the formal sector	52701009
28	In the informal sector	52701009
41	Private household	52701009
2	Do not know	52701009
0	Unspecified	52701009
11510	Not applicable	52701009
302	In the formal sector	52701010
72	In the informal sector	52701010
33	Private household	52701010
7	Do not know	52701010
0	Unspecified	52701010
6775	Not applicable	52701010
516	In the formal sector	52701011
162	In the informal sector	52701011
65	Private household	52701011
53	Do not know	52701011
0	Unspecified	52701011
8792	Not applicable	52701011
230	In the formal sector	52701012
52	In the informal sector	52701012
36	Private household	52701012
20	Do not know	52701012
0	Unspecified	52701012
6994	Not applicable	52701012
208	In the formal sector	52701013
72	In the informal sector	52701013
17	Private household	52701013
5	Do not know	52701013
0	Unspecified	52701013
8616	Not applicable	52701013
421	In the formal sector	52701014
35	In the informal sector	52701014
2	Private household	52701014
0	Do not know	52701014
0	Unspecified	52701014
7654	Not applicable	52701014
592	In the formal sector	52701015
213	In the informal sector	52701015
39	Private household	52701015
19	Do not know	52701015
0	Unspecified	52701015
9537	Not applicable	52701015
457	In the formal sector	52701016
102	In the informal sector	52701016
23	Private household	52701016
2	Do not know	52701016
0	Unspecified	52701016
7091	Not applicable	52701016
834	In the formal sector	52701017
157	In the informal sector	52701017
53	Private household	52701017
39	Do not know	52701017
0	Unspecified	52701017
8412	Not applicable	52701017
553	In the formal sector	52702001
20	In the informal sector	52702001
92	Private household	52702001
10	Do not know	52702001
0	Unspecified	52702001
6497	Not applicable	52702001
770	In the formal sector	52702002
95	In the informal sector	52702002
55	Private household	52702002
71	Do not know	52702002
0	Unspecified	52702002
7153	Not applicable	52702002
364	In the formal sector	52702003
31	In the informal sector	52702003
24	Private household	52702003
5	Do not know	52702003
0	Unspecified	52702003
8998	Not applicable	52702003
310	In the formal sector	52702004
128	In the informal sector	52702004
32	Private household	52702004
9	Do not know	52702004
0	Unspecified	52702004
7813	Not applicable	52702004
779	In the formal sector	52702005
131	In the informal sector	52702005
77	Private household	52702005
48	Do not know	52702005
0	Unspecified	52702005
12642	Not applicable	52702005
352	In the formal sector	52702006
53	In the informal sector	52702006
18	Private household	52702006
10	Do not know	52702006
0	Unspecified	52702006
6505	Not applicable	52702006
1451	In the formal sector	52702007
548	In the informal sector	52702007
278	Private household	52702007
65	Do not know	52702007
0	Unspecified	52702007
7233	Not applicable	52702007
527	In the formal sector	52702008
85	In the informal sector	52702008
7	Private household	52702008
0	Do not know	52702008
0	Unspecified	52702008
7886	Not applicable	52702008
311	In the formal sector	52702009
57	In the informal sector	52702009
4	Private household	52702009
1	Do not know	52702009
0	Unspecified	52702009
9133	Not applicable	52702009
363	In the formal sector	52702010
55	In the informal sector	52702010
11	Private household	52702010
1	Do not know	52702010
0	Unspecified	52702010
10656	Not applicable	52702010
668	In the formal sector	52702011
100	In the informal sector	52702011
46	Private household	52702011
23	Do not know	52702011
0	Unspecified	52702011
7256	Not applicable	52702011
569	In the formal sector	52702012
208	In the informal sector	52702012
20	Private household	52702012
5	Do not know	52702012
0	Unspecified	52702012
9599	Not applicable	52702012
510	In the formal sector	52702013
131	In the informal sector	52702013
26	Private household	52702013
12	Do not know	52702013
0	Unspecified	52702013
10096	Not applicable	52702013
1282	In the formal sector	52702014
311	In the informal sector	52702014
13	Private household	52702014
43	Do not know	52702014
0	Unspecified	52702014
9985	Not applicable	52702014
363	In the formal sector	52702015
35	In the informal sector	52702015
7	Private household	52702015
1	Do not know	52702015
0	Unspecified	52702015
8058	Not applicable	52702015
428	In the formal sector	52702016
58	In the informal sector	52702016
16	Private household	52702016
9	Do not know	52702016
0	Unspecified	52702016
8982	Not applicable	52702016
372	In the formal sector	52702017
148	In the informal sector	52702017
34	Private household	52702017
9	Do not know	52702017
0	Unspecified	52702017
9862	Not applicable	52702017
557	In the formal sector	52702018
35	In the informal sector	52702018
10	Private household	52702018
7	Do not know	52702018
0	Unspecified	52702018
7330	Not applicable	52702018
266	In the formal sector	52702019
64	In the informal sector	52702019
20	Private household	52702019
1	Do not know	52702019
0	Unspecified	52702019
8461	Not applicable	52702019
1248	In the formal sector	52702020
482	In the informal sector	52702020
380	Private household	52702020
71	Do not know	52702020
0	Unspecified	52702020
5968	Not applicable	52702020
451	In the formal sector	52703001
82	In the informal sector	52703001
46	Private household	52703001
16	Do not know	52703001
0	Unspecified	52703001
9478	Not applicable	52703001
593	In the formal sector	52703002
76	In the informal sector	52703002
75	Private household	52703002
32	Do not know	52703002
0	Unspecified	52703002
6564	Not applicable	52703002
1968	In the formal sector	52703003
532	In the informal sector	52703003
782	Private household	52703003
224	Do not know	52703003
0	Unspecified	52703003
3308	Not applicable	52703003
398	In the formal sector	52703004
159	In the informal sector	52703004
13	Private household	52703004
5	Do not know	52703004
0	Unspecified	52703004
10458	Not applicable	52703004
286	In the formal sector	52704001
78	In the informal sector	52704001
31	Private household	52704001
27	Do not know	52704001
0	Unspecified	52704001
6226	Not applicable	52704001
970	In the formal sector	52704002
224	In the informal sector	52704002
35	Private household	52704002
11	Do not know	52704002
0	Unspecified	52704002
3846	Not applicable	52704002
816	In the formal sector	52704003
139	In the informal sector	52704003
28	Private household	52704003
42	Do not know	52704003
0	Unspecified	52704003
11265	Not applicable	52704003
404	In the formal sector	52704004
104	In the informal sector	52704004
16	Private household	52704004
12	Do not know	52704004
0	Unspecified	52704004
10732	Not applicable	52704004
287	In the formal sector	52704005
77	In the informal sector	52704005
46	Private household	52704005
10	Do not know	52704005
0	Unspecified	52704005
7241	Not applicable	52704005
350	In the formal sector	52704006
60	In the informal sector	52704006
59	Private household	52704006
11	Do not know	52704006
0	Unspecified	52704006
7869	Not applicable	52704006
297	In the formal sector	52704007
100	In the informal sector	52704007
23	Private household	52704007
6	Do not know	52704007
0	Unspecified	52704007
7798	Not applicable	52704007
615	In the formal sector	52704008
221	In the informal sector	52704008
89	Private household	52704008
54	Do not know	52704008
0	Unspecified	52704008
11420	Not applicable	52704008
1641	In the formal sector	52705001
293	In the informal sector	52705001
103	Private household	52705001
7	Do not know	52705001
0	Unspecified	52705001
3795	Not applicable	52705001
1882	In the formal sector	52705002
746	In the informal sector	52705002
137	Private household	52705002
26	Do not know	52705002
0	Unspecified	52705002
12511	Not applicable	52705002
1264	In the formal sector	52705003
682	In the informal sector	52705003
389	Private household	52705003
190	Do not know	52705003
0	Unspecified	52705003
12946	Not applicable	52705003
690	In the formal sector	52705004
479	In the informal sector	52705004
729	Private household	52705004
140	Do not know	52705004
0	Unspecified	52705004
4467	Not applicable	52705004
1280	In the formal sector	52705005
342	In the informal sector	52705005
128	Private household	52705005
329	Do not know	52705005
0	Unspecified	52705005
1719	Not applicable	52705005
1801	In the formal sector	52705006
368	In the informal sector	52705006
233	Private household	52705006
80	Do not know	52705006
0	Unspecified	52705006
12523	Not applicable	52705006
364	In the formal sector	52705007
38	In the informal sector	52705007
18	Private household	52705007
0	Do not know	52705007
0	Unspecified	52705007
7797	Not applicable	52705007
538	In the formal sector	52705008
136	In the informal sector	52705008
44	Private household	52705008
12	Do not know	52705008
0	Unspecified	52705008
9078	Not applicable	52705008
254	In the formal sector	52705009
55	In the informal sector	52705009
27	Private household	52705009
6	Do not know	52705009
0	Unspecified	52705009
6690	Not applicable	52705009
432	In the formal sector	52705010
100	In the informal sector	52705010
25	Private household	52705010
2	Do not know	52705010
0	Unspecified	52705010
9020	Not applicable	52705010
323	In the formal sector	52705011
58	In the informal sector	52705011
18	Private household	52705011
5	Do not know	52705011
0	Unspecified	52705011
7702	Not applicable	52705011
314	In the formal sector	52705012
131	In the informal sector	52705012
81	Private household	52705012
17	Do not know	52705012
0	Unspecified	52705012
8531	Not applicable	52705012
285	In the formal sector	52705013
19	In the informal sector	52705013
18	Private household	52705013
0	Do not know	52705013
0	Unspecified	52705013
4860	Not applicable	52705013
244	In the formal sector	52705014
48	In the informal sector	52705014
20	Private household	52705014
66	Do not know	52705014
0	Unspecified	52705014
6717	Not applicable	52705014
446	In the formal sector	52705015
18	In the informal sector	52705015
5	Private household	52705015
11	Do not know	52705015
0	Unspecified	52705015
7013	Not applicable	52705015
627	In the formal sector	52705016
168	In the informal sector	52705016
54	Private household	52705016
14	Do not know	52705016
0	Unspecified	52705016
11035	Not applicable	52705016
544	In the formal sector	52705017
93	In the informal sector	52705017
8	Private household	52705017
5	Do not know	52705017
0	Unspecified	52705017
7987	Not applicable	52705017
592	In the formal sector	52705018
164	In the informal sector	52705018
36	Private household	52705018
15	Do not know	52705018
0	Unspecified	52705018
11631	Not applicable	52705018
227	In the formal sector	52705019
17	In the informal sector	52705019
5	Private household	52705019
5	Do not know	52705019
0	Unspecified	52705019
8691	Not applicable	52705019
3494	In the formal sector	52802001
501	In the informal sector	52802001
330	Private household	52802001
41	Do not know	52802001
0	Unspecified	52802001
7780	Not applicable	52802001
5023	In the formal sector	52802002
409	In the informal sector	52802002
569	Private household	52802002
119	Do not know	52802002
0	Unspecified	52802002
6134	Not applicable	52802002
3905	In the formal sector	52802003
178	In the informal sector	52802003
127	Private household	52802003
148	Do not know	52802003
0	Unspecified	52802003
4700	Not applicable	52802003
3289	In the formal sector	52802004
393	In the informal sector	52802004
133	Private household	52802004
87	Do not know	52802004
0	Unspecified	52802004
8571	Not applicable	52802004
2497	In the formal sector	52802005
729	In the informal sector	52802005
245	Private household	52802005
109	Do not know	52802005
0	Unspecified	52802005
11984	Not applicable	52802005
2054	In the formal sector	52802006
470	In the informal sector	52802006
265	Private household	52802006
91	Do not know	52802006
0	Unspecified	52802006
9664	Not applicable	52802006
857	In the formal sector	52802007
426	In the informal sector	52802007
125	Private household	52802007
53	Do not know	52802007
0	Unspecified	52802007
4435	Not applicable	52802007
983	In the formal sector	52802008
149	In the informal sector	52802008
143	Private household	52802008
14	Do not know	52802008
0	Unspecified	52802008
3848	Not applicable	52802008
4068	In the formal sector	52802009
547	In the informal sector	52802009
385	Private household	52802009
117	Do not know	52802009
0	Unspecified	52802009
8441	Not applicable	52802009
1016	In the formal sector	52802010
125	In the informal sector	52802010
106	Private household	52802010
0	Do not know	52802010
0	Unspecified	52802010
10062	Not applicable	52802010
533	In the formal sector	52802011
89	In the informal sector	52802011
41	Private household	52802011
4	Do not know	52802011
0	Unspecified	52802011
8464	Not applicable	52802011
1437	In the formal sector	52802012
308	In the informal sector	52802012
259	Private household	52802012
10	Do not know	52802012
0	Unspecified	52802012
6561	Not applicable	52802012
1405	In the formal sector	52802013
367	In the informal sector	52802013
188	Private household	52802013
102	Do not know	52802013
0	Unspecified	52802013
12867	Not applicable	52802013
2319	In the formal sector	52802014
500	In the informal sector	52802014
78	Private household	52802014
48	Do not know	52802014
0	Unspecified	52802014
9370	Not applicable	52802014
1558	In the formal sector	52802015
252	In the informal sector	52802015
236	Private household	52802015
75	Do not know	52802015
0	Unspecified	52802015
10131	Not applicable	52802015
1508	In the formal sector	52802016
309	In the informal sector	52802016
160	Private household	52802016
57	Do not know	52802016
0	Unspecified	52802016
5766	Not applicable	52802016
2791	In the formal sector	52802017
382	In the informal sector	52802017
138	Private household	52802017
16	Do not know	52802017
0	Unspecified	52802017
7136	Not applicable	52802017
1970	In the formal sector	52802018
399	In the informal sector	52802018
168	Private household	52802018
96	Do not know	52802018
0	Unspecified	52802018
12255	Not applicable	52802018
2354	In the formal sector	52802019
377	In the informal sector	52802019
373	Private household	52802019
21	Do not know	52802019
0	Unspecified	52802019
8895	Not applicable	52802019
2152	In the formal sector	52802020
200	In the informal sector	52802020
91	Private household	52802020
18	Do not know	52802020
0	Unspecified	52802020
6091	Not applicable	52802020
1490	In the formal sector	52802021
166	In the informal sector	52802021
116	Private household	52802021
12	Do not know	52802021
0	Unspecified	52802021
5167	Not applicable	52802021
1485	In the formal sector	52802022
188	In the informal sector	52802022
289	Private household	52802022
17	Do not know	52802022
0	Unspecified	52802022
7201	Not applicable	52802022
4019	In the formal sector	52802023
847	In the informal sector	52802023
511	Private household	52802023
53	Do not know	52802023
0	Unspecified	52802023
5274	Not applicable	52802023
3626	In the formal sector	52802024
419	In the informal sector	52802024
417	Private household	52802024
105	Do not know	52802024
0	Unspecified	52802024
13764	Not applicable	52802024
1255	In the formal sector	52802025
525	In the informal sector	52802025
215	Private household	52802025
50	Do not know	52802025
0	Unspecified	52802025
11825	Not applicable	52802025
3695	In the formal sector	52802026
403	In the informal sector	52802026
258	Private household	52802026
72	Do not know	52802026
0	Unspecified	52802026
7095	Not applicable	52802026
2376	In the formal sector	52802027
234	In the informal sector	52802027
256	Private household	52802027
16	Do not know	52802027
0	Unspecified	52802027
5991	Not applicable	52802027
1768	In the formal sector	52802028
337	In the informal sector	52802028
140	Private household	52802028
16	Do not know	52802028
0	Unspecified	52802028
5180	Not applicable	52802028
2201	In the formal sector	52802029
465	In the informal sector	52802029
234	Private household	52802029
17	Do not know	52802029
0	Unspecified	52802029
12451	Not applicable	52802029
925	In the formal sector	52802030
87	In the informal sector	52802030
73	Private household	52802030
9	Do not know	52802030
0	Unspecified	52802030
10266	Not applicable	52802030
574	In the formal sector	52806001
82	In the informal sector	52806001
8	Private household	52806001
20	Do not know	52806001
0	Unspecified	52806001
9946	Not applicable	52806001
215	In the formal sector	52806002
76	In the informal sector	52806002
27	Private household	52806002
14	Do not know	52806002
0	Unspecified	52806002
6812	Not applicable	52806002
279	In the formal sector	52806003
63	In the informal sector	52806003
10	Private household	52806003
2	Do not know	52806003
0	Unspecified	52806003
7377	Not applicable	52806003
307	In the formal sector	52806004
45	In the informal sector	52806004
2	Private household	52806004
0	Do not know	52806004
0	Unspecified	52806004
6016	Not applicable	52806004
1211	In the formal sector	52806005
205	In the informal sector	52806005
23	Private household	52806005
9	Do not know	52806005
0	Unspecified	52806005
7315	Not applicable	52806005
309	In the formal sector	52806006
25	In the informal sector	52806006
29	Private household	52806006
35	Do not know	52806006
0	Unspecified	52806006
8682	Not applicable	52806006
327	In the formal sector	52806007
17	In the informal sector	52806007
4	Private household	52806007
12	Do not know	52806007
0	Unspecified	52806007
8204	Not applicable	52806007
389	In the formal sector	52806008
45	In the informal sector	52806008
14	Private household	52806008
3	Do not know	52806008
0	Unspecified	52806008
6401	Not applicable	52806008
305	In the formal sector	52806009
10	In the informal sector	52806009
5	Private household	52806009
0	Do not know	52806009
0	Unspecified	52806009
7208	Not applicable	52806009
510	In the formal sector	52806010
80	In the informal sector	52806010
8	Private household	52806010
5	Do not know	52806010
0	Unspecified	52806010
8068	Not applicable	52806010
263	In the formal sector	52806011
73	In the informal sector	52806011
30	Private household	52806011
20	Do not know	52806011
0	Unspecified	52806011
6077	Not applicable	52806011
529	In the formal sector	52806012
109	In the informal sector	52806012
12	Private household	52806012
10	Do not know	52806012
0	Unspecified	52806012
8220	Not applicable	52806012
291	In the formal sector	52806013
77	In the informal sector	52806013
8	Private household	52806013
19	Do not know	52806013
0	Unspecified	52806013
9200	Not applicable	52806013
304	In the formal sector	52806014
59	In the informal sector	52806014
11	Private household	52806014
5	Do not know	52806014
0	Unspecified	52806014
7768	Not applicable	52806014
386	In the formal sector	52801001
179	In the informal sector	52801001
7	Private household	52801001
8	Do not know	52801001
0	Unspecified	52801001
4712	Not applicable	52801001
1496	In the formal sector	52801002
517	In the informal sector	52801002
213	Private household	52801002
157	Do not know	52801002
0	Unspecified	52801002
2972	Not applicable	52801002
768	In the formal sector	52801003
159	In the informal sector	52801003
32	Private household	52801003
46	Do not know	52801003
0	Unspecified	52801003
6624	Not applicable	52801003
923	In the formal sector	52801004
675	In the informal sector	52801004
152	Private household	52801004
78	Do not know	52801004
0	Unspecified	52801004
8949	Not applicable	52801004
1103	In the formal sector	52801005
78	In the informal sector	52801005
76	Private household	52801005
23	Do not know	52801005
0	Unspecified	52801005
6600	Not applicable	52801005
1426	In the formal sector	52801006
209	In the informal sector	52801006
208	Private household	52801006
19	Do not know	52801006
0	Unspecified	52801006
5790	Not applicable	52801006
531	In the formal sector	52801007
117	In the informal sector	52801007
107	Private household	52801007
2	Do not know	52801007
0	Unspecified	52801007
5084	Not applicable	52801007
967	In the formal sector	52801008
314	In the informal sector	52801008
69	Private household	52801008
25	Do not know	52801008
0	Unspecified	52801008
9290	Not applicable	52801008
649	In the formal sector	52801009
116	In the informal sector	52801009
29	Private household	52801009
4	Do not know	52801009
0	Unspecified	52801009
9573	Not applicable	52801009
467	In the formal sector	52801010
37	In the informal sector	52801010
11	Private household	52801010
1	Do not know	52801010
0	Unspecified	52801010
6831	Not applicable	52801010
597	In the formal sector	52801011
170	In the informal sector	52801011
31	Private household	52801011
7	Do not know	52801011
0	Unspecified	52801011
7543	Not applicable	52801011
376	In the formal sector	52801012
116	In the informal sector	52801012
26	Private household	52801012
5	Do not know	52801012
0	Unspecified	52801012
7718	Not applicable	52801012
265	In the formal sector	52801013
72	In the informal sector	52801013
18	Private household	52801013
10	Do not know	52801013
0	Unspecified	52801013
6898	Not applicable	52801013
1651	In the formal sector	52801014
184	In the informal sector	52801014
110	Private household	52801014
73	Do not know	52801014
0	Unspecified	52801014
8680	Not applicable	52801014
588	In the formal sector	52801015
76	In the informal sector	52801015
21	Private household	52801015
6	Do not know	52801015
0	Unspecified	52801015
8838	Not applicable	52801015
237	In the formal sector	52803001
59	In the informal sector	52803001
14	Private household	52803001
0	Do not know	52803001
0	Unspecified	52803001
6693	Not applicable	52803001
386	In the formal sector	52803002
109	In the informal sector	52803002
29	Private household	52803002
0	Do not know	52803002
0	Unspecified	52803002
8996	Not applicable	52803002
567	In the formal sector	52803003
65	In the informal sector	52803003
7	Private household	52803003
14	Do not know	52803003
0	Unspecified	52803003
9642	Not applicable	52803003
321	In the formal sector	52803004
156	In the informal sector	52803004
94	Private household	52803004
1	Do not know	52803004
0	Unspecified	52803004
7492	Not applicable	52803004
745	In the formal sector	52803005
332	In the informal sector	52803005
33	Private household	52803005
2	Do not know	52803005
0	Unspecified	52803005
9595	Not applicable	52803005
539	In the formal sector	52803006
73	In the informal sector	52803006
15	Private household	52803006
7	Do not know	52803006
0	Unspecified	52803006
8821	Not applicable	52803006
1563	In the formal sector	52803007
274	In the informal sector	52803007
120	Private household	52803007
184	Do not know	52803007
0	Unspecified	52803007
7680	Not applicable	52803007
599	In the formal sector	52803008
232	In the informal sector	52803008
26	Private household	52803008
47	Do not know	52803008
0	Unspecified	52803008
8570	Not applicable	52803008
208	In the formal sector	52804001
48	In the informal sector	52804001
4	Private household	52804001
4	Do not know	52804001
0	Unspecified	52804001
7188	Not applicable	52804001
191	In the formal sector	52804002
30	In the informal sector	52804002
11	Private household	52804002
12	Do not know	52804002
0	Unspecified	52804002
7691	Not applicable	52804002
179	In the formal sector	52804003
61	In the informal sector	52804003
5	Private household	52804003
2	Do not know	52804003
0	Unspecified	52804003
6987	Not applicable	52804003
340	In the formal sector	52804004
81	In the informal sector	52804004
40	Private household	52804004
24	Do not know	52804004
0	Unspecified	52804004
8426	Not applicable	52804004
266	In the formal sector	52804005
27	In the informal sector	52804005
8	Private household	52804005
7	Do not know	52804005
0	Unspecified	52804005
9476	Not applicable	52804005
224	In the formal sector	52804006
35	In the informal sector	52804006
20	Private household	52804006
0	Do not know	52804006
0	Unspecified	52804006
6651	Not applicable	52804006
1222	In the formal sector	52804007
338	In the informal sector	52804007
109	Private household	52804007
565	Do not know	52804007
0	Unspecified	52804007
5575	Not applicable	52804007
511	In the formal sector	52804008
136	In the informal sector	52804008
75	Private household	52804008
44	Do not know	52804008
0	Unspecified	52804008
8442	Not applicable	52804008
562	In the formal sector	52804009
186	In the informal sector	52804009
57	Private household	52804009
39	Do not know	52804009
0	Unspecified	52804009
7368	Not applicable	52804009
612	In the formal sector	52804010
208	In the informal sector	52804010
40	Private household	52804010
11	Do not know	52804010
0	Unspecified	52804010
8475	Not applicable	52804010
2424	In the formal sector	52804011
542	In the informal sector	52804011
302	Private household	52804011
84	Do not know	52804011
0	Unspecified	52804011
4993	Not applicable	52804011
1262	In the formal sector	52804012
177	In the informal sector	52804012
69	Private household	52804012
26	Do not know	52804012
0	Unspecified	52804012
4104	Not applicable	52804012
901	In the formal sector	52804013
184	In the informal sector	52804013
154	Private household	52804013
74	Do not know	52804013
0	Unspecified	52804013
7751	Not applicable	52804013
240	In the formal sector	52804014
39	In the informal sector	52804014
7	Private household	52804014
6	Do not know	52804014
0	Unspecified	52804014
8420	Not applicable	52804014
421	In the formal sector	52804015
94	In the informal sector	52804015
136	Private household	52804015
42	Do not know	52804015
0	Unspecified	52804015
8769	Not applicable	52804015
413	In the formal sector	52804016
157	In the informal sector	52804016
33	Private household	52804016
31	Do not know	52804016
0	Unspecified	52804016
11217	Not applicable	52804016
307	In the formal sector	52804017
44	In the informal sector	52804017
36	Private household	52804017
15	Do not know	52804017
0	Unspecified	52804017
6468	Not applicable	52804017
793	In the formal sector	52804018
143	In the informal sector	52804018
317	Private household	52804018
25	Do not know	52804018
0	Unspecified	52804018
2650	Not applicable	52804018
1655	In the formal sector	52804019
817	In the informal sector	52804019
858	Private household	52804019
116	Do not know	52804019
0	Unspecified	52804019
3803	Not applicable	52804019
987	In the formal sector	52804020
168	In the informal sector	52804020
32	Private household	52804020
34	Do not know	52804020
0	Unspecified	52804020
9466	Not applicable	52804020
220	In the formal sector	52804021
60	In the informal sector	52804021
30	Private household	52804021
2	Do not know	52804021
0	Unspecified	52804021
6626	Not applicable	52804021
374	In the formal sector	52804022
31	In the informal sector	52804022
8	Private household	52804022
4	Do not know	52804022
0	Unspecified	52804022
6734	Not applicable	52804022
853	In the formal sector	52804023
194	In the informal sector	52804023
80	Private household	52804023
15	Do not know	52804023
0	Unspecified	52804023
7880	Not applicable	52804023
367	In the formal sector	52804024
99	In the informal sector	52804024
34	Private household	52804024
25	Do not know	52804024
0	Unspecified	52804024
8913	Not applicable	52804024
387	In the formal sector	52804025
54	In the informal sector	52804025
12	Private household	52804025
15	Do not know	52804025
0	Unspecified	52804025
6422	Not applicable	52804025
1735	In the formal sector	52804026
77	In the informal sector	52804026
53	Private household	52804026
56	Do not know	52804026
0	Unspecified	52804026
7607	Not applicable	52804026
2525	In the formal sector	52805001
276	In the informal sector	52805001
252	Private household	52805001
28	Do not know	52805001
0	Unspecified	52805001
5178	Not applicable	52805001
1962	In the formal sector	52805002
76	In the informal sector	52805002
72	Private household	52805002
13	Do not know	52805002
0	Unspecified	52805002
4993	Not applicable	52805002
268	In the formal sector	52805003
73	In the informal sector	52805003
2	Private household	52805003
1	Do not know	52805003
0	Unspecified	52805003
8501	Not applicable	52805003
532	In the formal sector	52805004
210	In the informal sector	52805004
4	Private household	52805004
257	Do not know	52805004
0	Unspecified	52805004
6719	Not applicable	52805004
529	In the formal sector	52805005
192	In the informal sector	52805005
51	Private household	52805005
1	Do not know	52805005
0	Unspecified	52805005
9187	Not applicable	52805005
221	In the formal sector	52805006
89	In the informal sector	52805006
59	Private household	52805006
17	Do not know	52805006
0	Unspecified	52805006
5528	Not applicable	52805006
380	In the formal sector	54301001
228	In the informal sector	54301001
19	Private household	54301001
19	Do not know	54301001
0	Unspecified	54301001
9539	Not applicable	54301001
427	In the formal sector	54301002
75	In the informal sector	54301002
28	Private household	54301002
9	Do not know	54301002
0	Unspecified	54301002
8966	Not applicable	54301002
450	In the formal sector	54301003
208	In the informal sector	54301003
51	Private household	54301003
48	Do not know	54301003
0	Unspecified	54301003
9156	Not applicable	54301003
472	In the formal sector	54301004
195	In the informal sector	54301004
86	Private household	54301004
31	Do not know	54301004
0	Unspecified	54301004
8564	Not applicable	54301004
458	In the formal sector	54301005
217	In the informal sector	54301005
75	Private household	54301005
72	Do not know	54301005
0	Unspecified	54301005
7546	Not applicable	54301005
683	In the formal sector	54301006
509	In the informal sector	54301006
462	Private household	54301006
255	Do not know	54301006
0	Unspecified	54301006
7635	Not applicable	54301006
461	In the formal sector	54301007
171	In the informal sector	54301007
31	Private household	54301007
60	Do not know	54301007
0	Unspecified	54301007
7162	Not applicable	54301007
387	In the formal sector	54301008
113	In the informal sector	54301008
9	Private household	54301008
8	Do not know	54301008
0	Unspecified	54301008
8439	Not applicable	54301008
1021	In the formal sector	54301009
341	In the informal sector	54301009
81	Private household	54301009
151	Do not know	54301009
0	Unspecified	54301009
8676	Not applicable	54301009
611	In the formal sector	54301010
190	In the informal sector	54301010
54	Private household	54301010
12	Do not know	54301010
0	Unspecified	54301010
7891	Not applicable	54301010
981	In the formal sector	54301011
160	In the informal sector	54301011
392	Private household	54301011
135	Do not know	54301011
0	Unspecified	54301011
6150	Not applicable	54301011
445	In the formal sector	54302001
39	In the informal sector	54302001
125	Private household	54302001
9	Do not know	54302001
0	Unspecified	54302001
2606	Not applicable	54302001
1079	In the formal sector	54302002
313	In the informal sector	54302002
182	Private household	54302002
52	Do not know	54302002
0	Unspecified	54302002
2383	Not applicable	54302002
1029	In the formal sector	54302003
99	In the informal sector	54302003
99	Private household	54302003
391	Do not know	54302003
0	Unspecified	54302003
1489	Not applicable	54302003
885	In the formal sector	54302004
262	In the informal sector	54302004
132	Private household	54302004
290	Do not know	54302004
0	Unspecified	54302004
989	Not applicable	54302004
1666	In the formal sector	54303001
282	In the informal sector	54303001
221	Private household	54303001
40	Do not know	54303001
0	Unspecified	54303001
9232	Not applicable	54303001
1402	In the formal sector	54303002
957	In the informal sector	54303002
168	Private household	54303002
31	Do not know	54303002
0	Unspecified	54303002
4769	Not applicable	54303002
1859	In the formal sector	54303003
150	In the informal sector	54303003
306	Private household	54303003
41	Do not know	54303003
0	Unspecified	54303003
4419	Not applicable	54303003
2305	In the formal sector	54303004
391	In the informal sector	54303004
363	Private household	54303004
69	Do not know	54303004
0	Unspecified	54303004
8487	Not applicable	54303004
1099	In the formal sector	54303005
65	In the informal sector	54303005
45	Private household	54303005
5	Do not know	54303005
0	Unspecified	54303005
2222	Not applicable	54303005
2608	In the formal sector	54303006
414	In the informal sector	54303006
909	Private household	54303006
63	Do not know	54303006
0	Unspecified	54303006
5636	Not applicable	54303006
1009	In the formal sector	54303007
370	In the informal sector	54303007
296	Private household	54303007
41	Do not know	54303007
0	Unspecified	54303007
5220	Not applicable	54303007
1641	In the formal sector	54303008
101	In the informal sector	54303008
194	Private household	54303008
25	Do not know	54303008
0	Unspecified	54303008
6861	Not applicable	54303008
608	In the formal sector	54304001
471	In the informal sector	54304001
125	Private household	54304001
34	Do not know	54304001
0	Unspecified	54304001
6455	Not applicable	54304001
1806	In the formal sector	54304002
110	In the informal sector	54304002
149	Private household	54304002
39	Do not know	54304002
0	Unspecified	54304002
3590	Not applicable	54304002
289	In the formal sector	54304003
77	In the informal sector	54304003
13	Private household	54304003
19	Do not know	54304003
0	Unspecified	54304003
8738	Not applicable	54304003
1952	In the formal sector	54304004
555	In the informal sector	54304004
257	Private household	54304004
137	Do not know	54304004
0	Unspecified	54304004
8426	Not applicable	54304004
489	In the formal sector	54304005
58	In the informal sector	54304005
6	Private household	54304005
0	Do not know	54304005
0	Unspecified	54304005
8129	Not applicable	54304005
330	In the formal sector	54304006
114	In the informal sector	54304006
54	Private household	54304006
9	Do not know	54304006
0	Unspecified	54304006
7071	Not applicable	54304006
373	In the formal sector	54304007
88	In the informal sector	54304007
12	Private household	54304007
21	Do not know	54304007
0	Unspecified	54304007
6808	Not applicable	54304007
442	In the formal sector	54304008
177	In the informal sector	54304008
65	Private household	54304008
37	Do not know	54304008
0	Unspecified	54304008
10925	Not applicable	54304008
1133	In the formal sector	54304009
152	In the informal sector	54304009
58	Private household	54304009
106	Do not know	54304009
0	Unspecified	54304009
5305	Not applicable	54304009
468	In the formal sector	54304010
85	In the informal sector	54304010
8	Private household	54304010
14	Do not know	54304010
0	Unspecified	54304010
7554	Not applicable	54304010
704	In the formal sector	54304011
235	In the informal sector	54304011
13	Private household	54304011
8	Do not know	54304011
0	Unspecified	54304011
6782	Not applicable	54304011
584	In the formal sector	54304012
318	In the informal sector	54304012
27	Private household	54304012
5	Do not know	54304012
0	Unspecified	54304012
9071	Not applicable	54304012
376	In the formal sector	54305001
87	In the informal sector	54305001
55	Private household	54305001
34	Do not know	54305001
0	Unspecified	54305001
9049	Not applicable	54305001
481	In the formal sector	54305002
100	In the informal sector	54305002
58	Private household	54305002
24	Do not know	54305002
0	Unspecified	54305002
8685	Not applicable	54305002
258	In the formal sector	54305003
90	In the informal sector	54305003
28	Private household	54305003
9	Do not know	54305003
0	Unspecified	54305003
7060	Not applicable	54305003
489	In the formal sector	54305004
109	In the informal sector	54305004
60	Private household	54305004
7	Do not know	54305004
0	Unspecified	54305004
7793	Not applicable	54305004
403	In the formal sector	54305005
113	In the informal sector	54305005
15	Private household	54305005
24	Do not know	54305005
0	Unspecified	54305005
9023	Not applicable	54305005
357	In the formal sector	54305006
186	In the informal sector	54305006
46	Private household	54305006
32	Do not know	54305006
0	Unspecified	54305006
9880	Not applicable	54305006
296	In the formal sector	54305007
89	In the informal sector	54305007
42	Private household	54305007
37	Do not know	54305007
0	Unspecified	54305007
8645	Not applicable	54305007
1118	In the formal sector	54305008
179	In the informal sector	54305008
107	Private household	54305008
16	Do not know	54305008
0	Unspecified	54305008
7610	Not applicable	54305008
194	In the formal sector	54305009
67	In the informal sector	54305009
29	Private household	54305009
11	Do not know	54305009
0	Unspecified	54305009
7149	Not applicable	54305009
467	In the formal sector	54305010
198	In the informal sector	54305010
97	Private household	54305010
5	Do not know	54305010
0	Unspecified	54305010
9264	Not applicable	54305010
429	In the formal sector	54305011
78	In the informal sector	54305011
76	Private household	54305011
46	Do not know	54305011
0	Unspecified	54305011
6548	Not applicable	54305011
670	In the formal sector	54305012
139	In the informal sector	54305012
71	Private household	54305012
30	Do not know	54305012
0	Unspecified	54305012
8873	Not applicable	54305012
554	In the formal sector	54305013
113	In the informal sector	54305013
105	Private household	54305013
11	Do not know	54305013
0	Unspecified	54305013
10031	Not applicable	54305013
311	In the formal sector	54305014
111	In the informal sector	54305014
30	Private household	54305014
7	Do not know	54305014
0	Unspecified	54305014
9899	Not applicable	54305014
228	In the formal sector	54305015
60	In the informal sector	54305015
20	Private household	54305015
8	Do not know	54305015
0	Unspecified	54305015
7181	Not applicable	54305015
1926	In the formal sector	54305016
341	In the informal sector	54305016
136	Private household	54305016
64	Do not know	54305016
0	Unspecified	54305016
6275	Not applicable	54305016
1010	In the formal sector	54305017
264	In the informal sector	54305017
107	Private household	54305017
14	Do not know	54305017
0	Unspecified	54305017
7792	Not applicable	54305017
291	In the formal sector	54305018
93	In the informal sector	54305018
51	Private household	54305018
19	Do not know	54305018
0	Unspecified	54305018
8422	Not applicable	54305018
419	In the formal sector	54305019
54	In the informal sector	54305019
25	Private household	54305019
13	Do not know	54305019
0	Unspecified	54305019
7207	Not applicable	54305019
479	In the formal sector	54305020
133	In the informal sector	54305020
65	Private household	54305020
10	Do not know	54305020
0	Unspecified	54305020
8915	Not applicable	54305020
981	In the formal sector	52401001
128	In the informal sector	52401001
130	Private household	52401001
13	Do not know	52401001
0	Unspecified	52401001
5698	Not applicable	52401001
3253	In the formal sector	52401002
333	In the informal sector	52401002
394	Private household	52401002
73	Do not know	52401002
0	Unspecified	52401002
9077	Not applicable	52401002
1909	In the formal sector	52401003
443	In the informal sector	52401003
308	Private household	52401003
24	Do not know	52401003
0	Unspecified	52401003
12410	Not applicable	52401003
1951	In the formal sector	52401004
107	In the informal sector	52401004
269	Private household	52401004
10	Do not know	52401004
0	Unspecified	52401004
6054	Not applicable	52401004
1312	In the formal sector	52401005
143	In the informal sector	52401005
241	Private household	52401005
43	Do not know	52401005
0	Unspecified	52401005
8086	Not applicable	52401005
2583	In the formal sector	52401006
446	In the informal sector	52401006
378	Private household	52401006
80	Do not know	52401006
0	Unspecified	52401006
7987	Not applicable	52401006
1110	In the formal sector	52402001
114	In the informal sector	52402001
841	Private household	52402001
7	Do not know	52402001
0	Unspecified	52402001
11171	Not applicable	52402001
303	In the formal sector	52402002
36	In the informal sector	52402002
14	Private household	52402002
12	Do not know	52402002
0	Unspecified	52402002
9074	Not applicable	52402002
286	In the formal sector	52402003
53	In the informal sector	52402003
21	Private household	52402003
5	Do not know	52402003
0	Unspecified	52402003
10799	Not applicable	52402003
207	In the formal sector	52402004
28	In the informal sector	52402004
19	Private household	52402004
2	Do not know	52402004
0	Unspecified	52402004
8464	Not applicable	52402004
242	In the formal sector	52402005
77	In the informal sector	52402005
49	Private household	52402005
21	Do not know	52402005
0	Unspecified	52402005
9103	Not applicable	52402005
330	In the formal sector	52402006
62	In the informal sector	52402006
27	Private household	52402006
10	Do not know	52402006
0	Unspecified	52402006
6946	Not applicable	52402006
255	In the formal sector	52402007
141	In the informal sector	52402007
14	Private household	52402007
4	Do not know	52402007
0	Unspecified	52402007
8406	Not applicable	52402007
207	In the formal sector	52402008
56	In the informal sector	52402008
28	Private household	52402008
2	Do not know	52402008
0	Unspecified	52402008
8469	Not applicable	52402008
251	In the formal sector	52402009
49	In the informal sector	52402009
7	Private household	52402009
6	Do not know	52402009
0	Unspecified	52402009
9210	Not applicable	52402009
265	In the formal sector	52402010
126	In the informal sector	52402010
7	Private household	52402010
6	Do not know	52402010
0	Unspecified	52402010
10396	Not applicable	52402010
387	In the formal sector	52402011
107	In the informal sector	52402011
28	Private household	52402011
6	Do not know	52402011
0	Unspecified	52402011
11514	Not applicable	52402011
262	In the formal sector	52402012
92	In the informal sector	52402012
9	Private household	52402012
6	Do not know	52402012
0	Unspecified	52402012
7944	Not applicable	52402012
295	In the formal sector	52402013
196	In the informal sector	52402013
14	Private household	52402013
1	Do not know	52402013
0	Unspecified	52402013
9187	Not applicable	52402013
1567	In the formal sector	52402014
257	In the informal sector	52402014
21	Private household	52402014
4	Do not know	52402014
0	Unspecified	52402014
8331	Not applicable	52402014
311	In the formal sector	52402015
195	In the informal sector	52402015
73	Private household	52402015
27	Do not know	52402015
0	Unspecified	52402015
10459	Not applicable	52402015
264	In the formal sector	52402016
37	In the informal sector	52402016
12	Private household	52402016
1	Do not know	52402016
0	Unspecified	52402016
7747	Not applicable	52402016
393	In the formal sector	52402017
264	In the informal sector	52402017
93	Private household	52402017
1	Do not know	52402017
0	Unspecified	52402017
7863	Not applicable	52402017
169	In the formal sector	52404001
32	In the informal sector	52404001
6	Private household	52404001
5	Do not know	52404001
0	Unspecified	52404001
9732	Not applicable	52404001
227	In the formal sector	52404002
39	In the informal sector	52404002
15	Private household	52404002
12	Do not know	52404002
0	Unspecified	52404002
9009	Not applicable	52404002
192	In the formal sector	52404003
69	In the informal sector	52404003
5	Private household	52404003
1	Do not know	52404003
0	Unspecified	52404003
9872	Not applicable	52404003
749	In the formal sector	52404004
132	In the informal sector	52404004
31	Private household	52404004
1	Do not know	52404004
0	Unspecified	52404004
9214	Not applicable	52404004
986	In the formal sector	52404005
113	In the informal sector	52404005
80	Private household	52404005
11	Do not know	52404005
0	Unspecified	52404005
12325	Not applicable	52404005
480	In the formal sector	52404006
46	In the informal sector	52404006
12	Private household	52404006
2	Do not know	52404006
0	Unspecified	52404006
9615	Not applicable	52404006
160	In the formal sector	52404007
25	In the informal sector	52404007
2	Private household	52404007
5	Do not know	52404007
0	Unspecified	52404007
7500	Not applicable	52404007
196	In the formal sector	52404008
30	In the informal sector	52404008
13	Private household	52404008
12	Do not know	52404008
0	Unspecified	52404008
6965	Not applicable	52404008
203	In the formal sector	52404009
16	In the informal sector	52404009
12	Private household	52404009
4	Do not know	52404009
0	Unspecified	52404009
9058	Not applicable	52404009
418	In the formal sector	52404010
126	In the informal sector	52404010
31	Private household	52404010
3	Do not know	52404010
0	Unspecified	52404010
8259	Not applicable	52404010
459	In the formal sector	52404011
155	In the informal sector	52404011
85	Private household	52404011
1	Do not know	52404011
0	Unspecified	52404011
8418	Not applicable	52404011
227	In the formal sector	52404012
60	In the informal sector	52404012
7	Private household	52404012
6	Do not know	52404012
0	Unspecified	52404012
8133	Not applicable	52404012
202	In the formal sector	52404013
58	In the informal sector	52404013
10	Private household	52404013
9	Do not know	52404013
0	Unspecified	52404013
7603	Not applicable	52404013
615	In the formal sector	52404014
101	In the informal sector	52404014
11	Private household	52404014
8	Do not know	52404014
0	Unspecified	52404014
9832	Not applicable	52404014
416	In the formal sector	52404015
64	In the informal sector	52404015
11	Private household	52404015
19	Do not know	52404015
0	Unspecified	52404015
7587	Not applicable	52404015
135	In the formal sector	52404016
16	In the informal sector	52404016
9	Private household	52404016
9	Do not know	52404016
0	Unspecified	52404016
8798	Not applicable	52404016
412	In the formal sector	52404017
127	In the informal sector	52404017
47	Private household	52404017
11	Do not know	52404017
0	Unspecified	52404017
10020	Not applicable	52404017
92	In the formal sector	52404018
24	In the informal sector	52404018
6	Private household	52404018
0	Do not know	52404018
0	Unspecified	52404018
7644	Not applicable	52404018
573	In the formal sector	52404019
165	In the informal sector	52404019
78	Private household	52404019
12	Do not know	52404019
0	Unspecified	52404019
9084	Not applicable	52404019
444	In the formal sector	52405001
113	In the informal sector	52405001
25	Private household	52405001
6	Do not know	52405001
0	Unspecified	52405001
10022	Not applicable	52405001
591	In the formal sector	52405002
126	In the informal sector	52405002
38	Private household	52405002
19	Do not know	52405002
0	Unspecified	52405002
9113	Not applicable	52405002
317	In the formal sector	52405003
62	In the informal sector	52405003
27	Private household	52405003
2	Do not know	52405003
0	Unspecified	52405003
9189	Not applicable	52405003
401	In the formal sector	52405004
259	In the informal sector	52405004
11	Private household	52405004
43	Do not know	52405004
0	Unspecified	52405004
7368	Not applicable	52405004
938	In the formal sector	52405005
960	In the informal sector	52405005
34	Private household	52405005
147	Do not know	52405005
0	Unspecified	52405005
7566	Not applicable	52405005
259	In the formal sector	52405006
30	In the informal sector	52405006
6	Private household	52405006
0	Do not know	52405006
0	Unspecified	52405006
8502	Not applicable	52405006
1887	In the formal sector	52405007
615	In the informal sector	52405007
300	Private household	52405007
94	Do not know	52405007
0	Unspecified	52405007
8417	Not applicable	52405007
1083	In the formal sector	52405008
365	In the informal sector	52405008
32	Private household	52405008
36	Do not know	52405008
0	Unspecified	52405008
10394	Not applicable	52405008
1274	In the formal sector	52405009
255	In the informal sector	52405009
128	Private household	52405009
84	Do not know	52405009
0	Unspecified	52405009
3134	Not applicable	52405009
1961	In the formal sector	52405010
1078	In the informal sector	52405010
446	Private household	52405010
61	Do not know	52405010
0	Unspecified	52405010
5127	Not applicable	52405010
1311	In the formal sector	52405011
777	In the informal sector	52405011
404	Private household	52405011
53	Do not know	52405011
0	Unspecified	52405011
7163	Not applicable	52405011
1953	In the formal sector	52502001
711	In the informal sector	52502001
392	Private household	52502001
268	Do not know	52502001
0	Unspecified	52502001
12519	Not applicable	52502001
4107	In the formal sector	52502002
244	In the informal sector	52502002
482	Private household	52502002
113	Do not know	52502002
0	Unspecified	52502002
5408	Not applicable	52502002
2419	In the formal sector	52502003
326	In the informal sector	52502003
192	Private household	52502003
89	Do not know	52502003
0	Unspecified	52502003
5155	Not applicable	52502003
3018	In the formal sector	52502004
384	In the informal sector	52502004
315	Private household	52502004
84	Do not know	52502004
0	Unspecified	52502004
5392	Not applicable	52502004
2597	In the formal sector	52502005
302	In the informal sector	52502005
170	Private household	52502005
53	Do not know	52502005
0	Unspecified	52502005
6836	Not applicable	52502005
1483	In the formal sector	52502006
319	In the informal sector	52502006
256	Private household	52502006
59	Do not know	52502006
0	Unspecified	52502006
19925	Not applicable	52502006
1223	In the formal sector	52502007
233	In the informal sector	52502007
184	Private household	52502007
55	Do not know	52502007
0	Unspecified	52502007
14992	Not applicable	52502007
880	In the formal sector	52502008
67	In the informal sector	52502008
99	Private household	52502008
19	Do not know	52502008
0	Unspecified	52502008
8059	Not applicable	52502008
1627	In the formal sector	52502009
538	In the informal sector	52502009
170	Private household	52502009
128	Do not know	52502009
0	Unspecified	52502009
12051	Not applicable	52502009
1179	In the formal sector	52502010
144	In the informal sector	52502010
112	Private household	52502010
37	Do not know	52502010
0	Unspecified	52502010
9168	Not applicable	52502010
1153	In the formal sector	52502011
159	In the informal sector	52502011
176	Private household	52502011
49	Do not know	52502011
0	Unspecified	52502011
8908	Not applicable	52502011
574	In the formal sector	52502012
148	In the informal sector	52502012
73	Private household	52502012
40	Do not know	52502012
0	Unspecified	52502012
8585	Not applicable	52502012
747	In the formal sector	52502013
62	In the informal sector	52502013
123	Private household	52502013
83	Do not know	52502013
0	Unspecified	52502013
7527	Not applicable	52502013
1504	In the formal sector	52502014
526	In the informal sector	52502014
259	Private household	52502014
138	Do not know	52502014
0	Unspecified	52502014
11953	Not applicable	52502014
617	In the formal sector	52502015
196	In the informal sector	52502015
165	Private household	52502015
24	Do not know	52502015
0	Unspecified	52502015
10234	Not applicable	52502015
1229	In the formal sector	52502016
326	In the informal sector	52502016
194	Private household	52502016
91	Do not know	52502016
0	Unspecified	52502016
12956	Not applicable	52502016
997	In the formal sector	52502017
105	In the informal sector	52502017
115	Private household	52502017
135	Do not know	52502017
0	Unspecified	52502017
9828	Not applicable	52502017
1083	In the formal sector	52502018
209	In the informal sector	52502018
59	Private household	52502018
28	Do not know	52502018
0	Unspecified	52502018
11456	Not applicable	52502018
1259	In the formal sector	52502019
353	In the informal sector	52502019
63	Private household	52502019
82	Do not know	52502019
0	Unspecified	52502019
8260	Not applicable	52502019
1579	In the formal sector	52502020
507	In the informal sector	52502020
170	Private household	52502020
58	Do not know	52502020
0	Unspecified	52502020
12369	Not applicable	52502020
1915	In the formal sector	52502021
296	In the informal sector	52502021
348	Private household	52502021
84	Do not know	52502021
0	Unspecified	52502021
11222	Not applicable	52502021
1196	In the formal sector	52502022
146	In the informal sector	52502022
96	Private household	52502022
13	Do not know	52502022
0	Unspecified	52502022
7326	Not applicable	52502022
1056	In the formal sector	52502023
145	In the informal sector	52502023
182	Private household	52502023
43	Do not know	52502023
0	Unspecified	52502023
8370	Not applicable	52502023
1691	In the formal sector	52502024
258	In the informal sector	52502024
230	Private household	52502024
92	Do not know	52502024
0	Unspecified	52502024
10447	Not applicable	52502024
3297	In the formal sector	52502025
471	In the informal sector	52502025
328	Private household	52502025
94	Do not know	52502025
0	Unspecified	52502025
9280	Not applicable	52502025
1194	In the formal sector	52502026
261	In the informal sector	52502026
23	Private household	52502026
5	Do not know	52502026
0	Unspecified	52502026
5698	Not applicable	52502026
1640	In the formal sector	52502027
234	In the informal sector	52502027
73	Private household	52502027
142	Do not know	52502027
0	Unspecified	52502027
8943	Not applicable	52502027
696	In the formal sector	52502028
159	In the informal sector	52502028
53	Private household	52502028
24	Do not know	52502028
0	Unspecified	52502028
6466	Not applicable	52502028
1746	In the formal sector	52502029
180	In the informal sector	52502029
134	Private household	52502029
52	Do not know	52502029
0	Unspecified	52502029
8952	Not applicable	52502029
1097	In the formal sector	52502030
142	In the informal sector	52502030
62	Private household	52502030
91	Do not know	52502030
0	Unspecified	52502030
11098	Not applicable	52502030
1054	In the formal sector	52502031
256	In the informal sector	52502031
135	Private household	52502031
54	Do not know	52502031
0	Unspecified	52502031
9880	Not applicable	52502031
977	In the formal sector	52503001
683	In the informal sector	52503001
94	Private household	52503001
8	Do not know	52503001
0	Unspecified	52503001
9147	Not applicable	52503001
1020	In the formal sector	52503002
126	In the informal sector	52503002
82	Private household	52503002
17	Do not know	52503002
0	Unspecified	52503002
4045	Not applicable	52503002
698	In the formal sector	52503003
617	In the informal sector	52503003
132	Private household	52503003
18	Do not know	52503003
0	Unspecified	52503003
7979	Not applicable	52503003
889	In the formal sector	52503004
433	In the informal sector	52503004
140	Private household	52503004
14	Do not know	52503004
0	Unspecified	52503004
7325	Not applicable	52503004
1127	In the formal sector	52504001
422	In the informal sector	52504001
286	Private household	52504001
24	Do not know	52504001
0	Unspecified	52504001
7890	Not applicable	52504001
1089	In the formal sector	52504002
461	In the informal sector	52504002
385	Private household	52504002
89	Do not know	52504002
0	Unspecified	52504002
6071	Not applicable	52504002
522	In the formal sector	52504003
269	In the informal sector	52504003
89	Private household	52504003
30	Do not know	52504003
0	Unspecified	52504003
8192	Not applicable	52504003
534	In the formal sector	52504004
103	In the informal sector	52504004
76	Private household	52504004
53	Do not know	52504004
0	Unspecified	52504004
8446	Not applicable	52504004
444	In the formal sector	52504005
175	In the informal sector	52504005
79	Private household	52504005
44	Do not know	52504005
0	Unspecified	52504005
6681	Not applicable	52504005
389	In the formal sector	52504006
74	In the informal sector	52504006
61	Private household	52504006
39	Do not know	52504006
0	Unspecified	52504006
8975	Not applicable	52504006
388	In the formal sector	52504007
99	In the informal sector	52504007
53	Private household	52504007
16	Do not know	52504007
0	Unspecified	52504007
7538	Not applicable	52504007
681	In the formal sector	52504008
128	In the informal sector	52504008
41	Private household	52504008
52	Do not know	52504008
0	Unspecified	52504008
8544	Not applicable	52504008
572	In the formal sector	52504009
158	In the informal sector	52504009
39	Private household	52504009
17	Do not know	52504009
0	Unspecified	52504009
9002	Not applicable	52504009
871	In the formal sector	52504010
229	In the informal sector	52504010
107	Private household	52504010
26	Do not know	52504010
0	Unspecified	52504010
10251	Not applicable	52504010
447	In the formal sector	52504011
196	In the informal sector	52504011
45	Private household	52504011
25	Do not know	52504011
0	Unspecified	52504011
9519	Not applicable	52504011
675	In the formal sector	52603001
126	In the informal sector	52603001
47	Private household	52603001
27	Do not know	52603001
0	Unspecified	52603001
9130	Not applicable	52603001
465	In the formal sector	52603002
173	In the informal sector	52603002
59	Private household	52603002
2	Do not know	52603002
0	Unspecified	52603002
7823	Not applicable	52603002
424	In the formal sector	52603003
99	In the informal sector	52603003
54	Private household	52603003
12	Do not know	52603003
0	Unspecified	52603003
10587	Not applicable	52603003
465	In the formal sector	52603004
18	In the informal sector	52603004
15	Private household	52603004
11	Do not know	52603004
0	Unspecified	52603004
6468	Not applicable	52603004
540	In the formal sector	52603005
146	In the informal sector	52603005
12	Private household	52603005
4	Do not know	52603005
0	Unspecified	52603005
10058	Not applicable	52603005
912	In the formal sector	52603006
206	In the informal sector	52603006
56	Private household	52603006
33	Do not know	52603006
0	Unspecified	52603006
9129	Not applicable	52603006
701	In the formal sector	52603007
302	In the informal sector	52603007
294	Private household	52603007
64	Do not know	52603007
0	Unspecified	52603007
9586	Not applicable	52603007
1253	In the formal sector	52603008
200	In the informal sector	52603008
336	Private household	52603008
44	Do not know	52603008
0	Unspecified	52603008
2997	Not applicable	52603008
2192	In the formal sector	52603009
240	In the informal sector	52603009
224	Private household	52603009
117	Do not know	52603009
0	Unspecified	52603009
3580	Not applicable	52603009
547	In the formal sector	52603010
116	In the informal sector	52603010
84	Private household	52603010
3	Do not know	52603010
0	Unspecified	52603010
1957	Not applicable	52603010
2195	In the formal sector	52603011
468	In the informal sector	52603011
333	Private household	52603011
75	Do not know	52603011
0	Unspecified	52603011
8289	Not applicable	52603011
1178	In the formal sector	52603012
347	In the informal sector	52603012
49	Private household	52603012
17	Do not know	52603012
0	Unspecified	52603012
11118	Not applicable	52603012
2544	In the formal sector	52603013
390	In the informal sector	52603013
256	Private household	52603013
48	Do not know	52603013
0	Unspecified	52603013
11017	Not applicable	52603013
282	In the formal sector	52603014
74	In the informal sector	52603014
5	Private household	52603014
6	Do not know	52603014
0	Unspecified	52603014
8237	Not applicable	52603014
244	In the formal sector	52603015
93	In the informal sector	52603015
6	Private household	52603015
4	Do not know	52603015
0	Unspecified	52603015
7761	Not applicable	52603015
551	In the formal sector	52603016
145	In the informal sector	52603016
58	Private household	52603016
17	Do not know	52603016
0	Unspecified	52603016
8646	Not applicable	52603016
507	In the formal sector	52603017
184	In the informal sector	52603017
125	Private household	52603017
17	Do not know	52603017
0	Unspecified	52603017
11051	Not applicable	52603017
581	In the formal sector	52603018
72	In the informal sector	52603018
28	Private household	52603018
15	Do not know	52603018
0	Unspecified	52603018
7391	Not applicable	52603018
371	In the formal sector	52603019
27	In the informal sector	52603019
10	Private household	52603019
7	Do not know	52603019
0	Unspecified	52603019
7025	Not applicable	52603019
975	In the formal sector	52603020
128	In the informal sector	52603020
36	Private household	52603020
12	Do not know	52603020
0	Unspecified	52603020
9970	Not applicable	52603020
490	In the formal sector	52603021
132	In the informal sector	52603021
34	Private household	52603021
14	Do not know	52603021
0	Unspecified	52603021
11937	Not applicable	52603021
2576	In the formal sector	52603022
1008	In the informal sector	52603022
184	Private household	52603022
90	Do not know	52603022
0	Unspecified	52603022
8997	Not applicable	52603022
1425	In the formal sector	52601001
966	In the informal sector	52601001
103	Private household	52601001
81	Do not know	52601001
0	Unspecified	52601001
10136	Not applicable	52601001
669	In the formal sector	52601002
408	In the informal sector	52601002
107	Private household	52601002
5	Do not know	52601002
0	Unspecified	52601002
12953	Not applicable	52601002
1444	In the formal sector	52601003
460	In the informal sector	52601003
188	Private household	52601003
172	Do not know	52601003
0	Unspecified	52601003
8689	Not applicable	52601003
600	In the formal sector	52601004
109	In the informal sector	52601004
62	Private household	52601004
5	Do not know	52601004
0	Unspecified	52601004
9337	Not applicable	52601004
340	In the formal sector	52601005
93	In the informal sector	52601005
11	Private household	52601005
11	Do not know	52601005
0	Unspecified	52601005
8072	Not applicable	52601005
343	In the formal sector	52601006
39	In the informal sector	52601006
2	Private household	52601006
5	Do not know	52601006
0	Unspecified	52601006
7746	Not applicable	52601006
552	In the formal sector	52601007
456	In the informal sector	52601007
252	Private household	52601007
7	Do not know	52601007
0	Unspecified	52601007
7339	Not applicable	52601007
481	In the formal sector	52601008
175	In the informal sector	52601008
193	Private household	52601008
70	Do not know	52601008
0	Unspecified	52601008
7946	Not applicable	52601008
714	In the formal sector	52602001
556	In the informal sector	52602001
164	Private household	52602001
8	Do not know	52602001
0	Unspecified	52602001
10062	Not applicable	52602001
993	In the formal sector	52602002
366	In the informal sector	52602002
147	Private household	52602002
98	Do not know	52602002
0	Unspecified	52602002
7058	Not applicable	52602002
389	In the formal sector	52602003
109	In the informal sector	52602003
25	Private household	52602003
22	Do not know	52602003
0	Unspecified	52602003
7519	Not applicable	52602003
544	In the formal sector	52602004
177	In the informal sector	52602004
21	Private household	52602004
4	Do not know	52602004
0	Unspecified	52602004
9991	Not applicable	52602004
467	In the formal sector	52602005
75	In the informal sector	52602005
49	Private household	52602005
5	Do not know	52602005
0	Unspecified	52602005
7725	Not applicable	52602005
389	In the formal sector	52602006
126	In the informal sector	52602006
117	Private household	52602006
12	Do not know	52602006
0	Unspecified	52602006
7072	Not applicable	52602006
389	In the formal sector	52602007
61	In the informal sector	52602007
25	Private household	52602007
22	Do not know	52602007
0	Unspecified	52602007
6804	Not applicable	52602007
306	In the formal sector	52602008
40	In the informal sector	52602008
13	Private household	52602008
8	Do not know	52602008
0	Unspecified	52602008
7495	Not applicable	52602008
1013	In the formal sector	52602009
211	In the informal sector	52602009
117	Private household	52602009
15	Do not know	52602009
0	Unspecified	52602009
10627	Not applicable	52602009
1260	In the formal sector	52602010
304	In the informal sector	52602010
134	Private household	52602010
140	Do not know	52602010
0	Unspecified	52602010
9043	Not applicable	52602010
2239	In the formal sector	52602011
1935	In the informal sector	52602011
360	Private household	52602011
495	Do not know	52602011
0	Unspecified	52602011
5861	Not applicable	52602011
528	In the formal sector	52602012
71	In the informal sector	52602012
21	Private household	52602012
5	Do not know	52602012
0	Unspecified	52602012
8749	Not applicable	52602012
282	In the formal sector	52602013
71	In the informal sector	52602013
34	Private household	52602013
55	Do not know	52602013
0	Unspecified	52602013
4716	Not applicable	52602013
1769	In the formal sector	52602014
341	In the informal sector	52602014
461	Private household	52602014
311	Do not know	52602014
0	Unspecified	52602014
5903	Not applicable	52602014
430	In the formal sector	52605001
103	In the informal sector	52605001
20	Private household	52605001
10	Do not know	52605001
0	Unspecified	52605001
10035	Not applicable	52605001
343	In the formal sector	52605002
56	In the informal sector	52605002
7	Private household	52605002
2	Do not know	52605002
0	Unspecified	52605002
10110	Not applicable	52605002
307	In the formal sector	52605003
96	In the informal sector	52605003
33	Private household	52605003
19	Do not know	52605003
0	Unspecified	52605003
10432	Not applicable	52605003
692	In the formal sector	52605004
153	In the informal sector	52605004
91	Private household	52605004
18	Do not know	52605004
0	Unspecified	52605004
11302	Not applicable	52605004
406	In the formal sector	52605005
209	In the informal sector	52605005
11	Private household	52605005
13	Do not know	52605005
0	Unspecified	52605005
8810	Not applicable	52605005
283	In the formal sector	52605006
61	In the informal sector	52605006
36	Private household	52605006
7	Do not know	52605006
0	Unspecified	52605006
7182	Not applicable	52605006
362	In the formal sector	52605007
64	In the informal sector	52605007
13	Private household	52605007
3	Do not know	52605007
0	Unspecified	52605007
9501	Not applicable	52605007
441	In the formal sector	52605008
116	In the informal sector	52605008
22	Private household	52605008
5	Do not know	52605008
0	Unspecified	52605008
7690	Not applicable	52605008
1518	In the formal sector	52605009
324	In the informal sector	52605009
123	Private household	52605009
21	Do not know	52605009
0	Unspecified	52605009
11135	Not applicable	52605009
241	In the formal sector	52605010
14	In the informal sector	52605010
12	Private household	52605010
8	Do not know	52605010
0	Unspecified	52605010
8652	Not applicable	52605010
321	In the formal sector	52605011
59	In the informal sector	52605011
41	Private household	52605011
11	Do not know	52605011
0	Unspecified	52605011
9589	Not applicable	52605011
442	In the formal sector	52605012
98	In the informal sector	52605012
35	Private household	52605012
9	Do not know	52605012
0	Unspecified	52605012
9579	Not applicable	52605012
285	In the formal sector	52605013
33	In the informal sector	52605013
21	Private household	52605013
2	Do not know	52605013
0	Unspecified	52605013
6205	Not applicable	52605013
328	In the formal sector	52605014
100	In the informal sector	52605014
10	Private household	52605014
4	Do not know	52605014
0	Unspecified	52605014
10825	Not applicable	52605014
294	In the formal sector	52605015
21	In the informal sector	52605015
1	Private household	52605015
2	Do not know	52605015
0	Unspecified	52605015
7203	Not applicable	52605015
1939	In the formal sector	52605016
251	In the informal sector	52605016
75	Private household	52605016
13	Do not know	52605016
0	Unspecified	52605016
13060	Not applicable	52605016
275	In the formal sector	52605017
100	In the informal sector	52605017
23	Private household	52605017
1	Do not know	52605017
0	Unspecified	52605017
8054	Not applicable	52605017
521	In the formal sector	52605018
68	In the informal sector	52605018
26	Private household	52605018
8	Do not know	52605018
0	Unspecified	52605018
9852	Not applicable	52605018
146	In the formal sector	52605019
37	In the informal sector	52605019
16	Private household	52605019
3	Do not know	52605019
0	Unspecified	52605019
200	Not applicable	52605019
463	In the formal sector	52605020
111	In the informal sector	52605020
5	Private household	52605020
2	Do not know	52605020
0	Unspecified	52605020
5226	Not applicable	52605020
245	In the formal sector	52605021
30	In the informal sector	52605021
5	Private household	52605021
7	Do not know	52605021
0	Unspecified	52605021
7084	Not applicable	52605021
173	In the formal sector	52606001
10	In the informal sector	52606001
8	Private household	52606001
4	Do not know	52606001
0	Unspecified	52606001
6227	Not applicable	52606001
381	In the formal sector	52606002
15	In the informal sector	52606002
11	Private household	52606002
26	Do not know	52606002
0	Unspecified	52606002
9228	Not applicable	52606002
301	In the formal sector	52606003
29	In the informal sector	52606003
9	Private household	52606003
4	Do not know	52606003
0	Unspecified	52606003
6340	Not applicable	52606003
303	In the formal sector	52606004
34	In the informal sector	52606004
8	Private household	52606004
0	Do not know	52606004
0	Unspecified	52606004
7089	Not applicable	52606004
257	In the formal sector	52606005
30	In the informal sector	52606005
5	Private household	52606005
2	Do not know	52606005
0	Unspecified	52606005
8790	Not applicable	52606005
145	In the formal sector	52606006
26	In the informal sector	52606006
6	Private household	52606006
4	Do not know	52606006
0	Unspecified	52606006
6400	Not applicable	52606006
220	In the formal sector	52606007
51	In the informal sector	52606007
7	Private household	52606007
2	Do not know	52606007
0	Unspecified	52606007
6468	Not applicable	52606007
719	In the formal sector	52606008
87	In the informal sector	52606008
64	Private household	52606008
0	Do not know	52606008
0	Unspecified	52606008
8600	Not applicable	52606008
600	In the formal sector	52606009
98	In the informal sector	52606009
50	Private household	52606009
1	Do not know	52606009
0	Unspecified	52606009
7424	Not applicable	52606009
153	In the formal sector	52606010
33	In the informal sector	52606010
10	Private household	52606010
1	Do not know	52606010
0	Unspecified	52606010
6032	Not applicable	52606010
793	In the formal sector	52606011
174	In the informal sector	52606011
40	Private household	52606011
2	Do not know	52606011
0	Unspecified	52606011
7775	Not applicable	52606011
1815	In the formal sector	52606012
161	In the informal sector	52606012
80	Private household	52606012
11	Do not know	52606012
0	Unspecified	52606012
4197	Not applicable	52606012
458	In the formal sector	52606013
89	In the informal sector	52606013
65	Private household	52606013
3	Do not know	52606013
0	Unspecified	52606013
8686	Not applicable	52606013
228	In the formal sector	52606014
17	In the informal sector	52606014
5	Private household	52606014
5	Do not know	52606014
0	Unspecified	52606014
8994	Not applicable	52606014
180	In the formal sector	52606015
29	In the informal sector	52606015
5	Private household	52606015
5	Do not know	52606015
0	Unspecified	52606015
8757	Not applicable	52606015
409	In the formal sector	52606016
277	In the informal sector	52606016
189	Private household	52606016
6	Do not know	52606016
0	Unspecified	52606016
8191	Not applicable	52606016
421	In the formal sector	52606017
118	In the informal sector	52606017
90	Private household	52606017
4	Do not know	52606017
0	Unspecified	52606017
8061	Not applicable	52606017
1184	In the formal sector	52606018
216	In the informal sector	52606018
139	Private household	52606018
15	Do not know	52606018
0	Unspecified	52606018
7515	Not applicable	52606018
741	In the formal sector	52606019
185	In the informal sector	52606019
23	Private household	52606019
13	Do not know	52606019
0	Unspecified	52606019
3570	Not applicable	52606019
285	In the formal sector	52606020
49	In the informal sector	52606020
25	Private household	52606020
2	Do not know	52606020
0	Unspecified	52606020
7755	Not applicable	52606020
624	In the formal sector	52606021
123	In the informal sector	52606021
14	Private household	52606021
3	Do not know	52606021
0	Unspecified	52606021
7690	Not applicable	52606021
1427	In the formal sector	52606022
177	In the informal sector	52606022
91	Private household	52606022
33	Do not know	52606022
0	Unspecified	52606022
6182	Not applicable	52606022
187	In the formal sector	52606023
49	In the informal sector	52606023
47	Private household	52606023
5	Do not know	52606023
0	Unspecified	52606023
6353	Not applicable	52606023
158	In the formal sector	52606024
62	In the informal sector	52606024
11	Private household	52606024
7	Do not know	52606024
0	Unspecified	52606024
6535	Not applicable	52606024
515	In the formal sector	52904001
123	In the informal sector	52904001
20	Private household	52904001
14	Do not know	52904001
0	Unspecified	52904001
7826	Not applicable	52904001
582	In the formal sector	52904002
20	In the informal sector	52904002
1	Private household	52904002
0	Do not know	52904002
0	Unspecified	52904002
9203	Not applicable	52904002
485	In the formal sector	52904003
11	In the informal sector	52904003
0	Private household	52904003
5	Do not know	52904003
0	Unspecified	52904003
7875	Not applicable	52904003
454	In the formal sector	52904004
82	In the informal sector	52904004
11	Private household	52904004
7	Do not know	52904004
0	Unspecified	52904004
9620	Not applicable	52904004
359	In the formal sector	52904005
206	In the informal sector	52904005
33	Private household	52904005
27	Do not know	52904005
0	Unspecified	52904005
9962	Not applicable	52904005
320	In the formal sector	52904006
63	In the informal sector	52904006
8	Private household	52904006
1	Do not know	52904006
0	Unspecified	52904006
7134	Not applicable	52904006
304	In the formal sector	52904007
84	In the informal sector	52904007
30	Private household	52904007
5	Do not know	52904007
0	Unspecified	52904007
7553	Not applicable	52904007
307	In the formal sector	52904008
39	In the informal sector	52904008
10	Private household	52904008
6	Do not know	52904008
0	Unspecified	52904008
8871	Not applicable	52904008
370	In the formal sector	52904009
91	In the informal sector	52904009
35	Private household	52904009
2	Do not know	52904009
0	Unspecified	52904009
7435	Not applicable	52904009
552	In the formal sector	52904010
120	In the informal sector	52904010
49	Private household	52904010
5	Do not know	52904010
0	Unspecified	52904010
9090	Not applicable	52904010
237	In the formal sector	52904011
85	In the informal sector	52904011
11	Private household	52904011
0	Do not know	52904011
0	Unspecified	52904011
6471	Not applicable	52904011
503	In the formal sector	52901001
137	In the informal sector	52901001
108	Private household	52901001
2	Do not know	52901001
0	Unspecified	52901001
7424	Not applicable	52901001
1000	In the formal sector	52901002
116	In the informal sector	52901002
54	Private household	52901002
1	Do not know	52901002
0	Unspecified	52901002
7333	Not applicable	52901002
2267	In the formal sector	52901003
273	In the informal sector	52901003
100	Private household	52901003
6	Do not know	52901003
0	Unspecified	52901003
5517	Not applicable	52901003
2061	In the formal sector	52901004
451	In the informal sector	52901004
81	Private household	52901004
42	Do not know	52901004
0	Unspecified	52901004
7217	Not applicable	52901004
543	In the formal sector	52901005
121	In the informal sector	52901005
56	Private household	52901005
5	Do not know	52901005
0	Unspecified	52901005
6330	Not applicable	52901005
488	In the formal sector	52901006
88	In the informal sector	52901006
19	Private household	52901006
0	Do not know	52901006
0	Unspecified	52901006
6263	Not applicable	52901006
2312	In the formal sector	52901007
150	In the informal sector	52901007
175	Private household	52901007
79	Do not know	52901007
0	Unspecified	52901007
6799	Not applicable	52901007
1334	In the formal sector	52901008
104	In the informal sector	52901008
44	Private household	52901008
9	Do not know	52901008
0	Unspecified	52901008
7866	Not applicable	52901008
721	In the formal sector	52901009
99	In the informal sector	52901009
30	Private household	52901009
5	Do not know	52901009
0	Unspecified	52901009
8367	Not applicable	52901009
1765	In the formal sector	52901010
434	In the informal sector	52901010
87	Private household	52901010
77	Do not know	52901010
0	Unspecified	52901010
5853	Not applicable	52901010
1048	In the formal sector	52901011
183	In the informal sector	52901011
121	Private household	52901011
0	Do not know	52901011
0	Unspecified	52901011
6586	Not applicable	52901011
2008	In the formal sector	52901012
305	In the informal sector	52901012
139	Private household	52901012
42	Do not know	52901012
0	Unspecified	52901012
10463	Not applicable	52901012
865	In the formal sector	52901013
304	In the informal sector	52901013
35	Private household	52901013
36	Do not know	52901013
0	Unspecified	52901013
2320	Not applicable	52901013
2128	In the formal sector	52901014
475	In the informal sector	52901014
108	Private household	52901014
34	Do not know	52901014
0	Unspecified	52901014
7029	Not applicable	52901014
971	In the formal sector	52901015
145	In the informal sector	52901015
4	Private household	52901015
25	Do not know	52901015
0	Unspecified	52901015
2914	Not applicable	52901015
1830	In the formal sector	52901016
377	In the informal sector	52901016
501	Private household	52901016
49	Do not know	52901016
0	Unspecified	52901016
6429	Not applicable	52901016
1680	In the formal sector	52901017
589	In the informal sector	52901017
39	Private household	52901017
41	Do not know	52901017
0	Unspecified	52901017
3342	Not applicable	52901017
582	In the formal sector	52902001
367	In the informal sector	52902001
149	Private household	52902001
9	Do not know	52902001
0	Unspecified	52902001
6339	Not applicable	52902001
2442	In the formal sector	52902002
581	In the informal sector	52902002
203	Private household	52902002
80	Do not know	52902002
0	Unspecified	52902002
5977	Not applicable	52902002
1316	In the formal sector	52902003
459	In the informal sector	52902003
357	Private household	52902003
191	Do not know	52902003
0	Unspecified	52902003
3805	Not applicable	52902003
2028	In the formal sector	52902004
916	In the informal sector	52902004
570	Private household	52902004
150	Do not know	52902004
0	Unspecified	52902004
5056	Not applicable	52902004
1235	In the formal sector	52902005
134	In the informal sector	52902005
214	Private household	52902005
75	Do not know	52902005
0	Unspecified	52902005
6209	Not applicable	52902005
2912	In the formal sector	52902006
371	In the informal sector	52902006
331	Private household	52902006
109	Do not know	52902006
0	Unspecified	52902006
3887	Not applicable	52902006
2203	In the formal sector	52902007
1099	In the informal sector	52902007
200	Private household	52902007
48	Do not know	52902007
0	Unspecified	52902007
7609	Not applicable	52902007
1703	In the formal sector	52902008
517	In the informal sector	52902008
262	Private household	52902008
42	Do not know	52902008
0	Unspecified	52902008
5372	Not applicable	52902008
1278	In the formal sector	52902009
278	In the informal sector	52902009
176	Private household	52902009
13	Do not know	52902009
0	Unspecified	52902009
5726	Not applicable	52902009
1933	In the formal sector	52902010
390	In the informal sector	52902010
226	Private household	52902010
32	Do not know	52902010
0	Unspecified	52902010
7635	Not applicable	52902010
1531	In the formal sector	52902011
922	In the informal sector	52902011
339	Private household	52902011
35	Do not know	52902011
0	Unspecified	52902011
6370	Not applicable	52902011
2239	In the formal sector	52902012
764	In the informal sector	52902012
284	Private household	52902012
30	Do not know	52902012
0	Unspecified	52902012
8133	Not applicable	52902012
1864	In the formal sector	52902013
174	In the informal sector	52902013
90	Private household	52902013
54	Do not know	52902013
0	Unspecified	52902013
6346	Not applicable	52902013
1336	In the formal sector	52902014
516	In the informal sector	52902014
224	Private household	52902014
4	Do not know	52902014
0	Unspecified	52902014
6131	Not applicable	52902014
2330	In the formal sector	52902015
448	In the informal sector	52902015
215	Private household	52902015
31	Do not know	52902015
0	Unspecified	52902015
8692	Not applicable	52902015
2748	In the formal sector	52902016
138	In the informal sector	52902016
271	Private household	52902016
64	Do not know	52902016
0	Unspecified	52902016
6350	Not applicable	52902016
2347	In the formal sector	52902017
232	In the informal sector	52902017
91	Private household	52902017
97	Do not know	52902017
0	Unspecified	52902017
4040	Not applicable	52902017
1541	In the formal sector	52902018
232	In the informal sector	52902018
210	Private household	52902018
17	Do not know	52902018
0	Unspecified	52902018
6081	Not applicable	52902018
2598	In the formal sector	52902019
172	In the informal sector	52902019
141	Private household	52902019
41	Do not know	52902019
0	Unspecified	52902019
5011	Not applicable	52902019
683	In the formal sector	52902020
186	In the informal sector	52902020
67	Private household	52902020
9	Do not know	52902020
0	Unspecified	52902020
2561	Not applicable	52902020
1107	In the formal sector	52902021
1273	In the informal sector	52902021
270	Private household	52902021
30	Do not know	52902021
0	Unspecified	52902021
4312	Not applicable	52902021
3657	In the formal sector	52902022
506	In the informal sector	52902022
1083	Private household	52902022
105	Do not know	52902022
0	Unspecified	52902022
6341	Not applicable	52902022
1551	In the formal sector	52902023
1599	In the informal sector	52902023
337	Private household	52902023
29	Do not know	52902023
0	Unspecified	52902023
7644	Not applicable	52902023
2065	In the formal sector	52902024
650	In the informal sector	52902024
198	Private household	52902024
26	Do not know	52902024
0	Unspecified	52902024
8564	Not applicable	52902024
678	In the formal sector	52902025
237	In the informal sector	52902025
35	Private household	52902025
20	Do not know	52902025
0	Unspecified	52902025
7240	Not applicable	52902025
1006	In the formal sector	52902026
494	In the informal sector	52902026
123	Private household	52902026
35	Do not know	52902026
0	Unspecified	52902026
4475	Not applicable	52902026
617	In the formal sector	52902027
342	In the informal sector	52902027
138	Private household	52902027
12	Do not know	52902027
0	Unspecified	52902027
5563	Not applicable	52902027
792	In the formal sector	52903001
617	In the informal sector	52903001
62	Private household	52903001
9	Do not know	52903001
0	Unspecified	52903001
5049	Not applicable	52903001
131	In the formal sector	52903002
26	In the informal sector	52903002
21	Private household	52903002
10	Do not know	52903002
0	Unspecified	52903002
5382	Not applicable	52903002
1247	In the formal sector	52903003
1498	In the informal sector	52903003
173	Private household	52903003
62	Do not know	52903003
0	Unspecified	52903003
6062	Not applicable	52903003
120	In the formal sector	52903004
12	In the informal sector	52903004
5	Private household	52903004
1	Do not know	52903004
0	Unspecified	52903004
6279	Not applicable	52903004
175	In the formal sector	52903005
20	In the informal sector	52903005
1	Private household	52903005
5	Do not know	52903005
0	Unspecified	52903005
6204	Not applicable	52903005
401	In the formal sector	52903006
35	In the informal sector	52903006
17	Private household	52903006
3	Do not know	52903006
0	Unspecified	52903006
8572	Not applicable	52903006
95	In the formal sector	52903007
23	In the informal sector	52903007
5	Private household	52903007
10	Do not know	52903007
0	Unspecified	52903007
4875	Not applicable	52903007
320	In the formal sector	52903008
96	In the informal sector	52903008
10	Private household	52903008
2	Do not know	52903008
0	Unspecified	52903008
7021	Not applicable	52903008
206	In the formal sector	52903009
56	In the informal sector	52903009
7	Private household	52903009
24	Do not know	52903009
0	Unspecified	52903009
4791	Not applicable	52903009
230	In the formal sector	52903010
31	In the informal sector	52903010
18	Private household	52903010
12	Do not know	52903010
0	Unspecified	52903010
8019	Not applicable	52903010
340	In the formal sector	52903011
72	In the informal sector	52903011
17	Private household	52903011
5	Do not know	52903011
0	Unspecified	52903011
7314	Not applicable	52903011
917	In the formal sector	52903012
238	In the informal sector	52903012
152	Private household	52903012
68	Do not know	52903012
0	Unspecified	52903012
9495	Not applicable	52903012
576	In the formal sector	52903013
87	In the informal sector	52903013
86	Private household	52903013
17	Do not know	52903013
0	Unspecified	52903013
8116	Not applicable	52903013
310	In the formal sector	52903014
35	In the informal sector	52903014
42	Private household	52903014
1	Do not know	52903014
0	Unspecified	52903014
6224	Not applicable	52903014
618	In the formal sector	52903015
90	In the informal sector	52903015
62	Private household	52903015
6	Do not know	52903015
0	Unspecified	52903015
5949	Not applicable	52903015
249	In the formal sector	52903016
75	In the informal sector	52903016
8	Private household	52903016
7	Do not know	52903016
0	Unspecified	52903016
7446	Not applicable	52903016
179	In the formal sector	52903017
60	In the informal sector	52903017
10	Private household	52903017
12	Do not know	52903017
0	Unspecified	52903017
7057	Not applicable	52903017
190	In the formal sector	52903018
15	In the informal sector	52903018
37	Private household	52903018
4	Do not know	52903018
0	Unspecified	52903018
6832	Not applicable	52903018
320	In the formal sector	52903019
46	In the informal sector	52903019
14	Private household	52903019
5	Do not know	52903019
0	Unspecified	52903019
8574	Not applicable	52903019
3604	In the formal sector	59500001
670	In the informal sector	59500001
338	Private household	59500001
425	Do not know	59500001
0	Unspecified	59500001
25782	Not applicable	59500001
2735	In the formal sector	59500002
665	In the informal sector	59500002
473	Private household	59500002
61	Do not know	59500002
0	Unspecified	59500002
26500	Not applicable	59500002
4442	In the formal sector	59500003
1185	In the informal sector	59500003
541	Private household	59500003
78	Do not know	59500003
0	Unspecified	59500003
36159	Not applicable	59500003
5516	In the formal sector	59500004
664	In the informal sector	59500004
609	Private household	59500004
331	Do not know	59500004
0	Unspecified	59500004
30844	Not applicable	59500004
3517	In the formal sector	59500005
707	In the informal sector	59500005
317	Private household	59500005
196	Do not know	59500005
0	Unspecified	59500005
23864	Not applicable	59500005
4316	In the formal sector	59500006
489	In the informal sector	59500006
341	Private household	59500006
142	Do not know	59500006
0	Unspecified	59500006
22517	Not applicable	59500006
4129	In the formal sector	59500007
750	In the informal sector	59500007
625	Private household	59500007
129	Do not know	59500007
0	Unspecified	59500007
24017	Not applicable	59500007
9041	In the formal sector	59500008
1426	In the informal sector	59500008
1481	Private household	59500008
205	Do not know	59500008
0	Unspecified	59500008
23387	Not applicable	59500008
7566	In the formal sector	59500009
983	In the informal sector	59500009
1530	Private household	59500009
259	Do not know	59500009
0	Unspecified	59500009
21586	Not applicable	59500009
9602	In the formal sector	59500010
622	In the informal sector	59500010
1179	Private household	59500010
289	Do not know	59500010
0	Unspecified	59500010
10557	Not applicable	59500010
12586	In the formal sector	59500011
880	In the informal sector	59500011
1063	Private household	59500011
229	Do not know	59500011
0	Unspecified	59500011
33946	Not applicable	59500011
5061	In the formal sector	59500012
459	In the informal sector	59500012
390	Private household	59500012
48	Do not know	59500012
0	Unspecified	59500012
21097	Not applicable	59500012
8099	In the formal sector	59500013
667	In the informal sector	59500013
622	Private household	59500013
553	Do not know	59500013
0	Unspecified	59500013
25767	Not applicable	59500013
5254	In the formal sector	59500014
782	In the informal sector	59500014
745	Private household	59500014
250	Do not know	59500014
0	Unspecified	59500014
19798	Not applicable	59500014
8710	In the formal sector	59500015
838	In the informal sector	59500015
1145	Private household	59500015
855	Do not know	59500015
0	Unspecified	59500015
27796	Not applicable	59500015
11351	In the formal sector	59500016
1208	In the informal sector	59500016
1070	Private household	59500016
330	Do not know	59500016
0	Unspecified	59500016
22617	Not applicable	59500016
8713	In the formal sector	59500017
615	In the informal sector	59500017
638	Private household	59500017
228	Do not know	59500017
0	Unspecified	59500017
26537	Not applicable	59500017
12061	In the formal sector	59500018
787	In the informal sector	59500018
1162	Private household	59500018
319	Do not know	59500018
0	Unspecified	59500018
14130	Not applicable	59500018
8606	In the formal sector	59500019
2075	In the informal sector	59500019
1546	Private household	59500019
377	Do not know	59500019
0	Unspecified	59500019
30916	Not applicable	59500019
5411	In the formal sector	59500020
708	In the informal sector	59500020
511	Private household	59500020
124	Do not know	59500020
0	Unspecified	59500020
16782	Not applicable	59500020
8811	In the formal sector	59500021
480	In the informal sector	59500021
1435	Private household	59500021
237	Do not know	59500021
0	Unspecified	59500021
16019	Not applicable	59500021
5795	In the formal sector	59500022
791	In the informal sector	59500022
759	Private household	59500022
177	Do not know	59500022
0	Unspecified	59500022
18011	Not applicable	59500022
9128	In the formal sector	59500023
1010	In the informal sector	59500023
1102	Private household	59500023
268	Do not know	59500023
0	Unspecified	59500023
19082	Not applicable	59500023
11102	In the formal sector	59500024
871	In the informal sector	59500024
1318	Private household	59500024
277	Do not know	59500024
0	Unspecified	59500024
19887	Not applicable	59500024
11461	In the formal sector	59500025
1413	In the informal sector	59500025
1688	Private household	59500025
491	Do not know	59500025
0	Unspecified	59500025
23971	Not applicable	59500025
11320	In the formal sector	59500026
1568	In the informal sector	59500026
1629	Private household	59500026
478	Do not know	59500026
0	Unspecified	59500026
19605	Not applicable	59500026
9955	In the formal sector	59500027
504	In the informal sector	59500027
1054	Private household	59500027
287	Do not know	59500027
0	Unspecified	59500027
11173	Not applicable	59500027
7193	In the formal sector	59500028
1195	In the informal sector	59500028
955	Private household	59500028
180	Do not know	59500028
0	Unspecified	59500028
13647	Not applicable	59500028
7541	In the formal sector	59500029
1249	In the informal sector	59500029
1181	Private household	59500029
353	Do not know	59500029
0	Unspecified	59500029
23507	Not applicable	59500029
10100	In the formal sector	59500030
947	In the informal sector	59500030
1125	Private household	59500030
276	Do not know	59500030
0	Unspecified	59500030
25097	Not applicable	59500030
11452	In the formal sector	59500031
652	In the informal sector	59500031
1312	Private household	59500031
319	Do not know	59500031
0	Unspecified	59500031
19376	Not applicable	59500031
5694	In the formal sector	59500032
1219	In the informal sector	59500032
1179	Private household	59500032
205	Do not know	59500032
0	Unspecified	59500032
13827	Not applicable	59500032
12792	In the formal sector	59500033
658	In the informal sector	59500033
1218	Private household	59500033
269	Do not know	59500033
0	Unspecified	59500033
16992	Not applicable	59500033
12055	In the formal sector	59500034
959	In the informal sector	59500034
1278	Private household	59500034
337	Do not know	59500034
0	Unspecified	59500034
22584	Not applicable	59500034
13406	In the formal sector	59500035
754	In the informal sector	59500035
1618	Private household	59500035
385	Do not know	59500035
0	Unspecified	59500035
14922	Not applicable	59500035
13240	In the formal sector	59500036
895	In the informal sector	59500036
1630	Private household	59500036
399	Do not know	59500036
0	Unspecified	59500036
14996	Not applicable	59500036
11897	In the formal sector	59500037
715	In the informal sector	59500037
741	Private household	59500037
331	Do not know	59500037
0	Unspecified	59500037
27094	Not applicable	59500037
6183	In the formal sector	59500038
985	In the informal sector	59500038
631	Private household	59500038
307	Do not know	59500038
0	Unspecified	59500038
30846	Not applicable	59500038
6560	In the formal sector	59500039
1120	In the informal sector	59500039
1243	Private household	59500039
246	Do not know	59500039
0	Unspecified	59500039
15445	Not applicable	59500039
7286	In the formal sector	59500040
641	In the informal sector	59500040
734	Private household	59500040
333	Do not know	59500040
0	Unspecified	59500040
21048	Not applicable	59500040
7453	In the formal sector	59500041
466	In the informal sector	59500041
467	Private household	59500041
103	Do not know	59500041
0	Unspecified	59500041
26843	Not applicable	59500041
6774	In the formal sector	59500042
946	In the informal sector	59500042
785	Private household	59500042
252	Do not know	59500042
0	Unspecified	59500042
30086	Not applicable	59500042
6556	In the formal sector	59500043
719	In the informal sector	59500043
442	Private household	59500043
70	Do not know	59500043
0	Unspecified	59500043
25425	Not applicable	59500043
7297	In the formal sector	59500044
889	In the informal sector	59500044
593	Private household	59500044
185	Do not know	59500044
0	Unspecified	59500044
33015	Not applicable	59500044
10389	In the formal sector	59500045
588	In the informal sector	59500045
506	Private household	59500045
132	Do not know	59500045
0	Unspecified	59500045
27078	Not applicable	59500045
6642	In the formal sector	59500046
638	In the informal sector	59500046
494	Private household	59500046
287	Do not know	59500046
0	Unspecified	59500046
21398	Not applicable	59500046
5410	In the formal sector	59500047
852	In the informal sector	59500047
429	Private household	59500047
126	Do not know	59500047
0	Unspecified	59500047
24107	Not applicable	59500047
8213	In the formal sector	59500048
347	In the informal sector	59500048
590	Private household	59500048
107	Do not know	59500048
0	Unspecified	59500048
20822	Not applicable	59500048
10993	In the formal sector	59500049
700	In the informal sector	59500049
1057	Private household	59500049
180	Do not know	59500049
0	Unspecified	59500049
23238	Not applicable	59500049
9681	In the formal sector	59500050
537	In the informal sector	59500050
742	Private household	59500050
198	Do not know	59500050
0	Unspecified	59500050
17388	Not applicable	59500050
10733	In the formal sector	59500051
889	In the informal sector	59500051
935	Private household	59500051
394	Do not know	59500051
0	Unspecified	59500051
27266	Not applicable	59500051
9403	In the formal sector	59500052
656	In the informal sector	59500052
836	Private household	59500052
226	Do not know	59500052
0	Unspecified	59500052
24174	Not applicable	59500052
5424	In the formal sector	59500053
765	In the informal sector	59500053
1340	Private household	59500053
234	Do not know	59500053
0	Unspecified	59500053
28095	Not applicable	59500053
5765	In the formal sector	59500054
733	In the informal sector	59500054
777	Private household	59500054
144	Do not know	59500054
0	Unspecified	59500054
23760	Not applicable	59500054
7148	In the formal sector	59500055
902	In the informal sector	59500055
695	Private household	59500055
181	Do not know	59500055
0	Unspecified	59500055
34130	Not applicable	59500055
6140	In the formal sector	59500056
966	In the informal sector	59500056
742	Private household	59500056
277	Do not know	59500056
0	Unspecified	59500056
34111	Not applicable	59500056
6802	In the formal sector	59500057
1094	In the informal sector	59500057
744	Private household	59500057
203	Do not know	59500057
0	Unspecified	59500057
26790	Not applicable	59500057
10539	In the formal sector	59500058
1107	In the informal sector	59500058
1404	Private household	59500058
368	Do not know	59500058
0	Unspecified	59500058
24249	Not applicable	59500058
7137	In the formal sector	59500059
1053	In the informal sector	59500059
996	Private household	59500059
289	Do not know	59500059
0	Unspecified	59500059
35868	Not applicable	59500059
9818	In the formal sector	59500060
965	In the informal sector	59500060
1235	Private household	59500060
391	Do not know	59500060
0	Unspecified	59500060
24827	Not applicable	59500060
9576	In the formal sector	59500061
882	In the informal sector	59500061
897	Private household	59500061
122	Do not know	59500061
0	Unspecified	59500061
21793	Not applicable	59500061
7857	In the formal sector	59500062
521	In the informal sector	59500062
1077	Private household	59500062
261	Do not know	59500062
0	Unspecified	59500062
20883	Not applicable	59500062
13249	In the formal sector	59500063
789	In the informal sector	59500063
1192	Private household	59500063
443	Do not know	59500063
0	Unspecified	59500063
18350	Not applicable	59500063
14014	In the formal sector	59500064
775	In the informal sector	59500064
946	Private household	59500064
234	Do not know	59500064
0	Unspecified	59500064
19767	Not applicable	59500064
14557	In the formal sector	59500065
1270	In the informal sector	59500065
1539	Private household	59500065
611	Do not know	59500065
0	Unspecified	59500065
24828	Not applicable	59500065
11791	In the formal sector	59500066
777	In the informal sector	59500066
1305	Private household	59500066
586	Do not know	59500066
0	Unspecified	59500066
16395	Not applicable	59500066
6485	In the formal sector	59500067
1333	In the informal sector	59500067
1058	Private household	59500067
162	Do not know	59500067
0	Unspecified	59500067
35837	Not applicable	59500067
9573	In the formal sector	59500068
697	In the informal sector	59500068
384	Private household	59500068
146	Do not know	59500068
0	Unspecified	59500068
28555	Not applicable	59500068
8332	In the formal sector	59500069
838	In the informal sector	59500069
741	Private household	59500069
156	Do not know	59500069
0	Unspecified	59500069
22525	Not applicable	59500069
9513	In the formal sector	59500070
322	In the informal sector	59500070
315	Private household	59500070
121	Do not know	59500070
0	Unspecified	59500070
19707	Not applicable	59500070
10426	In the formal sector	59500071
1027	In the informal sector	59500071
849	Private household	59500071
188	Do not know	59500071
0	Unspecified	59500071
23904	Not applicable	59500071
8271	In the formal sector	59500072
1271	In the informal sector	59500072
659	Private household	59500072
282	Do not know	59500072
0	Unspecified	59500072
28841	Not applicable	59500072
9413	In the formal sector	59500073
484	In the informal sector	59500073
401	Private household	59500073
286	Do not know	59500073
0	Unspecified	59500073
20870	Not applicable	59500073
4915	In the formal sector	59500074
683	In the informal sector	59500074
258	Private household	59500074
20	Do not know	59500074
0	Unspecified	59500074
17002	Not applicable	59500074
4697	In the formal sector	59500075
715	In the informal sector	59500075
621	Private household	59500075
62	Do not know	59500075
0	Unspecified	59500075
15574	Not applicable	59500075
4546	In the formal sector	59500076
569	In the informal sector	59500076
419	Private household	59500076
313	Do not know	59500076
0	Unspecified	59500076
13541	Not applicable	59500076
6651	In the formal sector	59500077
832	In the informal sector	59500077
1186	Private household	59500077
394	Do not know	59500077
0	Unspecified	59500077
36985	Not applicable	59500077
4756	In the formal sector	59500078
529	In the informal sector	59500078
656	Private household	59500078
61	Do not know	59500078
0	Unspecified	59500078
22383	Not applicable	59500078
6922	In the formal sector	59500079
998	In the informal sector	59500079
941	Private household	59500079
244	Do not know	59500079
0	Unspecified	59500079
29879	Not applicable	59500079
5688	In the formal sector	59500080
745	In the informal sector	59500080
906	Private household	59500080
214	Do not know	59500080
0	Unspecified	59500080
23125	Not applicable	59500080
4350	In the formal sector	59500081
487	In the informal sector	59500081
357	Private household	59500081
140	Do not know	59500081
0	Unspecified	59500081
19348	Not applicable	59500081
6638	In the formal sector	59500082
590	In the informal sector	59500082
508	Private household	59500082
136	Do not know	59500082
0	Unspecified	59500082
21351	Not applicable	59500082
6355	In the formal sector	59500083
779	In the informal sector	59500083
465	Private household	59500083
197	Do not know	59500083
0	Unspecified	59500083
28455	Not applicable	59500083
7493	In the formal sector	59500084
985	In the informal sector	59500084
1103	Private household	59500084
142	Do not know	59500084
0	Unspecified	59500084
29453	Not applicable	59500084
6593	In the formal sector	59500085
662	In the informal sector	59500085
470	Private household	59500085
134	Do not know	59500085
0	Unspecified	59500085
24251	Not applicable	59500085
5967	In the formal sector	59500086
632	In the informal sector	59500086
523	Private household	59500086
77	Do not know	59500086
0	Unspecified	59500086
26834	Not applicable	59500086
5009	In the formal sector	59500087
523	In the informal sector	59500087
278	Private household	59500087
88	Do not know	59500087
0	Unspecified	59500087
20722	Not applicable	59500087
7296	In the formal sector	59500088
807	In the informal sector	59500088
630	Private household	59500088
263	Do not know	59500088
0	Unspecified	59500088
26553	Not applicable	59500088
6700	In the formal sector	59500089
2295	In the informal sector	59500089
609	Private household	59500089
144	Do not know	59500089
0	Unspecified	59500089
22013	Not applicable	59500089
7521	In the formal sector	59500090
613	In the informal sector	59500090
765	Private household	59500090
195	Do not know	59500090
0	Unspecified	59500090
17202	Not applicable	59500090
6003	In the formal sector	59500091
519	In the informal sector	59500091
519	Private household	59500091
294	Do not know	59500091
0	Unspecified	59500091
27922	Not applicable	59500091
8199	In the formal sector	59500092
733	In the informal sector	59500092
781	Private household	59500092
396	Do not know	59500092
0	Unspecified	59500092
17530	Not applicable	59500092
6642	In the formal sector	59500093
1718	In the informal sector	59500093
1294	Private household	59500093
318	Do not know	59500093
0	Unspecified	59500093
26052	Not applicable	59500093
4026	In the formal sector	59500094
896	In the informal sector	59500094
622	Private household	59500094
111	Do not know	59500094
0	Unspecified	59500094
24315	Not applicable	59500094
5025	In the formal sector	59500095
557	In the informal sector	59500095
589	Private household	59500095
195	Do not know	59500095
0	Unspecified	59500095
32179	Not applicable	59500095
4396	In the formal sector	59500096
594	In the informal sector	59500096
292	Private household	59500096
51	Do not know	59500096
0	Unspecified	59500096
29021	Not applicable	59500096
9234	In the formal sector	59500097
647	In the informal sector	59500097
695	Private household	59500097
360	Do not know	59500097
0	Unspecified	59500097
14135	Not applicable	59500097
8603	In the formal sector	59500098
866	In the informal sector	59500098
655	Private household	59500098
433	Do not know	59500098
0	Unspecified	59500098
35954	Not applicable	59500098
7554	In the formal sector	59500099
1214	In the informal sector	59500099
1022	Private household	59500099
192	Do not know	59500099
0	Unspecified	59500099
27590	Not applicable	59500099
2390	In the formal sector	59500100
460	In the informal sector	59500100
223	Private household	59500100
97	Do not know	59500100
0	Unspecified	59500100
29158	Not applicable	59500100
7515	In the formal sector	59500101
1383	In the informal sector	59500101
1051	Private household	59500101
192	Do not know	59500101
0	Unspecified	59500101
15319	Not applicable	59500101
11861	In the formal sector	59500102
1231	In the informal sector	59500102
1170	Private household	59500102
430	Do not know	59500102
0	Unspecified	59500102
26642	Not applicable	59500102
4707	In the formal sector	59500103
962	In the informal sector	59500103
915	Private household	59500103
580	Do not know	59500103
0	Unspecified	59500103
20618	Not applicable	59500103
278	In the formal sector	93301001
91	In the informal sector	93301001
21	Private household	93301001
15	Do not know	93301001
0	Unspecified	93301001
6887	Not applicable	93301001
135	In the formal sector	93301002
22	In the informal sector	93301002
46	Private household	93301002
13	Do not know	93301002
0	Unspecified	93301002
5138	Not applicable	93301002
363	In the formal sector	93301003
110	In the informal sector	93301003
62	Private household	93301003
2	Do not know	93301003
0	Unspecified	93301003
8101	Not applicable	93301003
489	In the formal sector	93301004
176	In the informal sector	93301004
75	Private household	93301004
5	Do not know	93301004
0	Unspecified	93301004
7528	Not applicable	93301004
381	In the formal sector	93301005
110	In the informal sector	93301005
123	Private household	93301005
0	Do not know	93301005
0	Unspecified	93301005
8114	Not applicable	93301005
457	In the formal sector	93301006
127	In the informal sector	93301006
92	Private household	93301006
4	Do not know	93301006
0	Unspecified	93301006
7254	Not applicable	93301006
998	In the formal sector	93301007
312	In the informal sector	93301007
498	Private household	93301007
7	Do not know	93301007
0	Unspecified	93301007
9941	Not applicable	93301007
385	In the formal sector	93301008
146	In the informal sector	93301008
125	Private household	93301008
25	Do not know	93301008
0	Unspecified	93301008
6890	Not applicable	93301008
476	In the formal sector	93301009
15	In the informal sector	93301009
26	Private household	93301009
9	Do not know	93301009
0	Unspecified	93301009
5559	Not applicable	93301009
305	In the formal sector	93301010
89	In the informal sector	93301010
62	Private household	93301010
21	Do not know	93301010
0	Unspecified	93301010
7038	Not applicable	93301010
2342	In the formal sector	93301011
227	In the informal sector	93301011
350	Private household	93301011
1	Do not know	93301011
0	Unspecified	93301011
4718	Not applicable	93301011
1521	In the formal sector	93301012
241	In the informal sector	93301012
419	Private household	93301012
25	Do not know	93301012
0	Unspecified	93301012
10324	Not applicable	93301012
2319	In the formal sector	93301013
668	In the informal sector	93301013
327	Private household	93301013
10	Do not know	93301013
0	Unspecified	93301013
8408	Not applicable	93301013
556	In the formal sector	93301014
184	In the informal sector	93301014
76	Private household	93301014
19	Do not know	93301014
0	Unspecified	93301014
9388	Not applicable	93301014
301	In the formal sector	93301015
76	In the informal sector	93301015
28	Private household	93301015
14	Do not know	93301015
0	Unspecified	93301015
6117	Not applicable	93301015
234	In the formal sector	93301016
56	In the informal sector	93301016
31	Private household	93301016
8	Do not know	93301016
0	Unspecified	93301016
5733	Not applicable	93301016
443	In the formal sector	93301017
122	In the informal sector	93301017
72	Private household	93301017
5	Do not know	93301017
0	Unspecified	93301017
5981	Not applicable	93301017
907	In the formal sector	93301018
189	In the informal sector	93301018
54	Private household	93301018
70	Do not know	93301018
0	Unspecified	93301018
6510	Not applicable	93301018
410	In the formal sector	93301019
80	In the informal sector	93301019
38	Private household	93301019
27	Do not know	93301019
0	Unspecified	93301019
8969	Not applicable	93301019
355	In the formal sector	93301020
52	In the informal sector	93301020
93	Private household	93301020
14	Do not know	93301020
0	Unspecified	93301020
6798	Not applicable	93301020
1066	In the formal sector	93301021
232	In the informal sector	93301021
154	Private household	93301021
21	Do not know	93301021
0	Unspecified	93301021
6915	Not applicable	93301021
212	In the formal sector	93301022
154	In the informal sector	93301022
59	Private household	93301022
8	Do not know	93301022
0	Unspecified	93301022
6320	Not applicable	93301022
290	In the formal sector	93301023
52	In the informal sector	93301023
17	Private household	93301023
8	Do not know	93301023
0	Unspecified	93301023
6452	Not applicable	93301023
534	In the formal sector	93301024
119	In the informal sector	93301024
9	Private household	93301024
9	Do not know	93301024
0	Unspecified	93301024
7768	Not applicable	93301024
470	In the formal sector	93301025
166	In the informal sector	93301025
61	Private household	93301025
11	Do not know	93301025
0	Unspecified	93301025
10986	Not applicable	93301025
416	In the formal sector	93301026
85	In the informal sector	93301026
15	Private household	93301026
1	Do not know	93301026
0	Unspecified	93301026
7280	Not applicable	93301026
254	In the formal sector	93301027
107	In the informal sector	93301027
98	Private household	93301027
22	Do not know	93301027
0	Unspecified	93301027
6222	Not applicable	93301027
353	In the formal sector	93301028
202	In the informal sector	93301028
90	Private household	93301028
38	Do not know	93301028
0	Unspecified	93301028
7894	Not applicable	93301028
332	In the formal sector	93301029
47	In the informal sector	93301029
36	Private household	93301029
19	Do not know	93301029
0	Unspecified	93301029
7757	Not applicable	93301029
318	In the formal sector	93301030
63	In the informal sector	93301030
46	Private household	93301030
0	Do not know	93301030
0	Unspecified	93301030
5378	Not applicable	93301030
517	In the formal sector	93302001
271	In the informal sector	93302001
71	Private household	93302001
37	Do not know	93302001
0	Unspecified	93302001
6568	Not applicable	93302001
371	In the formal sector	93302002
148	In the informal sector	93302002
80	Private household	93302002
24	Do not know	93302002
0	Unspecified	93302002
4426	Not applicable	93302002
977	In the formal sector	93302003
237	In the informal sector	93302003
170	Private household	93302003
11	Do not know	93302003
0	Unspecified	93302003
4237	Not applicable	93302003
1404	In the formal sector	93302004
207	In the informal sector	93302004
267	Private household	93302004
19	Do not know	93302004
0	Unspecified	93302004
6631	Not applicable	93302004
536	In the formal sector	93302005
224	In the informal sector	93302005
141	Private household	93302005
50	Do not know	93302005
0	Unspecified	93302005
6018	Not applicable	93302005
738	In the formal sector	93302006
234	In the informal sector	93302006
28	Private household	93302006
6	Do not know	93302006
0	Unspecified	93302006
6882	Not applicable	93302006
416	In the formal sector	93302007
175	In the informal sector	93302007
49	Private household	93302007
32	Do not know	93302007
0	Unspecified	93302007
5803	Not applicable	93302007
893	In the formal sector	93302008
206	In the informal sector	93302008
163	Private household	93302008
76	Do not know	93302008
0	Unspecified	93302008
6025	Not applicable	93302008
328	In the formal sector	93302009
134	In the informal sector	93302009
105	Private household	93302009
10	Do not know	93302009
0	Unspecified	93302009
7710	Not applicable	93302009
314	In the formal sector	93302010
255	In the informal sector	93302010
37	Private household	93302010
24	Do not know	93302010
0	Unspecified	93302010
8178	Not applicable	93302010
372	In the formal sector	93302011
130	In the informal sector	93302011
35	Private household	93302011
23	Do not know	93302011
0	Unspecified	93302011
7252	Not applicable	93302011
312	In the formal sector	93302012
117	In the informal sector	93302012
10	Private household	93302012
19	Do not know	93302012
0	Unspecified	93302012
6364	Not applicable	93302012
450	In the formal sector	93302013
77	In the informal sector	93302013
21	Private household	93302013
12	Do not know	93302013
0	Unspecified	93302013
7360	Not applicable	93302013
1567	In the formal sector	93302014
1140	In the informal sector	93302014
73	Private household	93302014
83	Do not know	93302014
0	Unspecified	93302014
4785	Not applicable	93302014
298	In the formal sector	93302015
213	In the informal sector	93302015
66	Private household	93302015
22	Do not know	93302015
0	Unspecified	93302015
7178	Not applicable	93302015
267	In the formal sector	93302016
82	In the informal sector	93302016
42	Private household	93302016
9	Do not know	93302016
0	Unspecified	93302016
7050	Not applicable	93302016
256	In the formal sector	93302017
46	In the informal sector	93302017
50	Private household	93302017
35	Do not know	93302017
0	Unspecified	93302017
7118	Not applicable	93302017
306	In the formal sector	93302018
76	In the informal sector	93302018
61	Private household	93302018
15	Do not know	93302018
0	Unspecified	93302018
7146	Not applicable	93302018
404	In the formal sector	93302019
89	In the informal sector	93302019
41	Private household	93302019
11	Do not know	93302019
0	Unspecified	93302019
7098	Not applicable	93302019
437	In the formal sector	93302020
186	In the informal sector	93302020
148	Private household	93302020
22	Do not know	93302020
0	Unspecified	93302020
6945	Not applicable	93302020
356	In the formal sector	93302021
120	In the informal sector	93302021
140	Private household	93302021
17	Do not know	93302021
0	Unspecified	93302021
7169	Not applicable	93302021
475	In the formal sector	93302022
255	In the informal sector	93302022
69	Private household	93302022
26	Do not know	93302022
0	Unspecified	93302022
7906	Not applicable	93302022
262	In the formal sector	93302023
48	In the informal sector	93302023
24	Private household	93302023
14	Do not know	93302023
0	Unspecified	93302023
7101	Not applicable	93302023
155	In the formal sector	93302024
55	In the informal sector	93302024
59	Private household	93302024
59	Do not know	93302024
0	Unspecified	93302024
4171	Not applicable	93302024
477	In the formal sector	93302025
114	In the informal sector	93302025
64	Private household	93302025
12	Do not know	93302025
0	Unspecified	93302025
6385	Not applicable	93302025
262	In the formal sector	93302026
47	In the informal sector	93302026
42	Private household	93302026
7	Do not know	93302026
0	Unspecified	93302026
6663	Not applicable	93302026
264	In the formal sector	93302027
90	In the informal sector	93302027
17	Private household	93302027
32	Do not know	93302027
0	Unspecified	93302027
5036	Not applicable	93302027
157	In the formal sector	93302028
38	In the informal sector	93302028
28	Private household	93302028
7	Do not know	93302028
0	Unspecified	93302028
4456	Not applicable	93302028
4513	In the formal sector	93302029
1772	In the informal sector	93302029
524	Private household	93302029
145	Do not know	93302029
0	Unspecified	93302029
4686	Not applicable	93302029
593	In the formal sector	93303001
319	In the informal sector	93303001
64	Private household	93303001
20	Do not know	93303001
0	Unspecified	93303001
10462	Not applicable	93303001
338	In the formal sector	93303002
114	In the informal sector	93303002
74	Private household	93303002
9	Do not know	93303002
0	Unspecified	93303002
9919	Not applicable	93303002
443	In the formal sector	93303003
176	In the informal sector	93303003
150	Private household	93303003
15	Do not know	93303003
0	Unspecified	93303003
10551	Not applicable	93303003
561	In the formal sector	93303004
192	In the informal sector	93303004
88	Private household	93303004
29	Do not know	93303004
0	Unspecified	93303004
10495	Not applicable	93303004
1229	In the formal sector	93303005
421	In the informal sector	93303005
184	Private household	93303005
27	Do not know	93303005
0	Unspecified	93303005
11665	Not applicable	93303005
500	In the formal sector	93303006
204	In the informal sector	93303006
101	Private household	93303006
41	Do not know	93303006
0	Unspecified	93303006
9407	Not applicable	93303006
610	In the formal sector	93303007
177	In the informal sector	93303007
157	Private household	93303007
44	Do not know	93303007
0	Unspecified	93303007
9792	Not applicable	93303007
479	In the formal sector	93303008
192	In the informal sector	93303008
94	Private household	93303008
27	Do not know	93303008
0	Unspecified	93303008
8271	Not applicable	93303008
1166	In the formal sector	93303009
567	In the informal sector	93303009
230	Private household	93303009
47	Do not know	93303009
0	Unspecified	93303009
15920	Not applicable	93303009
406	In the formal sector	93303010
163	In the informal sector	93303010
113	Private household	93303010
10	Do not know	93303010
0	Unspecified	93303010
5553	Not applicable	93303010
471	In the formal sector	93303011
215	In the informal sector	93303011
60	Private household	93303011
13	Do not know	93303011
0	Unspecified	93303011
6959	Not applicable	93303011
943	In the formal sector	93303012
530	In the informal sector	93303012
410	Private household	93303012
94	Do not know	93303012
0	Unspecified	93303012
9252	Not applicable	93303012
2788	In the formal sector	93303013
657	In the informal sector	93303013
523	Private household	93303013
237	Do not know	93303013
0	Unspecified	93303013
9035	Not applicable	93303013
6780	In the formal sector	93303014
924	In the informal sector	93303014
1126	Private household	93303014
101	Do not know	93303014
0	Unspecified	93303014
4899	Not applicable	93303014
1987	In the formal sector	93303015
517	In the informal sector	93303015
274	Private household	93303015
44	Do not know	93303015
0	Unspecified	93303015
3230	Not applicable	93303015
3422	In the formal sector	93303016
2078	In the informal sector	93303016
2332	Private household	93303016
329	Do not know	93303016
0	Unspecified	93303016
9448	Not applicable	93303016
2065	In the formal sector	93303017
410	In the informal sector	93303017
793	Private household	93303017
120	Do not know	93303017
0	Unspecified	93303017
9547	Not applicable	93303017
960	In the formal sector	93303018
306	In the informal sector	93303018
509	Private household	93303018
47	Do not know	93303018
0	Unspecified	93303018
10944	Not applicable	93303018
2223	In the formal sector	93303019
204	In the informal sector	93303019
243	Private household	93303019
23	Do not know	93303019
0	Unspecified	93303019
5626	Not applicable	93303019
1230	In the formal sector	93303020
437	In the informal sector	93303020
265	Private household	93303020
50	Do not know	93303020
0	Unspecified	93303020
10069	Not applicable	93303020
3097	In the formal sector	93303021
767	In the informal sector	93303021
309	Private household	93303021
26	Do not know	93303021
0	Unspecified	93303021
10157	Not applicable	93303021
859	In the formal sector	93303022
429	In the informal sector	93303022
107	Private household	93303022
22	Do not know	93303022
0	Unspecified	93303022
7706	Not applicable	93303022
2130	In the formal sector	93303023
254	In the informal sector	93303023
310	Private household	93303023
88	Do not know	93303023
0	Unspecified	93303023
6393	Not applicable	93303023
722	In the formal sector	93303024
388	In the informal sector	93303024
174	Private household	93303024
58	Do not know	93303024
0	Unspecified	93303024
9026	Not applicable	93303024
917	In the formal sector	93303025
359	In the informal sector	93303025
473	Private household	93303025
94	Do not know	93303025
0	Unspecified	93303025
9730	Not applicable	93303025
657	In the formal sector	93303026
312	In the informal sector	93303026
278	Private household	93303026
38	Do not know	93303026
0	Unspecified	93303026
8157	Not applicable	93303026
867	In the formal sector	93303027
298	In the informal sector	93303027
143	Private household	93303027
22	Do not know	93303027
0	Unspecified	93303027
10233	Not applicable	93303027
752	In the formal sector	93303028
211	In the informal sector	93303028
287	Private household	93303028
13	Do not know	93303028
0	Unspecified	93303028
9990	Not applicable	93303028
1487	In the formal sector	93303029
570	In the informal sector	93303029
440	Private household	93303029
9	Do not know	93303029
0	Unspecified	93303029
13083	Not applicable	93303029
614	In the formal sector	93303030
244	In the informal sector	93303030
175	Private household	93303030
23	Do not know	93303030
0	Unspecified	93303030
6068	Not applicable	93303030
2698	In the formal sector	93303031
427	In the informal sector	93303031
237	Private household	93303031
24	Do not know	93303031
0	Unspecified	93303031
8695	Not applicable	93303031
1013	In the formal sector	93303032
352	In the informal sector	93303032
228	Private household	93303032
8	Do not know	93303032
0	Unspecified	93303032
10563	Not applicable	93303032
1116	In the formal sector	93303033
616	In the informal sector	93303033
341	Private household	93303033
43	Do not know	93303033
0	Unspecified	93303033
13930	Not applicable	93303033
737	In the formal sector	93303034
573	In the informal sector	93303034
128	Private household	93303034
46	Do not know	93303034
0	Unspecified	93303034
10595	Not applicable	93303034
2404	In the formal sector	93304001
398	In the informal sector	93304001
255	Private household	93304001
14	Do not know	93304001
0	Unspecified	93304001
9564	Not applicable	93304001
943	In the formal sector	93304002
145	In the informal sector	93304002
124	Private household	93304002
38	Do not know	93304002
0	Unspecified	93304002
5359	Not applicable	93304002
934	In the formal sector	93304003
180	In the informal sector	93304003
80	Private household	93304003
24	Do not know	93304003
0	Unspecified	93304003
5219	Not applicable	93304003
1588	In the formal sector	93304004
130	In the informal sector	93304004
107	Private household	93304004
8	Do not know	93304004
0	Unspecified	93304004
5185	Not applicable	93304004
1499	In the formal sector	93304005
97	In the informal sector	93304005
94	Private household	93304005
10	Do not know	93304005
0	Unspecified	93304005
4572	Not applicable	93304005
1150	In the formal sector	93304006
172	In the informal sector	93304006
204	Private household	93304006
10	Do not know	93304006
0	Unspecified	93304006
4978	Not applicable	93304006
1328	In the formal sector	93304007
112	In the informal sector	93304007
77	Private household	93304007
6	Do not know	93304007
0	Unspecified	93304007
4480	Not applicable	93304007
1068	In the formal sector	93304008
259	In the informal sector	93304008
243	Private household	93304008
37	Do not know	93304008
0	Unspecified	93304008
6266	Not applicable	93304008
863	In the formal sector	93304009
238	In the informal sector	93304009
108	Private household	93304009
50	Do not know	93304009
0	Unspecified	93304009
5743	Not applicable	93304009
1207	In the formal sector	93304010
186	In the informal sector	93304010
358	Private household	93304010
28	Do not know	93304010
0	Unspecified	93304010
6050	Not applicable	93304010
1940	In the formal sector	93304011
174	In the informal sector	93304011
174	Private household	93304011
71	Do not know	93304011
0	Unspecified	93304011
3342	Not applicable	93304011
3040	In the formal sector	93304012
293	In the informal sector	93304012
165	Private household	93304012
126	Do not know	93304012
0	Unspecified	93304012
4652	Not applicable	93304012
711	In the formal sector	93304013
167	In the informal sector	93304013
428	Private household	93304013
38	Do not know	93304013
0	Unspecified	93304013
7426	Not applicable	93304013
621	In the formal sector	93304014
180	In the informal sector	93304014
22	Private household	93304014
28	Do not know	93304014
0	Unspecified	93304014
2323	Not applicable	93304014
1644	In the formal sector	93304015
243	In the informal sector	93304015
340	Private household	93304015
15	Do not know	93304015
0	Unspecified	93304015
6733	Not applicable	93304015
598	In the formal sector	93304016
344	In the informal sector	93304016
225	Private household	93304016
35	Do not know	93304016
0	Unspecified	93304016
11849	Not applicable	93304016
1415	In the formal sector	93304017
467	In the informal sector	93304017
258	Private household	93304017
112	Do not know	93304017
0	Unspecified	93304017
13922	Not applicable	93304017
3052	In the formal sector	93304018
301	In the informal sector	93304018
404	Private household	93304018
76	Do not know	93304018
0	Unspecified	93304018
8493	Not applicable	93304018
2126	In the formal sector	93305001
455	In the informal sector	93305001
483	Private household	93305001
81	Do not know	93305001
0	Unspecified	93305001
2477	Not applicable	93305001
1322	In the formal sector	93305002
1481	In the informal sector	93305002
371	Private household	93305002
94	Do not know	93305002
0	Unspecified	93305002
4988	Not applicable	93305002
502	In the formal sector	93305003
186	In the informal sector	93305003
82	Private household	93305003
55	Do not know	93305003
0	Unspecified	93305003
6036	Not applicable	93305003
199	In the formal sector	93305004
69	In the informal sector	93305004
34	Private household	93305004
3	Do not know	93305004
0	Unspecified	93305004
5992	Not applicable	93305004
230	In the formal sector	93305005
47	In the informal sector	93305005
32	Private household	93305005
25	Do not know	93305005
0	Unspecified	93305005
5591	Not applicable	93305005
608	In the formal sector	93305006
166	In the informal sector	93305006
289	Private household	93305006
40	Do not know	93305006
0	Unspecified	93305006
6132	Not applicable	93305006
260	In the formal sector	93305007
159	In the informal sector	93305007
37	Private household	93305007
25	Do not know	93305007
0	Unspecified	93305007
5702	Not applicable	93305007
250	In the formal sector	93305008
79	In the informal sector	93305008
24	Private household	93305008
14	Do not know	93305008
0	Unspecified	93305008
7301	Not applicable	93305008
450	In the formal sector	93305009
105	In the informal sector	93305009
88	Private household	93305009
16	Do not know	93305009
0	Unspecified	93305009
5707	Not applicable	93305009
390	In the formal sector	93305010
185	In the informal sector	93305010
78	Private household	93305010
24	Do not know	93305010
0	Unspecified	93305010
5971	Not applicable	93305010
554	In the formal sector	93305011
225	In the informal sector	93305011
58	Private household	93305011
10	Do not know	93305011
0	Unspecified	93305011
7945	Not applicable	93305011
463	In the formal sector	93305012
158	In the informal sector	93305012
139	Private household	93305012
24	Do not know	93305012
0	Unspecified	93305012
7474	Not applicable	93305012
321	In the formal sector	93305013
86	In the informal sector	93305013
145	Private household	93305013
13	Do not know	93305013
0	Unspecified	93305013
5517	Not applicable	93305013
224	In the formal sector	93305014
130	In the informal sector	93305014
26	Private household	93305014
7	Do not know	93305014
0	Unspecified	93305014
4271	Not applicable	93305014
417	In the formal sector	93402001
118	In the informal sector	93402001
32	Private household	93402001
5	Do not know	93402001
0	Unspecified	93402001
5963	Not applicable	93402001
357	In the formal sector	93402002
107	In the informal sector	93402002
29	Private household	93402002
16	Do not know	93402002
0	Unspecified	93402002
6483	Not applicable	93402002
542	In the formal sector	93402003
63	In the informal sector	93402003
97	Private household	93402003
25	Do not know	93402003
0	Unspecified	93402003
6653	Not applicable	93402003
486	In the formal sector	93402004
169	In the informal sector	93402004
114	Private household	93402004
2	Do not know	93402004
0	Unspecified	93402004
5671	Not applicable	93402004
1107	In the formal sector	93402005
131	In the informal sector	93402005
166	Private household	93402005
17	Do not know	93402005
0	Unspecified	93402005
7796	Not applicable	93402005
282	In the formal sector	93402006
119	In the informal sector	93402006
53	Private household	93402006
41	Do not know	93402006
0	Unspecified	93402006
5710	Not applicable	93402006
331	In the formal sector	93402007
81	In the informal sector	93402007
45	Private household	93402007
3	Do not know	93402007
0	Unspecified	93402007
5944	Not applicable	93402007
325	In the formal sector	93402008
104	In the informal sector	93402008
37	Private household	93402008
0	Do not know	93402008
0	Unspecified	93402008
4893	Not applicable	93402008
504	In the formal sector	93402009
248	In the informal sector	93402009
81	Private household	93402009
4	Do not know	93402009
0	Unspecified	93402009
7295	Not applicable	93402009
347	In the formal sector	93402010
108	In the informal sector	93402010
158	Private household	93402010
24	Do not know	93402010
0	Unspecified	93402010
5427	Not applicable	93402010
381	In the formal sector	93402011
137	In the informal sector	93402011
62	Private household	93402011
2	Do not know	93402011
0	Unspecified	93402011
7848	Not applicable	93402011
838	In the formal sector	93402012
148	In the informal sector	93402012
111	Private household	93402012
3	Do not know	93402012
0	Unspecified	93402012
7211	Not applicable	93402012
793	In the formal sector	93402013
193	In the informal sector	93402013
28	Private household	93402013
6	Do not know	93402013
0	Unspecified	93402013
5376	Not applicable	93402013
473	In the formal sector	93403001
130	In the informal sector	93403001
54	Private household	93403001
8	Do not know	93403001
0	Unspecified	93403001
16753	Not applicable	93403001
410	In the formal sector	93403002
122	In the informal sector	93403002
84	Private household	93403002
6	Do not know	93403002
0	Unspecified	93403002
11311	Not applicable	93403002
885	In the formal sector	93403003
247	In the informal sector	93403003
176	Private household	93403003
14	Do not know	93403003
0	Unspecified	93403003
13349	Not applicable	93403003
840	In the formal sector	93403004
273	In the informal sector	93403004
184	Private household	93403004
9	Do not know	93403004
0	Unspecified	93403004
13907	Not applicable	93403004
1315	In the formal sector	93403005
653	In the informal sector	93403005
367	Private household	93403005
51	Do not know	93403005
0	Unspecified	93403005
14358	Not applicable	93403005
714	In the formal sector	93403006
245	In the informal sector	93403006
117	Private household	93403006
1	Do not know	93403006
0	Unspecified	93403006
14337	Not applicable	93403006
638	In the formal sector	93403007
314	In the informal sector	93403007
143	Private household	93403007
32	Do not know	93403007
0	Unspecified	93403007
17120	Not applicable	93403007
396	In the formal sector	93403008
93	In the informal sector	93403008
77	Private household	93403008
14	Do not know	93403008
0	Unspecified	93403008
13483	Not applicable	93403008
497	In the formal sector	93403009
106	In the informal sector	93403009
55	Private household	93403009
9	Do not know	93403009
0	Unspecified	93403009
13432	Not applicable	93403009
1030	In the formal sector	93403010
129	In the informal sector	93403010
192	Private household	93403010
43	Do not know	93403010
0	Unspecified	93403010
13019	Not applicable	93403010
449	In the formal sector	93403011
118	In the informal sector	93403011
163	Private household	93403011
4	Do not know	93403011
0	Unspecified	93403011
16288	Not applicable	93403011
543	In the formal sector	93403012
139	In the informal sector	93403012
116	Private household	93403012
12	Do not know	93403012
0	Unspecified	93403012
13655	Not applicable	93403012
2902	In the formal sector	93403013
546	In the informal sector	93403013
171	Private household	93403013
3	Do not know	93403013
0	Unspecified	93403013
14043	Not applicable	93403013
809	In the formal sector	93403014
292	In the informal sector	93403014
104	Private household	93403014
26	Do not know	93403014
0	Unspecified	93403014
13870	Not applicable	93403014
974	In the formal sector	93403015
392	In the informal sector	93403015
245	Private household	93403015
28	Do not know	93403015
0	Unspecified	93403015
16259	Not applicable	93403015
529	In the formal sector	93403016
90	In the informal sector	93403016
98	Private household	93403016
2	Do not know	93403016
0	Unspecified	93403016
11907	Not applicable	93403016
606	In the formal sector	93403017
74	In the informal sector	93403017
85	Private household	93403017
9	Do not know	93403017
0	Unspecified	93403017
11983	Not applicable	93403017
789	In the formal sector	93403018
451	In the informal sector	93403018
205	Private household	93403018
28	Do not know	93403018
0	Unspecified	93403018
14738	Not applicable	93403018
1043	In the formal sector	93403019
312	In the informal sector	93403019
271	Private household	93403019
63	Do not know	93403019
0	Unspecified	93403019
14373	Not applicable	93403019
2455	In the formal sector	93403020
681	In the informal sector	93403020
652	Private household	93403020
19	Do not know	93403020
0	Unspecified	93403020
13268	Not applicable	93403020
3104	In the formal sector	93403021
779	In the informal sector	93403021
1195	Private household	93403021
9	Do not know	93403021
0	Unspecified	93403021
14150	Not applicable	93403021
1966	In the formal sector	93403022
686	In the informal sector	93403022
695	Private household	93403022
102	Do not know	93403022
0	Unspecified	93403022
12937	Not applicable	93403022
2257	In the formal sector	93403023
918	In the informal sector	93403023
760	Private household	93403023
18	Do not know	93403023
0	Unspecified	93403023
12600	Not applicable	93403023
2093	In the formal sector	93403024
898	In the informal sector	93403024
405	Private household	93403024
36	Do not know	93403024
0	Unspecified	93403024
15283	Not applicable	93403024
1480	In the formal sector	93403025
613	In the informal sector	93403025
471	Private household	93403025
18	Do not know	93403025
0	Unspecified	93403025
12743	Not applicable	93403025
1123	In the formal sector	93403026
378	In the informal sector	93403026
168	Private household	93403026
35	Do not know	93403026
0	Unspecified	93403026
12834	Not applicable	93403026
1327	In the formal sector	93403027
479	In the informal sector	93403027
399	Private household	93403027
25	Do not know	93403027
0	Unspecified	93403027
14877	Not applicable	93403027
946	In the formal sector	93403028
272	In the informal sector	93403028
146	Private household	93403028
15	Do not know	93403028
0	Unspecified	93403028
12059	Not applicable	93403028
1035	In the formal sector	93403029
374	In the informal sector	93403029
290	Private household	93403029
10	Do not know	93403029
0	Unspecified	93403029
15146	Not applicable	93403029
885	In the formal sector	93403030
369	In the informal sector	93403030
180	Private household	93403030
15	Do not know	93403030
0	Unspecified	93403030
11545	Not applicable	93403030
754	In the formal sector	93403031
560	In the informal sector	93403031
158	Private household	93403031
15	Do not know	93403031
0	Unspecified	93403031
11388	Not applicable	93403031
1255	In the formal sector	93403032
464	In the informal sector	93403032
304	Private household	93403032
24	Do not know	93403032
0	Unspecified	93403032
12444	Not applicable	93403032
1419	In the formal sector	93403033
641	In the informal sector	93403033
671	Private household	93403033
13	Do not know	93403033
0	Unspecified	93403033
14244	Not applicable	93403033
1101	In the formal sector	93403034
706	In the informal sector	93403034
263	Private household	93403034
11	Do not know	93403034
0	Unspecified	93403034
12983	Not applicable	93403034
1587	In the formal sector	93403035
765	In the informal sector	93403035
418	Private household	93403035
31	Do not know	93403035
0	Unspecified	93403035
14892	Not applicable	93403035
2479	In the formal sector	93403036
777	In the informal sector	93403036
390	Private household	93403036
22	Do not know	93403036
0	Unspecified	93403036
12998	Not applicable	93403036
1748	In the formal sector	93403037
522	In the informal sector	93403037
484	Private household	93403037
14	Do not know	93403037
0	Unspecified	93403037
11558	Not applicable	93403037
1763	In the formal sector	93403038
647	In the informal sector	93403038
313	Private household	93403038
24	Do not know	93403038
0	Unspecified	93403038
11926	Not applicable	93403038
582	In the formal sector	93403039
501	In the informal sector	93403039
178	Private household	93403039
32	Do not know	93403039
0	Unspecified	93403039
12087	Not applicable	93403039
384	In the formal sector	93403040
123	In the informal sector	93403040
77	Private household	93403040
10	Do not know	93403040
0	Unspecified	93403040
11470	Not applicable	93403040
1493	In the formal sector	93401001
2279	In the informal sector	93401001
999	Private household	93401001
61	Do not know	93401001
0	Unspecified	93401001
8534	Not applicable	93401001
6503	In the formal sector	93401002
1254	In the informal sector	93401002
1012	Private household	93401002
253	Do not know	93401002
0	Unspecified	93401002
7725	Not applicable	93401002
2933	In the formal sector	93401003
482	In the informal sector	93401003
367	Private household	93401003
68	Do not know	93401003
0	Unspecified	93401003
8910	Not applicable	93401003
1539	In the formal sector	93401004
252	In the informal sector	93401004
158	Private household	93401004
87	Do not know	93401004
0	Unspecified	93401004
3060	Not applicable	93401004
1477	In the formal sector	93401005
492	In the informal sector	93401005
478	Private household	93401005
266	Do not know	93401005
0	Unspecified	93401005
7747	Not applicable	93401005
2642	In the formal sector	93401006
536	In the informal sector	93401006
301	Private household	93401006
44	Do not know	93401006
0	Unspecified	93401006
6406	Not applicable	93401006
649	In the formal sector	93404001
388	In the informal sector	93404001
202	Private household	93404001
8	Do not know	93404001
0	Unspecified	93404001
10748	Not applicable	93404001
514	In the formal sector	93404002
232	In the informal sector	93404002
74	Private household	93404002
10	Do not know	93404002
0	Unspecified	93404002
10737	Not applicable	93404002
1616	In the formal sector	93404003
359	In the informal sector	93404003
211	Private household	93404003
45	Do not know	93404003
0	Unspecified	93404003
12250	Not applicable	93404003
1280	In the formal sector	93404004
402	In the informal sector	93404004
336	Private household	93404004
14	Do not know	93404004
0	Unspecified	93404004
15462	Not applicable	93404004
532	In the formal sector	93404005
150	In the informal sector	93404005
68	Private household	93404005
1	Do not know	93404005
0	Unspecified	93404005
11791	Not applicable	93404005
725	In the formal sector	93404006
149	In the informal sector	93404006
112	Private household	93404006
0	Do not know	93404006
0	Unspecified	93404006
11241	Not applicable	93404006
614	In the formal sector	93404007
171	In the informal sector	93404007
230	Private household	93404007
37	Do not know	93404007
0	Unspecified	93404007
10869	Not applicable	93404007
750	In the formal sector	93404008
459	In the informal sector	93404008
240	Private household	93404008
28	Do not know	93404008
0	Unspecified	93404008
11945	Not applicable	93404008
823	In the formal sector	93404009
365	In the informal sector	93404009
330	Private household	93404009
34	Do not know	93404009
0	Unspecified	93404009
11373	Not applicable	93404009
532	In the formal sector	93404010
136	In the informal sector	93404010
122	Private household	93404010
63	Do not know	93404010
0	Unspecified	93404010
8851	Not applicable	93404010
645	In the formal sector	93404011
106	In the informal sector	93404011
134	Private household	93404011
13	Do not know	93404011
0	Unspecified	93404011
9817	Not applicable	93404011
525	In the formal sector	93404012
159	In the informal sector	93404012
114	Private household	93404012
13	Do not know	93404012
0	Unspecified	93404012
9579	Not applicable	93404012
903	In the formal sector	93404013
153	In the informal sector	93404013
141	Private household	93404013
27	Do not know	93404013
0	Unspecified	93404013
12730	Not applicable	93404013
607	In the formal sector	93404014
154	In the informal sector	93404014
217	Private household	93404014
10	Do not know	93404014
0	Unspecified	93404014
12671	Not applicable	93404014
1718	In the formal sector	93404015
791	In the informal sector	93404015
760	Private household	93404015
96	Do not know	93404015
0	Unspecified	93404015
14301	Not applicable	93404015
1950	In the formal sector	93404016
682	In the informal sector	93404016
591	Private household	93404016
40	Do not know	93404016
0	Unspecified	93404016
10555	Not applicable	93404016
1245	In the formal sector	93404017
475	In the informal sector	93404017
381	Private household	93404017
64	Do not know	93404017
0	Unspecified	93404017
10756	Not applicable	93404017
620	In the formal sector	93404018
177	In the informal sector	93404018
150	Private household	93404018
31	Do not know	93404018
0	Unspecified	93404018
10478	Not applicable	93404018
733	In the formal sector	93404019
203	In the informal sector	93404019
239	Private household	93404019
8	Do not know	93404019
0	Unspecified	93404019
10838	Not applicable	93404019
4429	In the formal sector	93404020
896	In the informal sector	93404020
1230	Private household	93404020
109	Do not know	93404020
0	Unspecified	93404020
13844	Not applicable	93404020
6861	In the formal sector	93404021
2052	In the informal sector	93404021
1690	Private household	93404021
231	Do not know	93404021
0	Unspecified	93404021
10205	Not applicable	93404021
1711	In the formal sector	93404022
466	In the informal sector	93404022
464	Private household	93404022
33	Do not know	93404022
0	Unspecified	93404022
12239	Not applicable	93404022
1221	In the formal sector	93404023
581	In the informal sector	93404023
241	Private household	93404023
23	Do not know	93404023
0	Unspecified	93404023
9333	Not applicable	93404023
1727	In the formal sector	93404024
639	In the informal sector	93404024
562	Private household	93404024
58	Do not know	93404024
0	Unspecified	93404024
13805	Not applicable	93404024
1179	In the formal sector	93404025
356	In the informal sector	93404025
217	Private household	93404025
65	Do not know	93404025
0	Unspecified	93404025
13236	Not applicable	93404025
1621	In the formal sector	93404026
759	In the informal sector	93404026
373	Private household	93404026
54	Do not know	93404026
0	Unspecified	93404026
11623	Not applicable	93404026
630	In the formal sector	93404027
294	In the informal sector	93404027
185	Private household	93404027
5	Do not know	93404027
0	Unspecified	93404027
9362	Not applicable	93404027
2097	In the formal sector	93404028
961	In the informal sector	93404028
437	Private household	93404028
58	Do not know	93404028
0	Unspecified	93404028
12301	Not applicable	93404028
949	In the formal sector	93404029
629	In the informal sector	93404029
303	Private household	93404029
23	Do not know	93404029
0	Unspecified	93404029
9745	Not applicable	93404029
1443	In the formal sector	93404030
824	In the informal sector	93404030
227	Private household	93404030
22	Do not know	93404030
0	Unspecified	93404030
8799	Not applicable	93404030
951	In the formal sector	93404031
749	In the informal sector	93404031
355	Private household	93404031
82	Do not know	93404031
0	Unspecified	93404031
10593	Not applicable	93404031
937	In the formal sector	93404032
474	In the informal sector	93404032
332	Private household	93404032
55	Do not know	93404032
0	Unspecified	93404032
13049	Not applicable	93404032
1077	In the formal sector	93404033
309	In the informal sector	93404033
268	Private household	93404033
3	Do not know	93404033
0	Unspecified	93404033
12617	Not applicable	93404033
907	In the formal sector	93404034
315	In the informal sector	93404034
629	Private household	93404034
29	Do not know	93404034
0	Unspecified	93404034
12197	Not applicable	93404034
1549	In the formal sector	93404035
382	In the informal sector	93404035
272	Private household	93404035
39	Do not know	93404035
0	Unspecified	93404035
11402	Not applicable	93404035
833	In the formal sector	93404036
560	In the informal sector	93404036
264	Private household	93404036
39	Do not know	93404036
0	Unspecified	93404036
14094	Not applicable	93404036
421	In the formal sector	93404037
213	In the informal sector	93404037
74	Private household	93404037
32	Do not know	93404037
0	Unspecified	93404037
10261	Not applicable	93404037
865	In the formal sector	93404038
423	In the informal sector	93404038
221	Private household	93404038
17	Do not know	93404038
0	Unspecified	93404038
9840	Not applicable	93404038
188	In the formal sector	93501001
186	In the informal sector	93501001
67	Private household	93501001
1	Do not know	93501001
0	Unspecified	93501001
5545	Not applicable	93501001
269	In the formal sector	93501002
110	In the informal sector	93501002
64	Private household	93501002
8	Do not know	93501002
0	Unspecified	93501002
7070	Not applicable	93501002
144	In the formal sector	93501003
59	In the informal sector	93501003
38	Private household	93501003
2	Do not know	93501003
0	Unspecified	93501003
6872	Not applicable	93501003
158	In the formal sector	93501004
29	In the informal sector	93501004
40	Private household	93501004
17	Do not know	93501004
0	Unspecified	93501004
6010	Not applicable	93501004
379	In the formal sector	93501005
605	In the informal sector	93501005
113	Private household	93501005
22	Do not know	93501005
0	Unspecified	93501005
6035	Not applicable	93501005
201	In the formal sector	93501006
45	In the informal sector	93501006
40	Private household	93501006
4	Do not know	93501006
0	Unspecified	93501006
6708	Not applicable	93501006
141	In the formal sector	93501007
38	In the informal sector	93501007
31	Private household	93501007
5	Do not know	93501007
0	Unspecified	93501007
8323	Not applicable	93501007
286	In the formal sector	93501008
116	In the informal sector	93501008
44	Private household	93501008
0	Do not know	93501008
0	Unspecified	93501008
4872	Not applicable	93501008
379	In the formal sector	93501009
130	In the informal sector	93501009
29	Private household	93501009
14	Do not know	93501009
0	Unspecified	93501009
8981	Not applicable	93501009
450	In the formal sector	93501010
294	In the informal sector	93501010
75	Private household	93501010
5	Do not know	93501010
0	Unspecified	93501010
8093	Not applicable	93501010
300	In the formal sector	93501011
114	In the informal sector	93501011
43	Private household	93501011
15	Do not know	93501011
0	Unspecified	93501011
7165	Not applicable	93501011
628	In the formal sector	93501012
283	In the informal sector	93501012
539	Private household	93501012
9	Do not know	93501012
0	Unspecified	93501012
6038	Not applicable	93501012
222	In the formal sector	93501013
84	In the informal sector	93501013
94	Private household	93501013
2	Do not know	93501013
0	Unspecified	93501013
5903	Not applicable	93501013
246	In the formal sector	93501014
75	In the informal sector	93501014
11	Private household	93501014
14	Do not know	93501014
0	Unspecified	93501014
7090	Not applicable	93501014
339	In the formal sector	93501015
158	In the informal sector	93501015
20	Private household	93501015
12	Do not know	93501015
0	Unspecified	93501015
6344	Not applicable	93501015
261	In the formal sector	93501016
66	In the informal sector	93501016
20	Private household	93501016
8	Do not know	93501016
0	Unspecified	93501016
6123	Not applicable	93501016
350	In the formal sector	93501017
98	In the informal sector	93501017
94	Private household	93501017
15	Do not know	93501017
0	Unspecified	93501017
6778	Not applicable	93501017
578	In the formal sector	93501018
192	In the informal sector	93501018
448	Private household	93501018
62	Do not know	93501018
0	Unspecified	93501018
7568	Not applicable	93501018
1658	In the formal sector	93501019
514	In the informal sector	93501019
278	Private household	93501019
70	Do not know	93501019
0	Unspecified	93501019
12668	Not applicable	93501019
200	In the formal sector	93501020
86	In the informal sector	93501020
14	Private household	93501020
3	Do not know	93501020
0	Unspecified	93501020
6481	Not applicable	93501020
1029	In the formal sector	93501021
1352	In the informal sector	93501021
692	Private household	93501021
91	Do not know	93501021
0	Unspecified	93501021
5744	Not applicable	93501021
246	In the formal sector	93502001
117	In the informal sector	93502001
30	Private household	93502001
3	Do not know	93502001
0	Unspecified	93502001
5447	Not applicable	93502001
323	In the formal sector	93502002
69	In the informal sector	93502002
45	Private household	93502002
0	Do not know	93502002
0	Unspecified	93502002
6406	Not applicable	93502002
360	In the formal sector	93502003
93	In the informal sector	93502003
63	Private household	93502003
9	Do not know	93502003
0	Unspecified	93502003
7042	Not applicable	93502003
182	In the formal sector	93502004
56	In the informal sector	93502004
130	Private household	93502004
11	Do not know	93502004
0	Unspecified	93502004
6253	Not applicable	93502004
407	In the formal sector	93502005
143	In the informal sector	93502005
91	Private household	93502005
29	Do not know	93502005
0	Unspecified	93502005
5812	Not applicable	93502005
322	In the formal sector	93502006
100	In the informal sector	93502006
30	Private household	93502006
17	Do not know	93502006
0	Unspecified	93502006
5494	Not applicable	93502006
381	In the formal sector	93502007
220	In the informal sector	93502007
65	Private household	93502007
5	Do not know	93502007
0	Unspecified	93502007
7786	Not applicable	93502007
364	In the formal sector	93502008
138	In the informal sector	93502008
154	Private household	93502008
13	Do not know	93502008
0	Unspecified	93502008
6394	Not applicable	93502008
623	In the formal sector	93502009
147	In the informal sector	93502009
84	Private household	93502009
7	Do not know	93502009
0	Unspecified	93502009
6376	Not applicable	93502009
270	In the formal sector	93502010
145	In the informal sector	93502010
73	Private household	93502010
5	Do not know	93502010
0	Unspecified	93502010
6677	Not applicable	93502010
473	In the formal sector	93502011
114	In the informal sector	93502011
137	Private household	93502011
14	Do not know	93502011
0	Unspecified	93502011
5739	Not applicable	93502011
314	In the formal sector	93502012
117	In the informal sector	93502012
79	Private household	93502012
0	Do not know	93502012
0	Unspecified	93502012
5429	Not applicable	93502012
461	In the formal sector	93502013
224	In the informal sector	93502013
124	Private household	93502013
2	Do not know	93502013
0	Unspecified	93502013
5512	Not applicable	93502013
489	In the formal sector	93502014
187	In the informal sector	93502014
216	Private household	93502014
23	Do not know	93502014
0	Unspecified	93502014
6596	Not applicable	93502014
422	In the formal sector	93502015
89	In the informal sector	93502015
90	Private household	93502015
22	Do not know	93502015
0	Unspecified	93502015
6635	Not applicable	93502015
410	In the formal sector	93502016
147	In the informal sector	93502016
70	Private household	93502016
18	Do not know	93502016
0	Unspecified	93502016
7112	Not applicable	93502016
251	In the formal sector	93502017
103	In the informal sector	93502017
59	Private household	93502017
4	Do not know	93502017
0	Unspecified	93502017
5955	Not applicable	93502017
305	In the formal sector	93502018
130	In the informal sector	93502018
68	Private household	93502018
11	Do not know	93502018
0	Unspecified	93502018
6548	Not applicable	93502018
618	In the formal sector	93502019
185	In the informal sector	93502019
157	Private household	93502019
9	Do not know	93502019
0	Unspecified	93502019
6236	Not applicable	93502019
2516	In the formal sector	93503001
701	In the informal sector	93503001
1333	Private household	93503001
96	Do not know	93503001
0	Unspecified	93503001
5819	Not applicable	93503001
480	In the formal sector	93503002
125	In the informal sector	93503002
114	Private household	93503002
8	Do not know	93503002
0	Unspecified	93503002
8181	Not applicable	93503002
448	In the formal sector	93503003
62	In the informal sector	93503003
64	Private household	93503003
12	Do not know	93503003
0	Unspecified	93503003
5327	Not applicable	93503003
293	In the formal sector	93503004
148	In the informal sector	93503004
60	Private household	93503004
6	Do not know	93503004
0	Unspecified	93503004
6664	Not applicable	93503004
208	In the formal sector	93503005
54	In the informal sector	93503005
89	Private household	93503005
3	Do not know	93503005
0	Unspecified	93503005
4577	Not applicable	93503005
566	In the formal sector	93503006
146	In the informal sector	93503006
173	Private household	93503006
19	Do not know	93503006
0	Unspecified	93503006
7596	Not applicable	93503006
779	In the formal sector	93503007
203	In the informal sector	93503007
158	Private household	93503007
7	Do not know	93503007
0	Unspecified	93503007
8971	Not applicable	93503007
490	In the formal sector	93503008
227	In the informal sector	93503008
192	Private household	93503008
63	Do not know	93503008
0	Unspecified	93503008
8793	Not applicable	93503008
425	In the formal sector	93503009
88	In the informal sector	93503009
158	Private household	93503009
7	Do not know	93503009
0	Unspecified	93503009
7364	Not applicable	93503009
1165	In the formal sector	93503010
558	In the informal sector	93503010
568	Private household	93503010
6	Do not know	93503010
0	Unspecified	93503010
5586	Not applicable	93503010
326	In the formal sector	93503011
120	In the informal sector	93503011
44	Private household	93503011
8	Do not know	93503011
0	Unspecified	93503011
4563	Not applicable	93503011
612	In the formal sector	93503012
207	In the informal sector	93503012
118	Private household	93503012
5	Do not know	93503012
0	Unspecified	93503012
7437	Not applicable	93503012
440	In the formal sector	93503013
155	In the informal sector	93503013
54	Private household	93503013
11	Do not know	93503013
0	Unspecified	93503013
6433	Not applicable	93503013
418	In the formal sector	93503014
49	In the informal sector	93503014
148	Private household	93503014
2	Do not know	93503014
0	Unspecified	93503014
5474	Not applicable	93503014
3865	In the formal sector	93504001
730	In the informal sector	93504001
1167	Private household	93504001
134	Do not know	93504001
0	Unspecified	93504001
14635	Not applicable	93504001
1147	In the formal sector	93504002
322	In the informal sector	93504002
253	Private household	93504002
20	Do not know	93504002
0	Unspecified	93504002
14000	Not applicable	93504002
683	In the formal sector	93504003
233	In the informal sector	93504003
111	Private household	93504003
15	Do not know	93504003
0	Unspecified	93504003
10393	Not applicable	93504003
754	In the formal sector	93504004
280	In the informal sector	93504004
161	Private household	93504004
53	Do not know	93504004
0	Unspecified	93504004
15260	Not applicable	93504004
1174	In the formal sector	93504005
445	In the informal sector	93504005
399	Private household	93504005
56	Do not know	93504005
0	Unspecified	93504005
15109	Not applicable	93504005
5326	In the formal sector	93504006
900	In the informal sector	93504006
1642	Private household	93504006
183	Do not know	93504006
0	Unspecified	93504006
11694	Not applicable	93504006
1131	In the formal sector	93504007
372	In the informal sector	93504007
460	Private household	93504007
15	Do not know	93504007
0	Unspecified	93504007
12312	Not applicable	93504007
11394	In the formal sector	93504008
2021	In the informal sector	93504008
1516	Private household	93504008
547	Do not know	93504008
0	Unspecified	93504008
24022	Not applicable	93504008
1416	In the formal sector	93504009
468	In the informal sector	93504009
339	Private household	93504009
9	Do not know	93504009
0	Unspecified	93504009
11299	Not applicable	93504009
2176	In the formal sector	93504010
655	In the informal sector	93504010
410	Private household	93504010
26	Do not know	93504010
0	Unspecified	93504010
12094	Not applicable	93504010
4426	In the formal sector	93504011
541	In the informal sector	93504011
932	Private household	93504011
140	Do not know	93504011
0	Unspecified	93504011
12295	Not applicable	93504011
2632	In the formal sector	93504012
294	In the informal sector	93504012
302	Private household	93504012
16	Do not know	93504012
0	Unspecified	93504012
5603	Not applicable	93504012
2697	In the formal sector	93504013
600	In the informal sector	93504013
250	Private household	93504013
32	Do not know	93504013
0	Unspecified	93504013
9282	Not applicable	93504013
4688	In the formal sector	93504014
725	In the informal sector	93504014
959	Private household	93504014
65	Do not know	93504014
0	Unspecified	93504014
11339	Not applicable	93504014
808	In the formal sector	93504015
383	In the informal sector	93504015
305	Private household	93504015
17	Do not know	93504015
0	Unspecified	93504015
11009	Not applicable	93504015
2985	In the formal sector	93504016
709	In the informal sector	93504016
665	Private household	93504016
32	Do not know	93504016
0	Unspecified	93504016
17268	Not applicable	93504016
3396	In the formal sector	93504017
437	In the informal sector	93504017
890	Private household	93504017
112	Do not know	93504017
0	Unspecified	93504017
11257	Not applicable	93504017
1619	In the formal sector	93504018
532	In the informal sector	93504018
565	Private household	93504018
23	Do not know	93504018
0	Unspecified	93504018
13227	Not applicable	93504018
5237	In the formal sector	93504019
788	In the informal sector	93504019
1018	Private household	93504019
118	Do not know	93504019
0	Unspecified	93504019
11098	Not applicable	93504019
11047	In the formal sector	93504020
1014	In the informal sector	93504020
1461	Private household	93504020
252	Do not know	93504020
0	Unspecified	93504020
14376	Not applicable	93504020
2933	In the formal sector	93504021
293	In the informal sector	93504021
332	Private household	93504021
35	Do not know	93504021
0	Unspecified	93504021
2969	Not applicable	93504021
5850	In the formal sector	93504022
560	In the informal sector	93504022
813	Private household	93504022
110	Do not know	93504022
0	Unspecified	93504022
10107	Not applicable	93504022
7072	In the formal sector	93504023
817	In the informal sector	93504023
1490	Private household	93504023
230	Do not know	93504023
0	Unspecified	93504023
9359	Not applicable	93504023
1651	In the formal sector	93504024
508	In the informal sector	93504024
374	Private household	93504024
76	Do not know	93504024
0	Unspecified	93504024
13115	Not applicable	93504024
4670	In the formal sector	93504025
1017	In the informal sector	93504025
667	Private household	93504025
36	Do not know	93504025
0	Unspecified	93504025
19479	Not applicable	93504025
843	In the formal sector	93504026
40	In the informal sector	93504026
72	Private household	93504026
5	Do not know	93504026
0	Unspecified	93504026
6137	Not applicable	93504026
2814	In the formal sector	93504027
1093	In the informal sector	93504027
583	Private household	93504027
44	Do not know	93504027
0	Unspecified	93504027
17581	Not applicable	93504027
1332	In the formal sector	93504028
335	In the informal sector	93504028
250	Private household	93504028
76	Do not know	93504028
0	Unspecified	93504028
11790	Not applicable	93504028
752	In the formal sector	93504029
228	In the informal sector	93504029
222	Private household	93504029
8	Do not know	93504029
0	Unspecified	93504029
9067	Not applicable	93504029
782	In the formal sector	93504030
130	In the informal sector	93504030
268	Private household	93504030
24	Do not know	93504030
0	Unspecified	93504030
10604	Not applicable	93504030
1642	In the formal sector	93504031
497	In the informal sector	93504031
313	Private household	93504031
9	Do not know	93504031
0	Unspecified	93504031
16287	Not applicable	93504031
1531	In the formal sector	93504032
666	In the informal sector	93504032
276	Private household	93504032
28	Do not know	93504032
0	Unspecified	93504032
13543	Not applicable	93504032
1312	In the formal sector	93504033
346	In the informal sector	93504033
288	Private household	93504033
57	Do not know	93504033
0	Unspecified	93504033
14261	Not applicable	93504033
923	In the formal sector	93504034
428	In the informal sector	93504034
315	Private household	93504034
40	Do not know	93504034
0	Unspecified	93504034
13731	Not applicable	93504034
979	In the formal sector	93504035
233	In the informal sector	93504035
97	Private household	93504035
47	Do not know	93504035
0	Unspecified	93504035
11375	Not applicable	93504035
2620	In the formal sector	93504036
654	In the informal sector	93504036
861	Private household	93504036
114	Do not know	93504036
0	Unspecified	93504036
11565	Not applicable	93504036
3685	In the formal sector	93504037
668	In the informal sector	93504037
669	Private household	93504037
63	Do not know	93504037
0	Unspecified	93504037
10958	Not applicable	93504037
1699	In the formal sector	93504038
268	In the informal sector	93504038
315	Private household	93504038
47	Do not know	93504038
0	Unspecified	93504038
11648	Not applicable	93504038
206	In the formal sector	93505001
60	In the informal sector	93505001
32	Private household	93505001
1	Do not know	93505001
0	Unspecified	93505001
7722	Not applicable	93505001
294	In the formal sector	93505002
233	In the informal sector	93505002
29	Private household	93505002
8	Do not know	93505002
0	Unspecified	93505002
8132	Not applicable	93505002
241	In the formal sector	93505003
64	In the informal sector	93505003
13	Private household	93505003
1	Do not know	93505003
0	Unspecified	93505003
7245	Not applicable	93505003
360	In the formal sector	93505004
76	In the informal sector	93505004
53	Private household	93505004
7	Do not know	93505004
0	Unspecified	93505004
6262	Not applicable	93505004
194	In the formal sector	93505005
60	In the informal sector	93505005
8	Private household	93505005
3	Do not know	93505005
0	Unspecified	93505005
6801	Not applicable	93505005
319	In the formal sector	93505006
133	In the informal sector	93505006
34	Private household	93505006
15	Do not know	93505006
0	Unspecified	93505006
7438	Not applicable	93505006
469	In the formal sector	93505007
124	In the informal sector	93505007
115	Private household	93505007
0	Do not know	93505007
0	Unspecified	93505007
7412	Not applicable	93505007
1173	In the formal sector	93505008
370	In the informal sector	93505008
83	Private household	93505008
21	Do not know	93505008
0	Unspecified	93505008
8009	Not applicable	93505008
862	In the formal sector	93505009
136	In the informal sector	93505009
112	Private household	93505009
65	Do not know	93505009
0	Unspecified	93505009
6918	Not applicable	93505009
599	In the formal sector	93505010
116	In the informal sector	93505010
54	Private household	93505010
15	Do not know	93505010
0	Unspecified	93505010
4979	Not applicable	93505010
448	In the formal sector	93505011
105	In the informal sector	93505011
94	Private household	93505011
4	Do not know	93505011
0	Unspecified	93505011
6381	Not applicable	93505011
400	In the formal sector	93505012
279	In the informal sector	93505012
84	Private household	93505012
13	Do not know	93505012
0	Unspecified	93505012
5503	Not applicable	93505012
716	In the formal sector	93505013
182	In the informal sector	93505013
153	Private household	93505013
5	Do not know	93505013
0	Unspecified	93505013
6255	Not applicable	93505013
700	In the formal sector	93505014
273	In the informal sector	93505014
73	Private household	93505014
17	Do not know	93505014
0	Unspecified	93505014
6948	Not applicable	93505014
3681	In the formal sector	93505015
360	In the informal sector	93505015
339	Private household	93505015
39	Do not know	93505015
0	Unspecified	93505015
6520	Not applicable	93505015
1709	In the formal sector	93505016
394	In the informal sector	93505016
281	Private household	93505016
36	Do not know	93505016
0	Unspecified	93505016
6396	Not applicable	93505016
1831	In the formal sector	93505017
372	In the informal sector	93505017
287	Private household	93505017
13	Do not know	93505017
0	Unspecified	93505017
7208	Not applicable	93505017
1503	In the formal sector	93505018
123	In the informal sector	93505018
162	Private household	93505018
66	Do not know	93505018
0	Unspecified	93505018
4225	Not applicable	93505018
376	In the formal sector	93505019
148	In the informal sector	93505019
22	Private household	93505019
3	Do not know	93505019
0	Unspecified	93505019
9295	Not applicable	93505019
316	In the formal sector	93505020
98	In the informal sector	93505020
85	Private household	93505020
31	Do not know	93505020
0	Unspecified	93505020
7178	Not applicable	93505020
348	In the formal sector	93505021
102	In the informal sector	93505021
50	Private household	93505021
25	Do not know	93505021
0	Unspecified	93505021
6746	Not applicable	93505021
549	In the formal sector	93505022
210	In the informal sector	93505022
24	Private household	93505022
11	Do not know	93505022
0	Unspecified	93505022
9622	Not applicable	93505022
448	In the formal sector	93505023
135	In the informal sector	93505023
37	Private household	93505023
0	Do not know	93505023
0	Unspecified	93505023
6984	Not applicable	93505023
167	In the formal sector	93505024
55	In the informal sector	93505024
42	Private household	93505024
3	Do not know	93505024
0	Unspecified	93505024
5436	Not applicable	93505024
298	In the formal sector	93505025
155	In the informal sector	93505025
42	Private household	93505025
9	Do not know	93505025
0	Unspecified	93505025
7576	Not applicable	93505025
676	In the formal sector	93505026
290	In the informal sector	93505026
146	Private household	93505026
15	Do not know	93505026
0	Unspecified	93505026
10174	Not applicable	93505026
392	In the formal sector	93505027
204	In the informal sector	93505027
51	Private household	93505027
3	Do not know	93505027
0	Unspecified	93505027
7099	Not applicable	93505027
371	In the formal sector	93505028
317	In the informal sector	93505028
20	Private household	93505028
3	Do not know	93505028
0	Unspecified	93505028
6083	Not applicable	93505028
213	In the formal sector	93505029
48	In the informal sector	93505029
15	Private household	93505029
0	Do not know	93505029
0	Unspecified	93505029
5745	Not applicable	93505029
1705	In the formal sector	93601001
1081	In the informal sector	93601001
832	Private household	93601001
288	Do not know	93601001
0	Unspecified	93601001
3768	Not applicable	93601001
2933	In the formal sector	93601002
571	In the informal sector	93601002
428	Private household	93601002
100	Do not know	93601002
0	Unspecified	93601002
5872	Not applicable	93601002
3933	In the formal sector	93601003
568	In the informal sector	93601003
256	Private household	93601003
61	Do not know	93601003
0	Unspecified	93601003
6423	Not applicable	93601003
1034	In the formal sector	93601004
247	In the informal sector	93601004
645	Private household	93601004
60	Do not know	93601004
0	Unspecified	93601004
2642	Not applicable	93601004
1485	In the formal sector	93601005
98	In the informal sector	93601005
96	Private household	93601005
81	Do not know	93601005
0	Unspecified	93601005
2205	Not applicable	93601005
1986	In the formal sector	93601006
112	In the informal sector	93601006
100	Private household	93601006
53	Do not know	93601006
0	Unspecified	93601006
2155	Not applicable	93601006
3179	In the formal sector	93601007
468	In the informal sector	93601007
842	Private household	93601007
330	Do not know	93601007
0	Unspecified	93601007
7047	Not applicable	93601007
1575	In the formal sector	93601008
117	In the informal sector	93601008
480	Private household	93601008
42	Do not know	93601008
0	Unspecified	93601008
3612	Not applicable	93601008
4220	In the formal sector	93601009
466	In the informal sector	93601009
477	Private household	93601009
79	Do not know	93601009
0	Unspecified	93601009
9355	Not applicable	93601009
1262	In the formal sector	93601010
40	In the informal sector	93601010
97	Private household	93601010
7	Do not know	93601010
0	Unspecified	93601010
2739	Not applicable	93601010
0	In the formal sector	93601011
0	In the informal sector	93601011
0	Private household	93601011
0	Do not know	93601011
0	Unspecified	93601011
3867	Not applicable	93601011
665	In the formal sector	93601012
137	In the informal sector	93601012
57	Private household	93601012
7	Do not know	93601012
0	Unspecified	93601012
2248	Not applicable	93601012
5330	In the formal sector	93602001
554	In the informal sector	93602001
805	Private household	93602001
93	Do not know	93602001
0	Unspecified	93602001
10631	Not applicable	93602001
3276	In the formal sector	93602002
179	In the informal sector	93602002
382	Private household	93602002
40	Do not know	93602002
0	Unspecified	93602002
9565	Not applicable	93602002
4142	In the formal sector	93602003
1006	In the informal sector	93602003
1057	Private household	93602003
94	Do not know	93602003
0	Unspecified	93602003
4839	Not applicable	93602003
3448	In the formal sector	93602004
284	In the informal sector	93602004
425	Private household	93602004
106	Do not know	93602004
0	Unspecified	93602004
4096	Not applicable	93602004
3596	In the formal sector	93602005
424	In the informal sector	93602005
527	Private household	93602005
85	Do not know	93602005
0	Unspecified	93602005
3228	Not applicable	93602005
811	In the formal sector	93602006
319	In the informal sector	93602006
90	Private household	93602006
5	Do not know	93602006
0	Unspecified	93602006
5088	Not applicable	93602006
760	In the formal sector	93602007
155	In the informal sector	93602007
87	Private household	93602007
8	Do not know	93602007
0	Unspecified	93602007
6338	Not applicable	93602007
855	In the formal sector	93602008
162	In the informal sector	93602008
103	Private household	93602008
25	Do not know	93602008
0	Unspecified	93602008
7694	Not applicable	93602008
1059	In the formal sector	93602009
305	In the informal sector	93602009
73	Private household	93602009
20	Do not know	93602009
0	Unspecified	93602009
7484	Not applicable	93602009
747	In the formal sector	93602010
254	In the informal sector	93602010
177	Private household	93602010
45	Do not know	93602010
0	Unspecified	93602010
7567	Not applicable	93602010
791	In the formal sector	93602011
857	In the informal sector	93602011
1189	Private household	93602011
22	Do not know	93602011
0	Unspecified	93602011
6397	Not applicable	93602011
759	In the formal sector	93602012
169	In the informal sector	93602012
73	Private household	93602012
32	Do not know	93602012
0	Unspecified	93602012
7036	Not applicable	93602012
1973	In the formal sector	93604001
970	In the informal sector	93604001
1047	Private household	93604001
202	Do not know	93604001
0	Unspecified	93604001
8854	Not applicable	93604001
957	In the formal sector	93604002
120	In the informal sector	93604002
174	Private household	93604002
51	Do not know	93604002
0	Unspecified	93604002
4736	Not applicable	93604002
1311	In the formal sector	93604003
1369	In the informal sector	93604003
634	Private household	93604003
30	Do not know	93604003
0	Unspecified	93604003
2213	Not applicable	93604003
806	In the formal sector	93604004
113	In the informal sector	93604004
128	Private household	93604004
60	Do not know	93604004
0	Unspecified	93604004
2722	Not applicable	93604004
1101	In the formal sector	93604005
436	In the informal sector	93604005
803	Private household	93604005
61	Do not know	93604005
0	Unspecified	93604005
4770	Not applicable	93604005
1238	In the formal sector	93605001
326	In the informal sector	93605001
381	Private household	93605001
78	Do not know	93605001
0	Unspecified	93605001
8005	Not applicable	93605001
1835	In the formal sector	93605002
665	In the informal sector	93605002
459	Private household	93605002
54	Do not know	93605002
0	Unspecified	93605002
3500	Not applicable	93605002
986	In the formal sector	93605003
179	In the informal sector	93605003
236	Private household	93605003
39	Do not know	93605003
0	Unspecified	93605003
5457	Not applicable	93605003
827	In the formal sector	93605004
164	In the informal sector	93605004
282	Private household	93605004
33	Do not know	93605004
0	Unspecified	93605004
3244	Not applicable	93605004
2197	In the formal sector	93605005
304	In the informal sector	93605005
740	Private household	93605005
79	Do not know	93605005
0	Unspecified	93605005
8893	Not applicable	93605005
1424	In the formal sector	93605006
293	In the informal sector	93605006
485	Private household	93605006
80	Do not know	93605006
0	Unspecified	93605006
7295	Not applicable	93605006
1469	In the formal sector	93605007
476	In the informal sector	93605007
322	Private household	93605007
68	Do not know	93605007
0	Unspecified	93605007
5621	Not applicable	93605007
2543	In the formal sector	93605008
263	In the informal sector	93605008
172	Private household	93605008
58	Do not know	93605008
0	Unspecified	93605008
3071	Not applicable	93605008
1041	In the formal sector	93605009
193	In the informal sector	93605009
77	Private household	93605009
15	Do not know	93605009
0	Unspecified	93605009
3347	Not applicable	93605009
3457	In the formal sector	93606001
489	In the informal sector	93606001
915	Private household	93606001
125	Do not know	93606001
0	Unspecified	93606001
7211	Not applicable	93606001
1355	In the formal sector	93606002
448	In the informal sector	93606002
585	Private household	93606002
17	Do not know	93606002
0	Unspecified	93606002
5490	Not applicable	93606002
773	In the formal sector	93606003
178	In the informal sector	93606003
247	Private household	93606003
52	Do not know	93606003
0	Unspecified	93606003
4584	Not applicable	93606003
2197	In the formal sector	93606004
1015	In the informal sector	93606004
617	Private household	93606004
321	Do not know	93606004
0	Unspecified	93606004
9079	Not applicable	93606004
1058	In the formal sector	93606005
120	In the informal sector	93606005
99	Private household	93606005
6	Do not know	93606005
0	Unspecified	93606005
3296	Not applicable	93606005
1168	In the formal sector	93606006
239	In the informal sector	93606006
322	Private household	93606006
103	Do not know	93606006
0	Unspecified	93606006
3959	Not applicable	93606006
1879	In the formal sector	93606007
618	In the informal sector	93606007
392	Private household	93606007
73	Do not know	93606007
0	Unspecified	93606007
5816	Not applicable	93606007
998	In the formal sector	93606008
393	In the informal sector	93606008
264	Private household	93606008
40	Do not know	93606008
0	Unspecified	93606008
4350	Not applicable	93606008
302	In the formal sector	93606009
208	In the informal sector	93606009
104	Private household	93606009
25	Do not know	93606009
0	Unspecified	93606009
1514	Not applicable	93606009
386	In the formal sector	93607001
387	In the informal sector	93607001
48	Private household	93607001
14	Do not know	93607001
0	Unspecified	93607001
8857	Not applicable	93607001
460	In the formal sector	93607002
98	In the informal sector	93607002
98	Private household	93607002
9	Do not know	93607002
0	Unspecified	93607002
7923	Not applicable	93607002
596	In the formal sector	93607003
114	In the informal sector	93607003
114	Private household	93607003
7	Do not know	93607003
0	Unspecified	93607003
8993	Not applicable	93607003
337	In the formal sector	93607004
172	In the informal sector	93607004
110	Private household	93607004
18	Do not know	93607004
0	Unspecified	93607004
8539	Not applicable	93607004
409	In the formal sector	93607005
119	In the informal sector	93607005
48	Private household	93607005
6	Do not know	93607005
0	Unspecified	93607005
6644	Not applicable	93607005
397	In the formal sector	93607006
125	In the informal sector	93607006
49	Private household	93607006
4	Do not know	93607006
0	Unspecified	93607006
8941	Not applicable	93607006
782	In the formal sector	93607007
194	In the informal sector	93607007
352	Private household	93607007
50	Do not know	93607007
0	Unspecified	93607007
8896	Not applicable	93607007
355	In the formal sector	93607008
78	In the informal sector	93607008
40	Private household	93607008
2	Do not know	93607008
0	Unspecified	93607008
7280	Not applicable	93607008
342	In the formal sector	93607009
65	In the informal sector	93607009
50	Private household	93607009
36	Do not know	93607009
0	Unspecified	93607009
8123	Not applicable	93607009
259	In the formal sector	93607010
109	In the informal sector	93607010
35	Private household	93607010
11	Do not know	93607010
0	Unspecified	93607010
7315	Not applicable	93607010
577	In the formal sector	93607011
114	In the informal sector	93607011
66	Private household	93607011
19	Do not know	93607011
0	Unspecified	93607011
8948	Not applicable	93607011
2785	In the formal sector	93607012
580	In the informal sector	93607012
323	Private household	93607012
47	Do not know	93607012
0	Unspecified	93607012
6910	Not applicable	93607012
683	In the formal sector	93607013
170	In the informal sector	93607013
116	Private household	93607013
7	Do not know	93607013
0	Unspecified	93607013
9541	Not applicable	93607013
543	In the formal sector	93607014
165	In the informal sector	93607014
133	Private household	93607014
8	Do not know	93607014
0	Unspecified	93607014
7572	Not applicable	93607014
251	In the formal sector	93607015
69	In the informal sector	93607015
34	Private household	93607015
9	Do not know	93607015
0	Unspecified	93607015
7339	Not applicable	93607015
819	In the formal sector	93607016
434	In the informal sector	93607016
181	Private household	93607016
19	Do not know	93607016
0	Unspecified	93607016
7715	Not applicable	93607016
351	In the formal sector	93607017
131	In the informal sector	93607017
133	Private household	93607017
2	Do not know	93607017
0	Unspecified	93607017
8184	Not applicable	93607017
1037	In the formal sector	93607018
253	In the informal sector	93607018
128	Private household	93607018
7	Do not know	93607018
0	Unspecified	93607018
10244	Not applicable	93607018
504	In the formal sector	93607019
156	In the informal sector	93607019
72	Private household	93607019
1	Do not know	93607019
0	Unspecified	93607019
7822	Not applicable	93607019
358	In the formal sector	93607020
569	In the informal sector	93607020
270	Private household	93607020
0	Do not know	93607020
0	Unspecified	93607020
9041	Not applicable	93607020
227	In the formal sector	93607021
246	In the informal sector	93607021
193	Private household	93607021
0	Do not know	93607021
0	Unspecified	93607021
5477	Not applicable	93607021
934	In the formal sector	93607022
275	In the informal sector	93607022
144	Private household	93607022
11	Do not know	93607022
0	Unspecified	93607022
8057	Not applicable	93607022
1040	In the formal sector	93607023
339	In the informal sector	93607023
231	Private household	93607023
24	Do not know	93607023
0	Unspecified	93607023
6528	Not applicable	93607023
1682	In the formal sector	93607024
417	In the informal sector	93607024
330	Private household	93607024
54	Do not know	93607024
0	Unspecified	93607024
9673	Not applicable	93607024
1305	In the formal sector	93607025
385	In the informal sector	93607025
155	Private household	93607025
3	Do not know	93607025
0	Unspecified	93607025
9133	Not applicable	93607025
1114	In the formal sector	93607026
169	In the informal sector	93607026
61	Private household	93607026
5	Do not know	93607026
0	Unspecified	93607026
4607	Not applicable	93607026
1845	In the formal sector	93607027
321	In the informal sector	93607027
174	Private household	93607027
22	Do not know	93607027
0	Unspecified	93607027
7094	Not applicable	93607027
2506	In the formal sector	93607028
493	In the informal sector	93607028
250	Private household	93607028
43	Do not know	93607028
0	Unspecified	93607028
9304	Not applicable	93607028
1492	In the formal sector	93607029
393	In the informal sector	93607029
390	Private household	93607029
55	Do not know	93607029
0	Unspecified	93607029
9110	Not applicable	93607029
1033	In the formal sector	93607030
236	In the informal sector	93607030
142	Private household	93607030
11	Do not know	93607030
0	Unspecified	93607030
7001	Not applicable	93607030
5215	In the formal sector	93607031
698	In the informal sector	93607031
709	Private household	93607031
90	Do not know	93607031
0	Unspecified	93607031
14058	Not applicable	93607031
2961	In the formal sector	93607032
306	In the informal sector	93607032
155	Private household	93607032
61	Do not know	93607032
0	Unspecified	93607032
4859	Not applicable	93607032
278	In the formal sector	94701001
139	In the informal sector	94701001
96	Private household	94701001
19	Do not know	94701001
0	Unspecified	94701001
5914	Not applicable	94701001
226	In the formal sector	94701002
50	In the informal sector	94701002
50	Private household	94701002
31	Do not know	94701002
0	Unspecified	94701002
5614	Not applicable	94701002
386	In the formal sector	94701003
101	In the informal sector	94701003
66	Private household	94701003
19	Do not know	94701003
0	Unspecified	94701003
9028	Not applicable	94701003
261	In the formal sector	94701004
90	In the informal sector	94701004
106	Private household	94701004
13	Do not know	94701004
0	Unspecified	94701004
6525	Not applicable	94701004
3275	In the formal sector	94701005
1138	In the informal sector	94701005
1143	Private household	94701005
119	Do not know	94701005
0	Unspecified	94701005
4347	Not applicable	94701005
357	In the formal sector	94701006
103	In the informal sector	94701006
121	Private household	94701006
8	Do not know	94701006
0	Unspecified	94701006
7315	Not applicable	94701006
2541	In the formal sector	94701007
289	In the informal sector	94701007
214	Private household	94701007
68	Do not know	94701007
0	Unspecified	94701007
1966	Not applicable	94701007
1110	In the formal sector	94701008
178	In the informal sector	94701008
94	Private household	94701008
20	Do not know	94701008
0	Unspecified	94701008
6836	Not applicable	94701008
629	In the formal sector	94701009
260	In the informal sector	94701009
124	Private household	94701009
77	Do not know	94701009
0	Unspecified	94701009
7645	Not applicable	94701009
378	In the formal sector	94701010
74	In the informal sector	94701010
155	Private household	94701010
26	Do not know	94701010
0	Unspecified	94701010
7401	Not applicable	94701010
431	In the formal sector	94701011
146	In the informal sector	94701011
31	Private household	94701011
12	Do not know	94701011
0	Unspecified	94701011
6017	Not applicable	94701011
263	In the formal sector	94701012
103	In the informal sector	94701012
40	Private household	94701012
12	Do not know	94701012
0	Unspecified	94701012
8147	Not applicable	94701012
359	In the formal sector	94701013
54	In the informal sector	94701013
84	Private household	94701013
4	Do not know	94701013
0	Unspecified	94701013
6417	Not applicable	94701013
188	In the formal sector	94701014
60	In the informal sector	94701014
82	Private household	94701014
10	Do not know	94701014
0	Unspecified	94701014
5585	Not applicable	94701014
581	In the formal sector	94701015
164	In the informal sector	94701015
103	Private household	94701015
45	Do not know	94701015
0	Unspecified	94701015
8774	Not applicable	94701015
1081	In the formal sector	94701016
183	In the informal sector	94701016
194	Private household	94701016
54	Do not know	94701016
0	Unspecified	94701016
7400	Not applicable	94701016
808	In the formal sector	94702001
397	In the informal sector	94702001
236	Private household	94702001
21	Do not know	94702001
0	Unspecified	94702001
10047	Not applicable	94702001
382	In the formal sector	94702002
173	In the informal sector	94702002
43	Private household	94702002
62	Do not know	94702002
0	Unspecified	94702002
4930	Not applicable	94702002
306	In the formal sector	94702003
180	In the informal sector	94702003
40	Private household	94702003
4	Do not know	94702003
0	Unspecified	94702003
6389	Not applicable	94702003
253	In the formal sector	94702004
81	In the informal sector	94702004
59	Private household	94702004
20	Do not know	94702004
0	Unspecified	94702004
4883	Not applicable	94702004
460	In the formal sector	94702005
99	In the informal sector	94702005
65	Private household	94702005
1	Do not know	94702005
0	Unspecified	94702005
8061	Not applicable	94702005
624	In the formal sector	94702006
193	In the informal sector	94702006
98	Private household	94702006
10	Do not know	94702006
0	Unspecified	94702006
5545	Not applicable	94702006
769	In the formal sector	94702007
290	In the informal sector	94702007
194	Private household	94702007
77	Do not know	94702007
0	Unspecified	94702007
10137	Not applicable	94702007
291	In the formal sector	94702008
47	In the informal sector	94702008
38	Private household	94702008
24	Do not know	94702008
0	Unspecified	94702008
5909	Not applicable	94702008
900	In the formal sector	94702009
288	In the informal sector	94702009
215	Private household	94702009
89	Do not know	94702009
0	Unspecified	94702009
9714	Not applicable	94702009
390	In the formal sector	94702010
55	In the informal sector	94702010
47	Private household	94702010
19	Do not know	94702010
0	Unspecified	94702010
9120	Not applicable	94702010
410	In the formal sector	94702011
42	In the informal sector	94702011
74	Private household	94702011
6	Do not know	94702011
0	Unspecified	94702011
4193	Not applicable	94702011
1342	In the formal sector	94702012
469	In the informal sector	94702012
563	Private household	94702012
34	Do not know	94702012
0	Unspecified	94702012
7296	Not applicable	94702012
1573	In the formal sector	94702013
184	In the informal sector	94702013
150	Private household	94702013
53	Do not know	94702013
0	Unspecified	94702013
2170	Not applicable	94702013
3565	In the formal sector	94702014
900	In the informal sector	94702014
721	Private household	94702014
71	Do not know	94702014
0	Unspecified	94702014
7687	Not applicable	94702014
248	In the formal sector	94702015
184	In the informal sector	94702015
55	Private household	94702015
20	Do not know	94702015
0	Unspecified	94702015
7972	Not applicable	94702015
335	In the formal sector	94702016
143	In the informal sector	94702016
21	Private household	94702016
10	Do not know	94702016
0	Unspecified	94702016
8242	Not applicable	94702016
431	In the formal sector	94702017
164	In the informal sector	94702017
57	Private household	94702017
17	Do not know	94702017
0	Unspecified	94702017
5888	Not applicable	94702017
159	In the formal sector	94702018
67	In the informal sector	94702018
52	Private household	94702018
8	Do not know	94702018
0	Unspecified	94702018
6769	Not applicable	94702018
305	In the formal sector	94702019
133	In the informal sector	94702019
45	Private household	94702019
20	Do not know	94702019
0	Unspecified	94702019
7366	Not applicable	94702019
973	In the formal sector	94702020
370	In the informal sector	94702020
254	Private household	94702020
41	Do not know	94702020
0	Unspecified	94702020
8761	Not applicable	94702020
378	In the formal sector	94702021
275	In the informal sector	94702021
158	Private household	94702021
17	Do not know	94702021
0	Unspecified	94702021
9522	Not applicable	94702021
249	In the formal sector	94702022
37	In the informal sector	94702022
55	Private household	94702022
2	Do not know	94702022
0	Unspecified	94702022
5042	Not applicable	94702022
252	In the formal sector	94702023
120	In the informal sector	94702023
41	Private household	94702023
1	Do not know	94702023
0	Unspecified	94702023
6590	Not applicable	94702023
450	In the formal sector	94702024
200	In the informal sector	94702024
89	Private household	94702024
54	Do not know	94702024
0	Unspecified	94702024
9810	Not applicable	94702024
358	In the formal sector	94702025
99	In the informal sector	94702025
79	Private household	94702025
42	Do not know	94702025
0	Unspecified	94702025
7298	Not applicable	94702025
439	In the formal sector	94702026
197	In the informal sector	94702026
72	Private household	94702026
9	Do not know	94702026
0	Unspecified	94702026
4926	Not applicable	94702026
728	In the formal sector	94702027
262	In the informal sector	94702027
218	Private household	94702027
57	Do not know	94702027
0	Unspecified	94702027
10051	Not applicable	94702027
692	In the formal sector	94702028
242	In the informal sector	94702028
114	Private household	94702028
12	Do not know	94702028
0	Unspecified	94702028
8338	Not applicable	94702028
2086	In the formal sector	94702029
296	In the informal sector	94702029
105	Private household	94702029
26	Do not know	94702029
0	Unspecified	94702029
7380	Not applicable	94702029
1119	In the formal sector	94702030
396	In the informal sector	94702030
179	Private household	94702030
60	Do not know	94702030
0	Unspecified	94702030
6447	Not applicable	94702030
605	In the formal sector	94703001
219	In the informal sector	94703001
158	Private household	94703001
94	Do not know	94703001
0	Unspecified	94703001
8979	Not applicable	94703001
269	In the formal sector	94703002
104	In the informal sector	94703002
101	Private household	94703002
2	Do not know	94703002
0	Unspecified	94703002
6947	Not applicable	94703002
899	In the formal sector	94703003
226	In the informal sector	94703003
103	Private household	94703003
3	Do not know	94703003
0	Unspecified	94703003
9113	Not applicable	94703003
241	In the formal sector	94703004
37	In the informal sector	94703004
29	Private household	94703004
0	Do not know	94703004
0	Unspecified	94703004
7939	Not applicable	94703004
491	In the formal sector	94703005
101	In the informal sector	94703005
28	Private household	94703005
9	Do not know	94703005
0	Unspecified	94703005
8015	Not applicable	94703005
254	In the formal sector	94703006
121	In the informal sector	94703006
48	Private household	94703006
0	Do not know	94703006
0	Unspecified	94703006
7657	Not applicable	94703006
124	In the formal sector	94703007
38	In the informal sector	94703007
8	Private household	94703007
2	Do not know	94703007
0	Unspecified	94703007
6027	Not applicable	94703007
913	In the formal sector	94703008
209	In the informal sector	94703008
65	Private household	94703008
10	Do not know	94703008
0	Unspecified	94703008
13118	Not applicable	94703008
782	In the formal sector	94703009
278	In the informal sector	94703009
64	Private household	94703009
17	Do not know	94703009
0	Unspecified	94703009
9274	Not applicable	94703009
304	In the formal sector	94703010
196	In the informal sector	94703010
70	Private household	94703010
2	Do not know	94703010
0	Unspecified	94703010
6348	Not applicable	94703010
400	In the formal sector	94703011
169	In the informal sector	94703011
94	Private household	94703011
49	Do not know	94703011
0	Unspecified	94703011
5537	Not applicable	94703011
411	In the formal sector	94703012
231	In the informal sector	94703012
36	Private household	94703012
18	Do not know	94703012
0	Unspecified	94703012
8312	Not applicable	94703012
662	In the formal sector	94703013
154	In the informal sector	94703013
60	Private household	94703013
16	Do not know	94703013
0	Unspecified	94703013
10497	Not applicable	94703013
454	In the formal sector	94703014
80	In the informal sector	94703014
61	Private household	94703014
10	Do not know	94703014
0	Unspecified	94703014
5860	Not applicable	94703014
204	In the formal sector	94703015
49	In the informal sector	94703015
16	Private household	94703015
5	Do not know	94703015
0	Unspecified	94703015
6846	Not applicable	94703015
382	In the formal sector	94703016
47	In the informal sector	94703016
29	Private household	94703016
3	Do not know	94703016
0	Unspecified	94703016
6783	Not applicable	94703016
324	In the formal sector	94703017
78	In the informal sector	94703017
33	Private household	94703017
1	Do not know	94703017
0	Unspecified	94703017
8905	Not applicable	94703017
1011	In the formal sector	94703018
321	In the informal sector	94703018
143	Private household	94703018
28	Do not know	94703018
0	Unspecified	94703018
8788	Not applicable	94703018
372	In the formal sector	94703019
155	In the informal sector	94703019
16	Private household	94703019
5	Do not know	94703019
0	Unspecified	94703019
9312	Not applicable	94703019
314	In the formal sector	94703020
157	In the informal sector	94703020
43	Private household	94703020
6	Do not know	94703020
0	Unspecified	94703020
8693	Not applicable	94703020
896	In the formal sector	94703021
319	In the informal sector	94703021
99	Private household	94703021
8	Do not know	94703021
0	Unspecified	94703021
9059	Not applicable	94703021
281	In the formal sector	94703022
75	In the informal sector	94703022
52	Private household	94703022
1	Do not know	94703022
0	Unspecified	94703022
7408	Not applicable	94703022
457	In the formal sector	94703023
88	In the informal sector	94703023
97	Private household	94703023
6	Do not know	94703023
0	Unspecified	94703023
10281	Not applicable	94703023
267	In the formal sector	94703024
95	In the informal sector	94703024
37	Private household	94703024
3	Do not know	94703024
0	Unspecified	94703024
7471	Not applicable	94703024
365	In the formal sector	94703025
122	In the informal sector	94703025
61	Private household	94703025
5	Do not know	94703025
0	Unspecified	94703025
9553	Not applicable	94703025
568	In the formal sector	94703026
75	In the informal sector	94703026
104	Private household	94703026
45	Do not know	94703026
0	Unspecified	94703026
8377	Not applicable	94703026
295	In the formal sector	94703027
110	In the informal sector	94703027
19	Private household	94703027
1	Do not know	94703027
0	Unspecified	94703027
7689	Not applicable	94703027
390	In the formal sector	94703028
74	In the informal sector	94703028
55	Private household	94703028
15	Do not know	94703028
0	Unspecified	94703028
10674	Not applicable	94703028
209	In the formal sector	94703029
58	In the informal sector	94703029
15	Private household	94703029
33	Do not know	94703029
0	Unspecified	94703029
6201	Not applicable	94703029
325	In the formal sector	94703030
77	In the informal sector	94703030
43	Private household	94703030
11	Do not know	94703030
0	Unspecified	94703030
8107	Not applicable	94703030
195	In the formal sector	94703031
48	In the informal sector	94703031
30	Private household	94703031
6	Do not know	94703031
0	Unspecified	94703031
6573	Not applicable	94703031
161	In the formal sector	94704001
56	In the informal sector	94704001
40	Private household	94704001
11	Do not know	94704001
0	Unspecified	94704001
5820	Not applicable	94704001
273	In the formal sector	94704002
106	In the informal sector	94704002
34	Private household	94704002
3	Do not know	94704002
0	Unspecified	94704002
7608	Not applicable	94704002
424	In the formal sector	94704003
151	In the informal sector	94704003
36	Private household	94704003
1	Do not know	94704003
0	Unspecified	94704003
6820	Not applicable	94704003
123	In the formal sector	94704004
39	In the informal sector	94704004
19	Private household	94704004
3	Do not know	94704004
0	Unspecified	94704004
5809	Not applicable	94704004
334	In the formal sector	94704005
78	In the informal sector	94704005
30	Private household	94704005
2	Do not know	94704005
0	Unspecified	94704005
5539	Not applicable	94704005
728	In the formal sector	94704006
220	In the informal sector	94704006
126	Private household	94704006
34	Do not know	94704006
0	Unspecified	94704006
7457	Not applicable	94704006
469	In the formal sector	94704007
217	In the informal sector	94704007
100	Private household	94704007
5	Do not know	94704007
0	Unspecified	94704007
7491	Not applicable	94704007
612	In the formal sector	94704008
209	In the informal sector	94704008
84	Private household	94704008
3	Do not know	94704008
0	Unspecified	94704008
6022	Not applicable	94704008
320	In the formal sector	94704009
238	In the informal sector	94704009
43	Private household	94704009
2	Do not know	94704009
0	Unspecified	94704009
5842	Not applicable	94704009
424	In the formal sector	94704010
258	In the informal sector	94704010
59	Private household	94704010
5	Do not know	94704010
0	Unspecified	94704010
4615	Not applicable	94704010
356	In the formal sector	94704011
227	In the informal sector	94704011
32	Private household	94704011
13	Do not know	94704011
0	Unspecified	94704011
8820	Not applicable	94704011
1526	In the formal sector	94704012
240	In the informal sector	94704012
81	Private household	94704012
4	Do not know	94704012
0	Unspecified	94704012
6153	Not applicable	94704012
636	In the formal sector	94704013
82	In the informal sector	94704013
74	Private household	94704013
27	Do not know	94704013
0	Unspecified	94704013
6419	Not applicable	94704013
1013	In the formal sector	94705001
579	In the informal sector	94705001
274	Private household	94705001
33	Do not know	94705001
0	Unspecified	94705001
6503	Not applicable	94705001
2958	In the formal sector	94705002
433	In the informal sector	94705002
262	Private household	94705002
65	Do not know	94705002
0	Unspecified	94705002
11270	Not applicable	94705002
585	In the formal sector	94705003
270	In the informal sector	94705003
89	Private household	94705003
18	Do not know	94705003
0	Unspecified	94705003
8731	Not applicable	94705003
699	In the formal sector	94705004
87	In the informal sector	94705004
38	Private household	94705004
13	Do not know	94705004
0	Unspecified	94705004
4241	Not applicable	94705004
1446	In the formal sector	94705005
446	In the informal sector	94705005
286	Private household	94705005
23	Do not know	94705005
0	Unspecified	94705005
11839	Not applicable	94705005
992	In the formal sector	94705006
153	In the informal sector	94705006
83	Private household	94705006
9	Do not know	94705006
0	Unspecified	94705006
7794	Not applicable	94705006
1441	In the formal sector	94705007
616	In the informal sector	94705007
192	Private household	94705007
97	Do not know	94705007
0	Unspecified	94705007
9738	Not applicable	94705007
1022	In the formal sector	94705008
173	In the informal sector	94705008
42	Private household	94705008
18	Do not know	94705008
0	Unspecified	94705008
10040	Not applicable	94705008
722	In the formal sector	94705009
284	In the informal sector	94705009
63	Private household	94705009
16	Do not know	94705009
0	Unspecified	94705009
10524	Not applicable	94705009
1513	In the formal sector	94705010
568	In the informal sector	94705010
125	Private household	94705010
13	Do not know	94705010
0	Unspecified	94705010
10359	Not applicable	94705010
1186	In the formal sector	94705011
61	In the informal sector	94705011
47	Private household	94705011
5	Do not know	94705011
0	Unspecified	94705011
6113	Not applicable	94705011
882	In the formal sector	94705012
125	In the informal sector	94705012
40	Private household	94705012
9	Do not know	94705012
0	Unspecified	94705012
7741	Not applicable	94705012
2147	In the formal sector	94705013
720	In the informal sector	94705013
485	Private household	94705013
60	Do not know	94705013
0	Unspecified	94705013
13595	Not applicable	94705013
1078	In the formal sector	94705014
410	In the informal sector	94705014
146	Private household	94705014
28	Do not know	94705014
0	Unspecified	94705014
10944	Not applicable	94705014
307	In the formal sector	94705015
123	In the informal sector	94705015
79	Private household	94705015
5	Do not know	94705015
0	Unspecified	94705015
7773	Not applicable	94705015
551	In the formal sector	94705016
130	In the informal sector	94705016
35	Private household	94705016
14	Do not know	94705016
0	Unspecified	94705016
7413	Not applicable	94705016
989	In the formal sector	94705017
285	In the informal sector	94705017
175	Private household	94705017
26	Do not know	94705017
0	Unspecified	94705017
10059	Not applicable	94705017
2894	In the formal sector	94705018
537	In the informal sector	94705018
360	Private household	94705018
202	Do not know	94705018
0	Unspecified	94705018
7958	Not applicable	94705018
1318	In the formal sector	94705019
200	In the informal sector	94705019
264	Private household	94705019
8	Do not know	94705019
0	Unspecified	94705019
9009	Not applicable	94705019
1003	In the formal sector	94705020
274	In the informal sector	94705020
275	Private household	94705020
50	Do not know	94705020
0	Unspecified	94705020
10608	Not applicable	94705020
392	In the formal sector	94705021
119	In the informal sector	94705021
15	Private household	94705021
7	Do not know	94705021
0	Unspecified	94705021
5957	Not applicable	94705021
503	In the formal sector	94705022
61	In the informal sector	94705022
81	Private household	94705022
7	Do not know	94705022
0	Unspecified	94705022
7982	Not applicable	94705022
516	In the formal sector	94705023
119	In the informal sector	94705023
186	Private household	94705023
5	Do not know	94705023
0	Unspecified	94705023
8794	Not applicable	94705023
259	In the formal sector	94705024
110	In the informal sector	94705024
98	Private household	94705024
18	Do not know	94705024
0	Unspecified	94705024
8467	Not applicable	94705024
1288	In the formal sector	94705025
534	In the informal sector	94705025
413	Private household	94705025
159	Do not know	94705025
0	Unspecified	94705025
11665	Not applicable	94705025
224	In the formal sector	94705026
162	In the informal sector	94705026
12	Private household	94705026
16	Do not know	94705026
0	Unspecified	94705026
7293	Not applicable	94705026
1212	In the formal sector	94705027
163	In the informal sector	94705027
121	Private household	94705027
25	Do not know	94705027
0	Unspecified	94705027
10943	Not applicable	94705027
1120	In the formal sector	94705028
201	In the informal sector	94705028
102	Private household	94705028
38	Do not know	94705028
0	Unspecified	94705028
10282	Not applicable	94705028
547	In the formal sector	94705029
132	In the informal sector	94705029
93	Private household	94705029
5	Do not know	94705029
0	Unspecified	94705029
10743	Not applicable	94705029
1429	In the formal sector	94705030
301	In the informal sector	94705030
379	Private household	94705030
68	Do not know	94705030
0	Unspecified	94705030
11617	Not applicable	94705030
1988	In the formal sector	94705031
1251	In the informal sector	94705031
273	Private household	94705031
205	Do not know	94705031
0	Unspecified	94705031
9433	Not applicable	94705031
423	In the formal sector	83001001
223	In the informal sector	83001001
39	Private household	83001001
38	Do not know	83001001
0	Unspecified	83001001
7967	Not applicable	83001001
373	In the formal sector	83001002
228	In the informal sector	83001002
91	Private household	83001002
129	Do not know	83001002
0	Unspecified	83001002
6802	Not applicable	83001002
457	In the formal sector	83001003
199	In the informal sector	83001003
54	Private household	83001003
21	Do not know	83001003
0	Unspecified	83001003
7274	Not applicable	83001003
959	In the formal sector	83001004
169	In the informal sector	83001004
146	Private household	83001004
21	Do not know	83001004
0	Unspecified	83001004
6843	Not applicable	83001004
404	In the formal sector	83001005
240	In the informal sector	83001005
72	Private household	83001005
12	Do not know	83001005
0	Unspecified	83001005
5570	Not applicable	83001005
403	In the formal sector	83001006
119	In the informal sector	83001006
47	Private household	83001006
33	Do not know	83001006
0	Unspecified	83001006
7228	Not applicable	83001006
163	In the formal sector	83001007
44	In the informal sector	83001007
7	Private household	83001007
0	Do not know	83001007
0	Unspecified	83001007
2186	Not applicable	83001007
211	In the formal sector	83001008
65	In the informal sector	83001008
47	Private household	83001008
7	Do not know	83001008
0	Unspecified	83001008
3480	Not applicable	83001008
914	In the formal sector	83001009
326	In the informal sector	83001009
167	Private household	83001009
55	Do not know	83001009
0	Unspecified	83001009
11349	Not applicable	83001009
764	In the formal sector	83001010
188	In the informal sector	83001010
76	Private household	83001010
59	Do not know	83001010
0	Unspecified	83001010
5621	Not applicable	83001010
355	In the formal sector	83001011
189	In the informal sector	83001011
19	Private household	83001011
29	Do not know	83001011
0	Unspecified	83001011
6792	Not applicable	83001011
541	In the formal sector	83001012
198	In the informal sector	83001012
97	Private household	83001012
17	Do not know	83001012
0	Unspecified	83001012
6385	Not applicable	83001012
593	In the formal sector	83001013
231	In the informal sector	83001013
66	Private household	83001013
10	Do not know	83001013
0	Unspecified	83001013
3947	Not applicable	83001013
1739	In the formal sector	83001014
289	In the informal sector	83001014
133	Private household	83001014
24	Do not know	83001014
0	Unspecified	83001014
6990	Not applicable	83001014
2050	In the formal sector	83001015
535	In the informal sector	83001015
383	Private household	83001015
69	Do not know	83001015
0	Unspecified	83001015
8335	Not applicable	83001015
612	In the formal sector	83001016
378	In the informal sector	83001016
96	Private household	83001016
78	Do not know	83001016
0	Unspecified	83001016
8179	Not applicable	83001016
899	In the formal sector	83001017
187	In the informal sector	83001017
63	Private household	83001017
8	Do not know	83001017
0	Unspecified	83001017
2711	Not applicable	83001017
1031	In the formal sector	83001018
416	In the informal sector	83001018
197	Private household	83001018
23	Do not know	83001018
0	Unspecified	83001018
8354	Not applicable	83001018
499	In the formal sector	83001019
102	In the informal sector	83001019
21	Private household	83001019
24	Do not know	83001019
0	Unspecified	83001019
5846	Not applicable	83001019
479	In the formal sector	83001020
107	In the informal sector	83001020
74	Private household	83001020
52	Do not know	83001020
0	Unspecified	83001020
4535	Not applicable	83001020
1943	In the formal sector	83001021
835	In the informal sector	83001021
307	Private household	83001021
59	Do not know	83001021
0	Unspecified	83001021
6773	Not applicable	83001021
235	In the formal sector	83001022
138	In the informal sector	83001022
29	Private household	83001022
8	Do not know	83001022
0	Unspecified	83001022
1392	Not applicable	83001022
1859	In the formal sector	83001023
624	In the informal sector	83001023
192	Private household	83001023
50	Do not know	83001023
0	Unspecified	83001023
6680	Not applicable	83001023
1109	In the formal sector	83001024
371	In the informal sector	83001024
293	Private household	83001024
126	Do not know	83001024
0	Unspecified	83001024
8856	Not applicable	83001024
470	In the formal sector	83001025
107	In the informal sector	83001025
95	Private household	83001025
21	Do not know	83001025
0	Unspecified	83001025
6139	Not applicable	83001025
1345	In the formal sector	83002001
123	In the informal sector	83002001
294	Private household	83002001
62	Do not know	83002001
0	Unspecified	83002001
4276	Not applicable	83002001
1551	In the formal sector	83002002
286	In the informal sector	83002002
383	Private household	83002002
60	Do not know	83002002
0	Unspecified	83002002
6613	Not applicable	83002002
1739	In the formal sector	83002003
336	In the informal sector	83002003
336	Private household	83002003
61	Do not know	83002003
0	Unspecified	83002003
6877	Not applicable	83002003
1063	In the formal sector	83002004
389	In the informal sector	83002004
209	Private household	83002004
17	Do not know	83002004
0	Unspecified	83002004
3362	Not applicable	83002004
891	In the formal sector	83002005
107	In the informal sector	83002005
98	Private household	83002005
2	Do not know	83002005
0	Unspecified	83002005
2331	Not applicable	83002005
1477	In the formal sector	83002006
145	In the informal sector	83002006
122	Private household	83002006
120	Do not know	83002006
0	Unspecified	83002006
3441	Not applicable	83002006
2063	In the formal sector	83002007
180	In the informal sector	83002007
163	Private household	83002007
94	Do not know	83002007
0	Unspecified	83002007
3112	Not applicable	83002007
4476	In the formal sector	83002008
711	In the informal sector	83002008
461	Private household	83002008
136	Do not know	83002008
0	Unspecified	83002008
7813	Not applicable	83002008
1657	In the formal sector	83002009
326	In the informal sector	83002009
483	Private household	83002009
74	Do not know	83002009
0	Unspecified	83002009
7250	Not applicable	83002009
898	In the formal sector	83002010
729	In the informal sector	83002010
176	Private household	83002010
24	Do not know	83002010
0	Unspecified	83002010
6656	Not applicable	83002010
937	In the formal sector	83002011
314	In the informal sector	83002011
91	Private household	83002011
29	Do not know	83002011
0	Unspecified	83002011
5917	Not applicable	83002011
325	In the formal sector	83002012
267	In the informal sector	83002012
28	Private household	83002012
38	Do not know	83002012
0	Unspecified	83002012
2617	Not applicable	83002012
1538	In the formal sector	83002013
158	In the informal sector	83002013
320	Private household	83002013
25	Do not know	83002013
0	Unspecified	83002013
6914	Not applicable	83002013
827	In the formal sector	83002014
120	In the informal sector	83002014
236	Private household	83002014
7	Do not know	83002014
0	Unspecified	83002014
5181	Not applicable	83002014
1043	In the formal sector	83002015
788	In the informal sector	83002015
84	Private household	83002015
50	Do not know	83002015
0	Unspecified	83002015
8137	Not applicable	83002015
3960	In the formal sector	83002016
622	In the informal sector	83002016
575	Private household	83002016
72	Do not know	83002016
0	Unspecified	83002016
10491	Not applicable	83002016
1631	In the formal sector	83002017
211	In the informal sector	83002017
192	Private household	83002017
38	Do not know	83002017
0	Unspecified	83002017
5081	Not applicable	83002017
776	In the formal sector	83002018
746	In the informal sector	83002018
249	Private household	83002018
26	Do not know	83002018
0	Unspecified	83002018
4659	Not applicable	83002018
1572	In the formal sector	83002019
453	In the informal sector	83002019
152	Private household	83002019
75	Do not know	83002019
0	Unspecified	83002019
6209	Not applicable	83002019
492	In the formal sector	83003001
396	In the informal sector	83003001
387	Private household	83003001
42	Do not know	83003001
0	Unspecified	83003001
8817	Not applicable	83003001
976	In the formal sector	83003002
573	In the informal sector	83003002
195	Private household	83003002
38	Do not know	83003002
0	Unspecified	83003002
14664	Not applicable	83003002
441	In the formal sector	83003003
506	In the informal sector	83003003
103	Private household	83003003
107	Do not know	83003003
0	Unspecified	83003003
11849	Not applicable	83003003
818	In the formal sector	83003004
273	In the informal sector	83003004
23	Private household	83003004
217	Do not know	83003004
0	Unspecified	83003004
4532	Not applicable	83003004
1089	In the formal sector	83003005
382	In the informal sector	83003005
163	Private household	83003005
105	Do not know	83003005
0	Unspecified	83003005
10448	Not applicable	83003005
952	In the formal sector	83003006
674	In the informal sector	83003006
80	Private household	83003006
195	Do not know	83003006
0	Unspecified	83003006
6376	Not applicable	83003006
1974	In the formal sector	83003007
215	In the informal sector	83003007
97	Private household	83003007
98	Do not know	83003007
0	Unspecified	83003007
3699	Not applicable	83003007
1070	In the formal sector	83003008
374	In the informal sector	83003008
135	Private household	83003008
143	Do not know	83003008
0	Unspecified	83003008
7373	Not applicable	83003008
1120	In the formal sector	83003009
529	In the informal sector	83003009
325	Private household	83003009
193	Do not know	83003009
0	Unspecified	83003009
11861	Not applicable	83003009
1431	In the formal sector	83003010
326	In the informal sector	83003010
100	Private household	83003010
34	Do not know	83003010
0	Unspecified	83003010
4860	Not applicable	83003010
1722	In the formal sector	83003011
458	In the informal sector	83003011
221	Private household	83003011
110	Do not know	83003011
0	Unspecified	83003011
9810	Not applicable	83003011
1090	In the formal sector	83003012
135	In the informal sector	83003012
88	Private household	83003012
15	Do not know	83003012
0	Unspecified	83003012
5055	Not applicable	83003012
728	In the formal sector	83003013
179	In the informal sector	83003013
163	Private household	83003013
48	Do not know	83003013
0	Unspecified	83003013
6333	Not applicable	83003013
2134	In the formal sector	83003014
303	In the informal sector	83003014
112	Private household	83003014
80	Do not know	83003014
0	Unspecified	83003014
6767	Not applicable	83003014
743	In the formal sector	83003015
482	In the informal sector	83003015
187	Private household	83003015
124	Do not know	83003015
0	Unspecified	83003015
6917	Not applicable	83003015
815	In the formal sector	83003016
91	In the informal sector	83003016
61	Private household	83003016
13	Do not know	83003016
0	Unspecified	83003016
4721	Not applicable	83003016
670	In the formal sector	83003017
376	In the informal sector	83003017
42	Private household	83003017
25	Do not know	83003017
0	Unspecified	83003017
5770	Not applicable	83003017
201	In the formal sector	83003018
90	In the informal sector	83003018
9	Private household	83003018
44	Do not know	83003018
0	Unspecified	83003018
3061	Not applicable	83003018
1190	In the formal sector	83003019
740	In the informal sector	83003019
57	Private household	83003019
216	Do not know	83003019
0	Unspecified	83003019
7917	Not applicable	83003019
1132	In the formal sector	83004001
177	In the informal sector	83004001
261	Private household	83004001
26	Do not know	83004001
0	Unspecified	83004001
5958	Not applicable	83004001
556	In the formal sector	83004002
49	In the informal sector	83004002
38	Private household	83004002
0	Do not know	83004002
0	Unspecified	83004002
2769	Not applicable	83004002
1449	In the formal sector	83004003
244	In the informal sector	83004003
214	Private household	83004003
24	Do not know	83004003
0	Unspecified	83004003
5936	Not applicable	83004003
1727	In the formal sector	83004004
282	In the informal sector	83004004
311	Private household	83004004
44	Do not know	83004004
0	Unspecified	83004004
4398	Not applicable	83004004
878	In the formal sector	83004005
92	In the informal sector	83004005
49	Private household	83004005
23	Do not know	83004005
0	Unspecified	83004005
5810	Not applicable	83004005
734	In the formal sector	83004006
554	In the informal sector	83004006
241	Private household	83004006
20	Do not know	83004006
0	Unspecified	83004006
7521	Not applicable	83004006
1110	In the formal sector	83004007
244	In the informal sector	83004007
161	Private household	83004007
13	Do not know	83004007
0	Unspecified	83004007
5420	Not applicable	83004007
934	In the formal sector	83004008
384	In the informal sector	83004008
58	Private household	83004008
40	Do not know	83004008
0	Unspecified	83004008
6446	Not applicable	83004008
249	In the formal sector	83004009
38	In the informal sector	83004009
12	Private household	83004009
18	Do not know	83004009
0	Unspecified	83004009
5141	Not applicable	83004009
717	In the formal sector	83004010
537	In the informal sector	83004010
160	Private household	83004010
22	Do not know	83004010
0	Unspecified	83004010
11177	Not applicable	83004010
289	In the formal sector	83004011
147	In the informal sector	83004011
43	Private household	83004011
16	Do not know	83004011
0	Unspecified	83004011
8343	Not applicable	83004011
1366	In the formal sector	83005001
148	In the informal sector	83005001
170	Private household	83005001
38	Do not know	83005001
0	Unspecified	83005001
4473	Not applicable	83005001
921	In the formal sector	83005002
172	In the informal sector	83005002
37	Private household	83005002
20	Do not know	83005002
0	Unspecified	83005002
3135	Not applicable	83005002
1854	In the formal sector	83005003
279	In the informal sector	83005003
237	Private household	83005003
98	Do not know	83005003
0	Unspecified	83005003
5236	Not applicable	83005003
1773	In the formal sector	83005004
259	In the informal sector	83005004
349	Private household	83005004
116	Do not know	83005004
0	Unspecified	83005004
3350	Not applicable	83005004
1584	In the formal sector	83005005
159	In the informal sector	83005005
231	Private household	83005005
32	Do not know	83005005
0	Unspecified	83005005
5967	Not applicable	83005005
825	In the formal sector	83005006
292	In the informal sector	83005006
196	Private household	83005006
21	Do not know	83005006
0	Unspecified	83005006
3786	Not applicable	83005006
1434	In the formal sector	83005007
55	In the informal sector	83005007
206	Private household	83005007
12	Do not know	83005007
0	Unspecified	83005007
4484	Not applicable	83005007
3638	In the formal sector	83005008
179	In the informal sector	83005008
191	Private household	83005008
101	Do not know	83005008
0	Unspecified	83005008
5318	Not applicable	83005008
780	In the formal sector	83005009
1295	In the informal sector	83005009
132	Private household	83005009
16	Do not know	83005009
0	Unspecified	83005009
4940	Not applicable	83005009
2321	In the formal sector	83005010
179	In the informal sector	83005010
98	Private household	83005010
26	Do not know	83005010
0	Unspecified	83005010
3060	Not applicable	83005010
2137	In the formal sector	83005011
256	In the informal sector	83005011
474	Private household	83005011
96	Do not know	83005011
0	Unspecified	83005011
10162	Not applicable	83005011
2029	In the formal sector	83005012
995	In the informal sector	83005012
220	Private household	83005012
51	Do not know	83005012
0	Unspecified	83005012
6768	Not applicable	83005012
574	In the formal sector	83005013
980	In the informal sector	83005013
160	Private household	83005013
29	Do not know	83005013
0	Unspecified	83005013
5014	Not applicable	83005013
868	In the formal sector	83005014
250	In the informal sector	83005014
160	Private household	83005014
29	Do not know	83005014
0	Unspecified	83005014
6340	Not applicable	83005014
2650	In the formal sector	83005015
327	In the informal sector	83005015
543	Private household	83005015
35	Do not know	83005015
0	Unspecified	83005015
8926	Not applicable	83005015
1268	In the formal sector	83006001
235	In the informal sector	83006001
212	Private household	83006001
19	Do not know	83006001
0	Unspecified	83006001
5905	Not applicable	83006001
1398	In the formal sector	83006002
139	In the informal sector	83006002
172	Private household	83006002
7	Do not know	83006002
0	Unspecified	83006002
5698	Not applicable	83006002
1328	In the formal sector	83006003
281	In the informal sector	83006003
246	Private household	83006003
49	Do not know	83006003
0	Unspecified	83006003
3201	Not applicable	83006003
1320	In the formal sector	83006004
244	In the informal sector	83006004
212	Private household	83006004
15	Do not know	83006004
0	Unspecified	83006004
6388	Not applicable	83006004
1488	In the formal sector	83006005
284	In the informal sector	83006005
361	Private household	83006005
35	Do not know	83006005
0	Unspecified	83006005
4821	Not applicable	83006005
990	In the formal sector	83006006
316	In the informal sector	83006006
101	Private household	83006006
7	Do not know	83006006
0	Unspecified	83006006
5650	Not applicable	83006006
2630	In the formal sector	83007001
441	In the informal sector	83007001
791	Private household	83007001
102	Do not know	83007001
0	Unspecified	83007001
9371	Not applicable	83007001
1573	In the formal sector	83007002
189	In the informal sector	83007002
453	Private household	83007002
127	Do not know	83007002
0	Unspecified	83007002
7775	Not applicable	83007002
1613	In the formal sector	83007003
149	In the informal sector	83007003
304	Private household	83007003
16	Do not know	83007003
0	Unspecified	83007003
7151	Not applicable	83007003
1078	In the formal sector	83007004
67	In the informal sector	83007004
436	Private household	83007004
53	Do not know	83007004
0	Unspecified	83007004
4793	Not applicable	83007004
3993	In the formal sector	83007005
248	In the informal sector	83007005
189	Private household	83007005
94	Do not know	83007005
0	Unspecified	83007005
4694	Not applicable	83007005
846	In the formal sector	83007006
77	In the informal sector	83007006
133	Private household	83007006
24	Do not know	83007006
0	Unspecified	83007006
3888	Not applicable	83007006
2395	In the formal sector	83007007
221	In the informal sector	83007007
114	Private household	83007007
12	Do not know	83007007
0	Unspecified	83007007
4178	Not applicable	83007007
1779	In the formal sector	83007008
141	In the informal sector	83007008
138	Private household	83007008
21	Do not know	83007008
0	Unspecified	83007008
4817	Not applicable	83007008
1598	In the formal sector	83007009
164	In the informal sector	83007009
395	Private household	83007009
9	Do not know	83007009
0	Unspecified	83007009
4222	Not applicable	83007009
2557	In the formal sector	83007010
481	In the informal sector	83007010
119	Private household	83007010
146	Do not know	83007010
0	Unspecified	83007010
7111	Not applicable	83007010
2076	In the formal sector	83007011
288	In the informal sector	83007011
444	Private household	83007011
47	Do not know	83007011
0	Unspecified	83007011
5239	Not applicable	83007011
2445	In the formal sector	83007012
439	In the informal sector	83007012
777	Private household	83007012
132	Do not know	83007012
0	Unspecified	83007012
6927	Not applicable	83007012
1200	In the formal sector	83007013
254	In the informal sector	83007013
289	Private household	83007013
62	Do not know	83007013
0	Unspecified	83007013
5328	Not applicable	83007013
1062	In the formal sector	83007014
105	In the informal sector	83007014
251	Private household	83007014
54	Do not know	83007014
0	Unspecified	83007014
3392	Not applicable	83007014
3613	In the formal sector	83007015
704	In the informal sector	83007015
497	Private household	83007015
72	Do not know	83007015
0	Unspecified	83007015
8074	Not applicable	83007015
2972	In the formal sector	83007016
539	In the informal sector	83007016
275	Private household	83007016
233	Do not know	83007016
0	Unspecified	83007016
9353	Not applicable	83007016
1738	In the formal sector	83007017
208	In the informal sector	83007017
366	Private household	83007017
55	Do not know	83007017
0	Unspecified	83007017
3007	Not applicable	83007017
4457	In the formal sector	83007018
265	In the informal sector	83007018
426	Private household	83007018
243	Do not know	83007018
0	Unspecified	83007018
5431	Not applicable	83007018
3505	In the formal sector	83007019
564	In the informal sector	83007019
671	Private household	83007019
30	Do not know	83007019
0	Unspecified	83007019
13377	Not applicable	83007019
2483	In the formal sector	83007020
555	In the informal sector	83007020
360	Private household	83007020
273	Do not know	83007020
0	Unspecified	83007020
8412	Not applicable	83007020
3937	In the formal sector	83007021
137	In the informal sector	83007021
279	Private household	83007021
148	Do not know	83007021
0	Unspecified	83007021
3490	Not applicable	83007021
1976	In the formal sector	83007022
206	In the informal sector	83007022
618	Private household	83007022
31	Do not know	83007022
0	Unspecified	83007022
7665	Not applicable	83007022
1039	In the formal sector	83007023
139	In the informal sector	83007023
228	Private household	83007023
69	Do not know	83007023
0	Unspecified	83007023
3956	Not applicable	83007023
1371	In the formal sector	83007024
154	In the informal sector	83007024
153	Private household	83007024
81	Do not know	83007024
0	Unspecified	83007024
5980	Not applicable	83007024
5219	In the formal sector	83007025
174	In the informal sector	83007025
389	Private household	83007025
182	Do not know	83007025
0	Unspecified	83007025
5163	Not applicable	83007025
2195	In the formal sector	83007026
522	In the informal sector	83007026
645	Private household	83007026
62	Do not know	83007026
0	Unspecified	83007026
8163	Not applicable	83007026
1417	In the formal sector	83007027
205	In the informal sector	83007027
44	Private household	83007027
13	Do not know	83007027
0	Unspecified	83007027
3826	Not applicable	83007027
4330	In the formal sector	83007028
394	In the informal sector	83007028
523	Private household	83007028
123	Do not know	83007028
0	Unspecified	83007028
7813	Not applicable	83007028
1256	In the formal sector	83007029
103	In the informal sector	83007029
283	Private household	83007029
20	Do not know	83007029
0	Unspecified	83007029
3350	Not applicable	83007029
4616	In the formal sector	83007030
230	In the informal sector	83007030
191	Private household	83007030
153	Do not know	83007030
0	Unspecified	83007030
4587	Not applicable	83007030
2181	In the formal sector	83007031
581	In the informal sector	83007031
381	Private household	83007031
62	Do not know	83007031
0	Unspecified	83007031
7854	Not applicable	83007031
2133	In the formal sector	83007032
321	In the informal sector	83007032
241	Private household	83007032
8	Do not know	83007032
0	Unspecified	83007032
5440	Not applicable	83007032
1401	In the formal sector	83101001
84	In the informal sector	83101001
129	Private household	83101001
69	Do not know	83101001
0	Unspecified	83101001
4923	Not applicable	83101001
974	In the formal sector	83101002
81	In the informal sector	83101002
176	Private household	83101002
30	Do not know	83101002
0	Unspecified	83101002
3990	Not applicable	83101002
2282	In the formal sector	83101003
547	In the informal sector	83101003
465	Private household	83101003
131	Do not know	83101003
0	Unspecified	83101003
10609	Not applicable	83101003
856	In the formal sector	83101004
151	In the informal sector	83101004
276	Private household	83101004
55	Do not know	83101004
0	Unspecified	83101004
4684	Not applicable	83101004
1287	In the formal sector	83101005
269	In the informal sector	83101005
209	Private household	83101005
111	Do not know	83101005
0	Unspecified	83101005
5594	Not applicable	83101005
1512	In the formal sector	83101006
124	In the informal sector	83101006
152	Private household	83101006
76	Do not know	83101006
0	Unspecified	83101006
4780	Not applicable	83101006
2533	In the formal sector	83101007
659	In the informal sector	83101007
430	Private household	83101007
165	Do not know	83101007
0	Unspecified	83101007
7535	Not applicable	83101007
1709	In the formal sector	83101008
317	In the informal sector	83101008
518	Private household	83101008
127	Do not know	83101008
0	Unspecified	83101008
3410	Not applicable	83101008
2873	In the formal sector	83101009
879	In the informal sector	83101009
510	Private household	83101009
203	Do not know	83101009
0	Unspecified	83101009
7559	Not applicable	83101009
3191	In the formal sector	83102001
510	In the informal sector	83102001
571	Private household	83102001
80	Do not know	83102001
0	Unspecified	83102001
11252	Not applicable	83102001
1784	In the formal sector	83102002
323	In the informal sector	83102002
418	Private household	83102002
55	Do not know	83102002
0	Unspecified	83102002
6769	Not applicable	83102002
1134	In the formal sector	83102003
101	In the informal sector	83102003
140	Private household	83102003
50	Do not know	83102003
0	Unspecified	83102003
2748	Not applicable	83102003
2031	In the formal sector	83102004
372	In the informal sector	83102004
187	Private household	83102004
35	Do not know	83102004
0	Unspecified	83102004
7487	Not applicable	83102004
3148	In the formal sector	83102005
85	In the informal sector	83102005
151	Private household	83102005
19	Do not know	83102005
0	Unspecified	83102005
6962	Not applicable	83102005
3203	In the formal sector	83102006
618	In the informal sector	83102006
464	Private household	83102006
20	Do not know	83102006
0	Unspecified	83102006
10150	Not applicable	83102006
2295	In the formal sector	83102007
200	In the informal sector	83102007
116	Private household	83102007
33	Do not know	83102007
0	Unspecified	83102007
5643	Not applicable	83102007
2668	In the formal sector	83102008
561	In the informal sector	83102008
443	Private household	83102008
42	Do not know	83102008
0	Unspecified	83102008
9240	Not applicable	83102008
2227	In the formal sector	83102009
266	In the informal sector	83102009
747	Private household	83102009
49	Do not know	83102009
0	Unspecified	83102009
7257	Not applicable	83102009
1825	In the formal sector	83102010
282	In the informal sector	83102010
215	Private household	83102010
15	Do not know	83102010
0	Unspecified	83102010
5096	Not applicable	83102010
1926	In the formal sector	83102011
181	In the informal sector	83102011
67	Private household	83102011
28	Do not know	83102011
0	Unspecified	83102011
5115	Not applicable	83102011
3918	In the formal sector	83102012
388	In the informal sector	83102012
719	Private household	83102012
57	Do not know	83102012
0	Unspecified	83102012
10173	Not applicable	83102012
1540	In the formal sector	83102013
152	In the informal sector	83102013
211	Private household	83102013
63	Do not know	83102013
0	Unspecified	83102013
4329	Not applicable	83102013
3622	In the formal sector	83102014
615	In the informal sector	83102014
740	Private household	83102014
134	Do not know	83102014
0	Unspecified	83102014
7808	Not applicable	83102014
4004	In the formal sector	83102015
533	In the informal sector	83102015
919	Private household	83102015
146	Do not know	83102015
0	Unspecified	83102015
11142	Not applicable	83102015
1932	In the formal sector	83102016
127	In the informal sector	83102016
125	Private household	83102016
21	Do not know	83102016
0	Unspecified	83102016
6159	Not applicable	83102016
2597	In the formal sector	83102017
442	In the informal sector	83102017
383	Private household	83102017
73	Do not know	83102017
0	Unspecified	83102017
6761	Not applicable	83102017
5663	In the formal sector	83102018
218	In the informal sector	83102018
402	Private household	83102018
208	Do not know	83102018
0	Unspecified	83102018
6092	Not applicable	83102018
4046	In the formal sector	83102019
568	In the informal sector	83102019
711	Private household	83102019
123	Do not know	83102019
0	Unspecified	83102019
6703	Not applicable	83102019
4084	In the formal sector	83102020
392	In the informal sector	83102020
374	Private household	83102020
115	Do not know	83102020
0	Unspecified	83102020
5276	Not applicable	83102020
6959	In the formal sector	83102021
554	In the informal sector	83102021
658	Private household	83102021
260	Do not know	83102021
0	Unspecified	83102021
10772	Not applicable	83102021
2096	In the formal sector	83102022
100	In the informal sector	83102022
262	Private household	83102022
110	Do not know	83102022
0	Unspecified	83102022
2954	Not applicable	83102022
2808	In the formal sector	83102023
375	In the informal sector	83102023
641	Private household	83102023
95	Do not know	83102023
0	Unspecified	83102023
8566	Not applicable	83102023
4343	In the formal sector	83102024
321	In the informal sector	83102024
343	Private household	83102024
110	Do not know	83102024
0	Unspecified	83102024
5649	Not applicable	83102024
3771	In the formal sector	83102025
519	In the informal sector	83102025
526	Private household	83102025
33	Do not know	83102025
0	Unspecified	83102025
10088	Not applicable	83102025
2858	In the formal sector	83102026
282	In the informal sector	83102026
401	Private household	83102026
120	Do not know	83102026
0	Unspecified	83102026
5526	Not applicable	83102026
3004	In the formal sector	83102027
506	In the informal sector	83102027
221	Private household	83102027
110	Do not know	83102027
0	Unspecified	83102027
5083	Not applicable	83102027
2855	In the formal sector	83102028
698	In the informal sector	83102028
321	Private household	83102028
91	Do not know	83102028
0	Unspecified	83102028
11691	Not applicable	83102028
4289	In the formal sector	83102029
618	In the informal sector	83102029
867	Private household	83102029
169	Do not know	83102029
0	Unspecified	83102029
13834	Not applicable	83102029
1678	In the formal sector	83102030
1151	In the informal sector	83102030
318	Private household	83102030
38	Do not know	83102030
0	Unspecified	83102030
7664	Not applicable	83102030
1646	In the formal sector	83102031
1088	In the informal sector	83102031
137	Private household	83102031
69	Do not know	83102031
0	Unspecified	83102031
7555	Not applicable	83102031
3048	In the formal sector	83102032
831	In the informal sector	83102032
404	Private household	83102032
72	Do not know	83102032
0	Unspecified	83102032
7214	Not applicable	83102032
5082	In the formal sector	83102033
296	In the informal sector	83102033
283	Private household	83102033
163	Do not know	83102033
0	Unspecified	83102033
8417	Not applicable	83102033
6782	In the formal sector	83102034
543	In the informal sector	83102034
1084	Private household	83102034
161	Do not know	83102034
0	Unspecified	83102034
7880	Not applicable	83102034
697	In the formal sector	83103001
228	In the informal sector	83103001
163	Private household	83103001
11	Do not know	83103001
0	Unspecified	83103001
2943	Not applicable	83103001
1520	In the formal sector	83103002
1175	In the informal sector	83103002
461	Private household	83103002
45	Do not know	83103002
0	Unspecified	83103002
9372	Not applicable	83103002
1344	In the formal sector	83103003
773	In the informal sector	83103003
380	Private household	83103003
86	Do not know	83103003
0	Unspecified	83103003
5219	Not applicable	83103003
1846	In the formal sector	83103004
278	In the informal sector	83103004
122	Private household	83103004
41	Do not know	83103004
0	Unspecified	83103004
2722	Not applicable	83103004
1503	In the formal sector	83103005
249	In the informal sector	83103005
104	Private household	83103005
18	Do not know	83103005
0	Unspecified	83103005
2076	Not applicable	83103005
2398	In the formal sector	83103006
396	In the informal sector	83103006
166	Private household	83103006
78	Do not know	83103006
0	Unspecified	83103006
3763	Not applicable	83103006
1920	In the formal sector	83103007
251	In the informal sector	83103007
225	Private household	83103007
25	Do not know	83103007
0	Unspecified	83103007
3401	Not applicable	83103007
2604	In the formal sector	83103008
680	In the informal sector	83103008
571	Private household	83103008
147	Do not know	83103008
0	Unspecified	83103008
6873	Not applicable	83103008
1385	In the formal sector	83103009
638	In the informal sector	83103009
307	Private household	83103009
74	Do not know	83103009
0	Unspecified	83103009
4224	Not applicable	83103009
5482	In the formal sector	83103010
685	In the informal sector	83103010
869	Private household	83103010
162	Do not know	83103010
0	Unspecified	83103010
8786	Not applicable	83103010
4530	In the formal sector	83103011
440	In the informal sector	83103011
388	Private household	83103011
121	Do not know	83103011
0	Unspecified	83103011
6146	Not applicable	83103011
5966	In the formal sector	83103012
589	In the informal sector	83103012
554	Private household	83103012
267	Do not know	83103012
0	Unspecified	83103012
8055	Not applicable	83103012
2172	In the formal sector	83103013
231	In the informal sector	83103013
346	Private household	83103013
161	Do not know	83103013
0	Unspecified	83103013
3170	Not applicable	83103013
2776	In the formal sector	83103014
187	In the informal sector	83103014
320	Private household	83103014
73	Do not know	83103014
0	Unspecified	83103014
3407	Not applicable	83103014
3032	In the formal sector	83103015
229	In the informal sector	83103015
336	Private household	83103015
118	Do not know	83103015
0	Unspecified	83103015
4701	Not applicable	83103015
2518	In the formal sector	83103016
477	In the informal sector	83103016
558	Private household	83103016
166	Do not know	83103016
0	Unspecified	83103016
4085	Not applicable	83103016
1581	In the formal sector	83103017
183	In the informal sector	83103017
529	Private household	83103017
66	Do not know	83103017
0	Unspecified	83103017
4620	Not applicable	83103017
1088	In the formal sector	83103018
86	In the informal sector	83103018
227	Private household	83103018
32	Do not know	83103018
0	Unspecified	83103018
3188	Not applicable	83103018
1822	In the formal sector	83103019
257	In the informal sector	83103019
217	Private household	83103019
26	Do not know	83103019
0	Unspecified	83103019
3236	Not applicable	83103019
1096	In the formal sector	83103020
75	In the informal sector	83103020
117	Private household	83103020
16	Do not know	83103020
0	Unspecified	83103020
3187	Not applicable	83103020
1671	In the formal sector	83103021
71	In the informal sector	83103021
107	Private household	83103021
93	Do not know	83103021
0	Unspecified	83103021
4208	Not applicable	83103021
719	In the formal sector	83103022
109	In the informal sector	83103022
57	Private household	83103022
0	Do not know	83103022
0	Unspecified	83103022
2586	Not applicable	83103022
3464	In the formal sector	83103023
410	In the informal sector	83103023
519	Private household	83103023
189	Do not know	83103023
0	Unspecified	83103023
8003	Not applicable	83103023
496	In the formal sector	83103024
28	In the informal sector	83103024
100	Private household	83103024
92	Do not know	83103024
0	Unspecified	83103024
1303	Not applicable	83103024
2908	In the formal sector	83103025
487	In the informal sector	83103025
905	Private household	83103025
138	Do not know	83103025
0	Unspecified	83103025
8879	Not applicable	83103025
318	In the formal sector	83103026
33	In the informal sector	83103026
161	Private household	83103026
48	Do not know	83103026
0	Unspecified	83103026
1678	Not applicable	83103026
1176	In the formal sector	83103027
288	In the informal sector	83103027
365	Private household	83103027
28	Do not know	83103027
0	Unspecified	83103027
4492	Not applicable	83103027
5164	In the formal sector	83103028
624	In the informal sector	83103028
915	Private household	83103028
350	Do not know	83103028
0	Unspecified	83103028
12790	Not applicable	83103028
758	In the formal sector	83103029
418	In the informal sector	83103029
254	Private household	83103029
44	Do not know	83103029
0	Unspecified	83103029
5134	Not applicable	83103029
1142	In the formal sector	83104001
358	In the informal sector	83104001
227	Private household	83104001
45	Do not know	83104001
0	Unspecified	83104001
4079	Not applicable	83104001
475	In the formal sector	83104002
553	In the informal sector	83104002
228	Private household	83104002
50	Do not know	83104002
0	Unspecified	83104002
3810	Not applicable	83104002
1067	In the formal sector	83104003
166	In the informal sector	83104003
66	Private household	83104003
26	Do not know	83104003
0	Unspecified	83104003
5214	Not applicable	83104003
1160	In the formal sector	83104004
368	In the informal sector	83104004
203	Private household	83104004
42	Do not know	83104004
0	Unspecified	83104004
4277	Not applicable	83104004
804	In the formal sector	83104005
612	In the informal sector	83104005
674	Private household	83104005
75	Do not know	83104005
0	Unspecified	83104005
2269	Not applicable	83104005
1476	In the formal sector	83104006
436	In the informal sector	83104006
299	Private household	83104006
63	Do not know	83104006
0	Unspecified	83104006
5240	Not applicable	83104006
999	In the formal sector	83104007
227	In the informal sector	83104007
285	Private household	83104007
35	Do not know	83104007
0	Unspecified	83104007
4540	Not applicable	83104007
1119	In the formal sector	83104008
425	In the informal sector	83104008
247	Private household	83104008
39	Do not know	83104008
0	Unspecified	83104008
3794	Not applicable	83104008
1007	In the formal sector	83105001
492	In the informal sector	83105001
661	Private household	83105001
79	Do not know	83105001
0	Unspecified	83105001
8038	Not applicable	83105001
1274	In the formal sector	83105002
559	In the informal sector	83105002
680	Private household	83105002
75	Do not know	83105002
0	Unspecified	83105002
8620	Not applicable	83105002
584	In the formal sector	83105003
406	In the informal sector	83105003
539	Private household	83105003
109	Do not know	83105003
0	Unspecified	83105003
6231	Not applicable	83105003
2423	In the formal sector	83105004
626	In the informal sector	83105004
808	Private household	83105004
60	Do not know	83105004
0	Unspecified	83105004
11851	Not applicable	83105004
587	In the formal sector	83105005
290	In the informal sector	83105005
418	Private household	83105005
20	Do not know	83105005
0	Unspecified	83105005
5753	Not applicable	83105005
1434	In the formal sector	83105006
533	In the informal sector	83105006
427	Private household	83105006
51	Do not know	83105006
0	Unspecified	83105006
8463	Not applicable	83105006
759	In the formal sector	83105007
458	In the informal sector	83105007
369	Private household	83105007
47	Do not know	83105007
0	Unspecified	83105007
8058	Not applicable	83105007
841	In the formal sector	83105008
479	In the informal sector	83105008
387	Private household	83105008
57	Do not know	83105008
0	Unspecified	83105008
10454	Not applicable	83105008
1192	In the formal sector	83105009
310	In the informal sector	83105009
437	Private household	83105009
60	Do not know	83105009
0	Unspecified	83105009
7997	Not applicable	83105009
520	In the formal sector	83105010
285	In the informal sector	83105010
245	Private household	83105010
48	Do not know	83105010
0	Unspecified	83105010
6489	Not applicable	83105010
800	In the formal sector	83105011
409	In the informal sector	83105011
269	Private household	83105011
44	Do not know	83105011
0	Unspecified	83105011
10011	Not applicable	83105011
579	In the formal sector	83105012
429	In the informal sector	83105012
199	Private household	83105012
34	Do not know	83105012
0	Unspecified	83105012
5383	Not applicable	83105012
1177	In the formal sector	83105013
353	In the informal sector	83105013
234	Private household	83105013
15	Do not know	83105013
0	Unspecified	83105013
6045	Not applicable	83105013
1784	In the formal sector	83105014
879	In the informal sector	83105014
788	Private household	83105014
126	Do not know	83105014
0	Unspecified	83105014
10490	Not applicable	83105014
817	In the formal sector	83105015
431	In the informal sector	83105015
396	Private household	83105015
67	Do not know	83105015
0	Unspecified	83105015
8193	Not applicable	83105015
853	In the formal sector	83105016
432	In the informal sector	83105016
201	Private household	83105016
50	Do not know	83105016
0	Unspecified	83105016
7947	Not applicable	83105016
1073	In the formal sector	83105017
480	In the informal sector	83105017
398	Private household	83105017
23	Do not know	83105017
0	Unspecified	83105017
6737	Not applicable	83105017
1190	In the formal sector	83105018
454	In the informal sector	83105018
324	Private household	83105018
50	Do not know	83105018
0	Unspecified	83105018
7970	Not applicable	83105018
1474	In the formal sector	83105019
738	In the informal sector	83105019
409	Private household	83105019
22	Do not know	83105019
0	Unspecified	83105019
8749	Not applicable	83105019
1359	In the formal sector	83105020
774	In the informal sector	83105020
919	Private household	83105020
217	Do not know	83105020
0	Unspecified	83105020
10973	Not applicable	83105020
1089	In the formal sector	83105021
346	In the informal sector	83105021
285	Private household	83105021
29	Do not know	83105021
0	Unspecified	83105021
7696	Not applicable	83105021
1242	In the formal sector	83105022
441	In the informal sector	83105022
438	Private household	83105022
48	Do not know	83105022
0	Unspecified	83105022
8661	Not applicable	83105022
836	In the formal sector	83105023
473	In the informal sector	83105023
345	Private household	83105023
58	Do not know	83105023
0	Unspecified	83105023
7295	Not applicable	83105023
896	In the formal sector	83105024
332	In the informal sector	83105024
340	Private household	83105024
12	Do not know	83105024
0	Unspecified	83105024
8555	Not applicable	83105024
965	In the formal sector	83105025
516	In the informal sector	83105025
303	Private household	83105025
9	Do not know	83105025
0	Unspecified	83105025
6442	Not applicable	83105025
672	In the formal sector	83105026
314	In the informal sector	83105026
530	Private household	83105026
38	Do not know	83105026
0	Unspecified	83105026
6183	Not applicable	83105026
1016	In the formal sector	83105027
282	In the informal sector	83105027
258	Private household	83105027
16	Do not know	83105027
0	Unspecified	83105027
6886	Not applicable	83105027
1024	In the formal sector	83105028
336	In the informal sector	83105028
243	Private household	83105028
7	Do not know	83105028
0	Unspecified	83105028
5619	Not applicable	83105028
845	In the formal sector	83105029
252	In the informal sector	83105029
94	Private household	83105029
5	Do not know	83105029
0	Unspecified	83105029
4734	Not applicable	83105029
1089	In the formal sector	83105030
317	In the informal sector	83105030
286	Private household	83105030
29	Do not know	83105030
0	Unspecified	83105030
9493	Not applicable	83105030
892	In the formal sector	83105031
412	In the informal sector	83105031
491	Private household	83105031
72	Do not know	83105031
0	Unspecified	83105031
7498	Not applicable	83105031
1602	In the formal sector	83105032
271	In the informal sector	83105032
220	Private household	83105032
25	Do not know	83105032
0	Unspecified	83105032
4393	Not applicable	83105032
923	In the formal sector	83106001
278	In the informal sector	83106001
206	Private household	83106001
37	Do not know	83106001
0	Unspecified	83106001
6631	Not applicable	83106001
983	In the formal sector	83106002
346	In the informal sector	83106002
103	Private household	83106002
38	Do not know	83106002
0	Unspecified	83106002
7692	Not applicable	83106002
789	In the formal sector	83106003
270	In the informal sector	83106003
28	Private household	83106003
1	Do not know	83106003
0	Unspecified	83106003
6173	Not applicable	83106003
703	In the formal sector	83106004
526	In the informal sector	83106004
67	Private household	83106004
9	Do not know	83106004
0	Unspecified	83106004
6782	Not applicable	83106004
1321	In the formal sector	83106005
332	In the informal sector	83106005
94	Private household	83106005
7	Do not know	83106005
0	Unspecified	83106005
6482	Not applicable	83106005
1173	In the formal sector	83106006
562	In the informal sector	83106006
165	Private household	83106006
22	Do not know	83106006
0	Unspecified	83106006
7753	Not applicable	83106006
423	In the formal sector	83106007
169	In the informal sector	83106007
193	Private household	83106007
13	Do not know	83106007
0	Unspecified	83106007
6452	Not applicable	83106007
503	In the formal sector	83106008
193	In the informal sector	83106008
224	Private household	83106008
9	Do not know	83106008
0	Unspecified	83106008
6451	Not applicable	83106008
466	In the formal sector	83106009
334	In the informal sector	83106009
104	Private household	83106009
3	Do not know	83106009
0	Unspecified	83106009
4539	Not applicable	83106009
552	In the formal sector	83106010
266	In the informal sector	83106010
212	Private household	83106010
20	Do not know	83106010
0	Unspecified	83106010
6760	Not applicable	83106010
532	In the formal sector	83106011
290	In the informal sector	83106011
436	Private household	83106011
0	Do not know	83106011
0	Unspecified	83106011
7219	Not applicable	83106011
577	In the formal sector	83106012
345	In the informal sector	83106012
434	Private household	83106012
10	Do not know	83106012
0	Unspecified	83106012
7842	Not applicable	83106012
686	In the formal sector	83106013
251	In the informal sector	83106013
330	Private household	83106013
15	Do not know	83106013
0	Unspecified	83106013
6426	Not applicable	83106013
436	In the formal sector	83106014
259	In the informal sector	83106014
199	Private household	83106014
91	Do not know	83106014
0	Unspecified	83106014
6442	Not applicable	83106014
864	In the formal sector	83106015
166	In the informal sector	83106015
245	Private household	83106015
8	Do not know	83106015
0	Unspecified	83106015
7874	Not applicable	83106015
488	In the formal sector	83106016
47	In the informal sector	83106016
133	Private household	83106016
0	Do not know	83106016
0	Unspecified	83106016
4049	Not applicable	83106016
1348	In the formal sector	83106017
319	In the informal sector	83106017
144	Private household	83106017
15	Do not know	83106017
0	Unspecified	83106017
8804	Not applicable	83106017
661	In the formal sector	83106018
218	In the informal sector	83106018
151	Private household	83106018
4	Do not know	83106018
0	Unspecified	83106018
6795	Not applicable	83106018
857	In the formal sector	83106019
298	In the informal sector	83106019
167	Private household	83106019
25	Do not know	83106019
0	Unspecified	83106019
8340	Not applicable	83106019
399	In the formal sector	83106020
119	In the informal sector	83106020
65	Private household	83106020
28	Do not know	83106020
0	Unspecified	83106020
6171	Not applicable	83106020
487	In the formal sector	83106021
149	In the informal sector	83106021
71	Private household	83106021
4	Do not know	83106021
0	Unspecified	83106021
8242	Not applicable	83106021
327	In the formal sector	83106022
229	In the informal sector	83106022
40	Private household	83106022
15	Do not know	83106022
0	Unspecified	83106022
8934	Not applicable	83106022
399	In the formal sector	83106023
316	In the informal sector	83106023
93	Private household	83106023
29	Do not know	83106023
0	Unspecified	83106023
4445	Not applicable	83106023
732	In the formal sector	83106024
348	In the informal sector	83106024
197	Private household	83106024
21	Do not know	83106024
0	Unspecified	83106024
8907	Not applicable	83106024
466	In the formal sector	83106025
187	In the informal sector	83106025
149	Private household	83106025
7	Do not know	83106025
0	Unspecified	83106025
6686	Not applicable	83106025
587	In the formal sector	83106026
200	In the informal sector	83106026
174	Private household	83106026
34	Do not know	83106026
0	Unspecified	83106026
7917	Not applicable	83106026
265	In the formal sector	83106027
100	In the informal sector	83106027
109	Private household	83106027
53	Do not know	83106027
0	Unspecified	83106027
7467	Not applicable	83106027
469	In the formal sector	83106028
179	In the informal sector	83106028
176	Private household	83106028
6	Do not know	83106028
0	Unspecified	83106028
5735	Not applicable	83106028
696	In the formal sector	83106029
318	In the informal sector	83106029
224	Private household	83106029
22	Do not know	83106029
0	Unspecified	83106029
6696	Not applicable	83106029
550	In the formal sector	83106030
261	In the informal sector	83106030
256	Private household	83106030
11	Do not know	83106030
0	Unspecified	83106030
7220	Not applicable	83106030
683	In the formal sector	83106031
318	In the informal sector	83106031
236	Private household	83106031
25	Do not know	83106031
0	Unspecified	83106031
7233	Not applicable	83106031
990	In the formal sector	83201001
85	In the informal sector	83201001
56	Private household	83201001
8	Do not know	83201001
0	Unspecified	83201001
2117	Not applicable	83201001
2525	In the formal sector	83201002
296	In the informal sector	83201002
284	Private household	83201002
73	Do not know	83201002
0	Unspecified	83201002
5038	Not applicable	83201002
2308	In the formal sector	83201003
306	In the informal sector	83201003
481	Private household	83201003
118	Do not know	83201003
0	Unspecified	83201003
6705	Not applicable	83201003
1716	In the formal sector	83201004
722	In the informal sector	83201004
868	Private household	83201004
131	Do not know	83201004
0	Unspecified	83201004
4382	Not applicable	83201004
2177	In the formal sector	83201005
434	In the informal sector	83201005
377	Private household	83201005
94	Do not know	83201005
0	Unspecified	83201005
7011	Not applicable	83201005
1328	In the formal sector	83201006
337	In the informal sector	83201006
307	Private household	83201006
87	Do not know	83201006
0	Unspecified	83201006
3133	Not applicable	83201006
2447	In the formal sector	83201007
697	In the informal sector	83201007
407	Private household	83201007
242	Do not know	83201007
0	Unspecified	83201007
5643	Not applicable	83201007
586	In the formal sector	83201008
235	In the informal sector	83201008
67	Private household	83201008
35	Do not know	83201008
0	Unspecified	83201008
6444	Not applicable	83201008
762	In the formal sector	83201009
226	In the informal sector	83201009
144	Private household	83201009
38	Do not know	83201009
0	Unspecified	83201009
7357	Not applicable	83201009
1684	In the formal sector	83201010
637	In the informal sector	83201010
212	Private household	83201010
50	Do not know	83201010
0	Unspecified	83201010
2792	Not applicable	83201010
2940	In the formal sector	83201011
646	In the informal sector	83201011
804	Private household	83201011
298	Do not know	83201011
0	Unspecified	83201011
949	Not applicable	83201011
1399	In the formal sector	83201012
272	In the informal sector	83201012
110	Private household	83201012
44	Do not know	83201012
0	Unspecified	83201012
2657	Not applicable	83201012
754	In the formal sector	83201013
295	In the informal sector	83201013
132	Private household	83201013
18	Do not know	83201013
0	Unspecified	83201013
1386	Not applicable	83201013
3053	In the formal sector	83201014
876	In the informal sector	83201014
269	Private household	83201014
91	Do not know	83201014
0	Unspecified	83201014
6195	Not applicable	83201014
3623	In the formal sector	83202001
1211	In the informal sector	83202001
1056	Private household	83202001
116	Do not know	83202001
0	Unspecified	83202001
16146	Not applicable	83202001
2443	In the formal sector	83202002
1089	In the informal sector	83202002
741	Private household	83202002
62	Do not know	83202002
0	Unspecified	83202002
17734	Not applicable	83202002
3211	In the formal sector	83202003
1021	In the informal sector	83202003
463	Private household	83202003
66	Do not know	83202003
0	Unspecified	83202003
11381	Not applicable	83202003
1082	In the formal sector	83202004
616	In the informal sector	83202004
236	Private household	83202004
29	Do not know	83202004
0	Unspecified	83202004
7704	Not applicable	83202004
1797	In the formal sector	83202005
669	In the informal sector	83202005
566	Private household	83202005
60	Do not know	83202005
0	Unspecified	83202005
13822	Not applicable	83202005
2148	In the formal sector	83202006
767	In the informal sector	83202006
313	Private household	83202006
108	Do not know	83202006
0	Unspecified	83202006
12093	Not applicable	83202006
1636	In the formal sector	83202007
387	In the informal sector	83202007
545	Private household	83202007
63	Do not know	83202007
0	Unspecified	83202007
10671	Not applicable	83202007
2623	In the formal sector	83202008
1032	In the informal sector	83202008
902	Private household	83202008
158	Do not know	83202008
0	Unspecified	83202008
11689	Not applicable	83202008
1801	In the formal sector	83202009
502	In the informal sector	83202009
394	Private household	83202009
85	Do not know	83202009
0	Unspecified	83202009
11548	Not applicable	83202009
1972	In the formal sector	83202010
589	In the informal sector	83202010
343	Private household	83202010
90	Do not know	83202010
0	Unspecified	83202010
11219	Not applicable	83202010
1978	In the formal sector	83202011
806	In the informal sector	83202011
533	Private household	83202011
65	Do not know	83202011
0	Unspecified	83202011
12246	Not applicable	83202011
5396	In the formal sector	83202012
622	In the informal sector	83202012
1068	Private household	83202012
167	Do not know	83202012
0	Unspecified	83202012
5997	Not applicable	83202012
1718	In the formal sector	83202013
312	In the informal sector	83202013
509	Private household	83202013
53	Do not know	83202013
0	Unspecified	83202013
8644	Not applicable	83202013
5687	In the formal sector	83202014
724	In the informal sector	83202014
693	Private household	83202014
156	Do not know	83202014
0	Unspecified	83202014
11381	Not applicable	83202014
6430	In the formal sector	83202015
813	In the informal sector	83202015
452	Private household	83202015
229	Do not know	83202015
0	Unspecified	83202015
7479	Not applicable	83202015
4644	In the formal sector	83202016
677	In the informal sector	83202016
656	Private household	83202016
191	Do not know	83202016
0	Unspecified	83202016
5310	Not applicable	83202016
6809	In the formal sector	83202017
526	In the informal sector	83202017
550	Private household	83202017
203	Do not know	83202017
0	Unspecified	83202017
7340	Not applicable	83202017
3694	In the formal sector	83202018
654	In the informal sector	83202018
976	Private household	83202018
91	Do not know	83202018
0	Unspecified	83202018
9081	Not applicable	83202018
3355	In the formal sector	83202019
408	In the informal sector	83202019
361	Private household	83202019
28	Do not know	83202019
0	Unspecified	83202019
10406	Not applicable	83202019
2945	In the formal sector	83202020
342	In the informal sector	83202020
362	Private household	83202020
53	Do not know	83202020
0	Unspecified	83202020
9745	Not applicable	83202020
2988	In the formal sector	83202021
526	In the informal sector	83202021
544	Private household	83202021
86	Do not know	83202021
0	Unspecified	83202021
12656	Not applicable	83202021
2165	In the formal sector	83202022
462	In the informal sector	83202022
503	Private household	83202022
142	Do not know	83202022
0	Unspecified	83202022
10550	Not applicable	83202022
1587	In the formal sector	83202023
439	In the informal sector	83202023
388	Private household	83202023
17	Do not know	83202023
0	Unspecified	83202023
7969	Not applicable	83202023
1293	In the formal sector	83202024
491	In the informal sector	83202024
296	Private household	83202024
11	Do not know	83202024
0	Unspecified	83202024
10076	Not applicable	83202024
2105	In the formal sector	83202025
968	In the informal sector	83202025
363	Private household	83202025
34	Do not know	83202025
0	Unspecified	83202025
11475	Not applicable	83202025
2833	In the formal sector	83202026
792	In the informal sector	83202026
731	Private household	83202026
72	Do not know	83202026
0	Unspecified	83202026
13081	Not applicable	83202026
2870	In the formal sector	83202027
625	In the informal sector	83202027
522	Private household	83202027
143	Do not know	83202027
0	Unspecified	83202027
14258	Not applicable	83202027
2702	In the formal sector	83202028
385	In the informal sector	83202028
360	Private household	83202028
170	Do not know	83202028
0	Unspecified	83202028
12110	Not applicable	83202028
2044	In the formal sector	83202029
817	In the informal sector	83202029
642	Private household	83202029
24	Do not know	83202029
0	Unspecified	83202029
12517	Not applicable	83202029
4304	In the formal sector	83202030
558	In the informal sector	83202030
430	Private household	83202030
194	Do not know	83202030
0	Unspecified	83202030
6203	Not applicable	83202030
1728	In the formal sector	83202031
431	In the informal sector	83202031
563	Private household	83202031
28	Do not know	83202031
0	Unspecified	83202031
8346	Not applicable	83202031
3678	In the formal sector	83202032
964	In the informal sector	83202032
612	Private household	83202032
103	Do not know	83202032
0	Unspecified	83202032
12624	Not applicable	83202032
3105	In the formal sector	83202033
512	In the informal sector	83202033
343	Private household	83202033
16	Do not know	83202033
0	Unspecified	83202033
9015	Not applicable	83202033
1283	In the formal sector	83202034
759	In the informal sector	83202034
329	Private household	83202034
18	Do not know	83202034
0	Unspecified	83202034
9947	Not applicable	83202034
2082	In the formal sector	83202035
1119	In the informal sector	83202035
568	Private household	83202035
39	Do not know	83202035
0	Unspecified	83202035
11302	Not applicable	83202035
1724	In the formal sector	83202036
831	In the informal sector	83202036
257	Private household	83202036
40	Do not know	83202036
0	Unspecified	83202036
10058	Not applicable	83202036
2342	In the formal sector	83202037
659	In the informal sector	83202037
491	Private household	83202037
30	Do not know	83202037
0	Unspecified	83202037
10873	Not applicable	83202037
7033	In the formal sector	83202038
1271	In the informal sector	83202038
980	Private household	83202038
235	Do not know	83202038
0	Unspecified	83202038
15735	Not applicable	83202038
2726	In the formal sector	83202039
479	In the informal sector	83202039
600	Private household	83202039
64	Do not know	83202039
0	Unspecified	83202039
11145	Not applicable	83202039
1184	In the formal sector	83203001
449	In the informal sector	83203001
374	Private household	83203001
14	Do not know	83203001
0	Unspecified	83203001
3019	Not applicable	83203001
1037	In the formal sector	83203002
1300	In the informal sector	83203002
824	Private household	83203002
119	Do not know	83203002
0	Unspecified	83203002
4859	Not applicable	83203002
2249	In the formal sector	83203003
505	In the informal sector	83203003
464	Private household	83203003
28	Do not know	83203003
0	Unspecified	83203003
9929	Not applicable	83203003
1438	In the formal sector	83203004
277	In the informal sector	83203004
536	Private household	83203004
49	Do not know	83203004
0	Unspecified	83203004
6154	Not applicable	83203004
1340	In the formal sector	83203005
122	In the informal sector	83203005
150	Private household	83203005
15	Do not know	83203005
0	Unspecified	83203005
4051	Not applicable	83203005
1299	In the formal sector	83203006
157	In the informal sector	83203006
208	Private household	83203006
20	Do not know	83203006
0	Unspecified	83203006
5099	Not applicable	83203006
872	In the formal sector	83203007
118	In the informal sector	83203007
128	Private household	83203007
13	Do not know	83203007
0	Unspecified	83203007
2261	Not applicable	83203007
2618	In the formal sector	83203008
348	In the informal sector	83203008
234	Private household	83203008
47	Do not know	83203008
0	Unspecified	83203008
6260	Not applicable	83203008
2192	In the formal sector	83203009
254	In the informal sector	83203009
239	Private household	83203009
63	Do not know	83203009
0	Unspecified	83203009
4239	Not applicable	83203009
1649	In the formal sector	83204001
528	In the informal sector	83204001
204	Private household	83204001
243	Do not know	83204001
0	Unspecified	83204001
11693	Not applicable	83204001
1479	In the formal sector	83204002
1008	In the informal sector	83204002
400	Private household	83204002
95	Do not know	83204002
0	Unspecified	83204002
18741	Not applicable	83204002
1729	In the formal sector	83204003
987	In the informal sector	83204003
325	Private household	83204003
110	Do not know	83204003
0	Unspecified	83204003
13649	Not applicable	83204003
1012	In the formal sector	83204004
368	In the informal sector	83204004
365	Private household	83204004
35	Do not know	83204004
0	Unspecified	83204004
7152	Not applicable	83204004
1384	In the formal sector	83204005
470	In the informal sector	83204005
171	Private household	83204005
6	Do not know	83204005
0	Unspecified	83204005
10883	Not applicable	83204005
2937	In the formal sector	83204006
1779	In the informal sector	83204006
552	Private household	83204006
164	Do not know	83204006
0	Unspecified	83204006
9893	Not applicable	83204006
4361	In the formal sector	83204007
3353	In the informal sector	83204007
588	Private household	83204007
83	Do not know	83204007
0	Unspecified	83204007
9156	Not applicable	83204007
1349	In the formal sector	83204008
406	In the informal sector	83204008
181	Private household	83204008
88	Do not know	83204008
0	Unspecified	83204008
11879	Not applicable	83204008
1381	In the formal sector	83204009
604	In the informal sector	83204009
275	Private household	83204009
63	Do not know	83204009
0	Unspecified	83204009
11353	Not applicable	83204009
1242	In the formal sector	83204010
319	In the informal sector	83204010
175	Private household	83204010
45	Do not know	83204010
0	Unspecified	83204010
11394	Not applicable	83204010
1256	In the formal sector	83204011
505	In the informal sector	83204011
310	Private household	83204011
84	Do not know	83204011
0	Unspecified	83204011
10754	Not applicable	83204011
899	In the formal sector	83204012
138	In the informal sector	83204012
108	Private household	83204012
64	Do not know	83204012
0	Unspecified	83204012
9391	Not applicable	83204012
509	In the formal sector	83204013
117	In the informal sector	83204013
37	Private household	83204013
16	Do not know	83204013
0	Unspecified	83204013
9310	Not applicable	83204013
821	In the formal sector	83204014
262	In the informal sector	83204014
107	Private household	83204014
13	Do not know	83204014
0	Unspecified	83204014
9530	Not applicable	83204014
537	In the formal sector	83204015
170	In the informal sector	83204015
121	Private household	83204015
7	Do not know	83204015
0	Unspecified	83204015
11763	Not applicable	83204015
812	In the formal sector	83204016
182	In the informal sector	83204016
120	Private household	83204016
7	Do not know	83204016
0	Unspecified	83204016
8745	Not applicable	83204016
347	In the formal sector	83204017
282	In the informal sector	83204017
121	Private household	83204017
11	Do not know	83204017
0	Unspecified	83204017
6606	Not applicable	83204017
694	In the formal sector	83204018
179	In the informal sector	83204018
113	Private household	83204018
8	Do not know	83204018
0	Unspecified	83204018
9159	Not applicable	83204018
724	In the formal sector	83204019
364	In the informal sector	83204019
97	Private household	83204019
16	Do not know	83204019
0	Unspecified	83204019
7632	Not applicable	83204019
2045	In the formal sector	83204020
598	In the informal sector	83204020
271	Private household	83204020
30	Do not know	83204020
0	Unspecified	83204020
12650	Not applicable	83204020
1609	In the formal sector	83204021
566	In the informal sector	83204021
351	Private household	83204021
64	Do not know	83204021
0	Unspecified	83204021
12634	Not applicable	83204021
1754	In the formal sector	83204022
362	In the informal sector	83204022
355	Private household	83204022
54	Do not know	83204022
0	Unspecified	83204022
9300	Not applicable	83204022
636	In the formal sector	83204023
137	In the informal sector	83204023
41	Private household	83204023
15	Do not know	83204023
0	Unspecified	83204023
6983	Not applicable	83204023
1238	In the formal sector	83204024
624	In the informal sector	83204024
125	Private household	83204024
113	Do not know	83204024
0	Unspecified	83204024
9786	Not applicable	83204024
643	In the formal sector	83204025
253	In the informal sector	83204025
48	Private household	83204025
7	Do not know	83204025
0	Unspecified	83204025
7613	Not applicable	83204025
706	In the formal sector	83204026
477	In the informal sector	83204026
94	Private household	83204026
3	Do not know	83204026
0	Unspecified	83204026
5092	Not applicable	83204026
1589	In the formal sector	83204027
516	In the informal sector	83204027
197	Private household	83204027
21	Do not know	83204027
0	Unspecified	83204027
9163	Not applicable	83204027
704	In the formal sector	83204028
210	In the informal sector	83204028
51	Private household	83204028
25	Do not know	83204028
0	Unspecified	83204028
5174	Not applicable	83204028
1633	In the formal sector	83204029
791	In the informal sector	83204029
471	Private household	83204029
99	Do not know	83204029
0	Unspecified	83204029
7653	Not applicable	83204029
3506	In the formal sector	83204030
3077	In the informal sector	83204030
484	Private household	83204030
88	Do not know	83204030
0	Unspecified	83204030
7999	Not applicable	83204030
1085	In the formal sector	83204031
358	In the informal sector	83204031
90	Private household	83204031
3	Do not know	83204031
0	Unspecified	83204031
6203	Not applicable	83204031
772	In the formal sector	83204032
253	In the informal sector	83204032
114	Private household	83204032
80	Do not know	83204032
0	Unspecified	83204032
8892	Not applicable	83204032
1121	In the formal sector	83204033
571	In the informal sector	83204033
244	Private household	83204033
44	Do not know	83204033
0	Unspecified	83204033
11126	Not applicable	83204033
2759	In the formal sector	83205001
706	In the informal sector	83205001
489	Private household	83205001
45	Do not know	83205001
0	Unspecified	83205001
16779	Not applicable	83205001
501	In the formal sector	83205002
346	In the informal sector	83205002
210	Private household	83205002
10	Do not know	83205002
0	Unspecified	83205002
10085	Not applicable	83205002
1174	In the formal sector	83205003
494	In the informal sector	83205003
412	Private household	83205003
25	Do not know	83205003
0	Unspecified	83205003
13605	Not applicable	83205003
951	In the formal sector	83205004
213	In the informal sector	83205004
244	Private household	83205004
14	Do not know	83205004
0	Unspecified	83205004
9657	Not applicable	83205004
639	In the formal sector	83205005
211	In the informal sector	83205005
127	Private household	83205005
25	Do not know	83205005
0	Unspecified	83205005
9679	Not applicable	83205005
1249	In the formal sector	83205006
405	In the informal sector	83205006
216	Private household	83205006
14	Do not know	83205006
0	Unspecified	83205006
16273	Not applicable	83205006
1358	In the formal sector	83205007
447	In the informal sector	83205007
272	Private household	83205007
10	Do not know	83205007
0	Unspecified	83205007
12953	Not applicable	83205007
1784	In the formal sector	83205008
331	In the informal sector	83205008
149	Private household	83205008
3	Do not know	83205008
0	Unspecified	83205008
10775	Not applicable	83205008
2945	In the formal sector	83205009
599	In the informal sector	83205009
396	Private household	83205009
26	Do not know	83205009
0	Unspecified	83205009
14466	Not applicable	83205009
874	In the formal sector	83205010
310	In the informal sector	83205010
225	Private household	83205010
10	Do not know	83205010
0	Unspecified	83205010
13440	Not applicable	83205010
862	In the formal sector	83205011
332	In the informal sector	83205011
292	Private household	83205011
14	Do not know	83205011
0	Unspecified	83205011
12587	Not applicable	83205011
582	In the formal sector	83205012
212	In the informal sector	83205012
173	Private household	83205012
3	Do not know	83205012
0	Unspecified	83205012
11789	Not applicable	83205012
467	In the formal sector	83205013
139	In the informal sector	83205013
99	Private household	83205013
5	Do not know	83205013
0	Unspecified	83205013
11166	Not applicable	83205013
541	In the formal sector	83205014
181	In the informal sector	83205014
78	Private household	83205014
21	Do not know	83205014
0	Unspecified	83205014
12005	Not applicable	83205014
1631	In the formal sector	83205015
261	In the informal sector	83205015
151	Private household	83205015
2	Do not know	83205015
0	Unspecified	83205015
13309	Not applicable	83205015
745	In the formal sector	83205016
182	In the informal sector	83205016
145	Private household	83205016
7	Do not know	83205016
0	Unspecified	83205016
10357	Not applicable	83205016
1434	In the formal sector	83205017
383	In the informal sector	83205017
323	Private household	83205017
21	Do not know	83205017
0	Unspecified	83205017
12836	Not applicable	83205017
2111	In the formal sector	83205018
489	In the informal sector	83205018
313	Private household	83205018
3	Do not know	83205018
0	Unspecified	83205018
16395	Not applicable	83205018
1051	In the formal sector	83205019
438	In the informal sector	83205019
381	Private household	83205019
70	Do not know	83205019
0	Unspecified	83205019
14774	Not applicable	83205019
735	In the formal sector	83205020
195	In the informal sector	83205020
176	Private household	83205020
9	Do not know	83205020
0	Unspecified	83205020
11040	Not applicable	83205020
663	In the formal sector	83205021
184	In the informal sector	83205021
220	Private household	83205021
3	Do not know	83205021
0	Unspecified	83205021
13167	Not applicable	83205021
728	In the formal sector	83205022
261	In the informal sector	83205022
190	Private household	83205022
16	Do not know	83205022
0	Unspecified	83205022
12031	Not applicable	83205022
1059	In the formal sector	83205023
452	In the informal sector	83205023
164	Private household	83205023
10	Do not know	83205023
0	Unspecified	83205023
13309	Not applicable	83205023
1036	In the formal sector	83205024
237	In the informal sector	83205024
138	Private household	83205024
3	Do not know	83205024
0	Unspecified	83205024
14096	Not applicable	83205024
1040	In the formal sector	83205025
404	In the informal sector	83205025
380	Private household	83205025
42	Do not know	83205025
0	Unspecified	83205025
14662	Not applicable	83205025
749	In the formal sector	83205026
379	In the informal sector	83205026
300	Private household	83205026
6	Do not know	83205026
0	Unspecified	83205026
11688	Not applicable	83205026
679	In the formal sector	83205027
233	In the informal sector	83205027
314	Private household	83205027
23	Do not know	83205027
0	Unspecified	83205027
13250	Not applicable	83205027
565	In the formal sector	83205028
197	In the informal sector	83205028
92	Private household	83205028
3	Do not know	83205028
0	Unspecified	83205028
9051	Not applicable	83205028
592	In the formal sector	83205029
104	In the informal sector	83205029
65	Private household	83205029
3	Do not know	83205029
0	Unspecified	83205029
11015	Not applicable	83205029
911	In the formal sector	83205030
244	In the informal sector	83205030
59	Private household	83205030
7	Do not know	83205030
0	Unspecified	83205030
14290	Not applicable	83205030
2689	In the formal sector	83205031
405	In the informal sector	83205031
272	Private household	83205031
44	Do not know	83205031
0	Unspecified	83205031
16994	Not applicable	83205031
704	In the formal sector	83205032
164	In the informal sector	83205032
119	Private household	83205032
3	Do not know	83205032
0	Unspecified	83205032
12163	Not applicable	83205032
1131	In the formal sector	83205033
449	In the informal sector	83205033
174	Private household	83205033
10	Do not know	83205033
0	Unspecified	83205033
15853	Not applicable	83205033
2769	In the formal sector	83205034
535	In the informal sector	83205034
327	Private household	83205034
30	Do not know	83205034
0	Unspecified	83205034
15250	Not applicable	83205034
664	In the formal sector	83205035
272	In the informal sector	83205035
336	Private household	83205035
14	Do not know	83205035
0	Unspecified	83205035
14668	Not applicable	83205035
664	In the formal sector	83205036
212	In the informal sector	83205036
114	Private household	83205036
0	Do not know	83205036
0	Unspecified	83205036
12597	Not applicable	83205036
824	In the formal sector	83205037
345	In the informal sector	83205037
197	Private household	83205037
15	Do not know	83205037
0	Unspecified	83205037
10471	Not applicable	83205037
562	In the formal sector	63701001
148	In the informal sector	63701001
52	Private household	63701001
9	Do not know	63701001
0	Unspecified	63701001
6881	Not applicable	63701001
426	In the formal sector	63701002
143	In the informal sector	63701002
104	Private household	63701002
24	Do not know	63701002
0	Unspecified	63701002
7354	Not applicable	63701002
724	In the formal sector	63701003
268	In the informal sector	63701003
121	Private household	63701003
67	Do not know	63701003
0	Unspecified	63701003
7663	Not applicable	63701003
598	In the formal sector	63701004
174	In the informal sector	63701004
93	Private household	63701004
7	Do not know	63701004
0	Unspecified	63701004
5727	Not applicable	63701004
623	In the formal sector	63701005
97	In the informal sector	63701005
108	Private household	63701005
12	Do not know	63701005
0	Unspecified	63701005
5054	Not applicable	63701005
249	In the formal sector	63701006
67	In the informal sector	63701006
128	Private household	63701006
28	Do not know	63701006
0	Unspecified	63701006
4831	Not applicable	63701006
653	In the formal sector	63701007
155	In the informal sector	63701007
228	Private household	63701007
30	Do not know	63701007
0	Unspecified	63701007
5653	Not applicable	63701007
618	In the formal sector	63701008
81	In the informal sector	63701008
174	Private household	63701008
11	Do not know	63701008
0	Unspecified	63701008
5239	Not applicable	63701008
433	In the formal sector	63701009
98	In the informal sector	63701009
234	Private household	63701009
11	Do not know	63701009
0	Unspecified	63701009
4078	Not applicable	63701009
577	In the formal sector	63701010
91	In the informal sector	63701010
119	Private household	63701010
12	Do not know	63701010
0	Unspecified	63701010
5205	Not applicable	63701010
758	In the formal sector	63701011
324	In the informal sector	63701011
208	Private household	63701011
18	Do not know	63701011
0	Unspecified	63701011
5827	Not applicable	63701011
897	In the formal sector	63701012
354	In the informal sector	63701012
215	Private household	63701012
9	Do not know	63701012
0	Unspecified	63701012
7201	Not applicable	63701012
1848	In the formal sector	63701013
353	In the informal sector	63701013
417	Private household	63701013
72	Do not know	63701013
0	Unspecified	63701013
8495	Not applicable	63701013
995	In the formal sector	63701014
214	In the informal sector	63701014
343	Private household	63701014
2	Do not know	63701014
0	Unspecified	63701014
5842	Not applicable	63701014
583	In the formal sector	63701015
145	In the informal sector	63701015
108	Private household	63701015
12	Do not know	63701015
0	Unspecified	63701015
3803	Not applicable	63701015
780	In the formal sector	63701016
183	In the informal sector	63701016
324	Private household	63701016
73	Do not know	63701016
0	Unspecified	63701016
5248	Not applicable	63701016
439	In the formal sector	63701017
43	In the informal sector	63701017
130	Private household	63701017
21	Do not know	63701017
0	Unspecified	63701017
3877	Not applicable	63701017
734	In the formal sector	63701018
142	In the informal sector	63701018
75	Private household	63701018
0	Do not know	63701018
0	Unspecified	63701018
4601	Not applicable	63701018
886	In the formal sector	63701019
235	In the informal sector	63701019
136	Private household	63701019
22	Do not know	63701019
0	Unspecified	63701019
5594	Not applicable	63701019
606	In the formal sector	63701020
95	In the informal sector	63701020
114	Private household	63701020
32	Do not know	63701020
0	Unspecified	63701020
4847	Not applicable	63701020
547	In the formal sector	63701021
74	In the informal sector	63701021
46	Private household	63701021
25	Do not know	63701021
0	Unspecified	63701021
4563	Not applicable	63701021
1008	In the formal sector	63701022
250	In the informal sector	63701022
362	Private household	63701022
37	Do not know	63701022
0	Unspecified	63701022
6658	Not applicable	63701022
527	In the formal sector	63701023
202	In the informal sector	63701023
220	Private household	63701023
35	Do not know	63701023
0	Unspecified	63701023
5807	Not applicable	63701023
565	In the formal sector	63701024
158	In the informal sector	63701024
116	Private household	63701024
6	Do not know	63701024
0	Unspecified	63701024
3890	Not applicable	63701024
828	In the formal sector	63701025
134	In the informal sector	63701025
120	Private household	63701025
31	Do not know	63701025
0	Unspecified	63701025
5245	Not applicable	63701025
584	In the formal sector	63701026
160	In the informal sector	63701026
191	Private household	63701026
28	Do not know	63701026
0	Unspecified	63701026
6032	Not applicable	63701026
595	In the formal sector	63701027
235	In the informal sector	63701027
160	Private household	63701027
16	Do not know	63701027
0	Unspecified	63701027
3690	Not applicable	63701027
764	In the formal sector	63701028
272	In the informal sector	63701028
363	Private household	63701028
69	Do not know	63701028
0	Unspecified	63701028
8005	Not applicable	63701028
1167	In the formal sector	63702001
260	In the informal sector	63702001
258	Private household	63702001
71	Do not know	63702001
0	Unspecified	63702001
7761	Not applicable	63702001
901	In the formal sector	63702002
331	In the informal sector	63702002
219	Private household	63702002
52	Do not know	63702002
0	Unspecified	63702002
7108	Not applicable	63702002
1072	In the formal sector	63702003
357	In the informal sector	63702003
258	Private household	63702003
21	Do not know	63702003
0	Unspecified	63702003
9174	Not applicable	63702003
1116	In the formal sector	63702004
252	In the informal sector	63702004
140	Private household	63702004
45	Do not know	63702004
0	Unspecified	63702004
7884	Not applicable	63702004
1585	In the formal sector	63702005
308	In the informal sector	63702005
353	Private household	63702005
86	Do not know	63702005
0	Unspecified	63702005
10027	Not applicable	63702005
1306	In the formal sector	63702006
149	In the informal sector	63702006
195	Private household	63702006
16	Do not know	63702006
0	Unspecified	63702006
7653	Not applicable	63702006
1871	In the formal sector	63702007
450	In the informal sector	63702007
702	Private household	63702007
115	Do not know	63702007
0	Unspecified	63702007
6407	Not applicable	63702007
1317	In the formal sector	63702008
244	In the informal sector	63702008
392	Private household	63702008
13	Do not know	63702008
0	Unspecified	63702008
8666	Not applicable	63702008
2461	In the formal sector	63702009
364	In the informal sector	63702009
696	Private household	63702009
48	Do not know	63702009
0	Unspecified	63702009
10664	Not applicable	63702009
3448	In the formal sector	63702010
985	In the informal sector	63702010
759	Private household	63702010
194	Do not know	63702010
0	Unspecified	63702010
14764	Not applicable	63702010
2647	In the formal sector	63702011
290	In the informal sector	63702011
557	Private household	63702011
7	Do not know	63702011
0	Unspecified	63702011
9408	Not applicable	63702011
1583	In the formal sector	63702012
364	In the informal sector	63702012
470	Private household	63702012
46	Do not know	63702012
0	Unspecified	63702012
6456	Not applicable	63702012
1880	In the formal sector	63702013
196	In the informal sector	63702013
268	Private household	63702013
136	Do not know	63702013
0	Unspecified	63702013
5079	Not applicable	63702013
6762	In the formal sector	63702014
1811	In the informal sector	63702014
2233	Private household	63702014
262	Do not know	63702014
0	Unspecified	63702014
11937	Not applicable	63702014
1487	In the formal sector	63702015
452	In the informal sector	63702015
385	Private household	63702015
32	Do not know	63702015
0	Unspecified	63702015
6524	Not applicable	63702015
2421	In the formal sector	63702016
597	In the informal sector	63702016
901	Private household	63702016
126	Do not know	63702016
0	Unspecified	63702016
9230	Not applicable	63702016
2843	In the formal sector	63702017
670	In the informal sector	63702017
474	Private household	63702017
145	Do not know	63702017
0	Unspecified	63702017
9696	Not applicable	63702017
1725	In the formal sector	63702018
590	In the informal sector	63702018
441	Private household	63702018
45	Do not know	63702018
0	Unspecified	63702018
8478	Not applicable	63702018
2406	In the formal sector	63702019
413	In the informal sector	63702019
207	Private household	63702019
57	Do not know	63702019
0	Unspecified	63702019
8865	Not applicable	63702019
2419	In the formal sector	63702020
414	In the informal sector	63702020
374	Private household	63702020
30	Do not know	63702020
0	Unspecified	63702020
8392	Not applicable	63702020
3869	In the formal sector	63702021
392	In the informal sector	63702021
588	Private household	63702021
194	Do not know	63702021
0	Unspecified	63702021
8435	Not applicable	63702021
4461	In the formal sector	63702022
592	In the informal sector	63702022
522	Private household	63702022
187	Do not know	63702022
0	Unspecified	63702022
8777	Not applicable	63702022
1877	In the formal sector	63702023
279	In the informal sector	63702023
337	Private household	63702023
104	Do not know	63702023
0	Unspecified	63702023
3112	Not applicable	63702023
1635	In the formal sector	63702024
331	In the informal sector	63702024
414	Private household	63702024
93	Do not know	63702024
0	Unspecified	63702024
11341	Not applicable	63702024
8962	In the formal sector	63702025
2042	In the informal sector	63702025
1481	Private household	63702025
360	Do not know	63702025
0	Unspecified	63702025
24120	Not applicable	63702025
7812	In the formal sector	63702026
664	In the informal sector	63702026
469	Private household	63702026
70	Do not know	63702026
0	Unspecified	63702026
11360	Not applicable	63702026
5098	In the formal sector	63702027
1803	In the informal sector	63702027
614	Private household	63702027
57	Do not know	63702027
0	Unspecified	63702027
8519	Not applicable	63702027
2286	In the formal sector	63702028
1070	In the informal sector	63702028
199	Private household	63702028
110	Do not know	63702028
0	Unspecified	63702028
8120	Not applicable	63702028
4882	In the formal sector	63702029
1643	In the informal sector	63702029
3789	Private household	63702029
335	Do not know	63702029
0	Unspecified	63702029
10522	Not applicable	63702029
5783	In the formal sector	63702030
1332	In the informal sector	63702030
1276	Private household	63702030
335	Do not know	63702030
0	Unspecified	63702030
8165	Not applicable	63702030
2050	In the formal sector	63702031
187	In the informal sector	63702031
268	Private household	63702031
103	Do not know	63702031
0	Unspecified	63702031
5903	Not applicable	63702031
3028	In the formal sector	63702032
113	In the informal sector	63702032
130	Private household	63702032
18	Do not know	63702032
0	Unspecified	63702032
5370	Not applicable	63702032
5541	In the formal sector	63702033
714	In the informal sector	63702033
1026	Private household	63702033
303	Do not know	63702033
0	Unspecified	63702033
7136	Not applicable	63702033
1134	In the formal sector	63702034
203	In the informal sector	63702034
267	Private household	63702034
27	Do not know	63702034
0	Unspecified	63702034
8276	Not applicable	63702034
1882	In the formal sector	63702035
261	In the informal sector	63702035
356	Private household	63702035
118	Do not know	63702035
0	Unspecified	63702035
13246	Not applicable	63702035
1535	In the formal sector	63702036
316	In the informal sector	63702036
318	Private household	63702036
36	Do not know	63702036
0	Unspecified	63702036
8784	Not applicable	63702036
3609	In the formal sector	63703001
463	In the informal sector	63703001
679	Private household	63703001
75	Do not know	63703001
0	Unspecified	63703001
10993	Not applicable	63703001
4755	In the formal sector	63703002
409	In the informal sector	63703002
311	Private household	63703002
81	Do not know	63703002
0	Unspecified	63703002
11236	Not applicable	63703002
3509	In the formal sector	63703003
557	In the informal sector	63703003
141	Private household	63703003
37	Do not know	63703003
0	Unspecified	63703003
6487	Not applicable	63703003
4309	In the formal sector	63703004
1132	In the informal sector	63703004
599	Private household	63703004
40	Do not know	63703004
0	Unspecified	63703004
7688	Not applicable	63703004
1892	In the formal sector	63703005
307	In the informal sector	63703005
208	Private household	63703005
32	Do not know	63703005
0	Unspecified	63703005
6577	Not applicable	63703005
2822	In the formal sector	63703006
510	In the informal sector	63703006
280	Private household	63703006
33	Do not know	63703006
0	Unspecified	63703006
9104	Not applicable	63703006
4245	In the formal sector	63703007
1028	In the informal sector	63703007
705	Private household	63703007
89	Do not know	63703007
0	Unspecified	63703007
11837	Not applicable	63703007
8077	In the formal sector	63703008
900	In the informal sector	63703008
473	Private household	63703008
71	Do not know	63703008
0	Unspecified	63703008
12380	Not applicable	63703008
1762	In the formal sector	63703009
161	In the informal sector	63703009
334	Private household	63703009
15	Do not know	63703009
0	Unspecified	63703009
6239	Not applicable	63703009
5682	In the formal sector	63703010
685	In the informal sector	63703010
856	Private household	63703010
146	Do not know	63703010
0	Unspecified	63703010
11686	Not applicable	63703010
4101	In the formal sector	63703011
819	In the informal sector	63703011
1081	Private household	63703011
56	Do not know	63703011
0	Unspecified	63703011
11521	Not applicable	63703011
4176	In the formal sector	63703012
914	In the informal sector	63703012
601	Private household	63703012
71	Do not know	63703012
0	Unspecified	63703012
9254	Not applicable	63703012
3064	In the formal sector	63703013
199	In the informal sector	63703013
258	Private household	63703013
32	Do not know	63703013
0	Unspecified	63703013
4289	Not applicable	63703013
4003	In the formal sector	63703014
367	In the informal sector	63703014
542	Private household	63703014
163	Do not know	63703014
0	Unspecified	63703014
4405	Not applicable	63703014
5188	In the formal sector	63703015
445	In the informal sector	63703015
461	Private household	63703015
241	Do not know	63703015
0	Unspecified	63703015
6299	Not applicable	63703015
3786	In the formal sector	63703016
275	In the informal sector	63703016
761	Private household	63703016
193	Do not know	63703016
0	Unspecified	63703016
4509	Not applicable	63703016
8286	In the formal sector	63703017
829	In the informal sector	63703017
1591	Private household	63703017
395	Do not know	63703017
0	Unspecified	63703017
9787	Not applicable	63703017
7042	In the formal sector	63703018
764	In the informal sector	63703018
1398	Private household	63703018
214	Do not know	63703018
0	Unspecified	63703018
14084	Not applicable	63703018
6407	In the formal sector	63703019
736	In the informal sector	63703019
1154	Private household	63703019
112	Do not know	63703019
0	Unspecified	63703019
15691	Not applicable	63703019
2049	In the formal sector	63703020
304	In the informal sector	63703020
618	Private household	63703020
38	Do not know	63703020
0	Unspecified	63703020
5708	Not applicable	63703020
2951	In the formal sector	63703021
644	In the informal sector	63703021
1356	Private household	63703021
80	Do not know	63703021
0	Unspecified	63703021
13098	Not applicable	63703021
5112	In the formal sector	63703022
669	In the informal sector	63703022
847	Private household	63703022
455	Do not know	63703022
0	Unspecified	63703022
11438	Not applicable	63703022
2558	In the formal sector	63703023
507	In the informal sector	63703023
899	Private household	63703023
27	Do not know	63703023
0	Unspecified	63703023
8723	Not applicable	63703023
7581	In the formal sector	63703024
187	In the informal sector	63703024
356	Private household	63703024
139	Do not know	63703024
0	Unspecified	63703024
17209	Not applicable	63703024
1999	In the formal sector	63703025
248	In the informal sector	63703025
126	Private household	63703025
12	Do not know	63703025
0	Unspecified	63703025
7690	Not applicable	63703025
2058	In the formal sector	63703026
366	In the informal sector	63703026
391	Private household	63703026
243	Do not know	63703026
0	Unspecified	63703026
10916	Not applicable	63703026
1693	In the formal sector	63703027
314	In the informal sector	63703027
574	Private household	63703027
45	Do not know	63703027
0	Unspecified	63703027
12067	Not applicable	63703027
1436	In the formal sector	63703028
262	In the informal sector	63703028
372	Private household	63703028
53	Do not know	63703028
0	Unspecified	63703028
9575	Not applicable	63703028
3164	In the formal sector	63703029
709	In the informal sector	63703029
389	Private household	63703029
43	Do not know	63703029
0	Unspecified	63703029
13293	Not applicable	63703029
2092	In the formal sector	63703030
368	In the informal sector	63703030
274	Private household	63703030
54	Do not know	63703030
0	Unspecified	63703030
10742	Not applicable	63703030
3484	In the formal sector	63703031
431	In the informal sector	63703031
337	Private household	63703031
29	Do not know	63703031
0	Unspecified	63703031
7554	Not applicable	63703031
6749	In the formal sector	63703032
730	In the informal sector	63703032
736	Private household	63703032
105	Do not know	63703032
0	Unspecified	63703032
8346	Not applicable	63703032
1263	In the formal sector	63703033
420	In the informal sector	63703033
454	Private household	63703033
201	Do not know	63703033
0	Unspecified	63703033
4106	Not applicable	63703033
2906	In the formal sector	63703034
605	In the informal sector	63703034
341	Private household	63703034
49	Do not know	63703034
0	Unspecified	63703034
6791	Not applicable	63703034
3058	In the formal sector	63703035
678	In the informal sector	63703035
843	Private household	63703035
231	Do not know	63703035
0	Unspecified	63703035
5994	Not applicable	63703035
4026	In the formal sector	63703036
1881	In the informal sector	63703036
1561	Private household	63703036
365	Do not know	63703036
0	Unspecified	63703036
9100	Not applicable	63703036
5760	In the formal sector	63703037
1162	In the informal sector	63703037
999	Private household	63703037
116	Do not know	63703037
0	Unspecified	63703037
13125	Not applicable	63703037
1272	In the formal sector	63703038
125	In the informal sector	63703038
118	Private household	63703038
18	Do not know	63703038
0	Unspecified	63703038
1580	Not applicable	63703038
987	In the formal sector	63704001
196	In the informal sector	63704001
222	Private household	63704001
67	Do not know	63704001
0	Unspecified	63704001
7108	Not applicable	63704001
2031	In the formal sector	63704002
1316	In the informal sector	63704002
1348	Private household	63704002
94	Do not know	63704002
0	Unspecified	63704002
5288	Not applicable	63704002
898	In the formal sector	63704003
404	In the informal sector	63704003
360	Private household	63704003
102	Do not know	63704003
0	Unspecified	63704003
3144	Not applicable	63704003
800	In the formal sector	63704004
119	In the informal sector	63704004
123	Private household	63704004
13	Do not know	63704004
0	Unspecified	63704004
4198	Not applicable	63704004
1151	In the formal sector	63704005
515	In the informal sector	63704005
251	Private household	63704005
119	Do not know	63704005
0	Unspecified	63704005
9526	Not applicable	63704005
1708	In the formal sector	63704006
1608	In the informal sector	63704006
774	Private household	63704006
213	Do not know	63704006
0	Unspecified	63704006
6366	Not applicable	63704006
284	In the formal sector	63705001
59	In the informal sector	63705001
91	Private household	63705001
29	Do not know	63705001
0	Unspecified	63705001
5604	Not applicable	63705001
440	In the formal sector	63705002
102	In the informal sector	63705002
41	Private household	63705002
10	Do not know	63705002
0	Unspecified	63705002
6938	Not applicable	63705002
520	In the formal sector	63705003
176	In the informal sector	63705003
78	Private household	63705003
17	Do not know	63705003
0	Unspecified	63705003
5862	Not applicable	63705003
476	In the formal sector	63705004
106	In the informal sector	63705004
108	Private household	63705004
21	Do not know	63705004
0	Unspecified	63705004
9285	Not applicable	63705004
1377	In the formal sector	63705005
309	In the informal sector	63705005
161	Private household	63705005
7	Do not know	63705005
0	Unspecified	63705005
8545	Not applicable	63705005
653	In the formal sector	63705006
342	In the informal sector	63705006
113	Private household	63705006
3	Do not know	63705006
0	Unspecified	63705006
5835	Not applicable	63705006
1726	In the formal sector	63705007
125	In the informal sector	63705007
101	Private household	63705007
38	Do not know	63705007
0	Unspecified	63705007
5297	Not applicable	63705007
1033	In the formal sector	63705008
468	In the informal sector	63705008
148	Private household	63705008
25	Do not know	63705008
0	Unspecified	63705008
5465	Not applicable	63705008
2028	In the formal sector	63705009
196	In the informal sector	63705009
149	Private household	63705009
8	Do not know	63705009
0	Unspecified	63705009
6388	Not applicable	63705009
3193	In the formal sector	63705010
338	In the informal sector	63705010
331	Private household	63705010
59	Do not know	63705010
0	Unspecified	63705010
8128	Not applicable	63705010
839	In the formal sector	63705011
82	In the informal sector	63705011
58	Private household	63705011
4	Do not know	63705011
0	Unspecified	63705011
5170	Not applicable	63705011
698	In the formal sector	63705012
105	In the informal sector	63705012
58	Private household	63705012
0	Do not know	63705012
0	Unspecified	63705012
4735	Not applicable	63705012
1918	In the formal sector	63705013
176	In the informal sector	63705013
251	Private household	63705013
29	Do not know	63705013
0	Unspecified	63705013
4687	Not applicable	63705013
2474	In the formal sector	63705014
119	In the informal sector	63705014
134	Private household	63705014
21	Do not know	63705014
0	Unspecified	63705014
4920	Not applicable	63705014
1887	In the formal sector	63705015
383	In the informal sector	63705015
465	Private household	63705015
15	Do not know	63705015
0	Unspecified	63705015
4813	Not applicable	63705015
2141	In the formal sector	63705016
197	In the informal sector	63705016
161	Private household	63705016
20	Do not know	63705016
0	Unspecified	63705016
7419	Not applicable	63705016
1719	In the formal sector	63705017
120	In the informal sector	63705017
297	Private household	63705017
6	Do not know	63705017
0	Unspecified	63705017
7205	Not applicable	63705017
328	In the formal sector	63705018
66	In the informal sector	63705018
98	Private household	63705018
7	Do not know	63705018
0	Unspecified	63705018
6216	Not applicable	63705018
729	In the formal sector	63705019
115	In the informal sector	63705019
102	Private household	63705019
32	Do not know	63705019
0	Unspecified	63705019
6532	Not applicable	63705019
468	In the formal sector	63705020
51	In the informal sector	63705020
46	Private household	63705020
1	Do not know	63705020
0	Unspecified	63705020
6663	Not applicable	63705020
525	In the formal sector	63705021
178	In the informal sector	63705021
135	Private household	63705021
11	Do not know	63705021
0	Unspecified	63705021
7469	Not applicable	63705021
946	In the formal sector	63705022
385	In the informal sector	63705022
101	Private household	63705022
27	Do not know	63705022
0	Unspecified	63705022
5771	Not applicable	63705022
722	In the formal sector	63705023
102	In the informal sector	63705023
77	Private household	63705023
18	Do not know	63705023
0	Unspecified	63705023
6922	Not applicable	63705023
469	In the formal sector	63705024
65	In the informal sector	63705024
55	Private household	63705024
6	Do not know	63705024
0	Unspecified	63705024
3661	Not applicable	63705024
565	In the formal sector	63705025
210	In the informal sector	63705025
180	Private household	63705025
15	Do not know	63705025
0	Unspecified	63705025
6376	Not applicable	63705025
585	In the formal sector	63705026
205	In the informal sector	63705026
282	Private household	63705026
23	Do not know	63705026
0	Unspecified	63705026
6488	Not applicable	63705026
1252	In the formal sector	63705027
255	In the informal sector	63705027
91	Private household	63705027
21	Do not know	63705027
0	Unspecified	63705027
7036	Not applicable	63705027
2173	In the formal sector	63705028
249	In the informal sector	63705028
228	Private household	63705028
24	Do not know	63705028
0	Unspecified	63705028
6905	Not applicable	63705028
1185	In the formal sector	63705029
678	In the informal sector	63705029
75	Private household	63705029
17	Do not know	63705029
0	Unspecified	63705029
7290	Not applicable	63705029
1423	In the formal sector	63705030
168	In the informal sector	63705030
124	Private household	63705030
24	Do not know	63705030
0	Unspecified	63705030
5623	Not applicable	63705030
1037	In the formal sector	63705031
225	In the informal sector	63705031
88	Private household	63705031
13	Do not know	63705031
0	Unspecified	63705031
6166	Not applicable	63705031
319	In the formal sector	63801001
61	In the informal sector	63801001
38	Private household	63801001
17	Do not know	63801001
0	Unspecified	63801001
6948	Not applicable	63801001
342	In the formal sector	63801002
127	In the informal sector	63801002
41	Private household	63801002
21	Do not know	63801002
0	Unspecified	63801002
5858	Not applicable	63801002
323	In the formal sector	63801003
73	In the informal sector	63801003
68	Private household	63801003
7	Do not know	63801003
0	Unspecified	63801003
6763	Not applicable	63801003
256	In the formal sector	63801004
74	In the informal sector	63801004
69	Private household	63801004
11	Do not know	63801004
0	Unspecified	63801004
8161	Not applicable	63801004
261	In the formal sector	63801005
121	In the informal sector	63801005
161	Private household	63801005
30	Do not know	63801005
0	Unspecified	63801005
4956	Not applicable	63801005
356	In the formal sector	63801006
60	In the informal sector	63801006
52	Private household	63801006
14	Do not know	63801006
0	Unspecified	63801006
5477	Not applicable	63801006
191	In the formal sector	63801007
42	In the informal sector	63801007
38	Private household	63801007
7	Do not know	63801007
0	Unspecified	63801007
7736	Not applicable	63801007
448	In the formal sector	63801008
160	In the informal sector	63801008
105	Private household	63801008
7	Do not know	63801008
0	Unspecified	63801008
10844	Not applicable	63801008
291	In the formal sector	63801009
51	In the informal sector	63801009
8	Private household	63801009
8	Do not know	63801009
0	Unspecified	63801009
8666	Not applicable	63801009
83	In the formal sector	63801010
27	In the informal sector	63801010
20	Private household	63801010
3	Do not know	63801010
0	Unspecified	63801010
2986	Not applicable	63801010
509	In the formal sector	63801011
263	In the informal sector	63801011
1046	Private household	63801011
16	Do not know	63801011
0	Unspecified	63801011
5333	Not applicable	63801011
198	In the formal sector	63801012
37	In the informal sector	63801012
14	Private household	63801012
9	Do not know	63801012
0	Unspecified	63801012
6762	Not applicable	63801012
725	In the formal sector	63801013
303	In the informal sector	63801013
274	Private household	63801013
110	Do not know	63801013
0	Unspecified	63801013
9102	Not applicable	63801013
572	In the formal sector	63801014
408	In the informal sector	63801014
160	Private household	63801014
15	Do not know	63801014
0	Unspecified	63801014
8694	Not applicable	63801014
1225	In the formal sector	63802001
243	In the informal sector	63802001
368	Private household	63802001
18	Do not know	63802001
0	Unspecified	63802001
7988	Not applicable	63802001
271	In the formal sector	63802002
87	In the informal sector	63802002
102	Private household	63802002
3	Do not know	63802002
0	Unspecified	63802002
7206	Not applicable	63802002
226	In the formal sector	63802003
77	In the informal sector	63802003
71	Private household	63802003
3	Do not know	63802003
0	Unspecified	63802003
6083	Not applicable	63802003
473	In the formal sector	63802004
131	In the informal sector	63802004
113	Private household	63802004
15	Do not know	63802004
0	Unspecified	63802004
6951	Not applicable	63802004
255	In the formal sector	63802005
29	In the informal sector	63802005
134	Private household	63802005
2	Do not know	63802005
0	Unspecified	63802005
6406	Not applicable	63802005
485	In the formal sector	63802006
100	In the informal sector	63802006
192	Private household	63802006
9	Do not know	63802006
0	Unspecified	63802006
7427	Not applicable	63802006
1095	In the formal sector	63802007
252	In the informal sector	63802007
342	Private household	63802007
34	Do not know	63802007
0	Unspecified	63802007
6731	Not applicable	63802007
694	In the formal sector	63802008
168	In the informal sector	63802008
83	Private household	63802008
7	Do not know	63802008
0	Unspecified	63802008
3613	Not applicable	63802008
1734	In the formal sector	63802009
619	In the informal sector	63802009
1341	Private household	63802009
53	Do not know	63802009
0	Unspecified	63802009
12833	Not applicable	63802009
1239	In the formal sector	63802010
442	In the informal sector	63802010
350	Private household	63802010
7	Do not know	63802010
0	Unspecified	63802010
8192	Not applicable	63802010
287	In the formal sector	63802011
157	In the informal sector	63802011
171	Private household	63802011
21	Do not know	63802011
0	Unspecified	63802011
7031	Not applicable	63802011
952	In the formal sector	63802012
499	In the informal sector	63802012
606	Private household	63802012
14	Do not know	63802012
0	Unspecified	63802012
9059	Not applicable	63802012
260	In the formal sector	63802013
25	In the informal sector	63802013
65	Private household	63802013
8	Do not know	63802013
0	Unspecified	63802013
3125	Not applicable	63802013
1536	In the formal sector	63802014
525	In the informal sector	63802014
303	Private household	63802014
22	Do not know	63802014
0	Unspecified	63802014
4434	Not applicable	63802014
1166	In the formal sector	63802015
763	In the informal sector	63802015
731	Private household	63802015
33	Do not know	63802015
0	Unspecified	63802015
5902	Not applicable	63802015
548	In the formal sector	63803001
283	In the informal sector	63803001
145	Private household	63803001
14	Do not know	63803001
0	Unspecified	63803001
9362	Not applicable	63803001
1097	In the formal sector	63803002
85	In the informal sector	63803002
166	Private household	63803002
22	Do not know	63803002
0	Unspecified	63803002
6683	Not applicable	63803002
812	In the formal sector	63803003
404	In the informal sector	63803003
201	Private household	63803003
10	Do not know	63803003
0	Unspecified	63803003
7155	Not applicable	63803003
1322	In the formal sector	63803004
500	In the informal sector	63803004
526	Private household	63803004
70	Do not know	63803004
0	Unspecified	63803004
6764	Not applicable	63803004
358	In the formal sector	63803005
58	In the informal sector	63803005
136	Private household	63803005
5	Do not know	63803005
0	Unspecified	63803005
2934	Not applicable	63803005
1888	In the formal sector	63803006
248	In the informal sector	63803006
488	Private household	63803006
29	Do not know	63803006
0	Unspecified	63803006
8140	Not applicable	63803006
3025	In the formal sector	63803007
972	In the informal sector	63803007
423	Private household	63803007
58	Do not know	63803007
0	Unspecified	63803007
10679	Not applicable	63803007
1509	In the formal sector	63803008
112	In the informal sector	63803008
159	Private household	63803008
22	Do not know	63803008
0	Unspecified	63803008
5112	Not applicable	63803008
2624	In the formal sector	63803009
397	In the informal sector	63803009
203	Private household	63803009
12	Do not know	63803009
0	Unspecified	63803009
8040	Not applicable	63803009
2257	In the formal sector	63803010
136	In the informal sector	63803010
225	Private household	63803010
20	Do not know	63803010
0	Unspecified	63803010
4028	Not applicable	63803010
728	In the formal sector	63803011
380	In the informal sector	63803011
156	Private household	63803011
31	Do not know	63803011
0	Unspecified	63803011
4375	Not applicable	63803011
2609	In the formal sector	63803012
192	In the informal sector	63803012
299	Private household	63803012
50	Do not know	63803012
0	Unspecified	63803012
6429	Not applicable	63803012
3796	In the formal sector	63803013
339	In the informal sector	63803013
522	Private household	63803013
62	Do not know	63803013
0	Unspecified	63803013
10266	Not applicable	63803013
1675	In the formal sector	63803014
478	In the informal sector	63803014
263	Private household	63803014
29	Do not know	63803014
0	Unspecified	63803014
10819	Not applicable	63803014
898	In the formal sector	63803015
587	In the informal sector	63803015
235	Private household	63803015
20	Do not know	63803015
0	Unspecified	63803015
6323	Not applicable	63803015
1593	In the formal sector	63803016
385	In the informal sector	63803016
230	Private household	63803016
42	Do not know	63803016
0	Unspecified	63803016
8374	Not applicable	63803016
1176	In the formal sector	63803017
212	In the informal sector	63803017
139	Private household	63803017
27	Do not know	63803017
0	Unspecified	63803017
6324	Not applicable	63803017
1144	In the formal sector	63803018
216	In the informal sector	63803018
280	Private household	63803018
22	Do not know	63803018
0	Unspecified	63803018
7992	Not applicable	63803018
582	In the formal sector	63803019
140	In the informal sector	63803019
137	Private household	63803019
7	Do not know	63803019
0	Unspecified	63803019
4555	Not applicable	63803019
1347	In the formal sector	63803020
207	In the informal sector	63803020
115	Private household	63803020
13	Do not know	63803020
0	Unspecified	63803020
4121	Not applicable	63803020
714	In the formal sector	63803021
250	In the informal sector	63803021
353	Private household	63803021
11	Do not know	63803021
0	Unspecified	63803021
6974	Not applicable	63803021
1183	In the formal sector	63803022
316	In the informal sector	63803022
319	Private household	63803022
22	Do not know	63803022
0	Unspecified	63803022
10664	Not applicable	63803022
525	In the formal sector	63803023
143	In the informal sector	63803023
257	Private household	63803023
2	Do not know	63803023
0	Unspecified	63803023
7112	Not applicable	63803023
418	In the formal sector	63803024
167	In the informal sector	63803024
320	Private household	63803024
3	Do not know	63803024
0	Unspecified	63803024
8103	Not applicable	63803024
460	In the formal sector	63803025
170	In the informal sector	63803025
160	Private household	63803025
5	Do not know	63803025
0	Unspecified	63803025
7312	Not applicable	63803025
209	In the formal sector	63803026
161	In the informal sector	63803026
63	Private household	63803026
5	Do not know	63803026
0	Unspecified	63803026
9036	Not applicable	63803026
970	In the formal sector	63803027
352	In the informal sector	63803027
302	Private household	63803027
75	Do not know	63803027
0	Unspecified	63803027
9246	Not applicable	63803027
1482	In the formal sector	63803028
837	In the informal sector	63803028
355	Private household	63803028
69	Do not know	63803028
0	Unspecified	63803028
8618	Not applicable	63803028
1934	In the formal sector	63803029
626	In the informal sector	63803029
307	Private household	63803029
19	Do not know	63803029
0	Unspecified	63803029
8214	Not applicable	63803029
1258	In the formal sector	63803030
260	In the informal sector	63803030
177	Private household	63803030
7	Do not know	63803030
0	Unspecified	63803030
7139	Not applicable	63803030
1375	In the formal sector	63803031
540	In the informal sector	63803031
330	Private household	63803031
40	Do not know	63803031
0	Unspecified	63803031
10144	Not applicable	63803031
1196	In the formal sector	63804001
110	In the informal sector	63804001
293	Private household	63804001
7	Do not know	63804001
0	Unspecified	63804001
5089	Not applicable	63804001
1298	In the formal sector	63804002
176	In the informal sector	63804002
204	Private household	63804002
13	Do not know	63804002
0	Unspecified	63804002
4334	Not applicable	63804002
1525	In the formal sector	63804003
220	In the informal sector	63804003
427	Private household	63804003
14	Do not know	63804003
0	Unspecified	63804003
5954	Not applicable	63804003
1382	In the formal sector	63804004
207	In the informal sector	63804004
457	Private household	63804004
18	Do not know	63804004
0	Unspecified	63804004
7326	Not applicable	63804004
2850	In the formal sector	63804005
177	In the informal sector	63804005
333	Private household	63804005
67	Do not know	63804005
0	Unspecified	63804005
4965	Not applicable	63804005
2236	In the formal sector	63804006
116	In the informal sector	63804006
138	Private household	63804006
42	Do not know	63804006
0	Unspecified	63804006
3477	Not applicable	63804006
468	In the formal sector	63804007
132	In the informal sector	63804007
142	Private household	63804007
23	Do not know	63804007
0	Unspecified	63804007
4237	Not applicable	63804007
1125	In the formal sector	63804008
87	In the informal sector	63804008
194	Private household	63804008
11	Do not know	63804008
0	Unspecified	63804008
5708	Not applicable	63804008
706	In the formal sector	63804009
132	In the informal sector	63804009
113	Private household	63804009
3	Do not know	63804009
0	Unspecified	63804009
3810	Not applicable	63804009
722	In the formal sector	63804010
138	In the informal sector	63804010
210	Private household	63804010
21	Do not know	63804010
0	Unspecified	63804010
7908	Not applicable	63804010
436	In the formal sector	63804011
96	In the informal sector	63804011
191	Private household	63804011
2	Do not know	63804011
0	Unspecified	63804011
5707	Not applicable	63804011
782	In the formal sector	63804012
213	In the informal sector	63804012
258	Private household	63804012
40	Do not know	63804012
0	Unspecified	63804012
4847	Not applicable	63804012
1293	In the formal sector	63804013
1095	In the informal sector	63804013
986	Private household	63804013
89	Do not know	63804013
0	Unspecified	63804013
8068	Not applicable	63804013
1814	In the formal sector	63804014
1201	In the informal sector	63804014
725	Private household	63804014
43	Do not know	63804014
0	Unspecified	63804014
7868	Not applicable	63804014
851	In the formal sector	63804015
187	In the informal sector	63804015
394	Private household	63804015
5	Do not know	63804015
0	Unspecified	63804015
9818	Not applicable	63804015
1607	In the formal sector	63804016
307	In the informal sector	63804016
873	Private household	63804016
16	Do not know	63804016
0	Unspecified	63804016
8170	Not applicable	63804016
418	In the formal sector	63804017
124	In the informal sector	63804017
148	Private household	63804017
12	Do not know	63804017
0	Unspecified	63804017
6176	Not applicable	63804017
365	In the formal sector	63804018
76	In the informal sector	63804018
116	Private household	63804018
5	Do not know	63804018
0	Unspecified	63804018
4966	Not applicable	63804018
376	In the formal sector	63804019
113	In the informal sector	63804019
94	Private household	63804019
17	Do not know	63804019
0	Unspecified	63804019
6736	Not applicable	63804019
1406	In the formal sector	63804020
453	In the informal sector	63804020
724	Private household	63804020
17	Do not know	63804020
0	Unspecified	63804020
6314	Not applicable	63804020
1340	In the formal sector	63804021
376	In the informal sector	63804021
836	Private household	63804021
25	Do not know	63804021
0	Unspecified	63804021
9144	Not applicable	63804021
239	In the formal sector	63805001
31	In the informal sector	63805001
44	Private household	63805001
9	Do not know	63805001
0	Unspecified	63805001
4452	Not applicable	63805001
318	In the formal sector	63805002
50	In the informal sector	63805002
38	Private household	63805002
13	Do not know	63805002
0	Unspecified	63805002
8350	Not applicable	63805002
251	In the formal sector	63805003
106	In the informal sector	63805003
38	Private household	63805003
1	Do not know	63805003
0	Unspecified	63805003
5225	Not applicable	63805003
485	In the formal sector	63805004
105	In the informal sector	63805004
67	Private household	63805004
9	Do not know	63805004
0	Unspecified	63805004
6257	Not applicable	63805004
235	In the formal sector	63805005
89	In the informal sector	63805005
66	Private household	63805005
8	Do not know	63805005
0	Unspecified	63805005
5949	Not applicable	63805005
358	In the formal sector	63805006
176	In the informal sector	63805006
32	Private household	63805006
16	Do not know	63805006
0	Unspecified	63805006
4496	Not applicable	63805006
218	In the formal sector	63805007
73	In the informal sector	63805007
71	Private household	63805007
23	Do not know	63805007
0	Unspecified	63805007
7489	Not applicable	63805007
241	In the formal sector	63805008
83	In the informal sector	63805008
55	Private household	63805008
6	Do not know	63805008
0	Unspecified	63805008
6087	Not applicable	63805008
378	In the formal sector	63805009
41	In the informal sector	63805009
37	Private household	63805009
4	Do not know	63805009
0	Unspecified	63805009
5358	Not applicable	63805009
272	In the formal sector	63805010
19	In the informal sector	63805010
58	Private household	63805010
2	Do not know	63805010
0	Unspecified	63805010
4515	Not applicable	63805010
623	In the formal sector	63805011
150	In the informal sector	63805011
89	Private household	63805011
5	Do not know	63805011
0	Unspecified	63805011
9642	Not applicable	63805011
1707	In the formal sector	63805012
85	In the informal sector	63805012
116	Private household	63805012
6	Do not know	63805012
0	Unspecified	63805012
5894	Not applicable	63805012
691	In the formal sector	63805013
169	In the informal sector	63805013
181	Private household	63805013
19	Do not know	63805013
0	Unspecified	63805013
8959	Not applicable	63805013
938	In the formal sector	63805014
88	In the informal sector	63805014
135	Private household	63805014
50	Do not know	63805014
0	Unspecified	63805014
6981	Not applicable	63805014
1944	In the formal sector	63805015
317	In the informal sector	63805015
363	Private household	63805015
42	Do not know	63805015
0	Unspecified	63805015
4053	Not applicable	63805015
1803	In the formal sector	63805016
288	In the informal sector	63805016
271	Private household	63805016
22	Do not know	63805016
0	Unspecified	63805016
6884	Not applicable	63805016
1106	In the formal sector	63805017
351	In the informal sector	63805017
461	Private household	63805017
66	Do not know	63805017
0	Unspecified	63805017
5959	Not applicable	63805017
390	In the formal sector	63805018
104	In the informal sector	63805018
136	Private household	63805018
18	Do not know	63805018
0	Unspecified	63805018
6670	Not applicable	63805018
2496	In the formal sector	63805019
825	In the informal sector	63805019
1704	Private household	63805019
109	Do not know	63805019
0	Unspecified	63805019
8406	Not applicable	63805019
512	In the formal sector	63805020
97	In the informal sector	63805020
85	Private household	63805020
1	Do not know	63805020
0	Unspecified	63805020
6158	Not applicable	63805020
902	In the formal sector	63902001
573	In the informal sector	63902001
1035	Private household	63902001
53	Do not know	63902001
0	Unspecified	63902001
6697	Not applicable	63902001
1488	In the formal sector	63902002
239	In the informal sector	63902002
549	Private household	63902002
106	Do not know	63902002
0	Unspecified	63902002
4442	Not applicable	63902002
1035	In the formal sector	63902003
501	In the informal sector	63902003
402	Private household	63902003
87	Do not know	63902003
0	Unspecified	63902003
6546	Not applicable	63902003
1201	In the formal sector	63902004
406	In the informal sector	63902004
308	Private household	63902004
35	Do not know	63902004
0	Unspecified	63902004
9414	Not applicable	63902004
1307	In the formal sector	63902005
625	In the informal sector	63902005
985	Private household	63902005
28	Do not know	63902005
0	Unspecified	63902005
6000	Not applicable	63902005
653	In the formal sector	63902006
135	In the informal sector	63902006
244	Private household	63902006
9	Do not know	63902006
0	Unspecified	63902006
3709	Not applicable	63902006
2553	In the formal sector	63902007
629	In the informal sector	63902007
280	Private household	63902007
40	Do not know	63902007
0	Unspecified	63902007
3641	Not applicable	63902007
818	In the formal sector	63902008
223	In the informal sector	63902008
99	Private household	63902008
33	Do not know	63902008
0	Unspecified	63902008
3932	Not applicable	63902008
753	In the formal sector	63902009
177	In the informal sector	63902009
139	Private household	63902009
25	Do not know	63902009
0	Unspecified	63902009
3725	Not applicable	63902009
811	In the formal sector	63903001
442	In the informal sector	63903001
504	Private household	63903001
179	Do not know	63903001
0	Unspecified	63903001
6392	Not applicable	63903001
465	In the formal sector	63903002
29	In the informal sector	63903002
116	Private household	63903002
7	Do not know	63903002
0	Unspecified	63903002
4245	Not applicable	63903002
648	In the formal sector	63903003
326	In the informal sector	63903003
391	Private household	63903003
7	Do not know	63903003
0	Unspecified	63903003
6794	Not applicable	63903003
725	In the formal sector	63903004
114	In the informal sector	63903004
111	Private household	63903004
9	Do not know	63903004
0	Unspecified	63903004
5412	Not applicable	63903004
732	In the formal sector	63903005
275	In the informal sector	63903005
197	Private household	63903005
8	Do not know	63903005
0	Unspecified	63903005
8552	Not applicable	63903005
820	In the formal sector	63903006
174	In the informal sector	63903006
208	Private household	63903006
9	Do not know	63903006
0	Unspecified	63903006
6779	Not applicable	63903006
1457	In the formal sector	63903007
943	In the informal sector	63903007
419	Private household	63903007
104	Do not know	63903007
0	Unspecified	63903007
5440	Not applicable	63903007
670	In the formal sector	63903008
117	In the informal sector	63903008
218	Private household	63903008
11	Do not know	63903008
0	Unspecified	63903008
5495	Not applicable	63903008
720	In the formal sector	63904001
646	In the informal sector	63904001
343	Private household	63904001
7	Do not know	63904001
0	Unspecified	63904001
5924	Not applicable	63904001
364	In the formal sector	63904002
96	In the informal sector	63904002
102	Private household	63904002
21	Do not know	63904002
0	Unspecified	63904002
9027	Not applicable	63904002
374	In the formal sector	63904003
99	In the informal sector	63904003
34	Private household	63904003
11	Do not know	63904003
0	Unspecified	63904003
6745	Not applicable	63904003
303	In the formal sector	63904004
46	In the informal sector	63904004
62	Private household	63904004
1	Do not know	63904004
0	Unspecified	63904004
5510	Not applicable	63904004
1527	In the formal sector	63904005
151	In the informal sector	63904005
156	Private household	63904005
9	Do not know	63904005
0	Unspecified	63904005
5578	Not applicable	63904005
301	In the formal sector	63904006
87	In the informal sector	63904006
96	Private household	63904006
2	Do not know	63904006
0	Unspecified	63904006
8231	Not applicable	63904006
317	In the formal sector	63904007
65	In the informal sector	63904007
14	Private household	63904007
3	Do not know	63904007
0	Unspecified	63904007
5294	Not applicable	63904007
487	In the formal sector	63904008
94	In the informal sector	63904008
78	Private household	63904008
11	Do not know	63904008
0	Unspecified	63904008
6008	Not applicable	63904008
445	In the formal sector	63904009
114	In the informal sector	63904009
57	Private household	63904009
8	Do not know	63904009
0	Unspecified	63904009
7542	Not applicable	63904009
272	In the formal sector	63904010
164	In the informal sector	63904010
29	Private household	63904010
11	Do not know	63904010
0	Unspecified	63904010
6435	Not applicable	63904010
950	In the formal sector	63904011
147	In the informal sector	63904011
265	Private household	63904011
38	Do not know	63904011
0	Unspecified	63904011
4212	Not applicable	63904011
423	In the formal sector	63904012
268	In the informal sector	63904012
86	Private household	63904012
5	Do not know	63904012
0	Unspecified	63904012
6817	Not applicable	63904012
848	In the formal sector	63904013
120	In the informal sector	63904013
100	Private household	63904013
5	Do not know	63904013
0	Unspecified	63904013
4984	Not applicable	63904013
312	In the formal sector	63904014
48	In the informal sector	63904014
35	Private household	63904014
7	Do not know	63904014
0	Unspecified	63904014
6036	Not applicable	63904014
265	In the formal sector	63904015
85	In the informal sector	63904015
79	Private household	63904015
9	Do not know	63904015
0	Unspecified	63904015
6751	Not applicable	63904015
220	In the formal sector	63904016
76	In the informal sector	63904016
50	Private household	63904016
24	Do not know	63904016
0	Unspecified	63904016
5507	Not applicable	63904016
268	In the formal sector	63904017
76	In the informal sector	63904017
75	Private household	63904017
20	Do not know	63904017
0	Unspecified	63904017
6456	Not applicable	63904017
248	In the formal sector	63904018
139	In the informal sector	63904018
130	Private household	63904018
60	Do not know	63904018
0	Unspecified	63904018
7005	Not applicable	63904018
204	In the formal sector	63904019
128	In the informal sector	63904019
96	Private household	63904019
4	Do not know	63904019
0	Unspecified	63904019
5311	Not applicable	63904019
454	In the formal sector	63904020
48	In the informal sector	63904020
86	Private household	63904020
20	Do not know	63904020
0	Unspecified	63904020
6449	Not applicable	63904020
304	In the formal sector	63904021
52	In the informal sector	63904021
54	Private household	63904021
8	Do not know	63904021
0	Unspecified	63904021
6875	Not applicable	63904021
262	In the formal sector	63904022
8	In the informal sector	63904022
23	Private household	63904022
6	Do not know	63904022
0	Unspecified	63904022
5309	Not applicable	63904022
183	In the formal sector	63904023
34	In the informal sector	63904023
26	Private household	63904023
1	Do not know	63904023
0	Unspecified	63904023
5062	Not applicable	63904023
268	In the formal sector	63904024
82	In the informal sector	63904024
101	Private household	63904024
3	Do not know	63904024
0	Unspecified	63904024
6295	Not applicable	63904024
692	In the formal sector	63904025
164	In the informal sector	63904025
77	Private household	63904025
5	Do not know	63904025
0	Unspecified	63904025
5864	Not applicable	63904025
225	In the formal sector	63904026
68	In the informal sector	63904026
20	Private household	63904026
4	Do not know	63904026
0	Unspecified	63904026
5495	Not applicable	63904026
1016	In the formal sector	63906001
157	In the informal sector	63906001
152	Private household	63906001
197	Do not know	63906001
0	Unspecified	63906001
8018	Not applicable	63906001
547	In the formal sector	63906002
27	In the informal sector	63906002
93	Private household	63906002
41	Do not know	63906002
0	Unspecified	63906002
4153	Not applicable	63906002
789	In the formal sector	63906003
188	In the informal sector	63906003
385	Private household	63906003
52	Do not know	63906003
0	Unspecified	63906003
7353	Not applicable	63906003
1125	In the formal sector	63906004
373	In the informal sector	63906004
322	Private household	63906004
56	Do not know	63906004
0	Unspecified	63906004
3595	Not applicable	63906004
1025	In the formal sector	63906005
297	In the informal sector	63906005
270	Private household	63906005
58	Do not know	63906005
0	Unspecified	63906005
7374	Not applicable	63906005
1225	In the formal sector	63906006
809	In the informal sector	63906006
764	Private household	63906006
154	Do not know	63906006
0	Unspecified	63906006
3958	Not applicable	63906006
911	In the formal sector	63906007
207	In the informal sector	63906007
307	Private household	63906007
28	Do not know	63906007
0	Unspecified	63906007
7222	Not applicable	63906007
499	In the formal sector	63907001
180	In the informal sector	63907001
627	Private household	63907001
39	Do not know	63907001
0	Unspecified	63907001
6768	Not applicable	63907001
847	In the formal sector	63907002
1229	In the informal sector	63907002
658	Private household	63907002
83	Do not know	63907002
0	Unspecified	63907002
4517	Not applicable	63907002
858	In the formal sector	63907003
953	In the informal sector	63907003
436	Private household	63907003
47	Do not know	63907003
0	Unspecified	63907003
8780	Not applicable	63907003
649	In the formal sector	63907004
106	In the informal sector	63907004
69	Private household	63907004
4	Do not know	63907004
0	Unspecified	63907004
6073	Not applicable	63907004
414	In the formal sector	63907005
83	In the informal sector	63907005
60	Private household	63907005
5	Do not know	63907005
0	Unspecified	63907005
3969	Not applicable	63907005
659	In the formal sector	63907006
320	In the informal sector	63907006
99	Private household	63907006
7	Do not know	63907006
0	Unspecified	63907006
5257	Not applicable	63907006
233	In the formal sector	63907007
167	In the informal sector	63907007
185	Private household	63907007
21	Do not know	63907007
0	Unspecified	63907007
6749	Not applicable	63907007
468	In the formal sector	63907008
690	In the informal sector	63907008
238	Private household	63907008
61	Do not know	63907008
0	Unspecified	63907008
5514	Not applicable	63907008
204	In the formal sector	63907009
209	In the informal sector	63907009
25	Private household	63907009
11	Do not know	63907009
0	Unspecified	63907009
4490	Not applicable	63907009
582	In the formal sector	63907010
112	In the informal sector	63907010
68	Private household	63907010
20	Do not know	63907010
0	Unspecified	63907010
7327	Not applicable	63907010
162	In the formal sector	63907011
35	In the informal sector	63907011
17	Private household	63907011
7	Do not know	63907011
0	Unspecified	63907011
5856	Not applicable	63907011
263	In the formal sector	63907012
164	In the informal sector	63907012
171	Private household	63907012
31	Do not know	63907012
0	Unspecified	63907012
5148	Not applicable	63907012
430	In the formal sector	63907013
36	In the informal sector	63907013
58	Private household	63907013
0	Do not know	63907013
0	Unspecified	63907013
7361	Not applicable	63907013
416	In the formal sector	63907014
88	In the informal sector	63907014
87	Private household	63907014
31	Do not know	63907014
0	Unspecified	63907014
6970	Not applicable	63907014
354	In the formal sector	63907015
540	In the informal sector	63907015
93	Private household	63907015
20	Do not know	63907015
0	Unspecified	63907015
5785	Not applicable	63907015
564	In the formal sector	64001001
125	In the informal sector	64001001
167	Private household	64001001
13	Do not know	64001001
0	Unspecified	64001001
3684	Not applicable	64001001
875	In the formal sector	64001002
105	In the informal sector	64001002
66	Private household	64001002
4	Do not know	64001002
0	Unspecified	64001002
3639	Not applicable	64001002
1181	In the formal sector	64001003
545	In the informal sector	64001003
171	Private household	64001003
30	Do not know	64001003
0	Unspecified	64001003
12667	Not applicable	64001003
1037	In the formal sector	64001004
1269	In the informal sector	64001004
416	Private household	64001004
38	Do not know	64001004
0	Unspecified	64001004
6655	Not applicable	64001004
1291	In the formal sector	64001005
909	In the informal sector	64001005
445	Private household	64001005
62	Do not know	64001005
0	Unspecified	64001005
9891	Not applicable	64001005
1629	In the formal sector	64001006
489	In the informal sector	64001006
482	Private household	64001006
51	Do not know	64001006
0	Unspecified	64001006
8201	Not applicable	64001006
766	In the formal sector	64002001
238	In the informal sector	64002001
377	Private household	64002001
38	Do not know	64002001
0	Unspecified	64002001
4465	Not applicable	64002001
2998	In the formal sector	64002002
2289	In the informal sector	64002002
1072	Private household	64002002
161	Do not know	64002002
0	Unspecified	64002002
7677	Not applicable	64002002
3162	In the formal sector	64002003
1129	In the informal sector	64002003
890	Private household	64002003
168	Do not know	64002003
0	Unspecified	64002003
5524	Not applicable	64002003
2119	In the formal sector	64002004
442	In the informal sector	64002004
534	Private household	64002004
86	Do not know	64002004
0	Unspecified	64002004
6348	Not applicable	64002004
1139	In the formal sector	64002005
92	In the informal sector	64002005
60	Private household	64002005
65	Do not know	64002005
0	Unspecified	64002005
1483	Not applicable	64002005
1031	In the formal sector	64002006
54	In the informal sector	64002006
175	Private household	64002006
22	Do not know	64002006
0	Unspecified	64002006
3028	Not applicable	64002006
1213	In the formal sector	64002007
117	In the informal sector	64002007
110	Private household	64002007
47	Do not know	64002007
0	Unspecified	64002007
4044	Not applicable	64002007
1052	In the formal sector	64002008
55	In the informal sector	64002008
256	Private household	64002008
38	Do not know	64002008
0	Unspecified	64002008
2999	Not applicable	64002008
1503	In the formal sector	64002009
394	In the informal sector	64002009
357	Private household	64002009
74	Do not know	64002009
0	Unspecified	64002009
5265	Not applicable	64002009
972	In the formal sector	64002010
153	In the informal sector	64002010
201	Private household	64002010
25	Do not know	64002010
0	Unspecified	64002010
2819	Not applicable	64002010
626	In the formal sector	64002011
35	In the informal sector	64002011
54	Private household	64002011
2	Do not know	64002011
0	Unspecified	64002011
1949	Not applicable	64002011
1160	In the formal sector	64002012
390	In the informal sector	64002012
285	Private household	64002012
10	Do not know	64002012
0	Unspecified	64002012
3772	Not applicable	64002012
2183	In the formal sector	64002013
222	In the informal sector	64002013
257	Private household	64002013
38	Do not know	64002013
0	Unspecified	64002013
6221	Not applicable	64002013
999	In the formal sector	64002014
79	In the informal sector	64002014
113	Private household	64002014
12	Do not know	64002014
0	Unspecified	64002014
3265	Not applicable	64002014
1707	In the formal sector	64002015
106	In the informal sector	64002015
137	Private household	64002015
64	Do not know	64002015
0	Unspecified	64002015
2563	Not applicable	64002015
652	In the formal sector	64002016
157	In the informal sector	64002016
254	Private household	64002016
14	Do not know	64002016
0	Unspecified	64002016
3318	Not applicable	64002016
1001	In the formal sector	64002017
294	In the informal sector	64002017
242	Private household	64002017
18	Do not know	64002017
0	Unspecified	64002017
3967	Not applicable	64002017
769	In the formal sector	64002018
290	In the informal sector	64002018
514	Private household	64002018
18	Do not know	64002018
0	Unspecified	64002018
4687	Not applicable	64002018
1198	In the formal sector	64002019
614	In the informal sector	64002019
477	Private household	64002019
30	Do not know	64002019
0	Unspecified	64002019
7110	Not applicable	64002019
981	In the formal sector	64002020
376	In the informal sector	64002020
329	Private household	64002020
65	Do not know	64002020
0	Unspecified	64002020
4748	Not applicable	64002020
2113	In the formal sector	64002021
456	In the informal sector	64002021
452	Private household	64002021
29	Do not know	64002021
0	Unspecified	64002021
9698	Not applicable	64002021
273	In the formal sector	64002022
38	In the informal sector	64002022
47	Private household	64002022
23	Do not know	64002022
0	Unspecified	64002022
1994	Not applicable	64002022
1638	In the formal sector	64002023
186	In the informal sector	64002023
267	Private household	64002023
68	Do not know	64002023
0	Unspecified	64002023
2182	Not applicable	64002023
464	In the formal sector	64002024
55	In the informal sector	64002024
37	Private household	64002024
9	Do not know	64002024
0	Unspecified	64002024
723	Not applicable	64002024
1124	In the formal sector	64002025
137	In the informal sector	64002025
113	Private household	64002025
45	Do not know	64002025
0	Unspecified	64002025
2029	Not applicable	64002025
1610	In the formal sector	64002026
553	In the informal sector	64002026
625	Private household	64002026
120	Do not know	64002026
0	Unspecified	64002026
7951	Not applicable	64002026
2049	In the formal sector	64003001
1428	In the informal sector	64003001
1153	Private household	64003001
105	Do not know	64003001
0	Unspecified	64003001
11831	Not applicable	64003001
1818	In the formal sector	64003002
355	In the informal sector	64003002
569	Private household	64003002
17	Do not know	64003002
0	Unspecified	64003002
12939	Not applicable	64003002
2620	In the formal sector	64003003
416	In the informal sector	64003003
175	Private household	64003003
30	Do not know	64003003
0	Unspecified	64003003
6911	Not applicable	64003003
2769	In the formal sector	64003004
852	In the informal sector	64003004
1162	Private household	64003004
119	Do not know	64003004
0	Unspecified	64003004
14708	Not applicable	64003004
1583	In the formal sector	64003005
449	In the informal sector	64003005
569	Private household	64003005
20	Do not know	64003005
0	Unspecified	64003005
9787	Not applicable	64003005
1925	In the formal sector	64003006
563	In the informal sector	64003006
500	Private household	64003006
66	Do not know	64003006
0	Unspecified	64003006
9836	Not applicable	64003006
1746	In the formal sector	64003007
358	In the informal sector	64003007
130	Private household	64003007
17	Do not know	64003007
0	Unspecified	64003007
9227	Not applicable	64003007
2093	In the formal sector	64003008
123	In the informal sector	64003008
144	Private household	64003008
9	Do not know	64003008
0	Unspecified	64003008
7000	Not applicable	64003008
1710	In the formal sector	64003009
221	In the informal sector	64003009
364	Private household	64003009
30	Do not know	64003009
0	Unspecified	64003009
7684	Not applicable	64003009
1196	In the formal sector	64003010
123	In the informal sector	64003010
92	Private household	64003010
12	Do not know	64003010
0	Unspecified	64003010
5523	Not applicable	64003010
1460	In the formal sector	64003011
124	In the informal sector	64003011
156	Private household	64003011
47	Do not know	64003011
0	Unspecified	64003011
5908	Not applicable	64003011
2625	In the formal sector	64003012
309	In the informal sector	64003012
333	Private household	64003012
20	Do not know	64003012
0	Unspecified	64003012
12300	Not applicable	64003012
1810	In the formal sector	64003013
281	In the informal sector	64003013
317	Private household	64003013
13	Do not know	64003013
0	Unspecified	64003013
8841	Not applicable	64003013
1431	In the formal sector	64003014
234	In the informal sector	64003014
617	Private household	64003014
54	Do not know	64003014
0	Unspecified	64003014
8106	Not applicable	64003014
3763	In the formal sector	64003015
342	In the informal sector	64003015
448	Private household	64003015
96	Do not know	64003015
0	Unspecified	64003015
6081	Not applicable	64003015
3579	In the formal sector	64003016
355	In the informal sector	64003016
390	Private household	64003016
87	Do not know	64003016
0	Unspecified	64003016
4832	Not applicable	64003016
4549	In the formal sector	64003017
324	In the informal sector	64003017
776	Private household	64003017
126	Do not know	64003017
0	Unspecified	64003017
5762	Not applicable	64003017
3941	In the formal sector	64003018
582	In the informal sector	64003018
870	Private household	64003018
125	Do not know	64003018
0	Unspecified	64003018
7162	Not applicable	64003018
4557	In the formal sector	64003019
396	In the informal sector	64003019
427	Private household	64003019
95	Do not know	64003019
0	Unspecified	64003019
8136	Not applicable	64003019
917	In the formal sector	64003020
135	In the informal sector	64003020
282	Private household	64003020
6	Do not know	64003020
0	Unspecified	64003020
4755	Not applicable	64003020
2617	In the formal sector	64003021
91	In the informal sector	64003021
73	Private household	64003021
5	Do not know	64003021
0	Unspecified	64003021
5172	Not applicable	64003021
2864	In the formal sector	64003022
641	In the informal sector	64003022
832	Private household	64003022
100	Do not know	64003022
0	Unspecified	64003022
15108	Not applicable	64003022
1776	In the formal sector	64003023
341	In the informal sector	64003023
576	Private household	64003023
50	Do not know	64003023
0	Unspecified	64003023
10227	Not applicable	64003023
1409	In the formal sector	64003024
156	In the informal sector	64003024
391	Private household	64003024
42	Do not know	64003024
0	Unspecified	64003024
8105	Not applicable	64003024
2027	In the formal sector	64003025
187	In the informal sector	64003025
189	Private household	64003025
11	Do not know	64003025
0	Unspecified	64003025
6925	Not applicable	64003025
1145	In the formal sector	64003026
250	In the informal sector	64003026
208	Private household	64003026
23	Do not know	64003026
0	Unspecified	64003026
7162	Not applicable	64003026
1639	In the formal sector	64003027
329	In the informal sector	64003027
353	Private household	64003027
78	Do not know	64003027
0	Unspecified	64003027
9222	Not applicable	64003027
3282	In the formal sector	64003028
562	In the informal sector	64003028
311	Private household	64003028
110	Do not know	64003028
0	Unspecified	64003028
6170	Not applicable	64003028
3423	In the formal sector	64003029
223	In the informal sector	64003029
334	Private household	64003029
67	Do not know	64003029
0	Unspecified	64003029
6028	Not applicable	64003029
3334	In the formal sector	64003030
220	In the informal sector	64003030
375	Private household	64003030
104	Do not know	64003030
0	Unspecified	64003030
5866	Not applicable	64003030
2867	In the formal sector	64003031
267	In the informal sector	64003031
318	Private household	64003031
54	Do not know	64003031
0	Unspecified	64003031
9474	Not applicable	64003031
1894	In the formal sector	64003032
172	In the informal sector	64003032
316	Private household	64003032
48	Do not know	64003032
0	Unspecified	64003032
7034	Not applicable	64003032
1410	In the formal sector	64003033
236	In the informal sector	64003033
272	Private household	64003033
30	Do not know	64003033
0	Unspecified	64003033
9260	Not applicable	64003033
1161	In the formal sector	64003034
93	In the informal sector	64003034
125	Private household	64003034
50	Do not know	64003034
0	Unspecified	64003034
6382	Not applicable	64003034
1796	In the formal sector	64003035
279	In the informal sector	64003035
331	Private household	64003035
14	Do not know	64003035
0	Unspecified	64003035
10047	Not applicable	64003035
496	In the formal sector	64004001
98	In the informal sector	64004001
123	Private household	64004001
40	Do not know	64004001
0	Unspecified	64004001
5079	Not applicable	64004001
416	In the formal sector	64004002
95	In the informal sector	64004002
136	Private household	64004002
53	Do not know	64004002
0	Unspecified	64004002
4989	Not applicable	64004002
477	In the formal sector	64004003
42	In the informal sector	64004003
86	Private household	64004003
6	Do not know	64004003
0	Unspecified	64004003
4660	Not applicable	64004003
703	In the formal sector	64004004
62	In the informal sector	64004004
56	Private household	64004004
10	Do not know	64004004
0	Unspecified	64004004
5445	Not applicable	64004004
1113	In the formal sector	64004005
748	In the informal sector	64004005
348	Private household	64004005
73	Do not know	64004005
0	Unspecified	64004005
3891	Not applicable	64004005
920	In the formal sector	64004006
134	In the informal sector	64004006
209	Private household	64004006
17	Do not know	64004006
0	Unspecified	64004006
5083	Not applicable	64004006
441	In the formal sector	64004007
20	In the informal sector	64004007
104	Private household	64004007
0	Do not know	64004007
0	Unspecified	64004007
2853	Not applicable	64004007
2107	In the formal sector	64004008
1670	In the informal sector	64004008
893	Private household	64004008
59	Do not know	64004008
0	Unspecified	64004008
10202	Not applicable	64004008
625	In the formal sector	64004009
88	In the informal sector	64004009
60	Private household	64004009
11	Do not know	64004009
0	Unspecified	64004009
4594	Not applicable	64004009
1383	In the formal sector	64004010
498	In the informal sector	64004010
214	Private household	64004010
64	Do not know	64004010
0	Unspecified	64004010
8441	Not applicable	64004010
712	In the formal sector	64004011
128	In the informal sector	64004011
71	Private household	64004011
24	Do not know	64004011
0	Unspecified	64004011
6925	Not applicable	64004011
619	In the formal sector	30601001
180	In the informal sector	30601001
6	Private household	30601001
57	Do not know	30601001
0	Unspecified	30601001
1243	Not applicable	30601001
1506	In the formal sector	30601002
76	In the informal sector	30601002
42	Private household	30601002
8	Do not know	30601002
0	Unspecified	30601002
2098	Not applicable	30601002
866	In the formal sector	30601003
216	In the informal sector	30601003
46	Private household	30601003
19	Do not know	30601003
0	Unspecified	30601003
2014	Not applicable	30601003
889	In the formal sector	30601004
142	In the informal sector	30601004
46	Private household	30601004
26	Do not know	30601004
0	Unspecified	30601004
1886	Not applicable	30601004
1083	In the formal sector	30602001
154	In the informal sector	30602001
148	Private household	30602001
3	Do not know	30602001
0	Unspecified	30602001
4101	Not applicable	30602001
804	In the formal sector	30602002
255	In the informal sector	30602002
117	Private household	30602002
3	Do not know	30602002
0	Unspecified	30602002
4296	Not applicable	30602002
540	In the formal sector	30602003
84	In the informal sector	30602003
67	Private household	30602003
7	Do not know	30602003
0	Unspecified	30602003
3986	Not applicable	30602003
1684	In the formal sector	30602004
168	In the informal sector	30602004
80	Private household	30602004
29	Do not know	30602004
0	Unspecified	30602004
1854	Not applicable	30602004
853	In the formal sector	30602005
689	In the informal sector	30602005
80	Private household	30602005
11	Do not know	30602005
0	Unspecified	30602005
3635	Not applicable	30602005
1111	In the formal sector	30602006
379	In the informal sector	30602006
125	Private household	30602006
50	Do not know	30602006
0	Unspecified	30602006
4446	Not applicable	30602006
887	In the formal sector	30602007
481	In the informal sector	30602007
125	Private household	30602007
5	Do not know	30602007
0	Unspecified	30602007
3748	Not applicable	30602007
876	In the formal sector	30602008
291	In the informal sector	30602008
91	Private household	30602008
9	Do not know	30602008
0	Unspecified	30602008
4119	Not applicable	30602008
843	In the formal sector	30602009
363	In the informal sector	30602009
84	Private household	30602009
34	Do not know	30602009
0	Unspecified	30602009
4243	Not applicable	30602009
370	In the formal sector	30604001
58	In the informal sector	30604001
19	Private household	30604001
7	Do not know	30604001
0	Unspecified	30604001
1573	Not applicable	30604001
810	In the formal sector	30604002
77	In the informal sector	30604002
93	Private household	30604002
6	Do not know	30604002
0	Unspecified	30604002
2276	Not applicable	30604002
364	In the formal sector	30604003
73	In the informal sector	30604003
22	Private household	30604003
9	Do not know	30604003
0	Unspecified	30604003
2163	Not applicable	30604003
260	In the formal sector	30604004
92	In the informal sector	30604004
32	Private household	30604004
8	Do not know	30604004
0	Unspecified	30604004
1876	Not applicable	30604004
780	In the formal sector	30605001
127	In the informal sector	30605001
108	Private household	30605001
20	Do not know	30605001
0	Unspecified	30605001
2910	Not applicable	30605001
1118	In the formal sector	30605002
262	In the informal sector	30605002
168	Private household	30605002
12	Do not know	30605002
0	Unspecified	30605002
4064	Not applicable	30605002
715	In the formal sector	30605003
265	In the informal sector	30605003
207	Private household	30605003
8	Do not know	30605003
0	Unspecified	30605003
2808	Not applicable	30605003
732	In the formal sector	30605004
379	In the informal sector	30605004
398	Private household	30605004
46	Do not know	30605004
0	Unspecified	30605004
2928	Not applicable	30605004
498	In the formal sector	30605005
356	In the informal sector	30605005
256	Private household	30605005
43	Do not know	30605005
0	Unspecified	30605005
2370	Not applicable	30605005
604	In the formal sector	30606001
124	In the informal sector	30606001
49	Private household	30606001
5	Do not know	30606001
0	Unspecified	30606001
2587	Not applicable	30606001
418	In the formal sector	30606002
209	In the informal sector	30606002
59	Private household	30606002
16	Do not know	30606002
0	Unspecified	30606002
2326	Not applicable	30606002
960	In the formal sector	30606003
386	In the informal sector	30606003
114	Private household	30606003
13	Do not know	30606003
0	Unspecified	30606003
1597	Not applicable	30606003
603	In the formal sector	30606004
186	In the informal sector	30606004
60	Private household	30606004
20	Do not know	30606004
0	Unspecified	30606004
2252	Not applicable	30606004
1490	In the formal sector	30607001
218	In the informal sector	30607001
33	Private household	30607001
8	Do not know	30607001
0	Unspecified	30607001
1770	Not applicable	30607001
380	In the formal sector	30607002
59	In the informal sector	30607002
6	Private household	30607002
3	Do not know	30607002
0	Unspecified	30607002
2137	Not applicable	30607002
574	In the formal sector	30607003
279	In the informal sector	30607003
113	Private household	30607003
15	Do not know	30607003
0	Unspecified	30607003
1975	Not applicable	30607003
1145	In the formal sector	30607004
134	In the informal sector	30607004
167	Private household	30607004
37	Do not know	30607004
0	Unspecified	30607004
1919	Not applicable	30607004
619	In the formal sector	30701001
382	In the informal sector	30701001
75	Private household	30701001
19	Do not know	30701001
0	Unspecified	30701001
4028	Not applicable	30701001
903	In the formal sector	30701002
82	In the informal sector	30701002
138	Private household	30701002
43	Do not know	30701002
0	Unspecified	30701002
4183	Not applicable	30701002
1162	In the formal sector	30701003
422	In the informal sector	30701003
285	Private household	30701003
14	Do not know	30701003
0	Unspecified	30701003
2830	Not applicable	30701003
874	In the formal sector	30701004
87	In the informal sector	30701004
48	Private household	30701004
22	Do not know	30701004
0	Unspecified	30701004
2385	Not applicable	30701004
918	In the formal sector	30702001
274	In the informal sector	30702001
88	Private household	30702001
4	Do not know	30702001
0	Unspecified	30702001
5274	Not applicable	30702001
733	In the formal sector	30702002
159	In the informal sector	30702002
236	Private household	30702002
20	Do not know	30702002
0	Unspecified	30702002
3412	Not applicable	30702002
980	In the formal sector	30702003
187	In the informal sector	30702003
218	Private household	30702003
12	Do not know	30702003
0	Unspecified	30702003
5419	Not applicable	30702003
796	In the formal sector	30702004
229	In the informal sector	30702004
184	Private household	30702004
75	Do not know	30702004
0	Unspecified	30702004
4794	Not applicable	30702004
794	In the formal sector	30702005
180	In the informal sector	30702005
142	Private household	30702005
32	Do not know	30702005
0	Unspecified	30702005
3217	Not applicable	30702005
841	In the formal sector	30703001
155	In the informal sector	30703001
64	Private household	30703001
6	Do not know	30703001
0	Unspecified	30703001
4107	Not applicable	30703001
1010	In the formal sector	30703002
139	In the informal sector	30703002
262	Private household	30703002
12	Do not know	30703002
0	Unspecified	30703002
6572	Not applicable	30703002
600	In the formal sector	30703003
69	In the informal sector	30703003
97	Private household	30703003
47	Do not know	30703003
0	Unspecified	30703003
4605	Not applicable	30703003
619	In the formal sector	30703004
184	In the informal sector	30703004
236	Private household	30703004
5	Do not know	30703004
0	Unspecified	30703004
4310	Not applicable	30703004
1754	In the formal sector	30703005
275	In the informal sector	30703005
102	Private household	30703005
47	Do not know	30703005
0	Unspecified	30703005
3872	Not applicable	30703005
925	In the formal sector	30703006
468	In the informal sector	30703006
404	Private household	30703006
17	Do not know	30703006
0	Unspecified	30703006
4363	Not applicable	30703006
1019	In the formal sector	30703007
582	In the informal sector	30703007
112	Private household	30703007
6	Do not know	30703007
0	Unspecified	30703007
4469	Not applicable	30703007
565	In the formal sector	30704001
80	In the informal sector	30704001
133	Private household	30704001
6	Do not know	30704001
0	Unspecified	30704001
1966	Not applicable	30704001
329	In the formal sector	30704002
180	In the informal sector	30704002
43	Private household	30704002
63	Do not know	30704002
0	Unspecified	30704002
3246	Not applicable	30704002
583	In the formal sector	30704003
163	In the informal sector	30704003
140	Private household	30704003
4	Do not know	30704003
0	Unspecified	30704003
1280	Not applicable	30704003
349	In the formal sector	30704004
188	In the informal sector	30704004
102	Private household	30704004
49	Do not know	30704004
0	Unspecified	30704004
2205	Not applicable	30704004
438	In the formal sector	30705001
273	In the informal sector	30705001
52	Private household	30705001
4	Do not know	30705001
0	Unspecified	30705001
2222	Not applicable	30705001
397	In the formal sector	30705002
173	In the informal sector	30705002
41	Private household	30705002
14	Do not know	30705002
0	Unspecified	30705002
3630	Not applicable	30705002
375	In the formal sector	30705003
84	In the informal sector	30705003
32	Private household	30705003
1	Do not know	30705003
0	Unspecified	30705003
1094	Not applicable	30705003
414	In the formal sector	30705004
322	In the informal sector	30705004
71	Private household	30705004
1	Do not know	30705004
0	Unspecified	30705004
1340	Not applicable	30705004
521	In the formal sector	30706001
225	In the informal sector	30706001
91	Private household	30706001
26	Do not know	30706001
0	Unspecified	30706001
2673	Not applicable	30706001
991	In the formal sector	30706002
388	In the informal sector	30706002
56	Private household	30706002
33	Do not know	30706002
0	Unspecified	30706002
3092	Not applicable	30706002
504	In the formal sector	30706003
41	In the informal sector	30706003
20	Private household	30706003
83	Do not know	30706003
0	Unspecified	30706003
2616	Not applicable	30706003
709	In the formal sector	30706004
139	In the informal sector	30706004
116	Private household	30706004
5	Do not know	30706004
0	Unspecified	30706004
3372	Not applicable	30706004
829	In the formal sector	30707001
112	In the informal sector	30707001
221	Private household	30707001
5	Do not know	30707001
0	Unspecified	30707001
5328	Not applicable	30707001
470	In the formal sector	30707002
62	In the informal sector	30707002
112	Private household	30707002
1	Do not know	30707002
0	Unspecified	30707002
3143	Not applicable	30707002
1430	In the formal sector	30707003
128	In the informal sector	30707003
172	Private household	30707003
10	Do not know	30707003
0	Unspecified	30707003
4640	Not applicable	30707003
1507	In the formal sector	30707004
269	In the informal sector	30707004
121	Private household	30707004
25	Do not know	30707004
0	Unspecified	30707004
3007	Not applicable	30707004
953	In the formal sector	30708001
250	In the informal sector	30708001
203	Private household	30708001
40	Do not know	30708001
0	Unspecified	30708001
4515	Not applicable	30708001
500	In the formal sector	30708002
351	In the informal sector	30708002
416	Private household	30708002
69	Do not know	30708002
0	Unspecified	30708002
3477	Not applicable	30708002
842	In the formal sector	30708003
313	In the informal sector	30708003
102	Private household	30708003
22	Do not know	30708003
0	Unspecified	30708003
5720	Not applicable	30708003
714	In the formal sector	30708004
161	In the informal sector	30708004
304	Private household	30708004
93	Do not know	30708004
0	Unspecified	30708004
6902	Not applicable	30708004
753	In the formal sector	30708005
241	In the informal sector	30708005
250	Private household	30708005
56	Do not know	30708005
0	Unspecified	30708005
3450	Not applicable	30708005
1012	In the formal sector	30708006
224	In the informal sector	30708006
174	Private household	30708006
83	Do not know	30708006
0	Unspecified	30708006
4885	Not applicable	30708006
76	In the formal sector	30801001
53	In the informal sector	30801001
37	Private household	30801001
0	Do not know	30801001
0	Unspecified	30801001
318	Not applicable	30801001
256	In the formal sector	30801002
145	In the informal sector	30801002
57	Private household	30801002
5	Do not know	30801002
0	Unspecified	30801002
2294	Not applicable	30801002
289	In the formal sector	30801003
56	In the informal sector	30801003
14	Private household	30801003
0	Do not know	30801003
0	Unspecified	30801003
1933	Not applicable	30801003
280	In the formal sector	30801004
61	In the informal sector	30801004
13	Private household	30801004
0	Do not know	30801004
0	Unspecified	30801004
1115	Not applicable	30801004
4583	In the formal sector	30802001
1628	In the informal sector	30802001
1454	Private household	30802001
234	Do not know	30802001
0	Unspecified	30802001
3509	Not applicable	30802001
3605	In the formal sector	30802002
541	In the informal sector	30802002
273	Private household	30802002
45	Do not know	30802002
0	Unspecified	30802002
3726	Not applicable	30802002
4462	In the formal sector	30802003
205	In the informal sector	30802003
77	Private household	30802003
16	Do not know	30802003
0	Unspecified	30802003
4757	Not applicable	30802003
1857	In the formal sector	30802004
190	In the informal sector	30802004
112	Private household	30802004
18	Do not know	30802004
0	Unspecified	30802004
4198	Not applicable	30802004
1297	In the formal sector	30802005
436	In the informal sector	30802005
182	Private household	30802005
61	Do not know	30802005
0	Unspecified	30802005
3522	Not applicable	30802005
765	In the formal sector	30802006
173	In the informal sector	30802006
65	Private household	30802006
25	Do not know	30802006
0	Unspecified	30802006
6656	Not applicable	30802006
896	In the formal sector	30802007
270	In the informal sector	30802007
145	Private household	30802007
126	Do not know	30802007
0	Unspecified	30802007
3419	Not applicable	30802007
1063	In the formal sector	30802008
774	In the informal sector	30802008
276	Private household	30802008
15	Do not know	30802008
0	Unspecified	30802008
3531	Not applicable	30802008
1386	In the formal sector	30802009
521	In the informal sector	30802009
332	Private household	30802009
101	Do not know	30802009
0	Unspecified	30802009
4338	Not applicable	30802009
1165	In the formal sector	30803001
154	In the informal sector	30803001
67	Private household	30803001
12	Do not know	30803001
0	Unspecified	30803001
5000	Not applicable	30803001
1005	In the formal sector	30803002
446	In the informal sector	30803002
187	Private household	30803002
28	Do not know	30803002
0	Unspecified	30803002
6029	Not applicable	30803002
1193	In the formal sector	30803003
170	In the informal sector	30803003
38	Private household	30803003
5	Do not know	30803003
0	Unspecified	30803003
3923	Not applicable	30803003
865	In the formal sector	30803004
78	In the informal sector	30803004
37	Private household	30803004
3	Do not know	30803004
0	Unspecified	30803004
3731	Not applicable	30803004
1067	In the formal sector	30803005
296	In the informal sector	30803005
209	Private household	30803005
38	Do not know	30803005
0	Unspecified	30803005
5511	Not applicable	30803005
1239	In the formal sector	30803006
198	In the informal sector	30803006
95	Private household	30803006
60	Do not know	30803006
0	Unspecified	30803006
5317	Not applicable	30803006
754	In the formal sector	30803007
81	In the informal sector	30803007
35	Private household	30803007
27	Do not know	30803007
0	Unspecified	30803007
2729	Not applicable	30803007
2450	In the formal sector	30803008
275	In the informal sector	30803008
271	Private household	30803008
75	Do not know	30803008
0	Unspecified	30803008
3720	Not applicable	30803008
2315	In the formal sector	30803009
412	In the informal sector	30803009
537	Private household	30803009
78	Do not know	30803009
0	Unspecified	30803009
3202	Not applicable	30803009
1496	In the formal sector	30803010
657	In the informal sector	30803010
230	Private household	30803010
51	Do not know	30803010
0	Unspecified	30803010
7821	Not applicable	30803010
1774	In the formal sector	30803011
365	In the informal sector	30803011
433	Private household	30803011
60	Do not know	30803011
0	Unspecified	30803011
4906	Not applicable	30803011
935	In the formal sector	30803012
503	In the informal sector	30803012
272	Private household	30803012
30	Do not know	30803012
0	Unspecified	30803012
4895	Not applicable	30803012
1033	In the formal sector	30803013
187	In the informal sector	30803013
173	Private household	30803013
116	Do not know	30803013
0	Unspecified	30803013
6842	Not applicable	30803013
880	In the formal sector	30803014
279	In the informal sector	30803014
73	Private household	30803014
56	Do not know	30803014
0	Unspecified	30803014
4301	Not applicable	30803014
504	In the formal sector	30804001
218	In the informal sector	30804001
57	Private household	30804001
17	Do not know	30804001
0	Unspecified	30804001
3549	Not applicable	30804001
813	In the formal sector	30804002
676	In the informal sector	30804002
35	Private household	30804002
8	Do not know	30804002
0	Unspecified	30804002
3359	Not applicable	30804002
1013	In the formal sector	30804003
120	In the informal sector	30804003
51	Private household	30804003
6	Do not know	30804003
0	Unspecified	30804003
2631	Not applicable	30804003
599	In the formal sector	30804004
60	In the informal sector	30804004
20	Private household	30804004
7	Do not know	30804004
0	Unspecified	30804004
2894	Not applicable	30804004
790	In the formal sector	30805001
289	In the informal sector	30805001
180	Private household	30805001
2	Do not know	30805001
0	Unspecified	30805001
2760	Not applicable	30805001
898	In the formal sector	30805002
503	In the informal sector	30805002
166	Private household	30805002
32	Do not know	30805002
0	Unspecified	30805002
5049	Not applicable	30805002
716	In the formal sector	30805003
409	In the informal sector	30805003
177	Private household	30805003
106	Do not know	30805003
0	Unspecified	30805003
4307	Not applicable	30805003
977	In the formal sector	30805004
377	In the informal sector	30805004
52	Private household	30805004
2	Do not know	30805004
0	Unspecified	30805004
4016	Not applicable	30805004
1980	In the formal sector	30805005
625	In the informal sector	30805005
333	Private household	30805005
114	Do not know	30805005
0	Unspecified	30805005
4691	Not applicable	30805005
1468	In the formal sector	30805006
438	In the informal sector	30805006
241	Private household	30805006
53	Do not know	30805006
0	Unspecified	30805006
3341	Not applicable	30805006
602	In the formal sector	30806001
21	In the informal sector	30806001
34	Private household	30806001
8	Do not know	30806001
0	Unspecified	30806001
3595	Not applicable	30806001
718	In the formal sector	30806002
137	In the informal sector	30806002
59	Private household	30806002
18	Do not know	30806002
0	Unspecified	30806002
1973	Not applicable	30806002
1182	In the formal sector	30806003
219	In the informal sector	30806003
153	Private household	30806003
32	Do not know	30806003
0	Unspecified	30806003
5423	Not applicable	30806003
1710	In the formal sector	30806004
190	In the informal sector	30806004
259	Private household	30806004
87	Do not know	30806004
0	Unspecified	30806004
2266	Not applicable	30806004
1431	In the formal sector	30901001
70	In the informal sector	30901001
49	Private household	30901001
8	Do not know	30901001
0	Unspecified	30901001
4353	Not applicable	30901001
1961	In the formal sector	30901002
374	In the informal sector	30901002
216	Private household	30901002
39	Do not know	30901002
0	Unspecified	30901002
8788	Not applicable	30901002
1639	In the formal sector	30901003
268	In the informal sector	30901003
159	Private household	30901003
5	Do not know	30901003
0	Unspecified	30901003
6409	Not applicable	30901003
1194	In the formal sector	30901004
79	In the informal sector	30901004
103	Private household	30901004
7	Do not know	30901004
0	Unspecified	30901004
5807	Not applicable	30901004
1274	In the formal sector	30901005
84	In the informal sector	30901005
89	Private household	30901005
8	Do not know	30901005
0	Unspecified	30901005
5958	Not applicable	30901005
1040	In the formal sector	30901006
93	In the informal sector	30901006
214	Private household	30901006
8	Do not know	30901006
0	Unspecified	30901006
5801	Not applicable	30901006
1391	In the formal sector	30901007
148	In the informal sector	30901007
85	Private household	30901007
55	Do not know	30901007
0	Unspecified	30901007
7098	Not applicable	30901007
2140	In the formal sector	30901008
175	In the informal sector	30901008
286	Private household	30901008
22	Do not know	30901008
0	Unspecified	30901008
6508	Not applicable	30901008
1673	In the formal sector	30901009
87	In the informal sector	30901009
158	Private household	30901009
15	Do not know	30901009
0	Unspecified	30901009
5257	Not applicable	30901009
1166	In the formal sector	30901010
101	In the informal sector	30901010
187	Private household	30901010
34	Do not know	30901010
0	Unspecified	30901010
5277	Not applicable	30901010
1198	In the formal sector	30901011
157	In the informal sector	30901011
146	Private household	30901011
14	Do not know	30901011
0	Unspecified	30901011
5874	Not applicable	30901011
927	In the formal sector	30901012
57	In the informal sector	30901012
142	Private household	30901012
21	Do not know	30901012
0	Unspecified	30901012
4902	Not applicable	30901012
1399	In the formal sector	30901013
152	In the informal sector	30901013
123	Private household	30901013
51	Do not know	30901013
0	Unspecified	30901013
6870	Not applicable	30901013
1806	In the formal sector	30901014
268	In the informal sector	30901014
164	Private household	30901014
26	Do not know	30901014
0	Unspecified	30901014
4293	Not applicable	30901014
1109	In the formal sector	30901015
168	In the informal sector	30901015
216	Private household	30901015
73	Do not know	30901015
0	Unspecified	30901015
5687	Not applicable	30901015
2155	In the formal sector	30901016
394	In the informal sector	30901016
383	Private household	30901016
55	Do not know	30901016
0	Unspecified	30901016
10057	Not applicable	30901016
2071	In the formal sector	30901017
255	In the informal sector	30901017
331	Private household	30901017
37	Do not know	30901017
0	Unspecified	30901017
7963	Not applicable	30901017
794	In the formal sector	30901018
98	In the informal sector	30901018
143	Private household	30901018
18	Do not know	30901018
0	Unspecified	30901018
3466	Not applicable	30901018
1068	In the formal sector	30901019
110	In the informal sector	30901019
112	Private household	30901019
16	Do not know	30901019
0	Unspecified	30901019
5559	Not applicable	30901019
2377	In the formal sector	30901020
201	In the informal sector	30901020
516	Private household	30901020
54	Do not know	30901020
0	Unspecified	30901020
4596	Not applicable	30901020
3169	In the formal sector	30901021
319	In the informal sector	30901021
347	Private household	30901021
50	Do not know	30901021
0	Unspecified	30901021
4569	Not applicable	30901021
1741	In the formal sector	30901022
328	In the informal sector	30901022
632	Private household	30901022
35	Do not know	30901022
0	Unspecified	30901022
6948	Not applicable	30901022
2228	In the formal sector	30901023
167	In the informal sector	30901023
210	Private household	30901023
34	Do not know	30901023
0	Unspecified	30901023
3030	Not applicable	30901023
2229	In the formal sector	30901024
311	In the informal sector	30901024
345	Private household	30901024
38	Do not know	30901024
0	Unspecified	30901024
3045	Not applicable	30901024
2186	In the formal sector	30901025
467	In the informal sector	30901025
383	Private household	30901025
45	Do not know	30901025
0	Unspecified	30901025
5607	Not applicable	30901025
1355	In the formal sector	30901026
623	In the informal sector	30901026
392	Private household	30901026
35	Do not know	30901026
0	Unspecified	30901026
7274	Not applicable	30901026
1041	In the formal sector	30901027
389	In the informal sector	30901027
386	Private household	30901027
62	Do not know	30901027
0	Unspecified	30901027
8662	Not applicable	30901027
1880	In the formal sector	30901028
408	In the informal sector	30901028
252	Private household	30901028
43	Do not know	30901028
0	Unspecified	30901028
6945	Not applicable	30901028
381	In the formal sector	30901029
83	In the informal sector	30901029
48	Private household	30901029
6	Do not know	30901029
0	Unspecified	30901029
1392	Not applicable	30901029
1172	In the formal sector	30901030
227	In the informal sector	30901030
214	Private household	30901030
33	Do not know	30901030
0	Unspecified	30901030
8245	Not applicable	30901030
1464	In the formal sector	30901031
380	In the informal sector	30901031
404	Private household	30901031
54	Do not know	30901031
0	Unspecified	30901031
7669	Not applicable	30901031
852	In the formal sector	30902001
88	In the informal sector	30902001
57	Private household	30902001
24	Do not know	30902001
0	Unspecified	30902001
4740	Not applicable	30902001
1026	In the formal sector	30902002
106	In the informal sector	30902002
236	Private household	30902002
79	Do not know	30902002
0	Unspecified	30902002
5336	Not applicable	30902002
1046	In the formal sector	30902003
205	In the informal sector	30902003
115	Private household	30902003
36	Do not know	30902003
0	Unspecified	30902003
7503	Not applicable	30902003
457	In the formal sector	30902004
255	In the informal sector	30902004
40	Private household	30902004
104	Do not know	30902004
0	Unspecified	30902004
5394	Not applicable	30902004
608	In the formal sector	30902005
249	In the informal sector	30902005
104	Private household	30902005
51	Do not know	30902005
0	Unspecified	30902005
6614	Not applicable	30902005
823	In the formal sector	30902006
319	In the informal sector	30902006
208	Private household	30902006
46	Do not know	30902006
0	Unspecified	30902006
3451	Not applicable	30902006
497	In the formal sector	30902007
74	In the informal sector	30902007
239	Private household	30902007
18	Do not know	30902007
0	Unspecified	30902007
5839	Not applicable	30902007
682	In the formal sector	30903001
93	In the informal sector	30903001
100	Private household	30903001
29	Do not know	30903001
0	Unspecified	30903001
6614	Not applicable	30903001
402	In the formal sector	30903002
44	In the informal sector	30903002
9	Private household	30903002
9	Do not know	30903002
0	Unspecified	30903002
4476	Not applicable	30903002
166	In the formal sector	30903003
85	In the informal sector	30903003
85	Private household	30903003
5	Do not know	30903003
0	Unspecified	30903003
2229	Not applicable	30903003
828	In the formal sector	30903004
72	In the informal sector	30903004
69	Private household	30903004
14	Do not know	30903004
0	Unspecified	30903004
5055	Not applicable	30903004
786	In the formal sector	30903005
75	In the informal sector	30903005
158	Private household	30903005
26	Do not know	30903005
0	Unspecified	30903005
2095	Not applicable	30903005
573	In the formal sector	30904001
228	In the informal sector	30904001
184	Private household	30904001
13	Do not know	30904001
0	Unspecified	30904001
7211	Not applicable	30904001
634	In the formal sector	30904002
110	In the informal sector	30904002
174	Private household	30904002
2	Do not know	30904002
0	Unspecified	30904002
4336	Not applicable	30904002
468	In the formal sector	30904003
133	In the informal sector	30904003
62	Private household	30904003
36	Do not know	30904003
0	Unspecified	30904003
3872	Not applicable	30904003
1005	In the formal sector	30904004
225	In the informal sector	30904004
81	Private household	30904004
28	Do not know	30904004
0	Unspecified	30904004
4528	Not applicable	30904004
1760	In the formal sector	30904005
403	In the informal sector	30904005
234	Private household	30904005
86	Do not know	30904005
0	Unspecified	30904005
6888	Not applicable	30904005
1233	In the formal sector	30904006
114	In the informal sector	30904006
68	Private household	30904006
32	Do not know	30904006
0	Unspecified	30904006
1849	Not applicable	30904006
1067	In the formal sector	30904007
238	In the informal sector	30904007
286	Private household	30904007
134	Do not know	30904007
0	Unspecified	30904007
7618	Not applicable	30904007
919	In the formal sector	30904008
283	In the informal sector	30904008
404	Private household	30904008
23	Do not know	30904008
0	Unspecified	30904008
7614	Not applicable	30904008
1123	In the formal sector	30904009
289	In the informal sector	30904009
179	Private household	30904009
19	Do not know	30904009
0	Unspecified	30904009
6234	Not applicable	30904009
333	In the formal sector	34501001
62	In the informal sector	34501001
79	Private household	34501001
13	Do not know	34501001
0	Unspecified	34501001
5046	Not applicable	34501001
266	In the formal sector	34501002
98	In the informal sector	34501002
77	Private household	34501002
16	Do not know	34501002
0	Unspecified	34501002
5430	Not applicable	34501002
281	In the formal sector	34501003
80	In the informal sector	34501003
14	Private household	34501003
5	Do not know	34501003
0	Unspecified	34501003
5260	Not applicable	34501003
1522	In the formal sector	34501004
369	In the informal sector	34501004
695	Private household	34501004
65	Do not know	34501004
0	Unspecified	34501004
4152	Not applicable	34501004
513	In the formal sector	34501005
47	In the informal sector	34501005
54	Private household	34501005
17	Do not know	34501005
0	Unspecified	34501005
5252	Not applicable	34501005
263	In the formal sector	34501006
84	In the informal sector	34501006
16	Private household	34501006
5	Do not know	34501006
0	Unspecified	34501006
5602	Not applicable	34501006
269	In the formal sector	34501007
77	In the informal sector	34501007
66	Private household	34501007
4	Do not know	34501007
0	Unspecified	34501007
4133	Not applicable	34501007
192	In the formal sector	34501008
122	In the informal sector	34501008
51	Private household	34501008
5	Do not know	34501008
0	Unspecified	34501008
4840	Not applicable	34501008
211	In the formal sector	34501009
47	In the informal sector	34501009
43	Private household	34501009
6	Do not know	34501009
0	Unspecified	34501009
7104	Not applicable	34501009
180	In the formal sector	34501010
18	In the informal sector	34501010
30	Private household	34501010
7	Do not know	34501010
0	Unspecified	34501010
6492	Not applicable	34501010
205	In the formal sector	34501011
77	In the informal sector	34501011
19	Private household	34501011
2	Do not know	34501011
0	Unspecified	34501011
5286	Not applicable	34501011
109	In the formal sector	34501012
21	In the informal sector	34501012
10	Private household	34501012
1	Do not know	34501012
0	Unspecified	34501012
5621	Not applicable	34501012
271	In the formal sector	34501013
85	In the informal sector	34501013
34	Private household	34501013
15	Do not know	34501013
0	Unspecified	34501013
7033	Not applicable	34501013
246	In the formal sector	34501014
95	In the informal sector	34501014
57	Private household	34501014
28	Do not know	34501014
0	Unspecified	34501014
4755	Not applicable	34501014
340	In the formal sector	34501015
60	In the informal sector	34501015
34	Private household	34501015
11	Do not know	34501015
0	Unspecified	34501015
5500	Not applicable	34501015
2427	In the formal sector	34502001
266	In the informal sector	34502001
127	Private household	34502001
82	Do not know	34502001
0	Unspecified	34502001
3220	Not applicable	34502001
997	In the formal sector	34502002
158	In the informal sector	34502002
431	Private household	34502002
53	Do not know	34502002
0	Unspecified	34502002
7112	Not applicable	34502002
2366	In the formal sector	34502003
170	In the informal sector	34502003
287	Private household	34502003
7	Do not know	34502003
0	Unspecified	34502003
7166	Not applicable	34502003
1039	In the formal sector	34502004
75	In the informal sector	34502004
182	Private household	34502004
2	Do not know	34502004
0	Unspecified	34502004
4526	Not applicable	34502004
505	In the formal sector	34502005
94	In the informal sector	34502005
96	Private household	34502005
1	Do not know	34502005
0	Unspecified	34502005
2595	Not applicable	34502005
1444	In the formal sector	34502006
219	In the informal sector	34502006
319	Private household	34502006
108	Do not know	34502006
0	Unspecified	34502006
6729	Not applicable	34502006
433	In the formal sector	34502007
65	In the informal sector	34502007
56	Private household	34502007
13	Do not know	34502007
0	Unspecified	34502007
5252	Not applicable	34502007
673	In the formal sector	34502008
124	In the informal sector	34502008
92	Private household	34502008
48	Do not know	34502008
0	Unspecified	34502008
5053	Not applicable	34502008
441	In the formal sector	34502009
22	In the informal sector	34502009
68	Private household	34502009
18	Do not know	34502009
0	Unspecified	34502009
3234	Not applicable	34502009
1223	In the formal sector	34502010
144	In the informal sector	34502010
365	Private household	34502010
54	Do not know	34502010
0	Unspecified	34502010
9390	Not applicable	34502010
1015	In the formal sector	34502011
81	In the informal sector	34502011
267	Private household	34502011
17	Do not know	34502011
0	Unspecified	34502011
5552	Not applicable	34502011
1179	In the formal sector	34502012
112	In the informal sector	34502012
330	Private household	34502012
76	Do not know	34502012
0	Unspecified	34502012
8598	Not applicable	34502012
1360	In the formal sector	34502013
208	In the informal sector	34502013
274	Private household	34502013
16	Do not know	34502013
0	Unspecified	34502013
4993	Not applicable	34502013
5224	In the formal sector	34503001
211	In the informal sector	34503001
499	Private household	34503001
99	Do not know	34503001
0	Unspecified	34503001
5517	Not applicable	34503001
1408	In the formal sector	34503002
419	In the informal sector	34503002
252	Private household	34503002
33	Do not know	34503002
0	Unspecified	34503002
5798	Not applicable	34503002
1660	In the formal sector	34503003
166	In the informal sector	34503003
140	Private household	34503003
14	Do not know	34503003
0	Unspecified	34503003
4262	Not applicable	34503003
1817	In the formal sector	34503004
177	In the informal sector	34503004
70	Private household	34503004
51	Do not know	34503004
0	Unspecified	34503004
5899	Not applicable	34503004
2727	In the formal sector	34503005
635	In the informal sector	34503005
460	Private household	34503005
145	Do not know	34503005
0	Unspecified	34503005
3932	Not applicable	34503005
2747	In the formal sector	10101001
420	In the informal sector	10101001
114	Private household	10101001
19	Do not know	10101001
0	Unspecified	10101001
5768	Not applicable	10101001
2618	In the formal sector	10101002
252	In the informal sector	10101002
119	Private household	10101002
13	Do not know	10101002
0	Unspecified	10101002
5469	Not applicable	10101002
1936	In the formal sector	10101003
147	In the informal sector	10101003
149	Private household	10101003
37	Do not know	10101003
0	Unspecified	10101003
4738	Not applicable	10101003
2669	In the formal sector	10101004
468	In the informal sector	10101004
229	Private household	10101004
24	Do not know	10101004
0	Unspecified	10101004
6269	Not applicable	10101004
3215	In the formal sector	10101005
266	In the informal sector	10101005
90	Private household	10101005
2	Do not know	10101005
0	Unspecified	10101005
3847	Not applicable	10101005
1651	In the formal sector	10101006
492	In the informal sector	10101006
93	Private household	10101006
37	Do not know	10101006
0	Unspecified	10101006
4914	Not applicable	10101006
2930	In the formal sector	10101007
268	In the informal sector	10101007
182	Private household	10101007
15	Do not know	10101007
0	Unspecified	10101007
5551	Not applicable	10101007
2174	In the formal sector	10101008
763	In the informal sector	10101008
173	Private household	10101008
12	Do not know	10101008
0	Unspecified	10101008
6266	Not applicable	10101008
3777	In the formal sector	10102001
357	In the informal sector	10102001
72	Private household	10102001
80	Do not know	10102001
0	Unspecified	10102001
6138	Not applicable	10102001
1926	In the formal sector	10102002
208	In the informal sector	10102002
92	Private household	10102002
112	Do not know	10102002
0	Unspecified	10102002
3936	Not applicable	10102002
1927	In the formal sector	10102003
320	In the informal sector	10102003
275	Private household	10102003
103	Do not know	10102003
0	Unspecified	10102003
4899	Not applicable	10102003
3373	In the formal sector	10102004
268	In the informal sector	10102004
128	Private household	10102004
140	Do not know	10102004
0	Unspecified	10102004
6132	Not applicable	10102004
2198	In the formal sector	10102005
178	In the informal sector	10102005
159	Private household	10102005
30	Do not know	10102005
0	Unspecified	10102005
5050	Not applicable	10102005
2473	In the formal sector	10102006
542	In the informal sector	10102006
98	Private household	10102006
50	Do not know	10102006
0	Unspecified	10102006
4728	Not applicable	10102006
4367	In the formal sector	10103001
100	In the informal sector	10103001
226	Private household	10103001
11	Do not know	10103001
0	Unspecified	10103001
5802	Not applicable	10103001
1561	In the formal sector	10103002
66	In the informal sector	10103002
240	Private household	10103002
5	Do not know	10103002
0	Unspecified	10103002
3338	Not applicable	10103002
3178	In the formal sector	10103003
280	In the informal sector	10103003
220	Private household	10103003
151	Do not know	10103003
0	Unspecified	10103003
4898	Not applicable	10103003
2698	In the formal sector	10103004
434	In the informal sector	10103004
95	Private household	10103004
28	Do not know	10103004
0	Unspecified	10103004
6207	Not applicable	10103004
4622	In the formal sector	10103005
398	In the informal sector	10103005
311	Private household	10103005
17	Do not know	10103005
0	Unspecified	10103005
7667	Not applicable	10103005
972	In the formal sector	10103006
214	In the informal sector	10103006
121	Private household	10103006
79	Do not know	10103006
0	Unspecified	10103006
2261	Not applicable	10103006
2592	In the formal sector	10103007
530	In the informal sector	10103007
470	Private household	10103007
152	Do not know	10103007
0	Unspecified	10103007
7588	Not applicable	10103007
2426	In the formal sector	10104001
153	In the informal sector	10104001
37	Private household	10104001
18	Do not know	10104001
0	Unspecified	10104001
5767	Not applicable	10104001
2430	In the formal sector	10104002
291	In the informal sector	10104002
339	Private household	10104002
142	Do not know	10104002
0	Unspecified	10104002
7386	Not applicable	10104002
1508	In the formal sector	10104003
97	In the informal sector	10104003
28	Private household	10104003
8	Do not know	10104003
0	Unspecified	10104003
4563	Not applicable	10104003
1843	In the formal sector	10104004
403	In the informal sector	10104004
115	Private household	10104004
69	Do not know	10104004
0	Unspecified	10104004
6162	Not applicable	10104004
2672	In the formal sector	10104005
113	In the informal sector	10104005
111	Private household	10104005
5	Do not know	10104005
0	Unspecified	10104005
3304	Not applicable	10104005
2894	In the formal sector	10104006
332	In the informal sector	10104006
381	Private household	10104006
133	Do not know	10104006
0	Unspecified	10104006
4730	Not applicable	10104006
2039	In the formal sector	10104007
293	In the informal sector	10104007
155	Private household	10104007
94	Do not know	10104007
0	Unspecified	10104007
4964	Not applicable	10104007
2432	In the formal sector	10104008
237	In the informal sector	10104008
142	Private household	10104008
50	Do not know	10104008
0	Unspecified	10104008
2927	Not applicable	10104008
1813	In the formal sector	10104009
381	In the informal sector	10104009
432	Private household	10104009
177	Do not know	10104009
0	Unspecified	10104009
5172	Not applicable	10104009
2509	In the formal sector	10104010
208	In the informal sector	10104010
181	Private household	10104010
38	Do not know	10104010
0	Unspecified	10104010
5588	Not applicable	10104010
1466	In the formal sector	10104011
319	In the informal sector	10104011
152	Private household	10104011
154	Do not know	10104011
0	Unspecified	10104011
3424	Not applicable	10104011
2078	In the formal sector	10104012
247	In the informal sector	10104012
350	Private household	10104012
72	Do not know	10104012
0	Unspecified	10104012
5662	Not applicable	10104012
2181	In the formal sector	10104013
92	In the informal sector	10104013
56	Private household	10104013
32	Do not know	10104013
0	Unspecified	10104013
4618	Not applicable	10104013
2380	In the formal sector	10105001
95	In the informal sector	10105001
309	Private household	10105001
12	Do not know	10105001
0	Unspecified	10105001
7761	Not applicable	10105001
2474	In the formal sector	10105002
141	In the informal sector	10105002
233	Private household	10105002
8	Do not know	10105002
0	Unspecified	10105002
6310	Not applicable	10105002
3115	In the formal sector	10105003
387	In the informal sector	10105003
223	Private household	10105003
20	Do not know	10105003
0	Unspecified	10105003
5143	Not applicable	10105003
3671	In the formal sector	10105004
346	In the informal sector	10105004
355	Private household	10105004
70	Do not know	10105004
0	Unspecified	10105004
7553	Not applicable	10105004
2896	In the formal sector	10105005
331	In the informal sector	10105005
223	Private household	10105005
33	Do not know	10105005
0	Unspecified	10105005
4434	Not applicable	10105005
2379	In the formal sector	10105006
214	In the informal sector	10105006
361	Private household	10105006
11	Do not know	10105006
0	Unspecified	10105006
5336	Not applicable	10105006
4102	In the formal sector	10105007
441	In the informal sector	10105007
261	Private household	10105007
73	Do not know	10105007
0	Unspecified	10105007
8141	Not applicable	10105007
1948	In the formal sector	10105008
344	In the informal sector	10105008
140	Private household	10105008
183	Do not know	10105008
0	Unspecified	10105008
4339	Not applicable	10105008
2021	In the formal sector	10105009
370	In the informal sector	10105009
167	Private household	10105009
145	Do not know	10105009
0	Unspecified	10105009
5828	Not applicable	10105009
3041	In the formal sector	10105010
184	In the informal sector	10105010
245	Private household	10105010
40	Do not know	10105010
0	Unspecified	10105010
5180	Not applicable	10105010
2305	In the formal sector	10105011
532	In the informal sector	10105011
161	Private household	10105011
129	Do not know	10105011
0	Unspecified	10105011
6177	Not applicable	10105011
3781	In the formal sector	10105012
237	In the informal sector	10105012
225	Private household	10105012
30	Do not know	10105012
0	Unspecified	10105012
6164	Not applicable	10105012
1955	In the formal sector	10202001
201	In the informal sector	10202001
166	Private household	10202001
41	Do not know	10202001
0	Unspecified	10202001
4712	Not applicable	10202001
2136	In the formal sector	10202002
460	In the informal sector	10202002
116	Private household	10202002
18	Do not know	10202002
0	Unspecified	10202002
3484	Not applicable	10202002
3204	In the formal sector	10202003
359	In the informal sector	10202003
117	Private household	10202003
71	Do not know	10202003
0	Unspecified	10202003
5454	Not applicable	10202003
2280	In the formal sector	10202004
219	In the informal sector	10202004
63	Private household	10202004
50	Do not know	10202004
0	Unspecified	10202004
4744	Not applicable	10202004
3164	In the formal sector	10202005
943	In the informal sector	10202005
120	Private household	10202005
27	Do not know	10202005
0	Unspecified	10202005
4793	Not applicable	10202005
2551	In the formal sector	10202006
805	In the informal sector	10202006
174	Private household	10202006
72	Do not know	10202006
0	Unspecified	10202006
7412	Not applicable	10202006
4086	In the formal sector	10202007
329	In the informal sector	10202007
238	Private household	10202007
43	Do not know	10202007
0	Unspecified	10202007
9647	Not applicable	10202007
6842	In the formal sector	10202008
129	In the informal sector	10202008
33	Private household	10202008
13	Do not know	10202008
0	Unspecified	10202008
3194	Not applicable	10202008
6506	In the formal sector	10202009
89	In the informal sector	10202009
39	Private household	10202009
13	Do not know	10202009
0	Unspecified	10202009
3571	Not applicable	10202009
4612	In the formal sector	10202010
657	In the informal sector	10202010
56	Private household	10202010
13	Do not know	10202010
0	Unspecified	10202010
4772	Not applicable	10202010
3712	In the formal sector	10202011
549	In the informal sector	10202011
824	Private household	10202011
169	Do not know	10202011
0	Unspecified	10202011
7027	Not applicable	10202011
2894	In the formal sector	10202012
1328	In the informal sector	10202012
108	Private household	10202012
60	Do not know	10202012
0	Unspecified	10202012
4480	Not applicable	10202012
3441	In the formal sector	10203001
564	In the informal sector	10203001
231	Private household	10203001
217	Do not know	10203001
0	Unspecified	10203001
5492	Not applicable	10203001
2217	In the formal sector	10203002
181	In the informal sector	10203002
69	Private household	10203002
25	Do not know	10203002
0	Unspecified	10203002
2655	Not applicable	10203002
5087	In the formal sector	10203003
234	In the informal sector	10203003
523	Private household	10203003
186	Do not know	10203003
0	Unspecified	10203003
5714	Not applicable	10203003
2344	In the formal sector	10203004
160	In the informal sector	10203004
300	Private household	10203004
45	Do not know	10203004
0	Unspecified	10203004
3748	Not applicable	10203004
1770	In the formal sector	10203005
254	In the informal sector	10203005
302	Private household	10203005
91	Do not know	10203005
0	Unspecified	10203005
7121	Not applicable	10203005
981	In the formal sector	10203006
101	In the informal sector	10203006
167	Private household	10203006
66	Do not know	10203006
0	Unspecified	10203006
4515	Not applicable	10203006
2598	In the formal sector	10203007
484	In the informal sector	10203007
172	Private household	10203007
64	Do not know	10203007
0	Unspecified	10203007
6086	Not applicable	10203007
386	In the formal sector	10203008
31	In the informal sector	10203008
54	Private household	10203008
4	Do not know	10203008
0	Unspecified	10203008
1402	Not applicable	10203008
1298	In the formal sector	10203009
139	In the informal sector	10203009
223	Private household	10203009
21	Do not know	10203009
0	Unspecified	10203009
5030	Not applicable	10203009
2239	In the formal sector	10203010
345	In the informal sector	10203010
119	Private household	10203010
79	Do not know	10203010
0	Unspecified	10203010
5499	Not applicable	10203010
3014	In the formal sector	10203011
599	In the informal sector	10203011
361	Private household	10203011
15	Do not know	10203011
0	Unspecified	10203011
8141	Not applicable	10203011
1151	In the formal sector	10203012
87	In the informal sector	10203012
119	Private household	10203012
28	Do not know	10203012
0	Unspecified	10203012
5014	Not applicable	10203012
1817	In the formal sector	10203013
549	In the informal sector	10203013
323	Private household	10203013
60	Do not know	10203013
0	Unspecified	10203013
5001	Not applicable	10203013
3078	In the formal sector	10203014
704	In the informal sector	10203014
463	Private household	10203014
20	Do not know	10203014
0	Unspecified	10203014
9671	Not applicable	10203014
2754	In the formal sector	10203015
602	In the informal sector	10203015
138	Private household	10203015
53	Do not know	10203015
0	Unspecified	10203015
3606	Not applicable	10203015
1046	In the formal sector	10203016
538	In the informal sector	10203016
298	Private household	10203016
34	Do not know	10203016
0	Unspecified	10203016
5571	Not applicable	10203016
4647	In the formal sector	10203017
192	In the informal sector	10203017
137	Private household	10203017
26	Do not know	10203017
0	Unspecified	10203017
4628	Not applicable	10203017
2415	In the formal sector	10203018
340	In the informal sector	10203018
135	Private household	10203018
21	Do not know	10203018
0	Unspecified	10203018
5342	Not applicable	10203018
2542	In the formal sector	10203019
221	In the informal sector	10203019
135	Private household	10203019
28	Do not know	10203019
0	Unspecified	10203019
3665	Not applicable	10203019
966	In the formal sector	10203020
102	In the informal sector	10203020
33	Private household	10203020
1	Do not know	10203020
0	Unspecified	10203020
2217	Not applicable	10203020
2661	In the formal sector	10203021
212	In the informal sector	10203021
166	Private household	10203021
44	Do not know	10203021
0	Unspecified	10203021
8259	Not applicable	10203021
3107	In the formal sector	10203022
276	In the informal sector	10203022
198	Private household	10203022
17	Do not know	10203022
0	Unspecified	10203022
5152	Not applicable	10203022
2928	In the formal sector	10203023
188	In the informal sector	10203023
89	Private household	10203023
41	Do not know	10203023
0	Unspecified	10203023
4855	Not applicable	10203023
1478	In the formal sector	10203024
121	In the informal sector	10203024
260	Private household	10203024
12	Do not know	10203024
0	Unspecified	10203024
4851	Not applicable	10203024
2127	In the formal sector	10203025
203	In the informal sector	10203025
61	Private household	10203025
174	Do not know	10203025
0	Unspecified	10203025
6312	Not applicable	10203025
2504	In the formal sector	10203026
695	In the informal sector	10203026
171	Private household	10203026
54	Do not know	10203026
0	Unspecified	10203026
6759	Not applicable	10203026
1270	In the formal sector	10203027
108	In the informal sector	10203027
32	Private household	10203027
12	Do not know	10203027
0	Unspecified	10203027
4944	Not applicable	10203027
1970	In the formal sector	10203028
276	In the informal sector	10203028
162	Private household	10203028
48	Do not know	10203028
0	Unspecified	10203028
4628	Not applicable	10203028
2490	In the formal sector	10203029
312	In the informal sector	10203029
121	Private household	10203029
12	Do not know	10203029
0	Unspecified	10203029
4931	Not applicable	10203029
1998	In the formal sector	10203030
1474	In the informal sector	10203030
159	Private household	10203030
16	Do not know	10203030
0	Unspecified	10203030
6293	Not applicable	10203030
2168	In the formal sector	10203031
594	In the informal sector	10203031
199	Private household	10203031
3	Do not know	10203031
0	Unspecified	10203031
5346	Not applicable	10203031
3557	In the formal sector	10204001
422	In the informal sector	10204001
511	Private household	10204001
206	Do not know	10204001
0	Unspecified	10204001
7693	Not applicable	10204001
2007	In the formal sector	10204002
492	In the informal sector	10204002
276	Private household	10204002
13	Do not know	10204002
0	Unspecified	10204002
4732	Not applicable	10204002
2078	In the formal sector	10204003
952	In the informal sector	10204003
465	Private household	10204003
121	Do not know	10204003
0	Unspecified	10204003
5336	Not applicable	10204003
2690	In the formal sector	10204004
499	In the informal sector	10204004
173	Private household	10204004
34	Do not know	10204004
0	Unspecified	10204004
4834	Not applicable	10204004
2090	In the formal sector	10204005
156	In the informal sector	10204005
97	Private household	10204005
67	Do not know	10204005
0	Unspecified	10204005
3246	Not applicable	10204005
1662	In the formal sector	10204006
421	In the informal sector	10204006
229	Private household	10204006
67	Do not know	10204006
0	Unspecified	10204006
3477	Not applicable	10204006
1127	In the formal sector	10204007
122	In the informal sector	10204007
109	Private household	10204007
19	Do not know	10204007
0	Unspecified	10204007
2497	Not applicable	10204007
427	In the formal sector	10204008
30	In the informal sector	10204008
30	Private household	10204008
19	Do not know	10204008
0	Unspecified	10204008
5177	Not applicable	10204008
104	In the formal sector	10204009
10	In the informal sector	10204009
10	Private household	10204009
5	Do not know	10204009
0	Unspecified	10204009
693	Not applicable	10204009
1258	In the formal sector	10204010
98	In the informal sector	10204010
109	Private household	10204010
38	Do not know	10204010
0	Unspecified	10204010
3768	Not applicable	10204010
1924	In the formal sector	10204011
417	In the informal sector	10204011
235	Private household	10204011
90	Do not know	10204011
0	Unspecified	10204011
3880	Not applicable	10204011
2018	In the formal sector	10204012
379	In the informal sector	10204012
193	Private household	10204012
33	Do not know	10204012
0	Unspecified	10204012
5386	Not applicable	10204012
790	In the formal sector	10204013
82	In the informal sector	10204013
73	Private household	10204013
9	Do not know	10204013
0	Unspecified	10204013
1527	Not applicable	10204013
1237	In the formal sector	10204014
279	In the informal sector	10204014
164	Private household	10204014
32	Do not know	10204014
0	Unspecified	10204014
3567	Not applicable	10204014
2244	In the formal sector	10204015
484	In the informal sector	10204015
310	Private household	10204015
86	Do not know	10204015
0	Unspecified	10204015
7279	Not applicable	10204015
1920	In the formal sector	10204016
249	In the informal sector	10204016
156	Private household	10204016
37	Do not know	10204016
0	Unspecified	10204016
6264	Not applicable	10204016
2942	In the formal sector	10204017
228	In the informal sector	10204017
237	Private household	10204017
73	Do not know	10204017
0	Unspecified	10204017
4248	Not applicable	10204017
2376	In the formal sector	10204018
390	In the informal sector	10204018
333	Private household	10204018
122	Do not know	10204018
0	Unspecified	10204018
5543	Not applicable	10204018
2833	In the formal sector	10204019
982	In the informal sector	10204019
571	Private household	10204019
86	Do not know	10204019
0	Unspecified	10204019
6023	Not applicable	10204019
2937	In the formal sector	10204020
1350	In the informal sector	10204020
363	Private household	10204020
42	Do not know	10204020
0	Unspecified	10204020
4936	Not applicable	10204020
3046	In the formal sector	10204021
332	In the informal sector	10204021
436	Private household	10204021
110	Do not know	10204021
0	Unspecified	10204021
4728	Not applicable	10204021
1756	In the formal sector	10204022
155	In the informal sector	10204022
248	Private household	10204022
35	Do not know	10204022
0	Unspecified	10204022
2681	Not applicable	10204022
1356	In the formal sector	10205001
464	In the informal sector	10205001
169	Private household	10205001
59	Do not know	10205001
0	Unspecified	10205001
6703	Not applicable	10205001
2046	In the formal sector	10205002
319	In the informal sector	10205002
129	Private household	10205002
172	Do not know	10205002
0	Unspecified	10205002
6748	Not applicable	10205002
3011	In the formal sector	10205003
789	In the informal sector	10205003
188	Private household	10205003
98	Do not know	10205003
0	Unspecified	10205003
5506	Not applicable	10205003
3226	In the formal sector	10205004
541	In the informal sector	10205004
128	Private household	10205004
291	Do not know	10205004
0	Unspecified	10205004
5795	Not applicable	10205004
4379	In the formal sector	10205005
929	In the informal sector	10205005
158	Private household	10205005
18	Do not know	10205005
0	Unspecified	10205005
5957	Not applicable	10205005
1856	In the formal sector	10205006
153	In the informal sector	10205006
85	Private household	10205006
25	Do not know	10205006
0	Unspecified	10205006
3229	Not applicable	10205006
2388	In the formal sector	10205007
138	In the informal sector	10205007
202	Private household	10205007
29	Do not know	10205007
0	Unspecified	10205007
3430	Not applicable	10205007
1948	In the formal sector	10205008
163	In the informal sector	10205008
340	Private household	10205008
69	Do not know	10205008
0	Unspecified	10205008
6390	Not applicable	10205008
1646	In the formal sector	10205009
192	In the informal sector	10205009
101	Private household	10205009
27	Do not know	10205009
0	Unspecified	10205009
4882	Not applicable	10205009
2017	In the formal sector	10205010
301	In the informal sector	10205010
83	Private household	10205010
25	Do not know	10205010
0	Unspecified	10205010
5498	Not applicable	10205010
2268	In the formal sector	10205011
92	In the informal sector	10205011
30	Private household	10205011
11	Do not know	10205011
0	Unspecified	10205011
4293	Not applicable	10205011
1885	In the formal sector	10205012
309	In the informal sector	10205012
77	Private household	10205012
18	Do not know	10205012
0	Unspecified	10205012
4894	Not applicable	10205012
2414	In the formal sector	10205013
206	In the informal sector	10205013
215	Private household	10205013
20	Do not know	10205013
0	Unspecified	10205013
4737	Not applicable	10205013
1653	In the formal sector	10205014
89	In the informal sector	10205014
62	Private household	10205014
3	Do not know	10205014
0	Unspecified	10205014
4117	Not applicable	10205014
2358	In the formal sector	10205015
448	In the informal sector	10205015
295	Private household	10205015
27	Do not know	10205015
0	Unspecified	10205015
4977	Not applicable	10205015
1862	In the formal sector	10205016
358	In the informal sector	10205016
189	Private household	10205016
47	Do not know	10205016
0	Unspecified	10205016
5482	Not applicable	10205016
433	In the formal sector	10205017
96	In the informal sector	10205017
49	Private household	10205017
46	Do not know	10205017
0	Unspecified	10205017
2753	Not applicable	10205017
2169	In the formal sector	10205018
831	In the informal sector	10205018
150	Private household	10205018
13	Do not know	10205018
0	Unspecified	10205018
4949	Not applicable	10205018
1251	In the formal sector	10205019
1463	In the informal sector	10205019
46	Private household	10205019
98	Do not know	10205019
0	Unspecified	10205019
3266	Not applicable	10205019
1309	In the formal sector	10205020
1792	In the informal sector	10205020
174	Private household	10205020
43	Do not know	10205020
0	Unspecified	10205020
4310	Not applicable	10205020
3567	In the formal sector	10205021
573	In the informal sector	10205021
179	Private household	10205021
37	Do not know	10205021
0	Unspecified	10205021
9396	Not applicable	10205021
1714	In the formal sector	10206001
212	In the informal sector	10206001
141	Private household	10206001
39	Do not know	10206001
0	Unspecified	10206001
3632	Not applicable	10206001
2211	In the formal sector	10206002
381	In the informal sector	10206002
161	Private household	10206002
37	Do not know	10206002
0	Unspecified	10206002
6084	Not applicable	10206002
1616	In the formal sector	10206003
712	In the informal sector	10206003
137	Private household	10206003
99	Do not know	10206003
0	Unspecified	10206003
6128	Not applicable	10206003
2113	In the formal sector	10206004
667	In the informal sector	10206004
151	Private household	10206004
43	Do not know	10206004
0	Unspecified	10206004
4884	Not applicable	10206004
675	In the formal sector	10206005
1195	In the informal sector	10206005
216	Private household	10206005
111	Do not know	10206005
0	Unspecified	10206005
3447	Not applicable	10206005
1570	In the formal sector	10206006
1946	In the informal sector	10206006
371	Private household	10206006
36	Do not know	10206006
0	Unspecified	10206006
5873	Not applicable	10206006
2573	In the formal sector	10206007
767	In the informal sector	10206007
131	Private household	10206007
24	Do not know	10206007
0	Unspecified	10206007
6175	Not applicable	10206007
2343	In the formal sector	10206008
2119	In the informal sector	10206008
216	Private household	10206008
34	Do not know	10206008
0	Unspecified	10206008
5003	Not applicable	10206008
1373	In the formal sector	10206009
483	In the informal sector	10206009
163	Private household	10206009
34	Do not know	10206009
0	Unspecified	10206009
5556	Not applicable	10206009
780	In the formal sector	10206010
51	In the informal sector	10206010
9	Private household	10206010
17	Do not know	10206010
0	Unspecified	10206010
4741	Not applicable	10206010
2058	In the formal sector	10206011
481	In the informal sector	10206011
119	Private household	10206011
28	Do not know	10206011
0	Unspecified	10206011
3260	Not applicable	10206011
2399	In the formal sector	10206012
2412	In the informal sector	10206012
199	Private household	10206012
95	Do not know	10206012
0	Unspecified	10206012
7482	Not applicable	10206012
2533	In the formal sector	10304001
299	In the informal sector	10304001
247	Private household	10304001
52	Do not know	10304001
0	Unspecified	10304001
4491	Not applicable	10304001
2355	In the formal sector	10304002
429	In the informal sector	10304002
167	Private household	10304002
188	Do not know	10304002
0	Unspecified	10304002
4772	Not applicable	10304002
1865	In the formal sector	10304003
595	In the informal sector	10304003
316	Private household	10304003
104	Do not know	10304003
0	Unspecified	10304003
4899	Not applicable	10304003
877	In the formal sector	10304004
80	In the informal sector	10304004
56	Private household	10304004
11	Do not know	10304004
0	Unspecified	10304004
2494	Not applicable	10304004
2178	In the formal sector	10304005
401	In the informal sector	10304005
169	Private household	10304005
49	Do not know	10304005
0	Unspecified	10304005
6289	Not applicable	10304005
2544	In the formal sector	10301001
697	In the informal sector	10301001
110	Private household	10301001
42	Do not know	10301001
0	Unspecified	10301001
5863	Not applicable	10301001
1917	In the formal sector	10301002
615	In the informal sector	10301002
130	Private household	10301002
25	Do not know	10301002
0	Unspecified	10301002
5756	Not applicable	10301002
3501	In the formal sector	10301003
308	In the informal sector	10301003
271	Private household	10301003
31	Do not know	10301003
0	Unspecified	10301003
7063	Not applicable	10301003
2580	In the formal sector	10301004
555	In the informal sector	10301004
68	Private household	10301004
32	Do not know	10301004
0	Unspecified	10301004
3867	Not applicable	10301004
3306	In the formal sector	10301005
1071	In the informal sector	10301005
185	Private household	10301005
115	Do not know	10301005
0	Unspecified	10301005
6951	Not applicable	10301005
2273	In the formal sector	10301006
480	In the informal sector	10301006
78	Private household	10301006
14	Do not know	10301006
0	Unspecified	10301006
3960	Not applicable	10301006
2683	In the formal sector	10301007
223	In the informal sector	10301007
70	Private household	10301007
54	Do not know	10301007
0	Unspecified	10301007
5193	Not applicable	10301007
1010	In the formal sector	10301008
411	In the informal sector	10301008
102	Private household	10301008
85	Do not know	10301008
0	Unspecified	10301008
3458	Not applicable	10301008
3423	In the formal sector	10301009
341	In the informal sector	10301009
19	Private household	10301009
32	Do not know	10301009
0	Unspecified	10301009
4180	Not applicable	10301009
2498	In the formal sector	10301010
264	In the informal sector	10301010
31	Private household	10301010
121	Do not know	10301010
0	Unspecified	10301010
2990	Not applicable	10301010
1096	In the formal sector	10301011
353	In the informal sector	10301011
76	Private household	10301011
230	Do not know	10301011
0	Unspecified	10301011
3538	Not applicable	10301011
1503	In the formal sector	10301012
635	In the informal sector	10301012
160	Private household	10301012
39	Do not know	10301012
0	Unspecified	10301012
5240	Not applicable	10301012
3023	In the formal sector	10301013
1380	In the informal sector	10301013
138	Private household	10301013
241	Do not know	10301013
0	Unspecified	10301013
9543	Not applicable	10301013
1401	In the formal sector	10302001
303	In the informal sector	10302001
316	Private household	10302001
51	Do not know	10302001
0	Unspecified	10302001
4383	Not applicable	10302001
1493	In the formal sector	10302002
489	In the informal sector	10302002
166	Private household	10302002
5	Do not know	10302002
0	Unspecified	10302002
4713	Not applicable	10302002
1114	In the formal sector	10302003
96	In the informal sector	10302003
131	Private household	10302003
23	Do not know	10302003
0	Unspecified	10302003
2902	Not applicable	10302003
2215	In the formal sector	10302004
573	In the informal sector	10302004
257	Private household	10302004
47	Do not know	10302004
0	Unspecified	10302004
4710	Not applicable	10302004
1545	In the formal sector	10302005
261	In the informal sector	10302005
439	Private household	10302005
84	Do not know	10302005
0	Unspecified	10302005
4017	Not applicable	10302005
1761	In the formal sector	10302006
320	In the informal sector	10302006
452	Private household	10302006
89	Do not know	10302006
0	Unspecified	10302006
3906	Not applicable	10302006
1296	In the formal sector	10302007
114	In the informal sector	10302007
137	Private household	10302007
38	Do not know	10302007
0	Unspecified	10302007
2517	Not applicable	10302007
2037	In the formal sector	10302008
332	In the informal sector	10302008
376	Private household	10302008
247	Do not know	10302008
0	Unspecified	10302008
6420	Not applicable	10302008
513	In the formal sector	10302009
62	In the informal sector	10302009
70	Private household	10302009
36	Do not know	10302009
0	Unspecified	10302009
1763	Not applicable	10302009
1530	In the formal sector	10302010
481	In the informal sector	10302010
230	Private household	10302010
33	Do not know	10302010
0	Unspecified	10302010
4363	Not applicable	10302010
1774	In the formal sector	10302011
1028	In the informal sector	10302011
559	Private household	10302011
53	Do not know	10302011
0	Unspecified	10302011
5672	Not applicable	10302011
1246	In the formal sector	10302012
302	In the informal sector	10302012
496	Private household	10302012
94	Do not know	10302012
0	Unspecified	10302012
3198	Not applicable	10302012
1415	In the formal sector	10302013
226	In the informal sector	10302013
87	Private household	10302013
32	Do not know	10302013
0	Unspecified	10302013
3392	Not applicable	10302013
1255	In the formal sector	10303001
449	In the informal sector	10303001
89	Private household	10303001
108	Do not know	10303001
0	Unspecified	10303001
4094	Not applicable	10303001
2759	In the formal sector	10303002
292	In the informal sector	10303002
217	Private household	10303002
20	Do not know	10303002
0	Unspecified	10303002
4742	Not applicable	10303002
2042	In the formal sector	10303003
196	In the informal sector	10303003
177	Private household	10303003
118	Do not know	10303003
0	Unspecified	10303003
3783	Not applicable	10303003
2349	In the formal sector	10303004
112	In the informal sector	10303004
80	Private household	10303004
1	Do not know	10303004
0	Unspecified	10303004
3178	Not applicable	10303004
1836	In the formal sector	10303005
297	In the informal sector	10303005
357	Private household	10303005
165	Do not know	10303005
0	Unspecified	10303005
4324	Not applicable	10303005
944	In the formal sector	10401001
510	In the informal sector	10401001
169	Private household	10401001
58	Do not know	10401001
0	Unspecified	10401001
4762	Not applicable	10401001
1370	In the formal sector	10401002
205	In the informal sector	10401002
92	Private household	10401002
58	Do not know	10401002
0	Unspecified	10401002
5720	Not applicable	10401002
593	In the formal sector	10401003
524	In the informal sector	10401003
64	Private household	10401003
54	Do not know	10401003
0	Unspecified	10401003
3782	Not applicable	10401003
933	In the formal sector	10401004
651	In the informal sector	10401004
70	Private household	10401004
90	Do not know	10401004
0	Unspecified	10401004
4117	Not applicable	10401004
1234	In the formal sector	10402001
702	In the informal sector	10402001
264	Private household	10402001
306	Do not know	10402001
0	Unspecified	10402001
4238	Not applicable	10402001
1368	In the formal sector	10402002
836	In the informal sector	10402002
214	Private household	10402002
67	Do not know	10402002
0	Unspecified	10402002
5000	Not applicable	10402002
869	In the formal sector	10402003
498	In the informal sector	10402003
232	Private household	10402003
22	Do not know	10402003
0	Unspecified	10402003
3217	Not applicable	10402003
1388	In the formal sector	10402004
558	In the informal sector	10402004
249	Private household	10402004
298	Do not know	10402004
0	Unspecified	10402004
5964	Not applicable	10402004
923	In the formal sector	10402005
316	In the informal sector	10402005
138	Private household	10402005
325	Do not know	10402005
0	Unspecified	10402005
4075	Not applicable	10402005
2047	In the formal sector	10402006
213	In the informal sector	10402006
227	Private household	10402006
7	Do not know	10402006
0	Unspecified	10402006
4421	Not applicable	10402006
1414	In the formal sector	10402007
514	In the informal sector	10402007
362	Private household	10402007
39	Do not know	10402007
0	Unspecified	10402007
3979	Not applicable	10402007
1451	In the formal sector	10402008
242	In the informal sector	10402008
201	Private household	10402008
72	Do not know	10402008
0	Unspecified	10402008
4151	Not applicable	10402008
993	In the formal sector	10403001
154	In the informal sector	10403001
254	Private household	10403001
56	Do not know	10403001
0	Unspecified	10403001
5296	Not applicable	10403001
986	In the formal sector	10403002
324	In the informal sector	10403002
80	Private household	10403002
27	Do not know	10403002
0	Unspecified	10403002
4344	Not applicable	10403002
2287	In the formal sector	10403003
423	In the informal sector	10403003
229	Private household	10403003
62	Do not know	10403003
0	Unspecified	10403003
6985	Not applicable	10403003
1112	In the formal sector	10403004
339	In the informal sector	10403004
267	Private household	10403004
43	Do not know	10403004
0	Unspecified	10403004
3544	Not applicable	10403004
1762	In the formal sector	10403005
291	In the informal sector	10403005
169	Private household	10403005
69	Do not know	10403005
0	Unspecified	10403005
4092	Not applicable	10403005
1874	In the formal sector	10403006
196	In the informal sector	10403006
203	Private household	10403006
42	Do not know	10403006
0	Unspecified	10403006
3943	Not applicable	10403006
1132	In the formal sector	10403007
369	In the informal sector	10403007
142	Private household	10403007
71	Do not know	10403007
0	Unspecified	10403007
3230	Not applicable	10403007
1299	In the formal sector	10403008
229	In the informal sector	10403008
148	Private household	10403008
50	Do not know	10403008
0	Unspecified	10403008
2950	Not applicable	10403008
1386	In the formal sector	10403009
328	In the informal sector	10403009
111	Private household	10403009
57	Do not know	10403009
0	Unspecified	10403009
4831	Not applicable	10403009
1174	In the formal sector	10403010
174	In the informal sector	10403010
88	Private household	10403010
50	Do not know	10403010
0	Unspecified	10403010
3084	Not applicable	10403010
1624	In the formal sector	10403011
254	In the informal sector	10403011
196	Private household	10403011
53	Do not know	10403011
0	Unspecified	10403011
4707	Not applicable	10403011
884	In the formal sector	10403012
278	In the informal sector	10403012
80	Private household	10403012
446	Do not know	10403012
0	Unspecified	10403012
3166	Not applicable	10403012
1892	In the formal sector	10403013
165	In the informal sector	10403013
104	Private household	10403013
61	Do not know	10403013
0	Unspecified	10403013
4415	Not applicable	10403013
1884	In the formal sector	10403014
590	In the informal sector	10403014
314	Private household	10403014
82	Do not know	10403014
0	Unspecified	10403014
6884	Not applicable	10403014
2308	In the formal sector	10404001
408	In the informal sector	10404001
444	Private household	10404001
62	Do not know	10404001
0	Unspecified	10404001
6135	Not applicable	10404001
1317	In the formal sector	10404002
124	In the informal sector	10404002
77	Private household	10404002
20	Do not know	10404002
0	Unspecified	10404002
1859	Not applicable	10404002
2072	In the formal sector	10404003
212	In the informal sector	10404003
213	Private household	10404003
34	Do not know	10404003
0	Unspecified	10404003
3216	Not applicable	10404003
1747	In the formal sector	10404004
344	In the informal sector	10404004
502	Private household	10404004
49	Do not know	10404004
0	Unspecified	10404004
5550	Not applicable	10404004
2325	In the formal sector	10404005
290	In the informal sector	10404005
213	Private household	10404005
27	Do not know	10404005
0	Unspecified	10404005
3718	Not applicable	10404005
2326	In the formal sector	10404006
413	In the informal sector	10404006
193	Private household	10404006
88	Do not know	10404006
0	Unspecified	10404006
7025	Not applicable	10404006
2104	In the formal sector	10404007
177	In the informal sector	10404007
240	Private household	10404007
21	Do not know	10404007
0	Unspecified	10404007
6852	Not applicable	10404007
1688	In the formal sector	10404008
225	In the informal sector	10404008
195	Private household	10404008
130	Do not know	10404008
0	Unspecified	10404008
5520	Not applicable	10404008
1205	In the formal sector	10404009
136	In the informal sector	10404009
100	Private household	10404009
205	Do not know	10404009
0	Unspecified	10404009
4319	Not applicable	10404009
553	In the formal sector	10404010
165	In the informal sector	10404010
70	Private household	10404010
8	Do not know	10404010
0	Unspecified	10404010
2356	Not applicable	10404010
1358	In the formal sector	10404011
360	In the informal sector	10404011
181	Private household	10404011
224	Do not know	10404011
0	Unspecified	10404011
6638	Not applicable	10404011
993	In the formal sector	10404012
266	In the informal sector	10404012
105	Private household	10404012
33	Do not know	10404012
0	Unspecified	10404012
2892	Not applicable	10404012
1376	In the formal sector	10404013
438	In the informal sector	10404013
314	Private household	10404013
50	Do not know	10404013
0	Unspecified	10404013
5424	Not applicable	10404013
2433	In the formal sector	10404014
339	In the informal sector	10404014
161	Private household	10404014
63	Do not know	10404014
0	Unspecified	10404014
6574	Not applicable	10404014
987	In the formal sector	10404015
507	In the informal sector	10404015
115	Private household	10404015
22	Do not know	10404015
0	Unspecified	10404015
4523	Not applicable	10404015
3066	In the formal sector	10404016
389	In the informal sector	10404016
279	Private household	10404016
24	Do not know	10404016
0	Unspecified	10404016
8200	Not applicable	10404016
2119	In the formal sector	10404017
174	In the informal sector	10404017
119	Private household	10404017
61	Do not know	10404017
0	Unspecified	10404017
6799	Not applicable	10404017
1953	In the formal sector	10404018
167	In the informal sector	10404018
67	Private household	10404018
26	Do not know	10404018
0	Unspecified	10404018
2814	Not applicable	10404018
3382	In the formal sector	10404019
469	In the informal sector	10404019
387	Private household	10404019
173	Do not know	10404019
0	Unspecified	10404019
4861	Not applicable	10404019
1382	In the formal sector	10404020
352	In the informal sector	10404020
206	Private household	10404020
43	Do not know	10404020
0	Unspecified	10404020
5930	Not applicable	10404020
1764	In the formal sector	10404021
271	In the informal sector	10404021
504	Private household	10404021
72	Do not know	10404021
0	Unspecified	10404021
6608	Not applicable	10404021
3110	In the formal sector	10404022
325	In the informal sector	10404022
297	Private household	10404022
132	Do not know	10404022
0	Unspecified	10404022
4414	Not applicable	10404022
2704	In the formal sector	10404023
528	In the informal sector	10404023
244	Private household	10404023
40	Do not know	10404023
0	Unspecified	10404023
6432	Not applicable	10404023
2696	In the formal sector	10404024
351	In the informal sector	10404024
132	Private household	10404024
64	Do not know	10404024
0	Unspecified	10404024
4740	Not applicable	10404024
1983	In the formal sector	10404025
747	In the informal sector	10404025
219	Private household	10404025
86	Do not know	10404025
0	Unspecified	10404025
5806	Not applicable	10404025
1439	In the formal sector	10405001
441	In the informal sector	10405001
224	Private household	10405001
95	Do not know	10405001
0	Unspecified	10405001
4337	Not applicable	10405001
2022	In the formal sector	10405002
181	In the informal sector	10405002
132	Private household	10405002
28	Do not know	10405002
0	Unspecified	10405002
4530	Not applicable	10405002
2180	In the formal sector	10405003
603	In the informal sector	10405003
134	Private household	10405003
21	Do not know	10405003
0	Unspecified	10405003
5722	Not applicable	10405003
636	In the formal sector	10405004
127	In the informal sector	10405004
145	Private household	10405004
24	Do not know	10405004
0	Unspecified	10405004
3751	Not applicable	10405004
1132	In the formal sector	10405005
90	In the informal sector	10405005
177	Private household	10405005
4	Do not know	10405005
0	Unspecified	10405005
4832	Not applicable	10405005
2217	In the formal sector	10405006
276	In the informal sector	10405006
278	Private household	10405006
19	Do not know	10405006
0	Unspecified	10405006
8319	Not applicable	10405006
1481	In the formal sector	10405007
214	In the informal sector	10405007
146	Private household	10405007
38	Do not know	10405007
0	Unspecified	10405007
5280	Not applicable	10405007
1677	In the formal sector	10405008
222	In the informal sector	10405008
161	Private household	10405008
60	Do not know	10405008
0	Unspecified	10405008
8472	Not applicable	10405008
759	In the formal sector	10405009
131	In the informal sector	10405009
18	Private household	10405009
29	Do not know	10405009
0	Unspecified	10405009
4636	Not applicable	10405009
609	In the formal sector	10405010
164	In the informal sector	10405010
46	Private household	10405010
26	Do not know	10405010
0	Unspecified	10405010
5491	Not applicable	10405010
1556	In the formal sector	10405011
448	In the informal sector	10405011
243	Private household	10405011
23	Do not know	10405011
0	Unspecified	10405011
8328	Not applicable	10405011
1595	In the formal sector	10405012
80	In the informal sector	10405012
227	Private household	10405012
12	Do not know	10405012
0	Unspecified	10405012
4844	Not applicable	10405012
905	In the formal sector	10405013
204	In the informal sector	10405013
87	Private household	10405013
11	Do not know	10405013
0	Unspecified	10405013
3595	Not applicable	10405013
1833	In the formal sector	10407001
536	In the informal sector	10407001
394	Private household	10407001
74	Do not know	10407001
0	Unspecified	10407001
5281	Not applicable	10407001
2259	In the formal sector	10407002
332	In the informal sector	10407002
362	Private household	10407002
66	Do not know	10407002
0	Unspecified	10407002
4705	Not applicable	10407002
1176	In the formal sector	10407003
124	In the informal sector	10407003
263	Private household	10407003
28	Do not know	10407003
0	Unspecified	10407003
3017	Not applicable	10407003
1418	In the formal sector	10407004
98	In the informal sector	10407004
371	Private household	10407004
36	Do not know	10407004
0	Unspecified	10407004
4973	Not applicable	10407004
1290	In the formal sector	10407005
217	In the informal sector	10407005
592	Private household	10407005
23	Do not know	10407005
0	Unspecified	10407005
3852	Not applicable	10407005
812	In the formal sector	10407006
179	In the informal sector	10407006
402	Private household	10407006
19	Do not know	10407006
0	Unspecified	10407006
2843	Not applicable	10407006
2857	In the formal sector	10407007
535	In the informal sector	10407007
596	Private household	10407007
131	Do not know	10407007
0	Unspecified	10407007
7465	Not applicable	10407007
1452	In the formal sector	10408001
204	In the informal sector	10408001
523	Private household	10408001
39	Do not know	10408001
0	Unspecified	10408001
3991	Not applicable	10408001
1323	In the formal sector	10408002
458	In the informal sector	10408002
248	Private household	10408002
68	Do not know	10408002
0	Unspecified	10408002
3697	Not applicable	10408002
815	In the formal sector	10408003
147	In the informal sector	10408003
328	Private household	10408003
15	Do not know	10408003
0	Unspecified	10408003
3277	Not applicable	10408003
1397	In the formal sector	10408004
180	In the informal sector	10408004
210	Private household	10408004
77	Do not know	10408004
0	Unspecified	10408004
3391	Not applicable	10408004
1295	In the formal sector	10408005
228	In the informal sector	10408005
346	Private household	10408005
15	Do not know	10408005
0	Unspecified	10408005
4183	Not applicable	10408005
1910	In the formal sector	10408006
465	In the informal sector	10408006
395	Private household	10408006
51	Do not know	10408006
0	Unspecified	10408006
5872	Not applicable	10408006
2553	In the formal sector	10408007
366	In the informal sector	10408007
627	Private household	10408007
110	Do not know	10408007
0	Unspecified	10408007
9085	Not applicable	10408007
1624	In the formal sector	10408008
133	In the informal sector	10408008
309	Private household	10408008
27	Do not know	10408008
0	Unspecified	10408008
3776	Not applicable	10408008
1858	In the formal sector	10408009
129	In the informal sector	10408009
301	Private household	10408009
39	Do not know	10408009
0	Unspecified	10408009
5411	Not applicable	10408009
1735	In the formal sector	10408010
142	In the informal sector	10408010
314	Private household	10408010
84	Do not know	10408010
0	Unspecified	10408010
3436	Not applicable	10408010
685	In the formal sector	10501001
119	In the informal sector	10501001
39	Private household	10501001
38	Do not know	10501001
0	Unspecified	10501001
1950	Not applicable	10501001
313	In the formal sector	10501002
4	In the informal sector	10501002
9	Private household	10501002
2	Do not know	10501002
0	Unspecified	10501002
599	Not applicable	10501002
141	In the formal sector	10501003
22	In the informal sector	10501003
13	Private household	10501003
0	Do not know	10501003
0	Unspecified	10501003
183	Not applicable	10501003
1463	In the formal sector	10501004
68	In the informal sector	10501004
76	Private household	10501004
19	Do not know	10501004
0	Unspecified	10501004
2547	Not applicable	10501004
792	In the formal sector	10502001
54	In the informal sector	10502001
37	Private household	10502001
15	Do not know	10502001
0	Unspecified	10502001
2624	Not applicable	10502001
560	In the formal sector	10502002
141	In the informal sector	10502002
43	Private household	10502002
5	Do not know	10502002
0	Unspecified	10502002
1887	Not applicable	10502002
313	In the formal sector	10502003
179	In the informal sector	10502003
93	Private household	10502003
18	Do not know	10502003
0	Unspecified	10502003
2045	Not applicable	10502003
1075	In the formal sector	10502004
161	In the informal sector	10502004
154	Private household	10502004
37	Do not know	10502004
0	Unspecified	10502004
2904	Not applicable	10502004
1027	In the formal sector	10503001
409	In the informal sector	10503001
175	Private household	10503001
38	Do not know	10503001
0	Unspecified	10503001
5805	Not applicable	10503001
1888	In the formal sector	10503002
365	In the informal sector	10503002
100	Private household	10503002
6	Do not know	10503002
0	Unspecified	10503002
4161	Not applicable	10503002
1151	In the formal sector	10503003
238	In the informal sector	10503003
126	Private household	10503003
26	Do not know	10503003
0	Unspecified	10503003
5739	Not applicable	10503003
1150	In the formal sector	10503004
227	In the informal sector	10503004
110	Private household	10503004
34	Do not know	10503004
0	Unspecified	10503004
3827	Not applicable	10503004
849	In the formal sector	10503005
219	In the informal sector	10503005
68	Private household	10503005
56	Do not know	10503005
0	Unspecified	10503005
5911	Not applicable	10503005
496	In the formal sector	10503006
96	In the informal sector	10503006
54	Private household	10503006
5	Do not know	10503006
0	Unspecified	10503006
4270	Not applicable	10503006
1735	In the formal sector	10503007
305	In the informal sector	10503007
240	Private household	10503007
139	Do not know	10503007
0	Unspecified	10503007
8542	Not applicable	10503007
11489	In the formal sector	19100001
744	In the informal sector	19100001
759	Private household	19100001
255	Do not know	19100001
0	Unspecified	19100001
13638	Not applicable	19100001
10744	In the formal sector	19100002
841	In the informal sector	19100002
588	Private household	19100002
185	Do not know	19100002
0	Unspecified	19100002
13226	Not applicable	19100002
13482	In the formal sector	19100003
1230	In the informal sector	19100003
992	Private household	19100003
225	Do not know	19100003
0	Unspecified	19100003
16017	Not applicable	19100003
15406	In the formal sector	19100004
1604	In the informal sector	19100004
2543	Private household	19100004
691	Do not know	19100004
0	Unspecified	19100004
20671	Not applicable	19100004
9582	In the formal sector	19100005
571	In the informal sector	19100005
820	Private household	19100005
343	Do not know	19100005
0	Unspecified	19100005
13347	Not applicable	19100005
7263	In the formal sector	19100006
728	In the informal sector	19100006
707	Private household	19100006
154	Do not know	19100006
0	Unspecified	19100006
14622	Not applicable	19100006
10471	In the formal sector	19100007
770	In the informal sector	19100007
527	Private household	19100007
88	Do not know	19100007
0	Unspecified	19100007
18951	Not applicable	19100007
16273	In the formal sector	19100008
1236	In the informal sector	19100008
1274	Private household	19100008
490	Do not know	19100008
0	Unspecified	19100008
18471	Not applicable	19100008
7412	In the formal sector	19100009
540	In the informal sector	19100009
596	Private household	19100009
107	Do not know	19100009
0	Unspecified	19100009
20645	Not applicable	19100009
9786	In the formal sector	19100010
905	In the informal sector	19100010
585	Private household	19100010
251	Do not know	19100010
0	Unspecified	19100010
18995	Not applicable	19100010
13434	In the formal sector	19100011
1224	In the informal sector	19100011
1072	Private household	19100011
489	Do not know	19100011
0	Unspecified	19100011
25473	Not applicable	19100011
9402	In the formal sector	19100012
1335	In the informal sector	19100012
427	Private household	19100012
99	Do not know	19100012
0	Unspecified	19100012
24130	Not applicable	19100012
8935	In the formal sector	19100013
2259	In the informal sector	19100013
984	Private household	19100013
304	Do not know	19100013
0	Unspecified	19100013
33275	Not applicable	19100013
14205	In the formal sector	19100014
2245	In the informal sector	19100014
1060	Private household	19100014
480	Do not know	19100014
0	Unspecified	19100014
25299	Not applicable	19100014
8422	In the formal sector	19100015
662	In the informal sector	19100015
908	Private household	19100015
324	Do not know	19100015
0	Unspecified	19100015
12291	Not applicable	19100015
11418	In the formal sector	19100016
1303	In the informal sector	19100016
1590	Private household	19100016
642	Do not know	19100016
0	Unspecified	19100016
28158	Not applicable	19100016
11627	In the formal sector	19100017
1723	In the informal sector	19100017
997	Private household	19100017
327	Do not know	19100017
0	Unspecified	19100017
26403	Not applicable	19100017
4372	In the formal sector	19100018
653	In the informal sector	19100018
547	Private household	19100018
62	Do not know	19100018
0	Unspecified	19100018
16670	Not applicable	19100018
13515	In the formal sector	19100019
2346	In the informal sector	19100019
2391	Private household	19100019
497	Do not know	19100019
0	Unspecified	19100019
35767	Not applicable	19100019
7324	In the formal sector	19100020
2066	In the informal sector	19100020
1357	Private household	19100020
629	Do not know	19100020
0	Unspecified	19100020
30386	Not applicable	19100020
9487	In the formal sector	19100021
792	In the informal sector	19100021
763	Private household	19100021
168	Do not know	19100021
0	Unspecified	19100021
10367	Not applicable	19100021
9118	In the formal sector	19100022
614	In the informal sector	19100022
516	Private household	19100022
231	Do not know	19100022
0	Unspecified	19100022
20368	Not applicable	19100022
15037	In the formal sector	19100023
1161	In the informal sector	19100023
1694	Private household	19100023
390	Do not know	19100023
0	Unspecified	19100023
15168	Not applicable	19100023
6432	In the formal sector	19100024
350	In the informal sector	19100024
494	Private household	19100024
118	Do not know	19100024
0	Unspecified	19100024
20336	Not applicable	19100024
10093	In the formal sector	19100025
1113	In the informal sector	19100025
486	Private household	19100025
326	Do not know	19100025
0	Unspecified	19100025
28193	Not applicable	19100025
9370	In the formal sector	19100026
917	In the informal sector	19100026
770	Private household	19100026
191	Do not know	19100026
0	Unspecified	19100026
19493	Not applicable	19100026
11029	In the formal sector	19100027
1266	In the informal sector	19100027
981	Private household	19100027
196	Do not know	19100027
0	Unspecified	19100027
14645	Not applicable	19100027
7052	In the formal sector	19100028
1760	In the informal sector	19100028
250	Private household	19100028
53	Do not know	19100028
0	Unspecified	19100028
21712	Not applicable	19100028
11175	In the formal sector	19100029
1230	In the informal sector	19100029
466	Private household	19100029
148	Do not know	19100029
0	Unspecified	19100029
30250	Not applicable	19100029
10005	In the formal sector	19100030
1032	In the informal sector	19100030
411	Private household	19100030
195	Do not know	19100030
0	Unspecified	19100030
24081	Not applicable	19100030
8133	In the formal sector	19100031
1047	In the informal sector	19100031
401	Private household	19100031
74	Do not know	19100031
0	Unspecified	19100031
25673	Not applicable	19100031
9567	In the formal sector	19100032
1622	In the informal sector	19100032
622	Private household	19100032
280	Do not know	19100032
0	Unspecified	19100032
25339	Not applicable	19100032
9243	In the formal sector	19100033
1578	In the informal sector	19100033
2256	Private household	19100033
470	Do not know	19100033
0	Unspecified	19100033
30148	Not applicable	19100033
7654	In the formal sector	19100034
953	In the informal sector	19100034
1979	Private household	19100034
351	Do not know	19100034
0	Unspecified	19100034
23457	Not applicable	19100034
7575	In the formal sector	19100035
1657	In the informal sector	19100035
1498	Private household	19100035
499	Do not know	19100035
0	Unspecified	19100035
28838	Not applicable	19100035
4654	In the formal sector	19100036
1023	In the informal sector	19100036
1369	Private household	19100036
291	Do not know	19100036
0	Unspecified	19100036
26829	Not applicable	19100036
3791	In the formal sector	19100037
636	In the informal sector	19100037
540	Private household	19100037
156	Do not know	19100037
0	Unspecified	19100037
17083	Not applicable	19100037
3970	In the formal sector	19100038
266	In the informal sector	19100038
485	Private household	19100038
37	Do not know	19100038
0	Unspecified	19100038
15874	Not applicable	19100038
4605	In the formal sector	19100039
1002	In the informal sector	19100039
835	Private household	19100039
104	Do not know	19100039
0	Unspecified	19100039
17925	Not applicable	19100039
6060	In the formal sector	19100040
840	In the informal sector	19100040
941	Private household	19100040
216	Do not know	19100040
0	Unspecified	19100040
20415	Not applicable	19100040
3928	In the formal sector	19100041
689	In the informal sector	19100041
416	Private household	19100041
173	Do not know	19100041
0	Unspecified	19100041
15799	Not applicable	19100041
5384	In the formal sector	19100042
949	In the informal sector	19100042
1088	Private household	19100042
149	Do not know	19100042
0	Unspecified	19100042
20512	Not applicable	19100042
14602	In the formal sector	19100043
1033	In the informal sector	19100043
679	Private household	19100043
150	Do not know	19100043
0	Unspecified	19100043
23939	Not applicable	19100043
8219	In the formal sector	19100044
786	In the informal sector	19100044
1140	Private household	19100044
175	Do not know	19100044
0	Unspecified	19100044
24085	Not applicable	19100044
6187	In the formal sector	19100045
927	In the informal sector	19100045
713	Private household	19100045
236	Do not know	19100045
0	Unspecified	19100045
26729	Not applicable	19100045
7420	In the formal sector	19100046
716	In the informal sector	19100046
350	Private household	19100046
116	Do not know	19100046
0	Unspecified	19100046
25288	Not applicable	19100046
5246	In the formal sector	19100047
1109	In the informal sector	19100047
269	Private household	19100047
322	Do not know	19100047
0	Unspecified	19100047
27679	Not applicable	19100047
9479	In the formal sector	19100048
544	In the informal sector	19100048
660	Private household	19100048
153	Do not know	19100048
0	Unspecified	19100048
18915	Not applicable	19100048
11135	In the formal sector	19100049
784	In the informal sector	19100049
292	Private household	19100049
85	Do not know	19100049
0	Unspecified	19100049
25168	Not applicable	19100049
8375	In the formal sector	19100050
732	In the informal sector	19100050
300	Private household	19100050
73	Do not know	19100050
0	Unspecified	19100050
23496	Not applicable	19100050
5679	In the formal sector	19100051
534	In the informal sector	19100051
697	Private household	19100051
51	Do not know	19100051
0	Unspecified	19100051
16328	Not applicable	19100051
5415	In the formal sector	19100052
732	In the informal sector	19100052
629	Private household	19100052
94	Do not know	19100052
0	Unspecified	19100052
17805	Not applicable	19100052
10284	In the formal sector	19100053
716	In the informal sector	19100053
1044	Private household	19100053
105	Do not know	19100053
0	Unspecified	19100053
16879	Not applicable	19100053
11345	In the formal sector	19100054
888	In the informal sector	19100054
1844	Private household	19100054
335	Do not know	19100054
0	Unspecified	19100054
13491	Not applicable	19100054
11520	In the formal sector	19100055
1444	In the informal sector	19100055
1716	Private household	19100055
340	Do not know	19100055
0	Unspecified	19100055
20514	Not applicable	19100055
11257	In the formal sector	19100056
762	In the informal sector	19100056
628	Private household	19100056
99	Do not know	19100056
0	Unspecified	19100056
21052	Not applicable	19100056
10361	In the formal sector	19100057
868	In the informal sector	19100057
1190	Private household	19100057
253	Do not know	19100057
0	Unspecified	19100057
20404	Not applicable	19100057
12086	In the formal sector	19100058
679	In the informal sector	19100058
1304	Private household	19100058
261	Do not know	19100058
0	Unspecified	19100058
14293	Not applicable	19100058
9702	In the formal sector	19100059
627	In the informal sector	19100059
916	Private household	19100059
203	Do not know	19100059
0	Unspecified	19100059
12285	Not applicable	19100059
12222	In the formal sector	19100060
702	In the informal sector	19100060
782	Private household	19100060
197	Do not know	19100060
0	Unspecified	19100060
17777	Not applicable	19100060
7897	In the formal sector	19100061
832	In the informal sector	19100061
855	Private household	19100061
171	Do not know	19100061
0	Unspecified	19100061
22127	Not applicable	19100061
9982	In the formal sector	19100062
538	In the informal sector	19100062
1163	Private household	19100062
171	Do not know	19100062
0	Unspecified	19100062
12979	Not applicable	19100062
10726	In the formal sector	19100063
700	In the informal sector	19100063
955	Private household	19100063
201	Do not know	19100063
0	Unspecified	19100063
15291	Not applicable	19100063
9619	In the formal sector	19100064
931	In the informal sector	19100064
971	Private household	19100064
181	Do not know	19100064
0	Unspecified	19100064
12788	Not applicable	19100064
8733	In the formal sector	19100065
900	In the informal sector	19100065
540	Private household	19100065
48	Do not know	19100065
0	Unspecified	19100065
17896	Not applicable	19100065
7779	In the formal sector	19100066
541	In the informal sector	19100066
369	Private household	19100066
105	Do not know	19100066
0	Unspecified	19100066
20052	Not applicable	19100066
11650	In the formal sector	19100067
1924	In the informal sector	19100067
2085	Private household	19100067
226	Do not know	19100067
0	Unspecified	19100067
32728	Not applicable	19100067
8489	In the formal sector	19100068
602	In the informal sector	19100068
564	Private household	19100068
242	Do not know	19100068
0	Unspecified	19100068
21935	Not applicable	19100068
11952	In the formal sector	19100069
1295	In the informal sector	19100069
2530	Private household	19100069
569	Do not know	19100069
0	Unspecified	19100069
20825	Not applicable	19100069
11890	In the formal sector	19100070
538	In the informal sector	19100070
722	Private household	19100070
110	Do not know	19100070
0	Unspecified	19100070
11675	Not applicable	19100070
10217	In the formal sector	19100071
884	In the informal sector	19100071
1026	Private household	19100071
198	Do not know	19100071
0	Unspecified	19100071
15618	Not applicable	19100071
8858	In the formal sector	19100072
745	In the informal sector	19100072
444	Private household	19100072
134	Do not know	19100072
0	Unspecified	19100072
15009	Not applicable	19100072
10046	In the formal sector	19100073
555	In the informal sector	19100073
1049	Private household	19100073
214	Do not know	19100073
0	Unspecified	19100073
12422	Not applicable	19100073
11830	In the formal sector	19100074
1631	In the informal sector	19100074
2244	Private household	19100074
299	Do not know	19100074
0	Unspecified	19100074
20819	Not applicable	19100074
10831	In the formal sector	19100075
1123	In the informal sector	19100075
880	Private household	19100075
134	Do not know	19100075
0	Unspecified	19100075
24730	Not applicable	19100075
11712	In the formal sector	19100076
844	In the informal sector	19100076
358	Private household	19100076
111	Do not know	19100076
0	Unspecified	19100076
27940	Not applicable	19100076
11261	In the formal sector	19100077
743	In the informal sector	19100077
1347	Private household	19100077
346	Do not know	19100077
0	Unspecified	19100077
14555	Not applicable	19100077
12091	In the formal sector	19100078
878	In the informal sector	19100078
493	Private household	19100078
209	Do not know	19100078
0	Unspecified	19100078
26399	Not applicable	19100078
9130	In the formal sector	19100079
931	In the informal sector	19100079
356	Private household	19100079
68	Do not know	19100079
0	Unspecified	19100079
24926	Not applicable	19100079
9505	In the formal sector	19100080
2243	In the informal sector	19100080
1409	Private household	19100080
512	Do not know	19100080
0	Unspecified	19100080
32482	Not applicable	19100080
9961	In the formal sector	19100081
813	In the informal sector	19100081
334	Private household	19100081
107	Do not know	19100081
0	Unspecified	19100081
20948	Not applicable	19100081
8697	In the formal sector	19100082
1023	In the informal sector	19100082
322	Private household	19100082
186	Do not know	19100082
0	Unspecified	19100082
31154	Not applicable	19100082
6640	In the formal sector	19100083
1319	In the informal sector	19100083
1830	Private household	19100083
370	Do not know	19100083
0	Unspecified	19100083
14682	Not applicable	19100083
8289	In the formal sector	19100084
854	In the informal sector	19100084
1084	Private household	19100084
258	Do not know	19100084
0	Unspecified	19100084
14809	Not applicable	19100084
8565	In the formal sector	19100085
1721	In the informal sector	19100085
2147	Private household	19100085
664	Do not know	19100085
0	Unspecified	19100085
20270	Not applicable	19100085
7408	In the formal sector	19100086
2100	In the informal sector	19100086
2125	Private household	19100086
427	Do not know	19100086
0	Unspecified	19100086
27117	Not applicable	19100086
5450	In the formal sector	19100087
1172	In the informal sector	19100087
1170	Private household	19100087
332	Do not know	19100087
0	Unspecified	19100087
21528	Not applicable	19100087
8951	In the formal sector	19100088
1140	In the informal sector	19100088
1279	Private household	19100088
405	Do not know	19100088
0	Unspecified	19100088
29138	Not applicable	19100088
5086	In the formal sector	19100089
1103	In the informal sector	19100089
1502	Private household	19100089
189	Do not know	19100089
0	Unspecified	19100089
19759	Not applicable	19100089
5323	In the formal sector	19100090
1248	In the informal sector	19100090
1071	Private household	19100090
227	Do not know	19100090
0	Unspecified	19100090
20707	Not applicable	19100090
5445	In the formal sector	19100091
1343	In the informal sector	19100091
1597	Private household	19100091
165	Do not know	19100091
0	Unspecified	19100091
22143	Not applicable	19100091
7832	In the formal sector	19100092
1035	In the informal sector	19100092
1740	Private household	19100092
227	Do not know	19100092
0	Unspecified	19100092
23865	Not applicable	19100092
5961	In the formal sector	19100093
1153	In the informal sector	19100093
1474	Private household	19100093
401	Do not know	19100093
0	Unspecified	19100093
22230	Not applicable	19100093
5691	In the formal sector	19100094
728	In the informal sector	19100094
936	Private household	19100094
118	Do not know	19100094
0	Unspecified	19100094
17495	Not applicable	19100094
11775	In the formal sector	19100095
2687	In the informal sector	19100095
2742	Private household	19100095
434	Do not know	19100095
0	Unspecified	19100095
41203	Not applicable	19100095
5042	In the formal sector	19100096
793	In the informal sector	19100096
1142	Private household	19100096
95	Do not know	19100096
0	Unspecified	19100096
19763	Not applicable	19100096
5234	In the formal sector	19100097
820	In the informal sector	19100097
1472	Private household	19100097
194	Do not know	19100097
0	Unspecified	19100097
20809	Not applicable	19100097
6088	In the formal sector	19100098
1013	In the informal sector	19100098
1071	Private household	19100098
442	Do not know	19100098
0	Unspecified	19100098
20356	Not applicable	19100098
10888	In the formal sector	19100099
1611	In the informal sector	19100099
911	Private household	19100099
236	Do not know	19100099
0	Unspecified	19100099
38566	Not applicable	19100099
12055	In the formal sector	19100100
1328	In the informal sector	19100100
2400	Private household	19100100
697	Do not know	19100100
0	Unspecified	19100100
27827	Not applicable	19100100
7950	In the formal sector	19100101
1840	In the informal sector	19100101
1559	Private household	19100101
422	Do not know	19100101
0	Unspecified	19100101
25314	Not applicable	19100101
11940	In the formal sector	19100102
1296	In the informal sector	19100102
1159	Private household	19100102
227	Do not know	19100102
0	Unspecified	19100102
12418	Not applicable	19100102
19422	In the formal sector	19100103
1224	In the informal sector	19100103
1358	Private household	19100103
377	Do not know	19100103
0	Unspecified	19100103
18927	Not applicable	19100103
9208	In the formal sector	19100104
1482	In the informal sector	19100104
1991	Private household	19100104
332	Do not know	19100104
0	Unspecified	19100104
23961	Not applicable	19100104
14564	In the formal sector	19100105
1564	In the informal sector	19100105
1382	Private household	19100105
433	Do not know	19100105
0	Unspecified	19100105
21629	Not applicable	19100105
11148	In the formal sector	19100106
2159	In the informal sector	19100106
2108	Private household	19100106
649	Do not know	19100106
0	Unspecified	19100106
48447	Not applicable	19100106
19266	In the formal sector	19100107
1607	In the informal sector	19100107
2117	Private household	19100107
499	Do not know	19100107
0	Unspecified	19100107
19807	Not applicable	19100107
11582	In the formal sector	19100108
2267	In the informal sector	19100108
1770	Private household	19100108
303	Do not know	19100108
0	Unspecified	19100108
37616	Not applicable	19100108
9343	In the formal sector	19100109
1923	In the informal sector	19100109
1246	Private household	19100109
556	Do not know	19100109
0	Unspecified	19100109
27264	Not applicable	19100109
9452	In the formal sector	19100110
995	In the informal sector	19100110
373	Private household	19100110
106	Do not know	19100110
0	Unspecified	19100110
16869	Not applicable	19100110
10535	In the formal sector	19100111
1536	In the informal sector	19100111
977	Private household	19100111
382	Do not know	19100111
0	Unspecified	19100111
24066	Not applicable	19100111
\.


--
-- Name: typeofsector_country_pkey; Type: CONSTRAINT; Schema: public; Owner: census; Tablespace: 
--

ALTER TABLE ONLY typeofsector_country
    ADD CONSTRAINT typeofsector_country_pkey PRIMARY KEY ("type of sector");


--
-- Name: typeofsector_district_pkey; Type: CONSTRAINT; Schema: public; Owner: census; Tablespace: 
--

ALTER TABLE ONLY typeofsector_district
    ADD CONSTRAINT typeofsector_district_pkey PRIMARY KEY ("type of sector", district_code);


--
-- Name: typeofsector_municipality_pkey; Type: CONSTRAINT; Schema: public; Owner: census; Tablespace: 
--

ALTER TABLE ONLY typeofsector_municipality
    ADD CONSTRAINT typeofsector_municipality_pkey PRIMARY KEY ("type of sector", municipality_code);


--
-- Name: typeofsector_province_pkey; Type: CONSTRAINT; Schema: public; Owner: census; Tablespace: 
--

ALTER TABLE ONLY typeofsector_province
    ADD CONSTRAINT typeofsector_province_pkey PRIMARY KEY ("type of sector", province_code);


--
-- Name: typeofsector_ward_pkey; Type: CONSTRAINT; Schema: public; Owner: census; Tablespace: 
--

ALTER TABLE ONLY typeofsector_ward
    ADD CONSTRAINT typeofsector_ward_pkey PRIMARY KEY ("type of sector", ward_code);


--
-- Name: typeofsector_country_country_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: census
--

ALTER TABLE ONLY typeofsector_country
    ADD CONSTRAINT typeofsector_country_country_code_fkey FOREIGN KEY (country_code) REFERENCES country(code);


--
-- Name: typeofsector_district_district_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: census
--

ALTER TABLE ONLY typeofsector_district
    ADD CONSTRAINT typeofsector_district_district_code_fkey FOREIGN KEY (district_code) REFERENCES district(code);


--
-- Name: typeofsector_municipality_municipality_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: census
--

ALTER TABLE ONLY typeofsector_municipality
    ADD CONSTRAINT typeofsector_municipality_municipality_code_fkey FOREIGN KEY (municipality_code) REFERENCES municipality(code);


--
-- Name: typeofsector_province_province_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: census
--

ALTER TABLE ONLY typeofsector_province
    ADD CONSTRAINT typeofsector_province_province_code_fkey FOREIGN KEY (province_code) REFERENCES province(code);


--
-- Name: typeofsector_ward_ward_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: census
--

ALTER TABLE ONLY typeofsector_ward
    ADD CONSTRAINT typeofsector_ward_ward_code_fkey FOREIGN KEY (ward_code) REFERENCES ward(code);


--
-- PostgreSQL database dump complete
--

