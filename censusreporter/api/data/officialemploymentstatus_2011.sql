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
-- Name: officialemploymentstatus_country; Type: TABLE; Schema: public; Owner: census; Tablespace: 
--

CREATE TABLE officialemploymentstatus_country (
    total integer NOT NULL,
    "official employment status" character varying(128) NOT NULL,
    country_code character varying(8) NOT NULL
);


ALTER TABLE public.officialemploymentstatus_country OWNER TO census;

--
-- Name: officialemploymentstatus_district; Type: TABLE; Schema: public; Owner: census; Tablespace: 
--

CREATE TABLE officialemploymentstatus_district (
    total integer NOT NULL,
    "official employment status" character varying(128) NOT NULL,
    district_code character varying(8) NOT NULL
);


ALTER TABLE public.officialemploymentstatus_district OWNER TO census;

--
-- Name: officialemploymentstatus_municipality; Type: TABLE; Schema: public; Owner: census; Tablespace: 
--

CREATE TABLE officialemploymentstatus_municipality (
    total integer NOT NULL,
    "official employment status" character varying(128) NOT NULL,
    municipality_code character varying(8) NOT NULL
);


ALTER TABLE public.officialemploymentstatus_municipality OWNER TO census;

--
-- Name: officialemploymentstatus_province; Type: TABLE; Schema: public; Owner: census; Tablespace: 
--

CREATE TABLE officialemploymentstatus_province (
    total integer NOT NULL,
    "official employment status" character varying(128) NOT NULL,
    province_code character varying(8) NOT NULL
);


ALTER TABLE public.officialemploymentstatus_province OWNER TO census;

--
-- Name: officialemploymentstatus_ward; Type: TABLE; Schema: public; Owner: census; Tablespace: 
--

CREATE TABLE officialemploymentstatus_ward (
    total integer NOT NULL,
    "official employment status" character varying(128) NOT NULL,
    ward_code character varying(8) NOT NULL
);


ALTER TABLE public.officialemploymentstatus_ward OWNER TO census;

--
-- Data for Name: officialemploymentstatus_country; Type: TABLE DATA; Schema: public; Owner: census
--

COPY officialemploymentstatus_country (total, "official employment status", country_code) FROM stdin;
13180077	Employed	ZA
5594055	Unemployed	ZA
1835092	Discouraged work-seeker	ZA
13295256	Other not economically active	ZA
0	Age less than 15 years	ZA
17866080	Not applicable	ZA
\.


--
-- Data for Name: officialemploymentstatus_district; Type: TABLE DATA; Schema: public; Owner: census
--

COPY officialemploymentstatus_district (total, "official employment status", district_code) FROM stdin;
122074	Employed	DC10
40484	Unemployed	DC10
13952	Discouraged work-seeker	DC10
119926	Other not economically active	DC10
0	Age less than 15 years	DC10
154148	Not applicable	DC10
91114	Employed	DC12
68459	Unemployed	DC12
53422	Discouraged work-seeker	DC12
301185	Other not economically active	DC12
0	Age less than 15 years	DC12
378457	Not applicable	DC12
99464	Employed	DC13
63515	Unemployed	DC13
41234	Discouraged work-seeker	DC13
253589	Other not economically active	DC13
0	Age less than 15 years	DC13
337660	Not applicable	DC13
51344	Employed	DC14
28095	Unemployed	DC14
15812	Discouraged work-seeker	DC14
108869	Other not economically active	DC14
0	Age less than 15 years	DC14
145647	Not applicable	DC14
120889	Employed	DC15
95244	Unemployed	DC15
67490	Discouraged work-seeker	DC15
472769	Other not economically active	DC15
0	Age less than 15 years	DC15
608552	Not applicable	DC15
68709	Employed	DC44
52815	Unemployed	DC44
41050	Discouraged work-seeker	DC44
261552	Other not economically active	DC44
0	Age less than 15 years	DC44
377218	Not applicable	DC44
185215	Employed	BUF
100008	Unemployed	BUF
31557	Discouraged work-seeker	BUF
193921	Other not economically active	BUF
0	Age less than 15 years	BUF
244500	Not applicable	BUF
290155	Employed	NMA
167229	Unemployed	NMA
41859	Discouraged work-seeker	NMA
289969	Other not economically active	NMA
0	Age less than 15 years	NMA
362903	Not applicable	NMA
32900	Employed	DC16
12032	Unemployed	DC16
7185	Discouraged work-seeker	DC16
39884	Other not economically active	DC16
0	Age less than 15 years	DC16
54257	Not applicable	DC16
143154	Employed	DC18
82254	Unemployed	DC18
23979	Discouraged work-seeker	DC18
165206	Other not economically active	DC18
0	Age less than 15 years	DC18
213033	Not applicable	DC18
144129	Employed	DC19
77939	Unemployed	DC19
36853	Discouraged work-seeker	DC19
202275	Other not economically active	DC19
0	Age less than 15 years	DC19
275043	Not applicable	DC19
117732	Employed	DC20
60344	Unemployed	DC20
13687	Discouraged work-seeker	DC20
129445	Other not economically active	DC20
0	Age less than 15 years	DC20
166829	Not applicable	DC20
211746	Employed	MAN
81225	Unemployed	MAN
18244	Discouraged work-seeker	MAN
195707	Other not economically active	MAN
0	Age less than 15 years	MAN
240508	Not applicable	MAN
271398	Employed	DC42
127217	Unemployed	DC42
24972	Discouraged work-seeker	DC42
213634	Other not economically active	DC42
0	Age less than 15 years	DC42
279263	Not applicable	DC42
293335	Employed	DC48
104894	Unemployed	DC48
19542	Discouraged work-seeker	DC48
172199	Other not economically active	DC48
0	Age less than 15 years	DC48
231024	Not applicable	DC48
1126844	Employed	EKU
455608	Unemployed	EKU
81959	Discouraged work-seeker	EKU
615042	Other not economically active	EKU
0	Age less than 15 years	EKU
899017	Not applicable	EKU
1696520	Employed	JHB
564970	Unemployed	JHB
105882	Discouraged work-seeker	JHB
855234	Other not economically active	JHB
0	Age less than 15 years	JHB
1212221	Not applicable	JHB
1079273	Employed	TSH
345356	Unemployed	TSH
64095	Discouraged work-seeker	TSH
612750	Other not economically active	TSH
0	Age less than 15 years	TSH
820014	Not applicable	TSH
116420	Employed	DC21
63169	Unemployed	DC21
35681	Discouraged work-seeker	DC21
218810	Other not economically active	DC21
0	Age less than 15 years	DC21
288404	Not applicable	DC21
245379	Employed	DC22
107346	Unemployed	DC22
44221	Discouraged work-seeker	DC22
278616	Other not economically active	DC22
0	Age less than 15 years	DC22
342201	Not applicable	DC22
89734	Employed	DC23
58800	Unemployed	DC23
41423	Discouraged work-seeker	DC23
201413	Other not economically active	DC23
0	Age less than 15 years	DC23
277478	Not applicable	DC23
58924	Employed	DC27
44104	Unemployed	DC27
39399	Discouraged work-seeker	DC27
203439	Other not economically active	DC27
0	Age less than 15 years	DC27
279981	Not applicable	DC27
148281	Employed	DC28
78811	Unemployed	DC28
47906	Discouraged work-seeker	DC28
275874	Other not economically active	DC28
0	Age less than 15 years	DC28
356648	Not applicable	DC28
61896	Employed	DC43
34760	Unemployed	DC43
23276	Discouraged work-seeker	DC43
143850	Other not economically active	DC43
0	Age less than 15 years	DC43
197638	Not applicable	DC43
50548	Employed	DC24
29191	Unemployed	DC24
37280	Discouraged work-seeker	DC24
162047	Other not economically active	DC24
0	Age less than 15 years	DC24
231772	Not applicable	DC24
79638	Employed	DC25
51035	Unemployed	DC25
24978	Discouraged work-seeker	DC25
152543	Other not economically active	DC25
0	Age less than 15 years	DC25
191645	Not applicable	DC25
83361	Employed	DC26
58247	Unemployed	DC26
50253	Discouraged work-seeker	DC26
256469	Other not economically active	DC26
0	Age less than 15 years	DC26
355245	Not applicable	DC26
114841	Employed	DC29
50628	Unemployed	DC29
29892	Discouraged work-seeker	DC29
176563	Other not economically active	DC29
0	Age less than 15 years	DC29
234885	Not applicable	DC29
992560	Employed	ETH
430318	Unemployed	ETH
114230	Discouraged work-seeker	ETH
873581	Other not economically active	ETH
0	Age less than 15 years	ETH
1031673	Not applicable	ETH
174241	Employed	DC33
113165	Unemployed	DC33
40609	Discouraged work-seeker	DC33
332852	Other not economically active	DC33
0	Age less than 15 years	DC33
431641	Not applicable	DC33
189361	Employed	DC34
119498	Unemployed	DC34
66104	Discouraged work-seeker	DC34
387005	Other not economically active	DC34
0	Age less than 15 years	DC34
532754	Not applicable	DC34
225670	Employed	DC35
133481	Unemployed	DC35
35799	Discouraged work-seeker	DC35
360270	Other not economically active	DC35
0	Age less than 15 years	DC35
506243	Not applicable	DC35
167809	Employed	DC36
65612	Unemployed	DC36
16259	Discouraged work-seeker	DC36
187181	Other not economically active	DC36
0	Age less than 15 years	DC36
242475	Not applicable	DC36
128794	Employed	DC47
133273	Unemployed	DC47
44009	Discouraged work-seeker	DC47
310446	Other not economically active	DC47
0	Age less than 15 years	DC47
460316	Not applicable	DC47
259129	Employed	DC30
109658	Unemployed	DC30
35518	Discouraged work-seeker	DC30
262387	Other not economically active	DC30
0	Age less than 15 years	DC30
376502	Not applicable	DC30
355478	Employed	DC31
152250	Unemployed	DC31
42554	Discouraged work-seeker	DC31
319641	Other not economically active	DC31
0	Age less than 15 years	DC31
438207	Not applicable	DC31
355164	Employed	DC32
186218	Unemployed	DC32
72772	Discouraged work-seeker	DC32
438777	Other not economically active	DC32
0	Age less than 15 years	DC32
635684	Not applicable	DC32
436692	Employed	DC37
193123	Unemployed	DC37
41293	Discouraged work-seeker	DC37
358280	Other not economically active	DC37
0	Age less than 15 years	DC37
478117	Not applicable	DC37
149334	Employed	DC38
75973	Unemployed	DC38
41366	Discouraged work-seeker	DC38
245495	Other not economically active	DC38
0	Age less than 15 years	DC38
330531	Not applicable	DC38
71778	Employed	DC39
40039	Unemployed	DC39
25080	Discouraged work-seeker	DC39
133927	Other not economically active	DC39
0	Age less than 15 years	DC39
192990	Not applicable	DC39
185566	Employed	DC40
78213	Unemployed	DC40
19750	Discouraged work-seeker	DC40
175825	Other not economically active	DC40
0	Age less than 15 years	DC40
236580	Not applicable	DC40
33684	Employed	DC6
8471	Unemployed	DC6
4040	Discouraged work-seeker	DC6
30404	Other not economically active	DC6
0	Age less than 15 years	DC6
39244	Not applicable	DC6
43664	Employed	DC7
17203	Unemployed	DC7
6557	Discouraged work-seeker	DC7
48788	Other not economically active	DC7
0	Age less than 15 years	DC7
70140	Not applicable	DC7
74449	Employed	DC8
17696	Unemployed	DC8
4961	Discouraged work-seeker	DC8
60210	Other not economically active	DC8
0	Age less than 15 years	DC8
79467	Not applicable	DC8
87170	Employed	DC9
44836	Unemployed	DC9
13386	Discouraged work-seeker	DC9
102529	Other not economically active	DC9
0	Age less than 15 years	DC9
134165	Not applicable	DC9
43825	Employed	DC45
18518	Unemployed	DC45
10967	Discouraged work-seeker	DC45
64361	Other not economically active	DC45
0	Age less than 15 years	DC45
87127	Not applicable	DC45
141117	Employed	DC1
24204	Unemployed	DC1
5524	Discouraged work-seeker	DC1
97633	Other not economically active	DC1
0	Age less than 15 years	DC1
123288	Not applicable	DC1
289765	Employed	DC2
47487	Unemployed	DC2
12393	Discouraged work-seeker	DC2
193955	Other not economically active	DC2
0	Age less than 15 years	DC2
243890	Not applicable	DC2
93061	Employed	DC3
19011	Unemployed	DC3
4866	Discouraged work-seeker	DC3
57579	Other not economically active	DC3
0	Age less than 15 years	DC3
83659	Not applicable	DC3
175055	Employed	DC4
50787	Unemployed	DC4
15257	Discouraged work-seeker	DC4
139845	Other not economically active	DC4
0	Age less than 15 years	DC4
193321	Not applicable	DC4
17460	Employed	DC5
5254	Unemployed	DC5
3281	Discouraged work-seeker	DC5
18958	Other not economically active	DC5
0	Age less than 15 years	DC5
26058	Not applicable	DC5
1294239	Employed	CPT
405989	Unemployed	CPT
81433	Discouraged work-seeker	CPT
822549	Other not economically active	CPT
0	Age less than 15 years	CPT
1135815	Not applicable	CPT
\.


--
-- Data for Name: officialemploymentstatus_municipality; Type: TABLE DATA; Schema: public; Owner: census
--

COPY officialemploymentstatus_municipality (total, "official employment status", municipality_code) FROM stdin;
12295	Employed	EC101
5297	Unemployed	EC101
1191	Discouraged work-seeker	EC101
13498	Other not economically active	EC101
0	Age less than 15 years	EC101
18712	Not applicable	EC101
7434	Employed	EC102
3300	Unemployed	EC102
1294	Discouraged work-seeker	EC102
10935	Other not economically active	EC102
0	Age less than 15 years	EC102
13039	Not applicable	EC102
2673	Employed	EC103
599	Unemployed	EC103
472	Discouraged work-seeker	EC103
2785	Other not economically active	EC103
0	Age less than 15 years	EC103
4009	Not applicable	EC103
19234	Employed	EC104
9260	Unemployed	EC104
3195	Discouraged work-seeker	EC104
24088	Other not economically active	EC104
0	Age less than 15 years	EC104
24613	Not applicable	EC104
15184	Employed	EC105
6593	Unemployed	EC105
2823	Discouraged work-seeker	EC105
15050	Other not economically active	EC105
0	Age less than 15 years	EC105
21525	Not applicable	EC105
16085	Employed	EC106
2845	Unemployed	EC106
1145	Discouraged work-seeker	EC106
17014	Other not economically active	EC106
0	Age less than 15 years	EC106
17415	Not applicable	EC106
4075	Employed	EC107
1696	Unemployed	EC107
720	Discouraged work-seeker	EC107
4595	Other not economically active	EC107
0	Age less than 15 years	EC107
6676	Not applicable	EC107
30163	Employed	EC108
8249	Unemployed	EC108
2234	Discouraged work-seeker	EC108
23685	Other not economically active	EC108
0	Age less than 15 years	EC108
34227	Not applicable	EC108
14931	Employed	EC109
2645	Unemployed	EC109
878	Discouraged work-seeker	EC109
8277	Other not economically active	EC109
0	Age less than 15 years	EC109
13932	Not applicable	EC109
17779	Employed	EC121
13061	Unemployed	EC121
12161	Discouraged work-seeker	EC121
94412	Other not economically active	EC121
0	Age less than 15 years	EC121
117495	Not applicable	EC121
23961	Employed	EC122
19013	Unemployed	EC122
12779	Discouraged work-seeker	EC122
87393	Other not economically active	EC122
0	Age less than 15 years	EC122
109244	Not applicable	EC122
6678	Employed	EC123
2834	Unemployed	EC123
2936	Discouraged work-seeker	EC123
11728	Other not economically active	EC123
0	Age less than 15 years	EC123
14814	Not applicable	EC123
17298	Employed	EC124
9753	Unemployed	EC124
8729	Discouraged work-seeker	EC124
37954	Other not economically active	EC124
0	Age less than 15 years	EC124
49043	Not applicable	EC124
6344	Employed	EC126
7099	Unemployed	EC126
5820	Discouraged work-seeker	EC126
22688	Other not economically active	EC126
0	Age less than 15 years	EC126
30240	Not applicable	EC126
14270	Employed	EC127
13229	Unemployed	EC127
9553	Discouraged work-seeker	EC127
41770	Other not economically active	EC127
0	Age less than 15 years	EC127
48294	Not applicable	EC127
4785	Employed	EC128
3471	Unemployed	EC128
1443	Discouraged work-seeker	EC128
5239	Other not economically active	EC128
0	Age less than 15 years	EC128
9327	Not applicable	EC128
16835	Employed	EC131
5816	Unemployed	EC131
2656	Discouraged work-seeker	EC131
17064	Other not economically active	EC131
0	Age less than 15 years	EC131
23189	Not applicable	EC131
4405	Employed	EC132
2720	Unemployed	EC132
1811	Discouraged work-seeker	EC132
10580	Other not economically active	EC132
0	Age less than 15 years	EC132
13764	Not applicable	EC132
4073	Employed	EC133
2639	Unemployed	EC133
1154	Discouraged work-seeker	EC133
5877	Other not economically active	EC133
0	Age less than 15 years	EC133
8228	Not applicable	EC133
33651	Employed	EC134
19612	Unemployed	EC134
10066	Discouraged work-seeker	EC134
55991	Other not economically active	EC134
0	Age less than 15 years	EC134
71403	Not applicable	EC134
10740	Employed	EC135
9363	Unemployed	EC135
8159	Discouraged work-seeker	EC135
50079	Other not economically active	EC135
0	Age less than 15 years	EC135
67030	Not applicable	EC135
9344	Employed	EC136
8070	Unemployed	EC136
6861	Discouraged work-seeker	EC136
41449	Other not economically active	EC136
0	Age less than 15 years	EC136
53735	Not applicable	EC136
11461	Employed	EC137
9627	Unemployed	EC137
7708	Discouraged work-seeker	EC137
53416	Other not economically active	EC137
0	Age less than 15 years	EC137
73302	Not applicable	EC137
8954	Employed	EC138
5668	Unemployed	EC138
2819	Discouraged work-seeker	EC138
19133	Other not economically active	EC138
0	Age less than 15 years	EC138
27009	Not applicable	EC138
14207	Employed	EC141
11323	Unemployed	EC141
5305	Discouraged work-seeker	EC141
47040	Other not economically active	EC141
0	Age less than 15 years	EC141
60265	Not applicable	EC141
18252	Employed	EC142
10037	Unemployed	EC142
7401	Discouraged work-seeker	EC142
42555	Other not economically active	EC142
0	Age less than 15 years	EC142
55905	Not applicable	EC142
10647	Employed	EC143
3877	Unemployed	EC143
1583	Discouraged work-seeker	EC143
11080	Other not economically active	EC143
0	Age less than 15 years	EC143
16613	Not applicable	EC143
8238	Employed	EC144
2858	Unemployed	EC144
1523	Discouraged work-seeker	EC144
8193	Other not economically active	EC144
0	Age less than 15 years	EC144
12864	Not applicable	EC144
18524	Employed	EC153
19718	Unemployed	EC153
15327	Discouraged work-seeker	EC153
91793	Other not economically active	EC153
0	Age less than 15 years	EC153
133119	Not applicable	EC153
7989	Employed	EC154
8090	Unemployed	EC154
9893	Discouraged work-seeker	EC154
54983	Other not economically active	EC154
0	Age less than 15 years	EC154
75182	Not applicable	EC154
20672	Employed	EC155
16761	Unemployed	EC155
12526	Discouraged work-seeker	EC155
106825	Other not economically active	EC155
0	Age less than 15 years	EC155
133606	Not applicable	EC155
14724	Employed	EC156
14078	Unemployed	EC156
9722	Discouraged work-seeker	EC156
64027	Other not economically active	EC156
0	Age less than 15 years	EC156
85675	Not applicable	EC156
58980	Employed	EC157
36597	Unemployed	EC157
20022	Discouraged work-seeker	EC157
155140	Other not economically active	EC157
0	Age less than 15 years	EC157
180971	Not applicable	EC157
24163	Employed	EC441
15243	Unemployed	EC441
8042	Discouraged work-seeker	EC441
63927	Other not economically active	EC441
0	Age less than 15 years	EC441
92468	Not applicable	EC441
18413	Employed	EC442
15635	Unemployed	EC442
10980	Discouraged work-seeker	EC442
60331	Other not economically active	EC442
0	Age less than 15 years	EC442
86260	Not applicable	EC442
19338	Employed	EC443
14967	Unemployed	EC443
14618	Discouraged work-seeker	EC443
93807	Other not economically active	EC443
0	Age less than 15 years	EC443
139175	Not applicable	EC443
6795	Employed	EC444
6971	Unemployed	EC444
7410	Discouraged work-seeker	EC444
43487	Other not economically active	EC444
0	Age less than 15 years	EC444
59315	Not applicable	EC444
185215	Employed	BUF
100008	Unemployed	BUF
31557	Discouraged work-seeker	BUF
193921	Other not economically active	BUF
0	Age less than 15 years	BUF
244500	Not applicable	BUF
290155	Employed	NMA
167229	Unemployed	NMA
41859	Discouraged work-seeker	NMA
289969	Other not economically active	NMA
0	Age less than 15 years	NMA
362903	Not applicable	NMA
9164	Employed	FS161
2624	Unemployed	FS161
1745	Discouraged work-seeker	FS161
11518	Other not economically active	FS161
0	Age less than 15 years	FS161
13578	Not applicable	FS161
11336	Employed	FS162
4193	Unemployed	FS162
2078	Discouraged work-seeker	FS162
13625	Other not economically active	FS162
0	Age less than 15 years	FS162
17939	Not applicable	FS162
7672	Employed	FS163
3518	Unemployed	FS163
1571	Discouraged work-seeker	FS163
8200	Other not economically active	FS163
0	Age less than 15 years	FS163
13185	Not applicable	FS163
4729	Employed	FS164
1697	Unemployed	FS164
1791	Discouraged work-seeker	FS164
6542	Other not economically active	FS164
0	Age less than 15 years	FS164
9555	Not applicable	FS164
11406	Employed	FS181
7227	Unemployed	FS181
2763	Discouraged work-seeker	FS181
19381	Other not economically active	FS181
0	Age less than 15 years	FS181
22557	Not applicable	FS181
6618	Employed	FS182
2504	Unemployed	FS182
973	Discouraged work-seeker	FS182
8141	Other not economically active	FS182
0	Age less than 15 years	FS182
10750	Not applicable	FS182
9694	Employed	FS183
5174	Unemployed	FS183
2364	Discouraged work-seeker	FS183
11727	Other not economically active	FS183
0	Age less than 15 years	FS183
18667	Not applicable	FS183
99650	Employed	FS184
58524	Unemployed	FS184
13290	Discouraged work-seeker	FS184
105159	Other not economically active	FS184
0	Age less than 15 years	FS184
129836	Not applicable	FS184
15786	Employed	FS185
8825	Unemployed	FS185
4588	Discouraged work-seeker	FS185
20798	Other not economically active	FS185
0	Age less than 15 years	FS185
31223	Not applicable	FS185
21493	Employed	FS191
11918	Unemployed	FS191
5365	Discouraged work-seeker	FS191
31111	Other not economically active	FS191
0	Age less than 15 years	FS191
42710	Not applicable	FS191
33843	Employed	FS192
13653	Unemployed	FS192
4889	Discouraged work-seeker	FS192
31467	Other not economically active	FS192
0	Age less than 15 years	FS192
44851	Not applicable	FS192
13406	Employed	FS193
5855	Unemployed	FS193
3007	Discouraged work-seeker	FS193
15063	Other not economically active	FS193
0	Age less than 15 years	FS193
22994	Not applicable	FS193
52867	Employed	FS194
38002	Unemployed	FS194
18379	Discouraged work-seeker	FS194
99048	Other not economically active	FS194
0	Age less than 15 years	FS194
127488	Not applicable	FS194
10681	Employed	FS195
3624	Unemployed	FS195
3125	Discouraged work-seeker	FS195
12336	Other not economically active	FS195
0	Age less than 15 years	FS195
18007	Not applicable	FS195
11838	Employed	FS196
4888	Unemployed	FS196
2089	Discouraged work-seeker	FS196
13249	Other not economically active	FS196
0	Age less than 15 years	FS196
18992	Not applicable	FS196
36040	Employed	FS201
19554	Unemployed	FS201
3933	Discouraged work-seeker	FS201
47141	Other not economically active	FS201
0	Age less than 15 years	FS201
53864	Not applicable	FS201
25635	Employed	FS203
13920	Unemployed	FS203
3865	Discouraged work-seeker	FS203
31823	Other not economically active	FS203
0	Age less than 15 years	FS203
45278	Not applicable	FS203
44261	Employed	FS204
20948	Unemployed	FS204
3008	Discouraged work-seeker	FS204
35146	Other not economically active	FS204
0	Age less than 15 years	FS204
45745	Not applicable	FS204
11796	Employed	FS205
5922	Unemployed	FS205
2882	Discouraged work-seeker	FS205
15334	Other not economically active	FS205
0	Age less than 15 years	FS205
21942	Not applicable	FS205
211746	Employed	MAN
81225	Unemployed	MAN
18244	Discouraged work-seeker	MAN
195707	Other not economically active	MAN
0	Age less than 15 years	MAN
240508	Not applicable	MAN
202543	Employed	GT421
107554	Unemployed	GT421
20145	Discouraged work-seeker	GT421
171542	Other not economically active	GT421
0	Age less than 15 years	GT421
219879	Not applicable	GT421
37336	Employed	GT422
8620	Unemployed	GT422
1939	Discouraged work-seeker	GT422
19287	Other not economically active	GT422
0	Age less than 15 years	GT422
28119	Not applicable	GT422
31518	Employed	GT423
11042	Unemployed	GT423
2889	Discouraged work-seeker	GT423
22805	Other not economically active	GT423
0	Age less than 15 years	GT423
31266	Not applicable	GT423
134635	Employed	GT481
43846	Unemployed	GT481
8197	Discouraged work-seeker	GT481
73240	Other not economically active	GT481
0	Age less than 15 years	GT481
102504	Not applicable	GT481
51480	Employed	GT482
19172	Unemployed	GT482
2991	Discouraged work-seeker	GT482
31205	Other not economically active	GT482
0	Age less than 15 years	GT482
44438	Not applicable	GT482
40585	Employed	GT483
16990	Unemployed	GT483
3386	Discouraged work-seeker	GT483
20966	Other not economically active	GT483
0	Age less than 15 years	GT483
29840	Not applicable	GT483
66635	Employed	GT484
24886	Unemployed	GT484
4968	Discouraged work-seeker	GT484
46789	Other not economically active	GT484
0	Age less than 15 years	GT484
54242	Not applicable	GT484
1126844	Employed	EKU
455608	Unemployed	EKU
81959	Discouraged work-seeker	EKU
615042	Other not economically active	EKU
0	Age less than 15 years	EKU
899017	Not applicable	EKU
1696520	Employed	JHB
564970	Unemployed	JHB
105882	Discouraged work-seeker	JHB
855234	Other not economically active	JHB
0	Age less than 15 years	JHB
1212221	Not applicable	JHB
1079273	Employed	TSH
345356	Unemployed	TSH
64095	Discouraged work-seeker	TSH
612750	Other not economically active	TSH
0	Age less than 15 years	TSH
820014	Not applicable	TSH
12630	Employed	KZN213
13604	Unemployed	KZN213
9687	Discouraged work-seeker	KZN213
54679	Other not economically active	KZN213
0	Age less than 15 years	KZN213
70375	Not applicable	KZN213
11128	Employed	KZN214
5489	Unemployed	KZN214
4489	Discouraged work-seeker	KZN214
31528	Other not economically active	KZN214
0	Age less than 15 years	KZN214
43923	Not applicable	KZN214
5876	Employed	KZN215
4185	Unemployed	KZN215
3530	Discouraged work-seeker	KZN215
16195	Other not economically active	KZN215
0	Age less than 15 years	KZN215
22753	Not applicable	KZN215
64194	Employed	KZN216
25003	Unemployed	KZN216
8940	Discouraged work-seeker	KZN216
67207	Other not economically active	KZN216
0	Age less than 15 years	KZN216
90791	Not applicable	KZN216
5894	Employed	KZN211
6551	Unemployed	KZN211
5165	Discouraged work-seeker	KZN211
26447	Other not economically active	KZN211
0	Age less than 15 years	KZN211
33345	Not applicable	KZN211
16698	Employed	KZN212
8337	Unemployed	KZN212
3869	Discouraged work-seeker	KZN212
22755	Other not economically active	KZN212
0	Age less than 15 years	KZN212
27217	Not applicable	KZN212
21310	Employed	KZN221
7078	Unemployed	KZN221
4405	Discouraged work-seeker	KZN221
33177	Other not economically active	KZN221
0	Age less than 15 years	KZN221
40404	Not applicable	KZN221
30844	Employed	KZN222
9711	Unemployed	KZN222
2930	Discouraged work-seeker	KZN222
18982	Other not economically active	KZN222
0	Age less than 15 years	KZN222
30243	Not applicable	KZN222
10188	Employed	KZN223
3200	Unemployed	KZN223
2188	Discouraged work-seeker	KZN223
9448	Other not economically active	KZN223
0	Age less than 15 years	KZN223
13080	Not applicable	KZN223
2347	Employed	KZN224
1928	Unemployed	KZN224
2284	Discouraged work-seeker	KZN224
11923	Other not economically active	KZN224
0	Age less than 15 years	KZN224
14623	Not applicable	KZN224
153909	Employed	KZN225
75763	Unemployed	KZN225
25229	Discouraged work-seeker	KZN225
168035	Other not economically active	KZN225
0	Age less than 15 years	KZN225
195600	Not applicable	KZN225
13444	Employed	KZN226
4913	Unemployed	KZN226
3171	Discouraged work-seeker	KZN226
18546	Other not economically active	KZN226
0	Age less than 15 years	KZN226
23068	Not applicable	KZN226
13337	Employed	KZN227
4753	Unemployed	KZN227
4014	Discouraged work-seeker	KZN227
18505	Other not economically active	KZN227
0	Age less than 15 years	KZN227
25184	Not applicable	KZN227
47651	Employed	KZN232
24598	Unemployed	KZN232
10411	Discouraged work-seeker	KZN232
65130	Other not economically active	KZN232
0	Age less than 15 years	KZN232
89648	Not applicable	KZN232
4350	Employed	KZN233
5817	Unemployed	KZN233
7688	Discouraged work-seeker	KZN233
35356	Other not economically active	KZN233
0	Age less than 15 years	KZN233
49905	Not applicable	KZN233
13342	Employed	KZN234
7800	Unemployed	KZN234
7161	Discouraged work-seeker	KZN234
22802	Other not economically active	KZN234
0	Age less than 15 years	KZN234
32048	Not applicable	KZN234
13718	Employed	KZN235
10501	Unemployed	KZN235
9709	Discouraged work-seeker	KZN235
39853	Other not economically active	KZN235
0	Age less than 15 years	KZN235
58287	Not applicable	KZN235
10673	Employed	KZN236
10084	Unemployed	KZN236
6454	Discouraged work-seeker	KZN236
38272	Other not economically active	KZN236
0	Age less than 15 years	KZN236
47590	Not applicable	KZN236
12017	Employed	KZN271
10690	Unemployed	KZN271
12317	Discouraged work-seeker	KZN271
50847	Other not economically active	KZN271
0	Age less than 15 years	KZN271
70864	Not applicable	KZN271
15950	Employed	KZN272
12559	Unemployed	KZN272
12793	Discouraged work-seeker	KZN272
60921	Other not economically active	KZN272
0	Age less than 15 years	KZN272
84279	Not applicable	KZN272
5348	Employed	KZN273
1930	Unemployed	KZN273
2193	Discouraged work-seeker	KZN273
11026	Other not economically active	KZN273
0	Age less than 15 years	KZN273
14762	Not applicable	KZN273
5396	Employed	KZN274
5983	Unemployed	KZN274
4722	Discouraged work-seeker	KZN274
22609	Other not economically active	KZN274
0	Age less than 15 years	KZN274
33215	Not applicable	KZN274
20213	Employed	KZN275
12942	Unemployed	KZN275
7374	Discouraged work-seeker	KZN275
58035	Other not economically active	KZN275
0	Age less than 15 years	KZN275
76861	Not applicable	KZN275
85876	Employed	KZN282
38532	Unemployed	KZN282
12948	Discouraged work-seeker	KZN282
88314	Other not economically active	KZN282
0	Age less than 15 years	KZN282
108789	Not applicable	KZN282
6907	Employed	KZN286
5398	Unemployed	KZN286
8907	Discouraged work-seeker	KZN286
40115	Other not economically active	KZN286
0	Age less than 15 years	KZN286
53089	Not applicable	KZN286
16491	Employed	KZN281
11952	Unemployed	KZN281
7005	Discouraged work-seeker	KZN281
37629	Other not economically active	KZN281
0	Age less than 15 years	KZN281
49812	Not applicable	KZN281
6646	Employed	KZN283
6428	Unemployed	KZN283
5218	Discouraged work-seeker	KZN283
23174	Other not economically active	KZN283
0	Age less than 15 years	KZN283
32870	Not applicable	KZN283
24792	Employed	KZN284
13480	Unemployed	KZN284
11520	Discouraged work-seeker	KZN284
72312	Other not economically active	KZN284
0	Age less than 15 years	KZN284
91498	Not applicable	KZN284
7569	Employed	KZN285
3020	Unemployed	KZN285
2309	Discouraged work-seeker	KZN285
14330	Other not economically active	KZN285
0	Age less than 15 years	KZN285
20589	Not applicable	KZN285
10570	Employed	KZN431
6856	Unemployed	KZN431
5437	Discouraged work-seeker	KZN431
32635	Other not economically active	KZN431
0	Age less than 15 years	KZN431
45049	Not applicable	KZN431
5265	Employed	KZN432
1005	Unemployed	KZN432
291	Discouraged work-seeker	KZN432
2507	Other not economically active	KZN432
0	Age less than 15 years	KZN432
3830	Not applicable	KZN432
18849	Employed	KZN433
7654	Unemployed	KZN433
1437	Discouraged work-seeker	KZN433
16090	Other not economically active	KZN433
0	Age less than 15 years	KZN433
21951	Not applicable	KZN433
12569	Employed	KZN434
6483	Unemployed	KZN434
4995	Discouraged work-seeker	KZN434
34304	Other not economically active	KZN434
0	Age less than 15 years	KZN434
43340	Not applicable	KZN434
14642	Employed	KZN435
12761	Unemployed	KZN435
11115	Discouraged work-seeker	KZN435
58314	Other not economically active	KZN435
0	Age less than 15 years	KZN435
83469	Not applicable	KZN435
15228	Employed	KZN241
5465	Unemployed	KZN241
2222	Discouraged work-seeker	KZN241
18444	Other not economically active	KZN241
0	Age less than 15 years	KZN241
23502	Not applicable	KZN241
9946	Employed	KZN242
7943	Unemployed	KZN242
12918	Discouraged work-seeker	KZN242
55934	Other not economically active	KZN242
0	Age less than 15 years	KZN242
78564	Not applicable	KZN242
8632	Employed	KZN244
8477	Unemployed	KZN244
17670	Discouraged work-seeker	KZN244
55452	Other not economically active	KZN244
0	Age less than 15 years	KZN244
87346	Not applicable	KZN244
16741	Employed	KZN245
7306	Unemployed	KZN245
4470	Discouraged work-seeker	KZN245
32216	Other not economically active	KZN245
0	Age less than 15 years	KZN245
42359	Not applicable	KZN245
62968	Employed	KZN252
37686	Unemployed	KZN252
17021	Discouraged work-seeker	KZN252
112225	Other not economically active	KZN252
0	Age less than 15 years	KZN252
133335	Not applicable	KZN252
5818	Employed	KZN253
3506	Unemployed	KZN253
2175	Discouraged work-seeker	KZN253
8847	Other not economically active	KZN253
0	Age less than 15 years	KZN253
14096	Not applicable	KZN253
10852	Employed	KZN254
9843	Unemployed	KZN254
5781	Discouraged work-seeker	KZN254
31471	Other not economically active	KZN254
0	Age less than 15 years	KZN254
44214	Not applicable	KZN254
27582	Employed	KZN263
15117	Unemployed	KZN263
10719	Discouraged work-seeker	KZN263
70356	Other not economically active	KZN263
0	Age less than 15 years	KZN263
87287	Not applicable	KZN263
9595	Employed	KZN261
5813	Unemployed	KZN261
4556	Discouraged work-seeker	KZN261
25189	Other not economically active	KZN261
0	Age less than 15 years	KZN261
36900	Not applicable	KZN261
18210	Employed	KZN262
10043	Unemployed	KZN262
7263	Discouraged work-seeker	KZN262
36236	Other not economically active	KZN262
0	Age less than 15 years	KZN262
55486	Not applicable	KZN262
12838	Employed	KZN265
12469	Unemployed	KZN265
14456	Discouraged work-seeker	KZN265
63910	Other not economically active	KZN265
0	Age less than 15 years	KZN265
91235	Not applicable	KZN265
15136	Employed	KZN266
14805	Unemployed	KZN266
13259	Discouraged work-seeker	KZN266
60779	Other not economically active	KZN266
0	Age less than 15 years	KZN266
84338	Not applicable	KZN266
5467	Employed	KZN294
5255	Unemployed	KZN294
5791	Discouraged work-seeker	KZN294
34616	Other not economically active	KZN294
0	Age less than 15 years	KZN294
45596	Not applicable	KZN294
29645	Employed	KZN291
11854	Unemployed	KZN291
6845	Discouraged work-seeker	KZN291
38130	Other not economically active	KZN291
0	Age less than 15 years	KZN291
51604	Not applicable	KZN291
68418	Employed	KZN292
22760	Unemployed	KZN292
8023	Discouraged work-seeker	KZN292
54956	Other not economically active	KZN292
0	Age less than 15 years	KZN292
77030	Not applicable	KZN292
11312	Employed	KZN293
10759	Unemployed	KZN293
9233	Discouraged work-seeker	KZN293
48860	Other not economically active	KZN293
0	Age less than 15 years	KZN293
60655	Not applicable	KZN293
992560	Employed	ETH
430318	Unemployed	ETH
114230	Discouraged work-seeker	ETH
873581	Other not economically active	ETH
0	Age less than 15 years	ETH
1031673	Not applicable	ETH
25469	Employed	LIM331
22596	Unemployed	LIM331
10846	Discouraged work-seeker	LIM331
81315	Other not economically active	LIM331
0	Age less than 15 years	LIM331
103991	Not applicable	LIM331
27838	Employed	LIM332
18806	Unemployed	LIM332
7900	Discouraged work-seeker	LIM332
70056	Other not economically active	LIM332
0	Age less than 15 years	LIM332
88102	Not applicable	LIM332
73482	Employed	LIM333
42537	Unemployed	LIM333
13421	Discouraged work-seeker	LIM333
114156	Other not economically active	LIM333
0	Age less than 15 years	LIM333
146499	Not applicable	LIM333
33959	Employed	LIM334
20282	Unemployed	LIM334
4087	Discouraged work-seeker	LIM334
36897	Other not economically active	LIM334
0	Age less than 15 years	LIM334
55413	Not applicable	LIM334
13493	Employed	LIM335
8945	Unemployed	LIM335
4355	Discouraged work-seeker	LIM335
30428	Other not economically active	LIM335
0	Age less than 15 years	LIM335
37636	Not applicable	LIM335
9413	Employed	LIM342
8983	Unemployed	LIM342
6322	Discouraged work-seeker	LIM342
26361	Other not economically active	LIM342
0	Age less than 15 years	LIM342
40791	Not applicable	LIM342
75592	Employed	LIM343
58917	Unemployed	LIM343
33530	Discouraged work-seeker	LIM343
195493	Other not economically active	LIM343
0	Age less than 15 years	LIM343
254929	Not applicable	LIM343
25588	Employed	LIM341
5893	Unemployed	LIM341
1869	Discouraged work-seeker	LIM341
13966	Other not economically active	LIM341
0	Age less than 15 years	LIM341
21043	Not applicable	LIM341
78768	Employed	LIM344
45705	Unemployed	LIM344
24383	Discouraged work-seeker	LIM344
151186	Other not economically active	LIM344
0	Age less than 15 years	LIM344
215990	Not applicable	LIM344
15839	Employed	LIM351
10231	Unemployed	LIM351
5198	Discouraged work-seeker	LIM351
56089	Other not economically active	LIM351
0	Age less than 15 years	LIM351
75271	Not applicable	LIM351
11401	Employed	LIM352
11581	Unemployed	LIM352
3996	Discouraged work-seeker	LIM352
42083	Other not economically active	LIM352
0	Age less than 15 years	LIM352
62102	Not applicable	LIM352
15225	Employed	LIM353
11344	Unemployed	LIM353
2948	Discouraged work-seeker	LIM353
32080	Other not economically active	LIM353
0	Age less than 15 years	LIM353
46723	Not applicable	LIM353
155691	Employed	LIM354
74784	Unemployed	LIM354
14798	Discouraged work-seeker	LIM354
162442	Other not economically active	LIM354
0	Age less than 15 years	LIM354
221283	Not applicable	LIM354
27513	Employed	LIM355
25541	Unemployed	LIM355
8857	Discouraged work-seeker	LIM355
67576	Other not economically active	LIM355
0	Age less than 15 years	LIM355
100863	Not applicable	LIM355
32918	Employed	LIM361
8562	Unemployed	LIM361
1236	Discouraged work-seeker	LIM361
22438	Other not economically active	LIM361
0	Age less than 15 years	LIM361
20081	Not applicable	LIM361
35327	Employed	LIM362
10100	Unemployed	LIM362
1565	Discouraged work-seeker	LIM362
33699	Other not economically active	LIM362
0	Age less than 15 years	LIM362
35077	Not applicable	LIM362
12086	Employed	LIM364
3705	Unemployed	LIM364
914	Discouraged work-seeker	LIM364
7390	Other not economically active	LIM364
0	Age less than 15 years	LIM364
11544	Not applicable	LIM364
19719	Employed	LIM365
5634	Unemployed	LIM365
1416	Discouraged work-seeker	LIM365
16912	Other not economically active	LIM365
0	Age less than 15 years	LIM365
24832	Not applicable	LIM365
20720	Employed	LIM366
6002	Unemployed	LIM366
1057	Discouraged work-seeker	LIM366
16099	Other not economically active	LIM366
0	Age less than 15 years	LIM366
22622	Not applicable	LIM366
47038	Employed	LIM367
31609	Unemployed	LIM367
10072	Discouraged work-seeker	LIM367
90644	Other not economically active	LIM367
0	Age less than 15 years	LIM367
128319	Not applicable	LIM367
18350	Employed	LIM471
12944	Unemployed	LIM471
5299	Discouraged work-seeker	LIM471
34577	Other not economically active	LIM471
0	Age less than 15 years	LIM471
52478	Not applicable	LIM471
32203	Employed	LIM472
24175	Unemployed	LIM472
11177	Discouraged work-seeker	LIM472
74140	Other not economically active	LIM472
0	Age less than 15 years	LIM472
107669	Not applicable	LIM472
19534	Employed	LIM473
32780	Unemployed	LIM473
13657	Discouraged work-seeker	LIM473
81993	Other not economically active	LIM473
0	Age less than 15 years	LIM473
126394	Not applicable	LIM473
9184	Employed	LIM474
13154	Unemployed	LIM474
3273	Discouraged work-seeker	LIM474
27361	Other not economically active	LIM474
0	Age less than 15 years	LIM474
40823	Not applicable	LIM474
49522	Employed	LIM475
50220	Unemployed	LIM475
10605	Discouraged work-seeker	LIM475
92376	Other not economically active	LIM475
0	Age less than 15 years	LIM475
132952	Not applicable	LIM475
29141	Employed	MP301
15975	Unemployed	MP301
9282	Discouraged work-seeker	MP301
53944	Other not economically active	MP301
0	Age less than 15 years	MP301
77668	Not applicable	MP301
41698	Employed	MP302
15267	Unemployed	MP302
5311	Discouraged work-seeker	MP302
35625	Other not economically active	MP302
0	Age less than 15 years	MP302
51477	Not applicable	MP302
30510	Employed	MP303
17123	Unemployed	MP303
6060	Discouraged work-seeker	MP303
48086	Other not economically active	MP303
0	Age less than 15 years	MP303
70203	Not applicable	MP303
13979	Employed	MP304
7906	Unemployed	MP304
4184	Discouraged work-seeker	MP304
23383	Other not economically active	MP304
0	Age less than 15 years	MP304
33783	Not applicable	MP304
34118	Employed	MP305
11895	Unemployed	MP305
2600	Discouraged work-seeker	MP305
28171	Other not economically active	MP305
0	Age less than 15 years	MP305
38878	Not applicable	MP305
10546	Employed	MP306
6244	Unemployed	MP306
1295	Discouraged work-seeker	MP306
9877	Other not economically active	MP306
0	Age less than 15 years	MP306
14429	Not applicable	MP306
99138	Employed	MP307
35249	Unemployed	MP307
6787	Discouraged work-seeker	MP307
63301	Other not economically active	MP307
0	Age less than 15 years	MP307
90064	Not applicable	MP307
21843	Employed	MP311
8573	Unemployed	MP311
2477	Discouraged work-seeker	MP311
17712	Other not economically active	MP311
0	Age less than 15 years	MP311
24848	Not applicable	MP311
138548	Employed	MP312
52114	Unemployed	MP312
9612	Discouraged work-seeker	MP312
81494	Other not economically active	MP312
0	Age less than 15 years	MP312
113698	Not applicable	MP312
85968	Employed	MP313
21101	Unemployed	MP313
5092	Discouraged work-seeker	MP313
50252	Other not economically active	MP313
0	Age less than 15 years	MP313
67419	Not applicable	MP313
13671	Employed	MP314
4783	Unemployed	MP314
1573	Discouraged work-seeker	MP314
11243	Other not economically active	MP314
0	Age less than 15 years	MP314
15945	Not applicable	MP314
61605	Employed	MP315
36139	Unemployed	MP315
13477	Discouraged work-seeker	MP315
84188	Other not economically active	MP315
0	Age less than 15 years	MP315
115049	Not applicable	MP315
33844	Employed	MP316
29539	Unemployed	MP316
10321	Discouraged work-seeker	MP316
74753	Other not economically active	MP316
0	Age less than 15 years	MP316
101248	Not applicable	MP316
35972	Employed	MP321
9268	Unemployed	MP321
2213	Discouraged work-seeker	MP321
21327	Other not economically active	MP321
0	Age less than 15 years	MP321
29607	Not applicable	MP321
164000	Employed	MP322
64237	Unemployed	MP322
20771	Discouraged work-seeker	MP322
139312	Other not economically active	MP322
0	Age less than 15 years	MP322
200473	Not applicable	MP322
20894	Employed	MP323
7681	Unemployed	MP323
1711	Discouraged work-seeker	MP323
15643	Other not economically active	MP323
0	Age less than 15 years	MP323
21227	Not applicable	MP323
72588	Employed	MP324
37881	Unemployed	MP324
17651	Discouraged work-seeker	MP324
109557	Other not economically active	MP324
0	Age less than 15 years	MP324
155354	Not applicable	MP324
61710	Employed	MP325
67152	Unemployed	MP325
30426	Discouraged work-seeker	MP325
152937	Other not economically active	MP325
0	Age less than 15 years	MP325
229024	Not applicable	MP325
29475	Employed	NW371
25053	Unemployed	NW371
8728	Discouraged work-seeker	NW371
50580	Other not economically active	NW371
0	Age less than 15 years	NW371
73111	Not applicable	NW371
149723	Employed	NW372
65488	Unemployed	NW372
11821	Discouraged work-seeker	NW372
103472	Other not economically active	NW372
0	Age less than 15 years	NW372
146876	Not applicable	NW372
196080	Employed	NW373
70391	Unemployed	NW373
11265	Discouraged work-seeker	NW373
120867	Other not economically active	NW373
0	Age less than 15 years	NW373
150971	Not applicable	NW373
14997	Employed	NW374
3862	Unemployed	NW374
1110	Discouraged work-seeker	NW374
13502	Other not economically active	NW374
0	Age less than 15 years	NW374
17578	Not applicable	NW374
46416	Employed	NW375
28328	Unemployed	NW375
8369	Discouraged work-seeker	NW375
69859	Other not economically active	NW375
0	Age less than 15 years	NW375
89581	Not applicable	NW375
8812	Employed	NW381
6885	Unemployed	NW381
6587	Discouraged work-seeker	NW381
35542	Other not economically active	NW381
0	Age less than 15 years	NW381
49512	Not applicable	NW381
20754	Employed	NW382
8350	Unemployed	NW382
5610	Discouraged work-seeker	NW382
37353	Other not economically active	NW382
0	Age less than 15 years	NW382
52152	Not applicable	NW382
59726	Employed	NW383
33167	Unemployed	NW383
12987	Discouraged work-seeker	NW383
81863	Other not economically active	NW383
0	Age less than 15 years	NW383
103784	Not applicable	NW383
37605	Employed	NW384
14829	Unemployed	NW384
7151	Discouraged work-seeker	NW384
45018	Other not economically active	NW384
0	Age less than 15 years	NW384
64301	Not applicable	NW384
22437	Employed	NW385
12743	Unemployed	NW385
9030	Discouraged work-seeker	NW385
45719	Other not economically active	NW385
0	Age less than 15 years	NW385
60784	Not applicable	NW385
18201	Employed	NW392
6415	Unemployed	NW392
1780	Discouraged work-seeker	NW392
16344	Other not economically active	NW392
0	Age less than 15 years	NW392
24040	Not applicable	NW392
10952	Employed	NW393
5934	Unemployed	NW393
2518	Discouraged work-seeker	NW393
15884	Other not economically active	NW393
0	Age less than 15 years	NW393
25067	Not applicable	NW393
16464	Employed	NW394
16303	Unemployed	NW394
12777	Discouraged work-seeker	NW394
54456	Other not economically active	NW394
0	Age less than 15 years	NW394
77643	Not applicable	NW394
11369	Employed	NW396
4982	Unemployed	NW396
2855	Discouraged work-seeker	NW396
13846	Other not economically active	NW396
0	Age less than 15 years	NW396
20196	Not applicable	NW396
14792	Employed	NW397
6405	Unemployed	NW397
5150	Discouraged work-seeker	NW397
33397	Other not economically active	NW397
0	Age less than 15 years	NW397
46045	Not applicable	NW397
11705	Employed	NW401
4321	Unemployed	NW401
2273	Discouraged work-seeker	NW401
15851	Other not economically active	NW401
0	Age less than 15 years	NW401
22552	Not applicable	NW401
51667	Employed	NW402
14253	Unemployed	NW402
3153	Discouraged work-seeker	NW402
43426	Other not economically active	NW402
0	Age less than 15 years	NW402
50263	Not applicable	NW402
106929	Employed	NW403
51967	Unemployed	NW403
11311	Discouraged work-seeker	NW403
94420	Other not economically active	NW403
0	Age less than 15 years	NW403
134049	Not applicable	NW403
15264	Employed	NW404
7672	Unemployed	NW404
3014	Discouraged work-seeker	NW404
22128	Other not economically active	NW404
0	Age less than 15 years	NW404
29716	Not applicable	NW404
4627	Employed	NC061
1060	Unemployed	NC061
211	Discouraged work-seeker	NC061
2510	Other not economically active	NC061
0	Age less than 15 years	NC061
3574	Not applicable	NC061
12351	Employed	NC062
3665	Unemployed	NC062
1935	Discouraged work-seeker	NC062
13526	Other not economically active	NC062
0	Age less than 15 years	NC062
15565	Not applicable	NC062
2204	Employed	NC064
981	Unemployed	NC064
732	Discouraged work-seeker	NC064
2535	Other not economically active	NC064
0	Age less than 15 years	NC064
3735	Not applicable	NC064
6247	Employed	NC065
838	Unemployed	NC065
446	Discouraged work-seeker	NC065
6335	Other not economically active	NC065
0	Age less than 15 years	NC065
7713	Not applicable	NC065
3655	Employed	NC066
623	Unemployed	NC066
395	Discouraged work-seeker	NC066
3170	Other not economically active	NC066
0	Age less than 15 years	NC066
4746	Not applicable	NC066
4600	Employed	NC067
1304	Unemployed	NC067
322	Discouraged work-seeker	NC067
2327	Other not economically active	NC067
0	Age less than 15 years	NC067
3912	Not applicable	NC067
5028	Employed	NC071
2063	Unemployed	NC071
508	Discouraged work-seeker	NC071
3775	Other not economically active	NC071
0	Age less than 15 years	NC071
7227	Not applicable	NC071
6117	Employed	NC072
3019	Unemployed	NC072
1188	Discouraged work-seeker	NC072
7492	Other not economically active	NC072
0	Age less than 15 years	NC072
10561	Not applicable	NC072
9866	Employed	NC073
3833	Unemployed	NC073
1203	Discouraged work-seeker	NC073
11561	Other not economically active	NC073
0	Age less than 15 years	NC073
15893	Not applicable	NC073
2858	Employed	NC074
952	Unemployed	NC074
458	Discouraged work-seeker	NC074
3029	Other not economically active	NC074
0	Age less than 15 years	NC074
4375	Not applicable	NC074
2617	Employed	NC075
958	Unemployed	NC075
325	Discouraged work-seeker	NC075
2795	Other not economically active	NC075
0	Age less than 15 years	NC075
4283	Not applicable	NC075
3861	Employed	NC076
1532	Unemployed	NC076
687	Discouraged work-seeker	NC076
3776	Other not economically active	NC076
0	Age less than 15 years	NC076
5845	Not applicable	NC076
5371	Employed	NC077
1728	Unemployed	NC077
767	Discouraged work-seeker	NC077
5787	Other not economically active	NC077
0	Age less than 15 years	NC077
7939	Not applicable	NC077
7946	Employed	NC078
3118	Unemployed	NC078
1422	Discouraged work-seeker	NC078
10573	Other not economically active	NC078
0	Age less than 15 years	NC078
14016	Not applicable	NC078
1301	Employed	NC081
581	Unemployed	NC081
288	Discouraged work-seeker	NC081
2119	Other not economically active	NC081
0	Age less than 15 years	NC081
2714	Not applicable	NC081
27853	Employed	NC082
3096	Unemployed	NC082
939	Discouraged work-seeker	NC082
14534	Other not economically active	NC082
0	Age less than 15 years	NC082
19447	Not applicable	NC082
25123	Employed	NC083
7110	Unemployed	NC083
2290	Discouraged work-seeker	NC083
25902	Other not economically active	NC083
0	Age less than 15 years	NC083
33070	Not applicable	NC083
4047	Employed	NC084
1570	Unemployed	NC084
551	Discouraged work-seeker	NC084
3862	Other not economically active	NC084
0	Age less than 15 years	NC084
6607	Not applicable	NC084
10760	Employed	NC085
3795	Unemployed	NC085
419	Discouraged work-seeker	NC085
8764	Other not economically active	NC085
0	Age less than 15 years	NC085
11354	Not applicable	NC085
5365	Employed	NC086
1544	Unemployed	NC086
474	Discouraged work-seeker	NC086
5029	Other not economically active	NC086
0	Age less than 15 years	NC086
6275	Not applicable	NC086
63049	Employed	NC091
29514	Unemployed	NC091
7474	Discouraged work-seeker	NC091
64250	Other not economically active	NC091
0	Age less than 15 years	NC091
83754	Not applicable	NC091
7841	Employed	NC092
5164	Unemployed	NC092
2041	Discouraged work-seeker	NC092
14510	Other not economically active	NC092
0	Age less than 15 years	NC092
17286	Not applicable	NC092
3669	Employed	NC093
2570	Unemployed	NC093
1304	Discouraged work-seeker	NC093
7515	Other not economically active	NC093
0	Age less than 15 years	NC093
9146	Not applicable	NC093
12611	Employed	NC094
7589	Unemployed	NC094
2568	Discouraged work-seeker	NC094
16254	Other not economically active	NC094
0	Age less than 15 years	NC094
23979	Not applicable	NC094
7828	Employed	NC451
4912	Unemployed	NC451
6200	Discouraged work-seeker	NC451
29569	Other not economically active	NC451
0	Age less than 15 years	NC451
41022	Not applicable	NC451
19940	Employed	NC452
10154	Unemployed	NC452
3895	Discouraged work-seeker	NC452
25238	Other not economically active	NC452
0	Age less than 15 years	NC452
34426	Not applicable	NC452
16058	Employed	NC453
3453	Unemployed	NC453
873	Discouraged work-seeker	NC453
9553	Other not economically active	NC453
0	Age less than 15 years	NC453
11680	Not applicable	NC453
23806	Employed	WC011
3889	Unemployed	WC011
1301	Discouraged work-seeker	WC011
15951	Other not economically active	WC011
0	Age less than 15 years	WC011
22200	Not applicable	WC011
18539	Employed	WC012
2186	Unemployed	WC012
655	Discouraged work-seeker	WC012
12476	Other not economically active	WC012
0	Age less than 15 years	WC012
15910	Not applicable	WC012
23761	Employed	WC013
1732	Unemployed	WC013
462	Discouraged work-seeker	WC013
16183	Other not economically active	WC013
0	Age less than 15 years	WC013
19759	Not applicable	WC013
34359	Employed	WC014
10470	Unemployed	WC014
1909	Discouraged work-seeker	WC014
22168	Other not economically active	WC014
0	Age less than 15 years	WC014
30288	Not applicable	WC014
40651	Employed	WC015
5928	Unemployed	WC015
1197	Discouraged work-seeker	WC015
30854	Other not economically active	WC015
0	Age less than 15 years	WC015
35131	Not applicable	WC015
52062	Employed	WC022
4272	Unemployed	WC022
1067	Discouraged work-seeker	WC022
24231	Other not economically active	WC022
0	Age less than 15 years	WC022
34314	Not applicable	WC022
87336	Employed	WC023
18694	Unemployed	WC023
5705	Discouraged work-seeker	WC023
62102	Other not economically active	WC023
0	Age less than 15 years	WC023
77424	Not applicable	WC023
56957	Employed	WC024
10178	Unemployed	WC024
2731	Discouraged work-seeker	WC024
42666	Other not economically active	WC024
0	Age less than 15 years	WC024
43200	Not applicable	WC024
58696	Employed	WC025
9911	Unemployed	WC025
1779	Discouraged work-seeker	WC025
41183	Other not economically active	WC025
0	Age less than 15 years	WC025
55256	Not applicable	WC025
34713	Employed	WC026
4432	Unemployed	WC026
1110	Discouraged work-seeker	WC026
23773	Other not economically active	WC026
0	Age less than 15 years	WC026
33697	Not applicable	WC026
12620	Employed	WC034
1626	Unemployed	WC034
372	Discouraged work-seeker	WC034
9288	Other not economically active	WC034
0	Age less than 15 years	WC034
12010	Not applicable	WC034
40568	Employed	WC031
7076	Unemployed	WC031
1968	Discouraged work-seeker	WC031
25851	Other not economically active	WC031
0	Age less than 15 years	WC031
33327	Not applicable	WC031
27260	Employed	WC032
8293	Unemployed	WC032
1453	Discouraged work-seeker	WC032
15797	Other not economically active	WC032
0	Age less than 15 years	WC032
27629	Not applicable	WC032
12613	Employed	WC033
2017	Unemployed	WC033
1073	Discouraged work-seeker	WC033
6642	Other not economically active	WC033
0	Age less than 15 years	WC033
10694	Not applicable	WC033
6271	Employed	WC041
1316	Unemployed	WC041
372	Discouraged work-seeker	WC041
7768	Other not economically active	WC041
0	Age less than 15 years	WC041
9040	Not applicable	WC041
17052	Employed	WC042
2803	Unemployed	WC042
1458	Discouraged work-seeker	WC042
12674	Other not economically active	WC042
0	Age less than 15 years	WC042
18655	Not applicable	WC042
26909	Employed	WC043
7992	Unemployed	WC043
2017	Discouraged work-seeker	WC043
22809	Other not economically active	WC043
0	Age less than 15 years	WC043
29703	Not applicable	WC043
63110	Employed	WC044
16434	Unemployed	WC044
5140	Discouraged work-seeker	WC044
45664	Other not economically active	WC044
0	Age less than 15 years	WC044
63324	Not applicable	WC044
23281	Employed	WC045
7887	Unemployed	WC045
3187	Discouraged work-seeker	WC045
27229	Other not economically active	WC045
0	Age less than 15 years	WC045
34349	Not applicable	WC045
16493	Employed	WC047
7106	Unemployed	WC047
1493	Discouraged work-seeker	WC047
8555	Other not economically active	WC047
0	Age less than 15 years	WC047
15514	Not applicable	WC047
21939	Employed	WC048
7248	Unemployed	WC048
1589	Discouraged work-seeker	WC048
15146	Other not economically active	WC048
0	Age less than 15 years	WC048
22737	Not applicable	WC048
2935	Employed	WC051
638	Unemployed	WC051
211	Discouraged work-seeker	WC051
1708	Other not economically active	WC051
0	Age less than 15 years	WC051
2797	Not applicable	WC051
3513	Employed	WC052
844	Unemployed	WC052
497	Discouraged work-seeker	WC052
3555	Other not economically active	WC052
0	Age less than 15 years	WC052
4726	Not applicable	WC052
11012	Employed	WC053
3772	Unemployed	WC053
2572	Discouraged work-seeker	WC053
13695	Other not economically active	WC053
0	Age less than 15 years	WC053
18535	Not applicable	WC053
1294239	Employed	CPT
405989	Unemployed	CPT
81433	Discouraged work-seeker	CPT
822549	Other not economically active	CPT
0	Age less than 15 years	CPT
1135815	Not applicable	CPT
\.


--
-- Data for Name: officialemploymentstatus_province; Type: TABLE DATA; Schema: public; Owner: census
--

COPY officialemploymentstatus_province (total, "official employment status", province_code) FROM stdin;
1028964	Employed	EC
615849	Unemployed	EC
306376	Discouraged work-seeker	EC
2001779	Other not economically active	EC
0	Age less than 15 years	EC
2609086	Not applicable	EC
649661	Employed	FS
313793	Unemployed	FS
99949	Discouraged work-seeker	FS
732517	Other not economically active	FS
0	Age less than 15 years	FS
949670	Not applicable	FS
4467370	Employed	GT
1598044	Unemployed	GT
296450	Discouraged work-seeker	GT
2468859	Other not economically active	GT
0	Age less than 15 years	GT
3441539	Not applicable	GT
2041581	Employed	KZN
1006409	Unemployed	KZN
488538	Discouraged work-seeker	KZN
2943203	Other not economically active	KZN
0	Age less than 15 years	KZN
3787571	Not applicable	KZN
885874	Employed	LIM
565029	Unemployed	LIM
202780	Discouraged work-seeker	LIM
1577756	Other not economically active	LIM
0	Age less than 15 years	LIM
2173429	Not applicable	LIM
969771	Employed	MP
448126	Unemployed	MP
150844	Discouraged work-seeker	MP
1020806	Other not economically active	MP
0	Age less than 15 years	MP
1450392	Not applicable	MP
843369	Employed	NW
387348	Unemployed	NW
127490	Discouraged work-seeker	NW
913527	Other not economically active	NW
0	Age less than 15 years	NW
1238219	Not applicable	NW
282791	Employed	NC
106723	Unemployed	NC
39913	Discouraged work-seeker	NC
306291	Other not economically active	NC
0	Age less than 15 years	NC
410143	Not applicable	NC
2010697	Employed	WC
552733	Unemployed	WC
122753	Discouraged work-seeker	WC
1330519	Other not economically active	WC
0	Age less than 15 years	WC
1806032	Not applicable	WC
\.


--
-- Data for Name: officialemploymentstatus_ward; Type: TABLE DATA; Schema: public; Owner: census
--

COPY officialemploymentstatus_ward (total, "official employment status", ward_code) FROM stdin;
1806	Employed	21001001
1074	Unemployed	21001001
339	Discouraged work-seeker	21001001
2148	Other not economically active	21001001
0	Age less than 15 years	21001001
3378	Not applicable	21001001
2051	Employed	21001002
442	Unemployed	21001002
215	Discouraged work-seeker	21001002
2175	Other not economically active	21001002
0	Age less than 15 years	21001002
2376	Not applicable	21001002
1183	Employed	21001003
788	Unemployed	21001003
96	Discouraged work-seeker	21001003
1536	Other not economically active	21001003
0	Age less than 15 years	21001003
2317	Not applicable	21001003
2134	Employed	21001004
1099	Unemployed	21001004
71	Discouraged work-seeker	21001004
3083	Other not economically active	21001004
0	Age less than 15 years	21001004
3892	Not applicable	21001004
1427	Employed	21001005
676	Unemployed	21001005
226	Discouraged work-seeker	21001005
1367	Other not economically active	21001005
0	Age less than 15 years	21001005
2323	Not applicable	21001005
1140	Employed	21001006
959	Unemployed	21001006
111	Discouraged work-seeker	21001006
1741	Other not economically active	21001006
0	Age less than 15 years	21001006
2507	Not applicable	21001006
2555	Employed	21001007
259	Unemployed	21001007
133	Discouraged work-seeker	21001007
1448	Other not economically active	21001007
0	Age less than 15 years	21001007
1919	Not applicable	21001007
1269	Employed	21002001
609	Unemployed	21002001
127	Discouraged work-seeker	21002001
1116	Other not economically active	21002001
0	Age less than 15 years	21002001
1628	Not applicable	21002001
1297	Employed	21002002
447	Unemployed	21002002
377	Discouraged work-seeker	21002002
2026	Other not economically active	21002002
0	Age less than 15 years	21002002
2600	Not applicable	21002002
1019	Employed	21002003
819	Unemployed	21002003
202	Discouraged work-seeker	21002003
2464	Other not economically active	21002003
0	Age less than 15 years	21002003
2474	Not applicable	21002003
1216	Employed	21002004
478	Unemployed	21002004
243	Discouraged work-seeker	21002004
1669	Other not economically active	21002004
0	Age less than 15 years	21002004
2327	Not applicable	21002004
895	Employed	21002005
403	Unemployed	21002005
143	Discouraged work-seeker	21002005
1992	Other not economically active	21002005
0	Age less than 15 years	21002005
2013	Not applicable	21002005
1737	Employed	21002006
544	Unemployed	21002006
202	Discouraged work-seeker	21002006
1669	Other not economically active	21002006
0	Age less than 15 years	21002006
1997	Not applicable	21002006
789	Employed	21003001
111	Unemployed	21003001
78	Discouraged work-seeker	21003001
670	Other not economically active	21003001
0	Age less than 15 years	21003001
819	Not applicable	21003001
853	Employed	21003002
261	Unemployed	21003002
224	Discouraged work-seeker	21003002
1106	Other not economically active	21003002
0	Age less than 15 years	21003002
1600	Not applicable	21003002
290	Employed	21003003
107	Unemployed	21003003
100	Discouraged work-seeker	21003003
437	Other not economically active	21003003
0	Age less than 15 years	21003003
631	Not applicable	21003003
740	Employed	21003004
119	Unemployed	21003004
71	Discouraged work-seeker	21003004
572	Other not economically active	21003004
0	Age less than 15 years	21003004
958	Not applicable	21003004
1123	Employed	21004001
94	Unemployed	21004001
40	Discouraged work-seeker	21004001
764	Other not economically active	21004001
0	Age less than 15 years	21004001
933	Not applicable	21004001
1367	Employed	21004002
939	Unemployed	21004002
315	Discouraged work-seeker	21004002
2027	Other not economically active	21004002
0	Age less than 15 years	21004002
2450	Not applicable	21004002
1686	Employed	21004003
586	Unemployed	21004003
345	Discouraged work-seeker	21004003
1798	Other not economically active	21004003
0	Age less than 15 years	21004003
2051	Not applicable	21004003
2809	Employed	21004004
502	Unemployed	21004004
67	Discouraged work-seeker	21004004
2847	Other not economically active	21004004
0	Age less than 15 years	21004004
2244	Not applicable	21004004
1617	Employed	21004005
1321	Unemployed	21004005
615	Discouraged work-seeker	21004005
1885	Other not economically active	21004005
0	Age less than 15 years	21004005
2882	Not applicable	21004005
929	Employed	21004006
542	Unemployed	21004006
144	Discouraged work-seeker	21004006
1537	Other not economically active	21004006
0	Age less than 15 years	21004006
1555	Not applicable	21004006
695	Employed	21004007
514	Unemployed	21004007
176	Discouraged work-seeker	21004007
637	Other not economically active	21004007
0	Age less than 15 years	21004007
916	Not applicable	21004007
1243	Employed	21004008
127	Unemployed	21004008
137	Discouraged work-seeker	21004008
2055	Other not economically active	21004008
0	Age less than 15 years	21004008
1025	Not applicable	21004008
1017	Employed	21004009
910	Unemployed	21004009
319	Discouraged work-seeker	21004009
1056	Other not economically active	21004009
0	Age less than 15 years	21004009
1710	Not applicable	21004009
1407	Employed	21004010
1269	Unemployed	21004010
226	Discouraged work-seeker	21004010
1786	Other not economically active	21004010
0	Age less than 15 years	21004010
2062	Not applicable	21004010
1325	Employed	21004011
1019	Unemployed	21004011
217	Discouraged work-seeker	21004011
1972	Other not economically active	21004011
0	Age less than 15 years	21004011
2382	Not applicable	21004011
117	Employed	21004012
2	Unemployed	21004012
0	Discouraged work-seeker	21004012
2652	Other not economically active	21004012
0	Age less than 15 years	21004012
157	Not applicable	21004012
1953	Employed	21004013
793	Unemployed	21004013
348	Discouraged work-seeker	21004013
1280	Other not economically active	21004013
0	Age less than 15 years	21004013
2121	Not applicable	21004013
1946	Employed	21004014
642	Unemployed	21004014
247	Discouraged work-seeker	21004014
1792	Other not economically active	21004014
0	Age less than 15 years	21004014
2125	Not applicable	21004014
667	Employed	21005001
765	Unemployed	21005001
569	Discouraged work-seeker	21005001
1628	Other not economically active	21005001
0	Age less than 15 years	21005001
2082	Not applicable	21005001
1470	Employed	21005002
775	Unemployed	21005002
136	Discouraged work-seeker	21005002
2025	Other not economically active	21005002
0	Age less than 15 years	21005002
2542	Not applicable	21005002
1486	Employed	21005003
762	Unemployed	21005003
366	Discouraged work-seeker	21005003
1652	Other not economically active	21005003
0	Age less than 15 years	21005003
2223	Not applicable	21005003
1465	Employed	21005004
436	Unemployed	21005004
330	Discouraged work-seeker	21005004
993	Other not economically active	21005004
0	Age less than 15 years	21005004
1969	Not applicable	21005004
1316	Employed	21005005
537	Unemployed	21005005
346	Discouraged work-seeker	21005005
1894	Other not economically active	21005005
0	Age less than 15 years	21005005
2225	Not applicable	21005005
3343	Employed	21005006
645	Unemployed	21005006
278	Discouraged work-seeker	21005006
1837	Other not economically active	21005006
0	Age less than 15 years	21005006
2886	Not applicable	21005006
1155	Employed	21005007
740	Unemployed	21005007
211	Discouraged work-seeker	21005007
1540	Other not economically active	21005007
0	Age less than 15 years	21005007
1748	Not applicable	21005007
1156	Employed	21005008
724	Unemployed	21005008
184	Discouraged work-seeker	21005008
849	Other not economically active	21005008
0	Age less than 15 years	21005008
1421	Not applicable	21005008
1557	Employed	21005009
1106	Unemployed	21005009
370	Discouraged work-seeker	21005009
1297	Other not economically active	21005009
0	Age less than 15 years	21005009
2054	Not applicable	21005009
1569	Employed	21005010
102	Unemployed	21005010
34	Discouraged work-seeker	21005010
1335	Other not economically active	21005010
0	Age less than 15 years	21005010
2374	Not applicable	21005010
1233	Employed	21006001
537	Unemployed	21006001
145	Discouraged work-seeker	21006001
2179	Other not economically active	21006001
0	Age less than 15 years	21006001
1913	Not applicable	21006001
1778	Employed	21006002
319	Unemployed	21006002
98	Discouraged work-seeker	21006002
2635	Other not economically active	21006002
0	Age less than 15 years	21006002
2475	Not applicable	21006002
2397	Employed	21006003
273	Unemployed	21006003
82	Discouraged work-seeker	21006003
2329	Other not economically active	21006003
0	Age less than 15 years	21006003
2662	Not applicable	21006003
1201	Employed	21006004
693	Unemployed	21006004
161	Discouraged work-seeker	21006004
1119	Other not economically active	21006004
0	Age less than 15 years	21006004
1658	Not applicable	21006004
1386	Employed	21006005
216	Unemployed	21006005
93	Discouraged work-seeker	21006005
1834	Other not economically active	21006005
0	Age less than 15 years	21006005
1775	Not applicable	21006005
2087	Employed	21006006
196	Unemployed	21006006
82	Discouraged work-seeker	21006006
1643	Other not economically active	21006006
0	Age less than 15 years	21006006
1731	Not applicable	21006006
2848	Employed	21006007
257	Unemployed	21006007
175	Discouraged work-seeker	21006007
2670	Other not economically active	21006007
0	Age less than 15 years	21006007
2296	Not applicable	21006007
3155	Employed	21006008
353	Unemployed	21006008
308	Discouraged work-seeker	21006008
2605	Other not economically active	21006008
0	Age less than 15 years	21006008
2905	Not applicable	21006008
656	Employed	21007001
129	Unemployed	21007001
67	Discouraged work-seeker	21007001
622	Other not economically active	21007001
0	Age less than 15 years	21007001
847	Not applicable	21007001
1081	Employed	21007002
743	Unemployed	21007002
207	Discouraged work-seeker	21007002
925	Other not economically active	21007002
0	Age less than 15 years	21007002
1771	Not applicable	21007002
1455	Employed	21007003
672	Unemployed	21007003
296	Discouraged work-seeker	21007003
2318	Other not economically active	21007003
0	Age less than 15 years	21007003
2949	Not applicable	21007003
883	Employed	21007004
151	Unemployed	21007004
150	Discouraged work-seeker	21007004
729	Other not economically active	21007004
0	Age less than 15 years	21007004
1108	Not applicable	21007004
945	Employed	21008001
112	Unemployed	21008001
119	Discouraged work-seeker	21008001
281	Other not economically active	21008001
0	Age less than 15 years	21008001
669	Not applicable	21008001
994	Employed	21008002
306	Unemployed	21008002
36	Discouraged work-seeker	21008002
752	Other not economically active	21008002
0	Age less than 15 years	21008002
1048	Not applicable	21008002
242	Employed	21008003
19	Unemployed	21008003
4	Discouraged work-seeker	21008003
203	Other not economically active	21008003
0	Age less than 15 years	21008003
328	Not applicable	21008003
3471	Employed	21008004
1092	Unemployed	21008004
496	Discouraged work-seeker	21008004
4102	Other not economically active	21008004
0	Age less than 15 years	21008004
5251	Not applicable	21008004
780	Employed	21008005
122	Unemployed	21008005
79	Discouraged work-seeker	21008005
1281	Other not economically active	21008005
0	Age less than 15 years	21008005
1000	Not applicable	21008005
1663	Employed	21008006
810	Unemployed	21008006
363	Discouraged work-seeker	21008006
1211	Other not economically active	21008006
0	Age less than 15 years	21008006
1896	Not applicable	21008006
3158	Employed	21008007
874	Unemployed	21008007
121	Discouraged work-seeker	21008007
2244	Other not economically active	21008007
0	Age less than 15 years	21008007
3019	Not applicable	21008007
2616	Employed	21008008
214	Unemployed	21008008
66	Discouraged work-seeker	21008008
1771	Other not economically active	21008008
0	Age less than 15 years	21008008
3552	Not applicable	21008008
2175	Employed	21008009
745	Unemployed	21008009
230	Discouraged work-seeker	21008009
3295	Other not economically active	21008009
0	Age less than 15 years	21008009
3463	Not applicable	21008009
2262	Employed	21008010
246	Unemployed	21008010
65	Discouraged work-seeker	21008010
1767	Other not economically active	21008010
0	Age less than 15 years	21008010
2593	Not applicable	21008010
936	Employed	21008011
91	Unemployed	21008011
19	Discouraged work-seeker	21008011
675	Other not economically active	21008011
0	Age less than 15 years	21008011
1164	Not applicable	21008011
2246	Employed	21008012
512	Unemployed	21008012
205	Discouraged work-seeker	21008012
1141	Other not economically active	21008012
0	Age less than 15 years	21008012
2028	Not applicable	21008012
2346	Employed	21008013
346	Unemployed	21008013
117	Discouraged work-seeker	21008013
1595	Other not economically active	21008013
0	Age less than 15 years	21008013
2081	Not applicable	21008013
2410	Employed	21008014
832	Unemployed	21008014
135	Discouraged work-seeker	21008014
1310	Other not economically active	21008014
0	Age less than 15 years	21008014
2319	Not applicable	21008014
3919	Employed	21008015
1929	Unemployed	21008015
180	Discouraged work-seeker	21008015
2056	Other not economically active	21008015
0	Age less than 15 years	21008015
3814	Not applicable	21008015
4866	Employed	21009001
184	Unemployed	21009001
99	Discouraged work-seeker	21009001
2050	Other not economically active	21009001
0	Age less than 15 years	21009001
3458	Not applicable	21009001
2310	Employed	21009002
227	Unemployed	21009002
66	Discouraged work-seeker	21009002
1215	Other not economically active	21009002
0	Age less than 15 years	21009002
2032	Not applicable	21009002
1556	Employed	21009003
162	Unemployed	21009003
149	Discouraged work-seeker	21009003
1553	Other not economically active	21009003
0	Age less than 15 years	21009003
2075	Not applicable	21009003
2111	Employed	21009004
628	Unemployed	21009004
189	Discouraged work-seeker	21009004
1227	Other not economically active	21009004
0	Age less than 15 years	21009004
2170	Not applicable	21009004
2221	Employed	21009005
775	Unemployed	21009005
274	Discouraged work-seeker	21009005
1228	Other not economically active	21009005
0	Age less than 15 years	21009005
2404	Not applicable	21009005
1867	Employed	21009006
669	Unemployed	21009006
101	Discouraged work-seeker	21009006
1003	Other not economically active	21009006
0	Age less than 15 years	21009006
1793	Not applicable	21009006
1363	Employed	21201001
445	Unemployed	21201001
109	Discouraged work-seeker	21201001
3464	Other not economically active	21201001
0	Age less than 15 years	21201001
1694	Not applicable	21201001
1060	Employed	21201002
505	Unemployed	21201002
448	Discouraged work-seeker	21201002
2885	Other not economically active	21201002
0	Age less than 15 years	21201002
3497	Not applicable	21201002
504	Employed	21201003
467	Unemployed	21201003
673	Discouraged work-seeker	21201003
2183	Other not economically active	21201003
0	Age less than 15 years	21201003
3166	Not applicable	21201003
491	Employed	21201004
492	Unemployed	21201004
138	Discouraged work-seeker	21201004
2665	Other not economically active	21201004
0	Age less than 15 years	21201004
3192	Not applicable	21201004
632	Employed	21201005
495	Unemployed	21201005
303	Discouraged work-seeker	21201005
3644	Other not economically active	21201005
0	Age less than 15 years	21201005
4128	Not applicable	21201005
389	Employed	21201006
388	Unemployed	21201006
460	Discouraged work-seeker	21201006
2999	Other not economically active	21201006
0	Age less than 15 years	21201006
3666	Not applicable	21201006
294	Employed	21201007
506	Unemployed	21201007
427	Discouraged work-seeker	21201007
2351	Other not economically active	21201007
0	Age less than 15 years	21201007
3293	Not applicable	21201007
427	Employed	21201008
234	Unemployed	21201008
238	Discouraged work-seeker	21201008
3224	Other not economically active	21201008
0	Age less than 15 years	21201008
3836	Not applicable	21201008
2547	Employed	21201009
879	Unemployed	21201009
393	Discouraged work-seeker	21201009
3937	Other not economically active	21201009
0	Age less than 15 years	21201009
3759	Not applicable	21201009
549	Employed	21201010
608	Unemployed	21201010
600	Discouraged work-seeker	21201010
2536	Other not economically active	21201010
0	Age less than 15 years	21201010
3675	Not applicable	21201010
218	Employed	21201011
321	Unemployed	21201011
514	Discouraged work-seeker	21201011
2597	Other not economically active	21201011
0	Age less than 15 years	21201011
3925	Not applicable	21201011
260	Employed	21201012
371	Unemployed	21201012
273	Discouraged work-seeker	21201012
3377	Other not economically active	21201012
0	Age less than 15 years	21201012
3825	Not applicable	21201012
1266	Employed	21201013
478	Unemployed	21201013
202	Discouraged work-seeker	21201013
2450	Other not economically active	21201013
0	Age less than 15 years	21201013
2713	Not applicable	21201013
284	Employed	21201014
173	Unemployed	21201014
202	Discouraged work-seeker	21201014
2862	Other not economically active	21201014
0	Age less than 15 years	21201014
3897	Not applicable	21201014
551	Employed	21201015
506	Unemployed	21201015
530	Discouraged work-seeker	21201015
4296	Other not economically active	21201015
0	Age less than 15 years	21201015
5639	Not applicable	21201015
468	Employed	21201016
242	Unemployed	21201016
308	Discouraged work-seeker	21201016
4164	Other not economically active	21201016
0	Age less than 15 years	21201016
5190	Not applicable	21201016
232	Employed	21201017
496	Unemployed	21201017
412	Discouraged work-seeker	21201017
3443	Other not economically active	21201017
0	Age less than 15 years	21201017
4354	Not applicable	21201017
172	Employed	21201018
179	Unemployed	21201018
327	Discouraged work-seeker	21201018
2582	Other not economically active	21201018
0	Age less than 15 years	21201018
3189	Not applicable	21201018
542	Employed	21201019
705	Unemployed	21201019
957	Discouraged work-seeker	21201019
4123	Other not economically active	21201019
0	Age less than 15 years	21201019
6188	Not applicable	21201019
436	Employed	21201020
151	Unemployed	21201020
724	Discouraged work-seeker	21201020
3158	Other not economically active	21201020
0	Age less than 15 years	21201020
4518	Not applicable	21201020
298	Employed	21201021
356	Unemployed	21201021
299	Discouraged work-seeker	21201021
2518	Other not economically active	21201021
0	Age less than 15 years	21201021
3202	Not applicable	21201021
328	Employed	21201022
347	Unemployed	21201022
464	Discouraged work-seeker	21201022
2781	Other not economically active	21201022
0	Age less than 15 years	21201022
3866	Not applicable	21201022
476	Employed	21201023
405	Unemployed	21201023
446	Discouraged work-seeker	21201023
3048	Other not economically active	21201023
0	Age less than 15 years	21201023
4321	Not applicable	21201023
405	Employed	21201024
340	Unemployed	21201024
233	Discouraged work-seeker	21201024
2582	Other not economically active	21201024
0	Age less than 15 years	21201024
3387	Not applicable	21201024
1154	Employed	21201025
672	Unemployed	21201025
376	Discouraged work-seeker	21201025
2573	Other not economically active	21201025
0	Age less than 15 years	21201025
2972	Not applicable	21201025
339	Employed	21201026
346	Unemployed	21201026
320	Discouraged work-seeker	21201026
3788	Other not economically active	21201026
0	Age less than 15 years	21201026
4544	Not applicable	21201026
404	Employed	21201027
375	Unemployed	21201027
282	Discouraged work-seeker	21201027
2105	Other not economically active	21201027
0	Age less than 15 years	21201027
3050	Not applicable	21201027
607	Employed	21201028
563	Unemployed	21201028
426	Discouraged work-seeker	21201028
3516	Other not economically active	21201028
0	Age less than 15 years	21201028
4264	Not applicable	21201028
363	Employed	21201029
310	Unemployed	21201029
307	Discouraged work-seeker	21201029
2547	Other not economically active	21201029
0	Age less than 15 years	21201029
2924	Not applicable	21201029
512	Employed	21201030
444	Unemployed	21201030
526	Discouraged work-seeker	21201030
3000	Other not economically active	21201030
0	Age less than 15 years	21201030
4006	Not applicable	21201030
208	Employed	21201031
261	Unemployed	21201031
243	Discouraged work-seeker	21201031
3014	Other not economically active	21201031
0	Age less than 15 years	21201031
3617	Not applicable	21201031
2195	Employed	21202001
942	Unemployed	21202001
78	Discouraged work-seeker	21202001
1322	Other not economically active	21202001
0	Age less than 15 years	21202001
1627	Not applicable	21202001
2068	Employed	21202002
1347	Unemployed	21202002
228	Discouraged work-seeker	21202002
1789	Other not economically active	21202002
0	Age less than 15 years	21202002
2496	Not applicable	21202002
1792	Employed	21202003
819	Unemployed	21202003
196	Discouraged work-seeker	21202003
2183	Other not economically active	21202003
0	Age less than 15 years	21202003
2615	Not applicable	21202003
2290	Employed	21202004
862	Unemployed	21202004
224	Discouraged work-seeker	21202004
2071	Other not economically active	21202004
0	Age less than 15 years	21202004
2795	Not applicable	21202004
1998	Employed	21202005
1067	Unemployed	21202005
371	Discouraged work-seeker	21202005
2975	Other not economically active	21202005
0	Age less than 15 years	21202005
3170	Not applicable	21202005
584	Employed	21202006
420	Unemployed	21202006
124	Discouraged work-seeker	21202006
3887	Other not economically active	21202006
0	Age less than 15 years	21202006
1149	Not applicable	21202006
923	Employed	21202007
785	Unemployed	21202007
429	Discouraged work-seeker	21202007
3239	Other not economically active	21202007
0	Age less than 15 years	21202007
3436	Not applicable	21202007
571	Employed	21202008
377	Unemployed	21202008
253	Discouraged work-seeker	21202008
2920	Other not economically active	21202008
0	Age less than 15 years	21202008
3060	Not applicable	21202008
814	Employed	21202009
897	Unemployed	21202009
518	Discouraged work-seeker	21202009
2436	Other not economically active	21202009
0	Age less than 15 years	21202009
3295	Not applicable	21202009
310	Employed	21202010
560	Unemployed	21202010
383	Discouraged work-seeker	21202010
2214	Other not economically active	21202010
0	Age less than 15 years	21202010
3002	Not applicable	21202010
375	Employed	21202011
493	Unemployed	21202011
607	Discouraged work-seeker	21202011
2679	Other not economically active	21202011
0	Age less than 15 years	21202011
3762	Not applicable	21202011
600	Employed	21202012
640	Unemployed	21202012
494	Discouraged work-seeker	21202012
2465	Other not economically active	21202012
0	Age less than 15 years	21202012
3259	Not applicable	21202012
579	Employed	21202013
567	Unemployed	21202013
289	Discouraged work-seeker	21202013
2540	Other not economically active	21202013
0	Age less than 15 years	21202013
3181	Not applicable	21202013
409	Employed	21202014
484	Unemployed	21202014
489	Discouraged work-seeker	21202014
2504	Other not economically active	21202014
0	Age less than 15 years	21202014
3552	Not applicable	21202014
244	Employed	21202015
259	Unemployed	21202015
313	Discouraged work-seeker	21202015
2180	Other not economically active	21202015
0	Age less than 15 years	21202015
3125	Not applicable	21202015
725	Employed	21202016
428	Unemployed	21202016
586	Discouraged work-seeker	21202016
2229	Other not economically active	21202016
0	Age less than 15 years	21202016
3472	Not applicable	21202016
632	Employed	21202017
851	Unemployed	21202017
399	Discouraged work-seeker	21202017
2484	Other not economically active	21202017
0	Age less than 15 years	21202017
3610	Not applicable	21202017
878	Employed	21202018
749	Unemployed	21202018
304	Discouraged work-seeker	21202018
3166	Other not economically active	21202018
0	Age less than 15 years	21202018
3506	Not applicable	21202018
378	Employed	21202019
613	Unemployed	21202019
330	Discouraged work-seeker	21202019
2773	Other not economically active	21202019
0	Age less than 15 years	21202019
3428	Not applicable	21202019
406	Employed	21202020
400	Unemployed	21202020
437	Discouraged work-seeker	21202020
2760	Other not economically active	21202020
0	Age less than 15 years	21202020
3400	Not applicable	21202020
659	Employed	21202021
293	Unemployed	21202021
568	Discouraged work-seeker	21202021
2683	Other not economically active	21202021
0	Age less than 15 years	21202021
3534	Not applicable	21202021
555	Employed	21202022
385	Unemployed	21202022
759	Discouraged work-seeker	21202022
3214	Other not economically active	21202022
0	Age less than 15 years	21202022
4781	Not applicable	21202022
407	Employed	21202023
825	Unemployed	21202023
454	Discouraged work-seeker	21202023
2227	Other not economically active	21202023
0	Age less than 15 years	21202023
3582	Not applicable	21202023
456	Employed	21202024
505	Unemployed	21202024
700	Discouraged work-seeker	21202024
3541	Other not economically active	21202024
0	Age less than 15 years	21202024
4997	Not applicable	21202024
557	Employed	21202025
410	Unemployed	21202025
737	Discouraged work-seeker	21202025
4317	Other not economically active	21202025
0	Age less than 15 years	21202025
5590	Not applicable	21202025
422	Employed	21202026
508	Unemployed	21202026
535	Discouraged work-seeker	21202026
4026	Other not economically active	21202026
0	Age less than 15 years	21202026
4999	Not applicable	21202026
318	Employed	21202027
383	Unemployed	21202027
416	Discouraged work-seeker	21202027
3804	Other not economically active	21202027
0	Age less than 15 years	21202027
4539	Not applicable	21202027
293	Employed	21202028
688	Unemployed	21202028
453	Discouraged work-seeker	21202028
2939	Other not economically active	21202028
0	Age less than 15 years	21202028
4407	Not applicable	21202028
432	Employed	21202029
623	Unemployed	21202029
488	Discouraged work-seeker	21202029
3290	Other not economically active	21202029
0	Age less than 15 years	21202029
4061	Not applicable	21202029
683	Employed	21202030
350	Unemployed	21202030
403	Discouraged work-seeker	21202030
2760	Other not economically active	21202030
0	Age less than 15 years	21202030
3350	Not applicable	21202030
407	Employed	21202031
486	Unemployed	21202031
214	Discouraged work-seeker	21202031
3775	Other not economically active	21202031
0	Age less than 15 years	21202031
4466	Not applicable	21202031
1772	Employed	21203001
535	Unemployed	21203001
487	Discouraged work-seeker	21203001
1525	Other not economically active	21203001
0	Age less than 15 years	21203001
2355	Not applicable	21203001
401	Employed	21203002
221	Unemployed	21203002
263	Discouraged work-seeker	21203002
1692	Other not economically active	21203002
0	Age less than 15 years	21203002
1759	Not applicable	21203002
512	Employed	21203003
310	Unemployed	21203003
516	Discouraged work-seeker	21203003
2070	Other not economically active	21203003
0	Age less than 15 years	21203003
2234	Not applicable	21203003
464	Employed	21203004
542	Unemployed	21203004
441	Discouraged work-seeker	21203004
1972	Other not economically active	21203004
0	Age less than 15 years	21203004
2540	Not applicable	21203004
1052	Employed	21203005
431	Unemployed	21203005
394	Discouraged work-seeker	21203005
1496	Other not economically active	21203005
0	Age less than 15 years	21203005
1973	Not applicable	21203005
1323	Employed	21203006
433	Unemployed	21203006
565	Discouraged work-seeker	21203006
1409	Other not economically active	21203006
0	Age less than 15 years	21203006
1985	Not applicable	21203006
1155	Employed	21203007
363	Unemployed	21203007
270	Discouraged work-seeker	21203007
1565	Other not economically active	21203007
0	Age less than 15 years	21203007
1967	Not applicable	21203007
617	Employed	21204001
385	Unemployed	21204001
424	Discouraged work-seeker	21204001
1703	Other not economically active	21204001
0	Age less than 15 years	21204001
2352	Not applicable	21204001
1617	Employed	21204002
702	Unemployed	21204002
374	Discouraged work-seeker	21204002
1976	Other not economically active	21204002
0	Age less than 15 years	21204002
2647	Not applicable	21204002
745	Employed	21204003
303	Unemployed	21204003
276	Discouraged work-seeker	21204003
2164	Other not economically active	21204003
0	Age less than 15 years	21204003
2524	Not applicable	21204003
1540	Employed	21204004
326	Unemployed	21204004
535	Discouraged work-seeker	21204004
1665	Other not economically active	21204004
0	Age less than 15 years	21204004
2538	Not applicable	21204004
971	Employed	21204005
636	Unemployed	21204005
529	Discouraged work-seeker	21204005
1912	Other not economically active	21204005
0	Age less than 15 years	21204005
2874	Not applicable	21204005
1749	Employed	21204006
782	Unemployed	21204006
370	Discouraged work-seeker	21204006
1958	Other not economically active	21204006
0	Age less than 15 years	21204006
2684	Not applicable	21204006
484	Employed	21204007
378	Unemployed	21204007
329	Discouraged work-seeker	21204007
2212	Other not economically active	21204007
0	Age less than 15 years	21204007
2192	Not applicable	21204007
500	Employed	21204008
504	Unemployed	21204008
490	Discouraged work-seeker	21204008
2233	Other not economically active	21204008
0	Age less than 15 years	21204008
2631	Not applicable	21204008
751	Employed	21204009
436	Unemployed	21204009
492	Discouraged work-seeker	21204009
1426	Other not economically active	21204009
0	Age less than 15 years	21204009
2021	Not applicable	21204009
605	Employed	21204010
344	Unemployed	21204010
502	Discouraged work-seeker	21204010
1710	Other not economically active	21204010
0	Age less than 15 years	21204010
1899	Not applicable	21204010
304	Employed	21204011
376	Unemployed	21204011
284	Discouraged work-seeker	21204011
1967	Other not economically active	21204011
0	Age less than 15 years	21204011
2202	Not applicable	21204011
404	Employed	21204012
252	Unemployed	21204012
462	Discouraged work-seeker	21204012
2666	Other not economically active	21204012
0	Age less than 15 years	21204012
3724	Not applicable	21204012
349	Employed	21204013
284	Unemployed	21204013
349	Discouraged work-seeker	21204013
1699	Other not economically active	21204013
0	Age less than 15 years	21204013
2394	Not applicable	21204013
816	Employed	21204014
547	Unemployed	21204014
463	Discouraged work-seeker	21204014
2405	Other not economically active	21204014
0	Age less than 15 years	21204014
2856	Not applicable	21204014
904	Employed	21204015
735	Unemployed	21204015
540	Discouraged work-seeker	21204015
1339	Other not economically active	21204015
0	Age less than 15 years	21204015
2149	Not applicable	21204015
1254	Employed	21204016
997	Unemployed	21204016
455	Discouraged work-seeker	21204016
2037	Other not economically active	21204016
0	Age less than 15 years	21204016
2800	Not applicable	21204016
1755	Employed	21204017
222	Unemployed	21204017
210	Discouraged work-seeker	21204017
1229	Other not economically active	21204017
0	Age less than 15 years	21204017
1719	Not applicable	21204017
724	Employed	21204018
469	Unemployed	21204018
487	Discouraged work-seeker	21204018
1705	Other not economically active	21204018
0	Age less than 15 years	21204018
2180	Not applicable	21204018
428	Employed	21204019
300	Unemployed	21204019
649	Discouraged work-seeker	21204019
1959	Other not economically active	21204019
0	Age less than 15 years	21204019
2311	Not applicable	21204019
780	Employed	21204020
777	Unemployed	21204020
510	Discouraged work-seeker	21204020
1989	Other not economically active	21204020
0	Age less than 15 years	21204020
2347	Not applicable	21204020
351	Employed	21206001
394	Unemployed	21206001
368	Discouraged work-seeker	21206001
1899	Other not economically active	21206001
0	Age less than 15 years	21206001
2543	Not applicable	21206001
476	Employed	21206002
533	Unemployed	21206002
457	Discouraged work-seeker	21206002
1953	Other not economically active	21206002
0	Age less than 15 years	21206002
2544	Not applicable	21206002
339	Employed	21206003
554	Unemployed	21206003
438	Discouraged work-seeker	21206003
1939	Other not economically active	21206003
0	Age less than 15 years	21206003
2561	Not applicable	21206003
360	Employed	21206004
596	Unemployed	21206004
358	Discouraged work-seeker	21206004
1829	Other not economically active	21206004
0	Age less than 15 years	21206004
2416	Not applicable	21206004
499	Employed	21206005
452	Unemployed	21206005
437	Discouraged work-seeker	21206005
2018	Other not economically active	21206005
0	Age less than 15 years	21206005
2659	Not applicable	21206005
410	Employed	21206006
550	Unemployed	21206006
387	Discouraged work-seeker	21206006
1735	Other not economically active	21206006
0	Age less than 15 years	21206006
2261	Not applicable	21206006
570	Employed	21206007
647	Unemployed	21206007
382	Discouraged work-seeker	21206007
2032	Other not economically active	21206007
0	Age less than 15 years	21206007
2418	Not applicable	21206007
512	Employed	21206008
605	Unemployed	21206008
481	Discouraged work-seeker	21206008
1569	Other not economically active	21206008
0	Age less than 15 years	21206008
2223	Not applicable	21206008
452	Employed	21206009
469	Unemployed	21206009
467	Discouraged work-seeker	21206009
1353	Other not economically active	21206009
0	Age less than 15 years	21206009
2155	Not applicable	21206009
871	Employed	21206010
1062	Unemployed	21206010
297	Discouraged work-seeker	21206010
1153	Other not economically active	21206010
0	Age less than 15 years	21206010
1629	Not applicable	21206010
847	Employed	21206011
439	Unemployed	21206011
681	Discouraged work-seeker	21206011
1717	Other not economically active	21206011
0	Age less than 15 years	21206011
2279	Not applicable	21206011
347	Employed	21206012
348	Unemployed	21206012
504	Discouraged work-seeker	21206012
1592	Other not economically active	21206012
0	Age less than 15 years	21206012
1991	Not applicable	21206012
308	Employed	21206013
448	Unemployed	21206013
561	Discouraged work-seeker	21206013
1900	Other not economically active	21206013
0	Age less than 15 years	21206013
2561	Not applicable	21206013
241	Employed	21207001
383	Unemployed	21207001
366	Discouraged work-seeker	21207001
1561	Other not economically active	21207001
0	Age less than 15 years	21207001
2270	Not applicable	21207001
507	Employed	21207002
644	Unemployed	21207002
170	Discouraged work-seeker	21207002
2214	Other not economically active	21207002
0	Age less than 15 years	21207002
2268	Not applicable	21207002
609	Employed	21207003
942	Unemployed	21207003
323	Discouraged work-seeker	21207003
1476	Other not economically active	21207003
0	Age less than 15 years	21207003
2126	Not applicable	21207003
1204	Employed	21207004
818	Unemployed	21207004
493	Discouraged work-seeker	21207004
2165	Other not economically active	21207004
0	Age less than 15 years	21207004
2779	Not applicable	21207004
425	Employed	21207005
566	Unemployed	21207005
484	Discouraged work-seeker	21207005
1726	Other not economically active	21207005
0	Age less than 15 years	21207005
2361	Not applicable	21207005
1705	Employed	21207006
557	Unemployed	21207006
411	Discouraged work-seeker	21207006
1535	Other not economically active	21207006
0	Age less than 15 years	21207006
1935	Not applicable	21207006
649	Employed	21207007
568	Unemployed	21207007
706	Discouraged work-seeker	21207007
1746	Other not economically active	21207007
0	Age less than 15 years	21207007
2536	Not applicable	21207007
1174	Employed	21207008
778	Unemployed	21207008
381	Discouraged work-seeker	21207008
2092	Other not economically active	21207008
0	Age less than 15 years	21207008
2672	Not applicable	21207008
835	Employed	21207009
956	Unemployed	21207009
801	Discouraged work-seeker	21207009
2340	Other not economically active	21207009
0	Age less than 15 years	21207009
3271	Not applicable	21207009
685	Employed	21207010
383	Unemployed	21207010
327	Discouraged work-seeker	21207010
2180	Other not economically active	21207010
0	Age less than 15 years	21207010
2305	Not applicable	21207010
217	Employed	21207011
188	Unemployed	21207011
203	Discouraged work-seeker	21207011
3256	Other not economically active	21207011
0	Age less than 15 years	21207011
787	Not applicable	21207011
497	Employed	21207012
926	Unemployed	21207012
311	Discouraged work-seeker	21207012
1550	Other not economically active	21207012
0	Age less than 15 years	21207012
2321	Not applicable	21207012
394	Employed	21207013
660	Unemployed	21207013
1053	Discouraged work-seeker	21207013
1777	Other not economically active	21207013
0	Age less than 15 years	21207013
2676	Not applicable	21207013
255	Employed	21207014
573	Unemployed	21207014
494	Discouraged work-seeker	21207014
1799	Other not economically active	21207014
0	Age less than 15 years	21207014
2841	Not applicable	21207014
688	Employed	21207015
829	Unemployed	21207015
291	Discouraged work-seeker	21207015
3728	Other not economically active	21207015
0	Age less than 15 years	21207015
1950	Not applicable	21207015
687	Employed	21207016
833	Unemployed	21207016
354	Discouraged work-seeker	21207016
2522	Other not economically active	21207016
0	Age less than 15 years	21207016
2387	Not applicable	21207016
311	Employed	21207017
461	Unemployed	21207017
398	Discouraged work-seeker	21207017
1600	Other not economically active	21207017
0	Age less than 15 years	21207017
2078	Not applicable	21207017
542	Employed	21207018
697	Unemployed	21207018
750	Discouraged work-seeker	21207018
1746	Other not economically active	21207018
0	Age less than 15 years	21207018
2592	Not applicable	21207018
300	Employed	21207019
466	Unemployed	21207019
374	Discouraged work-seeker	21207019
1676	Other not economically active	21207019
0	Age less than 15 years	21207019
2191	Not applicable	21207019
1024	Employed	21207020
434	Unemployed	21207020
223	Discouraged work-seeker	21207020
1953	Other not economically active	21207020
0	Age less than 15 years	21207020
1722	Not applicable	21207020
1321	Employed	21207021
570	Unemployed	21207021
640	Discouraged work-seeker	21207021
1128	Other not economically active	21207021
0	Age less than 15 years	21207021
2224	Not applicable	21207021
1178	Employed	21208001
939	Unemployed	21208001
185	Discouraged work-seeker	21208001
1118	Other not economically active	21208001
0	Age less than 15 years	21208001
1947	Not applicable	21208001
577	Employed	21208002
896	Unemployed	21208002
247	Discouraged work-seeker	21208002
912	Other not economically active	21208002
0	Age less than 15 years	21208002
1639	Not applicable	21208002
636	Employed	21208003
378	Unemployed	21208003
146	Discouraged work-seeker	21208003
890	Other not economically active	21208003
0	Age less than 15 years	21208003
1335	Not applicable	21208003
2393	Employed	21208004
1257	Unemployed	21208004
866	Discouraged work-seeker	21208004
2319	Other not economically active	21208004
0	Age less than 15 years	21208004
4406	Not applicable	21208004
1010	Employed	21301001
1058	Unemployed	21301001
403	Discouraged work-seeker	21301001
1801	Other not economically active	21301001
0	Age less than 15 years	21301001
2657	Not applicable	21301001
827	Employed	21301002
580	Unemployed	21301002
294	Discouraged work-seeker	21301002
1812	Other not economically active	21301002
0	Age less than 15 years	21301002
2054	Not applicable	21301002
677	Employed	21301003
700	Unemployed	21301003
357	Discouraged work-seeker	21301003
1450	Other not economically active	21301003
0	Age less than 15 years	21301003
1732	Not applicable	21301003
1389	Employed	21301004
403	Unemployed	21301004
434	Discouraged work-seeker	21301004
1869	Other not economically active	21301004
0	Age less than 15 years	21301004
2411	Not applicable	21301004
3588	Employed	21301005
262	Unemployed	21301005
60	Discouraged work-seeker	21301005
2264	Other not economically active	21301005
0	Age less than 15 years	21301005
2576	Not applicable	21301005
4702	Employed	21301006
896	Unemployed	21301006
516	Discouraged work-seeker	21301006
2116	Other not economically active	21301006
0	Age less than 15 years	21301006
4004	Not applicable	21301006
1676	Employed	21301007
625	Unemployed	21301007
325	Discouraged work-seeker	21301007
2486	Other not economically active	21301007
0	Age less than 15 years	21301007
3291	Not applicable	21301007
1356	Employed	21301008
763	Unemployed	21301008
172	Discouraged work-seeker	21301008
1874	Other not economically active	21301008
0	Age less than 15 years	21301008
2209	Not applicable	21301008
1609	Employed	21301009
528	Unemployed	21301009
97	Discouraged work-seeker	21301009
1392	Other not economically active	21301009
0	Age less than 15 years	21301009
2255	Not applicable	21301009
507	Employed	21302001
377	Unemployed	21302001
451	Discouraged work-seeker	21302001
2613	Other not economically active	21302001
0	Age less than 15 years	21302001
3154	Not applicable	21302001
698	Employed	21302002
551	Unemployed	21302002
268	Discouraged work-seeker	21302002
1743	Other not economically active	21302002
0	Age less than 15 years	21302002
2383	Not applicable	21302002
567	Employed	21302003
486	Unemployed	21302003
374	Discouraged work-seeker	21302003
3005	Other not economically active	21302003
0	Age less than 15 years	21302003
3197	Not applicable	21302003
900	Employed	21302004
567	Unemployed	21302004
372	Discouraged work-seeker	21302004
1694	Other not economically active	21302004
0	Age less than 15 years	21302004
2526	Not applicable	21302004
1732	Employed	21302005
740	Unemployed	21302005
347	Discouraged work-seeker	21302005
1525	Other not economically active	21302005
0	Age less than 15 years	21302005
2505	Not applicable	21302005
441	Employed	21303001
754	Unemployed	21303001
302	Discouraged work-seeker	21303001
1251	Other not economically active	21303001
0	Age less than 15 years	21303001
1793	Not applicable	21303001
2073	Employed	21303002
464	Unemployed	21303002
181	Discouraged work-seeker	21303002
1412	Other not economically active	21303002
0	Age less than 15 years	21303002
1860	Not applicable	21303002
832	Employed	21303003
630	Unemployed	21303003
432	Discouraged work-seeker	21303003
1615	Other not economically active	21303003
0	Age less than 15 years	21303003
2338	Not applicable	21303003
727	Employed	21303004
791	Unemployed	21303004
238	Discouraged work-seeker	21303004
1600	Other not economically active	21303004
0	Age less than 15 years	21303004
2236	Not applicable	21303004
972	Employed	21304001
734	Unemployed	21304001
721	Discouraged work-seeker	21304001
2624	Other not economically active	21304001
0	Age less than 15 years	21304001
3855	Not applicable	21304001
743	Employed	21304002
713	Unemployed	21304002
450	Discouraged work-seeker	21304002
2159	Other not economically active	21304002
0	Age less than 15 years	21304002
2855	Not applicable	21304002
355	Employed	21304003
671	Unemployed	21304003
375	Discouraged work-seeker	21304003
2284	Other not economically active	21304003
0	Age less than 15 years	21304003
3015	Not applicable	21304003
1230	Employed	21304004
547	Unemployed	21304004
205	Discouraged work-seeker	21304004
1610	Other not economically active	21304004
0	Age less than 15 years	21304004
1832	Not applicable	21304004
432	Employed	21304005
317	Unemployed	21304005
391	Discouraged work-seeker	21304005
2418	Other not economically active	21304005
0	Age less than 15 years	21304005
2420	Not applicable	21304005
2284	Employed	21304006
575	Unemployed	21304006
135	Discouraged work-seeker	21304006
2014	Other not economically active	21304006
0	Age less than 15 years	21304006
2119	Not applicable	21304006
1947	Employed	21304007
2126	Unemployed	21304007
340	Discouraged work-seeker	21304007
2212	Other not economically active	21304007
0	Age less than 15 years	21304007
3839	Not applicable	21304007
1172	Employed	21304008
819	Unemployed	21304008
339	Discouraged work-seeker	21304008
1969	Other not economically active	21304008
0	Age less than 15 years	21304008
2386	Not applicable	21304008
641	Employed	21304009
697	Unemployed	21304009
418	Discouraged work-seeker	21304009
2197	Other not economically active	21304009
0	Age less than 15 years	21304009
2956	Not applicable	21304009
494	Employed	21304010
488	Unemployed	21304010
205	Discouraged work-seeker	21304010
1347	Other not economically active	21304010
0	Age less than 15 years	21304010
1771	Not applicable	21304010
930	Employed	21304011
702	Unemployed	21304011
1052	Discouraged work-seeker	21304011
2301	Other not economically active	21304011
0	Age less than 15 years	21304011
3226	Not applicable	21304011
332	Employed	21304012
265	Unemployed	21304012
446	Discouraged work-seeker	21304012
2057	Other not economically active	21304012
0	Age less than 15 years	21304012
2569	Not applicable	21304012
265	Employed	21304013
281	Unemployed	21304013
224	Discouraged work-seeker	21304013
2198	Other not economically active	21304013
0	Age less than 15 years	21304013
2525	Not applicable	21304013
560	Employed	21304014
712	Unemployed	21304014
453	Discouraged work-seeker	21304014
1777	Other not economically active	21304014
0	Age less than 15 years	21304014
2565	Not applicable	21304014
874	Employed	21304015
434	Unemployed	21304015
269	Discouraged work-seeker	21304015
1426	Other not economically active	21304015
0	Age less than 15 years	21304015
1819	Not applicable	21304015
982	Employed	21304016
482	Unemployed	21304016
504	Discouraged work-seeker	21304016
1760	Other not economically active	21304016
0	Age less than 15 years	21304016
2365	Not applicable	21304016
696	Employed	21304017
737	Unemployed	21304017
670	Discouraged work-seeker	21304017
2036	Other not economically active	21304017
0	Age less than 15 years	21304017
2897	Not applicable	21304017
2806	Employed	21304018
1159	Unemployed	21304018
566	Discouraged work-seeker	21304018
3448	Other not economically active	21304018
0	Age less than 15 years	21304018
4559	Not applicable	21304018
2062	Employed	21304019
780	Unemployed	21304019
196	Discouraged work-seeker	21304019
2731	Other not economically active	21304019
0	Age less than 15 years	21304019
3067	Not applicable	21304019
1369	Employed	21304020
694	Unemployed	21304020
528	Discouraged work-seeker	21304020
1616	Other not economically active	21304020
0	Age less than 15 years	21304020
2227	Not applicable	21304020
1318	Employed	21304021
994	Unemployed	21304021
256	Discouraged work-seeker	21304021
1449	Other not economically active	21304021
0	Age less than 15 years	21304021
2084	Not applicable	21304021
1761	Employed	21304022
1194	Unemployed	21304022
105	Discouraged work-seeker	21304022
2183	Other not economically active	21304022
0	Age less than 15 years	21304022
2737	Not applicable	21304022
970	Employed	21304023
359	Unemployed	21304023
120	Discouraged work-seeker	21304023
1646	Other not economically active	21304023
0	Age less than 15 years	21304023
1580	Not applicable	21304023
1391	Employed	21304024
1000	Unemployed	21304024
158	Discouraged work-seeker	21304024
1393	Other not economically active	21304024
0	Age less than 15 years	21304024
1585	Not applicable	21304024
2543	Employed	21304025
1225	Unemployed	21304025
231	Discouraged work-seeker	21304025
2285	Other not economically active	21304025
0	Age less than 15 years	21304025
3145	Not applicable	21304025
3444	Employed	21304026
260	Unemployed	21304026
149	Discouraged work-seeker	21304026
2786	Other not economically active	21304026
0	Age less than 15 years	21304026
2749	Not applicable	21304026
1079	Employed	21304027
649	Unemployed	21304027
561	Discouraged work-seeker	21304027
2066	Other not economically active	21304027
0	Age less than 15 years	21304027
2656	Not applicable	21304027
343	Employed	21305001
509	Unemployed	21305001
337	Discouraged work-seeker	21305001
2483	Other not economically active	21305001
0	Age less than 15 years	21305001
3633	Not applicable	21305001
360	Employed	21305002
379	Unemployed	21305002
447	Discouraged work-seeker	21305002
1927	Other not economically active	21305002
0	Age less than 15 years	21305002
2599	Not applicable	21305002
315	Employed	21305003
448	Unemployed	21305003
254	Discouraged work-seeker	21305003
2429	Other not economically active	21305003
0	Age less than 15 years	21305003
3314	Not applicable	21305003
585	Employed	21305004
780	Unemployed	21305004
515	Discouraged work-seeker	21305004
2315	Other not economically active	21305004
0	Age less than 15 years	21305004
3556	Not applicable	21305004
448	Employed	21305005
432	Unemployed	21305005
369	Discouraged work-seeker	21305005
2876	Other not economically active	21305005
0	Age less than 15 years	21305005
3890	Not applicable	21305005
411	Employed	21305006
551	Unemployed	21305006
325	Discouraged work-seeker	21305006
2563	Other not economically active	21305006
0	Age less than 15 years	21305006
3396	Not applicable	21305006
338	Employed	21305007
333	Unemployed	21305007
511	Discouraged work-seeker	21305007
2144	Other not economically active	21305007
0	Age less than 15 years	21305007
3090	Not applicable	21305007
1063	Employed	21305008
733	Unemployed	21305008
490	Discouraged work-seeker	21305008
2124	Other not economically active	21305008
0	Age less than 15 years	21305008
3028	Not applicable	21305008
187	Employed	21305009
247	Unemployed	21305009
158	Discouraged work-seeker	21305009
2392	Other not economically active	21305009
0	Age less than 15 years	21305009
2676	Not applicable	21305009
351	Employed	21305010
450	Unemployed	21305010
315	Discouraged work-seeker	21305010
2187	Other not economically active	21305010
0	Age less than 15 years	21305010
2846	Not applicable	21305010
183	Employed	21305011
120	Unemployed	21305011
450	Discouraged work-seeker	21305011
1886	Other not economically active	21305011
0	Age less than 15 years	21305011
2512	Not applicable	21305011
320	Employed	21305012
219	Unemployed	21305012
380	Discouraged work-seeker	21305012
2388	Other not economically active	21305012
0	Age less than 15 years	21305012
3107	Not applicable	21305012
409	Employed	21305013
500	Unemployed	21305013
398	Discouraged work-seeker	21305013
2601	Other not economically active	21305013
0	Age less than 15 years	21305013
3538	Not applicable	21305013
2493	Employed	21305014
740	Unemployed	21305014
237	Discouraged work-seeker	21305014
2815	Other not economically active	21305014
0	Age less than 15 years	21305014
2498	Not applicable	21305014
578	Employed	21305015
642	Unemployed	21305015
350	Discouraged work-seeker	21305015
2455	Other not economically active	21305015
0	Age less than 15 years	21305015
3157	Not applicable	21305015
446	Employed	21305016
377	Unemployed	21305016
379	Discouraged work-seeker	21305016
3139	Other not economically active	21305016
0	Age less than 15 years	21305016
4098	Not applicable	21305016
563	Employed	21305017
456	Unemployed	21305017
418	Discouraged work-seeker	21305017
2334	Other not economically active	21305017
0	Age less than 15 years	21305017
3261	Not applicable	21305017
436	Employed	21305018
623	Unemployed	21305018
523	Discouraged work-seeker	21305018
2416	Other not economically active	21305018
0	Age less than 15 years	21305018
3417	Not applicable	21305018
275	Employed	21305019
241	Unemployed	21305019
413	Discouraged work-seeker	21305019
1869	Other not economically active	21305019
0	Age less than 15 years	21305019
2591	Not applicable	21305019
265	Employed	21305020
215	Unemployed	21305020
390	Discouraged work-seeker	21305020
2172	Other not economically active	21305020
0	Age less than 15 years	21305020
2942	Not applicable	21305020
371	Employed	21305021
368	Unemployed	21305021
499	Discouraged work-seeker	21305021
2565	Other not economically active	21305021
0	Age less than 15 years	21305021
3882	Not applicable	21305021
388	Employed	21306001
373	Unemployed	21306001
745	Discouraged work-seeker	21306001
2274	Other not economically active	21306001
0	Age less than 15 years	21306001
3252	Not applicable	21306001
301	Employed	21306002
258	Unemployed	21306002
445	Discouraged work-seeker	21306002
1971	Other not economically active	21306002
0	Age less than 15 years	21306002
2871	Not applicable	21306002
308	Employed	21306003
273	Unemployed	21306003
543	Discouraged work-seeker	21306003
2481	Other not economically active	21306003
0	Age less than 15 years	21306003
3295	Not applicable	21306003
1094	Employed	21306004
853	Unemployed	21306004
271	Discouraged work-seeker	21306004
1902	Other not economically active	21306004
0	Age less than 15 years	21306004
2839	Not applicable	21306004
900	Employed	21306005
892	Unemployed	21306005
533	Discouraged work-seeker	21306005
3217	Other not economically active	21306005
0	Age less than 15 years	21306005
4106	Not applicable	21306005
340	Employed	21306006
568	Unemployed	21306006
364	Discouraged work-seeker	21306006
2780	Other not economically active	21306006
0	Age less than 15 years	21306006
3726	Not applicable	21306006
336	Employed	21306007
333	Unemployed	21306007
447	Discouraged work-seeker	21306007
3311	Other not economically active	21306007
0	Age less than 15 years	21306007
3883	Not applicable	21306007
375	Employed	21306008
580	Unemployed	21306008
436	Discouraged work-seeker	21306008
2946	Other not economically active	21306008
0	Age less than 15 years	21306008
3568	Not applicable	21306008
384	Employed	21306009
389	Unemployed	21306009
373	Discouraged work-seeker	21306009
2449	Other not economically active	21306009
0	Age less than 15 years	21306009
3160	Not applicable	21306009
433	Employed	21306010
240	Unemployed	21306010
219	Discouraged work-seeker	21306010
2271	Other not economically active	21306010
0	Age less than 15 years	21306010
2708	Not applicable	21306010
788	Employed	21306011
700	Unemployed	21306011
325	Discouraged work-seeker	21306011
2225	Other not economically active	21306011
0	Age less than 15 years	21306011
2877	Not applicable	21306011
377	Employed	21306012
389	Unemployed	21306012
544	Discouraged work-seeker	21306012
2331	Other not economically active	21306012
0	Age less than 15 years	21306012
3103	Not applicable	21306012
401	Employed	21306013
247	Unemployed	21306013
363	Discouraged work-seeker	21306013
2007	Other not economically active	21306013
0	Age less than 15 years	21306013
2800	Not applicable	21306013
891	Employed	21306014
520	Unemployed	21306014
459	Discouraged work-seeker	21306014
2521	Other not economically active	21306014
0	Age less than 15 years	21306014
3359	Not applicable	21306014
1092	Employed	21306015
568	Unemployed	21306015
301	Discouraged work-seeker	21306015
2215	Other not economically active	21306015
0	Age less than 15 years	21306015
2726	Not applicable	21306015
687	Employed	21306016
406	Unemployed	21306016
278	Discouraged work-seeker	21306016
2240	Other not economically active	21306016
0	Age less than 15 years	21306016
2691	Not applicable	21306016
248	Employed	21306017
482	Unemployed	21306017
213	Discouraged work-seeker	21306017
2309	Other not economically active	21306017
0	Age less than 15 years	21306017
2772	Not applicable	21306017
173	Employed	21307001
195	Unemployed	21307001
393	Discouraged work-seeker	21307001
2335	Other not economically active	21307001
0	Age less than 15 years	21307001
2963	Not applicable	21307001
286	Employed	21307002
313	Unemployed	21307002
445	Discouraged work-seeker	21307002
2414	Other not economically active	21307002
0	Age less than 15 years	21307002
3213	Not applicable	21307002
446	Employed	21307003
360	Unemployed	21307003
277	Discouraged work-seeker	21307003
1916	Other not economically active	21307003
0	Age less than 15 years	21307003
2693	Not applicable	21307003
524	Employed	21307004
527	Unemployed	21307004
334	Discouraged work-seeker	21307004
2460	Other not economically active	21307004
0	Age less than 15 years	21307004
3434	Not applicable	21307004
247	Employed	21307005
507	Unemployed	21307005
387	Discouraged work-seeker	21307005
2094	Other not economically active	21307005
0	Age less than 15 years	21307005
3533	Not applicable	21307005
327	Employed	21307006
399	Unemployed	21307006
323	Discouraged work-seeker	21307006
3063	Other not economically active	21307006
0	Age less than 15 years	21307006
3982	Not applicable	21307006
469	Employed	21307007
325	Unemployed	21307007
458	Discouraged work-seeker	21307007
2780	Other not economically active	21307007
0	Age less than 15 years	21307007
3880	Not applicable	21307007
455	Employed	21307008
495	Unemployed	21307008
416	Discouraged work-seeker	21307008
3166	Other not economically active	21307008
0	Age less than 15 years	21307008
4086	Not applicable	21307008
716	Employed	21307009
542	Unemployed	21307009
234	Discouraged work-seeker	21307009
2946	Other not economically active	21307009
0	Age less than 15 years	21307009
3149	Not applicable	21307009
2102	Employed	21307010
1328	Unemployed	21307010
454	Discouraged work-seeker	21307010
3604	Other not economically active	21307010
0	Age less than 15 years	21307010
3982	Not applicable	21307010
1566	Employed	21307011
331	Unemployed	21307011
267	Discouraged work-seeker	21307011
1325	Other not economically active	21307011
0	Age less than 15 years	21307011
1987	Not applicable	21307011
394	Employed	21307012
304	Unemployed	21307012
316	Discouraged work-seeker	21307012
2850	Other not economically active	21307012
0	Age less than 15 years	21307012
3804	Not applicable	21307012
376	Employed	21307013
524	Unemployed	21307013
394	Discouraged work-seeker	21307013
2728	Other not economically active	21307013
0	Age less than 15 years	21307013
3894	Not applicable	21307013
454	Employed	21307014
518	Unemployed	21307014
538	Discouraged work-seeker	21307014
2634	Other not economically active	21307014
0	Age less than 15 years	21307014
3929	Not applicable	21307014
649	Employed	21307015
670	Unemployed	21307015
500	Discouraged work-seeker	21307015
2928	Other not economically active	21307015
0	Age less than 15 years	21307015
4688	Not applicable	21307015
453	Employed	21307016
370	Unemployed	21307016
655	Discouraged work-seeker	21307016
2595	Other not economically active	21307016
0	Age less than 15 years	21307016
3747	Not applicable	21307016
577	Employed	21307017
623	Unemployed	21307017
316	Discouraged work-seeker	21307017
2845	Other not economically active	21307017
0	Age less than 15 years	21307017
4045	Not applicable	21307017
623	Employed	21307018
621	Unemployed	21307018
261	Discouraged work-seeker	21307018
3132	Other not economically active	21307018
0	Age less than 15 years	21307018
4430	Not applicable	21307018
333	Employed	21307019
246	Unemployed	21307019
367	Discouraged work-seeker	21307019
3298	Other not economically active	21307019
0	Age less than 15 years	21307019
4392	Not applicable	21307019
292	Employed	21307020
430	Unemployed	21307020
373	Discouraged work-seeker	21307020
2302	Other not economically active	21307020
0	Age less than 15 years	21307020
3471	Not applicable	21307020
2076	Employed	21308001
998	Unemployed	21308001
240	Discouraged work-seeker	21308001
1874	Other not economically active	21308001
0	Age less than 15 years	21308001
3067	Not applicable	21308001
997	Employed	21308002
860	Unemployed	21308002
382	Discouraged work-seeker	21308002
1888	Other not economically active	21308002
0	Age less than 15 years	21308002
3045	Not applicable	21308002
883	Employed	21308003
576	Unemployed	21308003
303	Discouraged work-seeker	21308003
2730	Other not economically active	21308003
0	Age less than 15 years	21308003
3683	Not applicable	21308003
1438	Employed	21308004
532	Unemployed	21308004
97	Discouraged work-seeker	21308004
1651	Other not economically active	21308004
0	Age less than 15 years	21308004
2034	Not applicable	21308004
1416	Employed	21308005
734	Unemployed	21308005
362	Discouraged work-seeker	21308005
2609	Other not economically active	21308005
0	Age less than 15 years	21308005
3558	Not applicable	21308005
730	Employed	21308006
426	Unemployed	21308006
155	Discouraged work-seeker	21308006
2103	Other not economically active	21308006
0	Age less than 15 years	21308006
2759	Not applicable	21308006
355	Employed	21308007
362	Unemployed	21308007
454	Discouraged work-seeker	21308007
2274	Other not economically active	21308007
0	Age less than 15 years	21308007
3018	Not applicable	21308007
338	Employed	21308008
636	Unemployed	21308008
554	Discouraged work-seeker	21308008
2106	Other not economically active	21308008
0	Age less than 15 years	21308008
3003	Not applicable	21308008
719	Employed	21308009
545	Unemployed	21308009
271	Discouraged work-seeker	21308009
1899	Other not economically active	21308009
0	Age less than 15 years	21308009
2845	Not applicable	21308009
950	Employed	21401001
533	Unemployed	21401001
442	Discouraged work-seeker	21401001
2954	Other not economically active	21401001
0	Age less than 15 years	21401001
4580	Not applicable	21401001
1559	Employed	21401002
1355	Unemployed	21401002
440	Discouraged work-seeker	21401002
2827	Other not economically active	21401002
0	Age less than 15 years	21401002
3679	Not applicable	21401002
1794	Employed	21401003
1005	Unemployed	21401003
359	Discouraged work-seeker	21401003
1816	Other not economically active	21401003
0	Age less than 15 years	21401003
3157	Not applicable	21401003
923	Employed	21401004
276	Unemployed	21401004
417	Discouraged work-seeker	21401004
2316	Other not economically active	21401004
0	Age less than 15 years	21401004
3015	Not applicable	21401004
524	Employed	21401005
538	Unemployed	21401005
309	Discouraged work-seeker	21401005
3320	Other not economically active	21401005
0	Age less than 15 years	21401005
3755	Not applicable	21401005
364	Employed	21401006
467	Unemployed	21401006
222	Discouraged work-seeker	21401006
1830	Other not economically active	21401006
0	Age less than 15 years	21401006
2550	Not applicable	21401006
651	Employed	21401007
631	Unemployed	21401007
200	Discouraged work-seeker	21401007
2577	Other not economically active	21401007
0	Age less than 15 years	21401007
3539	Not applicable	21401007
286	Employed	21401008
500	Unemployed	21401008
223	Discouraged work-seeker	21401008
2396	Other not economically active	21401008
0	Age less than 15 years	21401008
2986	Not applicable	21401008
1899	Employed	21401009
892	Unemployed	21401009
406	Discouraged work-seeker	21401009
3999	Other not economically active	21401009
0	Age less than 15 years	21401009
4026	Not applicable	21401009
669	Employed	21401010
562	Unemployed	21401010
395	Discouraged work-seeker	21401010
3275	Other not economically active	21401010
0	Age less than 15 years	21401010
3944	Not applicable	21401010
454	Employed	21401011
1067	Unemployed	21401011
218	Discouraged work-seeker	21401011
3204	Other not economically active	21401011
0	Age less than 15 years	21401011
3705	Not applicable	21401011
460	Employed	21401012
321	Unemployed	21401012
241	Discouraged work-seeker	21401012
3087	Other not economically active	21401012
0	Age less than 15 years	21401012
3651	Not applicable	21401012
692	Employed	21401013
487	Unemployed	21401013
422	Discouraged work-seeker	21401013
3537	Other not economically active	21401013
0	Age less than 15 years	21401013
4419	Not applicable	21401013
463	Employed	21401014
518	Unemployed	21401014
203	Discouraged work-seeker	21401014
2502	Other not economically active	21401014
0	Age less than 15 years	21401014
3246	Not applicable	21401014
681	Employed	21401015
776	Unemployed	21401015
339	Discouraged work-seeker	21401015
2864	Other not economically active	21401015
0	Age less than 15 years	21401015
3972	Not applicable	21401015
398	Employed	21401016
386	Unemployed	21401016
322	Discouraged work-seeker	21401016
2825	Other not economically active	21401016
0	Age less than 15 years	21401016
3384	Not applicable	21401016
1439	Employed	21401017
1009	Unemployed	21401017
148	Discouraged work-seeker	21401017
1710	Other not economically active	21401017
0	Age less than 15 years	21401017
2659	Not applicable	21401017
619	Employed	21402001
526	Unemployed	21402001
187	Discouraged work-seeker	21402001
2356	Other not economically active	21402001
0	Age less than 15 years	21402001
2958	Not applicable	21402001
868	Employed	21402002
776	Unemployed	21402002
502	Discouraged work-seeker	21402002
4700	Other not economically active	21402002
0	Age less than 15 years	21402002
5010	Not applicable	21402002
526	Employed	21402003
382	Unemployed	21402003
386	Discouraged work-seeker	21402003
1833	Other not economically active	21402003
0	Age less than 15 years	21402003
2252	Not applicable	21402003
336	Employed	21402004
344	Unemployed	21402004
266	Discouraged work-seeker	21402004
1912	Other not economically active	21402004
0	Age less than 15 years	21402004
2168	Not applicable	21402004
232	Employed	21402005
127	Unemployed	21402005
398	Discouraged work-seeker	21402005
1859	Other not economically active	21402005
0	Age less than 15 years	21402005
2450	Not applicable	21402005
566	Employed	21402006
414	Unemployed	21402006
214	Discouraged work-seeker	21402006
2388	Other not economically active	21402006
0	Age less than 15 years	21402006
3056	Not applicable	21402006
882	Employed	21402007
378	Unemployed	21402007
450	Discouraged work-seeker	21402007
2381	Other not economically active	21402007
0	Age less than 15 years	21402007
3065	Not applicable	21402007
1785	Employed	21402008
1362	Unemployed	21402008
363	Discouraged work-seeker	21402008
2650	Other not economically active	21402008
0	Age less than 15 years	21402008
3794	Not applicable	21402008
547	Employed	21402009
515	Unemployed	21402009
473	Discouraged work-seeker	21402009
2428	Other not economically active	21402009
0	Age less than 15 years	21402009
2903	Not applicable	21402009
1997	Employed	21402010
786	Unemployed	21402010
546	Discouraged work-seeker	21402010
2371	Other not economically active	21402010
0	Age less than 15 years	21402010
3352	Not applicable	21402010
932	Employed	21402011
570	Unemployed	21402011
512	Discouraged work-seeker	21402011
2367	Other not economically active	21402011
0	Age less than 15 years	21402011
3412	Not applicable	21402011
358	Employed	21402012
462	Unemployed	21402012
441	Discouraged work-seeker	21402012
1854	Other not economically active	21402012
0	Age less than 15 years	21402012
2507	Not applicable	21402012
403	Employed	21402013
428	Unemployed	21402013
389	Discouraged work-seeker	21402013
2302	Other not economically active	21402013
0	Age less than 15 years	21402013
3141	Not applicable	21402013
1358	Employed	21402014
634	Unemployed	21402014
275	Discouraged work-seeker	21402014
2028	Other not economically active	21402014
0	Age less than 15 years	21402014
2819	Not applicable	21402014
1851	Employed	21402015
364	Unemployed	21402015
404	Discouraged work-seeker	21402015
1445	Other not economically active	21402015
0	Age less than 15 years	21402015
2421	Not applicable	21402015
2181	Employed	21402016
258	Unemployed	21402016
313	Discouraged work-seeker	21402016
981	Other not economically active	21402016
0	Age less than 15 years	21402016
2044	Not applicable	21402016
633	Employed	21402017
494	Unemployed	21402017
502	Discouraged work-seeker	21402017
2344	Other not economically active	21402017
0	Age less than 15 years	21402017
2809	Not applicable	21402017
760	Employed	21402018
462	Unemployed	21402018
472	Discouraged work-seeker	21402018
1813	Other not economically active	21402018
0	Age less than 15 years	21402018
2530	Not applicable	21402018
1418	Employed	21402019
754	Unemployed	21402019
307	Discouraged work-seeker	21402019
2543	Other not economically active	21402019
0	Age less than 15 years	21402019
3215	Not applicable	21402019
1848	Employed	21403001
518	Unemployed	21403001
585	Discouraged work-seeker	21403001
1707	Other not economically active	21403001
0	Age less than 15 years	21403001
2777	Not applicable	21403001
2230	Employed	21403002
661	Unemployed	21403002
252	Discouraged work-seeker	21403002
2321	Other not economically active	21403002
0	Age less than 15 years	21403002
3537	Not applicable	21403002
1255	Employed	21403003
607	Unemployed	21403003
147	Discouraged work-seeker	21403003
1575	Other not economically active	21403003
0	Age less than 15 years	21403003
2112	Not applicable	21403003
2140	Employed	21403004
644	Unemployed	21403004
188	Discouraged work-seeker	21403004
1737	Other not economically active	21403004
0	Age less than 15 years	21403004
2787	Not applicable	21403004
1554	Employed	21403005
473	Unemployed	21403005
75	Discouraged work-seeker	21403005
1138	Other not economically active	21403005
0	Age less than 15 years	21403005
1695	Not applicable	21403005
1622	Employed	21403006
975	Unemployed	21403006
336	Discouraged work-seeker	21403006
2602	Other not economically active	21403006
0	Age less than 15 years	21403006
3704	Not applicable	21403006
1621	Employed	21404001
489	Unemployed	21404001
214	Discouraged work-seeker	21404001
1208	Other not economically active	21404001
0	Age less than 15 years	21404001
2652	Not applicable	21404001
682	Employed	21404002
535	Unemployed	21404002
247	Discouraged work-seeker	21404002
1269	Other not economically active	21404002
0	Age less than 15 years	21404002
1994	Not applicable	21404002
3673	Employed	21404003
572	Unemployed	21404003
347	Discouraged work-seeker	21404003
2352	Other not economically active	21404003
0	Age less than 15 years	21404003
3204	Not applicable	21404003
1004	Employed	21404004
719	Unemployed	21404004
176	Discouraged work-seeker	21404004
1365	Other not economically active	21404004
0	Age less than 15 years	21404004
1985	Not applicable	21404004
1258	Employed	21404005
544	Unemployed	21404005
538	Discouraged work-seeker	21404005
2000	Other not economically active	21404005
0	Age less than 15 years	21404005
3028	Not applicable	21404005
153	Employed	21503001
137	Unemployed	21503001
291	Discouraged work-seeker	21503001
2755	Other not economically active	21503001
0	Age less than 15 years	21503001
3575	Not applicable	21503001
295	Employed	21503002
305	Unemployed	21503002
516	Discouraged work-seeker	21503002
4466	Other not economically active	21503002
0	Age less than 15 years	21503002
5752	Not applicable	21503002
200	Employed	21503003
181	Unemployed	21503003
348	Discouraged work-seeker	21503003
3327	Other not economically active	21503003
0	Age less than 15 years	21503003
4095	Not applicable	21503003
349	Employed	21503004
496	Unemployed	21503004
521	Discouraged work-seeker	21503004
2864	Other not economically active	21503004
0	Age less than 15 years	21503004
4420	Not applicable	21503004
359	Employed	21503005
453	Unemployed	21503005
438	Discouraged work-seeker	21503005
3819	Other not economically active	21503005
0	Age less than 15 years	21503005
4931	Not applicable	21503005
1649	Employed	21503006
1330	Unemployed	21503006
363	Discouraged work-seeker	21503006
3051	Other not economically active	21503006
0	Age less than 15 years	21503006
4066	Not applicable	21503006
480	Employed	21503007
609	Unemployed	21503007
798	Discouraged work-seeker	21503007
3118	Other not economically active	21503007
0	Age less than 15 years	21503007
5004	Not applicable	21503007
351	Employed	21503008
746	Unemployed	21503008
352	Discouraged work-seeker	21503008
2294	Other not economically active	21503008
0	Age less than 15 years	21503008
3576	Not applicable	21503008
963	Employed	21503009
922	Unemployed	21503009
314	Discouraged work-seeker	21503009
3015	Other not economically active	21503009
0	Age less than 15 years	21503009
4226	Not applicable	21503009
317	Employed	21503010
357	Unemployed	21503010
457	Discouraged work-seeker	21503010
2792	Other not economically active	21503010
0	Age less than 15 years	21503010
4328	Not applicable	21503010
379	Employed	21503011
610	Unemployed	21503011
664	Discouraged work-seeker	21503011
2828	Other not economically active	21503011
0	Age less than 15 years	21503011
4730	Not applicable	21503011
242	Employed	21503012
531	Unemployed	21503012
642	Discouraged work-seeker	21503012
2329	Other not economically active	21503012
0	Age less than 15 years	21503012
3887	Not applicable	21503012
515	Employed	21503013
546	Unemployed	21503013
399	Discouraged work-seeker	21503013
3562	Other not economically active	21503013
0	Age less than 15 years	21503013
4210	Not applicable	21503013
698	Employed	21503014
839	Unemployed	21503014
343	Discouraged work-seeker	21503014
3082	Other not economically active	21503014
0	Age less than 15 years	21503014
3755	Not applicable	21503014
1873	Employed	21503015
836	Unemployed	21503015
174	Discouraged work-seeker	21503015
1688	Other not economically active	21503015
0	Age less than 15 years	21503015
2092	Not applicable	21503015
308	Employed	21503016
650	Unemployed	21503016
724	Discouraged work-seeker	21503016
2482	Other not economically active	21503016
0	Age less than 15 years	21503016
3960	Not applicable	21503016
671	Employed	21503017
558	Unemployed	21503017
191	Discouraged work-seeker	21503017
2889	Other not economically active	21503017
0	Age less than 15 years	21503017
3368	Not applicable	21503017
352	Employed	21503018
530	Unemployed	21503018
587	Discouraged work-seeker	21503018
2660	Other not economically active	21503018
0	Age less than 15 years	21503018
4065	Not applicable	21503018
1574	Employed	21503019
728	Unemployed	21503019
413	Discouraged work-seeker	21503019
3741	Other not economically active	21503019
0	Age less than 15 years	21503019
4675	Not applicable	21503019
1045	Employed	21503020
1446	Unemployed	21503020
442	Discouraged work-seeker	21503020
3269	Other not economically active	21503020
0	Age less than 15 years	21503020
5069	Not applicable	21503020
1064	Employed	21503021
988	Unemployed	21503021
472	Discouraged work-seeker	21503021
4160	Other not economically active	21503021
0	Age less than 15 years	21503021
4966	Not applicable	21503021
979	Employed	21503022
881	Unemployed	21503022
467	Discouraged work-seeker	21503022
2457	Other not economically active	21503022
0	Age less than 15 years	21503022
4066	Not applicable	21503022
495	Employed	21503023
704	Unemployed	21503023
641	Discouraged work-seeker	21503023
1611	Other not economically active	21503023
0	Age less than 15 years	21503023
3471	Not applicable	21503023
265	Employed	21503024
606	Unemployed	21503024
771	Discouraged work-seeker	21503024
2158	Other not economically active	21503024
0	Age less than 15 years	21503024
4063	Not applicable	21503024
442	Employed	21503025
420	Unemployed	21503025
335	Discouraged work-seeker	21503025
3101	Other not economically active	21503025
0	Age less than 15 years	21503025
4342	Not applicable	21503025
411	Employed	21503026
547	Unemployed	21503026
324	Discouraged work-seeker	21503026
3320	Other not economically active	21503026
0	Age less than 15 years	21503026
4604	Not applicable	21503026
376	Employed	21503027
467	Unemployed	21503027
499	Discouraged work-seeker	21503027
2022	Other not economically active	21503027
0	Age less than 15 years	21503027
3079	Not applicable	21503027
354	Employed	21503028
317	Unemployed	21503028
548	Discouraged work-seeker	21503028
3881	Other not economically active	21503028
0	Age less than 15 years	21503028
5433	Not applicable	21503028
565	Employed	21503029
620	Unemployed	21503029
988	Discouraged work-seeker	21503029
2867	Other not economically active	21503029
0	Age less than 15 years	21503029
4894	Not applicable	21503029
389	Employed	21503030
526	Unemployed	21503030
465	Discouraged work-seeker	21503030
3725	Other not economically active	21503030
0	Age less than 15 years	21503030
5681	Not applicable	21503030
411	Employed	21503031
834	Unemployed	21503031
839	Discouraged work-seeker	21503031
2461	Other not economically active	21503031
0	Age less than 15 years	21503031
4737	Not applicable	21503031
328	Employed	21504001
235	Unemployed	21504001
1291	Discouraged work-seeker	21504001
3036	Other not economically active	21504001
0	Age less than 15 years	21504001
4443	Not applicable	21504001
551	Employed	21504002
303	Unemployed	21504002
450	Discouraged work-seeker	21504002
3390	Other not economically active	21504002
0	Age less than 15 years	21504002
4076	Not applicable	21504002
404	Employed	21504003
252	Unemployed	21504003
302	Discouraged work-seeker	21504003
3558	Other not economically active	21504003
0	Age less than 15 years	21504003
4273	Not applicable	21504003
426	Employed	21504004
377	Unemployed	21504004
521	Discouraged work-seeker	21504004
2623	Other not economically active	21504004
0	Age less than 15 years	21504004
3183	Not applicable	21504004
490	Employed	21504005
920	Unemployed	21504005
245	Discouraged work-seeker	21504005
2170	Other not economically active	21504005
0	Age less than 15 years	21504005
3074	Not applicable	21504005
1594	Employed	21504006
946	Unemployed	21504006
98	Discouraged work-seeker	21504006
1323	Other not economically active	21504006
0	Age less than 15 years	21504006
1787	Not applicable	21504006
394	Employed	21504007
375	Unemployed	21504007
410	Discouraged work-seeker	21504007
3268	Other not economically active	21504007
0	Age less than 15 years	21504007
3727	Not applicable	21504007
545	Employed	21504008
232	Unemployed	21504008
574	Discouraged work-seeker	21504008
2175	Other not economically active	21504008
0	Age less than 15 years	21504008
3169	Not applicable	21504008
395	Employed	21504009
464	Unemployed	21504009
420	Discouraged work-seeker	21504009
1799	Other not economically active	21504009
0	Age less than 15 years	21504009
2830	Not applicable	21504009
426	Employed	21504010
424	Unemployed	21504010
593	Discouraged work-seeker	21504010
2965	Other not economically active	21504010
0	Age less than 15 years	21504010
4368	Not applicable	21504010
217	Employed	21504011
267	Unemployed	21504011
733	Discouraged work-seeker	21504011
2941	Other not economically active	21504011
0	Age less than 15 years	21504011
4520	Not applicable	21504011
211	Employed	21504012
636	Unemployed	21504012
720	Discouraged work-seeker	21504012
3018	Other not economically active	21504012
0	Age less than 15 years	21504012
4727	Not applicable	21504012
285	Employed	21504013
198	Unemployed	21504013
520	Discouraged work-seeker	21504013
3024	Other not economically active	21504013
0	Age less than 15 years	21504013
4234	Not applicable	21504013
254	Employed	21504014
315	Unemployed	21504014
415	Discouraged work-seeker	21504014
2629	Other not economically active	21504014
0	Age less than 15 years	21504014
3349	Not applicable	21504014
98	Employed	21504015
89	Unemployed	21504015
125	Discouraged work-seeker	21504015
1781	Other not economically active	21504015
0	Age less than 15 years	21504015
1925	Not applicable	21504015
288	Employed	21504016
406	Unemployed	21504016
582	Discouraged work-seeker	21504016
2045	Other not economically active	21504016
0	Age less than 15 years	21504016
3116	Not applicable	21504016
135	Employed	21504017
180	Unemployed	21504017
376	Discouraged work-seeker	21504017
2712	Other not economically active	21504017
0	Age less than 15 years	21504017
3946	Not applicable	21504017
187	Employed	21504018
148	Unemployed	21504018
414	Discouraged work-seeker	21504018
3332	Other not economically active	21504018
0	Age less than 15 years	21504018
4276	Not applicable	21504018
435	Employed	21504019
608	Unemployed	21504019
609	Discouraged work-seeker	21504019
3830	Other not economically active	21504019
0	Age less than 15 years	21504019
5143	Not applicable	21504019
326	Employed	21504020
713	Unemployed	21504020
495	Discouraged work-seeker	21504020
3364	Other not economically active	21504020
0	Age less than 15 years	21504020
5016	Not applicable	21504020
553	Employed	21505001
556	Unemployed	21505001
716	Discouraged work-seeker	21505001
3290	Other not economically active	21505001
0	Age less than 15 years	21505001
4852	Not applicable	21505001
330	Employed	21505002
176	Unemployed	21505002
330	Discouraged work-seeker	21505002
2976	Other not economically active	21505002
0	Age less than 15 years	21505002
4228	Not applicable	21505002
488	Employed	21505003
381	Unemployed	21505003
337	Discouraged work-seeker	21505003
2624	Other not economically active	21505003
0	Age less than 15 years	21505003
3660	Not applicable	21505003
437	Employed	21505004
366	Unemployed	21505004
408	Discouraged work-seeker	21505004
2973	Other not economically active	21505004
0	Age less than 15 years	21505004
3642	Not applicable	21505004
228	Employed	21505005
201	Unemployed	21505005
544	Discouraged work-seeker	21505005
3515	Other not economically active	21505005
0	Age less than 15 years	21505005
4145	Not applicable	21505005
307	Employed	21505006
414	Unemployed	21505006
281	Discouraged work-seeker	21505006
4054	Other not economically active	21505006
0	Age less than 15 years	21505006
4963	Not applicable	21505006
1388	Employed	21505007
711	Unemployed	21505007
296	Discouraged work-seeker	21505007
2470	Other not economically active	21505007
0	Age less than 15 years	21505007
3179	Not applicable	21505007
348	Employed	21505008
835	Unemployed	21505008
319	Discouraged work-seeker	21505008
2794	Other not economically active	21505008
0	Age less than 15 years	21505008
3578	Not applicable	21505008
1044	Employed	21505009
1052	Unemployed	21505009
282	Discouraged work-seeker	21505009
3922	Other not economically active	21505009
0	Age less than 15 years	21505009
4126	Not applicable	21505009
1662	Employed	21505010
1103	Unemployed	21505010
347	Discouraged work-seeker	21505010
3485	Other not economically active	21505010
0	Age less than 15 years	21505010
4265	Not applicable	21505010
2508	Employed	21505011
1752	Unemployed	21505011
572	Discouraged work-seeker	21505011
3513	Other not economically active	21505011
0	Age less than 15 years	21505011
4901	Not applicable	21505011
2527	Employed	21505012
1179	Unemployed	21505012
379	Discouraged work-seeker	21505012
3089	Other not economically active	21505012
0	Age less than 15 years	21505012
3456	Not applicable	21505012
871	Employed	21505013
813	Unemployed	21505013
384	Discouraged work-seeker	21505013
2904	Other not economically active	21505013
0	Age less than 15 years	21505013
3518	Not applicable	21505013
360	Employed	21505014
200	Unemployed	21505014
332	Discouraged work-seeker	21505014
3562	Other not economically active	21505014
0	Age less than 15 years	21505014
3876	Not applicable	21505014
970	Employed	21505015
604	Unemployed	21505015
340	Discouraged work-seeker	21505015
4837	Other not economically active	21505015
0	Age less than 15 years	21505015
5130	Not applicable	21505015
198	Employed	21505016
414	Unemployed	21505016
351	Discouraged work-seeker	21505016
2940	Other not economically active	21505016
0	Age less than 15 years	21505016
4243	Not applicable	21505016
436	Employed	21505017
402	Unemployed	21505017
40	Discouraged work-seeker	21505017
4556	Other not economically active	21505017
0	Age less than 15 years	21505017
4832	Not applicable	21505017
294	Employed	21505018
257	Unemployed	21505018
434	Discouraged work-seeker	21505018
2991	Other not economically active	21505018
0	Age less than 15 years	21505018
4319	Not applicable	21505018
312	Employed	21505019
166	Unemployed	21505019
465	Discouraged work-seeker	21505019
4741	Other not economically active	21505019
0	Age less than 15 years	21505019
5411	Not applicable	21505019
460	Employed	21505020
342	Unemployed	21505020
737	Discouraged work-seeker	21505020
4597	Other not economically active	21505020
0	Age less than 15 years	21505020
5444	Not applicable	21505020
846	Employed	21505021
514	Unemployed	21505021
258	Discouraged work-seeker	21505021
2761	Other not economically active	21505021
0	Age less than 15 years	21505021
3026	Not applicable	21505021
309	Employed	21505022
452	Unemployed	21505022
447	Discouraged work-seeker	21505022
4001	Other not economically active	21505022
0	Age less than 15 years	21505022
5570	Not applicable	21505022
475	Employed	21505023
299	Unemployed	21505023
534	Discouraged work-seeker	21505023
3159	Other not economically active	21505023
0	Age less than 15 years	21505023
4938	Not applicable	21505023
280	Employed	21505024
453	Unemployed	21505024
208	Discouraged work-seeker	21505024
2877	Other not economically active	21505024
0	Age less than 15 years	21505024
3587	Not applicable	21505024
273	Employed	21505025
202	Unemployed	21505025
745	Discouraged work-seeker	21505025
2989	Other not economically active	21505025
0	Age less than 15 years	21505025
4349	Not applicable	21505025
327	Employed	21505026
391	Unemployed	21505026
711	Discouraged work-seeker	21505026
4436	Other not economically active	21505026
0	Age less than 15 years	21505026
5521	Not applicable	21505026
252	Employed	21505027
287	Unemployed	21505027
248	Discouraged work-seeker	21505027
2357	Other not economically active	21505027
0	Age less than 15 years	21505027
3454	Not applicable	21505027
349	Employed	21505028
234	Unemployed	21505028
287	Discouraged work-seeker	21505028
3206	Other not economically active	21505028
0	Age less than 15 years	21505028
4265	Not applicable	21505028
753	Employed	21505029
606	Unemployed	21505029
553	Discouraged work-seeker	21505029
3880	Other not economically active	21505029
0	Age less than 15 years	21505029
4421	Not applicable	21505029
541	Employed	21505030
887	Unemployed	21505030
256	Discouraged work-seeker	21505030
3926	Other not economically active	21505030
0	Age less than 15 years	21505030
4760	Not applicable	21505030
546	Employed	21505031
508	Unemployed	21505031
386	Discouraged work-seeker	21505031
3398	Other not economically active	21505031
0	Age less than 15 years	21505031
3947	Not applicable	21505031
304	Employed	21506001
489	Unemployed	21506001
363	Discouraged work-seeker	21506001
2455	Other not economically active	21506001
0	Age less than 15 years	21506001
3781	Not applicable	21506001
1314	Employed	21506002
345	Unemployed	21506002
779	Discouraged work-seeker	21506002
1506	Other not economically active	21506002
0	Age less than 15 years	21506002
2744	Not applicable	21506002
791	Employed	21506003
447	Unemployed	21506003
381	Discouraged work-seeker	21506003
2903	Other not economically active	21506003
0	Age less than 15 years	21506003
3370	Not applicable	21506003
655	Employed	21506004
870	Unemployed	21506004
275	Discouraged work-seeker	21506004
2312	Other not economically active	21506004
0	Age less than 15 years	21506004
2887	Not applicable	21506004
320	Employed	21506005
657	Unemployed	21506005
112	Discouraged work-seeker	21506005
2236	Other not economically active	21506005
0	Age less than 15 years	21506005
2872	Not applicable	21506005
1986	Employed	21506006
1213	Unemployed	21506006
470	Discouraged work-seeker	21506006
2732	Other not economically active	21506006
0	Age less than 15 years	21506006
4178	Not applicable	21506006
324	Employed	21506007
438	Unemployed	21506007
523	Discouraged work-seeker	21506007
1835	Other not economically active	21506007
0	Age less than 15 years	21506007
2382	Not applicable	21506007
426	Employed	21506008
390	Unemployed	21506008
381	Discouraged work-seeker	21506008
3388	Other not economically active	21506008
0	Age less than 15 years	21506008
3813	Not applicable	21506008
375	Employed	21506009
614	Unemployed	21506009
114	Discouraged work-seeker	21506009
1938	Other not economically active	21506009
0	Age less than 15 years	21506009
2534	Not applicable	21506009
370	Employed	21506010
492	Unemployed	21506010
378	Discouraged work-seeker	21506010
2131	Other not economically active	21506010
0	Age less than 15 years	21506010
2970	Not applicable	21506010
303	Employed	21506011
358	Unemployed	21506011
365	Discouraged work-seeker	21506011
2946	Other not economically active	21506011
0	Age less than 15 years	21506011
3640	Not applicable	21506011
315	Employed	21506012
253	Unemployed	21506012
376	Discouraged work-seeker	21506012
3284	Other not economically active	21506012
0	Age less than 15 years	21506012
4131	Not applicable	21506012
287	Employed	21506013
289	Unemployed	21506013
332	Discouraged work-seeker	21506013
3215	Other not economically active	21506013
0	Age less than 15 years	21506013
4080	Not applicable	21506013
523	Employed	21506014
817	Unemployed	21506014
695	Discouraged work-seeker	21506014
2446	Other not economically active	21506014
0	Age less than 15 years	21506014
3684	Not applicable	21506014
1792	Employed	21506015
674	Unemployed	21506015
464	Discouraged work-seeker	21506015
2735	Other not economically active	21506015
0	Age less than 15 years	21506015
3416	Not applicable	21506015
431	Employed	21506016
559	Unemployed	21506016
372	Discouraged work-seeker	21506016
2520	Other not economically active	21506016
0	Age less than 15 years	21506016
3557	Not applicable	21506016
480	Employed	21506017
687	Unemployed	21506017
504	Discouraged work-seeker	21506017
2704	Other not economically active	21506017
0	Age less than 15 years	21506017
3829	Not applicable	21506017
408	Employed	21506018
572	Unemployed	21506018
143	Discouraged work-seeker	21506018
2727	Other not economically active	21506018
0	Age less than 15 years	21506018
3290	Not applicable	21506018
534	Employed	21506019
538	Unemployed	21506019
190	Discouraged work-seeker	21506019
2417	Other not economically active	21506019
0	Age less than 15 years	21506019
3204	Not applicable	21506019
539	Employed	21506020
369	Unemployed	21506020
332	Discouraged work-seeker	21506020
1826	Other not economically active	21506020
0	Age less than 15 years	21506020
2681	Not applicable	21506020
661	Employed	21506021
526	Unemployed	21506021
440	Discouraged work-seeker	21506021
1895	Other not economically active	21506021
0	Age less than 15 years	21506021
2615	Not applicable	21506021
314	Employed	21506022
407	Unemployed	21506022
327	Discouraged work-seeker	21506022
1932	Other not economically active	21506022
0	Age less than 15 years	21506022
2949	Not applicable	21506022
378	Employed	21506023
755	Unemployed	21506023
317	Discouraged work-seeker	21506023
2451	Other not economically active	21506023
0	Age less than 15 years	21506023
3309	Not applicable	21506023
219	Employed	21506024
334	Unemployed	21506024
492	Discouraged work-seeker	21506024
2815	Other not economically active	21506024
0	Age less than 15 years	21506024
3840	Not applicable	21506024
304	Employed	21506025
476	Unemployed	21506025
278	Discouraged work-seeker	21506025
2919	Other not economically active	21506025
0	Age less than 15 years	21506025
3457	Not applicable	21506025
371	Employed	21506026
512	Unemployed	21506026
318	Discouraged work-seeker	21506026
1759	Other not economically active	21506026
0	Age less than 15 years	21506026
2463	Not applicable	21506026
2470	Employed	21507001
1225	Unemployed	21507001
401	Discouraged work-seeker	21507001
3192	Other not economically active	21507001
0	Age less than 15 years	21507001
3521	Not applicable	21507001
3096	Employed	21507002
1342	Unemployed	21507002
261	Discouraged work-seeker	21507002
2630	Other not economically active	21507002
0	Age less than 15 years	21507002
2893	Not applicable	21507002
3503	Employed	21507003
1907	Unemployed	21507003
441	Discouraged work-seeker	21507003
2931	Other not economically active	21507003
0	Age less than 15 years	21507003
3725	Not applicable	21507003
4313	Employed	21507004
1904	Unemployed	21507004
474	Discouraged work-seeker	21507004
3892	Other not economically active	21507004
0	Age less than 15 years	21507004
5310	Not applicable	21507004
1640	Employed	21507005
342	Unemployed	21507005
99	Discouraged work-seeker	21507005
4759	Other not economically active	21507005
0	Age less than 15 years	21507005
1681	Not applicable	21507005
5113	Employed	21507006
594	Unemployed	21507006
166	Discouraged work-seeker	21507006
3352	Other not economically active	21507006
0	Age less than 15 years	21507006
2972	Not applicable	21507006
790	Employed	21507007
202	Unemployed	21507007
29	Discouraged work-seeker	21507007
504	Other not economically active	21507007
0	Age less than 15 years	21507007
492	Not applicable	21507007
3428	Employed	21507008
907	Unemployed	21507008
268	Discouraged work-seeker	21507008
4385	Other not economically active	21507008
0	Age less than 15 years	21507008
3317	Not applicable	21507008
3251	Employed	21507009
1513	Unemployed	21507009
390	Discouraged work-seeker	21507009
3688	Other not economically active	21507009
0	Age less than 15 years	21507009
4101	Not applicable	21507009
909	Employed	21507010
1016	Unemployed	21507010
772	Discouraged work-seeker	21507010
3904	Other not economically active	21507010
0	Age less than 15 years	21507010
4597	Not applicable	21507010
4350	Employed	21507011
1963	Unemployed	21507011
435	Discouraged work-seeker	21507011
9337	Other not economically active	21507011
0	Age less than 15 years	21507011
7400	Not applicable	21507011
2964	Employed	21507012
2413	Unemployed	21507012
704	Discouraged work-seeker	21507012
3280	Other not economically active	21507012
0	Age less than 15 years	21507012
4848	Not applicable	21507012
2465	Employed	21507013
1074	Unemployed	21507013
256	Discouraged work-seeker	21507013
2795	Other not economically active	21507013
0	Age less than 15 years	21507013
3274	Not applicable	21507013
1418	Employed	21507014
1204	Unemployed	21507014
697	Discouraged work-seeker	21507014
3675	Other not economically active	21507014
0	Age less than 15 years	21507014
4722	Not applicable	21507014
606	Employed	21507015
762	Unemployed	21507015
613	Discouraged work-seeker	21507015
3830	Other not economically active	21507015
0	Age less than 15 years	21507015
5297	Not applicable	21507015
586	Employed	21507016
1662	Unemployed	21507016
870	Discouraged work-seeker	21507016
4301	Other not economically active	21507016
0	Age less than 15 years	21507016
5916	Not applicable	21507016
258	Employed	21507017
619	Unemployed	21507017
643	Discouraged work-seeker	21507017
4468	Other not economically active	21507017
0	Age less than 15 years	21507017
5787	Not applicable	21507017
422	Employed	21507018
659	Unemployed	21507018
327	Discouraged work-seeker	21507018
5000	Other not economically active	21507018
0	Age less than 15 years	21507018
5890	Not applicable	21507018
606	Employed	21507019
1031	Unemployed	21507019
721	Discouraged work-seeker	21507019
5214	Other not economically active	21507019
0	Age less than 15 years	21507019
6340	Not applicable	21507019
700	Employed	21507020
723	Unemployed	21507020
753	Discouraged work-seeker	21507020
5910	Other not economically active	21507020
0	Age less than 15 years	21507020
6945	Not applicable	21507020
654	Employed	21507021
593	Unemployed	21507021
464	Discouraged work-seeker	21507021
5665	Other not economically active	21507021
0	Age less than 15 years	21507021
6627	Not applicable	21507021
679	Employed	21507022
657	Unemployed	21507022
642	Discouraged work-seeker	21507022
5707	Other not economically active	21507022
0	Age less than 15 years	21507022
6684	Not applicable	21507022
1051	Employed	21507023
888	Unemployed	21507023
959	Discouraged work-seeker	21507023
5666	Other not economically active	21507023
0	Age less than 15 years	21507023
6948	Not applicable	21507023
753	Employed	21507024
584	Unemployed	21507024
400	Discouraged work-seeker	21507024
6592	Other not economically active	21507024
0	Age less than 15 years	21507024
7560	Not applicable	21507024
576	Employed	21507025
674	Unemployed	21507025
1413	Discouraged work-seeker	21507025
7805	Other not economically active	21507025
0	Age less than 15 years	21507025
9505	Not applicable	21507025
531	Employed	21507026
773	Unemployed	21507026
992	Discouraged work-seeker	21507026
4442	Other not economically active	21507026
0	Age less than 15 years	21507026
5774	Not applicable	21507026
386	Employed	21507027
827	Unemployed	21507027
790	Discouraged work-seeker	21507027
4322	Other not economically active	21507027
0	Age less than 15 years	21507027
6121	Not applicable	21507027
694	Employed	21507028
634	Unemployed	21507028
1008	Discouraged work-seeker	21507028
4187	Other not economically active	21507028
0	Age less than 15 years	21507028
5499	Not applicable	21507028
1808	Employed	21507029
808	Unemployed	21507029
655	Discouraged work-seeker	21507029
4774	Other not economically active	21507029
0	Age less than 15 years	21507029
5705	Not applicable	21507029
3028	Employed	21507030
1845	Unemployed	21507030
385	Discouraged work-seeker	21507030
3155	Other not economically active	21507030
0	Age less than 15 years	21507030
4343	Not applicable	21507030
495	Employed	21507031
842	Unemployed	21507031
454	Discouraged work-seeker	21507031
4621	Other not economically active	21507031
0	Age less than 15 years	21507031
5715	Not applicable	21507031
1173	Employed	21507032
1328	Unemployed	21507032
896	Discouraged work-seeker	21507032
4730	Other not economically active	21507032
0	Age less than 15 years	21507032
6033	Not applicable	21507032
2171	Employed	21507033
1076	Unemployed	21507033
582	Discouraged work-seeker	21507033
4263	Other not economically active	21507033
0	Age less than 15 years	21507033
4903	Not applicable	21507033
545	Employed	21507034
804	Unemployed	21507034
442	Discouraged work-seeker	21507034
4373	Other not economically active	21507034
0	Age less than 15 years	21507034
5561	Not applicable	21507034
1551	Employed	21507035
1200	Unemployed	21507035
623	Discouraged work-seeker	21507035
3790	Other not economically active	21507035
0	Age less than 15 years	21507035
4964	Not applicable	21507035
1631	Employed	24401001
487	Unemployed	24401001
147	Discouraged work-seeker	24401001
1861	Other not economically active	24401001
0	Age less than 15 years	24401001
2309	Not applicable	24401001
2099	Employed	24401002
1640	Unemployed	24401002
330	Discouraged work-seeker	24401002
3901	Other not economically active	24401002
0	Age less than 15 years	24401002
5603	Not applicable	24401002
735	Employed	24401003
726	Unemployed	24401003
260	Discouraged work-seeker	24401003
2445	Other not economically active	24401003
0	Age less than 15 years	24401003
3646	Not applicable	24401003
421	Employed	24401004
588	Unemployed	24401004
247	Discouraged work-seeker	24401004
3067	Other not economically active	24401004
0	Age less than 15 years	24401004
4002	Not applicable	24401004
920	Employed	24401005
440	Unemployed	24401005
373	Discouraged work-seeker	24401005
2570	Other not economically active	24401005
0	Age less than 15 years	24401005
4172	Not applicable	24401005
1054	Employed	24401006
605	Unemployed	24401006
430	Discouraged work-seeker	24401006
2183	Other not economically active	24401006
0	Age less than 15 years	24401006
3127	Not applicable	24401006
375	Employed	24401007
228	Unemployed	24401007
462	Discouraged work-seeker	24401007
2747	Other not economically active	24401007
0	Age less than 15 years	24401007
3799	Not applicable	24401007
781	Employed	24401008
722	Unemployed	24401008
333	Discouraged work-seeker	24401008
3204	Other not economically active	24401008
0	Age less than 15 years	24401008
4706	Not applicable	24401008
592	Employed	24401009
400	Unemployed	24401009
242	Discouraged work-seeker	24401009
2154	Other not economically active	24401009
0	Age less than 15 years	24401009
3217	Not applicable	24401009
808	Employed	24401010
540	Unemployed	24401010
403	Discouraged work-seeker	24401010
3117	Other not economically active	24401010
0	Age less than 15 years	24401010
3996	Not applicable	24401010
675	Employed	24401011
935	Unemployed	24401011
684	Discouraged work-seeker	24401011
3493	Other not economically active	24401011
0	Age less than 15 years	24401011
5634	Not applicable	24401011
449	Employed	24401012
687	Unemployed	24401012
276	Discouraged work-seeker	24401012
2009	Other not economically active	24401012
0	Age less than 15 years	24401012
3205	Not applicable	24401012
547	Employed	24401013
651	Unemployed	24401013
194	Discouraged work-seeker	24401013
2884	Other not economically active	24401013
0	Age less than 15 years	24401013
3966	Not applicable	24401013
498	Employed	24401014
470	Unemployed	24401014
369	Discouraged work-seeker	24401014
2355	Other not economically active	24401014
0	Age less than 15 years	24401014
2894	Not applicable	24401014
375	Employed	24401015
535	Unemployed	24401015
148	Discouraged work-seeker	24401015
2413	Other not economically active	24401015
0	Age less than 15 years	24401015
3244	Not applicable	24401015
408	Employed	24401016
488	Unemployed	24401016
216	Discouraged work-seeker	24401016
2183	Other not economically active	24401016
0	Age less than 15 years	24401016
3109	Not applicable	24401016
617	Employed	24401017
899	Unemployed	24401017
310	Discouraged work-seeker	24401017
2798	Other not economically active	24401017
0	Age less than 15 years	24401017
3885	Not applicable	24401017
517	Employed	24401018
476	Unemployed	24401018
431	Discouraged work-seeker	24401018
2337	Other not economically active	24401018
0	Age less than 15 years	24401018
3491	Not applicable	24401018
2048	Employed	24401019
239	Unemployed	24401019
42	Discouraged work-seeker	24401019
609	Other not economically active	24401019
0	Age less than 15 years	24401019
1187	Not applicable	24401019
2957	Employed	24401020
1143	Unemployed	24401020
542	Discouraged work-seeker	24401020
2506	Other not economically active	24401020
0	Age less than 15 years	24401020
4669	Not applicable	24401020
850	Employed	24401021
494	Unemployed	24401021
400	Discouraged work-seeker	24401021
2277	Other not economically active	24401021
0	Age less than 15 years	24401021
3121	Not applicable	24401021
477	Employed	24401022
419	Unemployed	24401022
347	Discouraged work-seeker	24401022
2063	Other not economically active	24401022
0	Age less than 15 years	24401022
2982	Not applicable	24401022
584	Employed	24401023
305	Unemployed	24401023
175	Discouraged work-seeker	24401023
2292	Other not economically active	24401023
0	Age less than 15 years	24401023
2988	Not applicable	24401023
320	Employed	24401024
254	Unemployed	24401024
149	Discouraged work-seeker	24401024
2244	Other not economically active	24401024
0	Age less than 15 years	24401024
2603	Not applicable	24401024
629	Employed	24401025
350	Unemployed	24401025
313	Discouraged work-seeker	24401025
2457	Other not economically active	24401025
0	Age less than 15 years	24401025
3318	Not applicable	24401025
2797	Employed	24401026
521	Unemployed	24401026
222	Discouraged work-seeker	24401026
1758	Other not economically active	24401026
0	Age less than 15 years	24401026
3595	Not applicable	24401026
642	Employed	24402001
816	Unemployed	24402001
161	Discouraged work-seeker	24402001
2571	Other not economically active	24402001
0	Age less than 15 years	24402001
3493	Not applicable	24402001
206	Employed	24402002
448	Unemployed	24402002
440	Discouraged work-seeker	24402002
1805	Other not economically active	24402002
0	Age less than 15 years	24402002
2945	Not applicable	24402002
812	Employed	24402003
568	Unemployed	24402003
950	Discouraged work-seeker	24402003
2572	Other not economically active	24402003
0	Age less than 15 years	24402003
4294	Not applicable	24402003
698	Employed	24402004
662	Unemployed	24402004
818	Discouraged work-seeker	24402004
1931	Other not economically active	24402004
0	Age less than 15 years	24402004
3548	Not applicable	24402004
341	Employed	24402005
589	Unemployed	24402005
554	Discouraged work-seeker	24402005
1500	Other not economically active	24402005
0	Age less than 15 years	24402005
2708	Not applicable	24402005
298	Employed	24402006
452	Unemployed	24402006
433	Discouraged work-seeker	24402006
1741	Other not economically active	24402006
0	Age less than 15 years	24402006
3242	Not applicable	24402006
1737	Employed	24402007
948	Unemployed	24402007
194	Discouraged work-seeker	24402007
2284	Other not economically active	24402007
0	Age less than 15 years	24402007
2874	Not applicable	24402007
557	Employed	24402008
676	Unemployed	24402008
534	Discouraged work-seeker	24402008
1811	Other not economically active	24402008
0	Age less than 15 years	24402008
3002	Not applicable	24402008
430	Employed	24402009
342	Unemployed	24402009
504	Discouraged work-seeker	24402009
2057	Other not economically active	24402009
0	Age less than 15 years	24402009
2675	Not applicable	24402009
246	Employed	24402010
346	Unemployed	24402010
344	Discouraged work-seeker	24402010
2774	Other not economically active	24402010
0	Age less than 15 years	24402010
3757	Not applicable	24402010
431	Employed	24402011
675	Unemployed	24402011
730	Discouraged work-seeker	24402011
2547	Other not economically active	24402011
0	Age less than 15 years	24402011
3873	Not applicable	24402011
450	Employed	24402012
457	Unemployed	24402012
380	Discouraged work-seeker	24402012
2218	Other not economically active	24402012
0	Age less than 15 years	24402012
3175	Not applicable	24402012
382	Employed	24402013
256	Unemployed	24402013
539	Discouraged work-seeker	24402013
2003	Other not economically active	24402013
0	Age less than 15 years	24402013
3087	Not applicable	24402013
401	Employed	24402014
752	Unemployed	24402014
392	Discouraged work-seeker	24402014
2136	Other not economically active	24402014
0	Age less than 15 years	24402014
3526	Not applicable	24402014
596	Employed	24402015
389	Unemployed	24402015
287	Discouraged work-seeker	24402015
2461	Other not economically active	24402015
0	Age less than 15 years	24402015
2847	Not applicable	24402015
1525	Employed	24402016
1106	Unemployed	24402016
190	Discouraged work-seeker	24402016
2686	Other not economically active	24402016
0	Age less than 15 years	24402016
3178	Not applicable	24402016
882	Employed	24402017
898	Unemployed	24402017
388	Discouraged work-seeker	24402017
2815	Other not economically active	24402017
0	Age less than 15 years	24402017
3240	Not applicable	24402017
2431	Employed	24402018
462	Unemployed	24402018
112	Discouraged work-seeker	24402018
1875	Other not economically active	24402018
0	Age less than 15 years	24402018
1785	Not applicable	24402018
808	Employed	24402019
516	Unemployed	24402019
321	Discouraged work-seeker	24402019
2983	Other not economically active	24402019
0	Age less than 15 years	24402019
3560	Not applicable	24402019
880	Employed	24402020
722	Unemployed	24402020
260	Discouraged work-seeker	24402020
2471	Other not economically active	24402020
0	Age less than 15 years	24402020
3585	Not applicable	24402020
616	Employed	24402021
475	Unemployed	24402021
429	Discouraged work-seeker	24402021
1981	Other not economically active	24402021
0	Age less than 15 years	24402021
3036	Not applicable	24402021
454	Employed	24402022
483	Unemployed	24402022
253	Discouraged work-seeker	24402022
2473	Other not economically active	24402022
0	Age less than 15 years	24402022
3338	Not applicable	24402022
664	Employed	24402023
616	Unemployed	24402023
247	Discouraged work-seeker	24402023
1850	Other not economically active	24402023
0	Age less than 15 years	24402023
3354	Not applicable	24402023
489	Employed	24402024
455	Unemployed	24402024
318	Discouraged work-seeker	24402024
2513	Other not economically active	24402024
0	Age less than 15 years	24402024
3291	Not applicable	24402024
467	Employed	24402025
399	Unemployed	24402025
365	Discouraged work-seeker	24402025
2076	Other not economically active	24402025
0	Age less than 15 years	24402025
3040	Not applicable	24402025
465	Employed	24402026
524	Unemployed	24402026
679	Discouraged work-seeker	24402026
2180	Other not economically active	24402026
0	Age less than 15 years	24402026
3424	Not applicable	24402026
505	Employed	24402027
605	Unemployed	24402027
158	Discouraged work-seeker	24402027
2019	Other not economically active	24402027
0	Age less than 15 years	24402027
2385	Not applicable	24402027
2242	Employed	24403001
504	Unemployed	24403001
503	Discouraged work-seeker	24403001
2210	Other not economically active	24403001
0	Age less than 15 years	24403001
2515	Not applicable	24403001
309	Employed	24403002
228	Unemployed	24403002
375	Discouraged work-seeker	24403002
2810	Other not economically active	24403002
0	Age less than 15 years	24403002
3983	Not applicable	24403002
507	Employed	24403003
383	Unemployed	24403003
453	Discouraged work-seeker	24403003
2668	Other not economically active	24403003
0	Age less than 15 years	24403003
3832	Not applicable	24403003
524	Employed	24403004
577	Unemployed	24403004
445	Discouraged work-seeker	24403004
1939	Other not economically active	24403004
0	Age less than 15 years	24403004
3386	Not applicable	24403004
552	Employed	24403005
482	Unemployed	24403005
451	Discouraged work-seeker	24403005
2616	Other not economically active	24403005
0	Age less than 15 years	24403005
4177	Not applicable	24403005
735	Employed	24403006
994	Unemployed	24403006
528	Discouraged work-seeker	24403006
3892	Other not economically active	24403006
0	Age less than 15 years	24403006
5668	Not applicable	24403006
674	Employed	24403007
507	Unemployed	24403007
349	Discouraged work-seeker	24403007
2920	Other not economically active	24403007
0	Age less than 15 years	24403007
3916	Not applicable	24403007
542	Employed	24403008
778	Unemployed	24403008
445	Discouraged work-seeker	24403008
2700	Other not economically active	24403008
0	Age less than 15 years	24403008
4595	Not applicable	24403008
804	Employed	24403009
407	Unemployed	24403009
635	Discouraged work-seeker	24403009
3833	Other not economically active	24403009
0	Age less than 15 years	24403009
6636	Not applicable	24403009
312	Employed	24403010
380	Unemployed	24403010
376	Discouraged work-seeker	24403010
3302	Other not economically active	24403010
0	Age less than 15 years	24403010
5302	Not applicable	24403010
308	Employed	24403011
228	Unemployed	24403011
547	Discouraged work-seeker	24403011
2652	Other not economically active	24403011
0	Age less than 15 years	24403011
4688	Not applicable	24403011
182	Employed	24403012
270	Unemployed	24403012
325	Discouraged work-seeker	24403012
3085	Other not economically active	24403012
0	Age less than 15 years	24403012
4603	Not applicable	24403012
1149	Employed	24403013
477	Unemployed	24403013
343	Discouraged work-seeker	24403013
2641	Other not economically active	24403013
0	Age less than 15 years	24403013
3561	Not applicable	24403013
393	Employed	24403014
497	Unemployed	24403014
584	Discouraged work-seeker	24403014
3444	Other not economically active	24403014
0	Age less than 15 years	24403014
5273	Not applicable	24403014
325	Employed	24403015
282	Unemployed	24403015
751	Discouraged work-seeker	24403015
3078	Other not economically active	24403015
0	Age less than 15 years	24403015
4943	Not applicable	24403015
288	Employed	24403016
231	Unemployed	24403016
437	Discouraged work-seeker	24403016
3530	Other not economically active	24403016
0	Age less than 15 years	24403016
4579	Not applicable	24403016
1066	Employed	24403017
830	Unemployed	24403017
413	Discouraged work-seeker	24403017
4002	Other not economically active	24403017
0	Age less than 15 years	24403017
5570	Not applicable	24403017
565	Employed	24403018
343	Unemployed	24403018
480	Discouraged work-seeker	24403018
3510	Other not economically active	24403018
0	Age less than 15 years	24403018
4522	Not applicable	24403018
460	Employed	24403019
500	Unemployed	24403019
1078	Discouraged work-seeker	24403019
3354	Other not economically active	24403019
0	Age less than 15 years	24403019
5322	Not applicable	24403019
676	Employed	24403020
601	Unemployed	24403020
575	Discouraged work-seeker	24403020
3494	Other not economically active	24403020
0	Age less than 15 years	24403020
4941	Not applicable	24403020
414	Employed	24403021
473	Unemployed	24403021
332	Discouraged work-seeker	24403021
2397	Other not economically active	24403021
0	Age less than 15 years	24403021
3295	Not applicable	24403021
355	Employed	24403022
444	Unemployed	24403022
382	Discouraged work-seeker	24403022
3351	Other not economically active	24403022
0	Age less than 15 years	24403022
4512	Not applicable	24403022
1369	Employed	24403023
1026	Unemployed	24403023
551	Discouraged work-seeker	24403023
3929	Other not economically active	24403023
0	Age less than 15 years	24403023
5254	Not applicable	24403023
1557	Employed	24403024
866	Unemployed	24403024
127	Discouraged work-seeker	24403024
1725	Other not economically active	24403024
0	Age less than 15 years	24403024
2578	Not applicable	24403024
416	Employed	24403025
229	Unemployed	24403025
565	Discouraged work-seeker	24403025
4199	Other not economically active	24403025
0	Age less than 15 years	24403025
6407	Not applicable	24403025
665	Employed	24403026
400	Unemployed	24403026
504	Discouraged work-seeker	24403026
2440	Other not economically active	24403026
0	Age less than 15 years	24403026
3664	Not applicable	24403026
460	Employed	24403027
373	Unemployed	24403027
519	Discouraged work-seeker	24403027
3040	Other not economically active	24403027
0	Age less than 15 years	24403027
4726	Not applicable	24403027
155	Employed	24403028
257	Unemployed	24403028
216	Discouraged work-seeker	24403028
2569	Other not economically active	24403028
0	Age less than 15 years	24403028
3727	Not applicable	24403028
352	Employed	24403029
303	Unemployed	24403029
456	Discouraged work-seeker	24403029
3292	Other not economically active	24403029
0	Age less than 15 years	24403029
4149	Not applicable	24403029
446	Employed	24403030
424	Unemployed	24403030
654	Discouraged work-seeker	24403030
2657	Other not economically active	24403030
0	Age less than 15 years	24403030
4656	Not applicable	24403030
538	Employed	24403031
675	Unemployed	24403031
221	Discouraged work-seeker	24403031
2527	Other not economically active	24403031
0	Age less than 15 years	24403031
4198	Not applicable	24403031
239	Employed	24404001
221	Unemployed	24404001
281	Discouraged work-seeker	24404001
2468	Other not economically active	24404001
0	Age less than 15 years	24404001
3018	Not applicable	24404001
258	Employed	24404002
221	Unemployed	24404002
526	Discouraged work-seeker	24404002
2693	Other not economically active	24404002
0	Age less than 15 years	24404002
3306	Not applicable	24404002
198	Employed	24404003
248	Unemployed	24404003
411	Discouraged work-seeker	24404003
2456	Other not economically active	24404003
0	Age less than 15 years	24404003
2968	Not applicable	24404003
377	Employed	24404004
154	Unemployed	24404004
305	Discouraged work-seeker	24404004
2277	Other not economically active	24404004
0	Age less than 15 years	24404004
2878	Not applicable	24404004
443	Employed	24404005
546	Unemployed	24404005
421	Discouraged work-seeker	24404005
1715	Other not economically active	24404005
0	Age less than 15 years	24404005
3002	Not applicable	24404005
191	Employed	24404006
209	Unemployed	24404006
235	Discouraged work-seeker	24404006
2840	Other not economically active	24404006
0	Age less than 15 years	24404006
3334	Not applicable	24404006
508	Employed	24404007
414	Unemployed	24404007
422	Discouraged work-seeker	24404007
3007	Other not economically active	24404007
0	Age less than 15 years	24404007
3886	Not applicable	24404007
252	Employed	24404008
241	Unemployed	24404008
321	Discouraged work-seeker	24404008
3109	Other not economically active	24404008
0	Age less than 15 years	24404008
3469	Not applicable	24404008
1143	Employed	24404009
385	Unemployed	24404009
368	Discouraged work-seeker	24404009
2215	Other not economically active	24404009
0	Age less than 15 years	24404009
2809	Not applicable	24404009
165	Employed	24404010
327	Unemployed	24404010
203	Discouraged work-seeker	24404010
2058	Other not economically active	24404010
0	Age less than 15 years	24404010
2515	Not applicable	24404010
369	Employed	24404011
547	Unemployed	24404011
373	Discouraged work-seeker	24404011
2146	Other not economically active	24404011
0	Age less than 15 years	24404011
2992	Not applicable	24404011
332	Employed	24404012
519	Unemployed	24404012
303	Discouraged work-seeker	24404012
2655	Other not economically active	24404012
0	Age less than 15 years	24404012
3052	Not applicable	24404012
555	Employed	24404013
745	Unemployed	24404013
840	Discouraged work-seeker	24404013
2694	Other not economically active	24404013
0	Age less than 15 years	24404013
4048	Not applicable	24404013
408	Employed	24404014
561	Unemployed	24404014
506	Discouraged work-seeker	24404014
2140	Other not economically active	24404014
0	Age less than 15 years	24404014
2979	Not applicable	24404014
286	Employed	24404015
311	Unemployed	24404015
491	Discouraged work-seeker	24404015
1379	Other not economically active	24404015
0	Age less than 15 years	24404015
2770	Not applicable	24404015
536	Employed	24404016
572	Unemployed	24404016
415	Discouraged work-seeker	24404016
2891	Other not economically active	24404016
0	Age less than 15 years	24404016
4439	Not applicable	24404016
293	Employed	24404017
329	Unemployed	24404017
507	Discouraged work-seeker	24404017
2247	Other not economically active	24404017
0	Age less than 15 years	24404017
3811	Not applicable	24404017
242	Employed	24404018
421	Unemployed	24404018
483	Discouraged work-seeker	24404018
2497	Other not economically active	24404018
0	Age less than 15 years	24404018
4039	Not applicable	24404018
3393	Employed	29200001
2759	Unemployed	29200001
543	Discouraged work-seeker	29200001
2401	Other not economically active	29200001
0	Age less than 15 years	29200001
3988	Not applicable	29200001
2930	Employed	29200002
2596	Unemployed	29200002
697	Discouraged work-seeker	29200002
2314	Other not economically active	29200002
0	Age less than 15 years	29200002
2988	Not applicable	29200002
6359	Employed	29200003
1163	Unemployed	29200003
172	Discouraged work-seeker	29200003
6468	Other not economically active	29200003
0	Age less than 15 years	29200003
3790	Not applicable	29200003
6243	Employed	29200004
236	Unemployed	29200004
13	Discouraged work-seeker	29200004
2254	Other not economically active	29200004
0	Age less than 15 years	29200004
4118	Not applicable	29200004
3801	Employed	29200005
2286	Unemployed	29200005
538	Discouraged work-seeker	29200005
3642	Other not economically active	29200005
0	Age less than 15 years	29200005
4795	Not applicable	29200005
3505	Employed	29200006
2881	Unemployed	29200006
600	Discouraged work-seeker	29200006
2793	Other not economically active	29200006
0	Age less than 15 years	29200006
4363	Not applicable	29200006
2815	Employed	29200007
2916	Unemployed	29200007
319	Discouraged work-seeker	29200007
2214	Other not economically active	29200007
0	Age less than 15 years	29200007
3425	Not applicable	29200007
2635	Employed	29200008
2126	Unemployed	29200008
369	Discouraged work-seeker	29200008
2140	Other not economically active	29200008
0	Age less than 15 years	29200008
3195	Not applicable	29200008
6733	Employed	29200009
2620	Unemployed	29200009
310	Discouraged work-seeker	29200009
3588	Other not economically active	29200009
0	Age less than 15 years	29200009
5293	Not applicable	29200009
4583	Employed	29200010
3139	Unemployed	29200010
603	Discouraged work-seeker	29200010
4703	Other not economically active	29200010
0	Age less than 15 years	29200010
6154	Not applicable	29200010
2644	Employed	29200011
2662	Unemployed	29200011
752	Discouraged work-seeker	29200011
4270	Other not economically active	29200011
0	Age less than 15 years	29200011
5210	Not applicable	29200011
2727	Employed	29200012
2479	Unemployed	29200012
482	Discouraged work-seeker	29200012
4497	Other not economically active	29200012
0	Age less than 15 years	29200012
4930	Not applicable	29200012
7139	Employed	29200013
3879	Unemployed	29200013
1442	Discouraged work-seeker	29200013
4913	Other not economically active	29200013
0	Age less than 15 years	29200013
8571	Not applicable	29200013
1690	Employed	29200014
1443	Unemployed	29200014
664	Discouraged work-seeker	29200014
2496	Other not economically active	29200014
0	Age less than 15 years	29200014
3191	Not applicable	29200014
4240	Employed	29200015
1126	Unemployed	29200015
585	Discouraged work-seeker	29200015
2587	Other not economically active	29200015
0	Age less than 15 years	29200015
3372	Not applicable	29200015
10018	Employed	29200016
2410	Unemployed	29200016
441	Discouraged work-seeker	29200016
6351	Other not economically active	29200016
0	Age less than 15 years	29200016
8214	Not applicable	29200016
3040	Employed	29200017
2245	Unemployed	29200017
1338	Discouraged work-seeker	29200017
4410	Other not economically active	29200017
0	Age less than 15 years	29200017
5541	Not applicable	29200017
5018	Employed	29200018
415	Unemployed	29200018
45	Discouraged work-seeker	29200018
2792	Other not economically active	29200018
0	Age less than 15 years	29200018
3334	Not applicable	29200018
3805	Employed	29200019
1311	Unemployed	29200019
390	Discouraged work-seeker	29200019
3070	Other not economically active	29200019
0	Age less than 15 years	29200019
3884	Not applicable	29200019
1889	Employed	29200020
1386	Unemployed	29200020
467	Discouraged work-seeker	29200020
3709	Other not economically active	29200020
0	Age less than 15 years	29200020
3645	Not applicable	29200020
3272	Employed	29200021
2386	Unemployed	29200021
543	Discouraged work-seeker	29200021
4843	Other not economically active	29200021
0	Age less than 15 years	29200021
4512	Not applicable	29200021
3600	Employed	29200022
2371	Unemployed	29200022
614	Discouraged work-seeker	29200022
3909	Other not economically active	29200022
0	Age less than 15 years	29200022
4951	Not applicable	29200022
3814	Employed	29200023
1716	Unemployed	29200023
762	Discouraged work-seeker	29200023
4064	Other not economically active	29200023
0	Age less than 15 years	29200023
5080	Not applicable	29200023
1924	Employed	29200024
3228	Unemployed	29200024
534	Discouraged work-seeker	29200024
3440	Other not economically active	29200024
0	Age less than 15 years	29200024
5364	Not applicable	29200024
2824	Employed	29200025
1801	Unemployed	29200025
539	Discouraged work-seeker	29200025
3320	Other not economically active	29200025
0	Age less than 15 years	29200025
4433	Not applicable	29200025
2832	Employed	29200026
1587	Unemployed	29200026
1238	Discouraged work-seeker	29200026
4772	Other not economically active	29200026
0	Age less than 15 years	29200026
6516	Not applicable	29200026
4846	Employed	29200027
437	Unemployed	29200027
79	Discouraged work-seeker	29200027
2407	Other not economically active	29200027
0	Age less than 15 years	29200027
3505	Not applicable	29200027
6533	Employed	29200028
1518	Unemployed	29200028
381	Discouraged work-seeker	29200028
2920	Other not economically active	29200028
0	Age less than 15 years	29200028
4899	Not applicable	29200028
7705	Employed	29200029
2906	Unemployed	29200029
726	Discouraged work-seeker	29200029
3328	Other not economically active	29200029
0	Age less than 15 years	29200029
5904	Not applicable	29200029
2201	Employed	29200030
1562	Unemployed	29200030
672	Discouraged work-seeker	29200030
4278	Other not economically active	29200030
0	Age less than 15 years	29200030
4249	Not applicable	29200030
5916	Employed	29200031
2498	Unemployed	29200031
897	Discouraged work-seeker	29200031
4718	Other not economically active	29200031
0	Age less than 15 years	29200031
7033	Not applicable	29200031
1162	Employed	29200032
1333	Unemployed	29200032
797	Discouraged work-seeker	29200032
4931	Other not economically active	29200032
0	Age less than 15 years	29200032
6705	Not applicable	29200032
1442	Employed	29200033
1388	Unemployed	29200033
1149	Discouraged work-seeker	29200033
5348	Other not economically active	29200033
0	Age less than 15 years	29200033
6619	Not applicable	29200033
1549	Employed	29200034
1956	Unemployed	29200034
1259	Discouraged work-seeker	29200034
3393	Other not economically active	29200034
0	Age less than 15 years	29200034
4842	Not applicable	29200034
4250	Employed	29200035
1723	Unemployed	29200035
520	Discouraged work-seeker	29200035
2918	Other not economically active	29200035
0	Age less than 15 years	29200035
4700	Not applicable	29200035
2186	Employed	29200036
2362	Unemployed	29200036
1080	Discouraged work-seeker	29200036
4017	Other not economically active	29200036
0	Age less than 15 years	29200036
6060	Not applicable	29200036
4381	Employed	29200037
1435	Unemployed	29200037
286	Discouraged work-seeker	29200037
3377	Other not economically active	29200037
0	Age less than 15 years	29200037
4290	Not applicable	29200037
1462	Employed	29200038
1986	Unemployed	29200038
789	Discouraged work-seeker	29200038
5055	Other not economically active	29200038
0	Age less than 15 years	29200038
6258	Not applicable	29200038
3491	Employed	29200039
2570	Unemployed	29200039
740	Discouraged work-seeker	29200039
3929	Other not economically active	29200039
0	Age less than 15 years	29200039
5572	Not applicable	29200039
1399	Employed	29200040
2124	Unemployed	29200040
707	Discouraged work-seeker	29200040
3314	Other not economically active	29200040
0	Age less than 15 years	29200040
4740	Not applicable	29200040
3395	Employed	29200041
2117	Unemployed	29200041
489	Discouraged work-seeker	29200041
2767	Other not economically active	29200041
0	Age less than 15 years	29200041
3780	Not applicable	29200041
2316	Employed	29200042
1863	Unemployed	29200042
810	Discouraged work-seeker	29200042
4747	Other not economically active	29200042
0	Age less than 15 years	29200042
4845	Not applicable	29200042
4056	Employed	29200043
2065	Unemployed	29200043
894	Discouraged work-seeker	29200043
5564	Other not economically active	29200043
0	Age less than 15 years	29200043
6084	Not applicable	29200043
4883	Employed	29200044
2612	Unemployed	29200044
1071	Discouraged work-seeker	29200044
5973	Other not economically active	29200044
0	Age less than 15 years	29200044
7042	Not applicable	29200044
2396	Employed	29200045
1776	Unemployed	29200045
819	Discouraged work-seeker	29200045
3305	Other not economically active	29200045
0	Age less than 15 years	29200045
4511	Not applicable	29200045
6413	Employed	29200046
2494	Unemployed	29200046
378	Discouraged work-seeker	29200046
5180	Other not economically active	29200046
0	Age less than 15 years	29200046
5072	Not applicable	29200046
4213	Employed	29200047
818	Unemployed	29200047
101	Discouraged work-seeker	29200047
6243	Other not economically active	29200047
0	Age less than 15 years	29200047
2362	Not applicable	29200047
2136	Employed	29200048
1831	Unemployed	29200048
491	Discouraged work-seeker	29200048
3495	Other not economically active	29200048
0	Age less than 15 years	29200048
3817	Not applicable	29200048
1339	Employed	29200049
1729	Unemployed	29200049
848	Discouraged work-seeker	29200049
3871	Other not economically active	29200049
0	Age less than 15 years	29200049
4893	Not applicable	29200049
2072	Employed	29200050
1739	Unemployed	29200050
570	Discouraged work-seeker	29200050
2884	Other not economically active	29200050
0	Age less than 15 years	29200050
3863	Not applicable	29200050
6556	Employed	29300001
406	Unemployed	29300001
67	Discouraged work-seeker	29300001
7033	Other not economically active	29300001
0	Age less than 15 years	29300001
5084	Not applicable	29300001
7985	Employed	29300002
823	Unemployed	29300002
91	Discouraged work-seeker	29300002
6776	Other not economically active	29300002
0	Age less than 15 years	29300002
5352	Not applicable	29300002
6600	Employed	29300003
455	Unemployed	29300003
77	Discouraged work-seeker	29300003
2869	Other not economically active	29300003
0	Age less than 15 years	29300003
5383	Not applicable	29300003
7386	Employed	29300004
4029	Unemployed	29300004
833	Discouraged work-seeker	29300004
5931	Other not economically active	29300004
0	Age less than 15 years	29300004
7635	Not applicable	29300004
7594	Employed	29300005
1163	Unemployed	29300005
185	Discouraged work-seeker	29300005
5041	Other not economically active	29300005
0	Age less than 15 years	29300005
4242	Not applicable	29300005
6505	Employed	29300006
383	Unemployed	29300006
84	Discouraged work-seeker	29300006
2496	Other not economically active	29300006
0	Age less than 15 years	29300006
4331	Not applicable	29300006
6404	Employed	29300007
1724	Unemployed	29300007
160	Discouraged work-seeker	29300007
4014	Other not economically active	29300007
0	Age less than 15 years	29300007
5455	Not applicable	29300007
9871	Employed	29300008
466	Unemployed	29300008
95	Discouraged work-seeker	29300008
3889	Other not economically active	29300008
0	Age less than 15 years	29300008
6134	Not applicable	29300008
6883	Employed	29300009
475	Unemployed	29300009
75	Discouraged work-seeker	29300009
3253	Other not economically active	29300009
0	Age less than 15 years	29300009
5180	Not applicable	29300009
5207	Employed	29300010
1802	Unemployed	29300010
354	Discouraged work-seeker	29300010
5203	Other not economically active	29300010
0	Age less than 15 years	29300010
6231	Not applicable	29300010
5195	Employed	29300011
1542	Unemployed	29300011
264	Discouraged work-seeker	29300011
4471	Other not economically active	29300011
0	Age less than 15 years	29300011
5086	Not applicable	29300011
10273	Employed	29300012
1945	Unemployed	29300012
494	Discouraged work-seeker	29300012
5900	Other not economically active	29300012
0	Age less than 15 years	29300012
8323	Not applicable	29300012
2799	Employed	29300013
3028	Unemployed	29300013
1263	Discouraged work-seeker	29300013
5832	Other not economically active	29300013
0	Age less than 15 years	29300013
7471	Not applicable	29300013
2554	Employed	29300014
1935	Unemployed	29300014
932	Discouraged work-seeker	29300014
3528	Other not economically active	29300014
0	Age less than 15 years	29300014
4086	Not applicable	29300014
2748	Employed	29300015
3136	Unemployed	29300015
784	Discouraged work-seeker	29300015
3823	Other not economically active	29300015
0	Age less than 15 years	29300015
4797	Not applicable	29300015
1743	Employed	29300016
1803	Unemployed	29300016
285	Discouraged work-seeker	29300016
2550	Other not economically active	29300016
0	Age less than 15 years	29300016
2804	Not applicable	29300016
2885	Employed	29300017
3359	Unemployed	29300017
673	Discouraged work-seeker	29300017
3849	Other not economically active	29300017
0	Age less than 15 years	29300017
4845	Not applicable	29300017
3007	Employed	29300018
3909	Unemployed	29300018
591	Discouraged work-seeker	29300018
4287	Other not economically active	29300018
0	Age less than 15 years	29300018
5143	Not applicable	29300018
1948	Employed	29300019
3178	Unemployed	29300019
335	Discouraged work-seeker	29300019
2567	Other not economically active	29300019
0	Age less than 15 years	29300019
3518	Not applicable	29300019
2242	Employed	29300020
2945	Unemployed	29300020
261	Discouraged work-seeker	29300020
2513	Other not economically active	29300020
0	Age less than 15 years	29300020
3431	Not applicable	29300020
2402	Employed	29300021
2840	Unemployed	29300021
667	Discouraged work-seeker	29300021
3647	Other not economically active	29300021
0	Age less than 15 years	29300021
4382	Not applicable	29300021
2775	Employed	29300022
3791	Unemployed	29300022
475	Discouraged work-seeker	29300022
3632	Other not economically active	29300022
0	Age less than 15 years	29300022
4909	Not applicable	29300022
3084	Employed	29300023
2498	Unemployed	29300023
488	Discouraged work-seeker	29300023
3476	Other not economically active	29300023
0	Age less than 15 years	29300023
4038	Not applicable	29300023
2427	Employed	29300024
3351	Unemployed	29300024
791	Discouraged work-seeker	29300024
3439	Other not economically active	29300024
0	Age less than 15 years	29300024
4596	Not applicable	29300024
2699	Employed	29300025
2377	Unemployed	29300025
543	Discouraged work-seeker	29300025
5723	Other not economically active	29300025
0	Age less than 15 years	29300025
5549	Not applicable	29300025
2025	Employed	29300026
2586	Unemployed	29300026
440	Discouraged work-seeker	29300026
2863	Other not economically active	29300026
0	Age less than 15 years	29300026
3677	Not applicable	29300026
2489	Employed	29300027
2445	Unemployed	29300027
728	Discouraged work-seeker	29300027
4170	Other not economically active	29300027
0	Age less than 15 years	29300027
4623	Not applicable	29300027
3554	Employed	29300028
3896	Unemployed	29300028
558	Discouraged work-seeker	29300028
4174	Other not economically active	29300028
0	Age less than 15 years	29300028
5497	Not applicable	29300028
5460	Employed	29300029
1988	Unemployed	29300029
757	Discouraged work-seeker	29300029
5829	Other not economically active	29300029
0	Age less than 15 years	29300029
6492	Not applicable	29300029
3594	Employed	29300030
2221	Unemployed	29300030
943	Discouraged work-seeker	29300030
3593	Other not economically active	29300030
0	Age less than 15 years	29300030
4606	Not applicable	29300030
5599	Employed	29300031
2604	Unemployed	29300031
623	Discouraged work-seeker	29300031
5072	Other not economically active	29300031
0	Age less than 15 years	29300031
6919	Not applicable	29300031
6343	Employed	29300032
2890	Unemployed	29300032
616	Discouraged work-seeker	29300032
5612	Other not economically active	29300032
0	Age less than 15 years	29300032
7366	Not applicable	29300032
3114	Employed	29300033
3029	Unemployed	29300033
972	Discouraged work-seeker	29300033
4791	Other not economically active	29300033
0	Age less than 15 years	29300033
5724	Not applicable	29300033
4954	Employed	29300034
3075	Unemployed	29300034
664	Discouraged work-seeker	29300034
6126	Other not economically active	29300034
0	Age less than 15 years	29300034
6830	Not applicable	29300034
4894	Employed	29300035
1909	Unemployed	29300035
782	Discouraged work-seeker	29300035
5469	Other not economically active	29300035
0	Age less than 15 years	29300035
6625	Not applicable	29300035
3691	Employed	29300036
1608	Unemployed	29300036
519	Discouraged work-seeker	29300036
3623	Other not economically active	29300036
0	Age less than 15 years	29300036
4294	Not applicable	29300036
3509	Employed	29300037
3192	Unemployed	29300037
808	Discouraged work-seeker	29300037
5480	Other not economically active	29300037
0	Age less than 15 years	29300037
6520	Not applicable	29300037
3458	Employed	29300038
3372	Unemployed	29300038
448	Discouraged work-seeker	29300038
4436	Other not economically active	29300038
0	Age less than 15 years	29300038
5917	Not applicable	29300038
7835	Employed	29300039
698	Unemployed	29300039
120	Discouraged work-seeker	29300039
3299	Other not economically active	29300039
0	Age less than 15 years	29300039
5355	Not applicable	29300039
9520	Employed	29300040
2862	Unemployed	29300040
1189	Discouraged work-seeker	29300040
5005	Other not economically active	29300040
0	Age less than 15 years	29300040
8438	Not applicable	29300040
10964	Employed	29300041
9279	Unemployed	29300041
2545	Discouraged work-seeker	29300041
10635	Other not economically active	29300041
0	Age less than 15 years	29300041
16313	Not applicable	29300041
2676	Employed	29300042
2497	Unemployed	29300042
2015	Discouraged work-seeker	29300042
5547	Other not economically active	29300042
0	Age less than 15 years	29300042
6457	Not applicable	29300042
2643	Employed	29300043
2712	Unemployed	29300043
1109	Discouraged work-seeker	29300043
4646	Other not economically active	29300043
0	Age less than 15 years	29300043
5281	Not applicable	29300043
4334	Employed	29300044
5011	Unemployed	29300044
1105	Discouraged work-seeker	29300044
7244	Other not economically active	29300044
0	Age less than 15 years	29300044
8458	Not applicable	29300044
3931	Employed	29300045
3708	Unemployed	29300045
1169	Discouraged work-seeker	29300045
4945	Other not economically active	29300045
0	Age less than 15 years	29300045
7082	Not applicable	29300045
3003	Employed	29300046
2743	Unemployed	29300046
976	Discouraged work-seeker	29300046
5669	Other not economically active	29300046
0	Age less than 15 years	29300046
6013	Not applicable	29300046
2246	Employed	29300047
2706	Unemployed	29300047
1069	Discouraged work-seeker	29300047
4260	Other not economically active	29300047
0	Age less than 15 years	29300047
4964	Not applicable	29300047
3243	Employed	29300048
1463	Unemployed	29300048
361	Discouraged work-seeker	29300048
5619	Other not economically active	29300048
0	Age less than 15 years	29300048
5513	Not applicable	29300048
4639	Employed	29300049
1992	Unemployed	29300049
300	Discouraged work-seeker	29300049
5630	Other not economically active	29300049
0	Age less than 15 years	29300049
6035	Not applicable	29300049
4572	Employed	29300050
3377	Unemployed	29300050
1452	Discouraged work-seeker	29300050
7347	Other not economically active	29300050
0	Age less than 15 years	29300050
8396	Not applicable	29300050
9664	Employed	29300051
788	Unemployed	29300051
201	Discouraged work-seeker	29300051
6537	Other not economically active	29300051
0	Age less than 15 years	29300051
7055	Not applicable	29300051
7021	Employed	29300052
2399	Unemployed	29300052
929	Discouraged work-seeker	29300052
5687	Other not economically active	29300052
0	Age less than 15 years	29300052
7547	Not applicable	29300052
8576	Employed	29300053
4167	Unemployed	29300053
805	Discouraged work-seeker	29300053
8144	Other not economically active	29300053
0	Age less than 15 years	29300053
10059	Not applicable	29300053
4882	Employed	29300054
5136	Unemployed	29300054
1681	Discouraged work-seeker	29300054
5451	Other not economically active	29300054
0	Age less than 15 years	29300054
8094	Not applicable	29300054
5000	Employed	29300055
7295	Unemployed	29300055
1486	Discouraged work-seeker	29300055
4161	Other not economically active	29300055
0	Age less than 15 years	29300055
8530	Not applicable	29300055
4809	Employed	29300056
6097	Unemployed	29300056
968	Discouraged work-seeker	29300056
4789	Other not economically active	29300056
0	Age less than 15 years	29300056
7516	Not applicable	29300056
3407	Employed	29300057
4037	Unemployed	29300057
649	Discouraged work-seeker	29300057
3392	Other not economically active	29300057
0	Age less than 15 years	29300057
5098	Not applicable	29300057
3790	Employed	29300058
3427	Unemployed	29300058
665	Discouraged work-seeker	29300058
4371	Other not economically active	29300058
0	Age less than 15 years	29300058
5190	Not applicable	29300058
4577	Employed	29300059
2648	Unemployed	29300059
398	Discouraged work-seeker	29300059
4152	Other not economically active	29300059
0	Age less than 15 years	29300059
5045	Not applicable	29300059
6368	Employed	29300060
4009	Unemployed	29300060
944	Discouraged work-seeker	29300060
6455	Other not economically active	29300060
0	Age less than 15 years	29300060
7366	Not applicable	29300060
1350	Employed	41601001
362	Unemployed	41601001
440	Discouraged work-seeker	41601001
1507	Other not economically active	41601001
0	Age less than 15 years	41601001
2228	Not applicable	41601001
1310	Employed	41601002
477	Unemployed	41601002
357	Discouraged work-seeker	41601002
2053	Other not economically active	41601002
0	Age less than 15 years	41601002
2538	Not applicable	41601002
2798	Employed	41601003
460	Unemployed	41601003
202	Discouraged work-seeker	41601003
1484	Other not economically active	41601003
0	Age less than 15 years	41601003
2329	Not applicable	41601003
814	Employed	41601004
504	Unemployed	41601004
325	Discouraged work-seeker	41601004
1926	Other not economically active	41601004
0	Age less than 15 years	41601004
2166	Not applicable	41601004
1519	Employed	41601005
240	Unemployed	41601005
195	Discouraged work-seeker	41601005
2818	Other not economically active	41601005
0	Age less than 15 years	41601005
1884	Not applicable	41601005
1372	Employed	41601006
580	Unemployed	41601006
225	Discouraged work-seeker	41601006
1730	Other not economically active	41601006
0	Age less than 15 years	41601006
2433	Not applicable	41601006
1671	Employed	41602001
587	Unemployed	41602001
215	Discouraged work-seeker	41602001
1489	Other not economically active	41602001
0	Age less than 15 years	41602001
2269	Not applicable	41602001
2184	Employed	41602002
773	Unemployed	41602002
60	Discouraged work-seeker	41602002
1576	Other not economically active	41602002
0	Age less than 15 years	41602002
2279	Not applicable	41602002
1127	Employed	41602003
464	Unemployed	41602003
507	Discouraged work-seeker	41602003
2168	Other not economically active	41602003
0	Age less than 15 years	41602003
2470	Not applicable	41602003
1192	Employed	41602004
532	Unemployed	41602004
180	Discouraged work-seeker	41602004
1622	Other not economically active	41602004
0	Age less than 15 years	41602004
2157	Not applicable	41602004
1577	Employed	41602005
372	Unemployed	41602005
470	Discouraged work-seeker	41602005
1328	Other not economically active	41602005
0	Age less than 15 years	41602005
1992	Not applicable	41602005
1009	Employed	41602006
472	Unemployed	41602006
308	Discouraged work-seeker	41602006
1708	Other not economically active	41602006
0	Age less than 15 years	41602006
2233	Not applicable	41602006
1494	Employed	41602007
328	Unemployed	41602007
230	Discouraged work-seeker	41602007
1621	Other not economically active	41602007
0	Age less than 15 years	41602007
2047	Not applicable	41602007
1083	Employed	41602008
665	Unemployed	41602008
109	Discouraged work-seeker	41602008
2113	Other not economically active	41602008
0	Age less than 15 years	41602008
2491	Not applicable	41602008
696	Employed	41603001
792	Unemployed	41603001
377	Discouraged work-seeker	41603001
1619	Other not economically active	41603001
0	Age less than 15 years	41603001
2696	Not applicable	41603001
1732	Employed	41603002
401	Unemployed	41603002
456	Discouraged work-seeker	41603002
1878	Other not economically active	41603002
0	Age less than 15 years	41603002
2903	Not applicable	41603002
1496	Employed	41603003
704	Unemployed	41603003
260	Discouraged work-seeker	41603003
1446	Other not economically active	41603003
0	Age less than 15 years	41603003
2402	Not applicable	41603003
775	Employed	41603004
246	Unemployed	41603004
130	Discouraged work-seeker	41603004
751	Other not economically active	41603004
0	Age less than 15 years	41603004
1079	Not applicable	41603004
1161	Employed	41603005
324	Unemployed	41603005
164	Discouraged work-seeker	41603005
1276	Other not economically active	41603005
0	Age less than 15 years	41603005
1836	Not applicable	41603005
1812	Employed	41603006
1050	Unemployed	41603006
184	Discouraged work-seeker	41603006
1229	Other not economically active	41603006
0	Age less than 15 years	41603006
2268	Not applicable	41603006
1649	Employed	41604001
627	Unemployed	41604001
631	Discouraged work-seeker	41604001
2058	Other not economically active	41604001
0	Age less than 15 years	41604001
3482	Not applicable	41604001
1059	Employed	41604002
401	Unemployed	41604002
262	Discouraged work-seeker	41604002
1599	Other not economically active	41604002
0	Age less than 15 years	41604002
2005	Not applicable	41604002
1328	Employed	41604003
331	Unemployed	41604003
345	Discouraged work-seeker	41604003
1466	Other not economically active	41604003
0	Age less than 15 years	41604003
2001	Not applicable	41604003
693	Employed	41604004
338	Unemployed	41604004
553	Discouraged work-seeker	41604004
1419	Other not economically active	41604004
0	Age less than 15 years	41604004
2067	Not applicable	41604004
1118	Employed	41801001
619	Unemployed	41801001
38	Discouraged work-seeker	41801001
1273	Other not economically active	41801001
0	Age less than 15 years	41801001
1740	Not applicable	41801001
1927	Employed	41801002
843	Unemployed	41801002
162	Discouraged work-seeker	41801002
1985	Other not economically active	41801002
0	Age less than 15 years	41801002
2735	Not applicable	41801002
1322	Employed	41801003
943	Unemployed	41801003
311	Discouraged work-seeker	41801003
1744	Other not economically active	41801003
0	Age less than 15 years	41801003
2536	Not applicable	41801003
869	Employed	41801004
647	Unemployed	41801004
111	Discouraged work-seeker	41801004
1193	Other not economically active	41801004
0	Age less than 15 years	41801004
1590	Not applicable	41801004
1179	Employed	41801005
1169	Unemployed	41801005
831	Discouraged work-seeker	41801005
2979	Other not economically active	41801005
0	Age less than 15 years	41801005
3948	Not applicable	41801005
710	Employed	41801006
206	Unemployed	41801006
48	Discouraged work-seeker	41801006
3488	Other not economically active	41801006
0	Age less than 15 years	41801006
771	Not applicable	41801006
1175	Employed	41801007
814	Unemployed	41801007
402	Discouraged work-seeker	41801007
1757	Other not economically active	41801007
0	Age less than 15 years	41801007
2456	Not applicable	41801007
653	Employed	41801008
574	Unemployed	41801008
184	Discouraged work-seeker	41801008
1468	Other not economically active	41801008
0	Age less than 15 years	41801008
1936	Not applicable	41801008
1501	Employed	41801009
826	Unemployed	41801009
648	Discouraged work-seeker	41801009
1815	Other not economically active	41801009
0	Age less than 15 years	41801009
2982	Not applicable	41801009
953	Employed	41801010
586	Unemployed	41801010
28	Discouraged work-seeker	41801010
1680	Other not economically active	41801010
0	Age less than 15 years	41801010
1864	Not applicable	41801010
1739	Employed	41802001
513	Unemployed	41802001
162	Discouraged work-seeker	41802001
2156	Other not economically active	41802001
0	Age less than 15 years	41802001
2513	Not applicable	41802001
1242	Employed	41802002
869	Unemployed	41802002
270	Discouraged work-seeker	41802002
2739	Other not economically active	41802002
0	Age less than 15 years	41802002
3389	Not applicable	41802002
2030	Employed	41802003
817	Unemployed	41802003
317	Discouraged work-seeker	41802003
2178	Other not economically active	41802003
0	Age less than 15 years	41802003
3258	Not applicable	41802003
1608	Employed	41802004
304	Unemployed	41802004
225	Discouraged work-seeker	41802004
1068	Other not economically active	41802004
0	Age less than 15 years	41802004
1590	Not applicable	41802004
651	Employed	41803001
701	Unemployed	41803001
444	Discouraged work-seeker	41803001
1074	Other not economically active	41803001
0	Age less than 15 years	41803001
2104	Not applicable	41803001
567	Employed	41803002
731	Unemployed	41803002
356	Discouraged work-seeker	41803002
1062	Other not economically active	41803002
0	Age less than 15 years	41803002
1984	Not applicable	41803002
873	Employed	41803003
735	Unemployed	41803003
208	Discouraged work-seeker	41803003
1922	Other not economically active	41803003
0	Age less than 15 years	41803003
2582	Not applicable	41803003
1462	Employed	41803004
1145	Unemployed	41803004
314	Discouraged work-seeker	41803004
1427	Other not economically active	41803004
0	Age less than 15 years	41803004
3105	Not applicable	41803004
2982	Employed	41803005
268	Unemployed	41803005
168	Discouraged work-seeker	41803005
1468	Other not economically active	41803005
0	Age less than 15 years	41803005
2401	Not applicable	41803005
842	Employed	41803006
497	Unemployed	41803006
303	Discouraged work-seeker	41803006
1817	Other not economically active	41803006
0	Age less than 15 years	41803006
2279	Not applicable	41803006
981	Employed	41803007
575	Unemployed	41803007
413	Discouraged work-seeker	41803007
1433	Other not economically active	41803007
0	Age less than 15 years	41803007
2089	Not applicable	41803007
1334	Employed	41803008
523	Unemployed	41803008
158	Discouraged work-seeker	41803008
1523	Other not economically active	41803008
0	Age less than 15 years	41803008
2123	Not applicable	41803008
1952	Employed	41804001
2016	Unemployed	41804001
622	Discouraged work-seeker	41804001
2810	Other not economically active	41804001
0	Age less than 15 years	41804001
4341	Not applicable	41804001
2059	Employed	41804002
2037	Unemployed	41804002
398	Discouraged work-seeker	41804002
3379	Other not economically active	41804002
0	Age less than 15 years	41804002
4719	Not applicable	41804002
3558	Employed	41804003
1483	Unemployed	41804003
284	Discouraged work-seeker	41804003
3899	Other not economically active	41804003
0	Age less than 15 years	41804003
4764	Not applicable	41804003
2316	Employed	41804004
1451	Unemployed	41804004
650	Discouraged work-seeker	41804004
3361	Other not economically active	41804004
0	Age less than 15 years	41804004
3947	Not applicable	41804004
2256	Employed	41804005
1979	Unemployed	41804005
580	Discouraged work-seeker	41804005
2534	Other not economically active	41804005
0	Age less than 15 years	41804005
3758	Not applicable	41804005
1784	Employed	41804006
1200	Unemployed	41804006
679	Discouraged work-seeker	41804006
2585	Other not economically active	41804006
0	Age less than 15 years	41804006
3395	Not applicable	41804006
2211	Employed	41804007
2079	Unemployed	41804007
697	Discouraged work-seeker	41804007
2931	Other not economically active	41804007
0	Age less than 15 years	41804007
4278	Not applicable	41804007
3512	Employed	41804008
1227	Unemployed	41804008
269	Discouraged work-seeker	41804008
2213	Other not economically active	41804008
0	Age less than 15 years	41804008
2946	Not applicable	41804008
3829	Employed	41804009
578	Unemployed	41804009
215	Discouraged work-seeker	41804009
3800	Other not economically active	41804009
0	Age less than 15 years	41804009
2959	Not applicable	41804009
2889	Employed	41804010
2144	Unemployed	41804010
358	Discouraged work-seeker	41804010
2473	Other not economically active	41804010
0	Age less than 15 years	41804010
4073	Not applicable	41804010
2754	Employed	41804011
2319	Unemployed	41804011
240	Discouraged work-seeker	41804011
3103	Other not economically active	41804011
0	Age less than 15 years	41804011
4213	Not applicable	41804011
3905	Employed	41804012
3451	Unemployed	41804012
528	Discouraged work-seeker	41804012
4351	Other not economically active	41804012
0	Age less than 15 years	41804012
5598	Not applicable	41804012
1419	Employed	41804013
1169	Unemployed	41804013
300	Discouraged work-seeker	41804013
1644	Other not economically active	41804013
0	Age less than 15 years	41804013
2008	Not applicable	41804013
3129	Employed	41804014
1979	Unemployed	41804014
388	Discouraged work-seeker	41804014
2993	Other not economically active	41804014
0	Age less than 15 years	41804014
3887	Not applicable	41804014
2884	Employed	41804015
2679	Unemployed	41804015
308	Discouraged work-seeker	41804015
3087	Other not economically active	41804015
0	Age less than 15 years	41804015
4134	Not applicable	41804015
3083	Employed	41804016
2373	Unemployed	41804016
522	Discouraged work-seeker	41804016
3420	Other not economically active	41804016
0	Age less than 15 years	41804016
4422	Not applicable	41804016
2819	Employed	41804017
2653	Unemployed	41804017
734	Discouraged work-seeker	41804017
3069	Other not economically active	41804017
0	Age less than 15 years	41804017
4898	Not applicable	41804017
1664	Employed	41804018
1636	Unemployed	41804018
385	Discouraged work-seeker	41804018
2591	Other not economically active	41804018
0	Age less than 15 years	41804018
3409	Not applicable	41804018
2166	Employed	41804019
2560	Unemployed	41804019
754	Discouraged work-seeker	41804019
3498	Other not economically active	41804019
0	Age less than 15 years	41804019
5282	Not applicable	41804019
2139	Employed	41804020
2049	Unemployed	41804020
276	Discouraged work-seeker	41804020
2927	Other not economically active	41804020
0	Age less than 15 years	41804020
3667	Not applicable	41804020
2489	Employed	41804021
2472	Unemployed	41804021
271	Discouraged work-seeker	41804021
3129	Other not economically active	41804021
0	Age less than 15 years	41804021
4463	Not applicable	41804021
2129	Employed	41804022
2307	Unemployed	41804022
416	Discouraged work-seeker	41804022
3149	Other not economically active	41804022
0	Age less than 15 years	41804022
4494	Not applicable	41804022
1504	Employed	41804023
1186	Unemployed	41804023
295	Discouraged work-seeker	41804023
2119	Other not economically active	41804023
0	Age less than 15 years	41804023
1548	Not applicable	41804023
2372	Employed	41804024
489	Unemployed	41804024
264	Discouraged work-seeker	41804024
1979	Other not economically active	41804024
0	Age less than 15 years	41804024
1714	Not applicable	41804024
5185	Employed	41804025
1403	Unemployed	41804025
277	Discouraged work-seeker	41804025
3244	Other not economically active	41804025
0	Age less than 15 years	41804025
4480	Not applicable	41804025
1908	Employed	41804026
1662	Unemployed	41804026
257	Discouraged work-seeker	41804026
2216	Other not economically active	41804026
0	Age less than 15 years	41804026
2831	Not applicable	41804026
4056	Employed	41804027
733	Unemployed	41804027
167	Discouraged work-seeker	41804027
2430	Other not economically active	41804027
0	Age less than 15 years	41804027
2758	Not applicable	41804027
1560	Employed	41804028
1025	Unemployed	41804028
421	Discouraged work-seeker	41804028
2557	Other not economically active	41804028
0	Age less than 15 years	41804028
2698	Not applicable	41804028
1672	Employed	41804029
1306	Unemployed	41804029
162	Discouraged work-seeker	41804029
1883	Other not economically active	41804029
0	Age less than 15 years	41804029
2688	Not applicable	41804029
2302	Employed	41804030
1573	Unemployed	41804030
292	Discouraged work-seeker	41804030
2136	Other not economically active	41804030
0	Age less than 15 years	41804030
2786	Not applicable	41804030
2175	Employed	41804031
1579	Unemployed	41804031
256	Discouraged work-seeker	41804031
2330	Other not economically active	41804031
0	Age less than 15 years	41804031
2867	Not applicable	41804031
4532	Employed	41804032
886	Unemployed	41804032
257	Discouraged work-seeker	41804032
2822	Other not economically active	41804032
0	Age less than 15 years	41804032
3357	Not applicable	41804032
3846	Employed	41804033
611	Unemployed	41804033
199	Discouraged work-seeker	41804033
2363	Other not economically active	41804033
0	Age less than 15 years	41804033
2703	Not applicable	41804033
4808	Employed	41804034
880	Unemployed	41804034
136	Discouraged work-seeker	41804034
3376	Other not economically active	41804034
0	Age less than 15 years	41804034
3714	Not applicable	41804034
3098	Employed	41804035
508	Unemployed	41804035
104	Discouraged work-seeker	41804035
5638	Other not economically active	41804035
0	Age less than 15 years	41804035
2346	Not applicable	41804035
3689	Employed	41804036
842	Unemployed	41804036
328	Discouraged work-seeker	41804036
3120	Other not economically active	41804036
0	Age less than 15 years	41804036
3689	Not applicable	41804036
945	Employed	41805001
366	Unemployed	41805001
659	Discouraged work-seeker	41805001
2314	Other not economically active	41805001
0	Age less than 15 years	41805001
2853	Not applicable	41805001
1435	Employed	41805002
436	Unemployed	41805002
339	Discouraged work-seeker	41805002
1274	Other not economically active	41805002
0	Age less than 15 years	41805002
2012	Not applicable	41805002
1040	Employed	41805003
727	Unemployed	41805003
441	Discouraged work-seeker	41805003
1915	Other not economically active	41805003
0	Age less than 15 years	41805003
2564	Not applicable	41805003
1110	Employed	41805004
968	Unemployed	41805004
564	Discouraged work-seeker	41805004
1796	Other not economically active	41805004
0	Age less than 15 years	41805004
3498	Not applicable	41805004
1321	Employed	41805005
1020	Unemployed	41805005
222	Discouraged work-seeker	41805005
1590	Other not economically active	41805005
0	Age less than 15 years	41805005
2461	Not applicable	41805005
720	Employed	41805006
1018	Unemployed	41805006
189	Discouraged work-seeker	41805006
1559	Other not economically active	41805006
0	Age less than 15 years	41805006
2121	Not applicable	41805006
934	Employed	41805007
780	Unemployed	41805007
182	Discouraged work-seeker	41805007
1524	Other not economically active	41805007
0	Age less than 15 years	41805007
2063	Not applicable	41805007
1041	Employed	41805008
480	Unemployed	41805008
230	Discouraged work-seeker	41805008
1591	Other not economically active	41805008
0	Age less than 15 years	41805008
2245	Not applicable	41805008
1472	Employed	41805009
1144	Unemployed	41805009
717	Discouraged work-seeker	41805009
2881	Other not economically active	41805009
0	Age less than 15 years	41805009
4407	Not applicable	41805009
2854	Employed	41805010
409	Unemployed	41805010
176	Discouraged work-seeker	41805010
1127	Other not economically active	41805010
0	Age less than 15 years	41805010
1919	Not applicable	41805010
1133	Employed	41805011
1217	Unemployed	41805011
483	Discouraged work-seeker	41805011
2042	Other not economically active	41805011
0	Age less than 15 years	41805011
3069	Not applicable	41805011
1778	Employed	41805012
260	Unemployed	41805012
385	Discouraged work-seeker	41805012
1186	Other not economically active	41805012
0	Age less than 15 years	41805012
2010	Not applicable	41805012
1186	Employed	41901001
720	Unemployed	41901001
92	Discouraged work-seeker	41901001
1413	Other not economically active	41901001
0	Age less than 15 years	41901001
2083	Not applicable	41901001
1476	Employed	41901002
1102	Unemployed	41901002
302	Discouraged work-seeker	41901002
3064	Other not economically active	41901002
0	Age less than 15 years	41901002
4065	Not applicable	41901002
2339	Employed	41901003
369	Unemployed	41901003
183	Discouraged work-seeker	41901003
831	Other not economically active	41901003
0	Age less than 15 years	41901003
1696	Not applicable	41901003
827	Employed	41901004
699	Unemployed	41901004
130	Discouraged work-seeker	41901004
1487	Other not economically active	41901004
0	Age less than 15 years	41901004
1859	Not applicable	41901004
253	Employed	41901005
222	Unemployed	41901005
121	Discouraged work-seeker	41901005
1131	Other not economically active	41901005
0	Age less than 15 years	41901005
1069	Not applicable	41901005
1512	Employed	41901006
725	Unemployed	41901006
925	Discouraged work-seeker	41901006
3215	Other not economically active	41901006
0	Age less than 15 years	41901006
4236	Not applicable	41901006
1033	Employed	41901007
499	Unemployed	41901007
464	Discouraged work-seeker	41901007
2449	Other not economically active	41901007
0	Age less than 15 years	41901007
2686	Not applicable	41901007
1083	Employed	41901008
996	Unemployed	41901008
602	Discouraged work-seeker	41901008
2305	Other not economically active	41901008
0	Age less than 15 years	41901008
3337	Not applicable	41901008
1753	Employed	41901009
509	Unemployed	41901009
284	Discouraged work-seeker	41901009
1518	Other not economically active	41901009
0	Age less than 15 years	41901009
2143	Not applicable	41901009
1036	Employed	41901010
358	Unemployed	41901010
149	Discouraged work-seeker	41901010
1011	Other not economically active	41901010
0	Age less than 15 years	41901010
1394	Not applicable	41901010
995	Employed	41901011
875	Unemployed	41901011
435	Discouraged work-seeker	41901011
1647	Other not economically active	41901011
0	Age less than 15 years	41901011
2328	Not applicable	41901011
748	Employed	41901012
872	Unemployed	41901012
127	Discouraged work-seeker	41901012
1446	Other not economically active	41901012
0	Age less than 15 years	41901012
2067	Not applicable	41901012
971	Employed	41901013
711	Unemployed	41901013
356	Discouraged work-seeker	41901013
2423	Other not economically active	41901013
0	Age less than 15 years	41901013
3054	Not applicable	41901013
1101	Employed	41901014
735	Unemployed	41901014
212	Discouraged work-seeker	41901014
1572	Other not economically active	41901014
0	Age less than 15 years	41901014
2102	Not applicable	41901014
2869	Employed	41901015
456	Unemployed	41901015
237	Discouraged work-seeker	41901015
2206	Other not economically active	41901015
0	Age less than 15 years	41901015
2936	Not applicable	41901015
1259	Employed	41901016
1040	Unemployed	41901016
447	Discouraged work-seeker	41901016
1599	Other not economically active	41901016
0	Age less than 15 years	41901016
2831	Not applicable	41901016
348	Employed	41901017
253	Unemployed	41901017
77	Discouraged work-seeker	41901017
401	Other not economically active	41901017
0	Age less than 15 years	41901017
655	Not applicable	41901017
704	Employed	41901018
777	Unemployed	41901018
223	Discouraged work-seeker	41901018
1394	Other not economically active	41901018
0	Age less than 15 years	41901018
2167	Not applicable	41901018
1609	Employed	41902001
972	Unemployed	41902001
45	Discouraged work-seeker	41902001
1307	Other not economically active	41902001
0	Age less than 15 years	41902001
2198	Not applicable	41902001
1377	Employed	41902002
845	Unemployed	41902002
70	Discouraged work-seeker	41902002
934	Other not economically active	41902002
0	Age less than 15 years	41902002
1739	Not applicable	41902002
2234	Employed	41902003
396	Unemployed	41902003
20	Discouraged work-seeker	41902003
1795	Other not economically active	41902003
0	Age less than 15 years	41902003
2249	Not applicable	41902003
1706	Employed	41902004
934	Unemployed	41902004
234	Discouraged work-seeker	41902004
1360	Other not economically active	41902004
0	Age less than 15 years	41902004
2107	Not applicable	41902004
1213	Employed	41902005
660	Unemployed	41902005
143	Discouraged work-seeker	41902005
1307	Other not economically active	41902005
0	Age less than 15 years	41902005
1773	Not applicable	41902005
1809	Employed	41902006
936	Unemployed	41902006
201	Discouraged work-seeker	41902006
1625	Other not economically active	41902006
0	Age less than 15 years	41902006
2311	Not applicable	41902006
1387	Employed	41902007
616	Unemployed	41902007
225	Discouraged work-seeker	41902007
1318	Other not economically active	41902007
0	Age less than 15 years	41902007
1754	Not applicable	41902007
1847	Employed	41902008
633	Unemployed	41902008
317	Discouraged work-seeker	41902008
1169	Other not economically active	41902008
0	Age less than 15 years	41902008
1856	Not applicable	41902008
941	Employed	41902009
203	Unemployed	41902009
19	Discouraged work-seeker	41902009
923	Other not economically active	41902009
0	Age less than 15 years	41902009
929	Not applicable	41902009
1824	Employed	41902010
104	Unemployed	41902010
44	Discouraged work-seeker	41902010
739	Other not economically active	41902010
0	Age less than 15 years	41902010
1250	Not applicable	41902010
2642	Employed	41902011
711	Unemployed	41902011
493	Discouraged work-seeker	41902011
2309	Other not economically active	41902011
0	Age less than 15 years	41902011
3309	Not applicable	41902011
1281	Employed	41902012
939	Unemployed	41902012
625	Discouraged work-seeker	41902012
2440	Other not economically active	41902012
0	Age less than 15 years	41902012
3988	Not applicable	41902012
402	Employed	41902013
706	Unemployed	41902013
48	Discouraged work-seeker	41902013
807	Other not economically active	41902013
0	Age less than 15 years	41902013
1313	Not applicable	41902013
1415	Employed	41902014
409	Unemployed	41902014
284	Discouraged work-seeker	41902014
1835	Other not economically active	41902014
0	Age less than 15 years	41902014
2234	Not applicable	41902014
1381	Employed	41902015
621	Unemployed	41902015
517	Discouraged work-seeker	41902015
1573	Other not economically active	41902015
0	Age less than 15 years	41902015
2520	Not applicable	41902015
1997	Employed	41902016
521	Unemployed	41902016
152	Discouraged work-seeker	41902016
1372	Other not economically active	41902016
0	Age less than 15 years	41902016
1685	Not applicable	41902016
787	Employed	41902017
917	Unemployed	41902017
695	Discouraged work-seeker	41902017
1971	Other not economically active	41902017
0	Age less than 15 years	41902017
2644	Not applicable	41902017
2971	Employed	41902018
359	Unemployed	41902018
99	Discouraged work-seeker	41902018
1954	Other not economically active	41902018
0	Age less than 15 years	41902018
2330	Not applicable	41902018
2731	Employed	41902019
1508	Unemployed	41902019
380	Discouraged work-seeker	41902019
2637	Other not economically active	41902019
0	Age less than 15 years	41902019
4080	Not applicable	41902019
2291	Employed	41902020
662	Unemployed	41902020
278	Discouraged work-seeker	41902020
2092	Other not economically active	41902020
0	Age less than 15 years	41902020
2582	Not applicable	41902020
1377	Employed	41903001
623	Unemployed	41903001
382	Discouraged work-seeker	41903001
1774	Other not economically active	41903001
0	Age less than 15 years	41903001
2629	Not applicable	41903001
1063	Employed	41903002
921	Unemployed	41903002
397	Discouraged work-seeker	41903002
2005	Other not economically active	41903002
0	Age less than 15 years	41903002
3118	Not applicable	41903002
1139	Employed	41903003
751	Unemployed	41903003
512	Discouraged work-seeker	41903003
2233	Other not economically active	41903003
0	Age less than 15 years	41903003
3291	Not applicable	41903003
1289	Employed	41903004
457	Unemployed	41903004
449	Discouraged work-seeker	41903004
1483	Other not economically active	41903004
0	Age less than 15 years	41903004
2188	Not applicable	41903004
1297	Employed	41903005
697	Unemployed	41903005
231	Discouraged work-seeker	41903005
1508	Other not economically active	41903005
0	Age less than 15 years	41903005
2309	Not applicable	41903005
2250	Employed	41903006
396	Unemployed	41903006
207	Discouraged work-seeker	41903006
1404	Other not economically active	41903006
0	Age less than 15 years	41903006
2255	Not applicable	41903006
2117	Employed	41903007
451	Unemployed	41903007
220	Discouraged work-seeker	41903007
1398	Other not economically active	41903007
0	Age less than 15 years	41903007
2265	Not applicable	41903007
1106	Employed	41903008
535	Unemployed	41903008
172	Discouraged work-seeker	41903008
1397	Other not economically active	41903008
0	Age less than 15 years	41903008
1924	Not applicable	41903008
1766	Employed	41903009
1025	Unemployed	41903009
435	Discouraged work-seeker	41903009
1861	Other not economically active	41903009
0	Age less than 15 years	41903009
3015	Not applicable	41903009
2741	Employed	41904001
1514	Unemployed	41904001
941	Discouraged work-seeker	41904001
3744	Other not economically active	41904001
0	Age less than 15 years	41904001
5437	Not applicable	41904001
1615	Employed	41904002
945	Unemployed	41904002
594	Discouraged work-seeker	41904002
2350	Other not economically active	41904002
0	Age less than 15 years	41904002
3399	Not applicable	41904002
1347	Employed	41904003
1193	Unemployed	41904003
485	Discouraged work-seeker	41904003
2506	Other not economically active	41904003
0	Age less than 15 years	41904003
3060	Not applicable	41904003
2096	Employed	41904004
996	Unemployed	41904004
441	Discouraged work-seeker	41904004
1857	Other not economically active	41904004
0	Age less than 15 years	41904004
3037	Not applicable	41904004
2933	Employed	41904005
1019	Unemployed	41904005
427	Discouraged work-seeker	41904005
2529	Other not economically active	41904005
0	Age less than 15 years	41904005
3707	Not applicable	41904005
2242	Employed	41904006
202	Unemployed	41904006
457	Discouraged work-seeker	41904006
1474	Other not economically active	41904006
0	Age less than 15 years	41904006
2206	Not applicable	41904006
1148	Employed	41904007
1013	Unemployed	41904007
188	Discouraged work-seeker	41904007
2625	Other not economically active	41904007
0	Age less than 15 years	41904007
3062	Not applicable	41904007
612	Employed	41904008
362	Unemployed	41904008
346	Discouraged work-seeker	41904008
1569	Other not economically active	41904008
0	Age less than 15 years	41904008
1906	Not applicable	41904008
1040	Employed	41904009
1065	Unemployed	41904009
680	Discouraged work-seeker	41904009
3215	Other not economically active	41904009
0	Age less than 15 years	41904009
3999	Not applicable	41904009
953	Employed	41904010
1409	Unemployed	41904010
505	Discouraged work-seeker	41904010
2575	Other not economically active	41904010
0	Age less than 15 years	41904010
3354	Not applicable	41904010
749	Employed	41904011
861	Unemployed	41904011
378	Discouraged work-seeker	41904011
3070	Other not economically active	41904011
0	Age less than 15 years	41904011
3596	Not applicable	41904011
1437	Employed	41904012
1260	Unemployed	41904012
1034	Discouraged work-seeker	41904012
3929	Other not economically active	41904012
0	Age less than 15 years	41904012
5186	Not applicable	41904012
992	Employed	41904013
1139	Unemployed	41904013
447	Discouraged work-seeker	41904013
2600	Other not economically active	41904013
0	Age less than 15 years	41904013
3397	Not applicable	41904013
1208	Employed	41904014
922	Unemployed	41904014
408	Discouraged work-seeker	41904014
3314	Other not economically active	41904014
0	Age less than 15 years	41904014
3634	Not applicable	41904014
955	Employed	41904015
660	Unemployed	41904015
1004	Discouraged work-seeker	41904015
2783	Other not economically active	41904015
0	Age less than 15 years	41904015
3810	Not applicable	41904015
1285	Employed	41904016
1286	Unemployed	41904016
618	Discouraged work-seeker	41904016
2441	Other not economically active	41904016
0	Age less than 15 years	41904016
3727	Not applicable	41904016
858	Employed	41904017
642	Unemployed	41904017
415	Discouraged work-seeker	41904017
2755	Other not economically active	41904017
0	Age less than 15 years	41904017
3062	Not applicable	41904017
1096	Employed	41904018
1140	Unemployed	41904018
156	Discouraged work-seeker	41904018
2546	Other not economically active	41904018
0	Age less than 15 years	41904018
3133	Not applicable	41904018
964	Employed	41904019
1508	Unemployed	41904019
646	Discouraged work-seeker	41904019
2625	Other not economically active	41904019
0	Age less than 15 years	41904019
4072	Not applicable	41904019
514	Employed	41904020
977	Unemployed	41904020
300	Discouraged work-seeker	41904020
2179	Other not economically active	41904020
0	Age less than 15 years	41904020
2929	Not applicable	41904020
730	Employed	41904021
1056	Unemployed	41904021
662	Discouraged work-seeker	41904021
3492	Other not economically active	41904021
0	Age less than 15 years	41904021
3869	Not applicable	41904021
4185	Employed	41904022
802	Unemployed	41904022
310	Discouraged work-seeker	41904022
2911	Other not economically active	41904022
0	Age less than 15 years	41904022
3881	Not applicable	41904022
1351	Employed	41904023
854	Unemployed	41904023
496	Discouraged work-seeker	41904023
3356	Other not economically active	41904023
0	Age less than 15 years	41904023
3794	Not applicable	41904023
2010	Employed	41904024
1571	Unemployed	41904024
1573	Discouraged work-seeker	41904024
4741	Other not economically active	41904024
0	Age less than 15 years	41904024
6533	Not applicable	41904024
1602	Employed	41904025
856	Unemployed	41904025
392	Discouraged work-seeker	41904025
2252	Other not economically active	41904025
0	Age less than 15 years	41904025
2812	Not applicable	41904025
831	Employed	41904026
1055	Unemployed	41904026
171	Discouraged work-seeker	41904026
2055	Other not economically active	41904026
0	Age less than 15 years	41904026
2637	Not applicable	41904026
2062	Employed	41904027
1110	Unemployed	41904027
258	Discouraged work-seeker	41904027
2766	Other not economically active	41904027
0	Age less than 15 years	41904027
2988	Not applicable	41904027
2173	Employed	41904028
1526	Unemployed	41904028
512	Discouraged work-seeker	41904028
3387	Other not economically active	41904028
0	Age less than 15 years	41904028
4273	Not applicable	41904028
1754	Employed	41904029
1195	Unemployed	41904029
225	Discouraged work-seeker	41904029
3411	Other not economically active	41904029
0	Age less than 15 years	41904029
3047	Not applicable	41904029
936	Employed	41904030
957	Unemployed	41904030
187	Discouraged work-seeker	41904030
2077	Other not economically active	41904030
0	Age less than 15 years	41904030
2715	Not applicable	41904030
940	Employed	41904031
821	Unemployed	41904031
784	Discouraged work-seeker	41904031
2450	Other not economically active	41904031
0	Age less than 15 years	41904031
3392	Not applicable	41904031
1564	Employed	41904032
1857	Unemployed	41904032
728	Discouraged work-seeker	41904032
3605	Other not economically active	41904032
0	Age less than 15 years	41904032
5258	Not applicable	41904032
2072	Employed	41904033
1704	Unemployed	41904033
593	Discouraged work-seeker	41904033
3567	Other not economically active	41904033
0	Age less than 15 years	41904033
4676	Not applicable	41904033
3242	Employed	41904034
1757	Unemployed	41904034
734	Discouraged work-seeker	41904034
4008	Other not economically active	41904034
0	Age less than 15 years	41904034
5176	Not applicable	41904034
630	Employed	41904035
764	Unemployed	41904035
284	Discouraged work-seeker	41904035
2280	Other not economically active	41904035
0	Age less than 15 years	41904035
2723	Not applicable	41904035
506	Employed	41905001
83	Unemployed	41905001
123	Discouraged work-seeker	41905001
613	Other not economically active	41905001
0	Age less than 15 years	41905001
995	Not applicable	41905001
1034	Employed	41905002
607	Unemployed	41905002
374	Discouraged work-seeker	41905002
1851	Other not economically active	41905002
0	Age less than 15 years	41905002
2505	Not applicable	41905002
1042	Employed	41905003
372	Unemployed	41905003
128	Discouraged work-seeker	41905003
1081	Other not economically active	41905003
0	Age less than 15 years	41905003
1505	Not applicable	41905003
846	Employed	41905004
439	Unemployed	41905004
489	Discouraged work-seeker	41905004
1545	Other not economically active	41905004
0	Age less than 15 years	41905004
2193	Not applicable	41905004
2417	Employed	41905005
351	Unemployed	41905005
387	Discouraged work-seeker	41905005
1325	Other not economically active	41905005
0	Age less than 15 years	41905005
2398	Not applicable	41905005
789	Employed	41905006
555	Unemployed	41905006
624	Discouraged work-seeker	41905006
1607	Other not economically active	41905006
0	Age less than 15 years	41905006
2210	Not applicable	41905006
1543	Employed	41905007
402	Unemployed	41905007
301	Discouraged work-seeker	41905007
2008	Other not economically active	41905007
0	Age less than 15 years	41905007
2223	Not applicable	41905007
2503	Employed	41905008
815	Unemployed	41905008
700	Discouraged work-seeker	41905008
2306	Other not economically active	41905008
0	Age less than 15 years	41905008
3977	Not applicable	41905008
1399	Employed	41906001
648	Unemployed	41906001
397	Discouraged work-seeker	41906001
1575	Other not economically active	41906001
0	Age less than 15 years	41906001
2329	Not applicable	41906001
1173	Employed	41906002
270	Unemployed	41906002
473	Discouraged work-seeker	41906002
1747	Other not economically active	41906002
0	Age less than 15 years	41906002
2158	Not applicable	41906002
1671	Employed	41906003
562	Unemployed	41906003
85	Discouraged work-seeker	41906003
1421	Other not economically active	41906003
0	Age less than 15 years	41906003
2020	Not applicable	41906003
1648	Employed	41906004
982	Unemployed	41906004
285	Discouraged work-seeker	41906004
1698	Other not economically active	41906004
0	Age less than 15 years	41906004
2832	Not applicable	41906004
1191	Employed	41906005
546	Unemployed	41906005
56	Discouraged work-seeker	41906005
1639	Other not economically active	41906005
0	Age less than 15 years	41906005
1935	Not applicable	41906005
830	Employed	41906006
613	Unemployed	41906006
165	Discouraged work-seeker	41906006
1333	Other not economically active	41906006
0	Age less than 15 years	41906006
1792	Not applicable	41906006
1929	Employed	41906007
265	Unemployed	41906007
181	Discouraged work-seeker	41906007
1055	Other not economically active	41906007
0	Age less than 15 years	41906007
1830	Not applicable	41906007
1009	Employed	41906008
657	Unemployed	41906008
155	Discouraged work-seeker	41906008
1387	Other not economically active	41906008
0	Age less than 15 years	41906008
2276	Not applicable	41906008
989	Employed	41906009
344	Unemployed	41906009
291	Discouraged work-seeker	41906009
1394	Other not economically active	41906009
0	Age less than 15 years	41906009
1821	Not applicable	41906009
774	Employed	42001001
1031	Unemployed	42001001
370	Discouraged work-seeker	42001001
2294	Other not economically active	42001001
0	Age less than 15 years	42001001
3324	Not applicable	42001001
2973	Employed	42001002
474	Unemployed	42001002
229	Discouraged work-seeker	42001002
1973	Other not economically active	42001002
0	Age less than 15 years	42001002
2530	Not applicable	42001002
2153	Employed	42001003
145	Unemployed	42001003
78	Discouraged work-seeker	42001003
4267	Other not economically active	42001003
0	Age less than 15 years	42001003
1744	Not applicable	42001003
1227	Employed	42001004
818	Unemployed	42001004
237	Discouraged work-seeker	42001004
1878	Other not economically active	42001004
0	Age less than 15 years	42001004
2439	Not applicable	42001004
1265	Employed	42001005
943	Unemployed	42001005
417	Discouraged work-seeker	42001005
1892	Other not economically active	42001005
0	Age less than 15 years	42001005
2532	Not applicable	42001005
713	Employed	42001006
565	Unemployed	42001006
38	Discouraged work-seeker	42001006
635	Other not economically active	42001006
0	Age less than 15 years	42001006
1012	Not applicable	42001006
1565	Employed	42001007
1131	Unemployed	42001007
220	Discouraged work-seeker	42001007
2227	Other not economically active	42001007
0	Age less than 15 years	42001007
2685	Not applicable	42001007
1061	Employed	42001008
962	Unemployed	42001008
51	Discouraged work-seeker	42001008
1153	Other not economically active	42001008
0	Age less than 15 years	42001008
1831	Not applicable	42001008
1593	Employed	42001009
1096	Unemployed	42001009
281	Discouraged work-seeker	42001009
2345	Other not economically active	42001009
0	Age less than 15 years	42001009
2589	Not applicable	42001009
1012	Employed	42001010
986	Unemployed	42001010
71	Discouraged work-seeker	42001010
1470	Other not economically active	42001010
0	Age less than 15 years	42001010
1868	Not applicable	42001010
906	Employed	42001011
1140	Unemployed	42001011
36	Discouraged work-seeker	42001011
887	Other not economically active	42001011
0	Age less than 15 years	42001011
1684	Not applicable	42001011
898	Employed	42001012
786	Unemployed	42001012
51	Discouraged work-seeker	42001012
1073	Other not economically active	42001012
0	Age less than 15 years	42001012
1663	Not applicable	42001012
1832	Employed	42001013
1458	Unemployed	42001013
148	Discouraged work-seeker	42001013
1895	Other not economically active	42001013
0	Age less than 15 years	42001013
2740	Not applicable	42001013
1090	Employed	42001014
608	Unemployed	42001014
106	Discouraged work-seeker	42001014
1099	Other not economically active	42001014
0	Age less than 15 years	42001014
1478	Not applicable	42001014
1620	Employed	42001015
711	Unemployed	42001015
140	Discouraged work-seeker	42001015
1359	Other not economically active	42001015
0	Age less than 15 years	42001015
2014	Not applicable	42001015
2546	Employed	42001016
609	Unemployed	42001016
99	Discouraged work-seeker	42001016
1525	Other not economically active	42001016
0	Age less than 15 years	42001016
2096	Not applicable	42001016
2252	Employed	42001017
146	Unemployed	42001017
23	Discouraged work-seeker	42001017
1133	Other not economically active	42001017
0	Age less than 15 years	42001017
1721	Not applicable	42001017
1228	Employed	42001018
1391	Unemployed	42001018
218	Discouraged work-seeker	42001018
1856	Other not economically active	42001018
0	Age less than 15 years	42001018
2656	Not applicable	42001018
1192	Employed	42001019
1017	Unemployed	42001019
196	Discouraged work-seeker	42001019
1810	Other not economically active	42001019
0	Age less than 15 years	42001019
2598	Not applicable	42001019
1067	Employed	42001020
677	Unemployed	42001020
188	Discouraged work-seeker	42001020
2741	Other not economically active	42001020
0	Age less than 15 years	42001020
3010	Not applicable	42001020
943	Employed	42001021
1011	Unemployed	42001021
109	Discouraged work-seeker	42001021
1994	Other not economically active	42001021
0	Age less than 15 years	42001021
2639	Not applicable	42001021
1761	Employed	42001022
1123	Unemployed	42001022
277	Discouraged work-seeker	42001022
1657	Other not economically active	42001022
0	Age less than 15 years	42001022
2606	Not applicable	42001022
1470	Employed	42001023
206	Unemployed	42001023
64	Discouraged work-seeker	42001023
1042	Other not economically active	42001023
0	Age less than 15 years	42001023
1350	Not applicable	42001023
649	Employed	42001024
63	Unemployed	42001024
39	Discouraged work-seeker	42001024
4904	Other not economically active	42001024
0	Age less than 15 years	42001024
566	Not applicable	42001024
2249	Employed	42001025
456	Unemployed	42001025
246	Discouraged work-seeker	42001025
2032	Other not economically active	42001025
0	Age less than 15 years	42001025
2487	Not applicable	42001025
2521	Employed	42003001
819	Unemployed	42003001
129	Discouraged work-seeker	42003001
1658	Other not economically active	42003001
0	Age less than 15 years	42003001
2782	Not applicable	42003001
1243	Employed	42003002
491	Unemployed	42003002
160	Discouraged work-seeker	42003002
1435	Other not economically active	42003002
0	Age less than 15 years	42003002
2240	Not applicable	42003002
1417	Employed	42003003
521	Unemployed	42003003
98	Discouraged work-seeker	42003003
1490	Other not economically active	42003003
0	Age less than 15 years	42003003
1994	Not applicable	42003003
371	Employed	42003004
637	Unemployed	42003004
15	Discouraged work-seeker	42003004
979	Other not economically active	42003004
0	Age less than 15 years	42003004
1473	Not applicable	42003004
752	Employed	42003005
674	Unemployed	42003005
136	Discouraged work-seeker	42003005
1270	Other not economically active	42003005
0	Age less than 15 years	42003005
1840	Not applicable	42003005
546	Employed	42003006
74	Unemployed	42003006
231	Discouraged work-seeker	42003006
628	Other not economically active	42003006
0	Age less than 15 years	42003006
729	Not applicable	42003006
1428	Employed	42003007
1760	Unemployed	42003007
225	Discouraged work-seeker	42003007
2413	Other not economically active	42003007
0	Age less than 15 years	42003007
3971	Not applicable	42003007
2403	Employed	42003008
1502	Unemployed	42003008
713	Discouraged work-seeker	42003008
3007	Other not economically active	42003008
0	Age less than 15 years	42003008
4559	Not applicable	42003008
1110	Employed	42003009
693	Unemployed	42003009
257	Discouraged work-seeker	42003009
1648	Other not economically active	42003009
0	Age less than 15 years	42003009
1969	Not applicable	42003009
1232	Employed	42003010
669	Unemployed	42003010
242	Discouraged work-seeker	42003010
1401	Other not economically active	42003010
0	Age less than 15 years	42003010
1916	Not applicable	42003010
723	Employed	42003011
634	Unemployed	42003011
80	Discouraged work-seeker	42003011
1323	Other not economically active	42003011
0	Age less than 15 years	42003011
1470	Not applicable	42003011
1189	Employed	42003012
647	Unemployed	42003012
220	Discouraged work-seeker	42003012
1516	Other not economically active	42003012
0	Age less than 15 years	42003012
1887	Not applicable	42003012
1374	Employed	42003013
180	Unemployed	42003013
25	Discouraged work-seeker	42003013
1581	Other not economically active	42003013
0	Age less than 15 years	42003013
2279	Not applicable	42003013
1270	Employed	42003014
991	Unemployed	42003014
224	Discouraged work-seeker	42003014
1498	Other not economically active	42003014
0	Age less than 15 years	42003014
2166	Not applicable	42003014
637	Employed	42003015
583	Unemployed	42003015
232	Discouraged work-seeker	42003015
1296	Other not economically active	42003015
0	Age less than 15 years	42003015
1775	Not applicable	42003015
1235	Employed	42003016
1337	Unemployed	42003016
318	Discouraged work-seeker	42003016
2359	Other not economically active	42003016
0	Age less than 15 years	42003016
3522	Not applicable	42003016
1585	Employed	42003017
686	Unemployed	42003017
114	Discouraged work-seeker	42003017
1864	Other not economically active	42003017
0	Age less than 15 years	42003017
2888	Not applicable	42003017
1529	Employed	42003018
181	Unemployed	42003018
61	Discouraged work-seeker	42003018
1429	Other not economically active	42003018
0	Age less than 15 years	42003018
1699	Not applicable	42003018
1152	Employed	42003019
607	Unemployed	42003019
289	Discouraged work-seeker	42003019
1946	Other not economically active	42003019
0	Age less than 15 years	42003019
2736	Not applicable	42003019
1917	Employed	42003020
236	Unemployed	42003020
98	Discouraged work-seeker	42003020
1084	Other not economically active	42003020
0	Age less than 15 years	42003020
1381	Not applicable	42003020
4343	Employed	42004001
2872	Unemployed	42004001
453	Discouraged work-seeker	42004001
2900	Other not economically active	42004001
0	Age less than 15 years	42004001
5645	Not applicable	42004001
1065	Employed	42004002
694	Unemployed	42004002
19	Discouraged work-seeker	42004002
1250	Other not economically active	42004002
0	Age less than 15 years	42004002
1459	Not applicable	42004002
1350	Employed	42004003
939	Unemployed	42004003
128	Discouraged work-seeker	42004003
1476	Other not economically active	42004003
0	Age less than 15 years	42004003
2045	Not applicable	42004003
887	Employed	42004004
827	Unemployed	42004004
87	Discouraged work-seeker	42004004
1795	Other not economically active	42004004
0	Age less than 15 years	42004004
1833	Not applicable	42004004
1654	Employed	42004005
636	Unemployed	42004005
296	Discouraged work-seeker	42004005
1650	Other not economically active	42004005
0	Age less than 15 years	42004005
2466	Not applicable	42004005
1276	Employed	42004006
938	Unemployed	42004006
89	Discouraged work-seeker	42004006
983	Other not economically active	42004006
0	Age less than 15 years	42004006
1643	Not applicable	42004006
976	Employed	42004007
688	Unemployed	42004007
164	Discouraged work-seeker	42004007
884	Other not economically active	42004007
0	Age less than 15 years	42004007
1301	Not applicable	42004007
1690	Employed	42004008
1547	Unemployed	42004008
117	Discouraged work-seeker	42004008
1695	Other not economically active	42004008
0	Age less than 15 years	42004008
2298	Not applicable	42004008
1599	Employed	42004009
951	Unemployed	42004009
22	Discouraged work-seeker	42004009
1068	Other not economically active	42004009
0	Age less than 15 years	42004009
1314	Not applicable	42004009
2078	Employed	42004010
958	Unemployed	42004010
90	Discouraged work-seeker	42004010
1832	Other not economically active	42004010
0	Age less than 15 years	42004010
2120	Not applicable	42004010
1511	Employed	42004011
771	Unemployed	42004011
216	Discouraged work-seeker	42004011
1102	Other not economically active	42004011
0	Age less than 15 years	42004011
1508	Not applicable	42004011
1373	Employed	42004012
915	Unemployed	42004012
90	Discouraged work-seeker	42004012
609	Other not economically active	42004012
0	Age less than 15 years	42004012
1086	Not applicable	42004012
3259	Employed	42004013
2511	Unemployed	42004013
212	Discouraged work-seeker	42004013
2373	Other not economically active	42004013
0	Age less than 15 years	42004013
4160	Not applicable	42004013
5343	Employed	42004014
281	Unemployed	42004014
71	Discouraged work-seeker	42004014
2220	Other not economically active	42004014
0	Age less than 15 years	42004014
2768	Not applicable	42004014
1334	Employed	42004015
237	Unemployed	42004015
57	Discouraged work-seeker	42004015
743	Other not economically active	42004015
0	Age less than 15 years	42004015
970	Not applicable	42004015
3046	Employed	42004016
297	Unemployed	42004016
45	Discouraged work-seeker	42004016
1499	Other not economically active	42004016
0	Age less than 15 years	42004016
1807	Not applicable	42004016
3124	Employed	42004017
549	Unemployed	42004017
61	Discouraged work-seeker	42004017
2029	Other not economically active	42004017
0	Age less than 15 years	42004017
2072	Not applicable	42004017
1626	Employed	42004018
106	Unemployed	42004018
17	Discouraged work-seeker	42004018
496	Other not economically active	42004018
0	Age less than 15 years	42004018
764	Not applicable	42004018
3469	Employed	42004019
2461	Unemployed	42004019
200	Discouraged work-seeker	42004019
2575	Other not economically active	42004019
0	Age less than 15 years	42004019
3970	Not applicable	42004019
2371	Employed	42004020
916	Unemployed	42004020
428	Discouraged work-seeker	42004020
4977	Other not economically active	42004020
0	Age less than 15 years	42004020
3041	Not applicable	42004020
888	Employed	42004021
857	Unemployed	42004021
147	Discouraged work-seeker	42004021
992	Other not economically active	42004021
0	Age less than 15 years	42004021
1473	Not applicable	42004021
954	Employed	42005001
286	Unemployed	42005001
211	Discouraged work-seeker	42005001
1191	Other not economically active	42005001
0	Age less than 15 years	42005001
1502	Not applicable	42005001
1824	Employed	42005002
849	Unemployed	42005002
589	Discouraged work-seeker	42005002
2631	Other not economically active	42005002
0	Age less than 15 years	42005002
3714	Not applicable	42005002
1040	Employed	42005003
738	Unemployed	42005003
312	Discouraged work-seeker	42005003
1576	Other not economically active	42005003
0	Age less than 15 years	42005003
2247	Not applicable	42005003
1676	Employed	42005004
570	Unemployed	42005004
234	Discouraged work-seeker	42005004
1493	Other not economically active	42005004
0	Age less than 15 years	42005004
2241	Not applicable	42005004
1455	Employed	42005005
301	Unemployed	42005005
236	Discouraged work-seeker	42005005
1432	Other not economically active	42005005
0	Age less than 15 years	42005005
1958	Not applicable	42005005
1228	Employed	42005006
688	Unemployed	42005006
109	Discouraged work-seeker	42005006
1375	Other not economically active	42005006
0	Age less than 15 years	42005006
1867	Not applicable	42005006
1432	Employed	42005007
856	Unemployed	42005007
320	Discouraged work-seeker	42005007
1539	Other not economically active	42005007
0	Age less than 15 years	42005007
2532	Not applicable	42005007
1124	Employed	42005008
638	Unemployed	42005008
527	Discouraged work-seeker	42005008
2008	Other not economically active	42005008
0	Age less than 15 years	42005008
3072	Not applicable	42005008
1063	Employed	42005009
996	Unemployed	42005009
344	Discouraged work-seeker	42005009
2089	Other not economically active	42005009
0	Age less than 15 years	42005009
2809	Not applicable	42005009
3933	Employed	49400001
1971	Unemployed	49400001
156	Discouraged work-seeker	49400001
2827	Other not economically active	49400001
0	Age less than 15 years	49400001
3562	Not applicable	49400001
3976	Employed	49400002
1684	Unemployed	49400002
398	Discouraged work-seeker	49400002
3297	Other not economically active	49400002
0	Age less than 15 years	49400002
3849	Not applicable	49400002
3394	Employed	49400003
1477	Unemployed	49400003
380	Discouraged work-seeker	49400003
3163	Other not economically active	49400003
0	Age less than 15 years	49400003
3669	Not applicable	49400003
3428	Employed	49400004
2064	Unemployed	49400004
217	Discouraged work-seeker	49400004
2600	Other not economically active	49400004
0	Age less than 15 years	49400004
3949	Not applicable	49400004
4317	Employed	49400005
1874	Unemployed	49400005
316	Discouraged work-seeker	49400005
3478	Other not economically active	49400005
0	Age less than 15 years	49400005
4650	Not applicable	49400005
4712	Employed	49400006
2399	Unemployed	49400006
456	Discouraged work-seeker	49400006
3871	Other not economically active	49400006
0	Age less than 15 years	49400006
5526	Not applicable	49400006
2440	Employed	49400007
827	Unemployed	49400007
221	Discouraged work-seeker	49400007
2021	Other not economically active	49400007
0	Age less than 15 years	49400007
2500	Not applicable	49400007
4778	Employed	49400008
1795	Unemployed	49400008
341	Discouraged work-seeker	49400008
4377	Other not economically active	49400008
0	Age less than 15 years	49400008
5558	Not applicable	49400008
4748	Employed	49400009
1279	Unemployed	49400009
173	Discouraged work-seeker	49400009
2823	Other not economically active	49400009
0	Age less than 15 years	49400009
3874	Not applicable	49400009
5054	Employed	49400010
2490	Unemployed	49400010
429	Discouraged work-seeker	49400010
3818	Other not economically active	49400010
0	Age less than 15 years	49400010
5501	Not applicable	49400010
4027	Employed	49400011
1892	Unemployed	49400011
347	Discouraged work-seeker	49400011
3708	Other not economically active	49400011
0	Age less than 15 years	49400011
4937	Not applicable	49400011
7005	Employed	49400012
3378	Unemployed	49400012
482	Discouraged work-seeker	49400012
4296	Other not economically active	49400012
0	Age less than 15 years	49400012
7248	Not applicable	49400012
2481	Employed	49400013
1114	Unemployed	49400013
237	Discouraged work-seeker	49400013
2455	Other not economically active	49400013
0	Age less than 15 years	49400013
3044	Not applicable	49400013
4334	Employed	49400014
1483	Unemployed	49400014
308	Discouraged work-seeker	49400014
3975	Other not economically active	49400014
0	Age less than 15 years	49400014
4838	Not applicable	49400014
4554	Employed	49400015
1528	Unemployed	49400015
419	Discouraged work-seeker	49400015
3710	Other not economically active	49400015
0	Age less than 15 years	49400015
4510	Not applicable	49400015
4090	Employed	49400016
1392	Unemployed	49400016
331	Discouraged work-seeker	49400016
3704	Other not economically active	49400016
0	Age less than 15 years	49400016
4800	Not applicable	49400016
5685	Employed	49400017
1398	Unemployed	49400017
471	Discouraged work-seeker	49400017
3588	Other not economically active	49400017
0	Age less than 15 years	49400017
5311	Not applicable	49400017
9459	Employed	49400018
1712	Unemployed	49400018
398	Discouraged work-seeker	49400018
5461	Other not economically active	49400018
0	Age less than 15 years	49400018
7148	Not applicable	49400018
5554	Employed	49400019
904	Unemployed	49400019
137	Discouraged work-seeker	49400019
4451	Other not economically active	49400019
0	Age less than 15 years	49400019
2692	Not applicable	49400019
5232	Employed	49400020
419	Unemployed	49400020
46	Discouraged work-seeker	49400020
4524	Other not economically active	49400020
0	Age less than 15 years	49400020
2880	Not applicable	49400020
4567	Employed	49400021
363	Unemployed	49400021
43	Discouraged work-seeker	49400021
2516	Other not economically active	49400021
0	Age less than 15 years	49400021
2937	Not applicable	49400021
5690	Employed	49400022
311	Unemployed	49400022
36	Discouraged work-seeker	49400022
4370	Other not economically active	49400022
0	Age less than 15 years	49400022
2805	Not applicable	49400022
2631	Employed	49400023
201	Unemployed	49400023
27	Discouraged work-seeker	49400023
4734	Other not economically active	49400023
0	Age less than 15 years	49400023
2869	Not applicable	49400023
4985	Employed	49400024
286	Unemployed	49400024
44	Discouraged work-seeker	49400024
2027	Other not economically active	49400024
0	Age less than 15 years	49400024
3464	Not applicable	49400024
6468	Employed	49400025
272	Unemployed	49400025
36	Discouraged work-seeker	49400025
3055	Other not economically active	49400025
0	Age less than 15 years	49400025
3452	Not applicable	49400025
4605	Employed	49400026
310	Unemployed	49400026
67	Discouraged work-seeker	49400026
2877	Other not economically active	49400026
0	Age less than 15 years	49400026
2750	Not applicable	49400026
4023	Employed	49400027
3595	Unemployed	49400027
1013	Discouraged work-seeker	49400027
5243	Other not economically active	49400027
0	Age less than 15 years	49400027
7796	Not applicable	49400027
3153	Employed	49400028
1976	Unemployed	49400028
346	Discouraged work-seeker	49400028
4353	Other not economically active	49400028
0	Age less than 15 years	49400028
5483	Not applicable	49400028
2671	Employed	49400029
1666	Unemployed	49400029
518	Discouraged work-seeker	49400029
3917	Other not economically active	49400029
0	Age less than 15 years	49400029
5091	Not applicable	49400029
3862	Employed	49400030
2076	Unemployed	49400030
178	Discouraged work-seeker	49400030
4397	Other not economically active	49400030
0	Age less than 15 years	49400030
4798	Not applicable	49400030
1773	Employed	49400031
1952	Unemployed	49400031
397	Discouraged work-seeker	49400031
3172	Other not economically active	49400031
0	Age less than 15 years	49400031
4437	Not applicable	49400031
2207	Employed	49400032
2061	Unemployed	49400032
637	Discouraged work-seeker	49400032
3424	Other not economically active	49400032
0	Age less than 15 years	49400032
4751	Not applicable	49400032
1851	Employed	49400033
1809	Unemployed	49400033
446	Discouraged work-seeker	49400033
4392	Other not economically active	49400033
0	Age less than 15 years	49400033
5303	Not applicable	49400033
3020	Employed	49400034
2432	Unemployed	49400034
972	Discouraged work-seeker	49400034
5293	Other not economically active	49400034
0	Age less than 15 years	49400034
6888	Not applicable	49400034
2789	Employed	49400035
2513	Unemployed	49400035
525	Discouraged work-seeker	49400035
5381	Other not economically active	49400035
0	Age less than 15 years	49400035
6500	Not applicable	49400035
2526	Employed	49400036
1845	Unemployed	49400036
576	Discouraged work-seeker	49400036
3687	Other not economically active	49400036
0	Age less than 15 years	49400036
4973	Not applicable	49400036
3424	Employed	49400037
2265	Unemployed	49400037
977	Discouraged work-seeker	49400037
4945	Other not economically active	49400037
0	Age less than 15 years	49400037
7221	Not applicable	49400037
1598	Employed	49400038
1273	Unemployed	49400038
509	Discouraged work-seeker	49400038
3848	Other not economically active	49400038
0	Age less than 15 years	49400038
4686	Not applicable	49400038
2696	Employed	49400039
1425	Unemployed	49400039
448	Discouraged work-seeker	49400039
3940	Other not economically active	49400039
0	Age less than 15 years	49400039
4483	Not applicable	49400039
3183	Employed	49400040
1714	Unemployed	49400040
156	Discouraged work-seeker	49400040
3228	Other not economically active	49400040
0	Age less than 15 years	49400040
3996	Not applicable	49400040
1720	Employed	49400041
1565	Unemployed	49400041
483	Discouraged work-seeker	49400041
3693	Other not economically active	49400041
0	Age less than 15 years	49400041
4628	Not applicable	49400041
2058	Employed	49400042
1362	Unemployed	49400042
604	Discouraged work-seeker	49400042
3979	Other not economically active	49400042
0	Age less than 15 years	49400042
4228	Not applicable	49400042
2301	Employed	49400043
1964	Unemployed	49400043
400	Discouraged work-seeker	49400043
4684	Other not economically active	49400043
0	Age less than 15 years	49400043
5174	Not applicable	49400043
9093	Employed	49400044
544	Unemployed	49400044
88	Discouraged work-seeker	49400044
3600	Other not economically active	49400044
0	Age less than 15 years	49400044
5579	Not applicable	49400044
10389	Employed	49400045
4995	Unemployed	49400045
926	Discouraged work-seeker	49400045
6994	Other not economically active	49400045
0	Age less than 15 years	49400045
11815	Not applicable	49400045
10391	Employed	49400046
4642	Unemployed	49400046
738	Discouraged work-seeker	49400046
11516	Other not economically active	49400046
0	Age less than 15 years	49400046
11769	Not applicable	49400046
5661	Employed	49400047
979	Unemployed	49400047
263	Discouraged work-seeker	49400047
3379	Other not economically active	49400047
0	Age less than 15 years	49400047
4657	Not applicable	49400047
6224	Employed	49400048
269	Unemployed	49400048
51	Discouraged work-seeker	49400048
2024	Other not economically active	49400048
0	Age less than 15 years	49400048
2869	Not applicable	49400048
2983	Employed	49400049
1481	Unemployed	49400049
480	Discouraged work-seeker	49400049
4894	Other not economically active	49400049
0	Age less than 15 years	49400049
5060	Not applicable	49400049
7484	Employed	74201001
481	Unemployed	74201001
158	Discouraged work-seeker	74201001
2927	Other not economically active	74201001
0	Age less than 15 years	74201001
5166	Not applicable	74201001
4636	Employed	74201002
2642	Unemployed	74201002
536	Discouraged work-seeker	74201002
4199	Other not economically active	74201002
0	Age less than 15 years	74201002
4865	Not applicable	74201002
6196	Employed	74201003
2551	Unemployed	74201003
534	Discouraged work-seeker	74201003
3689	Other not economically active	74201003
0	Age less than 15 years	74201003
5363	Not applicable	74201003
6025	Employed	74201004
819	Unemployed	74201004
72	Discouraged work-seeker	74201004
4750	Other not economically active	74201004
0	Age less than 15 years	74201004
3051	Not applicable	74201004
7978	Employed	74201005
515	Unemployed	74201005
76	Discouraged work-seeker	74201005
3812	Other not economically active	74201005
0	Age less than 15 years	74201005
4942	Not applicable	74201005
6524	Employed	74201006
5263	Unemployed	74201006
678	Discouraged work-seeker	74201006
4504	Other not economically active	74201006
0	Age less than 15 years	74201006
8072	Not applicable	74201006
5611	Employed	74201007
3224	Unemployed	74201007
416	Discouraged work-seeker	74201007
3859	Other not economically active	74201007
0	Age less than 15 years	74201007
5972	Not applicable	74201007
4322	Employed	74201008
1883	Unemployed	74201008
369	Discouraged work-seeker	74201008
3175	Other not economically active	74201008
0	Age less than 15 years	74201008
4000	Not applicable	74201008
6688	Employed	74201009
1196	Unemployed	74201009
126	Discouraged work-seeker	74201009
5977	Other not economically active	74201009
0	Age less than 15 years	74201009
4001	Not applicable	74201009
7426	Employed	74201010
1485	Unemployed	74201010
247	Discouraged work-seeker	74201010
6161	Other not economically active	74201010
0	Age less than 15 years	74201010
5743	Not applicable	74201010
5388	Employed	74201011
3559	Unemployed	74201011
600	Discouraged work-seeker	74201011
5895	Other not economically active	74201011
0	Age less than 15 years	74201011
5938	Not applicable	74201011
2783	Employed	74201012
2242	Unemployed	74201012
266	Discouraged work-seeker	74201012
2368	Other not economically active	74201012
0	Age less than 15 years	74201012
3528	Not applicable	74201012
3564	Employed	74201013
2536	Unemployed	74201013
513	Discouraged work-seeker	74201013
3627	Other not economically active	74201013
0	Age less than 15 years	74201013
4541	Not applicable	74201013
2808	Employed	74201014
2315	Unemployed	74201014
329	Discouraged work-seeker	74201014
2730	Other not economically active	74201014
0	Age less than 15 years	74201014
3494	Not applicable	74201014
8249	Employed	74201015
1821	Unemployed	74201015
332	Discouraged work-seeker	74201015
5252	Other not economically active	74201015
0	Age less than 15 years	74201015
4924	Not applicable	74201015
6155	Employed	74201016
1475	Unemployed	74201016
274	Discouraged work-seeker	74201016
3300	Other not economically active	74201016
0	Age less than 15 years	74201016
4197	Not applicable	74201016
2806	Employed	74201017
2047	Unemployed	74201017
258	Discouraged work-seeker	74201017
2427	Other not economically active	74201017
0	Age less than 15 years	74201017
2848	Not applicable	74201017
3140	Employed	74201018
2592	Unemployed	74201018
962	Discouraged work-seeker	74201018
3448	Other not economically active	74201018
0	Age less than 15 years	74201018
5010	Not applicable	74201018
4000	Employed	74201019
2586	Unemployed	74201019
636	Discouraged work-seeker	74201019
4381	Other not economically active	74201019
0	Age less than 15 years	74201019
5857	Not applicable	74201019
5189	Employed	74201020
2728	Unemployed	74201020
637	Discouraged work-seeker	74201020
3974	Other not economically active	74201020
0	Age less than 15 years	74201020
4929	Not applicable	74201020
5574	Employed	74201021
2297	Unemployed	74201021
587	Discouraged work-seeker	74201021
5045	Other not economically active	74201021
0	Age less than 15 years	74201021
6284	Not applicable	74201021
4707	Employed	74201022
3361	Unemployed	74201022
489	Discouraged work-seeker	74201022
4104	Other not economically active	74201022
0	Age less than 15 years	74201022
5296	Not applicable	74201022
4529	Employed	74201023
2103	Unemployed	74201023
601	Discouraged work-seeker	74201023
3079	Other not economically active	74201023
0	Age less than 15 years	74201023
4403	Not applicable	74201023
2702	Employed	74201024
1574	Unemployed	74201024
829	Discouraged work-seeker	74201024
2678	Other not economically active	74201024
0	Age less than 15 years	74201024
3990	Not applicable	74201024
6125	Employed	74201025
2806	Unemployed	74201025
491	Discouraged work-seeker	74201025
4603	Other not economically active	74201025
0	Age less than 15 years	74201025
6669	Not applicable	74201025
6667	Employed	74201026
4696	Unemployed	74201026
552	Discouraged work-seeker	74201026
5658	Other not economically active	74201026
0	Age less than 15 years	74201026
9063	Not applicable	74201026
2333	Employed	74201027
2491	Unemployed	74201027
345	Discouraged work-seeker	74201027
2371	Other not economically active	74201027
0	Age less than 15 years	74201027
3789	Not applicable	74201027
6166	Employed	74201028
4642	Unemployed	74201028
879	Discouraged work-seeker	74201028
5456	Other not economically active	74201028
0	Age less than 15 years	74201028
7976	Not applicable	74201028
3011	Employed	74201029
2236	Unemployed	74201029
956	Discouraged work-seeker	74201029
4749	Other not economically active	74201029
0	Age less than 15 years	74201029
5259	Not applicable	74201029
2411	Employed	74201030
2277	Unemployed	74201030
221	Discouraged work-seeker	74201030
3627	Other not economically active	74201030
0	Age less than 15 years	74201030
3784	Not applicable	74201030
3335	Employed	74201031
1851	Unemployed	74201031
281	Discouraged work-seeker	74201031
2883	Other not economically active	74201031
0	Age less than 15 years	74201031
3357	Not applicable	74201031
2118	Employed	74201032
2336	Unemployed	74201032
194	Discouraged work-seeker	74201032
3076	Other not economically active	74201032
0	Age less than 15 years	74201032
3940	Not applicable	74201032
3265	Employed	74201033
2686	Unemployed	74201033
431	Discouraged work-seeker	74201033
4271	Other not economically active	74201033
0	Age less than 15 years	74201033
5225	Not applicable	74201033
2742	Employed	74201034
2125	Unemployed	74201034
673	Discouraged work-seeker	74201034
2483	Other not economically active	74201034
0	Age less than 15 years	74201034
3839	Not applicable	74201034
2200	Employed	74201035
2414	Unemployed	74201035
210	Discouraged work-seeker	74201035
2762	Other not economically active	74201035
0	Age less than 15 years	74201035
3736	Not applicable	74201035
6162	Employed	74201036
4354	Unemployed	74201036
442	Discouraged work-seeker	74201036
4489	Other not economically active	74201036
0	Age less than 15 years	74201036
6732	Not applicable	74201036
2235	Employed	74201037
1938	Unemployed	74201037
341	Discouraged work-seeker	74201037
3249	Other not economically active	74201037
0	Age less than 15 years	74201037
4042	Not applicable	74201037
4132	Employed	74201038
2490	Unemployed	74201038
492	Discouraged work-seeker	74201038
3475	Other not economically active	74201038
0	Age less than 15 years	74201038
4702	Not applicable	74201038
2943	Employed	74201039
2141	Unemployed	74201039
579	Discouraged work-seeker	74201039
3343	Other not economically active	74201039
0	Age less than 15 years	74201039
4549	Not applicable	74201039
2602	Employed	74201040
2429	Unemployed	74201040
571	Discouraged work-seeker	74201040
3103	Other not economically active	74201040
0	Age less than 15 years	74201040
4035	Not applicable	74201040
3503	Employed	74201041
2197	Unemployed	74201041
237	Discouraged work-seeker	74201041
3148	Other not economically active	74201041
0	Age less than 15 years	74201041
4212	Not applicable	74201041
2007	Employed	74201042
1681	Unemployed	74201042
205	Discouraged work-seeker	74201042
2046	Other not economically active	74201042
0	Age less than 15 years	74201042
2776	Not applicable	74201042
4297	Employed	74201043
2828	Unemployed	74201043
718	Discouraged work-seeker	74201043
3302	Other not economically active	74201043
0	Age less than 15 years	74201043
5641	Not applicable	74201043
4311	Employed	74201044
3099	Unemployed	74201044
651	Discouraged work-seeker	74201044
4326	Other not economically active	74201044
0	Age less than 15 years	74201044
6222	Not applicable	74201044
5494	Employed	74201045
543	Unemployed	74201045
149	Discouraged work-seeker	74201045
3760	Other not economically active	74201045
0	Age less than 15 years	74201045
3915	Not applicable	74201045
3273	Employed	74202001
390	Unemployed	74202001
193	Discouraged work-seeker	74202001
1332	Other not economically active	74202001
0	Age less than 15 years	74202001
2072	Not applicable	74202001
2405	Employed	74202002
112	Unemployed	74202002
42	Discouraged work-seeker	74202002
1015	Other not economically active	74202002
0	Age less than 15 years	74202002
1486	Not applicable	74202002
2379	Employed	74202003
203	Unemployed	74202003
65	Discouraged work-seeker	74202003
1273	Other not economically active	74202003
0	Age less than 15 years	74202003
1679	Not applicable	74202003
3302	Employed	74202004
377	Unemployed	74202004
146	Discouraged work-seeker	74202004
1929	Other not economically active	74202004
0	Age less than 15 years	74202004
2340	Not applicable	74202004
4582	Employed	74202005
782	Unemployed	74202005
183	Discouraged work-seeker	74202005
1979	Other not economically active	74202005
0	Age less than 15 years	74202005
2852	Not applicable	74202005
2267	Employed	74202006
1613	Unemployed	74202006
291	Discouraged work-seeker	74202006
1830	Other not economically active	74202006
0	Age less than 15 years	74202006
3404	Not applicable	74202006
2994	Employed	74202007
592	Unemployed	74202007
187	Discouraged work-seeker	74202007
1188	Other not economically active	74202007
0	Age less than 15 years	74202007
1858	Not applicable	74202007
2678	Employed	74202008
1655	Unemployed	74202008
379	Discouraged work-seeker	74202008
1260	Other not economically active	74202008
0	Age less than 15 years	74202008
2585	Not applicable	74202008
303	Employed	74202009
29	Unemployed	74202009
3	Discouraged work-seeker	74202009
202	Other not economically active	74202009
0	Age less than 15 years	74202009
358	Not applicable	74202009
2935	Employed	74202010
988	Unemployed	74202010
134	Discouraged work-seeker	74202010
2027	Other not economically active	74202010
0	Age less than 15 years	74202010
2708	Not applicable	74202010
2562	Employed	74202011
790	Unemployed	74202011
115	Discouraged work-seeker	74202011
1723	Other not economically active	74202011
0	Age less than 15 years	74202011
1980	Not applicable	74202011
1606	Employed	74202012
423	Unemployed	74202012
61	Discouraged work-seeker	74202012
839	Other not economically active	74202012
0	Age less than 15 years	74202012
926	Not applicable	74202012
3114	Employed	74202013
454	Unemployed	74202013
101	Discouraged work-seeker	74202013
1565	Other not economically active	74202013
0	Age less than 15 years	74202013
2100	Not applicable	74202013
2938	Employed	74202014
213	Unemployed	74202014
40	Discouraged work-seeker	74202014
1124	Other not economically active	74202014
0	Age less than 15 years	74202014
1769	Not applicable	74202014
1916	Employed	74203001
636	Unemployed	74203001
324	Discouraged work-seeker	74203001
1065	Other not economically active	74203001
0	Age less than 15 years	74203001
1855	Not applicable	74203001
2027	Employed	74203002
1006	Unemployed	74203002
186	Discouraged work-seeker	74203002
2048	Other not economically active	74203002
0	Age less than 15 years	74203002
2850	Not applicable	74203002
2110	Employed	74203003
832	Unemployed	74203003
165	Discouraged work-seeker	74203003
1666	Other not economically active	74203003
0	Age less than 15 years	74203003
2139	Not applicable	74203003
1727	Employed	74203004
915	Unemployed	74203004
264	Discouraged work-seeker	74203004
1570	Other not economically active	74203004
0	Age less than 15 years	74203004
2160	Not applicable	74203004
1762	Employed	74203005
925	Unemployed	74203005
288	Discouraged work-seeker	74203005
1604	Other not economically active	74203005
0	Age less than 15 years	74203005
2311	Not applicable	74203005
1905	Employed	74203006
502	Unemployed	74203006
497	Discouraged work-seeker	74203006
1273	Other not economically active	74203006
0	Age less than 15 years	74203006
2036	Not applicable	74203006
2924	Employed	74203007
1649	Unemployed	74203007
181	Discouraged work-seeker	74203007
2566	Other not economically active	74203007
0	Age less than 15 years	74203007
2865	Not applicable	74203007
3892	Employed	74203008
460	Unemployed	74203008
85	Discouraged work-seeker	74203008
2612	Other not economically active	74203008
0	Age less than 15 years	74203008
3199	Not applicable	74203008
2863	Employed	74203009
246	Unemployed	74203009
29	Discouraged work-seeker	74203009
1436	Other not economically active	74203009
0	Age less than 15 years	74203009
1843	Not applicable	74203009
3165	Employed	74203010
545	Unemployed	74203010
81	Discouraged work-seeker	74203010
1305	Other not economically active	74203010
0	Age less than 15 years	74203010
2128	Not applicable	74203010
2215	Employed	74203011
937	Unemployed	74203011
154	Discouraged work-seeker	74203011
1135	Other not economically active	74203011
0	Age less than 15 years	74203011
2047	Not applicable	74203011
3147	Employed	74203012
744	Unemployed	74203012
253	Discouraged work-seeker	74203012
2889	Other not economically active	74203012
0	Age less than 15 years	74203012
2793	Not applicable	74203012
1865	Employed	74203013
1646	Unemployed	74203013
381	Discouraged work-seeker	74203013
1636	Other not economically active	74203013
0	Age less than 15 years	74203013
3042	Not applicable	74203013
3800	Employed	74801001
2741	Unemployed	74801001
388	Discouraged work-seeker	74801001
2348	Other not economically active	74801001
0	Age less than 15 years	74801001
4262	Not applicable	74801001
4040	Employed	74801002
2721	Unemployed	74801002
692	Discouraged work-seeker	74801002
3238	Other not economically active	74801002
0	Age less than 15 years	74801002
5174	Not applicable	74801002
4315	Employed	74801003
1054	Unemployed	74801003
288	Discouraged work-seeker	74801003
3645	Other not economically active	74801003
0	Age less than 15 years	74801003
4001	Not applicable	74801003
3850	Employed	74801004
2368	Unemployed	74801004
313	Discouraged work-seeker	74801004
2592	Other not economically active	74801004
0	Age less than 15 years	74801004
3736	Not applicable	74801004
2417	Employed	74801005
1169	Unemployed	74801005
528	Discouraged work-seeker	74801005
1465	Other not economically active	74801005
0	Age less than 15 years	74801005
2214	Not applicable	74801005
2216	Employed	74801006
1035	Unemployed	74801006
318	Discouraged work-seeker	74801006
1843	Other not economically active	74801006
0	Age less than 15 years	74801006
2433	Not applicable	74801006
3580	Employed	74801007
939	Unemployed	74801007
216	Discouraged work-seeker	74801007
2577	Other not economically active	74801007
0	Age less than 15 years	74801007
2641	Not applicable	74801007
3660	Employed	74801008
1626	Unemployed	74801008
221	Discouraged work-seeker	74801008
2594	Other not economically active	74801008
0	Age less than 15 years	74801008
3125	Not applicable	74801008
2619	Employed	74801009
663	Unemployed	74801009
72	Discouraged work-seeker	74801009
1499	Other not economically active	74801009
0	Age less than 15 years	74801009
1797	Not applicable	74801009
2458	Employed	74801010
1626	Unemployed	74801010
213	Discouraged work-seeker	74801010
1747	Other not economically active	74801010
0	Age less than 15 years	74801010
2501	Not applicable	74801010
4039	Employed	74801011
2191	Unemployed	74801011
379	Discouraged work-seeker	74801011
2660	Other not economically active	74801011
0	Age less than 15 years	74801011
3977	Not applicable	74801011
1829	Employed	74801012
1094	Unemployed	74801012
209	Discouraged work-seeker	74801012
1358	Other not economically active	74801012
0	Age less than 15 years	74801012
2034	Not applicable	74801012
3512	Employed	74801013
1312	Unemployed	74801013
95	Discouraged work-seeker	74801013
2371	Other not economically active	74801013
0	Age less than 15 years	74801013
2759	Not applicable	74801013
4834	Employed	74801014
2194	Unemployed	74801014
205	Discouraged work-seeker	74801014
2483	Other not economically active	74801014
0	Age less than 15 years	74801014
3666	Not applicable	74801014
2511	Employed	74801015
1226	Unemployed	74801015
234	Discouraged work-seeker	74801015
1739	Other not economically active	74801015
0	Age less than 15 years	74801015
1824	Not applicable	74801015
4449	Employed	74801016
2388	Unemployed	74801016
323	Discouraged work-seeker	74801016
1685	Other not economically active	74801016
0	Age less than 15 years	74801016
2744	Not applicable	74801016
4216	Employed	74801017
373	Unemployed	74801017
29	Discouraged work-seeker	74801017
1493	Other not economically active	74801017
0	Age less than 15 years	74801017
2697	Not applicable	74801017
5157	Employed	74801018
339	Unemployed	74801018
83	Discouraged work-seeker	74801018
1820	Other not economically active	74801018
0	Age less than 15 years	74801018
2832	Not applicable	74801018
1769	Employed	74801019
1130	Unemployed	74801019
226	Discouraged work-seeker	74801019
1494	Other not economically active	74801019
0	Age less than 15 years	74801019
2081	Not applicable	74801019
5341	Employed	74801020
934	Unemployed	74801020
146	Discouraged work-seeker	74801020
2435	Other not economically active	74801020
0	Age less than 15 years	74801020
3347	Not applicable	74801020
4199	Employed	74801021
194	Unemployed	74801021
21	Discouraged work-seeker	74801021
2178	Other not economically active	74801021
0	Age less than 15 years	74801021
2930	Not applicable	74801021
5271	Employed	74801022
207	Unemployed	74801022
38	Discouraged work-seeker	74801022
1647	Other not economically active	74801022
0	Age less than 15 years	74801022
3115	Not applicable	74801022
5688	Employed	74801023
1549	Unemployed	74801023
269	Discouraged work-seeker	74801023
1397	Other not economically active	74801023
0	Age less than 15 years	74801023
2638	Not applicable	74801023
3988	Employed	74801024
1579	Unemployed	74801024
368	Discouraged work-seeker	74801024
3136	Other not economically active	74801024
0	Age less than 15 years	74801024
3738	Not applicable	74801024
2203	Employed	74801025
832	Unemployed	74801025
243	Discouraged work-seeker	74801025
1730	Other not economically active	74801025
0	Age less than 15 years	74801025
1834	Not applicable	74801025
5653	Employed	74801026
1319	Unemployed	74801026
158	Discouraged work-seeker	74801026
5345	Other not economically active	74801026
0	Age less than 15 years	74801026
3426	Not applicable	74801026
5463	Employed	74801027
1879	Unemployed	74801027
335	Discouraged work-seeker	74801027
2044	Other not economically active	74801027
0	Age less than 15 years	74801027
3678	Not applicable	74801027
5285	Employed	74801028
174	Unemployed	74801028
17	Discouraged work-seeker	74801028
1345	Other not economically active	74801028
0	Age less than 15 years	74801028
2802	Not applicable	74801028
4500	Employed	74801029
251	Unemployed	74801029
38	Discouraged work-seeker	74801029
1078	Other not economically active	74801029
0	Age less than 15 years	74801029
1985	Not applicable	74801029
5961	Employed	74801030
2044	Unemployed	74801030
297	Discouraged work-seeker	74801030
3142	Other not economically active	74801030
0	Age less than 15 years	74801030
4500	Not applicable	74801030
3798	Employed	74801031
962	Unemployed	74801031
192	Discouraged work-seeker	74801031
2050	Other not economically active	74801031
0	Age less than 15 years	74801031
3298	Not applicable	74801031
3658	Employed	74801032
560	Unemployed	74801032
96	Discouraged work-seeker	74801032
1038	Other not economically active	74801032
0	Age less than 15 years	74801032
2127	Not applicable	74801032
4243	Employed	74801033
694	Unemployed	74801033
76	Discouraged work-seeker	74801033
1288	Other not economically active	74801033
0	Age less than 15 years	74801033
1979	Not applicable	74801033
4115	Employed	74801034
2479	Unemployed	74801034
872	Discouraged work-seeker	74801034
2734	Other not economically active	74801034
0	Age less than 15 years	74801034
4609	Not applicable	74801034
4058	Employed	74802001
1103	Unemployed	74802001
71	Discouraged work-seeker	74802001
2433	Other not economically active	74802001
0	Age less than 15 years	74802001
3285	Not applicable	74802001
4190	Employed	74802002
1521	Unemployed	74802002
365	Discouraged work-seeker	74802002
2223	Other not economically active	74802002
0	Age less than 15 years	74802002
3495	Not applicable	74802002
2576	Employed	74802003
350	Unemployed	74802003
119	Discouraged work-seeker	74802003
1411	Other not economically active	74802003
0	Age less than 15 years	74802003
1873	Not applicable	74802003
1831	Employed	74802004
236	Unemployed	74802004
59	Discouraged work-seeker	74802004
889	Other not economically active	74802004
0	Age less than 15 years	74802004
1260	Not applicable	74802004
2157	Employed	74802005
334	Unemployed	74802005
55	Discouraged work-seeker	74802005
891	Other not economically active	74802005
0	Age less than 15 years	74802005
1430	Not applicable	74802005
3038	Employed	74802006
372	Unemployed	74802006
78	Discouraged work-seeker	74802006
1274	Other not economically active	74802006
0	Age less than 15 years	74802006
1936	Not applicable	74802006
3832	Employed	74802007
361	Unemployed	74802007
46	Discouraged work-seeker	74802007
1490	Other not economically active	74802007
0	Age less than 15 years	74802007
2151	Not applicable	74802007
2770	Employed	74802008
766	Unemployed	74802008
202	Discouraged work-seeker	74802008
3661	Other not economically active	74802008
0	Age less than 15 years	74802008
2628	Not applicable	74802008
3963	Employed	74802009
708	Unemployed	74802009
83	Discouraged work-seeker	74802009
2326	Other not economically active	74802009
0	Age less than 15 years	74802009
2675	Not applicable	74802009
1064	Employed	74802010
966	Unemployed	74802010
35	Discouraged work-seeker	74802010
705	Other not economically active	74802010
0	Age less than 15 years	74802010
1319	Not applicable	74802010
1456	Employed	74802011
360	Unemployed	74802011
95	Discouraged work-seeker	74802011
884	Other not economically active	74802011
0	Age less than 15 years	74802011
1137	Not applicable	74802011
1897	Employed	74802012
888	Unemployed	74802012
343	Discouraged work-seeker	74802012
1198	Other not economically active	74802012
0	Age less than 15 years	74802012
2076	Not applicable	74802012
2454	Employed	74802013
1336	Unemployed	74802013
305	Discouraged work-seeker	74802013
1412	Other not economically active	74802013
0	Age less than 15 years	74802013
1890	Not applicable	74802013
2361	Employed	74802014
1286	Unemployed	74802014
144	Discouraged work-seeker	74802014
1007	Other not economically active	74802014
0	Age less than 15 years	74802014
2044	Not applicable	74802014
1766	Employed	74802015
1104	Unemployed	74802015
241	Discouraged work-seeker	74802015
1442	Other not economically active	74802015
0	Age less than 15 years	74802015
2237	Not applicable	74802015
2451	Employed	74802016
1144	Unemployed	74802016
92	Discouraged work-seeker	74802016
1581	Other not economically active	74802016
0	Age less than 15 years	74802016
2332	Not applicable	74802016
1038	Employed	74802017
898	Unemployed	74802017
68	Discouraged work-seeker	74802017
831	Other not economically active	74802017
0	Age less than 15 years	74802017
1302	Not applicable	74802017
2174	Employed	74802018
1614	Unemployed	74802018
43	Discouraged work-seeker	74802018
1144	Other not economically active	74802018
0	Age less than 15 years	74802018
2267	Not applicable	74802018
1103	Employed	74802019
1062	Unemployed	74802019
67	Discouraged work-seeker	74802019
846	Other not economically active	74802019
0	Age less than 15 years	74802019
1459	Not applicable	74802019
2707	Employed	74802020
1331	Unemployed	74802020
273	Discouraged work-seeker	74802020
1588	Other not economically active	74802020
0	Age less than 15 years	74802020
2910	Not applicable	74802020
1187	Employed	74802021
545	Unemployed	74802021
89	Discouraged work-seeker	74802021
1135	Other not economically active	74802021
0	Age less than 15 years	74802021
1378	Not applicable	74802021
1406	Employed	74802022
885	Unemployed	74802022
120	Discouraged work-seeker	74802022
833	Other not economically active	74802022
0	Age less than 15 years	74802022
1354	Not applicable	74802022
4389	Employed	74803001
853	Unemployed	74803001
97	Discouraged work-seeker	74803001
941	Other not economically active	74803001
0	Age less than 15 years	74803001
1209	Not applicable	74803001
5028	Employed	74803002
939	Unemployed	74803002
148	Discouraged work-seeker	74803002
1196	Other not economically active	74803002
0	Age less than 15 years	74803002
1579	Not applicable	74803002
2474	Employed	74803003
112	Unemployed	74803003
6	Discouraged work-seeker	74803003
66	Other not economically active	74803003
0	Age less than 15 years	74803003
66	Not applicable	74803003
2008	Employed	74803004
438	Unemployed	74803004
64	Discouraged work-seeker	74803004
1140	Other not economically active	74803004
0	Age less than 15 years	74803004
1379	Not applicable	74803004
2587	Employed	74803005
463	Unemployed	74803005
67	Discouraged work-seeker	74803005
847	Other not economically active	74803005
0	Age less than 15 years	74803005
1095	Not applicable	74803005
3177	Employed	74803006
615	Unemployed	74803006
122	Discouraged work-seeker	74803006
1741	Other not economically active	74803006
0	Age less than 15 years	74803006
2136	Not applicable	74803006
2051	Employed	74803007
1414	Unemployed	74803007
372	Discouraged work-seeker	74803007
1736	Other not economically active	74803007
0	Age less than 15 years	74803007
2989	Not applicable	74803007
2351	Employed	74803008
1621	Unemployed	74803008
439	Discouraged work-seeker	74803008
1904	Other not economically active	74803008
0	Age less than 15 years	74803008
3472	Not applicable	74803008
1600	Employed	74803009
1279	Unemployed	74803009
274	Discouraged work-seeker	74803009
1216	Other not economically active	74803009
0	Age less than 15 years	74803009
1841	Not applicable	74803009
2260	Employed	74803010
1492	Unemployed	74803010
209	Discouraged work-seeker	74803010
1447	Other not economically active	74803010
0	Age less than 15 years	74803010
2332	Not applicable	74803010
1203	Employed	74803011
1078	Unemployed	74803011
377	Discouraged work-seeker	74803011
801	Other not economically active	74803011
0	Age less than 15 years	74803011
1388	Not applicable	74803011
2422	Employed	74803012
1206	Unemployed	74803012
180	Discouraged work-seeker	74803012
1978	Other not economically active	74803012
0	Age less than 15 years	74803012
2296	Not applicable	74803012
1855	Employed	74803013
1289	Unemployed	74803013
104	Discouraged work-seeker	74803013
1142	Other not economically active	74803013
0	Age less than 15 years	74803013
1832	Not applicable	74803013
1839	Employed	74803014
1751	Unemployed	74803014
299	Discouraged work-seeker	74803014
1310	Other not economically active	74803014
0	Age less than 15 years	74803014
1781	Not applicable	74803014
1717	Employed	74803015
1055	Unemployed	74803015
264	Discouraged work-seeker	74803015
1638	Other not economically active	74803015
0	Age less than 15 years	74803015
1935	Not applicable	74803015
3624	Employed	74803016
1385	Unemployed	74803016
363	Discouraged work-seeker	74803016
1863	Other not economically active	74803016
0	Age less than 15 years	74803016
2511	Not applicable	74803016
3295	Employed	74804001
1634	Unemployed	74804001
300	Discouraged work-seeker	74804001
2270	Other not economically active	74804001
0	Age less than 15 years	74804001
3551	Not applicable	74804001
1931	Employed	74804002
1385	Unemployed	74804002
280	Discouraged work-seeker	74804002
1931	Other not economically active	74804002
0	Age less than 15 years	74804002
2592	Not applicable	74804002
1584	Employed	74804003
1267	Unemployed	74804003
343	Discouraged work-seeker	74804003
1113	Other not economically active	74804003
0	Age less than 15 years	74804003
2080	Not applicable	74804003
2173	Employed	74804004
1408	Unemployed	74804004
416	Discouraged work-seeker	74804004
2009	Other not economically active	74804004
0	Age less than 15 years	74804004
3133	Not applicable	74804004
1449	Employed	74804005
309	Unemployed	74804005
18	Discouraged work-seeker	74804005
331	Other not economically active	74804005
0	Age less than 15 years	74804005
508	Not applicable	74804005
1432	Employed	74804006
1019	Unemployed	74804006
32	Discouraged work-seeker	74804006
1525	Other not economically active	74804006
0	Age less than 15 years	74804006
1776	Not applicable	74804006
1894	Employed	74804007
1652	Unemployed	74804007
186	Discouraged work-seeker	74804007
1565	Other not economically active	74804007
0	Age less than 15 years	74804007
2479	Not applicable	74804007
1138	Employed	74804008
1421	Unemployed	74804008
194	Discouraged work-seeker	74804008
1358	Other not economically active	74804008
0	Age less than 15 years	74804008
1966	Not applicable	74804008
1348	Employed	74804009
1273	Unemployed	74804009
189	Discouraged work-seeker	74804009
1173	Other not economically active	74804009
0	Age less than 15 years	74804009
2096	Not applicable	74804009
1346	Employed	74804010
943	Unemployed	74804010
463	Discouraged work-seeker	74804010
1571	Other not economically active	74804010
0	Age less than 15 years	74804010
2257	Not applicable	74804010
3488	Employed	74804011
442	Unemployed	74804011
25	Discouraged work-seeker	74804011
990	Other not economically active	74804011
0	Age less than 15 years	74804011
1087	Not applicable	74804011
1542	Employed	74804012
279	Unemployed	74804012
84	Discouraged work-seeker	74804012
2519	Other not economically active	74804012
0	Age less than 15 years	74804012
1376	Not applicable	74804012
2619	Employed	74804013
594	Unemployed	74804013
46	Discouraged work-seeker	74804013
3081	Other not economically active	74804013
0	Age less than 15 years	74804013
1228	Not applicable	74804013
5991	Employed	74804014
478	Unemployed	74804014
65	Discouraged work-seeker	74804014
875	Other not economically active	74804014
0	Age less than 15 years	74804014
615	Not applicable	74804014
2495	Employed	74804015
464	Unemployed	74804015
118	Discouraged work-seeker	74804015
837	Other not economically active	74804015
0	Age less than 15 years	74804015
1054	Not applicable	74804015
3186	Employed	74804016
446	Unemployed	74804016
72	Discouraged work-seeker	74804016
1689	Other not economically active	74804016
0	Age less than 15 years	74804016
2137	Not applicable	74804016
2447	Employed	74804017
302	Unemployed	74804017
90	Discouraged work-seeker	74804017
1300	Other not economically active	74804017
0	Age less than 15 years	74804017
1610	Not applicable	74804017
2558	Employed	74804018
494	Unemployed	74804018
53	Discouraged work-seeker	74804018
1173	Other not economically active	74804018
0	Age less than 15 years	74804018
1466	Not applicable	74804018
0	Employed	74804019
0	Unemployed	74804019
0	Discouraged work-seeker	74804019
3765	Other not economically active	74804019
0	Age less than 15 years	74804019
33	Not applicable	74804019
3239	Employed	74804020
1848	Unemployed	74804020
205	Discouraged work-seeker	74804020
1605	Other not economically active	74804020
0	Age less than 15 years	74804020
2824	Not applicable	74804020
5631	Employed	74804021
1632	Unemployed	74804021
331	Discouraged work-seeker	74804021
2775	Other not economically active	74804021
0	Age less than 15 years	74804021
3544	Not applicable	74804021
1376	Employed	74804022
797	Unemployed	74804022
252	Discouraged work-seeker	74804022
2257	Other not economically active	74804022
0	Age less than 15 years	74804022
2478	Not applicable	74804022
2321	Employed	74804023
954	Unemployed	74804023
235	Discouraged work-seeker	74804023
1445	Other not economically active	74804023
0	Age less than 15 years	74804023
1821	Not applicable	74804023
1808	Employed	74804024
351	Unemployed	74804024
128	Discouraged work-seeker	74804024
1400	Other not economically active	74804024
0	Age less than 15 years	74804024
1582	Not applicable	74804024
1870	Employed	74804025
1208	Unemployed	74804025
257	Discouraged work-seeker	74804025
1598	Other not economically active	74804025
0	Age less than 15 years	74804025
2508	Not applicable	74804025
3095	Employed	74804026
1544	Unemployed	74804026
323	Discouraged work-seeker	74804026
2162	Other not economically active	74804026
0	Age less than 15 years	74804026
3610	Not applicable	74804026
2586	Employed	74804027
166	Unemployed	74804027
139	Discouraged work-seeker	74804027
1047	Other not economically active	74804027
0	Age less than 15 years	74804027
1113	Not applicable	74804027
2794	Employed	74804028
575	Unemployed	74804028
123	Discouraged work-seeker	74804028
1425	Other not economically active	74804028
0	Age less than 15 years	74804028
1719	Not applicable	74804028
22463	Employed	79700001
7770	Unemployed	79700001
1128	Discouraged work-seeker	79700001
8639	Other not economically active	79700001
0	Age less than 15 years	79700001
14886	Not applicable	79700001
12366	Employed	79700002
6915	Unemployed	79700002
659	Discouraged work-seeker	79700002
5235	Other not economically active	79700002
0	Age less than 15 years	79700002
7930	Not applicable	79700002
9848	Employed	79700003
4555	Unemployed	79700003
969	Discouraged work-seeker	79700003
4887	Other not economically active	79700003
0	Age less than 15 years	79700003
6067	Not applicable	79700003
5212	Employed	79700004
3851	Unemployed	79700004
425	Discouraged work-seeker	79700004
1920	Other not economically active	79700004
0	Age less than 15 years	79700004
1710	Not applicable	79700004
8529	Employed	79700005
5149	Unemployed	79700005
907	Discouraged work-seeker	79700005
5507	Other not economically active	79700005
0	Age less than 15 years	79700005
7117	Not applicable	79700005
10084	Employed	79700006
5773	Unemployed	79700006
416	Discouraged work-seeker	79700006
5623	Other not economically active	79700006
0	Age less than 15 years	79700006
7660	Not applicable	79700006
8218	Employed	79700007
4452	Unemployed	79700007
633	Discouraged work-seeker	79700007
5819	Other not economically active	79700007
0	Age less than 15 years	79700007
6424	Not applicable	79700007
10149	Employed	79700008
5358	Unemployed	79700008
750	Discouraged work-seeker	79700008
7626	Other not economically active	79700008
0	Age less than 15 years	79700008
8688	Not applicable	79700008
8720	Employed	79700009
4127	Unemployed	79700009
634	Discouraged work-seeker	79700009
4457	Other not economically active	79700009
0	Age less than 15 years	79700009
6335	Not applicable	79700009
9041	Employed	79700010
4453	Unemployed	79700010
691	Discouraged work-seeker	79700010
4524	Other not economically active	79700010
0	Age less than 15 years	79700010
7020	Not applicable	79700010
10290	Employed	79700011
5378	Unemployed	79700011
594	Discouraged work-seeker	79700011
6136	Other not economically active	79700011
0	Age less than 15 years	79700011
8489	Not applicable	79700011
12369	Employed	79700012
6843	Unemployed	79700012
688	Discouraged work-seeker	79700012
7896	Other not economically active	79700012
0	Age less than 15 years	79700012
8975	Not applicable	79700012
13801	Employed	79700013
2821	Unemployed	79700013
481	Discouraged work-seeker	79700013
4421	Other not economically active	79700013
0	Age less than 15 years	79700013
8057	Not applicable	79700013
8878	Employed	79700014
5619	Unemployed	79700014
912	Discouraged work-seeker	79700014
6745	Other not economically active	79700014
0	Age less than 15 years	79700014
8892	Not applicable	79700014
14951	Employed	79700015
956	Unemployed	79700015
200	Discouraged work-seeker	79700015
4948	Other not economically active	79700015
0	Age less than 15 years	79700015
8387	Not applicable	79700015
14119	Employed	79700016
1418	Unemployed	79700016
206	Discouraged work-seeker	79700016
4045	Other not economically active	79700016
0	Age less than 15 years	79700016
7497	Not applicable	79700016
18311	Employed	79700017
2380	Unemployed	79700017
378	Discouraged work-seeker	79700017
6363	Other not economically active	79700017
0	Age less than 15 years	79700017
9334	Not applicable	79700017
14942	Employed	79700018
859	Unemployed	79700018
153	Discouraged work-seeker	79700018
3843	Other not economically active	79700018
0	Age less than 15 years	79700018
7643	Not applicable	79700018
13863	Employed	79700019
764	Unemployed	79700019
91	Discouraged work-seeker	79700019
4183	Other not economically active	79700019
0	Age less than 15 years	79700019
7707	Not applicable	79700019
14620	Employed	79700020
961	Unemployed	79700020
128	Discouraged work-seeker	79700020
5181	Other not economically active	79700020
0	Age less than 15 years	79700020
8028	Not applicable	79700020
20053	Employed	79700021
5069	Unemployed	79700021
1162	Discouraged work-seeker	79700021
6532	Other not economically active	79700021
0	Age less than 15 years	79700021
10293	Not applicable	79700021
15579	Employed	79700022
1326	Unemployed	79700022
199	Discouraged work-seeker	79700022
4662	Other not economically active	79700022
0	Age less than 15 years	79700022
7472	Not applicable	79700022
15578	Employed	79700023
1110	Unemployed	79700023
140	Discouraged work-seeker	79700023
3889	Other not economically active	79700023
0	Age less than 15 years	79700023
8023	Not applicable	79700023
19172	Employed	79700024
4117	Unemployed	79700024
705	Discouraged work-seeker	79700024
8066	Other not economically active	79700024
0	Age less than 15 years	79700024
13985	Not applicable	79700024
14315	Employed	79700025
6495	Unemployed	79700025
1138	Discouraged work-seeker	79700025
8916	Other not economically active	79700025
0	Age less than 15 years	79700025
13201	Not applicable	79700025
8723	Employed	79700026
5026	Unemployed	79700026
1318	Discouraged work-seeker	79700026
7667	Other not economically active	79700026
0	Age less than 15 years	79700026
10292	Not applicable	79700026
12113	Employed	79700027
671	Unemployed	79700027
181	Discouraged work-seeker	79700027
3836	Other not economically active	79700027
0	Age less than 15 years	79700027
7057	Not applicable	79700027
13137	Employed	79700028
890	Unemployed	79700028
132	Discouraged work-seeker	79700028
4215	Other not economically active	79700028
0	Age less than 15 years	79700028
7480	Not applicable	79700028
5934	Employed	79700029
2980	Unemployed	79700029
246	Discouraged work-seeker	79700029
3983	Other not economically active	79700029
0	Age less than 15 years	79700029
5363	Not applicable	79700029
7461	Employed	79700030
3662	Unemployed	79700030
972	Discouraged work-seeker	79700030
4652	Other not economically active	79700030
0	Age less than 15 years	79700030
5855	Not applicable	79700030
14338	Employed	79700031
2881	Unemployed	79700031
732	Discouraged work-seeker	79700031
6366	Other not economically active	79700031
0	Age less than 15 years	79700031
9861	Not applicable	79700031
11783	Employed	79700032
941	Unemployed	79700032
136	Discouraged work-seeker	79700032
4510	Other not economically active	79700032
0	Age less than 15 years	79700032
6907	Not applicable	79700032
17475	Employed	79700033
7155	Unemployed	79700033
690	Discouraged work-seeker	79700033
6904	Other not economically active	79700033
0	Age less than 15 years	79700033
8522	Not applicable	79700033
6775	Employed	79700034
4650	Unemployed	79700034
535	Discouraged work-seeker	79700034
6337	Other not economically active	79700034
0	Age less than 15 years	79700034
7680	Not applicable	79700034
11274	Employed	79700035
6782	Unemployed	79700035
384	Discouraged work-seeker	79700035
3096	Other not economically active	79700035
0	Age less than 15 years	79700035
6563	Not applicable	79700035
13161	Employed	79700036
1748	Unemployed	79700036
328	Discouraged work-seeker	79700036
4616	Other not economically active	79700036
0	Age less than 15 years	79700036
7203	Not applicable	79700036
15225	Employed	79700037
864	Unemployed	79700037
237	Discouraged work-seeker	79700037
5541	Other not economically active	79700037
0	Age less than 15 years	79700037
8570	Not applicable	79700037
17375	Employed	79700038
1041	Unemployed	79700038
163	Discouraged work-seeker	79700038
5777	Other not economically active	79700038
0	Age less than 15 years	79700038
9322	Not applicable	79700038
15525	Employed	79700039
2334	Unemployed	79700039
815	Discouraged work-seeker	79700039
5872	Other not economically active	79700039
0	Age less than 15 years	79700039
10071	Not applicable	79700039
10901	Employed	79700040
4770	Unemployed	79700040
492	Discouraged work-seeker	79700040
5551	Other not economically active	79700040
0	Age less than 15 years	79700040
8773	Not applicable	79700040
14507	Employed	79700041
7585	Unemployed	79700041
917	Discouraged work-seeker	79700041
7299	Other not economically active	79700041
0	Age less than 15 years	79700041
12102	Not applicable	79700041
13741	Employed	79700042
5188	Unemployed	79700042
798	Discouraged work-seeker	79700042
6688	Other not economically active	79700042
0	Age less than 15 years	79700042
9613	Not applicable	79700042
12354	Employed	79700043
1877	Unemployed	79700043
192	Discouraged work-seeker	79700043
4867	Other not economically active	79700043
0	Age less than 15 years	79700043
7678	Not applicable	79700043
11154	Employed	79700044
4427	Unemployed	79700044
859	Discouraged work-seeker	79700044
6011	Other not economically active	79700044
0	Age less than 15 years	79700044
9652	Not applicable	79700044
10354	Employed	79700045
4562	Unemployed	79700045
624	Discouraged work-seeker	79700045
6086	Other not economically active	79700045
0	Age less than 15 years	79700045
8787	Not applicable	79700045
8300	Employed	79700046
4685	Unemployed	79700046
811	Discouraged work-seeker	79700046
5879	Other not economically active	79700046
0	Age less than 15 years	79700046
7930	Not applicable	79700046
8891	Employed	79700047
6406	Unemployed	79700047
915	Discouraged work-seeker	79700047
5599	Other not economically active	79700047
0	Age less than 15 years	79700047
8463	Not applicable	79700047
6061	Employed	79700048
4606	Unemployed	79700048
587	Discouraged work-seeker	79700048
4827	Other not economically active	79700048
0	Age less than 15 years	79700048
7058	Not applicable	79700048
7166	Employed	79700049
4054	Unemployed	79700049
1408	Discouraged work-seeker	79700049
5459	Other not economically active	79700049
0	Age less than 15 years	79700049
7189	Not applicable	79700049
8205	Employed	79700050
4255	Unemployed	79700050
1162	Discouraged work-seeker	79700050
6065	Other not economically active	79700050
0	Age less than 15 years	79700050
7726	Not applicable	79700050
10115	Employed	79700051
6767	Unemployed	79700051
932	Discouraged work-seeker	79700051
5044	Other not economically active	79700051
0	Age less than 15 years	79700051
8060	Not applicable	79700051
10806	Employed	79700052
7715	Unemployed	79700052
1137	Discouraged work-seeker	79700052
5526	Other not economically active	79700052
0	Age less than 15 years	79700052
7696	Not applicable	79700052
10227	Employed	79700053
6562	Unemployed	79700053
1566	Discouraged work-seeker	79700053
6496	Other not economically active	79700053
0	Age less than 15 years	79700053
11036	Not applicable	79700053
7396	Employed	79700054
4810	Unemployed	79700054
738	Discouraged work-seeker	79700054
5477	Other not economically active	79700054
0	Age less than 15 years	79700054
7622	Not applicable	79700054
8470	Employed	79700055
6226	Unemployed	79700055
1408	Discouraged work-seeker	79700055
4935	Other not economically active	79700055
0	Age less than 15 years	79700055
8786	Not applicable	79700055
6992	Employed	79700056
4759	Unemployed	79700056
399	Discouraged work-seeker	79700056
5130	Other not economically active	79700056
0	Age less than 15 years	79700056
6867	Not applicable	79700056
10399	Employed	79700057
6776	Unemployed	79700057
580	Discouraged work-seeker	79700057
7238	Other not economically active	79700057
0	Age less than 15 years	79700057
9265	Not applicable	79700057
13392	Employed	79700058
7104	Unemployed	79700058
2078	Discouraged work-seeker	79700058
8353	Other not economically active	79700058
0	Age less than 15 years	79700058
13417	Not applicable	79700058
9738	Employed	79700059
4895	Unemployed	79700059
1339	Discouraged work-seeker	79700059
7217	Other not economically active	79700059
0	Age less than 15 years	79700059
8989	Not applicable	79700059
9037	Employed	79700060
5390	Unemployed	79700060
1615	Discouraged work-seeker	79700060
6118	Other not economically active	79700060
0	Age less than 15 years	79700060
9245	Not applicable	79700060
8795	Employed	79700061
7620	Unemployed	79700061
1601	Discouraged work-seeker	79700061
7904	Other not economically active	79700061
0	Age less than 15 years	79700061
12979	Not applicable	79700061
5616	Employed	79700062
3261	Unemployed	79700062
1588	Discouraged work-seeker	79700062
5545	Other not economically active	79700062
0	Age less than 15 years	79700062
7835	Not applicable	79700062
8078	Employed	79700063
7094	Unemployed	79700063
1778	Discouraged work-seeker	79700063
7386	Other not economically active	79700063
0	Age less than 15 years	79700063
11124	Not applicable	79700063
9837	Employed	79700064
5483	Unemployed	79700064
1280	Discouraged work-seeker	79700064
7390	Other not economically active	79700064
0	Age less than 15 years	79700064
10484	Not applicable	79700064
10529	Employed	79700065
6152	Unemployed	79700065
1995	Discouraged work-seeker	79700065
7453	Other not economically active	79700065
0	Age less than 15 years	79700065
13243	Not applicable	79700065
10685	Employed	79700066
7091	Unemployed	79700066
1793	Discouraged work-seeker	79700066
8549	Other not economically active	79700066
0	Age less than 15 years	79700066
13835	Not applicable	79700066
10118	Employed	79700067
5278	Unemployed	79700067
1204	Discouraged work-seeker	79700067
7097	Other not economically active	79700067
0	Age less than 15 years	79700067
10467	Not applicable	79700067
8540	Employed	79700068
5459	Unemployed	79700068
1932	Discouraged work-seeker	79700068
7654	Other not economically active	79700068
0	Age less than 15 years	79700068
9917	Not applicable	79700068
6420	Employed	79700069
3182	Unemployed	79700069
808	Discouraged work-seeker	79700069
4750	Other not economically active	79700069
0	Age less than 15 years	79700069
6509	Not applicable	79700069
6833	Employed	79700070
3349	Unemployed	79700070
804	Discouraged work-seeker	79700070
5485	Other not economically active	79700070
0	Age less than 15 years	79700070
6806	Not applicable	79700070
12101	Employed	79700071
7976	Unemployed	79700071
1237	Discouraged work-seeker	79700071
10761	Other not economically active	79700071
0	Age less than 15 years	79700071
10487	Not applicable	79700071
11998	Employed	79700072
3963	Unemployed	79700072
610	Discouraged work-seeker	79700072
7026	Other not economically active	79700072
0	Age less than 15 years	79700072
8691	Not applicable	79700072
12250	Employed	79700073
4131	Unemployed	79700073
305	Discouraged work-seeker	79700073
6878	Other not economically active	79700073
0	Age less than 15 years	79700073
8969	Not applicable	79700073
10217	Employed	79700074
3268	Unemployed	79700074
497	Discouraged work-seeker	79700074
5137	Other not economically active	79700074
0	Age less than 15 years	79700074
7720	Not applicable	79700074
13569	Employed	79700075
2864	Unemployed	79700075
379	Discouraged work-seeker	79700075
6841	Other not economically active	79700075
0	Age less than 15 years	79700075
9521	Not applicable	79700075
12077	Employed	79700076
1778	Unemployed	79700076
236	Discouraged work-seeker	79700076
6325	Other not economically active	79700076
0	Age less than 15 years	79700076
8214	Not applicable	79700076
9273	Employed	79700077
5685	Unemployed	79700077
1158	Discouraged work-seeker	79700077
6791	Other not economically active	79700077
0	Age less than 15 years	79700077
9616	Not applicable	79700077
7208	Employed	79700078
4290	Unemployed	79700078
484	Discouraged work-seeker	79700078
4957	Other not economically active	79700078
0	Age less than 15 years	79700078
6864	Not applicable	79700078
7968	Employed	79700079
6219	Unemployed	79700079
1051	Discouraged work-seeker	79700079
7209	Other not economically active	79700079
0	Age less than 15 years	79700079
9990	Not applicable	79700079
5285	Employed	79700080
3432	Unemployed	79700080
735	Discouraged work-seeker	79700080
5250	Other not economically active	79700080
0	Age less than 15 years	79700080
7208	Not applicable	79700080
11151	Employed	79700081
7977	Unemployed	79700081
1682	Discouraged work-seeker	79700081
9110	Other not economically active	79700081
0	Age less than 15 years	79700081
14543	Not applicable	79700081
7284	Employed	79700082
4639	Unemployed	79700082
939	Discouraged work-seeker	79700082
5816	Other not economically active	79700082
0	Age less than 15 years	79700082
8259	Not applicable	79700082
6185	Employed	79700083
4233	Unemployed	79700083
801	Discouraged work-seeker	79700083
6186	Other not economically active	79700083
0	Age less than 15 years	79700083
8229	Not applicable	79700083
10511	Employed	79700084
6956	Unemployed	79700084
1210	Discouraged work-seeker	79700084
7797	Other not economically active	79700084
0	Age less than 15 years	79700084
13241	Not applicable	79700084
8383	Employed	79700085
4904	Unemployed	79700085
1416	Discouraged work-seeker	79700085
6311	Other not economically active	79700085
0	Age less than 15 years	79700085
9521	Not applicable	79700085
9758	Employed	79700086
7534	Unemployed	79700086
1991	Discouraged work-seeker	79700086
7450	Other not economically active	79700086
0	Age less than 15 years	79700086
12530	Not applicable	79700086
7259	Employed	79700087
5099	Unemployed	79700087
1015	Discouraged work-seeker	79700087
7358	Other not economically active	79700087
0	Age less than 15 years	79700087
9906	Not applicable	79700087
10570	Employed	79700088
3279	Unemployed	79700088
465	Discouraged work-seeker	79700088
7205	Other not economically active	79700088
0	Age less than 15 years	79700088
9937	Not applicable	79700088
20876	Employed	79700089
10376	Unemployed	79700089
1367	Discouraged work-seeker	79700089
7694	Other not economically active	79700089
0	Age less than 15 years	79700089
10958	Not applicable	79700089
11259	Employed	79700090
5775	Unemployed	79700090
820	Discouraged work-seeker	79700090
7234	Other not economically active	79700090
0	Age less than 15 years	79700090
7370	Not applicable	79700090
14996	Employed	79700091
2556	Unemployed	79700091
428	Discouraged work-seeker	79700091
5742	Other not economically active	79700091
0	Age less than 15 years	79700091
9685	Not applicable	79700091
15046	Employed	79700092
1527	Unemployed	79700092
239	Discouraged work-seeker	79700092
5084	Other not economically active	79700092
0	Age less than 15 years	79700092
7958	Not applicable	79700092
9761	Employed	79700093
5070	Unemployed	79700093
621	Discouraged work-seeker	79700093
3696	Other not economically active	79700093
0	Age less than 15 years	79700093
4679	Not applicable	79700093
14239	Employed	79700094
1026	Unemployed	79700094
149	Discouraged work-seeker	79700094
4163	Other not economically active	79700094
0	Age less than 15 years	79700094
7070	Not applicable	79700094
9091	Employed	79700095
5524	Unemployed	79700095
722	Discouraged work-seeker	79700095
6069	Other not economically active	79700095
0	Age less than 15 years	79700095
7924	Not applicable	79700095
7772	Employed	79700096
4580	Unemployed	79700096
990	Discouraged work-seeker	79700096
5599	Other not economically active	79700096
0	Age less than 15 years	79700096
8268	Not applicable	79700096
14424	Employed	79700097
2564	Unemployed	79700097
320	Discouraged work-seeker	79700097
7065	Other not economically active	79700097
0	Age less than 15 years	79700097
10261	Not applicable	79700097
6175	Employed	79700098
2705	Unemployed	79700098
653	Discouraged work-seeker	79700098
5431	Other not economically active	79700098
0	Age less than 15 years	79700098
7064	Not applicable	79700098
12975	Employed	79700099
7846	Unemployed	79700099
1212	Discouraged work-seeker	79700099
12033	Other not economically active	79700099
0	Age less than 15 years	79700099
13466	Not applicable	79700099
16556	Employed	79700100
2339	Unemployed	79700100
319	Discouraged work-seeker	79700100
4038	Other not economically active	79700100
0	Age less than 15 years	79700100
7623	Not applicable	79700100
11197	Employed	79700101
7961	Unemployed	79700101
1314	Discouraged work-seeker	79700101
8272	Other not economically active	79700101
0	Age less than 15 years	79700101
13526	Not applicable	79700101
10578	Employed	79800001
6678	Unemployed	79800001
2604	Discouraged work-seeker	79800001
10259	Other not economically active	79800001
0	Age less than 15 years	79800001
15384	Not applicable	79800001
9872	Employed	79800002
6101	Unemployed	79800002
1999	Discouraged work-seeker	79800002
9639	Other not economically active	79800002
0	Age less than 15 years	79800002
14056	Not applicable	79800002
7476	Employed	79800003
4679	Unemployed	79800003
1347	Discouraged work-seeker	79800003
7597	Other not economically active	79800003
0	Age less than 15 years	79800003
10470	Not applicable	79800003
9221	Employed	79800004
7231	Unemployed	79800004
2480	Discouraged work-seeker	79800004
9149	Other not economically active	79800004
0	Age less than 15 years	79800004
13537	Not applicable	79800004
12093	Employed	79800005
8039	Unemployed	79800005
2368	Discouraged work-seeker	79800005
10129	Other not economically active	79800005
0	Age less than 15 years	79800005
17125	Not applicable	79800005
9472	Employed	79800006
6372	Unemployed	79800006
1403	Discouraged work-seeker	79800006
8660	Other not economically active	79800006
0	Age less than 15 years	79800006
12372	Not applicable	79800006
12252	Employed	79800007
5653	Unemployed	79800007
1090	Discouraged work-seeker	79800007
8070	Other not economically active	79800007
0	Age less than 15 years	79800007
12079	Not applicable	79800007
15182	Employed	79800008
5812	Unemployed	79800008
966	Discouraged work-seeker	79800008
7097	Other not economically active	79800008
0	Age less than 15 years	79800008
11053	Not applicable	79800008
10759	Employed	79800009
1822	Unemployed	79800009
243	Discouraged work-seeker	79800009
7931	Other not economically active	79800009
0	Age less than 15 years	79800009
9215	Not applicable	79800009
10963	Employed	79800010
4457	Unemployed	79800010
717	Discouraged work-seeker	79800010
7522	Other not economically active	79800010
0	Age less than 15 years	79800010
10340	Not applicable	79800010
10585	Employed	79800011
5653	Unemployed	79800011
1137	Discouraged work-seeker	79800011
6369	Other not economically active	79800011
0	Age less than 15 years	79800011
9530	Not applicable	79800011
8907	Employed	79800012
4362	Unemployed	79800012
819	Discouraged work-seeker	79800012
5799	Other not economically active	79800012
0	Age less than 15 years	79800012
7420	Not applicable	79800012
14452	Employed	79800013
4487	Unemployed	79800013
943	Discouraged work-seeker	79800013
6888	Other not economically active	79800013
0	Age less than 15 years	79800013
10896	Not applicable	79800013
10913	Employed	79800014
3688	Unemployed	79800014
669	Discouraged work-seeker	79800014
7517	Other not economically active	79800014
0	Age less than 15 years	79800014
8281	Not applicable	79800014
6275	Employed	79800015
4513	Unemployed	79800015
1113	Discouraged work-seeker	79800015
6558	Other not economically active	79800015
0	Age less than 15 years	79800015
8326	Not applicable	79800015
7676	Employed	79800016
4434	Unemployed	79800016
644	Discouraged work-seeker	79800016
6665	Other not economically active	79800016
0	Age less than 15 years	79800016
7565	Not applicable	79800016
10118	Employed	79800017
7693	Unemployed	79800017
730	Discouraged work-seeker	79800017
7464	Other not economically active	79800017
0	Age less than 15 years	79800017
11753	Not applicable	79800017
10261	Employed	79800018
5881	Unemployed	79800018
886	Discouraged work-seeker	79800018
9009	Other not economically active	79800018
0	Age less than 15 years	79800018
12454	Not applicable	79800018
8026	Employed	79800019
5388	Unemployed	79800019
1024	Discouraged work-seeker	79800019
5822	Other not economically active	79800019
0	Age less than 15 years	79800019
8411	Not applicable	79800019
9204	Employed	79800020
5496	Unemployed	79800020
760	Discouraged work-seeker	79800020
6630	Other not economically active	79800020
0	Age less than 15 years	79800020
9906	Not applicable	79800020
8657	Employed	79800021
4602	Unemployed	79800021
833	Discouraged work-seeker	79800021
6590	Other not economically active	79800021
0	Age less than 15 years	79800021
8577	Not applicable	79800021
8567	Employed	79800022
4390	Unemployed	79800022
1716	Discouraged work-seeker	79800022
7614	Other not economically active	79800022
0	Age less than 15 years	79800022
9406	Not applicable	79800022
17386	Employed	79800023
972	Unemployed	79800023
220	Discouraged work-seeker	79800023
5264	Other not economically active	79800023
0	Age less than 15 years	79800023
8345	Not applicable	79800023
10765	Employed	79800024
6553	Unemployed	79800024
1502	Discouraged work-seeker	79800024
6114	Other not economically active	79800024
0	Age less than 15 years	79800024
9019	Not applicable	79800024
10259	Employed	79800025
6178	Unemployed	79800025
952	Discouraged work-seeker	79800025
8227	Other not economically active	79800025
0	Age less than 15 years	79800025
9981	Not applicable	79800025
7004	Employed	79800026
4903	Unemployed	79800026
1067	Discouraged work-seeker	79800026
4815	Other not economically active	79800026
0	Age less than 15 years	79800026
7577	Not applicable	79800026
6592	Employed	79800027
4445	Unemployed	79800027
941	Discouraged work-seeker	79800027
5520	Other not economically active	79800027
0	Age less than 15 years	79800027
7390	Not applicable	79800027
7741	Employed	79800028
5474	Unemployed	79800028
1046	Discouraged work-seeker	79800028
6401	Other not economically active	79800028
0	Age less than 15 years	79800028
8292	Not applicable	79800028
8269	Employed	79800029
4970	Unemployed	79800029
953	Discouraged work-seeker	79800029
7713	Other not economically active	79800029
0	Age less than 15 years	79800029
8442	Not applicable	79800029
8839	Employed	79800030
7354	Unemployed	79800030
1601	Discouraged work-seeker	79800030
7585	Other not economically active	79800030
0	Age less than 15 years	79800030
9346	Not applicable	79800030
8190	Employed	79800031
6032	Unemployed	79800031
548	Discouraged work-seeker	79800031
5366	Other not economically active	79800031
0	Age less than 15 years	79800031
7552	Not applicable	79800031
20244	Employed	79800032
3713	Unemployed	79800032
701	Discouraged work-seeker	79800032
5129	Other not economically active	79800032
0	Age less than 15 years	79800032
11381	Not applicable	79800032
7678	Employed	79800033
4992	Unemployed	79800033
777	Discouraged work-seeker	79800033
6093	Other not economically active	79800033
0	Age less than 15 years	79800033
8369	Not applicable	79800033
8677	Employed	79800034
5495	Unemployed	79800034
700	Discouraged work-seeker	79800034
5883	Other not economically active	79800034
0	Age less than 15 years	79800034
7739	Not applicable	79800034
5930	Employed	79800035
4922	Unemployed	79800035
691	Discouraged work-seeker	79800035
5994	Other not economically active	79800035
0	Age less than 15 years	79800035
7634	Not applicable	79800035
6165	Employed	79800036
3699	Unemployed	79800036
1221	Discouraged work-seeker	79800036
5880	Other not economically active	79800036
0	Age less than 15 years	79800036
7515	Not applicable	79800036
7785	Employed	79800037
6241	Unemployed	79800037
1357	Discouraged work-seeker	79800037
6435	Other not economically active	79800037
0	Age less than 15 years	79800037
8255	Not applicable	79800037
6491	Employed	79800038
4303	Unemployed	79800038
882	Discouraged work-seeker	79800038
4230	Other not economically active	79800038
0	Age less than 15 years	79800038
5809	Not applicable	79800038
8842	Employed	79800039
6206	Unemployed	79800039
897	Discouraged work-seeker	79800039
6709	Other not economically active	79800039
0	Age less than 15 years	79800039
9129	Not applicable	79800039
6912	Employed	79800040
4086	Unemployed	79800040
1333	Discouraged work-seeker	79800040
5621	Other not economically active	79800040
0	Age less than 15 years	79800040
7048	Not applicable	79800040
6631	Employed	79800041
4755	Unemployed	79800041
790	Discouraged work-seeker	79800041
5311	Other not economically active	79800041
0	Age less than 15 years	79800041
7408	Not applicable	79800041
6837	Employed	79800042
4338	Unemployed	79800042
758	Discouraged work-seeker	79800042
5150	Other not economically active	79800042
0	Age less than 15 years	79800042
6892	Not applicable	79800042
6462	Employed	79800043
4437	Unemployed	79800043
989	Discouraged work-seeker	79800043
6488	Other not economically active	79800043
0	Age less than 15 years	79800043
7765	Not applicable	79800043
17215	Employed	79800044
9566	Unemployed	79800044
1540	Discouraged work-seeker	79800044
10839	Other not economically active	79800044
0	Age less than 15 years	79800044
15373	Not applicable	79800044
8327	Employed	79800045
4306	Unemployed	79800045
777	Discouraged work-seeker	79800045
5875	Other not economically active	79800045
0	Age less than 15 years	79800045
8526	Not applicable	79800045
8495	Employed	79800046
4352	Unemployed	79800046
1142	Discouraged work-seeker	79800046
6021	Other not economically active	79800046
0	Age less than 15 years	79800046
8532	Not applicable	79800046
9492	Employed	79800047
4831	Unemployed	79800047
691	Discouraged work-seeker	79800047
5662	Other not economically active	79800047
0	Age less than 15 years	79800047
8732	Not applicable	79800047
10469	Employed	79800048
4602	Unemployed	79800048
561	Discouraged work-seeker	79800048
7620	Other not economically active	79800048
0	Age less than 15 years	79800048
8934	Not applicable	79800048
14912	Employed	79800049
8001	Unemployed	79800049
1984	Discouraged work-seeker	79800049
11011	Other not economically active	79800049
0	Age less than 15 years	79800049
14943	Not applicable	79800049
5045	Employed	79800050
3460	Unemployed	79800050
1434	Discouraged work-seeker	79800050
6321	Other not economically active	79800050
0	Age less than 15 years	79800050
7036	Not applicable	79800050
6925	Employed	79800051
4254	Unemployed	79800051
1527	Discouraged work-seeker	79800051
6994	Other not economically active	79800051
0	Age less than 15 years	79800051
8709	Not applicable	79800051
7587	Employed	79800052
4881	Unemployed	79800052
1455	Discouraged work-seeker	79800052
6465	Other not economically active	79800052
0	Age less than 15 years	79800052
9346	Not applicable	79800052
23281	Employed	79800053
8264	Unemployed	79800053
1334	Discouraged work-seeker	79800053
12278	Other not economically active	79800053
0	Age less than 15 years	79800053
18132	Not applicable	79800053
20792	Employed	79800054
1956	Unemployed	79800054
265	Discouraged work-seeker	79800054
7450	Other not economically active	79800054
0	Age less than 15 years	79800054
12350	Not applicable	79800054
12955	Employed	79800055
2981	Unemployed	79800055
342	Discouraged work-seeker	79800055
5298	Other not economically active	79800055
0	Age less than 15 years	79800055
8372	Not applicable	79800055
13635	Employed	79800056
2698	Unemployed	79800056
415	Discouraged work-seeker	79800056
5588	Other not economically active	79800056
0	Age less than 15 years	79800056
8760	Not applicable	79800056
15833	Employed	79800057
3118	Unemployed	79800057
499	Discouraged work-seeker	79800057
7148	Other not economically active	79800057
0	Age less than 15 years	79800057
10073	Not applicable	79800057
10880	Employed	79800058
1950	Unemployed	79800058
375	Discouraged work-seeker	79800058
9453	Other not economically active	79800058
0	Age less than 15 years	79800058
8760	Not applicable	79800058
2826	Employed	79800059
762	Unemployed	79800059
92	Discouraged work-seeker	79800059
916	Other not economically active	79800059
0	Age less than 15 years	79800059
948	Not applicable	79800059
17726	Employed	79800060
3526	Unemployed	79800060
714	Discouraged work-seeker	79800060
16484	Other not economically active	79800060
0	Age less than 15 years	79800060
6924	Not applicable	79800060
7101	Employed	79800061
3210	Unemployed	79800061
963	Discouraged work-seeker	79800061
2510	Other not economically active	79800061
0	Age less than 15 years	79800061
3188	Not applicable	79800061
10450	Employed	79800062
3021	Unemployed	79800062
227	Discouraged work-seeker	79800062
3031	Other not economically active	79800062
0	Age less than 15 years	79800062
4416	Not applicable	79800062
12786	Employed	79800063
3879	Unemployed	79800063
374	Discouraged work-seeker	79800063
4318	Other not economically active	79800063
0	Age less than 15 years	79800063
5726	Not applicable	79800063
15564	Employed	79800064
5280	Unemployed	79800064
368	Discouraged work-seeker	79800064
5064	Other not economically active	79800064
0	Age less than 15 years	79800064
8030	Not applicable	79800064
10154	Employed	79800065
4548	Unemployed	79800065
1122	Discouraged work-seeker	79800065
4516	Other not economically active	79800065
0	Age less than 15 years	79800065
3696	Not applicable	79800065
19358	Employed	79800066
4319	Unemployed	79800066
596	Discouraged work-seeker	79800066
9657	Other not economically active	79800066
0	Age less than 15 years	79800066
11522	Not applicable	79800066
9026	Employed	79800067
1816	Unemployed	79800067
265	Discouraged work-seeker	79800067
6275	Other not economically active	79800067
0	Age less than 15 years	79800067
4784	Not applicable	79800067
11524	Employed	79800068
5263	Unemployed	79800068
490	Discouraged work-seeker	79800068
6218	Other not economically active	79800068
0	Age less than 15 years	79800068
9534	Not applicable	79800068
12381	Employed	79800069
3450	Unemployed	79800069
279	Discouraged work-seeker	79800069
9986	Other not economically active	79800069
0	Age less than 15 years	79800069
7616	Not applicable	79800069
14704	Employed	79800070
2200	Unemployed	79800070
345	Discouraged work-seeker	79800070
5151	Other not economically active	79800070
0	Age less than 15 years	79800070
8623	Not applicable	79800070
13802	Employed	79800071
2090	Unemployed	79800071
516	Discouraged work-seeker	79800071
6075	Other not economically active	79800071
0	Age less than 15 years	79800071
8989	Not applicable	79800071
8809	Employed	79800072
400	Unemployed	79800072
38	Discouraged work-seeker	79800072
2879	Other not economically active	79800072
0	Age less than 15 years	79800072
6263	Not applicable	79800072
14237	Employed	79800073
1302	Unemployed	79800073
190	Discouraged work-seeker	79800073
4519	Other not economically active	79800073
0	Age less than 15 years	79800073
7715	Not applicable	79800073
13605	Employed	79800074
721	Unemployed	79800074
110	Discouraged work-seeker	79800074
3771	Other not economically active	79800074
0	Age less than 15 years	79800074
7572	Not applicable	79800074
8993	Employed	79800075
4118	Unemployed	79800075
510	Discouraged work-seeker	79800075
3927	Other not economically active	79800075
0	Age less than 15 years	79800075
5171	Not applicable	79800075
6407	Employed	79800076
3185	Unemployed	79800076
389	Discouraged work-seeker	79800076
3391	Other not economically active	79800076
0	Age less than 15 years	79800076
4890	Not applicable	79800076
17327	Employed	79800077
10000	Unemployed	79800077
1978	Discouraged work-seeker	79800077
9134	Other not economically active	79800077
0	Age less than 15 years	79800077
13261	Not applicable	79800077
16115	Employed	79800078
8949	Unemployed	79800078
1196	Discouraged work-seeker	79800078
9372	Other not economically active	79800078
0	Age less than 15 years	79800078
12410	Not applicable	79800078
17474	Employed	79800079
7795	Unemployed	79800079
1804	Discouraged work-seeker	79800079
8658	Other not economically active	79800079
0	Age less than 15 years	79800079
11882	Not applicable	79800079
11059	Employed	79800080
4947	Unemployed	79800080
1091	Discouraged work-seeker	79800080
4281	Other not economically active	79800080
0	Age less than 15 years	79800080
6753	Not applicable	79800080
15179	Employed	79800081
3557	Unemployed	79800081
370	Discouraged work-seeker	79800081
5644	Other not economically active	79800081
0	Age less than 15 years	79800081
9683	Not applicable	79800081
10825	Employed	79800082
4519	Unemployed	79800082
803	Discouraged work-seeker	79800082
8671	Other not economically active	79800082
0	Age less than 15 years	79800082
10566	Not applicable	79800082
11082	Employed	79800083
602	Unemployed	79800083
92	Discouraged work-seeker	79800083
3285	Other not economically active	79800083
0	Age less than 15 years	79800083
6288	Not applicable	79800083
15676	Employed	79800084
1917	Unemployed	79800084
312	Discouraged work-seeker	79800084
5803	Other not economically active	79800084
0	Age less than 15 years	79800084
9471	Not applicable	79800084
12902	Employed	79800085
1714	Unemployed	79800085
483	Discouraged work-seeker	79800085
3881	Other not economically active	79800085
0	Age less than 15 years	79800085
7027	Not applicable	79800085
15770	Employed	79800086
1661	Unemployed	79800086
313	Discouraged work-seeker	79800086
7503	Other not economically active	79800086
0	Age less than 15 years	79800086
9131	Not applicable	79800086
8872	Employed	79800087
265	Unemployed	79800087
52	Discouraged work-seeker	79800087
2797	Other not economically active	79800087
0	Age less than 15 years	79800087
4717	Not applicable	79800087
13164	Employed	79800088
569	Unemployed	79800088
69	Discouraged work-seeker	79800088
3839	Other not economically active	79800088
0	Age less than 15 years	79800088
6610	Not applicable	79800088
12231	Employed	79800089
551	Unemployed	79800089
80	Discouraged work-seeker	79800089
2717	Other not economically active	79800089
0	Age less than 15 years	79800089
6177	Not applicable	79800089
13487	Employed	79800090
440	Unemployed	79800090
89	Discouraged work-seeker	79800090
3006	Other not economically active	79800090
0	Age less than 15 years	79800090
5843	Not applicable	79800090
12343	Employed	79800091
2282	Unemployed	79800091
271	Discouraged work-seeker	79800091
4587	Other not economically active	79800091
0	Age less than 15 years	79800091
6603	Not applicable	79800091
19448	Employed	79800092
5875	Unemployed	79800092
766	Discouraged work-seeker	79800092
8682	Other not economically active	79800092
0	Age less than 15 years	79800092
12806	Not applicable	79800092
14701	Employed	79800093
627	Unemployed	79800093
64	Discouraged work-seeker	79800093
3014	Other not economically active	79800093
0	Age less than 15 years	79800093
5452	Not applicable	79800093
12287	Employed	79800094
380	Unemployed	79800094
34	Discouraged work-seeker	79800094
2460	Other not economically active	79800094
0	Age less than 15 years	79800094
5471	Not applicable	79800094
19837	Employed	79800095
9726	Unemployed	79800095
989	Discouraged work-seeker	79800095
6412	Other not economically active	79800095
0	Age less than 15 years	79800095
9274	Not applicable	79800095
29943	Employed	79800096
6021	Unemployed	79800096
467	Discouraged work-seeker	79800096
8232	Other not economically active	79800096
0	Age less than 15 years	79800096
14126	Not applicable	79800096
30858	Employed	79800097
1505	Unemployed	79800097
266	Discouraged work-seeker	79800097
7483	Other not economically active	79800097
0	Age less than 15 years	79800097
13967	Not applicable	79800097
16123	Employed	79800098
1481	Unemployed	79800098
125	Discouraged work-seeker	79800098
4301	Other not economically active	79800098
0	Age less than 15 years	79800098
8277	Not applicable	79800098
11115	Employed	79800099
487	Unemployed	79800099
70	Discouraged work-seeker	79800099
2885	Other not economically active	79800099
0	Age less than 15 years	79800099
5563	Not applicable	79800099
24439	Employed	79800100
6147	Unemployed	79800100
1100	Discouraged work-seeker	79800100
7676	Other not economically active	79800100
0	Age less than 15 years	79800100
15286	Not applicable	79800100
17972	Employed	79800101
672	Unemployed	79800101
104	Discouraged work-seeker	79800101
3548	Other not economically active	79800101
0	Age less than 15 years	79800101
8718	Not applicable	79800101
17496	Employed	79800102
872	Unemployed	79800102
130	Discouraged work-seeker	79800102
5934	Other not economically active	79800102
0	Age less than 15 years	79800102
8443	Not applicable	79800102
20433	Employed	79800103
738	Unemployed	79800103
84	Discouraged work-seeker	79800103
6260	Other not economically active	79800103
0	Age less than 15 years	79800103
8892	Not applicable	79800103
17188	Employed	79800104
967	Unemployed	79800104
84	Discouraged work-seeker	79800104
3883	Other not economically active	79800104
0	Age less than 15 years	79800104
7301	Not applicable	79800104
17064	Employed	79800105
7537	Unemployed	79800105
1347	Discouraged work-seeker	79800105
9690	Other not economically active	79800105
0	Age less than 15 years	79800105
13615	Not applicable	79800105
20687	Employed	79800106
672	Unemployed	79800106
97	Discouraged work-seeker	79800106
4640	Other not economically active	79800106
0	Age less than 15 years	79800106
8361	Not applicable	79800106
6402	Employed	79800107
4031	Unemployed	79800107
355	Discouraged work-seeker	79800107
3661	Other not economically active	79800107
0	Age less than 15 years	79800107
4951	Not applicable	79800107
12068	Employed	79800108
5537	Unemployed	79800108
788	Discouraged work-seeker	79800108
5654	Other not economically active	79800108
0	Age less than 15 years	79800108
8211	Not applicable	79800108
11553	Employed	79800109
2268	Unemployed	79800109
952	Discouraged work-seeker	79800109
4151	Other not economically active	79800109
0	Age less than 15 years	79800109
6144	Not applicable	79800109
21645	Employed	79800110
7903	Unemployed	79800110
1826	Discouraged work-seeker	79800110
11187	Other not economically active	79800110
0	Age less than 15 years	79800110
14386	Not applicable	79800110
21173	Employed	79800111
9975	Unemployed	79800111
1585	Discouraged work-seeker	79800111
10556	Other not economically active	79800111
0	Age less than 15 years	79800111
15797	Not applicable	79800111
34514	Employed	79800112
1726	Unemployed	79800112
181	Discouraged work-seeker	79800112
7216	Other not economically active	79800112
0	Age less than 15 years	79800112
14141	Not applicable	79800112
38579	Employed	79800113
14672	Unemployed	79800113
2446	Discouraged work-seeker	79800113
14007	Other not economically active	79800113
0	Age less than 15 years	79800113
22014	Not applicable	79800113
24419	Employed	79800114
5968	Unemployed	79800114
801	Discouraged work-seeker	79800114
6573	Other not economically active	79800114
0	Age less than 15 years	79800114
10424	Not applicable	79800114
22815	Employed	79800115
778	Unemployed	79800115
103	Discouraged work-seeker	79800115
3752	Other not economically active	79800115
0	Age less than 15 years	79800115
9507	Not applicable	79800115
7062	Employed	79800116
3989	Unemployed	79800116
506	Discouraged work-seeker	79800116
3646	Other not economically active	79800116
0	Age less than 15 years	79800116
5671	Not applicable	79800116
11215	Employed	79800117
392	Unemployed	79800117
37	Discouraged work-seeker	79800117
2480	Other not economically active	79800117
0	Age less than 15 years	79800117
5443	Not applicable	79800117
12864	Employed	79800118
2125	Unemployed	79800118
330	Discouraged work-seeker	79800118
7155	Other not economically active	79800118
0	Age less than 15 years	79800118
7943	Not applicable	79800118
17697	Employed	79800119
7253	Unemployed	79800119
937	Discouraged work-seeker	79800119
7917	Other not economically active	79800119
0	Age less than 15 years	79800119
13378	Not applicable	79800119
13787	Employed	79800120
5623	Unemployed	79800120
802	Discouraged work-seeker	79800120
7714	Other not economically active	79800120
0	Age less than 15 years	79800120
10926	Not applicable	79800120
16255	Employed	79800121
8236	Unemployed	79800121
1554	Discouraged work-seeker	79800121
10498	Other not economically active	79800121
0	Age less than 15 years	79800121
16797	Not applicable	79800121
15792	Employed	79800122
7619	Unemployed	79800122
1670	Discouraged work-seeker	79800122
10685	Other not economically active	79800122
0	Age less than 15 years	79800122
16291	Not applicable	79800122
19934	Employed	79800123
5594	Unemployed	79800123
929	Discouraged work-seeker	79800123
9063	Other not economically active	79800123
0	Age less than 15 years	79800123
7672	Not applicable	79800123
20290	Employed	79800124
4094	Unemployed	79800124
963	Discouraged work-seeker	79800124
8049	Other not economically active	79800124
0	Age less than 15 years	79800124
9670	Not applicable	79800124
17326	Employed	79800125
3125	Unemployed	79800125
486	Discouraged work-seeker	79800125
14256	Other not economically active	79800125
0	Age less than 15 years	79800125
10478	Not applicable	79800125
16444	Employed	79800126
730	Unemployed	79800126
121	Discouraged work-seeker	79800126
3387	Other not economically active	79800126
0	Age less than 15 years	79800126
7569	Not applicable	79800126
9333	Employed	79800127
6779	Unemployed	79800127
1144	Discouraged work-seeker	79800127
3429	Other not economically active	79800127
0	Age less than 15 years	79800127
6921	Not applicable	79800127
16389	Employed	79800128
8895	Unemployed	79800128
2279	Discouraged work-seeker	79800128
9786	Other not economically active	79800128
0	Age less than 15 years	79800128
15911	Not applicable	79800128
9347	Employed	79800129
6243	Unemployed	79800129
1382	Discouraged work-seeker	79800129
9065	Other not economically active	79800129
0	Age less than 15 years	79800129
11279	Not applicable	79800129
6017	Employed	79800130
4133	Unemployed	79800130
626	Discouraged work-seeker	79800130
5455	Other not economically active	79800130
0	Age less than 15 years	79800130
7501	Not applicable	79800130
11679	Employed	79900001
1183	Unemployed	79900001
275	Discouraged work-seeker	79900001
5142	Other not economically active	79900001
0	Age less than 15 years	79900001
7070	Not applicable	79900001
9596	Employed	79900002
825	Unemployed	79900002
164	Discouraged work-seeker	79900002
4134	Other not economically active	79900002
0	Age less than 15 years	79900002
6088	Not applicable	79900002
13368	Employed	79900003
2527	Unemployed	79900003
255	Discouraged work-seeker	79900003
8439	Other not economically active	79900003
0	Age less than 15 years	79900003
9526	Not applicable	79900003
19024	Employed	79900004
2135	Unemployed	79900004
246	Discouraged work-seeker	79900004
6128	Other not economically active	79900004
0	Age less than 15 years	79900004
10054	Not applicable	79900004
14146	Employed	79900005
851	Unemployed	79900005
87	Discouraged work-seeker	79900005
4428	Other not economically active	79900005
0	Age less than 15 years	79900005
7925	Not applicable	79900005
5864	Employed	79900006
2969	Unemployed	79900006
463	Discouraged work-seeker	79900006
3163	Other not economically active	79900006
0	Age less than 15 years	79900006
4715	Not applicable	79900006
15903	Employed	79900007
6392	Unemployed	79900007
829	Discouraged work-seeker	79900007
7886	Other not economically active	79900007
0	Age less than 15 years	79900007
11835	Not applicable	79900007
6060	Employed	79900008
4496	Unemployed	79900008
1013	Discouraged work-seeker	79900008
7907	Other not economically active	79900008
0	Age less than 15 years	79900008
10377	Not applicable	79900008
7227	Employed	79900009
6428	Unemployed	79900009
2259	Discouraged work-seeker	79900009
8890	Other not economically active	79900009
0	Age less than 15 years	79900009
12673	Not applicable	79900009
13989	Employed	79900010
8723	Unemployed	79900010
1033	Discouraged work-seeker	79900010
6205	Other not economically active	79900010
0	Age less than 15 years	79900010
10018	Not applicable	79900010
6832	Employed	79900011
3762	Unemployed	79900011
843	Discouraged work-seeker	79900011
5138	Other not economically active	79900011
0	Age less than 15 years	79900011
7664	Not applicable	79900011
6398	Employed	79900012
3919	Unemployed	79900012
619	Discouraged work-seeker	79900012
4492	Other not economically active	79900012
0	Age less than 15 years	79900012
6320	Not applicable	79900012
5626	Employed	79900013
4953	Unemployed	79900013
1095	Discouraged work-seeker	79900013
5684	Other not economically active	79900013
0	Age less than 15 years	79900013
9789	Not applicable	79900013
5972	Employed	79900014
4432	Unemployed	79900014
1149	Discouraged work-seeker	79900014
6065	Other not economically active	79900014
0	Age less than 15 years	79900014
9419	Not applicable	79900014
7002	Employed	79900015
2761	Unemployed	79900015
387	Discouraged work-seeker	79900015
4349	Other not economically active	79900015
0	Age less than 15 years	79900015
5011	Not applicable	79900015
6514	Employed	79900016
3363	Unemployed	79900016
455	Discouraged work-seeker	79900016
4766	Other not economically active	79900016
0	Age less than 15 years	79900016
5985	Not applicable	79900016
14859	Employed	79900017
6757	Unemployed	79900017
772	Discouraged work-seeker	79900017
7022	Other not economically active	79900017
0	Age less than 15 years	79900017
11361	Not applicable	79900017
8232	Employed	79900018
3825	Unemployed	79900018
696	Discouraged work-seeker	79900018
4859	Other not economically active	79900018
0	Age less than 15 years	79900018
6967	Not applicable	79900018
6200	Employed	79900019
4888	Unemployed	79900019
1159	Discouraged work-seeker	79900019
8984	Other not economically active	79900019
0	Age less than 15 years	79900019
9241	Not applicable	79900019
7420	Employed	79900020
4114	Unemployed	79900020
734	Discouraged work-seeker	79900020
6955	Other not economically active	79900020
0	Age less than 15 years	79900020
7891	Not applicable	79900020
8011	Employed	79900021
4855	Unemployed	79900021
555	Discouraged work-seeker	79900021
7468	Other not economically active	79900021
0	Age less than 15 years	79900021
8980	Not applicable	79900021
9411	Employed	79900022
5245	Unemployed	79900022
1003	Discouraged work-seeker	79900022
7906	Other not economically active	79900022
0	Age less than 15 years	79900022
10032	Not applicable	79900022
6274	Employed	79900023
3709	Unemployed	79900023
599	Discouraged work-seeker	79900023
4724	Other not economically active	79900023
0	Age less than 15 years	79900023
6163	Not applicable	79900023
9432	Employed	79900024
7042	Unemployed	79900024
1924	Discouraged work-seeker	79900024
12149	Other not economically active	79900024
0	Age less than 15 years	79900024
17190	Not applicable	79900024
6333	Employed	79900025
4662	Unemployed	79900025
1062	Discouraged work-seeker	79900025
5150	Other not economically active	79900025
0	Age less than 15 years	79900025
8404	Not applicable	79900025
6382	Employed	79900026
4669	Unemployed	79900026
844	Discouraged work-seeker	79900026
5836	Other not economically active	79900026
0	Age less than 15 years	79900026
8265	Not applicable	79900026
6496	Employed	79900027
4881	Unemployed	79900027
1329	Discouraged work-seeker	79900027
6581	Other not economically active	79900027
0	Age less than 15 years	79900027
9032	Not applicable	79900027
5630	Employed	79900028
2646	Unemployed	79900028
420	Discouraged work-seeker	79900028
4041	Other not economically active	79900028
0	Age less than 15 years	79900028
5119	Not applicable	79900028
7967	Employed	79900029
4398	Unemployed	79900029
1078	Discouraged work-seeker	79900029
6372	Other not economically active	79900029
0	Age less than 15 years	79900029
8854	Not applicable	79900029
10766	Employed	79900030
7255	Unemployed	79900030
999	Discouraged work-seeker	79900030
6748	Other not economically active	79900030
0	Age less than 15 years	79900030
12001	Not applicable	79900030
6479	Employed	79900031
3777	Unemployed	79900031
524	Discouraged work-seeker	79900031
6399	Other not economically active	79900031
0	Age less than 15 years	79900031
7155	Not applicable	79900031
9791	Employed	79900032
3847	Unemployed	79900032
677	Discouraged work-seeker	79900032
7854	Other not economically active	79900032
0	Age less than 15 years	79900032
8718	Not applicable	79900032
4170	Employed	79900033
2823	Unemployed	79900033
430	Discouraged work-seeker	79900033
4166	Other not economically active	79900033
0	Age less than 15 years	79900033
5405	Not applicable	79900033
4349	Employed	79900034
3166	Unemployed	79900034
740	Discouraged work-seeker	79900034
7581	Other not economically active	79900034
0	Age less than 15 years	79900034
6312	Not applicable	79900034
5199	Employed	79900035
2442	Unemployed	79900035
560	Discouraged work-seeker	79900035
4417	Other not economically active	79900035
0	Age less than 15 years	79900035
5223	Not applicable	79900035
5627	Employed	79900036
3441	Unemployed	79900036
482	Discouraged work-seeker	79900036
7252	Other not economically active	79900036
0	Age less than 15 years	79900036
5858	Not applicable	79900036
13368	Employed	79900037
6575	Unemployed	79900037
2199	Discouraged work-seeker	79900037
7985	Other not economically active	79900037
0	Age less than 15 years	79900037
13510	Not applicable	79900037
4086	Employed	79900038
2266	Unemployed	79900038
166	Discouraged work-seeker	79900038
1502	Other not economically active	79900038
0	Age less than 15 years	79900038
1343	Not applicable	79900038
8987	Employed	79900039
5565	Unemployed	79900039
1023	Discouraged work-seeker	79900039
5671	Other not economically active	79900039
0	Age less than 15 years	79900039
9913	Not applicable	79900039
23050	Employed	79900040
9757	Unemployed	79900040
2203	Discouraged work-seeker	79900040
11435	Other not economically active	79900040
0	Age less than 15 years	79900040
15796	Not applicable	79900040
9452	Employed	79900041
673	Unemployed	79900041
95	Discouraged work-seeker	79900041
3005	Other not economically active	79900041
0	Age less than 15 years	79900041
5192	Not applicable	79900041
10883	Employed	79900042
440	Unemployed	79900042
37	Discouraged work-seeker	79900042
3365	Other not economically active	79900042
0	Age less than 15 years	79900042
5668	Not applicable	79900042
9977	Employed	79900043
2992	Unemployed	79900043
729	Discouraged work-seeker	79900043
4741	Other not economically active	79900043
0	Age less than 15 years	79900043
7718	Not applicable	79900043
9495	Employed	79900044
431	Unemployed	79900044
61	Discouraged work-seeker	79900044
2665	Other not economically active	79900044
0	Age less than 15 years	79900044
5441	Not applicable	79900044
5970	Employed	79900045
298	Unemployed	79900045
42	Discouraged work-seeker	79900045
1815	Other not economically active	79900045
0	Age less than 15 years	79900045
2998	Not applicable	79900045
10242	Employed	79900046
589	Unemployed	79900046
58	Discouraged work-seeker	79900046
3876	Other not economically active	79900046
0	Age less than 15 years	79900046
5937	Not applicable	79900046
9276	Employed	79900047
418	Unemployed	79900047
48	Discouraged work-seeker	79900047
2647	Other not economically active	79900047
0	Age less than 15 years	79900047
4019	Not applicable	79900047
14072	Employed	79900048
6445	Unemployed	79900048
762	Discouraged work-seeker	79900048
5928	Other not economically active	79900048
0	Age less than 15 years	79900048
8691	Not applicable	79900048
10434	Employed	79900049
5033	Unemployed	79900049
1067	Discouraged work-seeker	79900049
7328	Other not economically active	79900049
0	Age less than 15 years	79900049
11563	Not applicable	79900049
10750	Employed	79900050
530	Unemployed	79900050
91	Discouraged work-seeker	79900050
3224	Other not economically active	79900050
0	Age less than 15 years	79900050
6253	Not applicable	79900050
8728	Employed	79900051
4633	Unemployed	79900051
537	Discouraged work-seeker	79900051
5662	Other not economically active	79900051
0	Age less than 15 years	79900051
6116	Not applicable	79900051
10387	Employed	79900052
571	Unemployed	79900052
113	Discouraged work-seeker	79900052
3949	Other not economically active	79900052
0	Age less than 15 years	79900052
6225	Not applicable	79900052
11478	Employed	79900053
782	Unemployed	79900053
137	Discouraged work-seeker	79900053
4657	Other not economically active	79900053
0	Age less than 15 years	79900053
6823	Not applicable	79900053
10002	Employed	79900054
657	Unemployed	79900054
94	Discouraged work-seeker	79900054
4110	Other not economically active	79900054
0	Age less than 15 years	79900054
5968	Not applicable	79900054
11904	Employed	79900055
1657	Unemployed	79900055
269	Discouraged work-seeker	79900055
4849	Other not economically active	79900055
0	Age less than 15 years	79900055
7142	Not applicable	79900055
5824	Employed	79900056
617	Unemployed	79900056
31	Discouraged work-seeker	79900056
10686	Other not economically active	79900056
0	Age less than 15 years	79900056
2222	Not applicable	79900056
15498	Employed	79900057
983	Unemployed	79900057
120	Discouraged work-seeker	79900057
3931	Other not economically active	79900057
0	Age less than 15 years	79900057
7599	Not applicable	79900057
12859	Employed	79900058
2462	Unemployed	79900058
208	Discouraged work-seeker	79900058
11376	Other not economically active	79900058
0	Age less than 15 years	79900058
6756	Not applicable	79900058
9810	Employed	79900059
2172	Unemployed	79900059
162	Discouraged work-seeker	79900059
7351	Other not economically active	79900059
0	Age less than 15 years	79900059
4233	Not applicable	79900059
13199	Employed	79900060
3146	Unemployed	79900060
279	Discouraged work-seeker	79900060
11036	Other not economically active	79900060
0	Age less than 15 years	79900060
5021	Not applicable	79900060
17212	Employed	79900061
4085	Unemployed	79900061
456	Discouraged work-seeker	79900061
10512	Other not economically active	79900061
0	Age less than 15 years	79900061
10493	Not applicable	79900061
5955	Employed	79900062
3172	Unemployed	79900062
455	Discouraged work-seeker	79900062
4706	Other not economically active	79900062
0	Age less than 15 years	79900062
5992	Not applicable	79900062
6530	Employed	79900063
3110	Unemployed	79900063
521	Discouraged work-seeker	79900063
2899	Other not economically active	79900063
0	Age less than 15 years	79900063
4003	Not applicable	79900063
20618	Employed	79900064
965	Unemployed	79900064
113	Discouraged work-seeker	79900064
4333	Other not economically active	79900064
0	Age less than 15 years	79900064
9187	Not applicable	79900064
11341	Employed	79900065
545	Unemployed	79900065
59	Discouraged work-seeker	79900065
3580	Other not economically active	79900065
0	Age less than 15 years	79900065
5872	Not applicable	79900065
10893	Employed	79900066
881	Unemployed	79900066
76	Discouraged work-seeker	79900066
5881	Other not economically active	79900066
0	Age less than 15 years	79900066
5754	Not applicable	79900066
7484	Employed	79900067
4508	Unemployed	79900067
472	Discouraged work-seeker	79900067
2989	Other not economically active	79900067
0	Age less than 15 years	79900067
5189	Not applicable	79900067
8928	Employed	79900068
4512	Unemployed	79900068
677	Discouraged work-seeker	79900068
7134	Other not economically active	79900068
0	Age less than 15 years	79900068
7951	Not applicable	79900068
13962	Employed	79900069
512	Unemployed	79900069
80	Discouraged work-seeker	79900069
3368	Other not economically active	79900069
0	Age less than 15 years	79900069
6708	Not applicable	79900069
17309	Employed	79900070
781	Unemployed	79900070
83	Discouraged work-seeker	79900070
4484	Other not economically active	79900070
0	Age less than 15 years	79900070
8550	Not applicable	79900070
11321	Employed	79900071
5097	Unemployed	79900071
876	Discouraged work-seeker	79900071
5707	Other not economically active	79900071
0	Age less than 15 years	79900071
7799	Not applicable	79900071
7450	Employed	79900072
3890	Unemployed	79900072
626	Discouraged work-seeker	79900072
4193	Other not economically active	79900072
0	Age less than 15 years	79900072
5988	Not applicable	79900072
9541	Employed	79900073
6917	Unemployed	79900073
1116	Discouraged work-seeker	79900073
8391	Other not economically active	79900073
0	Age less than 15 years	79900073
13651	Not applicable	79900073
5741	Employed	79900074
3316	Unemployed	79900074
936	Discouraged work-seeker	79900074
5932	Other not economically active	79900074
0	Age less than 15 years	79900074
8196	Not applicable	79900074
8512	Employed	79900075
4037	Unemployed	79900075
977	Discouraged work-seeker	79900075
6478	Other not economically active	79900075
0	Age less than 15 years	79900075
9385	Not applicable	79900075
5268	Employed	79900076
3725	Unemployed	79900076
858	Discouraged work-seeker	79900076
5559	Other not economically active	79900076
0	Age less than 15 years	79900076
8206	Not applicable	79900076
40004	Employed	79900077
12720	Unemployed	79900077
1464	Discouraged work-seeker	79900077
9692	Other not economically active	79900077
0	Age less than 15 years	79900077
20657	Not applicable	79900077
14191	Employed	79900078
565	Unemployed	79900078
46	Discouraged work-seeker	79900078
2822	Other not economically active	79900078
0	Age less than 15 years	79900078
5562	Not applicable	79900078
16356	Employed	79900079
646	Unemployed	79900079
75	Discouraged work-seeker	79900079
3819	Other not economically active	79900079
0	Age less than 15 years	79900079
8007	Not applicable	79900079
10603	Employed	79900080
3778	Unemployed	79900080
292	Discouraged work-seeker	79900080
7868	Other not economically active	79900080
0	Age less than 15 years	79900080
4263	Not applicable	79900080
5135	Employed	79900081
1822	Unemployed	79900081
74	Discouraged work-seeker	79900081
3627	Other not economically active	79900081
0	Age less than 15 years	79900081
1681	Not applicable	79900081
8898	Employed	79900082
362	Unemployed	79900082
37	Discouraged work-seeker	79900082
6422	Other not economically active	79900082
0	Age less than 15 years	79900082
4299	Not applicable	79900082
6504	Employed	79900083
281	Unemployed	79900083
26	Discouraged work-seeker	79900083
2260	Other not economically active	79900083
0	Age less than 15 years	79900083
3025	Not applicable	79900083
11705	Employed	79900084
1220	Unemployed	79900084
147	Discouraged work-seeker	79900084
5790	Other not economically active	79900084
0	Age less than 15 years	79900084
7605	Not applicable	79900084
18750	Employed	79900085
778	Unemployed	79900085
128	Discouraged work-seeker	79900085
4724	Other not economically active	79900085
0	Age less than 15 years	79900085
10247	Not applicable	79900085
16114	Employed	79900086
6714	Unemployed	79900086
1014	Discouraged work-seeker	79900086
8318	Other not economically active	79900086
0	Age less than 15 years	79900086
11426	Not applicable	79900086
10962	Employed	79900087
2259	Unemployed	79900087
234	Discouraged work-seeker	79900087
5006	Other not economically active	79900087
0	Age less than 15 years	79900087
6405	Not applicable	79900087
7318	Employed	79900088
4100	Unemployed	79900088
996	Discouraged work-seeker	79900088
6973	Other not economically active	79900088
0	Age less than 15 years	79900088
8463	Not applicable	79900088
9007	Employed	79900089
4086	Unemployed	79900089
1225	Discouraged work-seeker	79900089
5099	Other not economically active	79900089
0	Age less than 15 years	79900089
8709	Not applicable	79900089
15143	Employed	79900090
6784	Unemployed	79900090
1657	Discouraged work-seeker	79900090
6263	Other not economically active	79900090
0	Age less than 15 years	79900090
12974	Not applicable	79900090
22888	Employed	79900091
1396	Unemployed	79900091
159	Discouraged work-seeker	79900091
5327	Other not economically active	79900091
0	Age less than 15 years	79900091
10710	Not applicable	79900091
11843	Employed	79900092
2633	Unemployed	79900092
188	Discouraged work-seeker	79900092
10503	Other not economically active	79900092
0	Age less than 15 years	79900092
5271	Not applicable	79900092
5494	Employed	79900093
2263	Unemployed	79900093
906	Discouraged work-seeker	79900093
4750	Other not economically active	79900093
0	Age less than 15 years	79900093
4372	Not applicable	79900093
6214	Employed	79900094
2867	Unemployed	79900094
695	Discouraged work-seeker	79900094
5013	Other not economically active	79900094
0	Age less than 15 years	79900094
5824	Not applicable	79900094
4426	Employed	79900095
3516	Unemployed	79900095
1337	Discouraged work-seeker	79900095
6072	Other not economically active	79900095
0	Age less than 15 years	79900095
8958	Not applicable	79900095
14009	Employed	79900096
2263	Unemployed	79900096
588	Discouraged work-seeker	79900096
4635	Other not economically active	79900096
0	Age less than 15 years	79900096
8890	Not applicable	79900096
7312	Employed	79900097
4070	Unemployed	79900097
601	Discouraged work-seeker	79900097
3690	Other not economically active	79900097
0	Age less than 15 years	79900097
5387	Not applicable	79900097
11928	Employed	79900098
1299	Unemployed	79900098
190	Discouraged work-seeker	79900098
4922	Other not economically active	79900098
0	Age less than 15 years	79900098
7155	Not applicable	79900098
12532	Employed	79900099
3252	Unemployed	79900099
1082	Discouraged work-seeker	79900099
6956	Other not economically active	79900099
0	Age less than 15 years	79900099
9590	Not applicable	79900099
10130	Employed	79900100
3636	Unemployed	79900100
709	Discouraged work-seeker	79900100
9388	Other not economically active	79900100
0	Age less than 15 years	79900100
8759	Not applicable	79900100
16094	Employed	79900101
835	Unemployed	79900101
165	Discouraged work-seeker	79900101
4833	Other not economically active	79900101
0	Age less than 15 years	79900101
8442	Not applicable	79900101
10404	Employed	79900102
3685	Unemployed	79900102
1411	Discouraged work-seeker	79900102
6193	Other not economically active	79900102
0	Age less than 15 years	79900102
10015	Not applicable	79900102
6756	Employed	79900103
3919	Unemployed	79900103
564	Discouraged work-seeker	79900103
5890	Other not economically active	79900103
0	Age less than 15 years	79900103
8714	Not applicable	79900103
7571	Employed	79900104
3450	Unemployed	79900104
852	Discouraged work-seeker	79900104
5585	Other not economically active	79900104
0	Age less than 15 years	79900104
8637	Not applicable	79900104
8962	Employed	79900105
2250	Unemployed	79900105
558	Discouraged work-seeker	79900105
6087	Other not economically active	79900105
0	Age less than 15 years	79900105
8262	Not applicable	79900105
373	Employed	52103001
722	Unemployed	52103001
853	Discouraged work-seeker	52103001
2319	Other not economically active	52103001
0	Age less than 15 years	52103001
3414	Not applicable	52103001
548	Employed	52103002
537	Unemployed	52103002
452	Discouraged work-seeker	52103002
3069	Other not economically active	52103002
0	Age less than 15 years	52103002
4212	Not applicable	52103002
517	Employed	52103003
929	Unemployed	52103003
316	Discouraged work-seeker	52103003
3159	Other not economically active	52103003
0	Age less than 15 years	52103003
4169	Not applicable	52103003
476	Employed	52103004
625	Unemployed	52103004
630	Discouraged work-seeker	52103004
3599	Other not economically active	52103004
0	Age less than 15 years	52103004
4231	Not applicable	52103004
1205	Employed	52103005
1163	Unemployed	52103005
376	Discouraged work-seeker	52103005
2889	Other not economically active	52103005
0	Age less than 15 years	52103005
3884	Not applicable	52103005
285	Employed	52103006
386	Unemployed	52103006
318	Discouraged work-seeker	52103006
2154	Other not economically active	52103006
0	Age less than 15 years	52103006
2780	Not applicable	52103006
275	Employed	52103007
372	Unemployed	52103007
581	Discouraged work-seeker	52103007
2027	Other not economically active	52103007
0	Age less than 15 years	52103007
2859	Not applicable	52103007
577	Employed	52103008
435	Unemployed	52103008
639	Discouraged work-seeker	52103008
2675	Other not economically active	52103008
0	Age less than 15 years	52103008
3985	Not applicable	52103008
135	Employed	52103009
552	Unemployed	52103009
397	Discouraged work-seeker	52103009
2172	Other not economically active	52103009
0	Age less than 15 years	52103009
3047	Not applicable	52103009
1438	Employed	52103010
956	Unemployed	52103010
736	Discouraged work-seeker	52103010
3535	Other not economically active	52103010
0	Age less than 15 years	52103010
4575	Not applicable	52103010
356	Employed	52103011
644	Unemployed	52103011
352	Discouraged work-seeker	52103011
3499	Other not economically active	52103011
0	Age less than 15 years	52103011
3744	Not applicable	52103011
253	Employed	52103012
344	Unemployed	52103012
433	Discouraged work-seeker	52103012
2543	Other not economically active	52103012
0	Age less than 15 years	52103012
3016	Not applicable	52103012
263	Employed	52103013
477	Unemployed	52103013
360	Discouraged work-seeker	52103013
2589	Other not economically active	52103013
0	Age less than 15 years	52103013
3040	Not applicable	52103013
385	Employed	52103014
577	Unemployed	52103014
462	Discouraged work-seeker	52103014
2745	Other not economically active	52103014
0	Age less than 15 years	52103014
3572	Not applicable	52103014
613	Employed	52103015
736	Unemployed	52103015
561	Discouraged work-seeker	52103015
3151	Other not economically active	52103015
0	Age less than 15 years	52103015
3936	Not applicable	52103015
944	Employed	52103016
515	Unemployed	52103016
485	Discouraged work-seeker	52103016
3681	Other not economically active	52103016
0	Age less than 15 years	52103016
3651	Not applicable	52103016
987	Employed	52103017
1128	Unemployed	52103017
356	Discouraged work-seeker	52103017
2143	Other not economically active	52103017
0	Age less than 15 years	52103017
3084	Not applicable	52103017
1296	Employed	52103018
1366	Unemployed	52103018
885	Discouraged work-seeker	52103018
4228	Other not economically active	52103018
0	Age less than 15 years	52103018
5281	Not applicable	52103018
1704	Employed	52103019
1141	Unemployed	52103019
493	Discouraged work-seeker	52103019
2503	Other not economically active	52103019
0	Age less than 15 years	52103019
3895	Not applicable	52103019
475	Employed	52104001
342	Unemployed	52104001
518	Discouraged work-seeker	52104001
3629	Other not economically active	52104001
0	Age less than 15 years	52104001
4787	Not applicable	52104001
1080	Employed	52104002
434	Unemployed	52104002
556	Discouraged work-seeker	52104002
3312	Other not economically active	52104002
0	Age less than 15 years	52104002
5096	Not applicable	52104002
2842	Employed	52104003
771	Unemployed	52104003
274	Discouraged work-seeker	52104003
2645	Other not economically active	52104003
0	Age less than 15 years	52104003
3012	Not applicable	52104003
818	Employed	52104004
550	Unemployed	52104004
509	Discouraged work-seeker	52104004
2537	Other not economically active	52104004
0	Age less than 15 years	52104004
3820	Not applicable	52104004
924	Employed	52104005
690	Unemployed	52104005
441	Discouraged work-seeker	52104005
3195	Other not economically active	52104005
0	Age less than 15 years	52104005
4487	Not applicable	52104005
501	Employed	52104006
579	Unemployed	52104006
503	Discouraged work-seeker	52104006
2394	Other not economically active	52104006
0	Age less than 15 years	52104006
3673	Not applicable	52104006
2137	Employed	52104007
731	Unemployed	52104007
341	Discouraged work-seeker	52104007
3144	Other not economically active	52104007
0	Age less than 15 years	52104007
4335	Not applicable	52104007
893	Employed	52104008
390	Unemployed	52104008
422	Discouraged work-seeker	52104008
3526	Other not economically active	52104008
0	Age less than 15 years	52104008
4559	Not applicable	52104008
495	Employed	52104009
414	Unemployed	52104009
375	Discouraged work-seeker	52104009
3750	Other not economically active	52104009
0	Age less than 15 years	52104009
5171	Not applicable	52104009
962	Employed	52104010
590	Unemployed	52104010
550	Discouraged work-seeker	52104010
3395	Other not economically active	52104010
0	Age less than 15 years	52104010
4983	Not applicable	52104010
1225	Employed	52105001
284	Unemployed	52105001
585	Discouraged work-seeker	52105001
1994	Other not economically active	52105001
0	Age less than 15 years	52105001
3299	Not applicable	52105001
1480	Employed	52105002
1071	Unemployed	52105002
280	Discouraged work-seeker	52105002
1719	Other not economically active	52105002
0	Age less than 15 years	52105002
2749	Not applicable	52105002
832	Employed	52105003
1047	Unemployed	52105003
474	Discouraged work-seeker	52105003
3339	Other not economically active	52105003
0	Age less than 15 years	52105003
4536	Not applicable	52105003
746	Employed	52105004
663	Unemployed	52105004
538	Discouraged work-seeker	52105004
3117	Other not economically active	52105004
0	Age less than 15 years	52105004
4365	Not applicable	52105004
856	Employed	52105005
439	Unemployed	52105005
859	Discouraged work-seeker	52105005
3694	Other not economically active	52105005
0	Age less than 15 years	52105005
4682	Not applicable	52105005
738	Employed	52105006
681	Unemployed	52105006
795	Discouraged work-seeker	52105006
2332	Other not economically active	52105006
0	Age less than 15 years	52105006
3122	Not applicable	52105006
2838	Employed	52106001
395	Unemployed	52106001
157	Discouraged work-seeker	52106001
1580	Other not economically active	52106001
0	Age less than 15 years	52106001
2489	Not applicable	52106001
3274	Employed	52106002
313	Unemployed	52106002
110	Discouraged work-seeker	52106002
2189	Other not economically active	52106002
0	Age less than 15 years	52106002
2953	Not applicable	52106002
3767	Employed	52106003
652	Unemployed	52106003
183	Discouraged work-seeker	52106003
1665	Other not economically active	52106003
0	Age less than 15 years	52106003
2265	Not applicable	52106003
1440	Employed	52106004
1356	Unemployed	52106004
255	Discouraged work-seeker	52106004
2059	Other not economically active	52106004
0	Age less than 15 years	52106004
3423	Not applicable	52106004
1049	Employed	52106005
832	Unemployed	52106005
503	Discouraged work-seeker	52106005
2846	Other not economically active	52106005
0	Age less than 15 years	52106005
4119	Not applicable	52106005
2952	Employed	52106006
453	Unemployed	52106006
172	Discouraged work-seeker	52106006
2183	Other not economically active	52106006
0	Age less than 15 years	52106006
3355	Not applicable	52106006
1513	Employed	52106007
953	Unemployed	52106007
397	Discouraged work-seeker	52106007
2318	Other not economically active	52106007
0	Age less than 15 years	52106007
3369	Not applicable	52106007
928	Employed	52106008
373	Unemployed	52106008
481	Discouraged work-seeker	52106008
2783	Other not economically active	52106008
0	Age less than 15 years	52106008
3418	Not applicable	52106008
2276	Employed	52106009
1934	Unemployed	52106009
493	Discouraged work-seeker	52106009
2653	Other not economically active	52106009
0	Age less than 15 years	52106009
4660	Not applicable	52106009
1756	Employed	52106010
1339	Unemployed	52106010
473	Discouraged work-seeker	52106010
2722	Other not economically active	52106010
0	Age less than 15 years	52106010
4347	Not applicable	52106010
1398	Employed	52106011
1196	Unemployed	52106011
607	Discouraged work-seeker	52106011
2171	Other not economically active	52106011
0	Age less than 15 years	52106011
3426	Not applicable	52106011
3651	Employed	52106012
599	Unemployed	52106012
153	Discouraged work-seeker	52106012
2427	Other not economically active	52106012
0	Age less than 15 years	52106012
3075	Not applicable	52106012
1528	Employed	52106013
403	Unemployed	52106013
217	Discouraged work-seeker	52106013
1653	Other not economically active	52106013
0	Age less than 15 years	52106013
1911	Not applicable	52106013
1161	Employed	52106014
1287	Unemployed	52106014
107	Discouraged work-seeker	52106014
2253	Other not economically active	52106014
0	Age less than 15 years	52106014
3218	Not applicable	52106014
1770	Employed	52106015
815	Unemployed	52106015
113	Discouraged work-seeker	52106015
1156	Other not economically active	52106015
0	Age less than 15 years	52106015
1951	Not applicable	52106015
2749	Employed	52106016
315	Unemployed	52106016
94	Discouraged work-seeker	52106016
1738	Other not economically active	52106016
0	Age less than 15 years	52106016
2623	Not applicable	52106016
2987	Employed	52106017
498	Unemployed	52106017
84	Discouraged work-seeker	52106017
2380	Other not economically active	52106017
0	Age less than 15 years	52106017
2407	Not applicable	52106017
2901	Employed	52106018
241	Unemployed	52106018
90	Discouraged work-seeker	52106018
2360	Other not economically active	52106018
0	Age less than 15 years	52106018
2411	Not applicable	52106018
2009	Employed	52106019
196	Unemployed	52106019
26	Discouraged work-seeker	52106019
1532	Other not economically active	52106019
0	Age less than 15 years	52106019
2042	Not applicable	52106019
4586	Employed	52106020
1972	Unemployed	52106020
723	Discouraged work-seeker	52106020
3155	Other not economically active	52106020
0	Age less than 15 years	52106020
4420	Not applicable	52106020
1543	Employed	52106021
957	Unemployed	52106021
271	Discouraged work-seeker	52106021
1956	Other not economically active	52106021
0	Age less than 15 years	52106021
2399	Not applicable	52106021
1599	Employed	52106022
1223	Unemployed	52106022
505	Discouraged work-seeker	52106022
2126	Other not economically active	52106022
0	Age less than 15 years	52106022
2982	Not applicable	52106022
1715	Employed	52106023
545	Unemployed	52106023
291	Discouraged work-seeker	52106023
1870	Other not economically active	52106023
0	Age less than 15 years	52106023
2101	Not applicable	52106023
2261	Employed	52106024
1077	Unemployed	52106024
443	Discouraged work-seeker	52106024
2520	Other not economically active	52106024
0	Age less than 15 years	52106024
3489	Not applicable	52106024
1929	Employed	52106025
925	Unemployed	52106025
417	Discouraged work-seeker	52106025
2713	Other not economically active	52106025
0	Age less than 15 years	52106025
3393	Not applicable	52106025
3319	Employed	52106026
1883	Unemployed	52106026
398	Discouraged work-seeker	52106026
2903	Other not economically active	52106026
0	Age less than 15 years	52106026
4318	Not applicable	52106026
2025	Employed	52106027
1135	Unemployed	52106027
396	Discouraged work-seeker	52106027
3686	Other not economically active	52106027
0	Age less than 15 years	52106027
3848	Not applicable	52106027
1641	Employed	52106028
602	Unemployed	52106028
410	Discouraged work-seeker	52106028
1970	Other not economically active	52106028
0	Age less than 15 years	52106028
2316	Not applicable	52106028
1629	Employed	52106029
537	Unemployed	52106029
372	Discouraged work-seeker	52106029
3641	Other not economically active	52106029
0	Age less than 15 years	52106029
4064	Not applicable	52106029
285	Employed	52101001
202	Unemployed	52101001
798	Discouraged work-seeker	52101001
2888	Other not economically active	52101001
0	Age less than 15 years	52101001
3012	Not applicable	52101001
905	Employed	52101002
1734	Unemployed	52101002
312	Discouraged work-seeker	52101002
1688	Other not economically active	52101002
0	Age less than 15 years	52101002
2683	Not applicable	52101002
656	Employed	52101003
662	Unemployed	52101003
398	Discouraged work-seeker	52101003
2058	Other not economically active	52101003
0	Age less than 15 years	52101003
2455	Not applicable	52101003
354	Employed	52101004
861	Unemployed	52101004
489	Discouraged work-seeker	52101004
2708	Other not economically active	52101004
0	Age less than 15 years	52101004
3632	Not applicable	52101004
246	Employed	52101005
529	Unemployed	52101005
885	Discouraged work-seeker	52101005
3966	Other not economically active	52101005
0	Age less than 15 years	52101005
4999	Not applicable	52101005
711	Employed	52101006
571	Unemployed	52101006
965	Discouraged work-seeker	52101006
3088	Other not economically active	52101006
0	Age less than 15 years	52101006
4036	Not applicable	52101006
480	Employed	52101007
493	Unemployed	52101007
412	Discouraged work-seeker	52101007
2082	Other not economically active	52101007
0	Age less than 15 years	52101007
2687	Not applicable	52101007
282	Employed	52101008
323	Unemployed	52101008
319	Discouraged work-seeker	52101008
2688	Other not economically active	52101008
0	Age less than 15 years	52101008
3241	Not applicable	52101008
1261	Employed	52101009
574	Unemployed	52101009
175	Discouraged work-seeker	52101009
3064	Other not economically active	52101009
0	Age less than 15 years	52101009
3566	Not applicable	52101009
714	Employed	52101010
603	Unemployed	52101010
411	Discouraged work-seeker	52101010
2218	Other not economically active	52101010
0	Age less than 15 years	52101010
3035	Not applicable	52101010
1009	Employed	52102001
623	Unemployed	52102001
617	Discouraged work-seeker	52102001
2512	Other not economically active	52102001
0	Age less than 15 years	52102001
2693	Not applicable	52102001
993	Employed	52102002
1061	Unemployed	52102002
1182	Discouraged work-seeker	52102002
2850	Other not economically active	52102002
0	Age less than 15 years	52102002
3819	Not applicable	52102002
2818	Employed	52102003
1188	Unemployed	52102003
159	Discouraged work-seeker	52102003
2503	Other not economically active	52102003
0	Age less than 15 years	52102003
2629	Not applicable	52102003
1859	Employed	52102004
362	Unemployed	52102004
299	Discouraged work-seeker	52102004
1968	Other not economically active	52102004
0	Age less than 15 years	52102004
2375	Not applicable	52102004
1615	Employed	52102005
361	Unemployed	52102005
286	Discouraged work-seeker	52102005
1868	Other not economically active	52102005
0	Age less than 15 years	52102005
2426	Not applicable	52102005
1565	Employed	52102006
676	Unemployed	52102006
83	Discouraged work-seeker	52102006
2296	Other not economically active	52102006
0	Age less than 15 years	52102006
1459	Not applicable	52102006
1957	Employed	52102007
1232	Unemployed	52102007
364	Discouraged work-seeker	52102007
2147	Other not economically active	52102007
0	Age less than 15 years	52102007
3064	Not applicable	52102007
1582	Employed	52102008
1092	Unemployed	52102008
433	Discouraged work-seeker	52102008
2601	Other not economically active	52102008
0	Age less than 15 years	52102008
3502	Not applicable	52102008
846	Employed	52102009
1387	Unemployed	52102009
327	Discouraged work-seeker	52102009
1645	Other not economically active	52102009
0	Age less than 15 years	52102009
2525	Not applicable	52102009
2452	Employed	52102010
355	Unemployed	52102010
118	Discouraged work-seeker	52102010
2364	Other not economically active	52102010
0	Age less than 15 years	52102010
2724	Not applicable	52102010
5166	Employed	52201001
642	Unemployed	52201001
336	Discouraged work-seeker	52201001
2686	Other not economically active	52201001
0	Age less than 15 years	52201001
3677	Not applicable	52201001
2077	Employed	52201002
278	Unemployed	52201002
155	Discouraged work-seeker	52201002
1790	Other not economically active	52201002
0	Age less than 15 years	52201002
1635	Not applicable	52201002
1062	Employed	52201003
502	Unemployed	52201003
393	Discouraged work-seeker	52201003
3628	Other not economically active	52201003
0	Age less than 15 years	52201003
4600	Not applicable	52201003
1884	Employed	52201004
407	Unemployed	52201004
249	Discouraged work-seeker	52201004
3074	Other not economically active	52201004
0	Age less than 15 years	52201004
3611	Not applicable	52201004
731	Employed	52201005
650	Unemployed	52201005
224	Discouraged work-seeker	52201005
4653	Other not economically active	52201005
0	Age less than 15 years	52201005
4898	Not applicable	52201005
462	Employed	52201006
616	Unemployed	52201006
824	Discouraged work-seeker	52201006
2536	Other not economically active	52201006
0	Age less than 15 years	52201006
3121	Not applicable	52201006
2166	Employed	52201007
246	Unemployed	52201007
165	Discouraged work-seeker	52201007
1434	Other not economically active	52201007
0	Age less than 15 years	52201007
1567	Not applicable	52201007
426	Employed	52201008
781	Unemployed	52201008
289	Discouraged work-seeker	52201008
2423	Other not economically active	52201008
0	Age less than 15 years	52201008
2938	Not applicable	52201008
3645	Employed	52201009
826	Unemployed	52201009
684	Discouraged work-seeker	52201009
1668	Other not economically active	52201009
0	Age less than 15 years	52201009
3187	Not applicable	52201009
1316	Employed	52201010
371	Unemployed	52201010
241	Discouraged work-seeker	52201010
2238	Other not economically active	52201010
0	Age less than 15 years	52201010
2469	Not applicable	52201010
465	Employed	52201011
599	Unemployed	52201011
308	Discouraged work-seeker	52201011
2786	Other not economically active	52201011
0	Age less than 15 years	52201011
3236	Not applicable	52201011
1603	Employed	52201012
834	Unemployed	52201012
283	Discouraged work-seeker	52201012
2104	Other not economically active	52201012
0	Age less than 15 years	52201012
3203	Not applicable	52201012
306	Employed	52201013
325	Unemployed	52201013
254	Discouraged work-seeker	52201013
2157	Other not economically active	52201013
0	Age less than 15 years	52201013
2262	Not applicable	52201013
2475	Employed	52202001
1428	Unemployed	52202001
205	Discouraged work-seeker	52202001
1553	Other not economically active	52202001
0	Age less than 15 years	52202001
1999	Not applicable	52202001
590	Employed	52202002
52	Unemployed	52202002
21	Discouraged work-seeker	52202002
165	Other not economically active	52202002
0	Age less than 15 years	52202002
439	Not applicable	52202002
3320	Employed	52202003
189	Unemployed	52202003
70	Discouraged work-seeker	52202003
1379	Other not economically active	52202003
0	Age less than 15 years	52202003
1454	Not applicable	52202003
4461	Employed	52202004
732	Unemployed	52202004
139	Discouraged work-seeker	52202004
1292	Other not economically active	52202004
0	Age less than 15 years	52202004
2679	Not applicable	52202004
2330	Employed	52202005
193	Unemployed	52202005
90	Discouraged work-seeker	52202005
975	Other not economically active	52202005
0	Age less than 15 years	52202005
3464	Not applicable	52202005
2631	Employed	52202006
238	Unemployed	52202006
49	Discouraged work-seeker	52202006
2014	Other not economically active	52202006
0	Age less than 15 years	52202006
2413	Not applicable	52202006
3310	Employed	52202007
259	Unemployed	52202007
45	Discouraged work-seeker	52202007
1597	Other not economically active	52202007
0	Age less than 15 years	52202007
2453	Not applicable	52202007
2857	Employed	52202008
2116	Unemployed	52202008
926	Discouraged work-seeker	52202008
2859	Other not economically active	52202008
0	Age less than 15 years	52202008
4750	Not applicable	52202008
2865	Employed	52202009
1210	Unemployed	52202009
459	Discouraged work-seeker	52202009
1962	Other not economically active	52202009
0	Age less than 15 years	52202009
3075	Not applicable	52202009
1130	Employed	52202010
821	Unemployed	52202010
262	Discouraged work-seeker	52202010
1386	Other not economically active	52202010
0	Age less than 15 years	52202010
1708	Not applicable	52202010
1573	Employed	52202011
1313	Unemployed	52202011
413	Discouraged work-seeker	52202011
1562	Other not economically active	52202011
0	Age less than 15 years	52202011
2460	Not applicable	52202011
3304	Employed	52202012
1160	Unemployed	52202012
251	Discouraged work-seeker	52202012
2238	Other not economically active	52202012
0	Age less than 15 years	52202012
3349	Not applicable	52202012
3062	Employed	52203001
1314	Unemployed	52203001
669	Discouraged work-seeker	52203001
2800	Other not economically active	52203001
0	Age less than 15 years	52203001
3569	Not applicable	52203001
3985	Employed	52203002
278	Unemployed	52203002
320	Discouraged work-seeker	52203002
1508	Other not economically active	52203002
0	Age less than 15 years	52203002
2372	Not applicable	52203002
1801	Employed	52203003
899	Unemployed	52203003
366	Discouraged work-seeker	52203003
1654	Other not economically active	52203003
0	Age less than 15 years	52203003
2196	Not applicable	52203003
1339	Employed	52203004
708	Unemployed	52203004
834	Discouraged work-seeker	52203004
3486	Other not economically active	52203004
0	Age less than 15 years	52203004
4942	Not applicable	52203004
801	Employed	52204001
535	Unemployed	52204001
685	Discouraged work-seeker	52204001
2712	Other not economically active	52204001
0	Age less than 15 years	52204001
3951	Not applicable	52204001
297	Employed	52204002
667	Unemployed	52204002
654	Discouraged work-seeker	52204002
3667	Other not economically active	52204002
0	Age less than 15 years	52204002
4260	Not applicable	52204002
471	Employed	52204003
356	Unemployed	52204003
643	Discouraged work-seeker	52204003
2995	Other not economically active	52204003
0	Age less than 15 years	52204003
3604	Not applicable	52204003
779	Employed	52204004
370	Unemployed	52204004
301	Discouraged work-seeker	52204004
2549	Other not economically active	52204004
0	Age less than 15 years	52204004
2807	Not applicable	52204004
3778	Employed	52205001
2754	Unemployed	52205001
840	Discouraged work-seeker	52205001
4851	Other not economically active	52205001
0	Age less than 15 years	52205001
6547	Not applicable	52205001
3605	Employed	52205002
2385	Unemployed	52205002
745	Discouraged work-seeker	52205002
5392	Other not economically active	52205002
0	Age less than 15 years	52205002
6306	Not applicable	52205002
2583	Employed	52205003
2327	Unemployed	52205003
641	Discouraged work-seeker	52205003
4535	Other not economically active	52205003
0	Age less than 15 years	52205003
5489	Not applicable	52205003
2099	Employed	52205004
2591	Unemployed	52205004
668	Discouraged work-seeker	52205004
3745	Other not economically active	52205004
0	Age less than 15 years	52205004
5118	Not applicable	52205004
2416	Employed	52205005
1967	Unemployed	52205005
1163	Discouraged work-seeker	52205005
4524	Other not economically active	52205005
0	Age less than 15 years	52205005
5771	Not applicable	52205005
2149	Employed	52205006
1719	Unemployed	52205006
876	Discouraged work-seeker	52205006
6107	Other not economically active	52205006
0	Age less than 15 years	52205006
6432	Not applicable	52205006
1926	Employed	52205007
2483	Unemployed	52205007
2017	Discouraged work-seeker	52205007
4834	Other not economically active	52205007
0	Age less than 15 years	52205007
6790	Not applicable	52205007
1534	Employed	52205008
1593	Unemployed	52205008
945	Discouraged work-seeker	52205008
5589	Other not economically active	52205008
0	Age less than 15 years	52205008
5629	Not applicable	52205008
2009	Employed	52205009
1932	Unemployed	52205009
849	Discouraged work-seeker	52205009
4516	Other not economically active	52205009
0	Age less than 15 years	52205009
5232	Not applicable	52205009
2115	Employed	52205010
2471	Unemployed	52205010
1283	Discouraged work-seeker	52205010
3474	Other not economically active	52205010
0	Age less than 15 years	52205010
4809	Not applicable	52205010
3223	Employed	52205011
3973	Unemployed	52205011
1429	Discouraged work-seeker	52205011
4642	Other not economically active	52205011
0	Age less than 15 years	52205011
6678	Not applicable	52205011
2543	Employed	52205012
1446	Unemployed	52205012
370	Discouraged work-seeker	52205012
3564	Other not economically active	52205012
0	Age less than 15 years	52205012
3852	Not applicable	52205012
5304	Employed	52205013
3173	Unemployed	52205013
1000	Discouraged work-seeker	52205013
5369	Other not economically active	52205013
0	Age less than 15 years	52205013
7106	Not applicable	52205013
2425	Employed	52205014
2188	Unemployed	52205014
912	Discouraged work-seeker	52205014
4579	Other not economically active	52205014
0	Age less than 15 years	52205014
5213	Not applicable	52205014
4300	Employed	52205015
2437	Unemployed	52205015
773	Discouraged work-seeker	52205015
5080	Other not economically active	52205015
0	Age less than 15 years	52205015
5952	Not applicable	52205015
3928	Employed	52205016
3639	Unemployed	52205016
1065	Discouraged work-seeker	52205016
5851	Other not economically active	52205016
0	Age less than 15 years	52205016
6748	Not applicable	52205016
5540	Employed	52205017
3091	Unemployed	52205017
704	Discouraged work-seeker	52205017
5184	Other not economically active	52205017
0	Age less than 15 years	52205017
7012	Not applicable	52205017
4663	Employed	52205018
2697	Unemployed	52205018
954	Discouraged work-seeker	52205018
5242	Other not economically active	52205018
0	Age less than 15 years	52205018
7153	Not applicable	52205018
3078	Employed	52205019
3117	Unemployed	52205019
471	Discouraged work-seeker	52205019
5104	Other not economically active	52205019
0	Age less than 15 years	52205019
4674	Not applicable	52205019
2369	Employed	52205020
2432	Unemployed	52205020
407	Discouraged work-seeker	52205020
3862	Other not economically active	52205020
0	Age less than 15 years	52205020
4598	Not applicable	52205020
2029	Employed	52205021
1620	Unemployed	52205021
546	Discouraged work-seeker	52205021
2545	Other not economically active	52205021
0	Age less than 15 years	52205021
3232	Not applicable	52205021
3413	Employed	52205022
1739	Unemployed	52205022
823	Discouraged work-seeker	52205022
4196	Other not economically active	52205022
0	Age less than 15 years	52205022
4495	Not applicable	52205022
3253	Employed	52205023
2995	Unemployed	52205023
442	Discouraged work-seeker	52205023
3307	Other not economically active	52205023
0	Age less than 15 years	52205023
4387	Not applicable	52205023
5894	Employed	52205024
1627	Unemployed	52205024
386	Discouraged work-seeker	52205024
3717	Other not economically active	52205024
0	Age less than 15 years	52205024
4558	Not applicable	52205024
6983	Employed	52205025
414	Unemployed	52205025
52	Discouraged work-seeker	52205025
3307	Other not economically active	52205025
0	Age less than 15 years	52205025
4704	Not applicable	52205025
7087	Employed	52205026
771	Unemployed	52205026
129	Discouraged work-seeker	52205026
5129	Other not economically active	52205026
0	Age less than 15 years	52205026
4670	Not applicable	52205026
5319	Employed	52205027
1016	Unemployed	52205027
116	Discouraged work-seeker	52205027
3687	Other not economically active	52205027
0	Age less than 15 years	52205027
2899	Not applicable	52205027
7268	Employed	52205028
1436	Unemployed	52205028
290	Discouraged work-seeker	52205028
5842	Other not economically active	52205028
0	Age less than 15 years	52205028
5745	Not applicable	52205028
5604	Employed	52205029
2741	Unemployed	52205029
661	Discouraged work-seeker	52205029
4639	Other not economically active	52205029
0	Age less than 15 years	52205029
5336	Not applicable	52205029
7276	Employed	52205030
1162	Unemployed	52205030
653	Discouraged work-seeker	52205030
5231	Other not economically active	52205030
0	Age less than 15 years	52205030
5766	Not applicable	52205030
3116	Employed	52205031
886	Unemployed	52205031
468	Discouraged work-seeker	52205031
4117	Other not economically active	52205031
0	Age less than 15 years	52205031
3508	Not applicable	52205031
4678	Employed	52205032
1516	Unemployed	52205032
674	Discouraged work-seeker	52205032
4404	Other not economically active	52205032
0	Age less than 15 years	52205032
4701	Not applicable	52205032
4025	Employed	52205033
945	Unemployed	52205033
144	Discouraged work-seeker	52205033
4473	Other not economically active	52205033
0	Age less than 15 years	52205033
3321	Not applicable	52205033
6532	Employed	52205034
3057	Unemployed	52205034
556	Discouraged work-seeker	52205034
4723	Other not economically active	52205034
0	Age less than 15 years	52205034
6538	Not applicable	52205034
5965	Employed	52205035
1619	Unemployed	52205035
517	Discouraged work-seeker	52205035
3778	Other not economically active	52205035
0	Age less than 15 years	52205035
4963	Not applicable	52205035
8239	Employed	52205036
548	Unemployed	52205036
175	Discouraged work-seeker	52205036
5294	Other not economically active	52205036
0	Age less than 15 years	52205036
5225	Not applicable	52205036
5644	Employed	52205037
1256	Unemployed	52205037
486	Discouraged work-seeker	52205037
3598	Other not economically active	52205037
0	Age less than 15 years	52205037
4441	Not applicable	52205037
1231	Employed	52206001
1354	Unemployed	52206001
559	Discouraged work-seeker	52206001
3735	Other not economically active	52206001
0	Age less than 15 years	52206001
4584	Not applicable	52206001
1172	Employed	52206002
1119	Unemployed	52206002
459	Discouraged work-seeker	52206002
3591	Other not economically active	52206002
0	Age less than 15 years	52206002
3869	Not applicable	52206002
2463	Employed	52206003
552	Unemployed	52206003
659	Discouraged work-seeker	52206003
1552	Other not economically active	52206003
0	Age less than 15 years	52206003
2366	Not applicable	52206003
4785	Employed	52206004
296	Unemployed	52206004
261	Discouraged work-seeker	52206004
1552	Other not economically active	52206004
0	Age less than 15 years	52206004
2302	Not applicable	52206004
530	Employed	52206005
772	Unemployed	52206005
571	Discouraged work-seeker	52206005
2995	Other not economically active	52206005
0	Age less than 15 years	52206005
3593	Not applicable	52206005
2864	Employed	52206006
536	Unemployed	52206006
223	Discouraged work-seeker	52206006
2358	Other not economically active	52206006
0	Age less than 15 years	52206006
2930	Not applicable	52206006
399	Employed	52206007
284	Unemployed	52206007
440	Discouraged work-seeker	52206007
2762	Other not economically active	52206007
0	Age less than 15 years	52206007
3424	Not applicable	52206007
2018	Employed	52207001
443	Unemployed	52207001
285	Discouraged work-seeker	52207001
1752	Other not economically active	52207001
0	Age less than 15 years	52207001
2338	Not applicable	52207001
2141	Employed	52207002
807	Unemployed	52207002
595	Discouraged work-seeker	52207002
2840	Other not economically active	52207002
0	Age less than 15 years	52207002
3903	Not applicable	52207002
3529	Employed	52207003
899	Unemployed	52207003
867	Discouraged work-seeker	52207003
4462	Other not economically active	52207003
0	Age less than 15 years	52207003
4856	Not applicable	52207003
2130	Employed	52207004
79	Unemployed	52207004
61	Discouraged work-seeker	52207004
483	Other not economically active	52207004
0	Age less than 15 years	52207004
1069	Not applicable	52207004
573	Employed	52207005
236	Unemployed	52207005
671	Discouraged work-seeker	52207005
3317	Other not economically active	52207005
0	Age less than 15 years	52207005
4070	Not applicable	52207005
1559	Employed	52207006
852	Unemployed	52207006
712	Discouraged work-seeker	52207006
2929	Other not economically active	52207006
0	Age less than 15 years	52207006
4533	Not applicable	52207006
1387	Employed	52207007
1438	Unemployed	52207007
823	Discouraged work-seeker	52207007
2721	Other not economically active	52207007
0	Age less than 15 years	52207007
4416	Not applicable	52207007
1491	Employed	52302001
977	Unemployed	52302001
553	Discouraged work-seeker	52302001
2401	Other not economically active	52302001
0	Age less than 15 years	52302001
3146	Not applicable	52302001
1756	Employed	52302002
659	Unemployed	52302002
122	Discouraged work-seeker	52302002
2275	Other not economically active	52302002
0	Age less than 15 years	52302002
2565	Not applicable	52302002
2260	Employed	52302003
1514	Unemployed	52302003
450	Discouraged work-seeker	52302003
2471	Other not economically active	52302003
0	Age less than 15 years	52302003
3864	Not applicable	52302003
903	Employed	52302004
672	Unemployed	52302004
128	Discouraged work-seeker	52302004
1731	Other not economically active	52302004
0	Age less than 15 years	52302004
2203	Not applicable	52302004
1316	Employed	52302005
1314	Unemployed	52302005
357	Discouraged work-seeker	52302005
2418	Other not economically active	52302005
0	Age less than 15 years	52302005
3468	Not applicable	52302005
2590	Employed	52302006
900	Unemployed	52302006
497	Discouraged work-seeker	52302006
2212	Other not economically active	52302006
0	Age less than 15 years	52302006
3348	Not applicable	52302006
772	Employed	52302007
1008	Unemployed	52302007
362	Discouraged work-seeker	52302007
2888	Other not economically active	52302007
0	Age less than 15 years	52302007
3674	Not applicable	52302007
1358	Employed	52302008
593	Unemployed	52302008
352	Discouraged work-seeker	52302008
1909	Other not economically active	52302008
0	Age less than 15 years	52302008
2475	Not applicable	52302008
2309	Employed	52302009
1415	Unemployed	52302009
227	Discouraged work-seeker	52302009
2723	Other not economically active	52302009
0	Age less than 15 years	52302009
3741	Not applicable	52302009
2108	Employed	52302010
853	Unemployed	52302010
262	Discouraged work-seeker	52302010
1370	Other not economically active	52302010
0	Age less than 15 years	52302010
2055	Not applicable	52302010
2752	Employed	52302011
203	Unemployed	52302011
77	Discouraged work-seeker	52302011
2497	Other not economically active	52302011
0	Age less than 15 years	52302011
2068	Not applicable	52302011
3093	Employed	52302012
204	Unemployed	52302012
27	Discouraged work-seeker	52302012
1330	Other not economically active	52302012
0	Age less than 15 years	52302012
1842	Not applicable	52302012
1534	Employed	52302013
970	Unemployed	52302013
1291	Discouraged work-seeker	52302013
3416	Other not economically active	52302013
0	Age less than 15 years	52302013
5374	Not applicable	52302013
1361	Employed	52302014
989	Unemployed	52302014
1001	Discouraged work-seeker	52302014
3589	Other not economically active	52302014
0	Age less than 15 years	52302014
5158	Not applicable	52302014
998	Employed	52302015
606	Unemployed	52302015
498	Discouraged work-seeker	52302015
2709	Other not economically active	52302015
0	Age less than 15 years	52302015
3149	Not applicable	52302015
922	Employed	52302016
734	Unemployed	52302016
358	Discouraged work-seeker	52302016
2320	Other not economically active	52302016
0	Age less than 15 years	52302016
2966	Not applicable	52302016
669	Employed	52302017
596	Unemployed	52302017
275	Discouraged work-seeker	52302017
3039	Other not economically active	52302017
0	Age less than 15 years	52302017
3353	Not applicable	52302017
1351	Employed	52302018
765	Unemployed	52302018
326	Discouraged work-seeker	52302018
2513	Other not economically active	52302018
0	Age less than 15 years	52302018
3273	Not applicable	52302018
776	Employed	52302019
956	Unemployed	52302019
260	Discouraged work-seeker	52302019
2497	Other not economically active	52302019
0	Age less than 15 years	52302019
3219	Not applicable	52302019
3099	Employed	52302020
1518	Unemployed	52302020
225	Discouraged work-seeker	52302020
2350	Other not economically active	52302020
0	Age less than 15 years	52302020
3886	Not applicable	52302020
2213	Employed	52302021
1566	Unemployed	52302021
282	Discouraged work-seeker	52302021
1623	Other not economically active	52302021
0	Age less than 15 years	52302021
2854	Not applicable	52302021
4546	Employed	52302022
858	Unemployed	52302022
94	Discouraged work-seeker	52302022
1718	Other not economically active	52302022
0	Age less than 15 years	52302022
3169	Not applicable	52302022
479	Employed	52302023
500	Unemployed	52302023
551	Discouraged work-seeker	52302023
2627	Other not economically active	52302023
0	Age less than 15 years	52302023
3497	Not applicable	52302023
1126	Employed	52302024
376	Unemployed	52302024
520	Discouraged work-seeker	52302024
2710	Other not economically active	52302024
0	Age less than 15 years	52302024
3664	Not applicable	52302024
2200	Employed	52302025
1142	Unemployed	52302025
356	Discouraged work-seeker	52302025
2388	Other not economically active	52302025
0	Age less than 15 years	52302025
3515	Not applicable	52302025
976	Employed	52302026
711	Unemployed	52302026
276	Discouraged work-seeker	52302026
2160	Other not economically active	52302026
0	Age less than 15 years	52302026
2266	Not applicable	52302026
2690	Employed	52302027
2000	Unemployed	52302027
683	Discouraged work-seeker	52302027
3246	Other not economically active	52302027
0	Age less than 15 years	52302027
5854	Not applicable	52302027
467	Employed	52303001
344	Unemployed	52303001
939	Discouraged work-seeker	52303001
3606	Other not economically active	52303001
0	Age less than 15 years	52303001
4902	Not applicable	52303001
623	Employed	52303002
687	Unemployed	52303002
491	Discouraged work-seeker	52303002
4266	Other not economically active	52303002
0	Age less than 15 years	52303002
5401	Not applicable	52303002
442	Employed	52303003
559	Unemployed	52303003
293	Discouraged work-seeker	52303003
3858	Other not economically active	52303003
0	Age less than 15 years	52303003
4756	Not applicable	52303003
469	Employed	52303004
506	Unemployed	52303004
521	Discouraged work-seeker	52303004
4300	Other not economically active	52303004
0	Age less than 15 years	52303004
5324	Not applicable	52303004
620	Employed	52303005
1052	Unemployed	52303005
411	Discouraged work-seeker	52303005
2942	Other not economically active	52303005
0	Age less than 15 years	52303005
3941	Not applicable	52303005
280	Employed	52303006
474	Unemployed	52303006
456	Discouraged work-seeker	52303006
3923	Other not economically active	52303006
0	Age less than 15 years	52303006
4554	Not applicable	52303006
223	Employed	52303007
347	Unemployed	52303007
977	Discouraged work-seeker	52303007
3449	Other not economically active	52303007
0	Age less than 15 years	52303007
5396	Not applicable	52303007
314	Employed	52303008
335	Unemployed	52303008
1331	Discouraged work-seeker	52303008
3649	Other not economically active	52303008
0	Age less than 15 years	52303008
5527	Not applicable	52303008
558	Employed	52303009
508	Unemployed	52303009
1423	Discouraged work-seeker	52303009
2917	Other not economically active	52303009
0	Age less than 15 years	52303009
5562	Not applicable	52303009
353	Employed	52303010
1005	Unemployed	52303010
846	Discouraged work-seeker	52303010
2446	Other not economically active	52303010
0	Age less than 15 years	52303010
4543	Not applicable	52303010
1744	Employed	52304001
1082	Unemployed	52304001
674	Discouraged work-seeker	52304001
2603	Other not economically active	52304001
0	Age less than 15 years	52304001
3403	Not applicable	52304001
819	Employed	52304002
578	Unemployed	52304002
859	Discouraged work-seeker	52304002
2868	Other not economically active	52304002
0	Age less than 15 years	52304002
3246	Not applicable	52304002
3022	Employed	52304003
888	Unemployed	52304003
438	Discouraged work-seeker	52304003
2306	Other not economically active	52304003
0	Age less than 15 years	52304003
3420	Not applicable	52304003
2617	Employed	52304004
424	Unemployed	52304004
129	Discouraged work-seeker	52304004
2676	Other not economically active	52304004
0	Age less than 15 years	52304004
2377	Not applicable	52304004
564	Employed	52304005
465	Unemployed	52304005
1844	Discouraged work-seeker	52304005
2348	Other not economically active	52304005
0	Age less than 15 years	52304005
4442	Not applicable	52304005
1260	Employed	52304006
1126	Unemployed	52304006
357	Discouraged work-seeker	52304006
1853	Other not economically active	52304006
0	Age less than 15 years	52304006
2943	Not applicable	52304006
471	Employed	52304007
407	Unemployed	52304007
1408	Discouraged work-seeker	52304007
2962	Other not economically active	52304007
0	Age less than 15 years	52304007
4301	Not applicable	52304007
1288	Employed	52304008
1266	Unemployed	52304008
841	Discouraged work-seeker	52304008
3176	Other not economically active	52304008
0	Age less than 15 years	52304008
4767	Not applicable	52304008
1556	Employed	52304009
1565	Unemployed	52304009
611	Discouraged work-seeker	52304009
2010	Other not economically active	52304009
0	Age less than 15 years	52304009
3149	Not applicable	52304009
2340	Employed	52305001
761	Unemployed	52305001
618	Discouraged work-seeker	52305001
2026	Other not economically active	52305001
0	Age less than 15 years	52305001
3550	Not applicable	52305001
699	Employed	52305002
772	Unemployed	52305002
843	Discouraged work-seeker	52305002
3487	Other not economically active	52305002
0	Age less than 15 years	52305002
5263	Not applicable	52305002
467	Employed	52305003
289	Unemployed	52305003
898	Discouraged work-seeker	52305003
3163	Other not economically active	52305003
0	Age less than 15 years	52305003
4297	Not applicable	52305003
542	Employed	52305004
1347	Unemployed	52305004
832	Discouraged work-seeker	52305004
2276	Other not economically active	52305004
0	Age less than 15 years	52305004
4266	Not applicable	52305004
247	Employed	52305005
696	Unemployed	52305005
857	Discouraged work-seeker	52305005
2782	Other not economically active	52305005
0	Age less than 15 years	52305005
3973	Not applicable	52305005
968	Employed	52305006
791	Unemployed	52305006
714	Discouraged work-seeker	52305006
2661	Other not economically active	52305006
0	Age less than 15 years	52305006
4088	Not applicable	52305006
595	Employed	52305007
1146	Unemployed	52305007
555	Discouraged work-seeker	52305007
2473	Other not economically active	52305007
0	Age less than 15 years	52305007
3952	Not applicable	52305007
534	Employed	52305008
747	Unemployed	52305008
509	Discouraged work-seeker	52305008
2980	Other not economically active	52305008
0	Age less than 15 years	52305008
4148	Not applicable	52305008
607	Employed	52305009
803	Unemployed	52305009
571	Discouraged work-seeker	52305009
2725	Other not economically active	52305009
0	Age less than 15 years	52305009
4004	Not applicable	52305009
1220	Employed	52305010
641	Unemployed	52305010
790	Discouraged work-seeker	52305010
2873	Other not economically active	52305010
0	Age less than 15 years	52305010
3803	Not applicable	52305010
1279	Employed	52305011
1083	Unemployed	52305011
538	Discouraged work-seeker	52305011
3255	Other not economically active	52305011
0	Age less than 15 years	52305011
4729	Not applicable	52305011
1940	Employed	52305012
461	Unemployed	52305012
854	Discouraged work-seeker	52305012
2848	Other not economically active	52305012
0	Age less than 15 years	52305012
4011	Not applicable	52305012
1109	Employed	52305013
616	Unemployed	52305013
505	Discouraged work-seeker	52305013
2914	Other not economically active	52305013
0	Age less than 15 years	52305013
4171	Not applicable	52305013
1170	Employed	52305014
349	Unemployed	52305014
625	Discouraged work-seeker	52305014
3389	Other not economically active	52305014
0	Age less than 15 years	52305014
4031	Not applicable	52305014
1182	Employed	52306001
674	Unemployed	52306001
254	Discouraged work-seeker	52306001
2928	Other not economically active	52306001
0	Age less than 15 years	52306001
3404	Not applicable	52306001
397	Employed	52306002
728	Unemployed	52306002
488	Discouraged work-seeker	52306002
2797	Other not economically active	52306002
0	Age less than 15 years	52306002
3227	Not applicable	52306002
732	Employed	52306003
1034	Unemployed	52306003
260	Discouraged work-seeker	52306003
2161	Other not economically active	52306003
0	Age less than 15 years	52306003
3210	Not applicable	52306003
909	Employed	52306004
1473	Unemployed	52306004
267	Discouraged work-seeker	52306004
2695	Other not economically active	52306004
0	Age less than 15 years	52306004
3888	Not applicable	52306004
613	Employed	52306005
435	Unemployed	52306005
405	Discouraged work-seeker	52306005
2524	Other not economically active	52306005
0	Age less than 15 years	52306005
3082	Not applicable	52306005
766	Employed	52306006
844	Unemployed	52306006
510	Discouraged work-seeker	52306006
2826	Other not economically active	52306006
0	Age less than 15 years	52306006
3636	Not applicable	52306006
728	Employed	52306007
1012	Unemployed	52306007
472	Discouraged work-seeker	52306007
2243	Other not economically active	52306007
0	Age less than 15 years	52306007
2785	Not applicable	52306007
415	Employed	52306008
581	Unemployed	52306008
541	Discouraged work-seeker	52306008
3636	Other not economically active	52306008
0	Age less than 15 years	52306008
4251	Not applicable	52306008
821	Employed	52306009
643	Unemployed	52306009
422	Discouraged work-seeker	52306009
4066	Other not economically active	52306009
0	Age less than 15 years	52306009
4383	Not applicable	52306009
786	Employed	52306010
748	Unemployed	52306010
778	Discouraged work-seeker	52306010
4373	Other not economically active	52306010
0	Age less than 15 years	52306010
5222	Not applicable	52306010
971	Employed	52306011
653	Unemployed	52306011
709	Discouraged work-seeker	52306011
2828	Other not economically active	52306011
0	Age less than 15 years	52306011
3625	Not applicable	52306011
895	Employed	52306012
417	Unemployed	52306012
651	Discouraged work-seeker	52306012
2194	Other not economically active	52306012
0	Age less than 15 years	52306012
2853	Not applicable	52306012
1459	Employed	52306013
840	Unemployed	52306013
696	Discouraged work-seeker	52306013
3003	Other not economically active	52306013
0	Age less than 15 years	52306013
4025	Not applicable	52306013
637	Employed	52701001
542	Unemployed	52701001
71	Discouraged work-seeker	52701001
1516	Other not economically active	52701001
0	Age less than 15 years	52701001
1943	Not applicable	52701001
1039	Employed	52701002
704	Unemployed	52701002
686	Discouraged work-seeker	52701002
2051	Other not economically active	52701002
0	Age less than 15 years	52701002
3264	Not applicable	52701002
1318	Employed	52701003
838	Unemployed	52701003
463	Discouraged work-seeker	52701003
3731	Other not economically active	52701003
0	Age less than 15 years	52701003
5049	Not applicable	52701003
1002	Employed	52701004
1147	Unemployed	52701004
671	Discouraged work-seeker	52701004
4147	Other not economically active	52701004
0	Age less than 15 years	52701004
5122	Not applicable	52701004
1089	Employed	52701005
677	Unemployed	52701005
524	Discouraged work-seeker	52701005
2735	Other not economically active	52701005
0	Age less than 15 years	52701005
3863	Not applicable	52701005
589	Employed	52701006
789	Unemployed	52701006
2093	Discouraged work-seeker	52701006
3524	Other not economically active	52701006
0	Age less than 15 years	52701006
6070	Not applicable	52701006
833	Employed	52701007
639	Unemployed	52701007
464	Discouraged work-seeker	52701007
3312	Other not economically active	52701007
0	Age less than 15 years	52701007
4548	Not applicable	52701007
468	Employed	52701008
565	Unemployed	52701008
853	Discouraged work-seeker	52701008
2739	Other not economically active	52701008
0	Age less than 15 years	52701008
3868	Not applicable	52701008
323	Employed	52701009
276	Unemployed	52701009
1155	Discouraged work-seeker	52701009
4402	Other not economically active	52701009
0	Age less than 15 years	52701009
5685	Not applicable	52701009
400	Employed	52701010
481	Unemployed	52701010
443	Discouraged work-seeker	52701010
2736	Other not economically active	52701010
0	Age less than 15 years	52701010
3129	Not applicable	52701010
781	Employed	52701011
784	Unemployed	52701011
445	Discouraged work-seeker	52701011
3467	Other not economically active	52701011
0	Age less than 15 years	52701011
4112	Not applicable	52701011
327	Employed	52701012
506	Unemployed	52701012
373	Discouraged work-seeker	52701012
2739	Other not economically active	52701012
0	Age less than 15 years	52701012
3388	Not applicable	52701012
294	Employed	52701013
509	Unemployed	52701013
1233	Discouraged work-seeker	52701013
2457	Other not economically active	52701013
0	Age less than 15 years	52701013
4425	Not applicable	52701013
441	Employed	52701014
242	Unemployed	52701014
1136	Discouraged work-seeker	52701014
2294	Other not economically active	52701014
0	Age less than 15 years	52701014
3998	Not applicable	52701014
840	Employed	52701015
711	Unemployed	52701015
495	Discouraged work-seeker	52701015
3564	Other not economically active	52701015
0	Age less than 15 years	52701015
4790	Not applicable	52701015
567	Employed	52701016
281	Unemployed	52701016
729	Discouraged work-seeker	52701016
2513	Other not economically active	52701016
0	Age less than 15 years	52701016
3586	Not applicable	52701016
1070	Employed	52701017
999	Unemployed	52701017
484	Discouraged work-seeker	52701017
2920	Other not economically active	52701017
0	Age less than 15 years	52701017
4024	Not applicable	52701017
639	Employed	52702001
589	Unemployed	52702001
258	Discouraged work-seeker	52702001
2329	Other not economically active	52702001
0	Age less than 15 years	52702001
3358	Not applicable	52702001
964	Employed	52702002
991	Unemployed	52702002
598	Discouraged work-seeker	52702002
2216	Other not economically active	52702002
0	Age less than 15 years	52702002
3376	Not applicable	52702002
400	Employed	52702003
488	Unemployed	52702003
539	Discouraged work-seeker	52702003
3527	Other not economically active	52702003
0	Age less than 15 years	52702003
4469	Not applicable	52702003
455	Employed	52702004
578	Unemployed	52702004
631	Discouraged work-seeker	52702004
2649	Other not economically active	52702004
0	Age less than 15 years	52702004
3980	Not applicable	52702004
1007	Employed	52702005
1205	Unemployed	52702005
1230	Discouraged work-seeker	52702005
4144	Other not economically active	52702005
0	Age less than 15 years	52702005
6091	Not applicable	52702005
418	Employed	52702006
427	Unemployed	52702006
381	Discouraged work-seeker	52702006
2494	Other not economically active	52702006
0	Age less than 15 years	52702006
3218	Not applicable	52702006
2272	Employed	52702007
1426	Unemployed	52702007
322	Discouraged work-seeker	52702007
2090	Other not economically active	52702007
0	Age less than 15 years	52702007
3463	Not applicable	52702007
592	Employed	52702008
798	Unemployed	52702008
396	Discouraged work-seeker	52702008
3023	Other not economically active	52702008
0	Age less than 15 years	52702008
3695	Not applicable	52702008
365	Employed	52702009
506	Unemployed	52702009
827	Discouraged work-seeker	52702009
3312	Other not economically active	52702009
0	Age less than 15 years	52702009
4495	Not applicable	52702009
420	Employed	52702010
473	Unemployed	52702010
1285	Discouraged work-seeker	52702010
3462	Other not economically active	52702010
0	Age less than 15 years	52702010
5446	Not applicable	52702010
820	Employed	52702011
345	Unemployed	52702011
500	Discouraged work-seeker	52702011
2809	Other not economically active	52702011
0	Age less than 15 years	52702011
3619	Not applicable	52702011
793	Employed	52702012
531	Unemployed	52702012
1143	Discouraged work-seeker	52702012
3041	Other not economically active	52702012
0	Age less than 15 years	52702012
4892	Not applicable	52702012
669	Employed	52702013
759	Unemployed	52702013
980	Discouraged work-seeker	52702013
3378	Other not economically active	52702013
0	Age less than 15 years	52702013
4990	Not applicable	52702013
1591	Employed	52702014
640	Unemployed	52702014
656	Discouraged work-seeker	52702014
3705	Other not economically active	52702014
0	Age less than 15 years	52702014
5041	Not applicable	52702014
406	Employed	52702015
495	Unemployed	52702015
449	Discouraged work-seeker	52702015
3011	Other not economically active	52702015
0	Age less than 15 years	52702015
4104	Not applicable	52702015
503	Employed	52702016
283	Unemployed	52702016
331	Discouraged work-seeker	52702016
4053	Other not economically active	52702016
0	Age less than 15 years	52702016
4324	Not applicable	52702016
551	Employed	52702017
250	Unemployed	52702017
831	Discouraged work-seeker	52702017
3613	Other not economically active	52702017
0	Age less than 15 years	52702017
5182	Not applicable	52702017
575	Employed	52702018
306	Unemployed	52702018
564	Discouraged work-seeker	52702018
2610	Other not economically active	52702018
0	Age less than 15 years	52702018
3884	Not applicable	52702018
342	Employed	52702019
415	Unemployed	52702019
633	Discouraged work-seeker	52702019
3273	Other not economically active	52702019
0	Age less than 15 years	52702019
4151	Not applicable	52702019
2169	Employed	52702020
1054	Unemployed	52702020
239	Discouraged work-seeker	52702020
2182	Other not economically active	52702020
0	Age less than 15 years	52702020
2503	Not applicable	52702020
584	Employed	52703001
622	Unemployed	52703001
759	Discouraged work-seeker	52703001
3564	Other not economically active	52703001
0	Age less than 15 years	52703001
4546	Not applicable	52703001
749	Employed	52703002
453	Unemployed	52703002
375	Discouraged work-seeker	52703002
2363	Other not economically active	52703002
0	Age less than 15 years	52703002
3399	Not applicable	52703002
3456	Employed	52703003
335	Unemployed	52703003
175	Discouraged work-seeker	52703003
1346	Other not economically active	52703003
0	Age less than 15 years	52703003
1502	Not applicable	52703003
559	Employed	52703004
521	Unemployed	52703004
884	Discouraged work-seeker	52703004
3754	Other not economically active	52703004
0	Age less than 15 years	52703004
5314	Not applicable	52703004
406	Employed	52704001
600	Unemployed	52704001
624	Discouraged work-seeker	52704001
1899	Other not economically active	52704001
0	Age less than 15 years	52704001
3118	Not applicable	52704001
1223	Employed	52704002
414	Unemployed	52704002
396	Discouraged work-seeker	52704002
1115	Other not economically active	52704002
0	Age less than 15 years	52704002
1938	Not applicable	52704002
1002	Employed	52704003
638	Unemployed	52704003
982	Discouraged work-seeker	52704003
4037	Other not economically active	52704003
0	Age less than 15 years	52704003
5630	Not applicable	52704003
516	Employed	52704004
614	Unemployed	52704004
805	Discouraged work-seeker	52704004
3919	Other not economically active	52704004
0	Age less than 15 years	52704004
5415	Not applicable	52704004
397	Employed	52704005
721	Unemployed	52704005
284	Discouraged work-seeker	52704005
2556	Other not economically active	52704005
0	Age less than 15 years	52704005
3702	Not applicable	52704005
472	Employed	52704006
1164	Unemployed	52704006
606	Discouraged work-seeker	52704006
2153	Other not economically active	52704006
0	Age less than 15 years	52704006
3954	Not applicable	52704006
415	Employed	52704007
503	Unemployed	52704007
547	Discouraged work-seeker	52704007
2924	Other not economically active	52704007
0	Age less than 15 years	52704007
3834	Not applicable	52704007
964	Employed	52704008
1329	Unemployed	52704008
478	Discouraged work-seeker	52704008
4006	Other not economically active	52704008
0	Age less than 15 years	52704008
5623	Not applicable	52704008
2027	Employed	52705001
421	Unemployed	52705001
93	Discouraged work-seeker	52705001
1375	Other not economically active	52705001
0	Age less than 15 years	52705001
1924	Not applicable	52705001
2722	Employed	52705002
1101	Unemployed	52705002
370	Discouraged work-seeker	52705002
5182	Other not economically active	52705002
0	Age less than 15 years	52705002
5927	Not applicable	52705002
2488	Employed	52705003
1363	Unemployed	52705003
976	Discouraged work-seeker	52705003
4365	Other not economically active	52705003
0	Age less than 15 years	52705003
6279	Not applicable	52705003
1985	Employed	52705004
237	Unemployed	52705004
59	Discouraged work-seeker	52705004
1948	Other not economically active	52705004
0	Age less than 15 years	52705004
2276	Not applicable	52705004
2045	Employed	52705005
80	Unemployed	52705005
81	Discouraged work-seeker	52705005
572	Other not economically active	52705005
0	Age less than 15 years	52705005
1019	Not applicable	52705005
2396	Employed	52705006
1966	Unemployed	52705006
383	Discouraged work-seeker	52705006
4264	Other not economically active	52705006
0	Age less than 15 years	52705006
5995	Not applicable	52705006
407	Employed	52705007
320	Unemployed	52705007
325	Discouraged work-seeker	52705007
3305	Other not economically active	52705007
0	Age less than 15 years	52705007
3860	Not applicable	52705007
710	Employed	52705008
1304	Unemployed	52705008
707	Discouraged work-seeker	52705008
2650	Other not economically active	52705008
0	Age less than 15 years	52705008
4437	Not applicable	52705008
336	Employed	52705009
430	Unemployed	52705009
390	Discouraged work-seeker	52705009
2570	Other not economically active	52705009
0	Age less than 15 years	52705009
3306	Not applicable	52705009
545	Employed	52705010
477	Unemployed	52705010
532	Discouraged work-seeker	52705010
3517	Other not economically active	52705010
0	Age less than 15 years	52705010
4509	Not applicable	52705010
391	Employed	52705011
249	Unemployed	52705011
171	Discouraged work-seeker	52705011
3531	Other not economically active	52705011
0	Age less than 15 years	52705011
3763	Not applicable	52705011
525	Employed	52705012
557	Unemployed	52705012
478	Discouraged work-seeker	52705012
3159	Other not economically active	52705012
0	Age less than 15 years	52705012
4355	Not applicable	52705012
311	Employed	52705013
439	Unemployed	52705013
111	Discouraged work-seeker	52705013
2029	Other not economically active	52705013
0	Age less than 15 years	52705013
2293	Not applicable	52705013
368	Employed	52705014
602	Unemployed	52705014
347	Discouraged work-seeker	52705014
2487	Other not economically active	52705014
0	Age less than 15 years	52705014
3289	Not applicable	52705014
463	Employed	52705015
725	Unemployed	52705015
194	Discouraged work-seeker	52705015
2545	Other not economically active	52705015
0	Age less than 15 years	52705015
3567	Not applicable	52705015
849	Employed	52705016
1153	Unemployed	52705016
409	Discouraged work-seeker	52705016
3915	Other not economically active	52705016
0	Age less than 15 years	52705016
5572	Not applicable	52705016
626	Employed	52705017
587	Unemployed	52705017
401	Discouraged work-seeker	52705017
2974	Other not economically active	52705017
0	Age less than 15 years	52705017
4050	Not applicable	52705017
776	Employed	52705018
624	Unemployed	52705018
895	Discouraged work-seeker	52705018
4232	Other not economically active	52705018
0	Age less than 15 years	52705018
5912	Not applicable	52705018
243	Employed	52705019
307	Unemployed	52705019
452	Discouraged work-seeker	52705019
3415	Other not economically active	52705019
0	Age less than 15 years	52705019
4528	Not applicable	52705019
4236	Employed	52802001
1196	Unemployed	52802001
137	Discouraged work-seeker	52802001
2704	Other not economically active	52802001
0	Age less than 15 years	52802001
3873	Not applicable	52802001
6030	Employed	52802002
628	Unemployed	52802002
74	Discouraged work-seeker	52802002
2733	Other not economically active	52802002
0	Age less than 15 years	52802002
2789	Not applicable	52802002
4251	Employed	52802003
324	Unemployed	52802003
122	Discouraged work-seeker	52802003
2084	Other not economically active	52802003
0	Age less than 15 years	52802003
2276	Not applicable	52802003
3848	Employed	52802004
925	Unemployed	52802004
933	Discouraged work-seeker	52802004
2597	Other not economically active	52802004
0	Age less than 15 years	52802004
4169	Not applicable	52802004
3547	Employed	52802005
2312	Unemployed	52802005
922	Discouraged work-seeker	52802005
3319	Other not economically active	52802005
0	Age less than 15 years	52802005
5464	Not applicable	52802005
2850	Employed	52802006
2603	Unemployed	52802006
263	Discouraged work-seeker	52802006
2363	Other not economically active	52802006
0	Age less than 15 years	52802006
4464	Not applicable	52802006
1446	Employed	52802007
953	Unemployed	52802007
387	Discouraged work-seeker	52802007
1255	Other not economically active	52802007
0	Age less than 15 years	52802007
1854	Not applicable	52802007
1278	Employed	52802008
758	Unemployed	52802008
105	Discouraged work-seeker	52802008
1430	Other not economically active	52802008
0	Age less than 15 years	52802008
1566	Not applicable	52802008
5048	Employed	52802009
999	Unemployed	52802009
541	Discouraged work-seeker	52802009
3048	Other not economically active	52802009
0	Age less than 15 years	52802009
3922	Not applicable	52802009
1230	Employed	52802010
1335	Unemployed	52802010
340	Discouraged work-seeker	52802010
4302	Other not economically active	52802010
0	Age less than 15 years	52802010
4103	Not applicable	52802010
646	Employed	52802011
1101	Unemployed	52802011
819	Discouraged work-seeker	52802011
2711	Other not economically active	52802011
0	Age less than 15 years	52802011
3855	Not applicable	52802011
1981	Employed	52802012
953	Unemployed	52802012
349	Discouraged work-seeker	52802012
2137	Other not economically active	52802012
0	Age less than 15 years	52802012
3155	Not applicable	52802012
2035	Employed	52802013
1882	Unemployed	52802013
942	Discouraged work-seeker	52802013
4005	Other not economically active	52802013
0	Age less than 15 years	52802013
6065	Not applicable	52802013
2912	Employed	52802014
1769	Unemployed	52802014
680	Discouraged work-seeker	52802014
2553	Other not economically active	52802014
0	Age less than 15 years	52802014
4401	Not applicable	52802014
2079	Employed	52802015
1798	Unemployed	52802015
653	Discouraged work-seeker	52802015
3077	Other not economically active	52802015
0	Age less than 15 years	52802015
4646	Not applicable	52802015
2011	Employed	52802016
804	Unemployed	52802016
491	Discouraged work-seeker	52802016
1841	Other not economically active	52802016
0	Age less than 15 years	52802016
2653	Not applicable	52802016
3301	Employed	52802017
1353	Unemployed	52802017
305	Discouraged work-seeker	52802017
2358	Other not economically active	52802017
0	Age less than 15 years	52802017
3146	Not applicable	52802017
2565	Employed	52802018
1769	Unemployed	52802018
1500	Discouraged work-seeker	52802018
3210	Other not economically active	52802018
0	Age less than 15 years	52802018
5843	Not applicable	52802018
3098	Employed	52802019
2267	Unemployed	52802019
463	Discouraged work-seeker	52802019
2210	Other not economically active	52802019
0	Age less than 15 years	52802019
3982	Not applicable	52802019
2438	Employed	52802020
1183	Unemployed	52802020
202	Discouraged work-seeker	52802020
2031	Other not economically active	52802020
0	Age less than 15 years	52802020
2698	Not applicable	52802020
1766	Employed	52802021
660	Unemployed	52802021
362	Discouraged work-seeker	52802021
2035	Other not economically active	52802021
0	Age less than 15 years	52802021
2128	Not applicable	52802021
1965	Employed	52802022
1712	Unemployed	52802022
188	Discouraged work-seeker	52802022
1984	Other not economically active	52802022
0	Age less than 15 years	52802022
3331	Not applicable	52802022
5317	Employed	52802023
383	Unemployed	52802023
113	Discouraged work-seeker	52802023
2270	Other not economically active	52802023
0	Age less than 15 years	52802023
2621	Not applicable	52802023
4518	Employed	52802024
1985	Unemployed	52802024
361	Discouraged work-seeker	52802024
6433	Other not economically active	52802024
0	Age less than 15 years	52802024
5034	Not applicable	52802024
2017	Employed	52802025
1819	Unemployed	52802025
808	Discouraged work-seeker	52802025
4164	Other not economically active	52802025
0	Age less than 15 years	52802025
5062	Not applicable	52802025
4392	Employed	52802026
934	Unemployed	52802026
120	Discouraged work-seeker	52802026
3074	Other not economically active	52802026
0	Age less than 15 years	52802026
3003	Not applicable	52802026
2864	Employed	52802027
697	Unemployed	52802027
150	Discouraged work-seeker	52802027
2332	Other not economically active	52802027
0	Age less than 15 years	52802027
2829	Not applicable	52802027
2235	Employed	52802028
932	Unemployed	52802028
183	Discouraged work-seeker	52802028
1821	Other not economically active	52802028
0	Age less than 15 years	52802028
2268	Not applicable	52802028
2896	Employed	52802029
1842	Unemployed	52802029
271	Discouraged work-seeker	52802029
4604	Other not economically active	52802029
0	Age less than 15 years	52802029
5754	Not applicable	52802029
1077	Employed	52802030
655	Unemployed	52802030
162	Discouraged work-seeker	52802030
7630	Other not economically active	52802030
0	Age less than 15 years	52802030
1834	Not applicable	52802030
652	Employed	52806001
862	Unemployed	52806001
806	Discouraged work-seeker	52806001
3126	Other not economically active	52806001
0	Age less than 15 years	52806001
5184	Not applicable	52806001
315	Employed	52806002
278	Unemployed	52806002
351	Discouraged work-seeker	52806002
2602	Other not economically active	52806002
0	Age less than 15 years	52806002
3598	Not applicable	52806002
346	Employed	52806003
393	Unemployed	52806003
462	Discouraged work-seeker	52806003
2998	Other not economically active	52806003
0	Age less than 15 years	52806003
3533	Not applicable	52806003
342	Employed	52806004
557	Unemployed	52806004
366	Discouraged work-seeker	52806004
2152	Other not economically active	52806004
0	Age less than 15 years	52806004
2953	Not applicable	52806004
1435	Employed	52806005
493	Unemployed	52806005
503	Discouraged work-seeker	52806005
3158	Other not economically active	52806005
0	Age less than 15 years	52806005
3174	Not applicable	52806005
388	Employed	52806006
289	Unemployed	52806006
793	Discouraged work-seeker	52806006
3398	Other not economically active	52806006
0	Age less than 15 years	52806006
4211	Not applicable	52806006
344	Employed	52806007
174	Unemployed	52806007
978	Discouraged work-seeker	52806007
2945	Other not economically active	52806007
0	Age less than 15 years	52806007
4121	Not applicable	52806007
434	Employed	52806008
132	Unemployed	52806008
812	Discouraged work-seeker	52806008
2292	Other not economically active	52806008
0	Age less than 15 years	52806008
3183	Not applicable	52806008
311	Employed	52806009
136	Unemployed	52806009
324	Discouraged work-seeker	52806009
3088	Other not economically active	52806009
0	Age less than 15 years	52806009
3669	Not applicable	52806009
589	Employed	52806010
727	Unemployed	52806010
644	Discouraged work-seeker	52806010
2899	Other not economically active	52806010
0	Age less than 15 years	52806010
3813	Not applicable	52806010
375	Employed	52806011
238	Unemployed	52806011
839	Discouraged work-seeker	52806011
2032	Other not economically active	52806011
0	Age less than 15 years	52806011
2979	Not applicable	52806011
641	Employed	52806012
441	Unemployed	52806012
449	Discouraged work-seeker	52806012
3194	Other not economically active	52806012
0	Age less than 15 years	52806012
4153	Not applicable	52806012
374	Employed	52806013
317	Unemployed	52806013
590	Discouraged work-seeker	52806013
3599	Other not economically active	52806013
0	Age less than 15 years	52806013
4716	Not applicable	52806013
362	Employed	52806014
360	Unemployed	52806014
989	Discouraged work-seeker	52806014
2633	Other not economically active	52806014
0	Age less than 15 years	52806014
3802	Not applicable	52806014
569	Employed	52801001
583	Unemployed	52801001
337	Discouraged work-seeker	52801001
1501	Other not economically active	52801001
0	Age less than 15 years	52801001
2301	Not applicable	52801001
2338	Employed	52801002
341	Unemployed	52801002
168	Discouraged work-seeker	52801002
1078	Other not economically active	52801002
0	Age less than 15 years	52801002
1430	Not applicable	52801002
988	Employed	52801003
706	Unemployed	52801003
677	Discouraged work-seeker	52801003
2273	Other not economically active	52801003
0	Age less than 15 years	52801003
2984	Not applicable	52801003
1777	Employed	52801004
609	Unemployed	52801004
670	Discouraged work-seeker	52801004
3661	Other not economically active	52801004
0	Age less than 15 years	52801004
4060	Not applicable	52801004
1264	Employed	52801005
1036	Unemployed	52801005
468	Discouraged work-seeker	52801005
2104	Other not economically active	52801005
0	Age less than 15 years	52801005
3007	Not applicable	52801005
1840	Employed	52801006
1560	Unemployed	52801006
118	Discouraged work-seeker	52801006
1460	Other not economically active	52801006
0	Age less than 15 years	52801006
2673	Not applicable	52801006
747	Employed	52801007
523	Unemployed	52801007
599	Discouraged work-seeker	52801007
1607	Other not economically active	52801007
0	Age less than 15 years	52801007
2364	Not applicable	52801007
1362	Employed	52801008
964	Unemployed	52801008
1042	Discouraged work-seeker	52801008
2962	Other not economically active	52801008
0	Age less than 15 years	52801008
4336	Not applicable	52801008
785	Employed	52801009
1300	Unemployed	52801009
262	Discouraged work-seeker	52801009
3741	Other not economically active	52801009
0	Age less than 15 years	52801009
4283	Not applicable	52801009
503	Employed	52801010
740	Unemployed	52801010
253	Discouraged work-seeker	52801010
2583	Other not economically active	52801010
0	Age less than 15 years	52801010
3269	Not applicable	52801010
791	Employed	52801011
586	Unemployed	52801011
487	Discouraged work-seeker	52801011
2843	Other not economically active	52801011
0	Age less than 15 years	52801011
3640	Not applicable	52801011
515	Employed	52801012
703	Unemployed	52801012
320	Discouraged work-seeker	52801012
2990	Other not economically active	52801012
0	Age less than 15 years	52801012
3712	Not applicable	52801012
355	Employed	52801013
393	Unemployed	52801013
306	Discouraged work-seeker	52801013
2653	Other not economically active	52801013
0	Age less than 15 years	52801013
3557	Not applicable	52801013
1989	Employed	52801014
1403	Unemployed	52801014
711	Discouraged work-seeker	52801014
2545	Other not economically active	52801014
0	Age less than 15 years	52801014
4049	Not applicable	52801014
665	Employed	52801015
504	Unemployed	52801015
586	Discouraged work-seeker	52801015
3628	Other not economically active	52801015
0	Age less than 15 years	52801015
4145	Not applicable	52801015
295	Employed	52803001
359	Unemployed	52803001
575	Discouraged work-seeker	52803001
2307	Other not economically active	52803001
0	Age less than 15 years	52803001
3466	Not applicable	52803001
508	Employed	52803002
509	Unemployed	52803002
430	Discouraged work-seeker	52803002
3688	Other not economically active	52803002
0	Age less than 15 years	52803002
4385	Not applicable	52803002
622	Employed	52803003
659	Unemployed	52803003
566	Discouraged work-seeker	52803003
3631	Other not economically active	52803003
0	Age less than 15 years	52803003
4818	Not applicable	52803003
559	Employed	52803004
188	Unemployed	52803004
444	Discouraged work-seeker	52803004
3062	Other not economically active	52803004
0	Age less than 15 years	52803004
3810	Not applicable	52803004
1090	Employed	52803005
648	Unemployed	52803005
613	Discouraged work-seeker	52803005
3673	Other not economically active	52803005
0	Age less than 15 years	52803005
4683	Not applicable	52803005
619	Employed	52803006
1396	Unemployed	52803006
867	Discouraged work-seeker	52803006
2373	Other not economically active	52803006
0	Age less than 15 years	52803006
4199	Not applicable	52803006
2075	Employed	52803007
1209	Unemployed	52803007
744	Discouraged work-seeker	52803007
2156	Other not economically active	52803007
0	Age less than 15 years	52803007
3636	Not applicable	52803007
878	Employed	52803008
1461	Unemployed	52803008
979	Discouraged work-seeker	52803008
2283	Other not economically active	52803008
0	Age less than 15 years	52803008
3874	Not applicable	52803008
242	Employed	52804001
306	Unemployed	52804001
688	Discouraged work-seeker	52804001
2639	Other not economically active	52804001
0	Age less than 15 years	52804001
3576	Not applicable	52804001
235	Employed	52804002
345	Unemployed	52804002
404	Discouraged work-seeker	52804002
3074	Other not economically active	52804002
0	Age less than 15 years	52804002
3878	Not applicable	52804002
234	Employed	52804003
144	Unemployed	52804003
455	Discouraged work-seeker	52804003
3110	Other not economically active	52804003
0	Age less than 15 years	52804003
3291	Not applicable	52804003
469	Employed	52804004
315	Unemployed	52804004
536	Discouraged work-seeker	52804004
3557	Other not economically active	52804004
0	Age less than 15 years	52804004
4035	Not applicable	52804004
296	Employed	52804005
446	Unemployed	52804005
423	Discouraged work-seeker	52804005
3877	Other not economically active	52804005
0	Age less than 15 years	52804005
4743	Not applicable	52804005
259	Employed	52804006
319	Unemployed	52804006
569	Discouraged work-seeker	52804006
2469	Other not economically active	52804006
0	Age less than 15 years	52804006
3314	Not applicable	52804006
2174	Employed	52804007
301	Unemployed	52804007
221	Discouraged work-seeker	52804007
2276	Other not economically active	52804007
0	Age less than 15 years	52804007
2838	Not applicable	52804007
738	Employed	52804008
420	Unemployed	52804008
580	Discouraged work-seeker	52804008
3315	Other not economically active	52804008
0	Age less than 15 years	52804008
4153	Not applicable	52804008
834	Employed	52804009
943	Unemployed	52804009
224	Discouraged work-seeker	52804009
2547	Other not economically active	52804009
0	Age less than 15 years	52804009
3664	Not applicable	52804009
847	Employed	52804010
751	Unemployed	52804010
483	Discouraged work-seeker	52804010
3305	Other not economically active	52804010
0	Age less than 15 years	52804010
3960	Not applicable	52804010
3268	Employed	52804011
467	Unemployed	52804011
152	Discouraged work-seeker	52804011
1853	Other not economically active	52804011
0	Age less than 15 years	52804011
2604	Not applicable	52804011
1507	Employed	52804012
626	Unemployed	52804012
227	Discouraged work-seeker	52804012
1351	Other not economically active	52804012
0	Age less than 15 years	52804012
1926	Not applicable	52804012
1297	Employed	52804013
1527	Unemployed	52804013
230	Discouraged work-seeker	52804013
2645	Other not economically active	52804013
0	Age less than 15 years	52804013
3366	Not applicable	52804013
279	Employed	52804014
291	Unemployed	52804014
489	Discouraged work-seeker	52804014
3247	Other not economically active	52804014
0	Age less than 15 years	52804014
4406	Not applicable	52804014
676	Employed	52804015
535	Unemployed	52804015
776	Discouraged work-seeker	52804015
3378	Other not economically active	52804015
0	Age less than 15 years	52804015
4098	Not applicable	52804015
617	Employed	52804016
687	Unemployed	52804016
961	Discouraged work-seeker	52804016
4001	Other not economically active	52804016
0	Age less than 15 years	52804016
5585	Not applicable	52804016
391	Employed	52804017
503	Unemployed	52804017
344	Discouraged work-seeker	52804017
2615	Other not economically active	52804017
0	Age less than 15 years	52804017
3018	Not applicable	52804017
1267	Employed	52804018
233	Unemployed	52804018
196	Discouraged work-seeker	52804018
970	Other not economically active	52804018
0	Age less than 15 years	52804018
1264	Not applicable	52804018
3313	Employed	52804019
236	Unemployed	52804019
233	Discouraged work-seeker	52804019
1569	Other not economically active	52804019
0	Age less than 15 years	52804019
1900	Not applicable	52804019
1196	Employed	52804020
789	Unemployed	52804020
465	Discouraged work-seeker	52804020
3748	Other not economically active	52804020
0	Age less than 15 years	52804020
4490	Not applicable	52804020
304	Employed	52804021
319	Unemployed	52804021
124	Discouraged work-seeker	52804021
3007	Other not economically active	52804021
0	Age less than 15 years	52804021
3186	Not applicable	52804021
403	Employed	52804022
476	Unemployed	52804022
403	Discouraged work-seeker	52804022
2649	Other not economically active	52804022
0	Age less than 15 years	52804022
3218	Not applicable	52804022
1094	Employed	52804023
867	Unemployed	52804023
590	Discouraged work-seeker	52804023
2581	Other not economically active	52804023
0	Age less than 15 years	52804023
3890	Not applicable	52804023
509	Employed	52804024
531	Unemployed	52804024
826	Discouraged work-seeker	52804024
3435	Other not economically active	52804024
0	Age less than 15 years	52804024
4137	Not applicable	52804024
442	Employed	52804025
373	Unemployed	52804025
466	Discouraged work-seeker	52804025
2364	Other not economically active	52804025
0	Age less than 15 years	52804025
3246	Not applicable	52804025
1900	Employed	52804026
732	Unemployed	52804026
455	Discouraged work-seeker	52804026
2730	Other not economically active	52804026
0	Age less than 15 years	52804026
3712	Not applicable	52804026
3036	Employed	52805001
797	Unemployed	52805001
265	Discouraged work-seeker	52805001
1640	Other not economically active	52805001
0	Age less than 15 years	52805001
2521	Not applicable	52805001
2088	Employed	52805002
284	Unemployed	52805002
352	Discouraged work-seeker	52805002
1745	Other not economically active	52805002
0	Age less than 15 years	52805002
2647	Not applicable	52805002
331	Employed	52805003
690	Unemployed	52805003
365	Discouraged work-seeker	52805003
3143	Other not economically active	52805003
0	Age less than 15 years	52805003
4316	Not applicable	52805003
988	Employed	52805004
523	Unemployed	52805004
450	Discouraged work-seeker	52805004
2184	Other not economically active	52805004
0	Age less than 15 years	52805004
3577	Not applicable	52805004
747	Employed	52805005
206	Unemployed	52805005
521	Discouraged work-seeker	52805005
3719	Other not economically active	52805005
0	Age less than 15 years	52805005
4767	Not applicable	52805005
379	Employed	52805006
520	Unemployed	52805006
356	Discouraged work-seeker	52805006
1898	Other not economically active	52805006
0	Age less than 15 years	52805006
2761	Not applicable	52805006
627	Employed	54301001
727	Unemployed	54301001
578	Discouraged work-seeker	54301001
3198	Other not economically active	54301001
0	Age less than 15 years	54301001
5055	Not applicable	54301001
529	Employed	54301002
356	Unemployed	54301002
519	Discouraged work-seeker	54301002
3452	Other not economically active	54301002
0	Age less than 15 years	54301002
4649	Not applicable	54301002
745	Employed	54301003
616	Unemployed	54301003
500	Discouraged work-seeker	54301003
3426	Other not economically active	54301003
0	Age less than 15 years	54301003
4626	Not applicable	54301003
768	Employed	54301004
594	Unemployed	54301004
612	Discouraged work-seeker	54301004
3108	Other not economically active	54301004
0	Age less than 15 years	54301004
4265	Not applicable	54301004
804	Employed	54301005
626	Unemployed	54301005
348	Discouraged work-seeker	54301005
2755	Other not economically active	54301005
0	Age less than 15 years	54301005
3835	Not applicable	54301005
1868	Employed	54301006
747	Unemployed	54301006
663	Discouraged work-seeker	54301006
2469	Other not economically active	54301006
0	Age less than 15 years	54301006
3796	Not applicable	54301006
708	Employed	54301007
736	Unemployed	54301007
568	Discouraged work-seeker	54301007
2435	Other not economically active	54301007
0	Age less than 15 years	54301007
3438	Not applicable	54301007
504	Employed	54301008
346	Unemployed	54301008
309	Discouraged work-seeker	54301008
3723	Other not economically active	54301008
0	Age less than 15 years	54301008
4074	Not applicable	54301008
1555	Employed	54301009
670	Unemployed	54301009
636	Discouraged work-seeker	54301009
3103	Other not economically active	54301009
0	Age less than 15 years	54301009
4304	Not applicable	54301009
840	Employed	54301010
926	Unemployed	54301010
527	Discouraged work-seeker	54301010
2659	Other not economically active	54301010
0	Age less than 15 years	54301010
3807	Not applicable	54301010
1623	Employed	54301011
513	Unemployed	54301011
177	Discouraged work-seeker	54301011
2307	Other not economically active	54301011
0	Age less than 15 years	54301011
3199	Not applicable	54301011
602	Employed	54302001
240	Unemployed	54302001
135	Discouraged work-seeker	54302001
797	Other not economically active	54302001
0	Age less than 15 years	54302001
1449	Not applicable	54302001
1567	Employed	54302002
338	Unemployed	54302002
58	Discouraged work-seeker	54302002
915	Other not economically active	54302002
0	Age less than 15 years	54302002
1130	Not applicable	54302002
1559	Employed	54302003
276	Unemployed	54302003
49	Discouraged work-seeker	54302003
466	Other not economically active	54302003
0	Age less than 15 years	54302003
758	Not applicable	54302003
1537	Employed	54302004
151	Unemployed	54302004
49	Discouraged work-seeker	54302004
328	Other not economically active	54302004
0	Age less than 15 years	54302004
492	Not applicable	54302004
2200	Employed	54303001
1859	Unemployed	54303001
332	Discouraged work-seeker	54303001
3140	Other not economically active	54303001
0	Age less than 15 years	54303001
3909	Not applicable	54303001
2498	Employed	54303002
410	Unemployed	54303002
186	Discouraged work-seeker	54303002
1523	Other not economically active	54303002
0	Age less than 15 years	54303002
2708	Not applicable	54303002
2307	Employed	54303003
275	Unemployed	54303003
65	Discouraged work-seeker	54303003
2265	Other not economically active	54303003
0	Age less than 15 years	54303003
1863	Not applicable	54303003
3098	Employed	54303004
1565	Unemployed	54303004
223	Discouraged work-seeker	54303004
2819	Other not economically active	54303004
0	Age less than 15 years	54303004
3909	Not applicable	54303004
1206	Employed	54303005
363	Unemployed	54303005
47	Discouraged work-seeker	54303005
862	Other not economically active	54303005
0	Age less than 15 years	54303005
959	Not applicable	54303005
3900	Employed	54303006
639	Unemployed	54303006
64	Discouraged work-seeker	54303006
1696	Other not economically active	54303006
0	Age less than 15 years	54303006
3331	Not applicable	54303006
1709	Employed	54303007
1098	Unemployed	54303007
225	Discouraged work-seeker	54303007
1460	Other not economically active	54303007
0	Age less than 15 years	54303007
2445	Not applicable	54303007
1930	Employed	54303008
1445	Unemployed	54303008
296	Discouraged work-seeker	54303008
2325	Other not economically active	54303008
0	Age less than 15 years	54303008
2826	Not applicable	54303008
1217	Employed	54304001
688	Unemployed	54304001
298	Discouraged work-seeker	54304001
2180	Other not economically active	54304001
0	Age less than 15 years	54304001
3310	Not applicable	54304001
2062	Employed	54304002
143	Unemployed	54304002
257	Discouraged work-seeker	54304002
1463	Other not economically active	54304002
0	Age less than 15 years	54304002
1769	Not applicable	54304002
392	Employed	54304003
370	Unemployed	54304003
301	Discouraged work-seeker	54304003
3938	Other not economically active	54304003
0	Age less than 15 years	54304003
4136	Not applicable	54304003
2868	Employed	54304004
955	Unemployed	54304004
242	Discouraged work-seeker	54304004
3548	Other not economically active	54304004
0	Age less than 15 years	54304004
3713	Not applicable	54304004
508	Employed	54304005
546	Unemployed	54304005
646	Discouraged work-seeker	54304005
2912	Other not economically active	54304005
0	Age less than 15 years	54304005
4071	Not applicable	54304005
500	Employed	54304006
522	Unemployed	54304006
494	Discouraged work-seeker	54304006
2577	Other not economically active	54304006
0	Age less than 15 years	54304006
3487	Not applicable	54304006
477	Employed	54304007
304	Unemployed	54304007
312	Discouraged work-seeker	54304007
2857	Other not economically active	54304007
0	Age less than 15 years	54304007
3352	Not applicable	54304007
706	Employed	54304008
943	Unemployed	54304008
574	Discouraged work-seeker	54304008
4209	Other not economically active	54304008
0	Age less than 15 years	54304008
5214	Not applicable	54304008
1419	Employed	54304009
328	Unemployed	54304009
644	Discouraged work-seeker	54304009
1742	Other not economically active	54304009
0	Age less than 15 years	54304009
2619	Not applicable	54304009
555	Employed	54304010
789	Unemployed	54304010
485	Discouraged work-seeker	54304010
2576	Other not economically active	54304010
0	Age less than 15 years	54304010
3724	Not applicable	54304010
947	Employed	54304011
387	Unemployed	54304011
408	Discouraged work-seeker	54304011
2601	Other not economically active	54304011
0	Age less than 15 years	54304011
3400	Not applicable	54304011
919	Employed	54304012
508	Unemployed	54304012
332	Discouraged work-seeker	54304012
3700	Other not economically active	54304012
0	Age less than 15 years	54304012
4545	Not applicable	54304012
537	Employed	54305001
457	Unemployed	54305001
631	Discouraged work-seeker	54305001
3264	Other not economically active	54305001
0	Age less than 15 years	54305001
4712	Not applicable	54305001
646	Employed	54305002
792	Unemployed	54305002
466	Discouraged work-seeker	54305002
3004	Other not economically active	54305002
0	Age less than 15 years	54305002
4440	Not applicable	54305002
367	Employed	54305003
807	Unemployed	54305003
415	Discouraged work-seeker	54305003
2338	Other not economically active	54305003
0	Age less than 15 years	54305003
3519	Not applicable	54305003
649	Employed	54305004
339	Unemployed	54305004
674	Discouraged work-seeker	54305004
2591	Other not economically active	54305004
0	Age less than 15 years	54305004
4203	Not applicable	54305004
536	Employed	54305005
464	Unemployed	54305005
839	Discouraged work-seeker	54305005
2805	Other not economically active	54305005
0	Age less than 15 years	54305005
4933	Not applicable	54305005
607	Employed	54305006
644	Unemployed	54305006
745	Discouraged work-seeker	54305006
3392	Other not economically active	54305006
0	Age less than 15 years	54305006
5113	Not applicable	54305006
442	Employed	54305007
510	Unemployed	54305007
466	Discouraged work-seeker	54305007
3477	Other not economically active	54305007
0	Age less than 15 years	54305007
4215	Not applicable	54305007
1370	Employed	54305008
528	Unemployed	54305008
557	Discouraged work-seeker	54305008
2516	Other not economically active	54305008
0	Age less than 15 years	54305008
4057	Not applicable	54305008
288	Employed	54305009
410	Unemployed	54305009
504	Discouraged work-seeker	54305009
2547	Other not economically active	54305009
0	Age less than 15 years	54305009
3701	Not applicable	54305009
747	Employed	54305010
320	Unemployed	54305010
898	Discouraged work-seeker	54305010
3362	Other not economically active	54305010
0	Age less than 15 years	54305010
4703	Not applicable	54305010
614	Employed	54305011
559	Unemployed	54305011
259	Discouraged work-seeker	54305011
2465	Other not economically active	54305011
0	Age less than 15 years	54305011
3280	Not applicable	54305011
893	Employed	54305012
1010	Unemployed	54305012
588	Discouraged work-seeker	54305012
3114	Other not economically active	54305012
0	Age less than 15 years	54305012
4178	Not applicable	54305012
761	Employed	54305013
721	Unemployed	54305013
902	Discouraged work-seeker	54305013
3405	Other not economically active	54305013
0	Age less than 15 years	54305013
5026	Not applicable	54305013
447	Employed	54305014
792	Unemployed	54305014
150	Discouraged work-seeker	54305014
4076	Other not economically active	54305014
0	Age less than 15 years	54305014
4893	Not applicable	54305014
302	Employed	54305015
313	Unemployed	54305015
589	Discouraged work-seeker	54305015
2614	Other not economically active	54305015
0	Age less than 15 years	54305015
3679	Not applicable	54305015
2441	Employed	54305016
757	Unemployed	54305016
310	Discouraged work-seeker	54305016
2492	Other not economically active	54305016
0	Age less than 15 years	54305016
2741	Not applicable	54305016
1384	Employed	54305017
1292	Unemployed	54305017
339	Discouraged work-seeker	54305017
2467	Other not economically active	54305017
0	Age less than 15 years	54305017
3706	Not applicable	54305017
445	Employed	54305018
647	Unemployed	54305018
761	Discouraged work-seeker	54305018
2608	Other not economically active	54305018
0	Age less than 15 years	54305018
4416	Not applicable	54305018
500	Employed	54305019
743	Unemployed	54305019
520	Discouraged work-seeker	54305019
2427	Other not economically active	54305019
0	Age less than 15 years	54305019
3528	Not applicable	54305019
666	Employed	54305020
658	Unemployed	54305020
502	Discouraged work-seeker	54305020
3349	Other not economically active	54305020
0	Age less than 15 years	54305020
4425	Not applicable	54305020
1211	Employed	52401001
412	Unemployed	52401001
243	Discouraged work-seeker	52401001
2593	Other not economically active	52401001
0	Age less than 15 years	52401001
2492	Not applicable	52401001
3924	Employed	52401002
848	Unemployed	52401002
371	Discouraged work-seeker	52401002
3465	Other not economically active	52401002
0	Age less than 15 years	52401002
4522	Not applicable	52401002
2654	Employed	52401003
1183	Unemployed	52401003
772	Discouraged work-seeker	52401003
4457	Other not economically active	52401003
0	Age less than 15 years	52401003
6026	Not applicable	52401003
2304	Employed	52401004
1120	Unemployed	52401004
223	Discouraged work-seeker	52401004
1925	Other not economically active	52401004
0	Age less than 15 years	52401004
2819	Not applicable	52401004
1717	Employed	52401005
1056	Unemployed	52401005
325	Discouraged work-seeker	52401005
3134	Other not economically active	52401005
0	Age less than 15 years	52401005
3592	Not applicable	52401005
3417	Employed	52401006
847	Unemployed	52401006
288	Discouraged work-seeker	52401006
2870	Other not economically active	52401006
0	Age less than 15 years	52401006
4052	Not applicable	52401006
1977	Employed	52402001
163	Unemployed	52402001
795	Discouraged work-seeker	52402001
3435	Other not economically active	52402001
0	Age less than 15 years	52402001
6874	Not applicable	52402001
358	Employed	52402002
346	Unemployed	52402002
1026	Discouraged work-seeker	52402002
2994	Other not economically active	52402002
0	Age less than 15 years	52402002
4714	Not applicable	52402002
348	Employed	52402003
352	Unemployed	52402003
1049	Discouraged work-seeker	52402003
3957	Other not economically active	52402003
0	Age less than 15 years	52402003
5460	Not applicable	52402003
251	Employed	52402004
183	Unemployed	52402004
823	Discouraged work-seeker	52402004
3222	Other not economically active	52402004
0	Age less than 15 years	52402004
4240	Not applicable	52402004
380	Employed	52402005
365	Unemployed	52402005
764	Discouraged work-seeker	52402005
3458	Other not economically active	52402005
0	Age less than 15 years	52402005
4525	Not applicable	52402005
415	Employed	52402006
450	Unemployed	52402006
405	Discouraged work-seeker	52402006
2622	Other not economically active	52402006
0	Age less than 15 years	52402006
3484	Not applicable	52402006
405	Employed	52402007
298	Unemployed	52402007
766	Discouraged work-seeker	52402007
3186	Other not economically active	52402007
0	Age less than 15 years	52402007
4164	Not applicable	52402007
284	Employed	52402008
449	Unemployed	52402008
854	Discouraged work-seeker	52402008
2925	Other not economically active	52402008
0	Age less than 15 years	52402008
4249	Not applicable	52402008
305	Employed	52402009
312	Unemployed	52402009
1235	Discouraged work-seeker	52402009
3041	Other not economically active	52402009
0	Age less than 15 years	52402009
4630	Not applicable	52402009
393	Employed	52402010
486	Unemployed	52402010
1127	Discouraged work-seeker	52402010
3699	Other not economically active	52402010
0	Age less than 15 years	52402010
5096	Not applicable	52402010
516	Employed	52402011
669	Unemployed	52402011
865	Discouraged work-seeker	52402011
4340	Other not economically active	52402011
0	Age less than 15 years	52402011
5652	Not applicable	52402011
358	Employed	52402012
480	Unemployed	52402012
636	Discouraged work-seeker	52402012
2925	Other not economically active	52402012
0	Age less than 15 years	52402012
3914	Not applicable	52402012
492	Employed	52402013
724	Unemployed	52402013
687	Discouraged work-seeker	52402013
3250	Other not economically active	52402013
0	Age less than 15 years	52402013
4541	Not applicable	52402013
1833	Employed	52402014
830	Unemployed	52402014
756	Discouraged work-seeker	52402014
2955	Other not economically active	52402014
0	Age less than 15 years	52402014
3806	Not applicable	52402014
592	Employed	52402015
705	Unemployed	52402015
228	Discouraged work-seeker	52402015
4167	Other not economically active	52402015
0	Age less than 15 years	52402015
5374	Not applicable	52402015
308	Employed	52402016
611	Unemployed	52402016
229	Discouraged work-seeker	52402016
3030	Other not economically active	52402016
0	Age less than 15 years	52402016
3883	Not applicable	52402016
731	Employed	52402017
520	Unemployed	52402017
673	Discouraged work-seeker	52402017
2730	Other not economically active	52402017
0	Age less than 15 years	52402017
3960	Not applicable	52402017
200	Employed	52404001
333	Unemployed	52404001
683	Discouraged work-seeker	52404001
3596	Other not economically active	52404001
0	Age less than 15 years	52404001
5131	Not applicable	52404001
285	Employed	52404002
128	Unemployed	52404002
1322	Discouraged work-seeker	52404002
2722	Other not economically active	52404002
0	Age less than 15 years	52404002
4844	Not applicable	52404002
260	Employed	52404003
363	Unemployed	52404003
1620	Discouraged work-seeker	52404003
2828	Other not economically active	52404003
0	Age less than 15 years	52404003
5068	Not applicable	52404003
898	Employed	52404004
1037	Unemployed	52404004
554	Discouraged work-seeker	52404004
3031	Other not economically active	52404004
0	Age less than 15 years	52404004
4607	Not applicable	52404004
1158	Employed	52404005
1303	Unemployed	52404005
1152	Discouraged work-seeker	52404005
3842	Other not economically active	52404005
0	Age less than 15 years	52404005
6059	Not applicable	52404005
490	Employed	52404006
671	Unemployed	52404006
1408	Discouraged work-seeker	52404006
2435	Other not economically active	52404006
0	Age less than 15 years	52404006
5152	Not applicable	52404006
188	Employed	52404007
392	Unemployed	52404007
668	Discouraged work-seeker	52404007
2474	Other not economically active	52404007
0	Age less than 15 years	52404007
3970	Not applicable	52404007
241	Employed	52404008
93	Unemployed	52404008
606	Discouraged work-seeker	52404008
2603	Other not economically active	52404008
0	Age less than 15 years	52404008
3674	Not applicable	52404008
225	Employed	52404009
190	Unemployed	52404009
752	Discouraged work-seeker	52404009
3484	Other not economically active	52404009
0	Age less than 15 years	52404009
4642	Not applicable	52404009
561	Employed	52404010
593	Unemployed	52404010
994	Discouraged work-seeker	52404010
2513	Other not economically active	52404010
0	Age less than 15 years	52404010
4177	Not applicable	52404010
687	Employed	52404011
470	Unemployed	52404011
1031	Discouraged work-seeker	52404011
2616	Other not economically active	52404011
0	Age less than 15 years	52404011
4314	Not applicable	52404011
287	Employed	52404012
253	Unemployed	52404012
602	Discouraged work-seeker	52404012
3267	Other not economically active	52404012
0	Age less than 15 years	52404012
4023	Not applicable	52404012
272	Employed	52404013
67	Unemployed	52404013
828	Discouraged work-seeker	52404013
2792	Other not economically active	52404013
0	Age less than 15 years	52404013
3923	Not applicable	52404013
726	Employed	52404014
438	Unemployed	52404014
1105	Discouraged work-seeker	52404014
3248	Other not economically active	52404014
0	Age less than 15 years	52404014
5050	Not applicable	52404014
488	Employed	52404015
347	Unemployed	52404015
1024	Discouraged work-seeker	52404015
2127	Other not economically active	52404015
0	Age less than 15 years	52404015
4109	Not applicable	52404015
163	Employed	52404016
232	Unemployed	52404016
1458	Discouraged work-seeker	52404016
2380	Other not economically active	52404016
0	Age less than 15 years	52404016
4736	Not applicable	52404016
579	Employed	52404017
605	Unemployed	52404017
694	Discouraged work-seeker	52404017
3574	Other not economically active	52404017
0	Age less than 15 years	52404017
5163	Not applicable	52404017
119	Employed	52404018
333	Unemployed	52404018
450	Discouraged work-seeker	52404018
2799	Other not economically active	52404018
0	Age less than 15 years	52404018
4064	Not applicable	52404018
806	Employed	52404019
627	Unemployed	52404019
721	Discouraged work-seeker	52404019
3120	Other not economically active	52404019
0	Age less than 15 years	52404019
4639	Not applicable	52404019
543	Employed	52405001
411	Unemployed	52405001
287	Discouraged work-seeker	52405001
3965	Other not economically active	52405001
0	Age less than 15 years	52405001
5402	Not applicable	52405001
730	Employed	52405002
540	Unemployed	52405002
529	Discouraged work-seeker	52405002
3523	Other not economically active	52405002
0	Age less than 15 years	52405002
4565	Not applicable	52405002
406	Employed	52405003
665	Unemployed	52405003
411	Discouraged work-seeker	52405003
3738	Other not economically active	52405003
0	Age less than 15 years	52405003
4376	Not applicable	52405003
707	Employed	52405004
1143	Unemployed	52405004
298	Discouraged work-seeker	52405004
2309	Other not economically active	52405004
0	Age less than 15 years	52405004
3625	Not applicable	52405004
2048	Employed	52405005
883	Unemployed	52405005
431	Discouraged work-seeker	52405005
2787	Other not economically active	52405005
0	Age less than 15 years	52405005
3496	Not applicable	52405005
280	Employed	52405006
366	Unemployed	52405006
901	Discouraged work-seeker	52405006
2962	Other not economically active	52405006
0	Age less than 15 years	52405006
4288	Not applicable	52405006
2878	Employed	52405007
1215	Unemployed	52405007
512	Discouraged work-seeker	52405007
2954	Other not economically active	52405007
0	Age less than 15 years	52405007
3754	Not applicable	52405007
1471	Employed	52405008
720	Unemployed	52405008
390	Discouraged work-seeker	52405008
4003	Other not economically active	52405008
0	Age less than 15 years	52405008
5327	Not applicable	52405008
1695	Employed	52405009
274	Unemployed	52405009
96	Discouraged work-seeker	52405009
1316	Other not economically active	52405009
0	Age less than 15 years	52405009
1494	Not applicable	52405009
3503	Employed	52405010
525	Unemployed	52405010
250	Discouraged work-seeker	52405010
1920	Other not economically active	52405010
0	Age less than 15 years	52405010
2475	Not applicable	52405010
2479	Employed	52405011
566	Unemployed	52405011
365	Discouraged work-seeker	52405011
2740	Other not economically active	52405011
0	Age less than 15 years	52405011
3558	Not applicable	52405011
3260	Employed	52502001
1067	Unemployed	52502001
1100	Discouraged work-seeker	52502001
4569	Other not economically active	52502001
0	Age less than 15 years	52502001
5846	Not applicable	52502001
4803	Employed	52502002
267	Unemployed	52502002
60	Discouraged work-seeker	52502002
2133	Other not economically active	52502002
0	Age less than 15 years	52502002
3091	Not applicable	52502002
2925	Employed	52502003
359	Unemployed	52502003
149	Discouraged work-seeker	52502003
2547	Other not economically active	52502003
0	Age less than 15 years	52502003
2201	Not applicable	52502003
3701	Employed	52502004
274	Unemployed	52502004
57	Discouraged work-seeker	52502004
2404	Other not economically active	52502004
0	Age less than 15 years	52502004
2758	Not applicable	52502004
3085	Employed	52502005
539	Unemployed	52502005
131	Discouraged work-seeker	52502005
3371	Other not economically active	52502005
0	Age less than 15 years	52502005
2832	Not applicable	52502005
2085	Employed	52502006
2119	Unemployed	52502006
1380	Discouraged work-seeker	52502006
6878	Other not economically active	52502006
0	Age less than 15 years	52502006
9580	Not applicable	52502006
1688	Employed	52502007
1948	Unemployed	52502007
1177	Discouraged work-seeker	52502007
4857	Other not economically active	52502007
0	Age less than 15 years	52502007
7017	Not applicable	52502007
1054	Employed	52502008
1876	Unemployed	52502008
518	Discouraged work-seeker	52502008
2172	Other not economically active	52502008
0	Age less than 15 years	52502008
3505	Not applicable	52502008
2454	Employed	52502009
1959	Unemployed	52502009
564	Discouraged work-seeker	52502009
4009	Other not economically active	52502009
0	Age less than 15 years	52502009
5526	Not applicable	52502009
1461	Employed	52502010
1058	Unemployed	52502010
531	Discouraged work-seeker	52502010
3524	Other not economically active	52502010
0	Age less than 15 years	52502010
4067	Not applicable	52502010
1514	Employed	52502011
729	Unemployed	52502011
656	Discouraged work-seeker	52502011
3676	Other not economically active	52502011
0	Age less than 15 years	52502011
3870	Not applicable	52502011
808	Employed	52502012
1581	Unemployed	52502012
397	Discouraged work-seeker	52502012
2787	Other not economically active	52502012
0	Age less than 15 years	52502012
3846	Not applicable	52502012
997	Employed	52502013
1340	Unemployed	52502013
430	Discouraged work-seeker	52502013
2448	Other not economically active	52502013
0	Age less than 15 years	52502013
3327	Not applicable	52502013
2410	Employed	52502014
1846	Unemployed	52502014
502	Discouraged work-seeker	52502014
4331	Other not economically active	52502014
0	Age less than 15 years	52502014
5292	Not applicable	52502014
988	Employed	52502015
1042	Unemployed	52502015
1733	Discouraged work-seeker	52502015
2765	Other not economically active	52502015
0	Age less than 15 years	52502015
4708	Not applicable	52502015
1815	Employed	52502016
1811	Unemployed	52502016
971	Discouraged work-seeker	52502016
3967	Other not economically active	52502016
0	Age less than 15 years	52502016
6231	Not applicable	52502016
1336	Employed	52502017
1730	Unemployed	52502017
681	Discouraged work-seeker	52502017
3248	Other not economically active	52502017
0	Age less than 15 years	52502017
4185	Not applicable	52502017
1368	Employed	52502018
1757	Unemployed	52502018
810	Discouraged work-seeker	52502018
3808	Other not economically active	52502018
0	Age less than 15 years	52502018
5093	Not applicable	52502018
1742	Employed	52502019
1098	Unemployed	52502019
268	Discouraged work-seeker	52502019
3403	Other not economically active	52502019
0	Age less than 15 years	52502019
3507	Not applicable	52502019
2298	Employed	52502020
1652	Unemployed	52502020
630	Discouraged work-seeker	52502020
4756	Other not economically active	52502020
0	Age less than 15 years	52502020
5349	Not applicable	52502020
2606	Employed	52502021
1478	Unemployed	52502021
556	Discouraged work-seeker	52502021
4507	Other not economically active	52502021
0	Age less than 15 years	52502021
4717	Not applicable	52502021
1435	Employed	52502022
702	Unemployed	52502022
289	Discouraged work-seeker	52502022
3410	Other not economically active	52502022
0	Age less than 15 years	52502022
2940	Not applicable	52502022
1359	Employed	52502023
718	Unemployed	52502023
235	Discouraged work-seeker	52502023
3795	Other not economically active	52502023
0	Age less than 15 years	52502023
3688	Not applicable	52502023
2249	Employed	52502024
1684	Unemployed	52502024
545	Discouraged work-seeker	52502024
3856	Other not economically active	52502024
0	Age less than 15 years	52502024
4384	Not applicable	52502024
4117	Employed	52502025
1195	Unemployed	52502025
215	Discouraged work-seeker	52502025
4134	Other not economically active	52502025
0	Age less than 15 years	52502025
3807	Not applicable	52502025
1474	Employed	52502026
659	Unemployed	52502026
345	Discouraged work-seeker	52502026
2257	Other not economically active	52502026
0	Age less than 15 years	52502026
2446	Not applicable	52502026
2067	Employed	52502027
1122	Unemployed	52502027
270	Discouraged work-seeker	52502027
3708	Other not economically active	52502027
0	Age less than 15 years	52502027
3863	Not applicable	52502027
917	Employed	52502028
486	Unemployed	52502028
389	Discouraged work-seeker	52502028
3169	Other not economically active	52502028
0	Age less than 15 years	52502028
2437	Not applicable	52502028
2094	Employed	52502029
979	Unemployed	52502029
309	Discouraged work-seeker	52502029
3876	Other not economically active	52502029
0	Age less than 15 years	52502029
3806	Not applicable	52502029
1377	Employed	52502030
1050	Unemployed	52502030
822	Discouraged work-seeker	52502030
4335	Other not economically active	52502030
0	Age less than 15 years	52502030
4906	Not applicable	52502030
1481	Employed	52502031
1564	Unemployed	52502031
300	Discouraged work-seeker	52502031
3522	Other not economically active	52502031
0	Age less than 15 years	52502031
4511	Not applicable	52502031
1732	Employed	52503001
1129	Unemployed	52503001
915	Discouraged work-seeker	52503001
2214	Other not economically active	52503001
0	Age less than 15 years	52503001
4918	Not applicable	52503001
1207	Employed	52503002
265	Unemployed	52503002
151	Discouraged work-seeker	52503002
1792	Other not economically active	52503002
0	Age less than 15 years	52503002
1876	Not applicable	52503002
1426	Employed	52503003
1293	Unemployed	52503003
377	Discouraged work-seeker	52503003
2818	Other not economically active	52503003
0	Age less than 15 years	52503003
3528	Not applicable	52503003
1453	Employed	52503004
820	Unemployed	52503004
732	Discouraged work-seeker	52503004
2023	Other not economically active	52503004
0	Age less than 15 years	52503004
3774	Not applicable	52503004
1841	Employed	52504001
502	Unemployed	52504001
487	Discouraged work-seeker	52504001
3048	Other not economically active	52504001
0	Age less than 15 years	52504001
3871	Not applicable	52504001
1985	Employed	52504002
657	Unemployed	52504002
335	Discouraged work-seeker	52504002
2203	Other not economically active	52504002
0	Age less than 15 years	52504002
2915	Not applicable	52504002
897	Employed	52504003
630	Unemployed	52504003
666	Discouraged work-seeker	52504003
3015	Other not economically active	52504003
0	Age less than 15 years	52504003
3893	Not applicable	52504003
760	Employed	52504004
895	Unemployed	52504004
807	Discouraged work-seeker	52504004
2642	Other not economically active	52504004
0	Age less than 15 years	52504004
4109	Not applicable	52504004
718	Employed	52504005
552	Unemployed	52504005
507	Discouraged work-seeker	52504005
2239	Other not economically active	52504005
0	Age less than 15 years	52504005
3408	Not applicable	52504005
546	Employed	52504006
1286	Unemployed	52504006
420	Discouraged work-seeker	52504006
2972	Other not economically active	52504006
0	Age less than 15 years	52504006
4313	Not applicable	52504006
548	Employed	52504007
757	Unemployed	52504007
624	Discouraged work-seeker	52504007
2650	Other not economically active	52504007
0	Age less than 15 years	52504007
3515	Not applicable	52504007
881	Employed	52504008
1489	Unemployed	52504008
184	Discouraged work-seeker	52504008
2716	Other not economically active	52504008
0	Age less than 15 years	52504008
4177	Not applicable	52504008
764	Employed	52504009
773	Unemployed	52504009
576	Discouraged work-seeker	52504009
3344	Other not economically active	52504009
0	Age less than 15 years	52504009
4330	Not applicable	52504009
1213	Employed	52504010
1030	Unemployed	52504010
640	Discouraged work-seeker	52504010
3476	Other not economically active	52504010
0	Age less than 15 years	52504010
5125	Not applicable	52504010
700	Employed	52504011
1273	Unemployed	52504011
534	Discouraged work-seeker	52504011
3167	Other not economically active	52504011
0	Age less than 15 years	52504011
4558	Not applicable	52504011
831	Employed	52603001
528	Unemployed	52603001
712	Discouraged work-seeker	52603001
3275	Other not economically active	52603001
0	Age less than 15 years	52603001
4661	Not applicable	52603001
672	Employed	52603002
390	Unemployed	52603002
832	Discouraged work-seeker	52603002
2886	Other not economically active	52603002
0	Age less than 15 years	52603002
3742	Not applicable	52603002
567	Employed	52603003
673	Unemployed	52603003
975	Discouraged work-seeker	52603003
3535	Other not economically active	52603003
0	Age less than 15 years	52603003
5425	Not applicable	52603003
481	Employed	52603004
652	Unemployed	52603004
335	Discouraged work-seeker	52603004
2438	Other not economically active	52603004
0	Age less than 15 years	52603004
3071	Not applicable	52603004
677	Employed	52603005
697	Unemployed	52603005
476	Discouraged work-seeker	52603005
4070	Other not economically active	52603005
0	Age less than 15 years	52603005
4840	Not applicable	52603005
1176	Employed	52603006
629	Unemployed	52603006
695	Discouraged work-seeker	52603006
3198	Other not economically active	52603006
0	Age less than 15 years	52603006
4638	Not applicable	52603006
1337	Employed	52603007
774	Unemployed	52603007
843	Discouraged work-seeker	52603007
3339	Other not economically active	52603007
0	Age less than 15 years	52603007
4655	Not applicable	52603007
1757	Employed	52603008
114	Unemployed	52603008
29	Discouraged work-seeker	52603008
1630	Other not economically active	52603008
0	Age less than 15 years	52603008
1301	Not applicable	52603008
2670	Employed	52603009
229	Unemployed	52603009
74	Discouraged work-seeker	52603009
1398	Other not economically active	52603009
0	Age less than 15 years	52603009
1981	Not applicable	52603009
743	Employed	52603010
409	Unemployed	52603010
35	Discouraged work-seeker	52603010
618	Other not economically active	52603010
0	Age less than 15 years	52603010
901	Not applicable	52603010
3039	Employed	52603011
1236	Unemployed	52603011
323	Discouraged work-seeker	52603011
3096	Other not economically active	52603011
0	Age less than 15 years	52603011
3665	Not applicable	52603011
1555	Employed	52603012
596	Unemployed	52603012
672	Discouraged work-seeker	52603012
5342	Other not economically active	52603012
0	Age less than 15 years	52603012
4544	Not applicable	52603012
3190	Employed	52603013
1652	Unemployed	52603013
474	Discouraged work-seeker	52603013
3955	Other not economically active	52603013
0	Age less than 15 years	52603013
4984	Not applicable	52603013
347	Employed	52603014
638	Unemployed	52603014
219	Discouraged work-seeker	52603014
3280	Other not economically active	52603014
0	Age less than 15 years	52603014
4120	Not applicable	52603014
337	Employed	52603015
589	Unemployed	52603015
249	Discouraged work-seeker	52603015
3011	Other not economically active	52603015
0	Age less than 15 years	52603015
3922	Not applicable	52603015
751	Employed	52603016
980	Unemployed	52603016
293	Discouraged work-seeker	52603016
3216	Other not economically active	52603016
0	Age less than 15 years	52603016
4177	Not applicable	52603016
814	Employed	52603017
655	Unemployed	52603017
858	Discouraged work-seeker	52603017
4004	Other not economically active	52603017
0	Age less than 15 years	52603017
5552	Not applicable	52603017
681	Employed	52603018
782	Unemployed	52603018
296	Discouraged work-seeker	52603018
2994	Other not economically active	52603018
0	Age less than 15 years	52603018
3333	Not applicable	52603018
402	Employed	52603019
405	Unemployed	52603019
417	Discouraged work-seeker	52603019
3072	Other not economically active	52603019
0	Age less than 15 years	52603019
3143	Not applicable	52603019
1130	Employed	52603020
618	Unemployed	52603020
438	Discouraged work-seeker	52603020
4433	Other not economically active	52603020
0	Age less than 15 years	52603020
4503	Not applicable	52603020
652	Employed	52603021
658	Unemployed	52603021
848	Discouraged work-seeker	52603021
4643	Other not economically active	52603021
0	Age less than 15 years	52603021
5805	Not applicable	52603021
3772	Employed	52603022
1212	Unemployed	52603022
625	Discouraged work-seeker	52603022
2922	Other not economically active	52603022
0	Age less than 15 years	52603022
4324	Not applicable	52603022
2504	Employed	52601001
613	Unemployed	52601001
504	Discouraged work-seeker	52601001
3591	Other not economically active	52601001
0	Age less than 15 years	52601001
5500	Not applicable	52601001
1170	Employed	52601002
1446	Unemployed	52601002
736	Discouraged work-seeker	52601002
4119	Other not economically active	52601002
0	Age less than 15 years	52601002
6670	Not applicable	52601002
2208	Employed	52601003
807	Unemployed	52601003
368	Discouraged work-seeker	52601003
3484	Other not economically active	52601003
0	Age less than 15 years	52601003
4086	Not applicable	52601003
762	Employed	52601004
811	Unemployed	52601004
1330	Discouraged work-seeker	52601004
2654	Other not economically active	52601004
0	Age less than 15 years	52601004
4556	Not applicable	52601004
436	Employed	52601005
266	Unemployed	52601005
395	Discouraged work-seeker	52601005
3170	Other not economically active	52601005
0	Age less than 15 years	52601005
4259	Not applicable	52601005
381	Employed	52601006
349	Unemployed	52601006
535	Discouraged work-seeker	52601006
2816	Other not economically active	52601006
0	Age less than 15 years	52601006
4054	Not applicable	52601006
1240	Employed	52601007
839	Unemployed	52601007
211	Discouraged work-seeker	52601007
2727	Other not economically active	52601007
0	Age less than 15 years	52601007
3590	Not applicable	52601007
895	Employed	52601008
681	Unemployed	52601008
478	Discouraged work-seeker	52601008
2628	Other not economically active	52601008
0	Age less than 15 years	52601008
4185	Not applicable	52601008
1410	Employed	52602001
525	Unemployed	52602001
971	Discouraged work-seeker	52602001
3321	Other not economically active	52602001
0	Age less than 15 years	52602001
5277	Not applicable	52602001
1584	Employed	52602002
1398	Unemployed	52602002
193	Discouraged work-seeker	52602002
2295	Other not economically active	52602002
0	Age less than 15 years	52602002
3192	Not applicable	52602002
524	Employed	52602003
594	Unemployed	52602003
768	Discouraged work-seeker	52602003
2169	Other not economically active	52602003
0	Age less than 15 years	52602003
4009	Not applicable	52602003
724	Employed	52602004
986	Unemployed	52602004
481	Discouraged work-seeker	52602004
3365	Other not economically active	52602004
0	Age less than 15 years	52602004
5180	Not applicable	52602004
587	Employed	52602005
330	Unemployed	52602005
444	Discouraged work-seeker	52602005
3043	Other not economically active	52602005
0	Age less than 15 years	52602005
3916	Not applicable	52602005
618	Employed	52602006
612	Unemployed	52602006
736	Discouraged work-seeker	52602006
2132	Other not economically active	52602006
0	Age less than 15 years	52602006
3619	Not applicable	52602006
492	Employed	52602007
199	Unemployed	52602007
430	Discouraged work-seeker	52602007
2832	Other not economically active	52602007
0	Age less than 15 years	52602007
3349	Not applicable	52602007
353	Employed	52602008
578	Unemployed	52602008
252	Discouraged work-seeker	52602008
2731	Other not economically active	52602008
0	Age less than 15 years	52602008
3948	Not applicable	52602008
1319	Employed	52602009
928	Unemployed	52602009
795	Discouraged work-seeker	52602009
3573	Other not economically active	52602009
0	Age less than 15 years	52602009
5369	Not applicable	52602009
1812	Employed	52602010
1707	Unemployed	52602010
723	Discouraged work-seeker	52602010
2252	Other not economically active	52602010
0	Age less than 15 years	52602010
4386	Not applicable	52602010
4920	Employed	52602011
548	Unemployed	52602011
220	Discouraged work-seeker	52602011
1862	Other not economically active	52602011
0	Age less than 15 years	52602011
3341	Not applicable	52602011
613	Employed	52602012
859	Unemployed	52602012
422	Discouraged work-seeker	52602012
3025	Other not economically active	52602012
0	Age less than 15 years	52602012
4455	Not applicable	52602012
425	Employed	52602013
440	Unemployed	52602013
361	Discouraged work-seeker	52602013
1471	Other not economically active	52602013
0	Age less than 15 years	52602013
2462	Not applicable	52602013
2829	Employed	52602014
339	Unemployed	52602014
468	Discouraged work-seeker	52602014
2167	Other not economically active	52602014
0	Age less than 15 years	52602014
2983	Not applicable	52602014
545	Employed	52605001
367	Unemployed	52605001
1460	Discouraged work-seeker	52605001
2772	Other not economically active	52605001
0	Age less than 15 years	52605001
5454	Not applicable	52605001
397	Employed	52605002
422	Unemployed	52605002
1623	Discouraged work-seeker	52605002
2847	Other not economically active	52605002
0	Age less than 15 years	52605002
5229	Not applicable	52605002
434	Employed	52605003
386	Unemployed	52605003
824	Discouraged work-seeker	52605003
3817	Other not economically active	52605003
0	Age less than 15 years	52605003
5426	Not applicable	52605003
938	Employed	52605004
1132	Unemployed	52605004
707	Discouraged work-seeker	52605004
3896	Other not economically active	52605004
0	Age less than 15 years	52605004
5582	Not applicable	52605004
615	Employed	52605005
537	Unemployed	52605005
613	Discouraged work-seeker	52605005
2997	Other not economically active	52605005
0	Age less than 15 years	52605005
4687	Not applicable	52605005
376	Employed	52605006
289	Unemployed	52605006
795	Discouraged work-seeker	52605006
2518	Other not economically active	52605006
0	Age less than 15 years	52605006
3592	Not applicable	52605006
421	Employed	52605007
312	Unemployed	52605007
782	Discouraged work-seeker	52605007
3469	Other not economically active	52605007
0	Age less than 15 years	52605007
4958	Not applicable	52605007
559	Employed	52605008
349	Unemployed	52605008
528	Discouraged work-seeker	52605008
2885	Other not economically active	52605008
0	Age less than 15 years	52605008
3955	Not applicable	52605008
1971	Employed	52605009
1565	Unemployed	52605009
524	Discouraged work-seeker	52605009
3777	Other not economically active	52605009
0	Age less than 15 years	52605009
5283	Not applicable	52605009
264	Employed	52605010
348	Unemployed	52605010
726	Discouraged work-seeker	52605010
3280	Other not economically active	52605010
0	Age less than 15 years	52605010
4310	Not applicable	52605010
419	Employed	52605011
909	Unemployed	52605011
666	Discouraged work-seeker	52605011
3123	Other not economically active	52605011
0	Age less than 15 years	52605011
4904	Not applicable	52605011
557	Employed	52605012
684	Unemployed	52605012
903	Discouraged work-seeker	52605012
3171	Other not economically active	52605012
0	Age less than 15 years	52605012
4848	Not applicable	52605012
330	Employed	52605013
493	Unemployed	52605013
361	Discouraged work-seeker	52605013
2280	Other not economically active	52605013
0	Age less than 15 years	52605013
3084	Not applicable	52605013
430	Employed	52605014
323	Unemployed	52605014
777	Discouraged work-seeker	52605014
4124	Other not economically active	52605014
0	Age less than 15 years	52605014
5614	Not applicable	52605014
294	Employed	52605015
414	Unemployed	52605015
466	Discouraged work-seeker	52605015
2910	Other not economically active	52605015
0	Age less than 15 years	52605015
3437	Not applicable	52605015
2257	Employed	52605016
1012	Unemployed	52605016
1032	Discouraged work-seeker	52605016
5197	Other not economically active	52605016
0	Age less than 15 years	52605016
5840	Not applicable	52605016
385	Employed	52605017
567	Unemployed	52605017
691	Discouraged work-seeker	52605017
2880	Other not economically active	52605017
0	Age less than 15 years	52605017
3931	Not applicable	52605017
596	Employed	52605018
1241	Unemployed	52605018
396	Discouraged work-seeker	52605018
3362	Other not economically active	52605018
0	Age less than 15 years	52605018
4881	Not applicable	52605018
199	Employed	52605019
28	Unemployed	52605019
8	Discouraged work-seeker	52605019
69	Other not economically active	52605019
0	Age less than 15 years	52605019
98	Not applicable	52605019
576	Employed	52605020
507	Unemployed	52605020
134	Discouraged work-seeker	52605020
1978	Other not economically active	52605020
0	Age less than 15 years	52605020
2613	Not applicable	52605020
276	Employed	52605021
584	Unemployed	52605021
442	Discouraged work-seeker	52605021
2557	Other not economically active	52605021
0	Age less than 15 years	52605021
3511	Not applicable	52605021
185	Employed	52606001
292	Unemployed	52606001
479	Discouraged work-seeker	52606001
2322	Other not economically active	52606001
0	Age less than 15 years	52606001
3144	Not applicable	52606001
406	Employed	52606002
401	Unemployed	52606002
523	Discouraged work-seeker	52606002
3809	Other not economically active	52606002
0	Age less than 15 years	52606002
4521	Not applicable	52606002
335	Employed	52606003
243	Unemployed	52606003
262	Discouraged work-seeker	52606003
2856	Other not economically active	52606003
0	Age less than 15 years	52606003
2985	Not applicable	52606003
333	Employed	52606004
286	Unemployed	52606004
979	Discouraged work-seeker	52606004
2476	Other not economically active	52606004
0	Age less than 15 years	52606004
3359	Not applicable	52606004
286	Employed	52606005
289	Unemployed	52606005
775	Discouraged work-seeker	52606005
3371	Other not economically active	52606005
0	Age less than 15 years	52606005
4362	Not applicable	52606005
175	Employed	52606006
207	Unemployed	52606006
660	Discouraged work-seeker	52606006
2437	Other not economically active	52606006
0	Age less than 15 years	52606006
3101	Not applicable	52606006
266	Employed	52606007
410	Unemployed	52606007
867	Discouraged work-seeker	52606007
1764	Other not economically active	52606007
0	Age less than 15 years	52606007
3442	Not applicable	52606007
845	Employed	52606008
636	Unemployed	52606008
891	Discouraged work-seeker	52606008
2782	Other not economically active	52606008
0	Age less than 15 years	52606008
4315	Not applicable	52606008
740	Employed	52606009
748	Unemployed	52606009
587	Discouraged work-seeker	52606009
2462	Other not economically active	52606009
0	Age less than 15 years	52606009
3637	Not applicable	52606009
184	Employed	52606010
197	Unemployed	52606010
427	Discouraged work-seeker	52606010
2465	Other not economically active	52606010
0	Age less than 15 years	52606010
2956	Not applicable	52606010
987	Employed	52606011
1353	Unemployed	52606011
498	Discouraged work-seeker	52606011
2426	Other not economically active	52606011
0	Age less than 15 years	52606011
3520	Not applicable	52606011
2039	Employed	52606012
800	Unemployed	52606012
298	Discouraged work-seeker	52606012
1290	Other not economically active	52606012
0	Age less than 15 years	52606012
1835	Not applicable	52606012
588	Employed	52606013
481	Unemployed	52606013
774	Discouraged work-seeker	52606013
3194	Other not economically active	52606013
0	Age less than 15 years	52606013
4262	Not applicable	52606013
249	Employed	52606014
233	Unemployed	52606014
452	Discouraged work-seeker	52606014
3647	Other not economically active	52606014
0	Age less than 15 years	52606014
4668	Not applicable	52606014
216	Employed	52606015
273	Unemployed	52606015
608	Discouraged work-seeker	52606015
3240	Other not economically active	52606015
0	Age less than 15 years	52606015
4637	Not applicable	52606015
871	Employed	52606016
640	Unemployed	52606016
716	Discouraged work-seeker	52606016
2851	Other not economically active	52606016
0	Age less than 15 years	52606016
3994	Not applicable	52606016
608	Employed	52606017
714	Unemployed	52606017
706	Discouraged work-seeker	52606017
2531	Other not economically active	52606017
0	Age less than 15 years	52606017
4134	Not applicable	52606017
1542	Employed	52606018
1501	Unemployed	52606018
435	Discouraged work-seeker	52606018
2287	Other not economically active	52606018
0	Age less than 15 years	52606018
3304	Not applicable	52606018
955	Employed	52606019
635	Unemployed	52606019
494	Discouraged work-seeker	52606019
795	Other not economically active	52606019
0	Age less than 15 years	52606019
1653	Not applicable	52606019
352	Employed	52606020
1264	Unemployed	52606020
481	Discouraged work-seeker	52606020
2345	Other not economically active	52606020
0	Age less than 15 years	52606020
3675	Not applicable	52606020
754	Employed	52606021
1487	Unemployed	52606021
237	Discouraged work-seeker	52606021
2496	Other not economically active	52606021
0	Age less than 15 years	52606021
3482	Not applicable	52606021
1708	Employed	52606022
841	Unemployed	52606022
207	Discouraged work-seeker	52606022
2359	Other not economically active	52606022
0	Age less than 15 years	52606022
2795	Not applicable	52606022
282	Employed	52606023
380	Unemployed	52606023
577	Discouraged work-seeker	52606023
2188	Other not economically active	52606023
0	Age less than 15 years	52606023
3214	Not applicable	52606023
229	Employed	52606024
495	Unemployed	52606024
326	Discouraged work-seeker	52606024
2383	Other not economically active	52606024
0	Age less than 15 years	52606024
3341	Not applicable	52606024
656	Employed	52904001
554	Unemployed	52904001
764	Discouraged work-seeker	52904001
2871	Other not economically active	52904001
0	Age less than 15 years	52904001
3654	Not applicable	52904001
549	Employed	52904002
268	Unemployed	52904002
271	Discouraged work-seeker	52904002
3669	Other not economically active	52904002
0	Age less than 15 years	52904002
5049	Not applicable	52904002
452	Employed	52904003
305	Unemployed	52904003
480	Discouraged work-seeker	52904003
2865	Other not economically active	52904003
0	Age less than 15 years	52904003
4274	Not applicable	52904003
535	Employed	52904004
381	Unemployed	52904004
712	Discouraged work-seeker	52904004
3927	Other not economically active	52904004
0	Age less than 15 years	52904004
4618	Not applicable	52904004
602	Employed	52904005
875	Unemployed	52904005
639	Discouraged work-seeker	52904005
3365	Other not economically active	52904005
0	Age less than 15 years	52904005
5105	Not applicable	52904005
388	Employed	52904006
679	Unemployed	52904006
254	Discouraged work-seeker	52904006
2707	Other not economically active	52904006
0	Age less than 15 years	52904006
3497	Not applicable	52904006
415	Employed	52904007
505	Unemployed	52904007
469	Discouraged work-seeker	52904007
2772	Other not economically active	52904007
0	Age less than 15 years	52904007
3815	Not applicable	52904007
353	Employed	52904008
439	Unemployed	52904008
726	Discouraged work-seeker	52904008
3304	Other not economically active	52904008
0	Age less than 15 years	52904008
4410	Not applicable	52904008
480	Employed	52904009
542	Unemployed	52904009
245	Discouraged work-seeker	52904009
3087	Other not economically active	52904009
0	Age less than 15 years	52904009
3579	Not applicable	52904009
711	Employed	52904010
402	Unemployed	52904010
504	Discouraged work-seeker	52904010
3812	Other not economically active	52904010
0	Age less than 15 years	52904010
4387	Not applicable	52904010
325	Employed	52904011
306	Unemployed	52904011
728	Discouraged work-seeker	52904011
2237	Other not economically active	52904011
0	Age less than 15 years	52904011
3208	Not applicable	52904011
735	Employed	52901001
502	Unemployed	52901001
582	Discouraged work-seeker	52901001
2723	Other not economically active	52901001
0	Age less than 15 years	52901001
3632	Not applicable	52901001
1097	Employed	52901002
576	Unemployed	52901002
551	Discouraged work-seeker	52901002
2425	Other not economically active	52901002
0	Age less than 15 years	52901002
3853	Not applicable	52901002
2610	Employed	52901003
531	Unemployed	52901003
130	Discouraged work-seeker	52901003
2164	Other not economically active	52901003
0	Age less than 15 years	52901003
2728	Not applicable	52901003
2607	Employed	52901004
635	Unemployed	52901004
360	Discouraged work-seeker	52901004
2662	Other not economically active	52901004
0	Age less than 15 years	52901004
3587	Not applicable	52901004
713	Employed	52901005
425	Unemployed	52901005
600	Discouraged work-seeker	52901005
2126	Other not economically active	52901005
0	Age less than 15 years	52901005
3189	Not applicable	52901005
581	Employed	52901006
468	Unemployed	52901006
192	Discouraged work-seeker	52901006
2551	Other not economically active	52901006
0	Age less than 15 years	52901006
3067	Not applicable	52901006
2702	Employed	52901007
1035	Unemployed	52901007
570	Discouraged work-seeker	52901007
2309	Other not economically active	52901007
0	Age less than 15 years	52901007
2901	Not applicable	52901007
1460	Employed	52901008
947	Unemployed	52901008
351	Discouraged work-seeker	52901008
2779	Other not economically active	52901008
0	Age less than 15 years	52901008
3821	Not applicable	52901008
822	Employed	52901009
1158	Unemployed	52901009
495	Discouraged work-seeker	52901009
2755	Other not economically active	52901009
0	Age less than 15 years	52901009
3991	Not applicable	52901009
2352	Employed	52901010
616	Unemployed	52901010
405	Discouraged work-seeker	52901010
1903	Other not economically active	52901010
0	Age less than 15 years	52901010
2940	Not applicable	52901010
1332	Employed	52901011
539	Unemployed	52901011
446	Discouraged work-seeker	52901011
2546	Other not economically active	52901011
0	Age less than 15 years	52901011
3076	Not applicable	52901011
2477	Employed	52901012
1552	Unemployed	52901012
572	Discouraged work-seeker	52901012
3563	Other not economically active	52901012
0	Age less than 15 years	52901012
4793	Not applicable	52901012
1229	Employed	52901013
350	Unemployed	52901013
71	Discouraged work-seeker	52901013
818	Other not economically active	52901013
0	Age less than 15 years	52901013
1092	Not applicable	52901013
2730	Employed	52901014
1085	Unemployed	52901014
699	Discouraged work-seeker	52901014
2202	Other not economically active	52901014
0	Age less than 15 years	52901014
3058	Not applicable	52901014
1134	Employed	52901015
581	Unemployed	52901015
175	Discouraged work-seeker	52901015
1022	Other not economically active	52901015
0	Age less than 15 years	52901015
1146	Not applicable	52901015
2731	Employed	52901016
526	Unemployed	52901016
508	Discouraged work-seeker	52901016
2268	Other not economically active	52901016
0	Age less than 15 years	52901016
3153	Not applicable	52901016
2335	Employed	52901017
326	Unemployed	52901017
137	Discouraged work-seeker	52901017
1316	Other not economically active	52901017
0	Age less than 15 years	52901017
1577	Not applicable	52901017
1095	Employed	52902001
687	Unemployed	52902001
464	Discouraged work-seeker	52902001
2121	Other not economically active	52902001
0	Age less than 15 years	52902001
3078	Not applicable	52902001
3287	Employed	52902002
689	Unemployed	52902002
407	Discouraged work-seeker	52902002
1851	Other not economically active	52902002
0	Age less than 15 years	52902002
3049	Not applicable	52902002
2281	Employed	52902003
588	Unemployed	52902003
149	Discouraged work-seeker	52902003
1223	Other not economically active	52902003
0	Age less than 15 years	52902003
1888	Not applicable	52902003
3643	Employed	52902004
1129	Unemployed	52902004
210	Discouraged work-seeker	52902004
1598	Other not economically active	52902004
0	Age less than 15 years	52902004
2140	Not applicable	52902004
1647	Employed	52902005
916	Unemployed	52902005
551	Discouraged work-seeker	52902005
1996	Other not economically active	52902005
0	Age less than 15 years	52902005
2757	Not applicable	52902005
3459	Employed	52902006
171	Unemployed	52902006
27	Discouraged work-seeker	52902006
1388	Other not economically active	52902006
0	Age less than 15 years	52902006
2566	Not applicable	52902006
3521	Employed	52902007
1318	Unemployed	52902007
220	Discouraged work-seeker	52902007
2208	Other not economically active	52902007
0	Age less than 15 years	52902007
3891	Not applicable	52902007
2500	Employed	52902008
778	Unemployed	52902008
555	Discouraged work-seeker	52902008
1325	Other not economically active	52902008
0	Age less than 15 years	52902008
2740	Not applicable	52902008
1727	Employed	52902009
627	Unemployed	52902009
557	Discouraged work-seeker	52902009
1812	Other not economically active	52902009
0	Age less than 15 years	52902009
2746	Not applicable	52902009
2553	Employed	52902010
1028	Unemployed	52902010
548	Discouraged work-seeker	52902010
2527	Other not economically active	52902010
0	Age less than 15 years	52902010
3560	Not applicable	52902010
2774	Employed	52902011
745	Unemployed	52902011
431	Discouraged work-seeker	52902011
2075	Other not economically active	52902011
0	Age less than 15 years	52902011
3172	Not applicable	52902011
3301	Employed	52902012
1747	Unemployed	52902012
319	Discouraged work-seeker	52902012
2078	Other not economically active	52902012
0	Age less than 15 years	52902012
4004	Not applicable	52902012
2164	Employed	52902013
422	Unemployed	52902013
336	Discouraged work-seeker	52902013
3122	Other not economically active	52902013
0	Age less than 15 years	52902013
2483	Not applicable	52902013
2070	Employed	52902014
1162	Unemployed	52902014
392	Discouraged work-seeker	52902014
1649	Other not economically active	52902014
0	Age less than 15 years	52902014
2939	Not applicable	52902014
2994	Employed	52902015
1475	Unemployed	52902015
411	Discouraged work-seeker	52902015
3043	Other not economically active	52902015
0	Age less than 15 years	52902015
3793	Not applicable	52902015
3119	Employed	52902016
581	Unemployed	52902016
124	Discouraged work-seeker	52902016
2947	Other not economically active	52902016
0	Age less than 15 years	52902016
2798	Not applicable	52902016
2683	Employed	52902017
225	Unemployed	52902017
99	Discouraged work-seeker	52902017
1945	Other not economically active	52902017
0	Age less than 15 years	52902017
1856	Not applicable	52902017
1991	Employed	52902018
1433	Unemployed	52902018
135	Discouraged work-seeker	52902018
1934	Other not economically active	52902018
0	Age less than 15 years	52902018
2588	Not applicable	52902018
2892	Employed	52902019
358	Unemployed	52902019
70	Discouraged work-seeker	52902019
2343	Other not economically active	52902019
0	Age less than 15 years	52902019
2298	Not applicable	52902019
938	Employed	52902020
455	Unemployed	52902020
148	Discouraged work-seeker	52902020
865	Other not economically active	52902020
0	Age less than 15 years	52902020
1099	Not applicable	52902020
2630	Employed	52902021
530	Unemployed	52902021
143	Discouraged work-seeker	52902021
1477	Other not economically active	52902021
0	Age less than 15 years	52902021
2211	Not applicable	52902021
5057	Employed	52902022
474	Unemployed	52902022
114	Discouraged work-seeker	52902022
2460	Other not economically active	52902022
0	Age less than 15 years	52902022
3587	Not applicable	52902022
3490	Employed	52902023
1432	Unemployed	52902023
471	Discouraged work-seeker	52902023
1868	Other not economically active	52902023
0	Age less than 15 years	52902023
3898	Not applicable	52902023
2919	Employed	52902024
1782	Unemployed	52902024
497	Discouraged work-seeker	52902024
2304	Other not economically active	52902024
0	Age less than 15 years	52902024
4002	Not applicable	52902024
949	Employed	52902025
854	Unemployed	52902025
220	Discouraged work-seeker	52902025
2676	Other not economically active	52902025
0	Age less than 15 years	52902025
3511	Not applicable	52902025
1640	Employed	52902026
930	Unemployed	52902026
270	Discouraged work-seeker	52902026
1473	Other not economically active	52902026
0	Age less than 15 years	52902026
1819	Not applicable	52902026
1094	Employed	52902027
224	Unemployed	52902027
153	Discouraged work-seeker	52902027
2648	Other not economically active	52902027
0	Age less than 15 years	52902027
2555	Not applicable	52902027
1462	Employed	52903001
616	Unemployed	52903001
271	Discouraged work-seeker	52903001
1723	Other not economically active	52903001
0	Age less than 15 years	52903001
2459	Not applicable	52903001
184	Employed	52903002
273	Unemployed	52903002
552	Discouraged work-seeker	52903002
1848	Other not economically active	52903002
0	Age less than 15 years	52903002
2714	Not applicable	52903002
2926	Employed	52903003
409	Unemployed	52903003
171	Discouraged work-seeker	52903003
2274	Other not economically active	52903003
0	Age less than 15 years	52903003
3262	Not applicable	52903003
132	Employed	52903004
533	Unemployed	52903004
514	Discouraged work-seeker	52903004
2097	Other not economically active	52903004
0	Age less than 15 years	52903004
3140	Not applicable	52903004
197	Employed	52903005
178	Unemployed	52903005
320	Discouraged work-seeker	52903005
2651	Other not economically active	52903005
0	Age less than 15 years	52903005
3060	Not applicable	52903005
444	Employed	52903006
257	Unemployed	52903006
517	Discouraged work-seeker	52903006
3738	Other not economically active	52903006
0	Age less than 15 years	52903006
4074	Not applicable	52903006
130	Employed	52903007
333	Unemployed	52903007
173	Discouraged work-seeker	52903007
1888	Other not economically active	52903007
0	Age less than 15 years	52903007
2482	Not applicable	52903007
412	Employed	52903008
729	Unemployed	52903008
466	Discouraged work-seeker	52903008
2364	Other not economically active	52903008
0	Age less than 15 years	52903008
3478	Not applicable	52903008
284	Employed	52903009
148	Unemployed	52903009
494	Discouraged work-seeker	52903009
1982	Other not economically active	52903009
0	Age less than 15 years	52903009
2176	Not applicable	52903009
285	Employed	52903010
449	Unemployed	52903010
694	Discouraged work-seeker	52903010
3127	Other not economically active	52903010
0	Age less than 15 years	52903010
3755	Not applicable	52903010
428	Employed	52903011
1100	Unemployed	52903011
399	Discouraged work-seeker	52903011
2690	Other not economically active	52903011
0	Age less than 15 years	52903011
3131	Not applicable	52903011
1353	Employed	52903012
1750	Unemployed	52903012
719	Discouraged work-seeker	52903012
2714	Other not economically active	52903012
0	Age less than 15 years	52903012
4334	Not applicable	52903012
746	Employed	52903013
884	Unemployed	52903013
383	Discouraged work-seeker	52903013
3361	Other not economically active	52903013
0	Age less than 15 years	52903013
3509	Not applicable	52903013
378	Employed	52903014
631	Unemployed	52903014
841	Discouraged work-seeker	52903014
2097	Other not economically active	52903014
0	Age less than 15 years	52903014
2665	Not applicable	52903014
759	Employed	52903015
504	Unemployed	52903015
570	Discouraged work-seeker	52903015
2272	Other not economically active	52903015
0	Age less than 15 years	52903015
2619	Not applicable	52903015
327	Employed	52903016
316	Unemployed	52903016
793	Discouraged work-seeker	52903016
2817	Other not economically active	52903016
0	Age less than 15 years	52903016
3533	Not applicable	52903016
250	Employed	52903017
168	Unemployed	52903017
380	Discouraged work-seeker	52903017
3409	Other not economically active	52903017
0	Age less than 15 years	52903017
3109	Not applicable	52903017
237	Employed	52903018
791	Unemployed	52903018
257	Discouraged work-seeker	52903018
2618	Other not economically active	52903018
0	Age less than 15 years	52903018
3174	Not applicable	52903018
377	Employed	52903019
691	Unemployed	52903019
721	Discouraged work-seeker	52903019
3191	Other not economically active	52903019
0	Age less than 15 years	52903019
3979	Not applicable	52903019
4940	Employed	59500001
4254	Unemployed	59500001
1331	Discouraged work-seeker	59500001
8850	Other not economically active	59500001
0	Age less than 15 years	59500001
11444	Not applicable	59500001
3858	Employed	59500002
4485	Unemployed	59500002
1421	Discouraged work-seeker	59500002
8879	Other not economically active	59500002
0	Age less than 15 years	59500002
11793	Not applicable	59500002
6110	Employed	59500003
5590	Unemployed	59500003
1876	Discouraged work-seeker	59500003
12531	Other not economically active	59500003
0	Age less than 15 years	59500003
16300	Not applicable	59500003
6963	Employed	59500004
4760	Unemployed	59500004
1445	Discouraged work-seeker	59500004
11354	Other not economically active	59500004
0	Age less than 15 years	59500004
13442	Not applicable	59500004
4658	Employed	59500005
5658	Unemployed	59500005
804	Discouraged work-seeker	59500005
7053	Other not economically active	59500005
0	Age less than 15 years	59500005
10428	Not applicable	59500005
5197	Employed	59500006
4312	Unemployed	59500006
1138	Discouraged work-seeker	59500006
7714	Other not economically active	59500006
0	Age less than 15 years	59500006
9444	Not applicable	59500006
5487	Employed	59500007
4199	Unemployed	59500007
1369	Discouraged work-seeker	59500007
7653	Other not economically active	59500007
0	Age less than 15 years	59500007
10941	Not applicable	59500007
11575	Employed	59500008
3160	Unemployed	59500008
787	Discouraged work-seeker	59500008
7635	Other not economically active	59500008
0	Age less than 15 years	59500008
12383	Not applicable	59500008
9794	Employed	59500009
2960	Unemployed	59500009
1048	Discouraged work-seeker	59500009
6621	Other not economically active	59500009
0	Age less than 15 years	59500009
11501	Not applicable	59500009
10727	Employed	59500010
469	Unemployed	59500010
83	Discouraged work-seeker	59500010
3555	Other not economically active	59500010
0	Age less than 15 years	59500010
7415	Not applicable	59500010
14563	Employed	59500011
6306	Unemployed	59500011
1418	Discouraged work-seeker	59500011
11963	Other not economically active	59500011
0	Age less than 15 years	59500011
14454	Not applicable	59500011
5898	Employed	59500012
4901	Unemployed	59500012
820	Discouraged work-seeker	59500012
6429	Other not economically active	59500012
0	Age less than 15 years	59500012
9007	Not applicable	59500012
9803	Employed	59500013
5001	Unemployed	59500013
1444	Discouraged work-seeker	59500013
8039	Other not economically active	59500013
0	Age less than 15 years	59500013
11421	Not applicable	59500013
6949	Employed	59500014
4019	Unemployed	59500014
831	Discouraged work-seeker	59500014
6113	Other not economically active	59500014
0	Age less than 15 years	59500014
8917	Not applicable	59500014
11410	Employed	59500015
6377	Unemployed	59500015
1547	Discouraged work-seeker	59500015
8426	Other not economically active	59500015
0	Age less than 15 years	59500015
11585	Not applicable	59500015
13616	Employed	59500016
3546	Unemployed	59500016
706	Discouraged work-seeker	59500016
7976	Other not economically active	59500016
0	Age less than 15 years	59500016
10732	Not applicable	59500016
10082	Employed	59500017
4515	Unemployed	59500017
963	Discouraged work-seeker	59500017
10120	Other not economically active	59500017
0	Age less than 15 years	59500017
11051	Not applicable	59500017
13524	Employed	59500018
827	Unemployed	59500018
211	Discouraged work-seeker	59500018
5498	Other not economically active	59500018
0	Age less than 15 years	59500018
8399	Not applicable	59500018
12446	Employed	59500019
7598	Unemployed	59500019
1394	Discouraged work-seeker	59500019
9327	Other not economically active	59500019
0	Age less than 15 years	59500019
12755	Not applicable	59500019
6669	Employed	59500020
3431	Unemployed	59500020
686	Discouraged work-seeker	59500020
6140	Other not economically active	59500020
0	Age less than 15 years	59500020
6611	Not applicable	59500020
10696	Employed	59500021
2613	Unemployed	59500021
664	Discouraged work-seeker	59500021
5376	Other not economically active	59500021
0	Age less than 15 years	59500021
7633	Not applicable	59500021
7433	Employed	59500022
4210	Unemployed	59500022
1383	Discouraged work-seeker	59500022
5662	Other not economically active	59500022
0	Age less than 15 years	59500022
6846	Not applicable	59500022
11079	Employed	59500023
2654	Unemployed	59500023
672	Discouraged work-seeker	59500023
9005	Other not economically active	59500023
0	Age less than 15 years	59500023
7180	Not applicable	59500023
12973	Employed	59500024
3643	Unemployed	59500024
465	Discouraged work-seeker	59500024
7257	Other not economically active	59500024
0	Age less than 15 years	59500024
9117	Not applicable	59500024
14730	Employed	59500025
4542	Unemployed	59500025
547	Discouraged work-seeker	59500025
9482	Other not economically active	59500025
0	Age less than 15 years	59500025
9723	Not applicable	59500025
14717	Employed	59500026
2610	Unemployed	59500026
356	Discouraged work-seeker	59500026
8835	Other not economically active	59500026
0	Age less than 15 years	59500026
8083	Not applicable	59500026
11175	Employed	59500027
742	Unemployed	59500027
103	Discouraged work-seeker	59500027
4579	Other not economically active	59500027
0	Age less than 15 years	59500027
6374	Not applicable	59500027
9364	Employed	59500028
2165	Unemployed	59500028
292	Discouraged work-seeker	59500028
6910	Other not economically active	59500028
0	Age less than 15 years	59500028
4440	Not applicable	59500028
10253	Employed	59500029
5698	Unemployed	59500029
1295	Discouraged work-seeker	59500029
6864	Other not economically active	59500029
0	Age less than 15 years	59500029
9721	Not applicable	59500029
12255	Employed	59500030
4831	Unemployed	59500030
1168	Discouraged work-seeker	59500030
9378	Other not economically active	59500030
0	Age less than 15 years	59500030
9913	Not applicable	59500030
12944	Employed	59500031
1581	Unemployed	59500031
200	Discouraged work-seeker	59500031
8353	Other not economically active	59500031
0	Age less than 15 years	59500031
10034	Not applicable	59500031
8182	Employed	59500032
2456	Unemployed	59500032
573	Discouraged work-seeker	59500032
7179	Other not economically active	59500032
0	Age less than 15 years	59500032
3735	Not applicable	59500032
14268	Employed	59500033
1423	Unemployed	59500033
335	Discouraged work-seeker	59500033
7250	Other not economically active	59500033
0	Age less than 15 years	59500033
8652	Not applicable	59500033
14260	Employed	59500034
4159	Unemployed	59500034
920	Discouraged work-seeker	59500034
8300	Other not economically active	59500034
0	Age less than 15 years	59500034
9573	Not applicable	59500034
15225	Employed	59500035
711	Unemployed	59500035
147	Discouraged work-seeker	59500035
5594	Other not economically active	59500035
0	Age less than 15 years	59500035
9409	Not applicable	59500035
15314	Employed	59500036
1231	Unemployed	59500036
198	Discouraged work-seeker	59500036
5097	Other not economically active	59500036
0	Age less than 15 years	59500036
9320	Not applicable	59500036
13508	Employed	59500037
3487	Unemployed	59500037
1061	Discouraged work-seeker	59500037
11245	Other not economically active	59500037
0	Age less than 15 years	59500037
11476	Not applicable	59500037
8024	Employed	59500038
6692	Unemployed	59500038
1734	Discouraged work-seeker	59500038
9405	Other not economically active	59500038
0	Age less than 15 years	59500038
13096	Not applicable	59500038
9135	Employed	59500039
5975	Unemployed	59500039
1741	Discouraged work-seeker	59500039
4195	Other not economically active	59500039
0	Age less than 15 years	59500039
3567	Not applicable	59500039
8865	Employed	59500040
5380	Unemployed	59500040
1737	Discouraged work-seeker	59500040
6548	Other not economically active	59500040
0	Age less than 15 years	59500040
7512	Not applicable	59500040
8336	Employed	59500041
5382	Unemployed	59500041
2142	Discouraged work-seeker	59500041
8668	Other not economically active	59500041
0	Age less than 15 years	59500041
10804	Not applicable	59500041
8664	Employed	59500042
5423	Unemployed	59500042
2191	Discouraged work-seeker	59500042
9811	Other not economically active	59500042
0	Age less than 15 years	59500042
12755	Not applicable	59500042
7643	Employed	59500043
4708	Unemployed	59500043
1064	Discouraged work-seeker	59500043
8764	Other not economically active	59500043
0	Age less than 15 years	59500043
11033	Not applicable	59500043
8855	Employed	59500044
6560	Unemployed	59500044
2104	Discouraged work-seeker	59500044
10351	Other not economically active	59500044
0	Age less than 15 years	59500044
14108	Not applicable	59500044
11285	Employed	59500045
4261	Unemployed	59500045
1448	Discouraged work-seeker	59500045
9525	Other not economically active	59500045
0	Age less than 15 years	59500045
12175	Not applicable	59500045
7966	Employed	59500046
5298	Unemployed	59500046
1016	Discouraged work-seeker	59500046
7116	Other not economically active	59500046
0	Age less than 15 years	59500046
8062	Not applicable	59500046
6710	Employed	59500047
5051	Unemployed	59500047
1447	Discouraged work-seeker	59500047
8548	Other not economically active	59500047
0	Age less than 15 years	59500047
9167	Not applicable	59500047
9143	Employed	59500048
1561	Unemployed	59500048
419	Discouraged work-seeker	59500048
10829	Other not economically active	59500048
0	Age less than 15 years	59500048
8127	Not applicable	59500048
12767	Employed	59500049
2715	Unemployed	59500049
479	Discouraged work-seeker	59500049
10178	Other not economically active	59500049
0	Age less than 15 years	59500049
10029	Not applicable	59500049
10979	Employed	59500050
1687	Unemployed	59500050
355	Discouraged work-seeker	59500050
8740	Other not economically active	59500050
0	Age less than 15 years	59500050
6785	Not applicable	59500050
12744	Employed	59500051
3804	Unemployed	59500051
910	Discouraged work-seeker	59500051
12233	Other not economically active	59500051
0	Age less than 15 years	59500051
10526	Not applicable	59500051
10947	Employed	59500052
2543	Unemployed	59500052
609	Discouraged work-seeker	59500052
11610	Other not economically active	59500052
0	Age less than 15 years	59500052
9584	Not applicable	59500052
7657	Employed	59500053
6101	Unemployed	59500053
1464	Discouraged work-seeker	59500053
9084	Other not economically active	59500053
0	Age less than 15 years	59500053
11551	Not applicable	59500053
7326	Employed	59500054
5100	Unemployed	59500054
1043	Discouraged work-seeker	59500054
8303	Other not economically active	59500054
0	Age less than 15 years	59500054
9407	Not applicable	59500054
8813	Employed	59500055
5130	Unemployed	59500055
2621	Discouraged work-seeker	59500055
11858	Other not economically active	59500055
0	Age less than 15 years	59500055
14633	Not applicable	59500055
8008	Employed	59500056
5512	Unemployed	59500056
1671	Discouraged work-seeker	59500056
12248	Other not economically active	59500056
0	Age less than 15 years	59500056
14796	Not applicable	59500056
8762	Employed	59500057
6844	Unemployed	59500057
1387	Discouraged work-seeker	59500057
6876	Other not economically active	59500057
0	Age less than 15 years	59500057
11765	Not applicable	59500057
13174	Employed	59500058
4487	Unemployed	59500058
553	Discouraged work-seeker	59500058
8728	Other not economically active	59500058
0	Age less than 15 years	59500058
10724	Not applicable	59500058
9378	Employed	59500059
5518	Unemployed	59500059
2725	Discouraged work-seeker	59500059
13577	Other not economically active	59500059
0	Age less than 15 years	59500059
14144	Not applicable	59500059
12200	Employed	59500060
3520	Unemployed	59500060
1044	Discouraged work-seeker	59500060
9726	Other not economically active	59500060
0	Age less than 15 years	59500060
10747	Not applicable	59500060
11307	Employed	59500061
2301	Unemployed	59500061
793	Discouraged work-seeker	59500061
10414	Other not economically active	59500061
0	Age less than 15 years	59500061
8456	Not applicable	59500061
9622	Employed	59500062
3938	Unemployed	59500062
1051	Discouraged work-seeker	59500062
7321	Other not economically active	59500062
0	Age less than 15 years	59500062
8665	Not applicable	59500062
15244	Employed	59500063
1505	Unemployed	59500063
380	Discouraged work-seeker	59500063
7560	Other not economically active	59500063
0	Age less than 15 years	59500063
9333	Not applicable	59500063
15606	Employed	59500064
2201	Unemployed	59500064
447	Discouraged work-seeker	59500064
7876	Other not economically active	59500064
0	Age less than 15 years	59500064
9605	Not applicable	59500064
17556	Employed	59500065
3226	Unemployed	59500065
723	Discouraged work-seeker	59500065
9873	Other not economically active	59500065
0	Age less than 15 years	59500065
11426	Not applicable	59500065
13930	Employed	59500066
1574	Unemployed	59500066
347	Discouraged work-seeker	59500066
6371	Other not economically active	59500066
0	Age less than 15 years	59500066
8633	Not applicable	59500066
8931	Employed	59500067
6550	Unemployed	59500067
2019	Discouraged work-seeker	59500067
11443	Other not economically active	59500067
0	Age less than 15 years	59500067
15932	Not applicable	59500067
10616	Employed	59500068
3944	Unemployed	59500068
634	Discouraged work-seeker	59500068
12455	Other not economically active	59500068
0	Age less than 15 years	59500068
11708	Not applicable	59500068
9849	Employed	59500069
2922	Unemployed	59500069
625	Discouraged work-seeker	59500069
10190	Other not economically active	59500069
0	Age less than 15 years	59500069
9007	Not applicable	59500069
10047	Employed	59500070
1790	Unemployed	59500070
456	Discouraged work-seeker	59500070
9701	Other not economically active	59500070
0	Age less than 15 years	59500070
7984	Not applicable	59500070
12364	Employed	59500071
3760	Unemployed	59500071
681	Discouraged work-seeker	59500071
10211	Other not economically active	59500071
0	Age less than 15 years	59500071
9378	Not applicable	59500071
10316	Employed	59500072
4586	Unemployed	59500072
938	Discouraged work-seeker	59500072
11396	Other not economically active	59500072
0	Age less than 15 years	59500072
12089	Not applicable	59500072
10319	Employed	59500073
2354	Unemployed	59500073
345	Discouraged work-seeker	59500073
10102	Other not economically active	59500073
0	Age less than 15 years	59500073
8333	Not applicable	59500073
5813	Employed	59500074
3060	Unemployed	59500074
994	Discouraged work-seeker	59500074
6728	Other not economically active	59500074
0	Age less than 15 years	59500074
6284	Not applicable	59500074
6012	Employed	59500075
3830	Unemployed	59500075
875	Discouraged work-seeker	59500075
6009	Other not economically active	59500075
0	Age less than 15 years	59500075
4943	Not applicable	59500075
5778	Employed	59500076
3841	Unemployed	59500076
754	Discouraged work-seeker	59500076
5061	Other not economically active	59500076
0	Age less than 15 years	59500076
3954	Not applicable	59500076
9003	Employed	59500077
8239	Unemployed	59500077
2028	Discouraged work-seeker	59500077
12577	Other not economically active	59500077
0	Age less than 15 years	59500077
14202	Not applicable	59500077
5931	Employed	59500078
4316	Unemployed	59500078
1359	Discouraged work-seeker	59500078
7867	Other not economically active	59500078
0	Age less than 15 years	59500078
8913	Not applicable	59500078
9038	Employed	59500079
6235	Unemployed	59500079
1921	Discouraged work-seeker	59500079
9987	Other not economically active	59500079
0	Age less than 15 years	59500079
11803	Not applicable	59500079
7490	Employed	59500080
5223	Unemployed	59500080
1160	Discouraged work-seeker	59500080
7553	Other not economically active	59500080
0	Age less than 15 years	59500080
9252	Not applicable	59500080
5269	Employed	59500081
4682	Unemployed	59500081
736	Discouraged work-seeker	59500081
6330	Other not economically active	59500081
0	Age less than 15 years	59500081
7665	Not applicable	59500081
7763	Employed	59500082
4820	Unemployed	59500082
1391	Discouraged work-seeker	59500082
6609	Other not economically active	59500082
0	Age less than 15 years	59500082
8641	Not applicable	59500082
7691	Employed	59500083
6148	Unemployed	59500083
1267	Discouraged work-seeker	59500083
9863	Other not economically active	59500083
0	Age less than 15 years	59500083
11282	Not applicable	59500083
9550	Employed	59500084
4547	Unemployed	59500084
1791	Discouraged work-seeker	59500084
10855	Other not economically active	59500084
0	Age less than 15 years	59500084
12434	Not applicable	59500084
7806	Employed	59500085
5039	Unemployed	59500085
1679	Discouraged work-seeker	59500085
8061	Other not economically active	59500085
0	Age less than 15 years	59500085
9526	Not applicable	59500085
7123	Employed	59500086
6893	Unemployed	59500086
1937	Discouraged work-seeker	59500086
7282	Other not economically active	59500086
0	Age less than 15 years	59500086
10798	Not applicable	59500086
5841	Employed	59500087
4712	Unemployed	59500087
1272	Discouraged work-seeker	59500087
7064	Other not economically active	59500087
0	Age less than 15 years	59500087
7732	Not applicable	59500087
8893	Employed	59500088
4751	Unemployed	59500088
1254	Discouraged work-seeker	59500088
11484	Other not economically active	59500088
0	Age less than 15 years	59500088
9168	Not applicable	59500088
9673	Employed	59500089
7293	Unemployed	59500089
1850	Discouraged work-seeker	59500089
5512	Other not economically active	59500089
0	Age less than 15 years	59500089
7433	Not applicable	59500089
8963	Employed	59500090
2259	Unemployed	59500090
628	Discouraged work-seeker	59500090
7638	Other not economically active	59500090
0	Age less than 15 years	59500090
6808	Not applicable	59500090
7225	Employed	59500091
6211	Unemployed	59500091
1293	Discouraged work-seeker	59500091
8671	Other not economically active	59500091
0	Age less than 15 years	59500091
11856	Not applicable	59500091
9897	Employed	59500092
3725	Unemployed	59500092
794	Discouraged work-seeker	59500092
5664	Other not economically active	59500092
0	Age less than 15 years	59500092
7559	Not applicable	59500092
9756	Employed	59500093
5123	Unemployed	59500093
1535	Discouraged work-seeker	59500093
8176	Other not economically active	59500093
0	Age less than 15 years	59500093
11435	Not applicable	59500093
5582	Employed	59500094
5190	Unemployed	59500094
1667	Discouraged work-seeker	59500094
7210	Other not economically active	59500094
0	Age less than 15 years	59500094
10320	Not applicable	59500094
6310	Employed	59500095
5982	Unemployed	59500095
2539	Discouraged work-seeker	59500095
10155	Other not economically active	59500095
0	Age less than 15 years	59500095
13559	Not applicable	59500095
5272	Employed	59500096
5500	Unemployed	59500096
1902	Discouraged work-seeker	59500096
8861	Other not economically active	59500096
0	Age less than 15 years	59500096
12818	Not applicable	59500096
10473	Employed	59500097
953	Unemployed	59500097
259	Discouraged work-seeker	59500097
5573	Other not economically active	59500097
0	Age less than 15 years	59500097
7814	Not applicable	59500097
10442	Employed	59500098
5984	Unemployed	59500098
2068	Discouraged work-seeker	59500098
12272	Other not economically active	59500098
0	Age less than 15 years	59500098
15744	Not applicable	59500098
9809	Employed	59500099
5196	Unemployed	59500099
1282	Discouraged work-seeker	59500099
9164	Other not economically active	59500099
0	Age less than 15 years	59500099
12121	Not applicable	59500099
3122	Employed	59500100
5266	Unemployed	59500100
1338	Discouraged work-seeker	59500100
9803	Other not economically active	59500100
0	Age less than 15 years	59500100
12800	Not applicable	59500100
9854	Employed	59500101
3958	Unemployed	59500101
608	Discouraged work-seeker	59500101
4343	Other not economically active	59500101
0	Age less than 15 years	59500101
6697	Not applicable	59500101
14453	Employed	59500102
3445	Unemployed	59500102
1019	Discouraged work-seeker	59500102
10494	Other not economically active	59500102
0	Age less than 15 years	59500102
11922	Not applicable	59500102
6995	Employed	59500103
2871	Unemployed	59500103
1985	Discouraged work-seeker	59500103
6641	Other not economically active	59500103
0	Age less than 15 years	59500103
9290	Not applicable	59500103
388	Employed	93301001
572	Unemployed	93301001
328	Discouraged work-seeker	93301001
2671	Other not economically active	93301001
0	Age less than 15 years	93301001
3332	Not applicable	93301001
210	Employed	93301002
176	Unemployed	93301002
149	Discouraged work-seeker	93301002
2359	Other not economically active	93301002
0	Age less than 15 years	93301002
2461	Not applicable	93301002
523	Employed	93301003
978	Unemployed	93301003
482	Discouraged work-seeker	93301003
2865	Other not economically active	93301003
0	Age less than 15 years	93301003
3790	Not applicable	93301003
728	Employed	93301004
478	Unemployed	93301004
257	Discouraged work-seeker	93301004
3120	Other not economically active	93301004
0	Age less than 15 years	93301004
3690	Not applicable	93301004
603	Employed	93301005
1073	Unemployed	93301005
245	Discouraged work-seeker	93301005
3225	Other not economically active	93301005
0	Age less than 15 years	93301005
3582	Not applicable	93301005
667	Employed	93301006
819	Unemployed	93301006
333	Discouraged work-seeker	93301006
2702	Other not economically active	93301006
0	Age less than 15 years	93301006
3414	Not applicable	93301006
1796	Employed	93301007
1574	Unemployed	93301007
212	Discouraged work-seeker	93301007
3490	Other not economically active	93301007
0	Age less than 15 years	93301007
4684	Not applicable	93301007
667	Employed	93301008
524	Unemployed	93301008
457	Discouraged work-seeker	93301008
2636	Other not economically active	93301008
0	Age less than 15 years	93301008
3286	Not applicable	93301008
511	Employed	93301009
773	Unemployed	93301009
362	Discouraged work-seeker	93301009
1759	Other not economically active	93301009
0	Age less than 15 years	93301009
2681	Not applicable	93301009
470	Employed	93301010
566	Unemployed	93301010
510	Discouraged work-seeker	93301010
2828	Other not economically active	93301010
0	Age less than 15 years	93301010
3140	Not applicable	93301010
2900	Employed	93301011
616	Unemployed	93301011
192	Discouraged work-seeker	93301011
1555	Other not economically active	93301011
0	Age less than 15 years	93301011
2375	Not applicable	93301011
2180	Employed	93301012
1491	Unemployed	93301012
583	Discouraged work-seeker	93301012
3457	Other not economically active	93301012
0	Age less than 15 years	93301012
4818	Not applicable	93301012
3293	Employed	93301013
1288	Unemployed	93301013
248	Discouraged work-seeker	93301013
2939	Other not economically active	93301013
0	Age less than 15 years	93301013
3963	Not applicable	93301013
826	Employed	93301014
890	Unemployed	93301014
597	Discouraged work-seeker	93301014
3472	Other not economically active	93301014
0	Age less than 15 years	93301014
4437	Not applicable	93301014
410	Employed	93301015
403	Unemployed	93301015
138	Discouraged work-seeker	93301015
2729	Other not economically active	93301015
0	Age less than 15 years	93301015
2857	Not applicable	93301015
322	Employed	93301016
533	Unemployed	93301016
386	Discouraged work-seeker	93301016
2070	Other not economically active	93301016
0	Age less than 15 years	93301016
2750	Not applicable	93301016
634	Employed	93301017
762	Unemployed	93301017
158	Discouraged work-seeker	93301017
2288	Other not economically active	93301017
0	Age less than 15 years	93301017
2782	Not applicable	93301017
1204	Employed	93301018
389	Unemployed	93301018
577	Discouraged work-seeker	93301018
2231	Other not economically active	93301018
0	Age less than 15 years	93301018
3329	Not applicable	93301018
540	Employed	93301019
648	Unemployed	93301019
578	Discouraged work-seeker	93301019
3481	Other not economically active	93301019
0	Age less than 15 years	93301019
4278	Not applicable	93301019
513	Employed	93301020
406	Unemployed	93301020
387	Discouraged work-seeker	93301020
2809	Other not economically active	93301020
0	Age less than 15 years	93301020
3197	Not applicable	93301020
1464	Employed	93301021
694	Unemployed	93301021
275	Discouraged work-seeker	93301021
2801	Other not economically active	93301021
0	Age less than 15 years	93301021
3152	Not applicable	93301021
423	Employed	93301022
915	Unemployed	93301022
290	Discouraged work-seeker	93301022
2161	Other not economically active	93301022
0	Age less than 15 years	93301022
2964	Not applicable	93301022
356	Employed	93301023
795	Unemployed	93301023
382	Discouraged work-seeker	93301023
2201	Other not economically active	93301023
0	Age less than 15 years	93301023
3084	Not applicable	93301023
658	Employed	93301024
545	Unemployed	93301024
530	Discouraged work-seeker	93301024
2820	Other not economically active	93301024
0	Age less than 15 years	93301024
3886	Not applicable	93301024
697	Employed	93301025
1201	Unemployed	93301025
192	Discouraged work-seeker	93301025
4214	Other not economically active	93301025
0	Age less than 15 years	93301025
5390	Not applicable	93301025
504	Employed	93301026
828	Unemployed	93301026
409	Discouraged work-seeker	93301026
2556	Other not economically active	93301026
0	Age less than 15 years	93301026
3501	Not applicable	93301026
465	Employed	93301027
596	Unemployed	93301027
567	Discouraged work-seeker	93301027
1974	Other not economically active	93301027
0	Age less than 15 years	93301027
3099	Not applicable	93301027
673	Employed	93301028
538	Unemployed	93301028
310	Discouraged work-seeker	93301028
3169	Other not economically active	93301028
0	Age less than 15 years	93301028
3886	Not applicable	93301028
420	Employed	93301029
981	Unemployed	93301029
563	Discouraged work-seeker	93301029
2541	Other not economically active	93301029
0	Age less than 15 years	93301029
3686	Not applicable	93301029
425	Employed	93301030
542	Unemployed	93301030
147	Discouraged work-seeker	93301030
2191	Other not economically active	93301030
0	Age less than 15 years	93301030
2500	Not applicable	93301030
882	Employed	93302001
627	Unemployed	93302001
278	Discouraged work-seeker	93302001
2633	Other not economically active	93302001
0	Age less than 15 years	93302001
3045	Not applicable	93302001
610	Employed	93302002
577	Unemployed	93302002
46	Discouraged work-seeker	93302002
1874	Other not economically active	93302002
0	Age less than 15 years	93302002
1942	Not applicable	93302002
1380	Employed	93302003
911	Unemployed	93302003
60	Discouraged work-seeker	93302003
1290	Other not economically active	93302003
0	Age less than 15 years	93302003
1992	Not applicable	93302003
1879	Employed	93302004
1031	Unemployed	93302004
117	Discouraged work-seeker	93302004
2508	Other not economically active	93302004
0	Age less than 15 years	93302004
2993	Not applicable	93302004
931	Employed	93302005
1153	Unemployed	93302005
358	Discouraged work-seeker	93302005
1789	Other not economically active	93302005
0	Age less than 15 years	93302005
2738	Not applicable	93302005
986	Employed	93302006
1034	Unemployed	93302006
281	Discouraged work-seeker	93302006
2402	Other not economically active	93302006
0	Age less than 15 years	93302006
3185	Not applicable	93302006
662	Employed	93302007
373	Unemployed	93302007
119	Discouraged work-seeker	93302007
2706	Other not economically active	93302007
0	Age less than 15 years	93302007
2615	Not applicable	93302007
1317	Employed	93302008
917	Unemployed	93302008
282	Discouraged work-seeker	93302008
2241	Other not economically active	93302008
0	Age less than 15 years	93302008
2605	Not applicable	93302008
571	Employed	93302009
528	Unemployed	93302009
202	Discouraged work-seeker	93302009
3152	Other not economically active	93302009
0	Age less than 15 years	93302009
3834	Not applicable	93302009
613	Employed	93302010
627	Unemployed	93302010
244	Discouraged work-seeker	93302010
3465	Other not economically active	93302010
0	Age less than 15 years	93302010
3859	Not applicable	93302010
549	Employed	93302011
813	Unemployed	93302011
181	Discouraged work-seeker	93302011
2875	Other not economically active	93302011
0	Age less than 15 years	93302011
3395	Not applicable	93302011
446	Employed	93302012
467	Unemployed	93302012
489	Discouraged work-seeker	93302012
2292	Other not economically active	93302012
0	Age less than 15 years	93302012
3129	Not applicable	93302012
545	Employed	93302013
570	Unemployed	93302013
285	Discouraged work-seeker	93302013
3017	Other not economically active	93302013
0	Age less than 15 years	93302013
3503	Not applicable	93302013
2828	Employed	93302014
173	Unemployed	93302014
531	Discouraged work-seeker	93302014
1656	Other not economically active	93302014
0	Age less than 15 years	93302014
2460	Not applicable	93302014
588	Employed	93302015
553	Unemployed	93302015
273	Discouraged work-seeker	93302015
2890	Other not economically active	93302015
0	Age less than 15 years	93302015
3473	Not applicable	93302015
389	Employed	93302016
610	Unemployed	93302016
194	Discouraged work-seeker	93302016
2842	Other not economically active	93302016
0	Age less than 15 years	93302016
3414	Not applicable	93302016
379	Employed	93302017
737	Unemployed	93302017
120	Discouraged work-seeker	93302017
2774	Other not economically active	93302017
0	Age less than 15 years	93302017
3494	Not applicable	93302017
449	Employed	93302018
1037	Unemployed	93302018
352	Discouraged work-seeker	93302018
2255	Other not economically active	93302018
0	Age less than 15 years	93302018
3511	Not applicable	93302018
531	Employed	93302019
708	Unemployed	93302019
428	Discouraged work-seeker	93302019
2631	Other not economically active	93302019
0	Age less than 15 years	93302019
3344	Not applicable	93302019
772	Employed	93302020
943	Unemployed	93302020
143	Discouraged work-seeker	93302020
2339	Other not economically active	93302020
0	Age less than 15 years	93302020
3541	Not applicable	93302020
620	Employed	93302021
704	Unemployed	93302021
404	Discouraged work-seeker	93302021
2660	Other not economically active	93302021
0	Age less than 15 years	93302021
3414	Not applicable	93302021
810	Employed	93302022
316	Unemployed	93302022
292	Discouraged work-seeker	93302022
3348	Other not economically active	93302022
0	Age less than 15 years	93302022
3965	Not applicable	93302022
345	Employed	93302023
637	Unemployed	93302023
578	Discouraged work-seeker	93302023
2553	Other not economically active	93302023
0	Age less than 15 years	93302023
3335	Not applicable	93302023
321	Employed	93302024
213	Unemployed	93302024
382	Discouraged work-seeker	93302024
1534	Other not economically active	93302024
0	Age less than 15 years	93302024
2048	Not applicable	93302024
646	Employed	93302025
529	Unemployed	93302025
330	Discouraged work-seeker	93302025
2361	Other not economically active	93302025
0	Age less than 15 years	93302025
3186	Not applicable	93302025
350	Employed	93302026
226	Unemployed	93302026
310	Discouraged work-seeker	93302026
2922	Other not economically active	93302026
0	Age less than 15 years	93302026
3212	Not applicable	93302026
390	Employed	93302027
589	Unemployed	93302027
371	Discouraged work-seeker	93302027
1724	Other not economically active	93302027
0	Age less than 15 years	93302027
2364	Not applicable	93302027
222	Employed	93302028
312	Unemployed	93302028
60	Discouraged work-seeker	93302028
2038	Other not economically active	93302028
0	Age less than 15 years	93302028
2055	Not applicable	93302028
6825	Employed	93302029
889	Unemployed	93302029
193	Discouraged work-seeker	93302029
1283	Other not economically active	93302029
0	Age less than 15 years	93302029
2449	Not applicable	93302029
971	Employed	93303001
1324	Unemployed	93303001
375	Discouraged work-seeker	93303001
3982	Other not economically active	93303001
0	Age less than 15 years	93303001
4807	Not applicable	93303001
519	Employed	93303002
696	Unemployed	93303002
581	Discouraged work-seeker	93303002
4046	Other not economically active	93303002
0	Age less than 15 years	93303002
4613	Not applicable	93303002
765	Employed	93303003
672	Unemployed	93303003
862	Discouraged work-seeker	93303003
4072	Other not economically active	93303003
0	Age less than 15 years	93303003
4964	Not applicable	93303003
859	Employed	93303004
859	Unemployed	93303004
578	Discouraged work-seeker	93303004
4115	Other not economically active	93303004
0	Age less than 15 years	93303004
4954	Not applicable	93303004
1843	Employed	93303005
1360	Unemployed	93303005
575	Discouraged work-seeker	93303005
4125	Other not economically active	93303005
0	Age less than 15 years	93303005
5624	Not applicable	93303005
828	Employed	93303006
1399	Unemployed	93303006
365	Discouraged work-seeker	93303006
3422	Other not economically active	93303006
0	Age less than 15 years	93303006
4240	Not applicable	93303006
974	Employed	93303007
1286	Unemployed	93303007
415	Discouraged work-seeker	93303007
3718	Other not economically active	93303007
0	Age less than 15 years	93303007
4388	Not applicable	93303007
775	Employed	93303008
1025	Unemployed	93303008
259	Discouraged work-seeker	93303008
3351	Other not economically active	93303008
0	Age less than 15 years	93303008
3651	Not applicable	93303008
1970	Employed	93303009
2781	Unemployed	93303009
250	Discouraged work-seeker	93303009
5889	Other not economically active	93303009
0	Age less than 15 years	93303009
7041	Not applicable	93303009
682	Employed	93303010
745	Unemployed	93303010
400	Discouraged work-seeker	93303010
2042	Other not economically active	93303010
0	Age less than 15 years	93303010
2377	Not applicable	93303010
744	Employed	93303011
1058	Unemployed	93303011
222	Discouraged work-seeker	93303011
2471	Other not economically active	93303011
0	Age less than 15 years	93303011
3225	Not applicable	93303011
1940	Employed	93303012
1444	Unemployed	93303012
407	Discouraged work-seeker	93303012
3198	Other not economically active	93303012
0	Age less than 15 years	93303012
4238	Not applicable	93303012
4097	Employed	93303013
1060	Unemployed	93303013
193	Discouraged work-seeker	93303013
3557	Other not economically active	93303013
0	Age less than 15 years	93303013
4333	Not applicable	93303013
8766	Employed	93303014
342	Unemployed	93303014
53	Discouraged work-seeker	93303014
1557	Other not economically active	93303014
0	Age less than 15 years	93303014
3112	Not applicable	93303014
2741	Employed	93303015
237	Unemployed	93303015
42	Discouraged work-seeker	93303015
1524	Other not economically active	93303015
0	Age less than 15 years	93303015
1509	Not applicable	93303015
8000	Employed	93303016
1170	Unemployed	93303016
378	Discouraged work-seeker	93303016
2977	Other not economically active	93303016
0	Age less than 15 years	93303016
5084	Not applicable	93303016
3347	Employed	93303017
1574	Unemployed	93303017
527	Discouraged work-seeker	93303017
2982	Other not economically active	93303017
0	Age less than 15 years	93303017
4506	Not applicable	93303017
1800	Employed	93303018
1328	Unemployed	93303018
572	Discouraged work-seeker	93303018
4123	Other not economically active	93303018
0	Age less than 15 years	93303018
4943	Not applicable	93303018
2672	Employed	93303019
767	Unemployed	93303019
203	Discouraged work-seeker	93303019
1976	Other not economically active	93303019
0	Age less than 15 years	93303019
2701	Not applicable	93303019
1961	Employed	93303020
1733	Unemployed	93303020
585	Discouraged work-seeker	93303020
3360	Other not economically active	93303020
0	Age less than 15 years	93303020
4411	Not applicable	93303020
4181	Employed	93303021
1763	Unemployed	93303021
261	Discouraged work-seeker	93303021
3407	Other not economically active	93303021
0	Age less than 15 years	93303021
4745	Not applicable	93303021
1403	Employed	93303022
1214	Unemployed	93303022
234	Discouraged work-seeker	93303022
2660	Other not economically active	93303022
0	Age less than 15 years	93303022
3612	Not applicable	93303022
2743	Employed	93303023
720	Unemployed	93303023
453	Discouraged work-seeker	93303023
2201	Other not economically active	93303023
0	Age less than 15 years	93303023
3057	Not applicable	93303023
1327	Employed	93303024
1417	Unemployed	93303024
549	Discouraged work-seeker	93303024
3240	Other not economically active	93303024
0	Age less than 15 years	93303024
3836	Not applicable	93303024
1818	Employed	93303025
1377	Unemployed	93303025
561	Discouraged work-seeker	93303025
3263	Other not economically active	93303025
0	Age less than 15 years	93303025
4555	Not applicable	93303025
1253	Employed	93303026
1424	Unemployed	93303026
122	Discouraged work-seeker	93303026
2681	Other not economically active	93303026
0	Age less than 15 years	93303026
3960	Not applicable	93303026
1311	Employed	93303027
1271	Unemployed	93303027
580	Discouraged work-seeker	93303027
3837	Other not economically active	93303027
0	Age less than 15 years	93303027
4563	Not applicable	93303027
1246	Employed	93303028
1484	Unemployed	93303028
438	Discouraged work-seeker	93303028
3570	Other not economically active	93303028
0	Age less than 15 years	93303028
4516	Not applicable	93303028
2479	Employed	93303029
2130	Unemployed	93303029
584	Discouraged work-seeker	93303029
4452	Other not economically active	93303029
0	Age less than 15 years	93303029
5944	Not applicable	93303029
1037	Employed	93303030
928	Unemployed	93303030
251	Discouraged work-seeker	93303030
2198	Other not economically active	93303030
0	Age less than 15 years	93303030
2710	Not applicable	93303030
3338	Employed	93303031
1307	Unemployed	93303031
369	Discouraged work-seeker	93303031
3057	Other not economically active	93303031
0	Age less than 15 years	93303031
4009	Not applicable	93303031
1584	Employed	93303032
1408	Unemployed	93303032
331	Discouraged work-seeker	93303032
4141	Other not economically active	93303032
0	Age less than 15 years	93303032
4699	Not applicable	93303032
2048	Employed	93303033
1819	Unemployed	93303033
469	Discouraged work-seeker	93303033
5126	Other not economically active	93303033
0	Age less than 15 years	93303033
6584	Not applicable	93303033
1462	Employed	93303034
1415	Unemployed	93303034
379	Discouraged work-seeker	93303034
3837	Other not economically active	93303034
0	Age less than 15 years	93303034
4987	Not applicable	93303034
3054	Employed	93304001
1939	Unemployed	93304001
237	Discouraged work-seeker	93304001
2920	Other not economically active	93304001
0	Age less than 15 years	93304001
4485	Not applicable	93304001
1229	Employed	93304002
1558	Unemployed	93304002
301	Discouraged work-seeker	93304002
1179	Other not economically active	93304002
0	Age less than 15 years	93304002
2340	Not applicable	93304002
1201	Employed	93304003
947	Unemployed	93304003
123	Discouraged work-seeker	93304003
1702	Other not economically active	93304003
0	Age less than 15 years	93304003
2464	Not applicable	93304003
1808	Employed	93304004
1058	Unemployed	93304004
46	Discouraged work-seeker	93304004
1801	Other not economically active	93304004
0	Age less than 15 years	93304004
2305	Not applicable	93304004
1682	Employed	93304005
510	Unemployed	93304005
66	Discouraged work-seeker	93304005
1906	Other not economically active	93304005
0	Age less than 15 years	93304005
2107	Not applicable	93304005
1528	Employed	93304006
932	Unemployed	93304006
49	Discouraged work-seeker	93304006
1779	Other not economically active	93304006
0	Age less than 15 years	93304006
2227	Not applicable	93304006
1514	Employed	93304007
712	Unemployed	93304007
230	Discouraged work-seeker	93304007
1597	Other not economically active	93304007
0	Age less than 15 years	93304007
1949	Not applicable	93304007
1572	Employed	93304008
1444	Unemployed	93304008
73	Discouraged work-seeker	93304008
1844	Other not economically active	93304008
0	Age less than 15 years	93304008
2940	Not applicable	93304008
1247	Employed	93304009
1459	Unemployed	93304009
268	Discouraged work-seeker	93304009
1412	Other not economically active	93304009
0	Age less than 15 years	93304009
2615	Not applicable	93304009
1754	Employed	93304010
1133	Unemployed	93304010
226	Discouraged work-seeker	93304010
2138	Other not economically active	93304010
0	Age less than 15 years	93304010
2579	Not applicable	93304010
2289	Employed	93304011
197	Unemployed	93304011
103	Discouraged work-seeker	93304011
1652	Other not economically active	93304011
0	Age less than 15 years	93304011
1459	Not applicable	93304011
3555	Employed	93304012
368	Unemployed	93304012
65	Discouraged work-seeker	93304012
2206	Other not economically active	93304012
0	Age less than 15 years	93304012
2083	Not applicable	93304012
1332	Employed	93304013
977	Unemployed	93304013
637	Discouraged work-seeker	93304013
2139	Other not economically active	93304013
0	Age less than 15 years	93304013
3683	Not applicable	93304013
829	Employed	93304014
393	Unemployed	93304014
59	Discouraged work-seeker	93304014
748	Other not economically active	93304014
0	Age less than 15 years	93304014
1144	Not applicable	93304014
2199	Employed	93304015
1287	Unemployed	93304015
220	Discouraged work-seeker	93304015
1809	Other not economically active	93304015
0	Age less than 15 years	93304015
3460	Not applicable	93304015
1188	Employed	93304016
1548	Unemployed	93304016
462	Discouraged work-seeker	93304016
3682	Other not economically active	93304016
0	Age less than 15 years	93304016
6171	Not applicable	93304016
2215	Employed	93304017
2652	Unemployed	93304017
665	Discouraged work-seeker	93304017
3587	Other not economically active	93304017
0	Age less than 15 years	93304017
7054	Not applicable	93304017
3760	Employed	93304018
1165	Unemployed	93304018
257	Discouraged work-seeker	93304018
2796	Other not economically active	93304018
0	Age less than 15 years	93304018
4347	Not applicable	93304018
3086	Employed	93305001
99	Unemployed	93305001
34	Discouraged work-seeker	93305001
1336	Other not economically active	93305001
0	Age less than 15 years	93305001
1068	Not applicable	93305001
3196	Employed	93305002
572	Unemployed	93305002
39	Discouraged work-seeker	93305002
2073	Other not economically active	93305002
0	Age less than 15 years	93305002
2375	Not applicable	93305002
810	Employed	93305003
716	Unemployed	93305003
269	Discouraged work-seeker	93305003
2296	Other not economically active	93305003
0	Age less than 15 years	93305003
2770	Not applicable	93305003
297	Employed	93305004
334	Unemployed	93305004
441	Discouraged work-seeker	93305004
2571	Other not economically active	93305004
0	Age less than 15 years	93305004
2654	Not applicable	93305004
331	Employed	93305005
663	Unemployed	93305005
397	Discouraged work-seeker	93305005
1868	Other not economically active	93305005
0	Age less than 15 years	93305005
2668	Not applicable	93305005
1085	Employed	93305006
636	Unemployed	93305006
381	Discouraged work-seeker	93305006
2279	Other not economically active	93305006
0	Age less than 15 years	93305006
2855	Not applicable	93305006
476	Employed	93305007
862	Unemployed	93305007
450	Discouraged work-seeker	93305007
1738	Other not economically active	93305007
0	Age less than 15 years	93305007
2657	Not applicable	93305007
365	Employed	93305008
669	Unemployed	93305008
103	Discouraged work-seeker	93305008
3240	Other not economically active	93305008
0	Age less than 15 years	93305008
3293	Not applicable	93305008
642	Employed	93305009
821	Unemployed	93305009
278	Discouraged work-seeker	93305009
1993	Other not economically active	93305009
0	Age less than 15 years	93305009
2632	Not applicable	93305009
669	Employed	93305010
642	Unemployed	93305010
287	Discouraged work-seeker	93305010
2318	Other not economically active	93305010
0	Age less than 15 years	93305010
2732	Not applicable	93305010
839	Employed	93305011
1268	Unemployed	93305011
544	Discouraged work-seeker	93305011
2379	Other not economically active	93305011
0	Age less than 15 years	93305011
3762	Not applicable	93305011
771	Employed	93305012
812	Unemployed	93305012
440	Discouraged work-seeker	93305012
2641	Other not economically active	93305012
0	Age less than 15 years	93305012
3594	Not applicable	93305012
546	Employed	93305013
362	Unemployed	93305013
323	Discouraged work-seeker	93305013
2281	Other not economically active	93305013
0	Age less than 15 years	93305013
2571	Not applicable	93305013
381	Employed	93305014
489	Unemployed	93305014
370	Discouraged work-seeker	93305014
1414	Other not economically active	93305014
0	Age less than 15 years	93305014
2004	Not applicable	93305014
563	Employed	93402001
266	Unemployed	93402001
461	Discouraged work-seeker	93402001
2225	Other not economically active	93402001
0	Age less than 15 years	93402001
3021	Not applicable	93402001
500	Employed	93402002
641	Unemployed	93402002
245	Discouraged work-seeker	93402002
2351	Other not economically active	93402002
0	Age less than 15 years	93402002
3257	Not applicable	93402002
695	Employed	93402003
441	Unemployed	93402003
571	Discouraged work-seeker	93402003
2479	Other not economically active	93402003
0	Age less than 15 years	93402003
3194	Not applicable	93402003
751	Employed	93402004
985	Unemployed	93402004
271	Discouraged work-seeker	93402004
1828	Other not economically active	93402004
0	Age less than 15 years	93402004
2607	Not applicable	93402004
1409	Employed	93402005
1049	Unemployed	93402005
387	Discouraged work-seeker	93402005
2569	Other not economically active	93402005
0	Age less than 15 years	93402005
3802	Not applicable	93402005
484	Employed	93402006
534	Unemployed	93402006
657	Discouraged work-seeker	93402006
1667	Other not economically active	93402006
0	Age less than 15 years	93402006
2864	Not applicable	93402006
451	Employed	93402007
430	Unemployed	93402007
658	Discouraged work-seeker	93402007
1982	Other not economically active	93402007
0	Age less than 15 years	93402007
2885	Not applicable	93402007
450	Employed	93402008
470	Unemployed	93402008
192	Discouraged work-seeker	93402008
1718	Other not economically active	93402008
0	Age less than 15 years	93402008
2528	Not applicable	93402008
823	Employed	93402009
880	Unemployed	93402009
376	Discouraged work-seeker	93402009
2311	Other not economically active	93402009
0	Age less than 15 years	93402009
3744	Not applicable	93402009
624	Employed	93402010
684	Unemployed	93402010
715	Discouraged work-seeker	93402010
1410	Other not economically active	93402010
0	Age less than 15 years	93402010
2631	Not applicable	93402010
568	Employed	93402011
646	Unemployed	93402011
818	Discouraged work-seeker	93402011
2368	Other not economically active	93402011
0	Age less than 15 years	93402011
4030	Not applicable	93402011
1090	Employed	93402012
1213	Unemployed	93402012
577	Discouraged work-seeker	93402012
1809	Other not economically active	93402012
0	Age less than 15 years	93402012
3622	Not applicable	93402012
1005	Employed	93402013
745	Unemployed	93402013
394	Discouraged work-seeker	93402013
1644	Other not economically active	93402013
0	Age less than 15 years	93402013
2607	Not applicable	93402013
657	Employed	93403001
1107	Unemployed	93403001
2434	Discouraged work-seeker	93403001
5122	Other not economically active	93403001
0	Age less than 15 years	93403001
8098	Not applicable	93403001
614	Employed	93403002
987	Unemployed	93403002
1276	Discouraged work-seeker	93403002
3634	Other not economically active	93403002
0	Age less than 15 years	93403002
5422	Not applicable	93403002
1311	Employed	93403003
1628	Unemployed	93403003
543	Discouraged work-seeker	93403003
4887	Other not economically active	93403003
0	Age less than 15 years	93403003
6303	Not applicable	93403003
1283	Employed	93403004
1570	Unemployed	93403004
1135	Discouraged work-seeker	93403004
4612	Other not economically active	93403004
0	Age less than 15 years	93403004
6611	Not applicable	93403004
2343	Employed	93403005
1578	Unemployed	93403005
624	Discouraged work-seeker	93403005
5986	Other not economically active	93403005
0	Age less than 15 years	93403005
6213	Not applicable	93403005
1066	Employed	93403006
1397	Unemployed	93403006
990	Discouraged work-seeker	93403006
5169	Other not economically active	93403006
0	Age less than 15 years	93403006
6792	Not applicable	93403006
1100	Employed	93403007
1537	Unemployed	93403007
1489	Discouraged work-seeker	93403007
5834	Other not economically active	93403007
0	Age less than 15 years	93403007
8286	Not applicable	93403007
567	Employed	93403008
879	Unemployed	93403008
845	Discouraged work-seeker	93403008
5328	Other not economically active	93403008
0	Age less than 15 years	93403008
6444	Not applicable	93403008
650	Employed	93403009
898	Unemployed	93403009
574	Discouraged work-seeker	93403009
5614	Other not economically active	93403009
0	Age less than 15 years	93403009
6363	Not applicable	93403009
1339	Employed	93403010
575	Unemployed	93403010
943	Discouraged work-seeker	93403010
5094	Other not economically active	93403010
0	Age less than 15 years	93403010
6462	Not applicable	93403010
715	Employed	93403011
1256	Unemployed	93403011
1090	Discouraged work-seeker	93403011
6150	Other not economically active	93403011
0	Age less than 15 years	93403011
7813	Not applicable	93403011
803	Employed	93403012
1200	Unemployed	93403012
1241	Discouraged work-seeker	93403012
4707	Other not economically active	93403012
0	Age less than 15 years	93403012
6515	Not applicable	93403012
3585	Employed	93403013
1538	Unemployed	93403013
481	Discouraged work-seeker	93403013
5631	Other not economically active	93403013
0	Age less than 15 years	93403013
6430	Not applicable	93403013
1204	Employed	93403014
1411	Unemployed	93403014
763	Discouraged work-seeker	93403014
5119	Other not economically active	93403014
0	Age less than 15 years	93403014
6604	Not applicable	93403014
1606	Employed	93403015
1866	Unemployed	93403015
1322	Discouraged work-seeker	93403015
5526	Other not economically active	93403015
0	Age less than 15 years	93403015
7577	Not applicable	93403015
704	Employed	93403016
1363	Unemployed	93403016
1337	Discouraged work-seeker	93403016
3708	Other not economically active	93403016
0	Age less than 15 years	93403016
5514	Not applicable	93403016
749	Employed	93403017
736	Unemployed	93403017
1871	Discouraged work-seeker	93403017
3666	Other not economically active	93403017
0	Age less than 15 years	93403017
5735	Not applicable	93403017
1439	Employed	93403018
1786	Unemployed	93403018
744	Discouraged work-seeker	93403018
5185	Other not economically active	93403018
0	Age less than 15 years	93403018
7058	Not applicable	93403018
1659	Employed	93403019
1935	Unemployed	93403019
754	Discouraged work-seeker	93403019
5123	Other not economically active	93403019
0	Age less than 15 years	93403019
6591	Not applicable	93403019
3763	Employed	93403020
1238	Unemployed	93403020
478	Discouraged work-seeker	93403020
5157	Other not economically active	93403020
0	Age less than 15 years	93403020
6438	Not applicable	93403020
5040	Employed	93403021
1660	Unemployed	93403021
669	Discouraged work-seeker	93403021
5308	Other not economically active	93403021
0	Age less than 15 years	93403021
6560	Not applicable	93403021
3394	Employed	93403022
1960	Unemployed	93403022
629	Discouraged work-seeker	93403022
4911	Other not economically active	93403022
0	Age less than 15 years	93403022
5492	Not applicable	93403022
3900	Employed	93403023
1887	Unemployed	93403023
326	Discouraged work-seeker	93403023
4994	Other not economically active	93403023
0	Age less than 15 years	93403023
5444	Not applicable	93403023
3371	Employed	93403024
1634	Unemployed	93403024
954	Discouraged work-seeker	93403024
5370	Other not economically active	93403024
0	Age less than 15 years	93403024
7384	Not applicable	93403024
2545	Employed	93403025
1870	Unemployed	93403025
407	Discouraged work-seeker	93403025
4504	Other not economically active	93403025
0	Age less than 15 years	93403025
6000	Not applicable	93403025
1663	Employed	93403026
903	Unemployed	93403026
884	Discouraged work-seeker	93403026
4878	Other not economically active	93403026
0	Age less than 15 years	93403026
6210	Not applicable	93403026
2191	Employed	93403027
1747	Unemployed	93403027
419	Discouraged work-seeker	93403027
5399	Other not economically active	93403027
0	Age less than 15 years	93403027
7351	Not applicable	93403027
1348	Employed	93403028
1486	Unemployed	93403028
209	Discouraged work-seeker	93403028
4453	Other not economically active	93403028
0	Age less than 15 years	93403028
5942	Not applicable	93403028
1682	Employed	93403029
1673	Unemployed	93403029
1138	Discouraged work-seeker	93403029
5027	Other not economically active	93403029
0	Age less than 15 years	93403029
7334	Not applicable	93403029
1431	Employed	93403030
1826	Unemployed	93403030
648	Discouraged work-seeker	93403030
3558	Other not economically active	93403030
0	Age less than 15 years	93403030
5531	Not applicable	93403030
1449	Employed	93403031
1702	Unemployed	93403031
669	Discouraged work-seeker	93403031
3821	Other not economically active	93403031
0	Age less than 15 years	93403031
5234	Not applicable	93403031
2022	Employed	93403032
2239	Unemployed	93403032
445	Discouraged work-seeker	93403032
4195	Other not economically active	93403032
0	Age less than 15 years	93403032
5591	Not applicable	93403032
2703	Employed	93403033
1541	Unemployed	93403033
771	Discouraged work-seeker	93403033
4791	Other not economically active	93403033
0	Age less than 15 years	93403033
7182	Not applicable	93403033
2004	Employed	93403034
1914	Unemployed	93403034
630	Discouraged work-seeker	93403034
4251	Other not economically active	93403034
0	Age less than 15 years	93403034
6264	Not applicable	93403034
2753	Employed	93403035
1540	Unemployed	93403035
971	Discouraged work-seeker	93403035
5459	Other not economically active	93403035
0	Age less than 15 years	93403035
6970	Not applicable	93403035
3636	Employed	93403036
2046	Unemployed	93403036
251	Discouraged work-seeker	93403036
5707	Other not economically active	93403036
0	Age less than 15 years	93403036
5026	Not applicable	93403036
2730	Employed	93403037
1642	Unemployed	93403037
734	Discouraged work-seeker	93403037
3762	Other not economically active	93403037
0	Age less than 15 years	93403037
5458	Not applicable	93403037
2719	Employed	93403038
904	Unemployed	93403038
839	Discouraged work-seeker	93403038
4649	Other not economically active	93403038
0	Age less than 15 years	93403038
5560	Not applicable	93403038
1272	Employed	93403039
1411	Unemployed	93403039
686	Discouraged work-seeker	93403039
4257	Other not economically active	93403039
0	Age less than 15 years	93403039
5754	Not applicable	93403039
582	Employed	93403040
845	Unemployed	93403040
319	Discouraged work-seeker	93403040
4945	Other not economically active	93403040
0	Age less than 15 years	93403040
5373	Not applicable	93403040
4749	Employed	93401001
775	Unemployed	93401001
490	Discouraged work-seeker	93401001
2522	Other not economically active	93401001
0	Age less than 15 years	93401001
4829	Not applicable	93401001
8887	Employed	93401002
967	Unemployed	93401002
251	Discouraged work-seeker	93401002
2687	Other not economically active	93401002
0	Age less than 15 years	93401002
3956	Not applicable	93401002
3782	Employed	93401003
1704	Unemployed	93401003
168	Discouraged work-seeker	93401003
3002	Other not economically active	93401003
0	Age less than 15 years	93401003
4103	Not applicable	93401003
1996	Employed	93401004
247	Unemployed	93401004
113	Discouraged work-seeker	93401004
1297	Other not economically active	93401004
0	Age less than 15 years	93401004
1443	Not applicable	93401004
2697	Employed	93401005
1169	Unemployed	93401005
644	Discouraged work-seeker	93401005
2402	Other not economically active	93401005
0	Age less than 15 years	93401005
3550	Not applicable	93401005
3476	Employed	93401006
1031	Unemployed	93401006
203	Discouraged work-seeker	93401006
2055	Other not economically active	93401006
0	Age less than 15 years	93401006
3163	Not applicable	93401006
1212	Employed	93404001
1212	Unemployed	93404001
718	Discouraged work-seeker	93404001
3328	Other not economically active	93404001
0	Age less than 15 years	93404001
5525	Not applicable	93404001
804	Employed	93404002
1127	Unemployed	93404002
1195	Discouraged work-seeker	93404002
3191	Other not economically active	93404002
0	Age less than 15 years	93404002
5250	Not applicable	93404002
2196	Employed	93404003
1365	Unemployed	93404003
689	Discouraged work-seeker	93404003
4058	Other not economically active	93404003
0	Age less than 15 years	93404003
6174	Not applicable	93404003
1998	Employed	93404004
1683	Unemployed	93404004
1077	Discouraged work-seeker	93404004
5136	Other not economically active	93404004
0	Age less than 15 years	93404004
7600	Not applicable	93404004
723	Employed	93404005
950	Unemployed	93404005
1171	Discouraged work-seeker	93404005
4035	Other not economically active	93404005
0	Age less than 15 years	93404005
5665	Not applicable	93404005
958	Employed	93404006
1256	Unemployed	93404006
1058	Discouraged work-seeker	93404006
3326	Other not economically active	93404006
0	Age less than 15 years	93404006
5628	Not applicable	93404006
1025	Employed	93404007
1324	Unemployed	93404007
349	Discouraged work-seeker	93404007
3847	Other not economically active	93404007
0	Age less than 15 years	93404007
5375	Not applicable	93404007
1445	Employed	93404008
972	Unemployed	93404008
1202	Discouraged work-seeker	93404008
4072	Other not economically active	93404008
0	Age less than 15 years	93404008
5729	Not applicable	93404008
1512	Employed	93404009
1225	Unemployed	93404009
364	Discouraged work-seeker	93404009
4171	Other not economically active	93404009
0	Age less than 15 years	93404009
5653	Not applicable	93404009
835	Employed	93404010
644	Unemployed	93404010
582	Discouraged work-seeker	93404010
3434	Other not economically active	93404010
0	Age less than 15 years	93404010
4207	Not applicable	93404010
874	Employed	93404011
961	Unemployed	93404011
889	Discouraged work-seeker	93404011
3237	Other not economically active	93404011
0	Age less than 15 years	93404011
4755	Not applicable	93404011
784	Employed	93404012
909	Unemployed	93404012
611	Discouraged work-seeker	93404012
3241	Other not economically active	93404012
0	Age less than 15 years	93404012
4845	Not applicable	93404012
1189	Employed	93404013
1423	Unemployed	93404013
542	Discouraged work-seeker	93404013
4946	Other not economically active	93404013
0	Age less than 15 years	93404013
5855	Not applicable	93404013
974	Employed	93404014
1174	Unemployed	93404014
484	Discouraged work-seeker	93404014
5101	Other not economically active	93404014
0	Age less than 15 years	93404014
5926	Not applicable	93404014
3288	Employed	93404015
1132	Unemployed	93404015
526	Discouraged work-seeker	93404015
5710	Other not economically active	93404015
0	Age less than 15 years	93404015
7009	Not applicable	93404015
3219	Employed	93404016
1030	Unemployed	93404016
391	Discouraged work-seeker	93404016
3853	Other not economically active	93404016
0	Age less than 15 years	93404016
5324	Not applicable	93404016
2107	Employed	93404017
1341	Unemployed	93404017
619	Discouraged work-seeker	93404017
3843	Other not economically active	93404017
0	Age less than 15 years	93404017
5011	Not applicable	93404017
946	Employed	93404018
369	Unemployed	93404018
529	Discouraged work-seeker	93404018
4257	Other not economically active	93404018
0	Age less than 15 years	93404018
5356	Not applicable	93404018
1154	Employed	93404019
644	Unemployed	93404019
569	Discouraged work-seeker	93404019
4073	Other not economically active	93404019
0	Age less than 15 years	93404019
5582	Not applicable	93404019
6469	Employed	93404020
1086	Unemployed	93404020
265	Discouraged work-seeker	93404020
6891	Other not economically active	93404020
0	Age less than 15 years	93404020
5797	Not applicable	93404020
10636	Employed	93404021
821	Unemployed	93404021
269	Discouraged work-seeker	93404021
3974	Other not economically active	93404021
0	Age less than 15 years	93404021
5338	Not applicable	93404021
2621	Employed	93404022
1610	Unemployed	93404022
417	Discouraged work-seeker	93404022
3936	Other not economically active	93404022
0	Age less than 15 years	93404022
6329	Not applicable	93404022
2040	Employed	93404023
1151	Unemployed	93404023
116	Discouraged work-seeker	93404023
3278	Other not economically active	93404023
0	Age less than 15 years	93404023
4816	Not applicable	93404023
2931	Employed	93404024
1984	Unemployed	93404024
721	Discouraged work-seeker	93404024
3794	Other not economically active	93404024
0	Age less than 15 years	93404024
7361	Not applicable	93404024
1764	Employed	93404025
1524	Unemployed	93404025
795	Discouraged work-seeker	93404025
4005	Other not economically active	93404025
0	Age less than 15 years	93404025
6964	Not applicable	93404025
2759	Employed	93404026
1141	Unemployed	93404026
489	Discouraged work-seeker	93404026
3925	Other not economically active	93404026
0	Age less than 15 years	93404026
6116	Not applicable	93404026
1107	Employed	93404027
1387	Unemployed	93404027
709	Discouraged work-seeker	93404027
2925	Other not economically active	93404027
0	Age less than 15 years	93404027
4349	Not applicable	93404027
3458	Employed	93404028
1814	Unemployed	93404028
694	Discouraged work-seeker	93404028
3964	Other not economically active	93404028
0	Age less than 15 years	93404028
5924	Not applicable	93404028
1859	Employed	93404029
1502	Unemployed	93404029
769	Discouraged work-seeker	93404029
2670	Other not economically active	93404029
0	Age less than 15 years	93404029
4849	Not applicable	93404029
2471	Employed	93404030
1419	Unemployed	93404030
337	Discouraged work-seeker	93404030
2707	Other not economically active	93404030
0	Age less than 15 years	93404030
4381	Not applicable	93404030
2069	Employed	93404031
1252	Unemployed	93404031
386	Discouraged work-seeker	93404031
3487	Other not economically active	93404031
0	Age less than 15 years	93404031
5534	Not applicable	93404031
1768	Employed	93404032
1022	Unemployed	93404032
953	Discouraged work-seeker	93404032
4672	Other not economically active	93404032
0	Age less than 15 years	93404032
6432	Not applicable	93404032
1633	Employed	93404033
1300	Unemployed	93404033
683	Discouraged work-seeker	93404033
4685	Other not economically active	93404033
0	Age less than 15 years	93404033
5973	Not applicable	93404033
1854	Employed	93404034
1492	Unemployed	93404034
653	Discouraged work-seeker	93404034
3996	Other not economically active	93404034
0	Age less than 15 years	93404034
6081	Not applicable	93404034
2214	Employed	93404035
1167	Unemployed	93404035
664	Discouraged work-seeker	93404035
3961	Other not economically active	93404035
0	Age less than 15 years	93404035
5637	Not applicable	93404035
1656	Employed	93404036
1191	Unemployed	93404036
744	Discouraged work-seeker	93404036
4858	Other not economically active	93404036
0	Age less than 15 years	93404036
7338	Not applicable	93404036
714	Employed	93404037
631	Unemployed	93404037
679	Discouraged work-seeker	93404037
3674	Other not economically active	93404037
0	Age less than 15 years	93404037
5302	Not applicable	93404037
1502	Employed	93404038
1467	Unemployed	93404038
475	Discouraged work-seeker	93404038
2922	Other not economically active	93404038
0	Age less than 15 years	93404038
5001	Not applicable	93404038
436	Employed	93501001
329	Unemployed	93501001
257	Discouraged work-seeker	93501001
2044	Other not economically active	93501001
0	Age less than 15 years	93501001
2922	Not applicable	93501001
432	Employed	93501002
468	Unemployed	93501002
349	Discouraged work-seeker	93501002
2572	Other not economically active	93501002
0	Age less than 15 years	93501002
3701	Not applicable	93501002
239	Employed	93501003
418	Unemployed	93501003
291	Discouraged work-seeker	93501003
2536	Other not economically active	93501003
0	Age less than 15 years	93501003
3632	Not applicable	93501003
238	Employed	93501004
498	Unemployed	93501004
92	Discouraged work-seeker	93501004
2210	Other not economically active	93501004
0	Age less than 15 years	93501004
3215	Not applicable	93501004
1093	Employed	93501005
252	Unemployed	93501005
157	Discouraged work-seeker	93501005
2472	Other not economically active	93501005
0	Age less than 15 years	93501005
3179	Not applicable	93501005
276	Employed	93501006
430	Unemployed	93501006
194	Discouraged work-seeker	93501006
2695	Other not economically active	93501006
0	Age less than 15 years	93501006
3404	Not applicable	93501006
207	Employed	93501007
177	Unemployed	93501007
273	Discouraged work-seeker	93501007
3667	Other not economically active	93501007
0	Age less than 15 years	93501007
4214	Not applicable	93501007
428	Employed	93501008
486	Unemployed	93501008
248	Discouraged work-seeker	93501008
1671	Other not economically active	93501008
0	Age less than 15 years	93501008
2484	Not applicable	93501008
539	Employed	93501009
705	Unemployed	93501009
226	Discouraged work-seeker	93501009
3589	Other not economically active	93501009
0	Age less than 15 years	93501009
4474	Not applicable	93501009
810	Employed	93501010
650	Unemployed	93501010
344	Discouraged work-seeker	93501010
3192	Other not economically active	93501010
0	Age less than 15 years	93501010
3923	Not applicable	93501010
453	Employed	93501011
456	Unemployed	93501011
126	Discouraged work-seeker	93501011
2857	Other not economically active	93501011
0	Age less than 15 years	93501011
3745	Not applicable	93501011
1436	Employed	93501012
534	Unemployed	93501012
143	Discouraged work-seeker	93501012
2152	Other not economically active	93501012
0	Age less than 15 years	93501012
3232	Not applicable	93501012
391	Employed	93501013
510	Unemployed	93501013
221	Discouraged work-seeker	93501013
2084	Other not economically active	93501013
0	Age less than 15 years	93501013
3099	Not applicable	93501013
309	Employed	93501014
112	Unemployed	93501014
217	Discouraged work-seeker	93501014
3263	Other not economically active	93501014
0	Age less than 15 years	93501014
3536	Not applicable	93501014
515	Employed	93501015
860	Unemployed	93501015
248	Discouraged work-seeker	93501015
2078	Other not economically active	93501015
0	Age less than 15 years	93501015
3172	Not applicable	93501015
347	Employed	93501016
415	Unemployed	93501016
251	Discouraged work-seeker	93501016
2294	Other not economically active	93501016
0	Age less than 15 years	93501016
3170	Not applicable	93501016
543	Employed	93501017
460	Unemployed	93501017
88	Discouraged work-seeker	93501017
2627	Other not economically active	93501017
0	Age less than 15 years	93501017
3617	Not applicable	93501017
1263	Employed	93501018
674	Unemployed	93501018
101	Discouraged work-seeker	93501018
3014	Other not economically active	93501018
0	Age less than 15 years	93501018
3797	Not applicable	93501018
2496	Employed	93501019
1219	Unemployed	93501019
1021	Discouraged work-seeker	93501019
4322	Other not economically active	93501019
0	Age less than 15 years	93501019
6130	Not applicable	93501019
298	Employed	93501020
250	Unemployed	93501020
223	Discouraged work-seeker	93501020
2518	Other not economically active	93501020
0	Age less than 15 years	93501020
3496	Not applicable	93501020
3091	Employed	93501021
327	Unemployed	93501021
128	Discouraged work-seeker	93501021
2233	Other not economically active	93501021
0	Age less than 15 years	93501021
3129	Not applicable	93501021
385	Employed	93502001
436	Unemployed	93502001
100	Discouraged work-seeker	93502001
1952	Other not economically active	93502001
0	Age less than 15 years	93502001
2970	Not applicable	93502001
413	Employed	93502002
734	Unemployed	93502002
91	Discouraged work-seeker	93502002
2231	Other not economically active	93502002
0	Age less than 15 years	93502002
3374	Not applicable	93502002
509	Employed	93502003
640	Unemployed	93502003
263	Discouraged work-seeker	93502003
2519	Other not economically active	93502003
0	Age less than 15 years	93502003
3636	Not applicable	93502003
371	Employed	93502004
323	Unemployed	93502004
255	Discouraged work-seeker	93502004
2448	Other not economically active	93502004
0	Age less than 15 years	93502004
3235	Not applicable	93502004
658	Employed	93502005
677	Unemployed	93502005
242	Discouraged work-seeker	93502005
1945	Other not economically active	93502005
0	Age less than 15 years	93502005
2960	Not applicable	93502005
457	Employed	93502006
532	Unemployed	93502006
194	Discouraged work-seeker	93502006
1913	Other not economically active	93502006
0	Age less than 15 years	93502006
2867	Not applicable	93502006
645	Employed	93502007
724	Unemployed	93502007
176	Discouraged work-seeker	93502007
2819	Other not economically active	93502007
0	Age less than 15 years	93502007
4094	Not applicable	93502007
651	Employed	93502008
942	Unemployed	93502008
72	Discouraged work-seeker	93502008
2133	Other not economically active	93502008
0	Age less than 15 years	93502008
3264	Not applicable	93502008
854	Employed	93502009
502	Unemployed	93502009
268	Discouraged work-seeker	93502009
2421	Other not economically active	93502009
0	Age less than 15 years	93502009
3193	Not applicable	93502009
483	Employed	93502010
463	Unemployed	93502010
209	Discouraged work-seeker	93502010
2393	Other not economically active	93502010
0	Age less than 15 years	93502010
3621	Not applicable	93502010
717	Employed	93502011
566	Unemployed	93502011
256	Discouraged work-seeker	93502011
2105	Other not economically active	93502011
0	Age less than 15 years	93502011
2835	Not applicable	93502011
498	Employed	93502012
443	Unemployed	93502012
226	Discouraged work-seeker	93502012
2044	Other not economically active	93502012
0	Age less than 15 years	93502012
2729	Not applicable	93502012
794	Employed	93502013
848	Unemployed	93502013
158	Discouraged work-seeker	93502013
1733	Other not economically active	93502013
0	Age less than 15 years	93502013
2790	Not applicable	93502013
896	Employed	93502014
597	Unemployed	93502014
289	Discouraged work-seeker	93502014
2400	Other not economically active	93502014
0	Age less than 15 years	93502014
3329	Not applicable	93502014
601	Employed	93502015
519	Unemployed	93502015
206	Discouraged work-seeker	93502015
2441	Other not economically active	93502015
0	Age less than 15 years	93502015
3490	Not applicable	93502015
622	Employed	93502016
724	Unemployed	93502016
268	Discouraged work-seeker	93502016
2459	Other not economically active	93502016
0	Age less than 15 years	93502016
3685	Not applicable	93502016
397	Employed	93502017
595	Unemployed	93502017
234	Discouraged work-seeker	93502017
1919	Other not economically active	93502017
0	Age less than 15 years	93502017
3226	Not applicable	93502017
501	Employed	93502018
427	Unemployed	93502018
158	Discouraged work-seeker	93502018
2442	Other not economically active	93502018
0	Age less than 15 years	93502018
3534	Not applicable	93502018
948	Employed	93502019
889	Unemployed	93502019
331	Discouraged work-seeker	93502019
1766	Other not economically active	93502019
0	Age less than 15 years	93502019
3270	Not applicable	93502019
4578	Employed	93503001
955	Unemployed	93503001
293	Discouraged work-seeker	93503001
1645	Other not economically active	93503001
0	Age less than 15 years	93503001
2995	Not applicable	93503001
708	Employed	93503002
976	Unemployed	93503002
184	Discouraged work-seeker	93503002
2927	Other not economically active	93503002
0	Age less than 15 years	93503002
4113	Not applicable	93503002
566	Employed	93503003
478	Unemployed	93503003
120	Discouraged work-seeker	93503003
2039	Other not economically active	93503003
0	Age less than 15 years	93503003
2711	Not applicable	93503003
490	Employed	93503004
610	Unemployed	93503004
146	Discouraged work-seeker	93503004
2513	Other not economically active	93503004
0	Age less than 15 years	93503004
3412	Not applicable	93503004
344	Employed	93503005
551	Unemployed	93503005
217	Discouraged work-seeker	93503005
1511	Other not economically active	93503005
0	Age less than 15 years	93503005
2307	Not applicable	93503005
883	Employed	93503006
1031	Unemployed	93503006
239	Discouraged work-seeker	93503006
2712	Other not economically active	93503006
0	Age less than 15 years	93503006
3634	Not applicable	93503006
1129	Employed	93503007
1138	Unemployed	93503007
287	Discouraged work-seeker	93503007
3127	Other not economically active	93503007
0	Age less than 15 years	93503007
4435	Not applicable	93503007
954	Employed	93503008
1187	Unemployed	93503008
452	Discouraged work-seeker	93503008
2781	Other not economically active	93503008
0	Age less than 15 years	93503008
4392	Not applicable	93503008
665	Employed	93503009
1405	Unemployed	93503009
56	Discouraged work-seeker	93503009
2422	Other not economically active	93503009
0	Age less than 15 years	93503009
3493	Not applicable	93503009
2260	Employed	93503010
617	Unemployed	93503010
127	Discouraged work-seeker	93503010
2198	Other not economically active	93503010
0	Age less than 15 years	93503010
2681	Not applicable	93503010
483	Employed	93503011
491	Unemployed	93503011
210	Discouraged work-seeker	93503011
1491	Other not economically active	93503011
0	Age less than 15 years	93503011
2386	Not applicable	93503011
923	Employed	93503012
651	Unemployed	93503012
324	Discouraged work-seeker	93503012
2670	Other not economically active	93503012
0	Age less than 15 years	93503012
3813	Not applicable	93503012
650	Employed	93503013
827	Unemployed	93503013
131	Discouraged work-seeker	93503013
2138	Other not economically active	93503013
0	Age less than 15 years	93503013
3348	Not applicable	93503013
595	Employed	93503014
427	Unemployed	93503014
163	Discouraged work-seeker	93503014
1904	Other not economically active	93503014
0	Age less than 15 years	93503014
3003	Not applicable	93503014
5788	Employed	93504001
2322	Unemployed	93504001
485	Discouraged work-seeker	93504001
4846	Other not economically active	93504001
0	Age less than 15 years	93504001
7091	Not applicable	93504001
1719	Employed	93504002
1855	Unemployed	93504002
674	Discouraged work-seeker	93504002
4736	Other not economically active	93504002
0	Age less than 15 years	93504002
6758	Not applicable	93504002
1012	Employed	93504003
1432	Unemployed	93504003
209	Discouraged work-seeker	93504003
3307	Other not economically active	93504003
0	Age less than 15 years	93504003
5475	Not applicable	93504003
1212	Employed	93504004
1344	Unemployed	93504004
664	Discouraged work-seeker	93504004
5978	Other not economically active	93504004
0	Age less than 15 years	93504004
7310	Not applicable	93504004
2033	Employed	93504005
2415	Unemployed	93504005
333	Discouraged work-seeker	93504005
4833	Other not economically active	93504005
0	Age less than 15 years	93504005
7569	Not applicable	93504005
7887	Employed	93504006
1618	Unemployed	93504006
107	Discouraged work-seeker	93504006
4595	Other not economically active	93504006
0	Age less than 15 years	93504006
5538	Not applicable	93504006
1950	Employed	93504007
2385	Unemployed	93504007
353	Discouraged work-seeker	93504007
3479	Other not economically active	93504007
0	Age less than 15 years	93504007
6123	Not applicable	93504007
15417	Employed	93504008
6457	Unemployed	93504008
880	Discouraged work-seeker	93504008
6941	Other not economically active	93504008
0	Age less than 15 years	93504008
9806	Not applicable	93504008
2196	Employed	93504009
1707	Unemployed	93504009
388	Discouraged work-seeker	93504009
3825	Other not economically active	93504009
0	Age less than 15 years	93504009
5415	Not applicable	93504009
3230	Employed	93504010
2984	Unemployed	93504010
347	Discouraged work-seeker	93504010
3147	Other not economically active	93504010
0	Age less than 15 years	93504010
5652	Not applicable	93504010
6010	Employed	93504011
1851	Unemployed	93504011
944	Discouraged work-seeker	93504011
3942	Other not economically active	93504011
0	Age less than 15 years	93504011
5586	Not applicable	93504011
3218	Employed	93504012
915	Unemployed	93504012
67	Discouraged work-seeker	93504012
2359	Other not economically active	93504012
0	Age less than 15 years	93504012
2288	Not applicable	93504012
3533	Employed	93504013
1812	Unemployed	93504013
308	Discouraged work-seeker	93504013
3001	Other not economically active	93504013
0	Age less than 15 years	93504013
4209	Not applicable	93504013
6419	Employed	93504014
1842	Unemployed	93504014
491	Discouraged work-seeker	93504014
3467	Other not economically active	93504014
0	Age less than 15 years	93504014
5558	Not applicable	93504014
1497	Employed	93504015
1703	Unemployed	93504015
626	Discouraged work-seeker	93504015
3287	Other not economically active	93504015
0	Age less than 15 years	93504015
5409	Not applicable	93504015
4346	Employed	93504016
3769	Unemployed	93504016
511	Discouraged work-seeker	93504016
4834	Other not economically active	93504016
0	Age less than 15 years	93504016
8199	Not applicable	93504016
4756	Employed	93504017
2474	Unemployed	93504017
276	Discouraged work-seeker	93504017
3997	Other not economically active	93504017
0	Age less than 15 years	93504017
4589	Not applicable	93504017
2697	Employed	93504018
1943	Unemployed	93504018
581	Discouraged work-seeker	93504018
4480	Other not economically active	93504018
0	Age less than 15 years	93504018
6265	Not applicable	93504018
7067	Employed	93504019
1825	Unemployed	93504019
124	Discouraged work-seeker	93504019
4025	Other not economically active	93504019
0	Age less than 15 years	93504019
5217	Not applicable	93504019
13585	Employed	93504020
1070	Unemployed	93504020
142	Discouraged work-seeker	93504020
5773	Other not economically active	93504020
0	Age less than 15 years	93504020
7581	Not applicable	93504020
3507	Employed	93504021
179	Unemployed	93504021
32	Discouraged work-seeker	93504021
1110	Other not economically active	93504021
0	Age less than 15 years	93504021
1735	Not applicable	93504021
7206	Employed	93504022
924	Unemployed	93504022
54	Discouraged work-seeker	93504022
4221	Other not economically active	93504022
0	Age less than 15 years	93504022
5036	Not applicable	93504022
9495	Employed	93504023
1146	Unemployed	93504023
74	Discouraged work-seeker	93504023
3936	Other not economically active	93504023
0	Age less than 15 years	93504023
4320	Not applicable	93504023
2557	Employed	93504024
2137	Unemployed	93504024
627	Discouraged work-seeker	93504024
4150	Other not economically active	93504024
0	Age less than 15 years	93504024
6253	Not applicable	93504024
6323	Employed	93504025
2890	Unemployed	93504025
474	Discouraged work-seeker	93504025
8050	Other not economically active	93504025
0	Age less than 15 years	93504025
8132	Not applicable	93504025
950	Employed	93504026
268	Unemployed	93504026
42	Discouraged work-seeker	93504026
5069	Other not economically active	93504026
0	Age less than 15 years	93504026
767	Not applicable	93504026
4467	Employed	93504027
2695	Unemployed	93504027
601	Discouraged work-seeker	93504027
5632	Other not economically active	93504027
0	Age less than 15 years	93504027
8720	Not applicable	93504027
1944	Employed	93504028
1481	Unemployed	93504028
267	Discouraged work-seeker	93504028
4341	Other not economically active	93504028
0	Age less than 15 years	93504028
5749	Not applicable	93504028
1174	Employed	93504029
1497	Unemployed	93504029
79	Discouraged work-seeker	93504029
3003	Other not economically active	93504029
0	Age less than 15 years	93504029
4525	Not applicable	93504029
1187	Employed	93504030
1688	Unemployed	93504030
324	Discouraged work-seeker	93504030
3594	Other not economically active	93504030
0	Age less than 15 years	93504030
5016	Not applicable	93504030
2418	Employed	93504031
1809	Unemployed	93504031
584	Discouraged work-seeker	93504031
6660	Other not economically active	93504031
0	Age less than 15 years	93504031
7277	Not applicable	93504031
2486	Employed	93504032
2011	Unemployed	93504032
795	Discouraged work-seeker	93504032
4329	Other not economically active	93504032
0	Age less than 15 years	93504032
6422	Not applicable	93504032
1959	Employed	93504033
2515	Unemployed	93504033
306	Discouraged work-seeker	93504033
4205	Other not economically active	93504033
0	Age less than 15 years	93504033
7279	Not applicable	93504033
1654	Employed	93504034
1729	Unemployed	93504034
509	Discouraged work-seeker	93504034
4844	Other not economically active	93504034
0	Age less than 15 years	93504034
6700	Not applicable	93504034
1311	Employed	93504035
1634	Unemployed	93504035
608	Discouraged work-seeker	93504035
3617	Other not economically active	93504035
0	Age less than 15 years	93504035
5561	Not applicable	93504035
4180	Employed	93504036
2346	Unemployed	93504036
132	Discouraged work-seeker	93504036
3326	Other not economically active	93504036
0	Age less than 15 years	93504036
5831	Not applicable	93504036
5035	Employed	93504037
2556	Unemployed	93504037
245	Discouraged work-seeker	93504037
3776	Other not economically active	93504037
0	Age less than 15 years	93504037
4431	Not applicable	93504037
2265	Employed	93504038
1557	Unemployed	93504038
535	Discouraged work-seeker	93504038
3731	Other not economically active	93504038
0	Age less than 15 years	93504038
5889	Not applicable	93504038
294	Employed	93505001
471	Unemployed	93505001
528	Discouraged work-seeker	93505001
2631	Other not economically active	93505001
0	Age less than 15 years	93505001
4098	Not applicable	93505001
541	Employed	93505002
511	Unemployed	93505002
461	Discouraged work-seeker	93505002
2930	Other not economically active	93505002
0	Age less than 15 years	93505002
4254	Not applicable	93505002
301	Employed	93505003
487	Unemployed	93505003
481	Discouraged work-seeker	93505003
2601	Other not economically active	93505003
0	Age less than 15 years	93505003
3693	Not applicable	93505003
473	Employed	93505004
669	Unemployed	93505004
310	Discouraged work-seeker	93505004
2021	Other not economically active	93505004
0	Age less than 15 years	93505004
3285	Not applicable	93505004
259	Employed	93505005
718	Unemployed	93505005
227	Discouraged work-seeker	93505005
2521	Other not economically active	93505005
0	Age less than 15 years	93505005
3341	Not applicable	93505005
487	Employed	93505006
820	Unemployed	93505006
203	Discouraged work-seeker	93505006
2537	Other not economically active	93505006
0	Age less than 15 years	93505006
3893	Not applicable	93505006
685	Employed	93505007
1050	Unemployed	93505007
171	Discouraged work-seeker	93505007
2492	Other not economically active	93505007
0	Age less than 15 years	93505007
3722	Not applicable	93505007
1635	Employed	93505008
787	Unemployed	93505008
450	Discouraged work-seeker	93505008
2811	Other not economically active	93505008
0	Age less than 15 years	93505008
3973	Not applicable	93505008
1146	Employed	93505009
1150	Unemployed	93505009
135	Discouraged work-seeker	93505009
2044	Other not economically active	93505009
0	Age less than 15 years	93505009
3618	Not applicable	93505009
778	Employed	93505010
564	Unemployed	93505010
191	Discouraged work-seeker	93505010
1697	Other not economically active	93505010
0	Age less than 15 years	93505010
2533	Not applicable	93505010
633	Employed	93505011
618	Unemployed	93505011
322	Discouraged work-seeker	93505011
2145	Other not economically active	93505011
0	Age less than 15 years	93505011
3313	Not applicable	93505011
756	Employed	93505012
848	Unemployed	93505012
132	Discouraged work-seeker	93505012
1643	Other not economically active	93505012
0	Age less than 15 years	93505012
2899	Not applicable	93505012
1041	Employed	93505013
1285	Unemployed	93505013
279	Discouraged work-seeker	93505013
1651	Other not economically active	93505013
0	Age less than 15 years	93505013
3056	Not applicable	93505013
1048	Employed	93505014
760	Unemployed	93505014
227	Discouraged work-seeker	93505014
2409	Other not economically active	93505014
0	Age less than 15 years	93505014
3567	Not applicable	93505014
4376	Employed	93505015
1301	Unemployed	93505015
71	Discouraged work-seeker	93505015
1965	Other not economically active	93505015
0	Age less than 15 years	93505015
3225	Not applicable	93505015
2394	Employed	93505016
1080	Unemployed	93505016
30	Discouraged work-seeker	93505016
2353	Other not economically active	93505016
0	Age less than 15 years	93505016
2959	Not applicable	93505016
2475	Employed	93505017
1510	Unemployed	93505017
207	Discouraged work-seeker	93505017
2261	Other not economically active	93505017
0	Age less than 15 years	93505017
3258	Not applicable	93505017
1789	Employed	93505018
496	Unemployed	93505018
59	Discouraged work-seeker	93505018
1767	Other not economically active	93505018
0	Age less than 15 years	93505018
1967	Not applicable	93505018
537	Employed	93505019
1124	Unemployed	93505019
342	Discouraged work-seeker	93505019
3104	Other not economically active	93505019
0	Age less than 15 years	93505019
4737	Not applicable	93505019
511	Employed	93505020
733	Unemployed	93505020
155	Discouraged work-seeker	93505020
2681	Other not economically active	93505020
0	Age less than 15 years	93505020
3629	Not applicable	93505020
512	Employed	93505021
1236	Unemployed	93505021
431	Discouraged work-seeker	93505021
1824	Other not economically active	93505021
0	Age less than 15 years	93505021
3269	Not applicable	93505021
784	Employed	93505022
1356	Unemployed	93505022
140	Discouraged work-seeker	93505022
3660	Other not economically active	93505022
0	Age less than 15 years	93505022
4475	Not applicable	93505022
595	Employed	93505023
913	Unemployed	93505023
300	Discouraged work-seeker	93505023
2272	Other not economically active	93505023
0	Age less than 15 years	93505023
3524	Not applicable	93505023
265	Employed	93505024
508	Unemployed	93505024
286	Discouraged work-seeker	93505024
2018	Other not economically active	93505024
0	Age less than 15 years	93505024
2627	Not applicable	93505024
491	Employed	93505025
876	Unemployed	93505025
400	Discouraged work-seeker	93505025
2590	Other not economically active	93505025
0	Age less than 15 years	93505025
3723	Not applicable	93505025
1112	Employed	93505026
1812	Unemployed	93505026
648	Discouraged work-seeker	93505026
2675	Other not economically active	93505026
0	Age less than 15 years	93505026
5055	Not applicable	93505026
637	Employed	93505027
659	Unemployed	93505027
675	Discouraged work-seeker	93505027
2260	Other not economically active	93505027
0	Age less than 15 years	93505027
3518	Not applicable	93505027
692	Employed	93505028
721	Unemployed	93505028
444	Discouraged work-seeker	93505028
2033	Other not economically active	93505028
0	Age less than 15 years	93505028
2903	Not applicable	93505028
265	Employed	93505029
479	Unemployed	93505029
552	Discouraged work-seeker	93505029
1979	Other not economically active	93505029
0	Age less than 15 years	93505029
2746	Not applicable	93505029
3796	Employed	93601001
419	Unemployed	93601001
44	Discouraged work-seeker	93601001
1213	Other not economically active	93601001
0	Age less than 15 years	93601001
2202	Not applicable	93601001
3948	Employed	93601002
623	Unemployed	93601002
120	Discouraged work-seeker	93601002
2337	Other not economically active	93601002
0	Age less than 15 years	93601002
2877	Not applicable	93601002
4800	Employed	93601003
2199	Unemployed	93601003
313	Discouraged work-seeker	93601003
2187	Other not economically active	93601003
0	Age less than 15 years	93601003
1743	Not applicable	93601003
1932	Employed	93601004
366	Unemployed	93601004
50	Discouraged work-seeker	93601004
1000	Other not economically active	93601004
0	Age less than 15 years	93601004
1280	Not applicable	93601004
1750	Employed	93601005
259	Unemployed	93601005
19	Discouraged work-seeker	93601005
1088	Other not economically active	93601005
0	Age less than 15 years	93601005
848	Not applicable	93601005
2246	Employed	93601006
355	Unemployed	93601006
101	Discouraged work-seeker	93601006
826	Other not economically active	93601006
0	Age less than 15 years	93601006
879	Not applicable	93601006
4771	Employed	93601007
1393	Unemployed	93601007
216	Discouraged work-seeker	93601007
2660	Other not economically active	93601007
0	Age less than 15 years	93601007
2825	Not applicable	93601007
2197	Employed	93601008
336	Unemployed	93601008
43	Discouraged work-seeker	93601008
2337	Other not economically active	93601008
0	Age less than 15 years	93601008
912	Not applicable	93601008
5212	Employed	93601009
1819	Unemployed	93601009
216	Discouraged work-seeker	93601009
3084	Other not economically active	93601009
0	Age less than 15 years	93601009
4267	Not applicable	93601009
1402	Employed	93601010
603	Unemployed	93601010
58	Discouraged work-seeker	93601010
828	Other not economically active	93601010
0	Age less than 15 years	93601010
1254	Not applicable	93601010
0	Employed	93601011
0	Unemployed	93601011
0	Discouraged work-seeker	93601011
3768	Other not economically active	93601011
0	Age less than 15 years	93601011
99	Not applicable	93601011
862	Employed	93601012
191	Unemployed	93601012
56	Discouraged work-seeker	93601012
1110	Other not economically active	93601012
0	Age less than 15 years	93601012
896	Not applicable	93601012
6761	Employed	93602001
2368	Unemployed	93602001
415	Discouraged work-seeker	93602001
4031	Other not economically active	93602001
0	Age less than 15 years	93602001
3838	Not applicable	93602001
3846	Employed	93602002
962	Unemployed	93602002
73	Discouraged work-seeker	93602002
7174	Other not economically active	93602002
0	Age less than 15 years	93602002
1387	Not applicable	93602002
6170	Employed	93602003
431	Unemployed	93602003
146	Discouraged work-seeker	93602003
1640	Other not economically active	93602003
0	Age less than 15 years	93602003
2750	Not applicable	93602003
4216	Employed	93602004
378	Unemployed	93602004
26	Discouraged work-seeker	93602004
1987	Other not economically active	93602004
0	Age less than 15 years	93602004
1750	Not applicable	93602004
4555	Employed	93602005
307	Unemployed	93602005
27	Discouraged work-seeker	93602005
1642	Other not economically active	93602005
0	Age less than 15 years	93602005
1329	Not applicable	93602005
1212	Employed	93602006
859	Unemployed	93602006
110	Discouraged work-seeker	93602006
1652	Other not economically active	93602006
0	Age less than 15 years	93602006
2480	Not applicable	93602006
978	Employed	93602007
823	Unemployed	93602007
110	Discouraged work-seeker	93602007
2304	Other not economically active	93602007
0	Age less than 15 years	93602007
3132	Not applicable	93602007
1117	Employed	93602008
1069	Unemployed	93602008
55	Discouraged work-seeker	93602008
2778	Other not economically active	93602008
0	Age less than 15 years	93602008
3820	Not applicable	93602008
1440	Employed	93602009
999	Unemployed	93602009
68	Discouraged work-seeker	93602009
2605	Other not economically active	93602009
0	Age less than 15 years	93602009
3829	Not applicable	93602009
1212	Employed	93602010
667	Unemployed	93602010
256	Discouraged work-seeker	93602010
2617	Other not economically active	93602010
0	Age less than 15 years	93602010
4038	Not applicable	93602010
2818	Employed	93602011
360	Unemployed	93602011
97	Discouraged work-seeker	93602011
2750	Other not economically active	93602011
0	Age less than 15 years	93602011
3230	Not applicable	93602011
1002	Employed	93602012
878	Unemployed	93602012
181	Discouraged work-seeker	93602012
2516	Other not economically active	93602012
0	Age less than 15 years	93602012
3493	Not applicable	93602012
4136	Employed	93604001
1444	Unemployed	93604001
380	Discouraged work-seeker	93604001
2747	Other not economically active	93604001
0	Age less than 15 years	93604001
4339	Not applicable	93604001
1291	Employed	93604002
826	Unemployed	93604002
226	Discouraged work-seeker	93604002
1703	Other not economically active	93604002
0	Age less than 15 years	93604002
1991	Not applicable	93604002
3272	Employed	93604003
304	Unemployed	93604003
84	Discouraged work-seeker	93604003
727	Other not economically active	93604003
0	Age less than 15 years	93604003
1170	Not applicable	93604003
1042	Employed	93604004
94	Unemployed	93604004
48	Discouraged work-seeker	93604004
969	Other not economically active	93604004
0	Age less than 15 years	93604004
1677	Not applicable	93604004
2346	Employed	93604005
1038	Unemployed	93604005
176	Discouraged work-seeker	93604005
1243	Other not economically active	93604005
0	Age less than 15 years	93604005
2367	Not applicable	93604005
1982	Employed	93605001
1547	Unemployed	93605001
125	Discouraged work-seeker	93605001
2471	Other not economically active	93605001
0	Age less than 15 years	93605001
3904	Not applicable	93605001
2952	Employed	93605002
428	Unemployed	93605002
110	Discouraged work-seeker	93605002
1039	Other not economically active	93605002
0	Age less than 15 years	93605002
1986	Not applicable	93605002
1426	Employed	93605003
679	Unemployed	93605003
259	Discouraged work-seeker	93605003
1743	Other not economically active	93605003
0	Age less than 15 years	93605003
2791	Not applicable	93605003
1228	Employed	93605004
346	Unemployed	93605004
74	Discouraged work-seeker	93605004
834	Other not economically active	93605004
0	Age less than 15 years	93605004
2069	Not applicable	93605004
3298	Employed	93605005
994	Unemployed	93605005
125	Discouraged work-seeker	93605005
3341	Other not economically active	93605005
0	Age less than 15 years	93605005
4452	Not applicable	93605005
2267	Employed	93605006
429	Unemployed	93605006
384	Discouraged work-seeker	93605006
3012	Other not economically active	93605006
0	Age less than 15 years	93605006
3484	Not applicable	93605006
2287	Employed	93605007
603	Unemployed	93605007
251	Discouraged work-seeker	93605007
2039	Other not economically active	93605007
0	Age less than 15 years	93605007
2776	Not applicable	93605007
2971	Employed	93605008
244	Unemployed	93605008
34	Discouraged work-seeker	93605008
1203	Other not economically active	93605008
0	Age less than 15 years	93605008
1655	Not applicable	93605008
1309	Employed	93605009
365	Unemployed	93605009
55	Discouraged work-seeker	93605009
1229	Other not economically active	93605009
0	Age less than 15 years	93605009
1714	Not applicable	93605009
4803	Employed	93606001
442	Unemployed	93606001
109	Discouraged work-seeker	93606001
2910	Other not economically active	93606001
0	Age less than 15 years	93606001
3933	Not applicable	93606001
2377	Employed	93606002
1284	Unemployed	93606002
143	Discouraged work-seeker	93606002
1553	Other not economically active	93606002
0	Age less than 15 years	93606002
2539	Not applicable	93606002
1240	Employed	93606003
970	Unemployed	93606003
48	Discouraged work-seeker	93606003
1558	Other not economically active	93606003
0	Age less than 15 years	93606003
2018	Not applicable	93606003
4041	Employed	93606004
1178	Unemployed	93606004
100	Discouraged work-seeker	93606004
3041	Other not economically active	93606004
0	Age less than 15 years	93606004
4869	Not applicable	93606004
1277	Employed	93606005
436	Unemployed	93606005
130	Discouraged work-seeker	93606005
1164	Other not economically active	93606005
0	Age less than 15 years	93606005
1572	Not applicable	93606005
1807	Employed	93606006
670	Unemployed	93606006
137	Discouraged work-seeker	93606006
1295	Other not economically active	93606006
0	Age less than 15 years	93606006
1882	Not applicable	93606006
2889	Employed	93606007
404	Unemployed	93606007
142	Discouraged work-seeker	93606007
2373	Other not economically active	93606007
0	Age less than 15 years	93606007
2969	Not applicable	93606007
1662	Employed	93606008
511	Unemployed	93606008
198	Discouraged work-seeker	93606008
1622	Other not economically active	93606008
0	Age less than 15 years	93606008
2053	Not applicable	93606008
626	Employed	93606009
108	Unemployed	93606009
49	Discouraged work-seeker	93606009
584	Other not economically active	93606009
0	Age less than 15 years	93606009
786	Not applicable	93606009
809	Employed	93607001
492	Unemployed	93607001
174	Discouraged work-seeker	93607001
3317	Other not economically active	93607001
0	Age less than 15 years	93607001
4901	Not applicable	93607001
643	Employed	93607002
438	Unemployed	93607002
334	Discouraged work-seeker	93607002
2916	Other not economically active	93607002
0	Age less than 15 years	93607002
4257	Not applicable	93607002
810	Employed	93607003
811	Unemployed	93607003
190	Discouraged work-seeker	93607003
3312	Other not economically active	93607003
0	Age less than 15 years	93607003
4700	Not applicable	93607003
622	Employed	93607004
729	Unemployed	93607004
347	Discouraged work-seeker	93607004
2969	Other not economically active	93607004
0	Age less than 15 years	93607004
4509	Not applicable	93607004
559	Employed	93607005
520	Unemployed	93607005
177	Discouraged work-seeker	93607005
2342	Other not economically active	93607005
0	Age less than 15 years	93607005
3626	Not applicable	93607005
552	Employed	93607006
353	Unemployed	93607006
528	Discouraged work-seeker	93607006
3314	Other not economically active	93607006
0	Age less than 15 years	93607006
4769	Not applicable	93607006
1349	Employed	93607007
744	Unemployed	93607007
277	Discouraged work-seeker	93607007
3313	Other not economically active	93607007
0	Age less than 15 years	93607007
4591	Not applicable	93607007
454	Employed	93607008
566	Unemployed	93607008
248	Discouraged work-seeker	93607008
2625	Other not economically active	93607008
0	Age less than 15 years	93607008
3863	Not applicable	93607008
487	Employed	93607009
684	Unemployed	93607009
208	Discouraged work-seeker	93607009
3039	Other not economically active	93607009
0	Age less than 15 years	93607009
4199	Not applicable	93607009
394	Employed	93607010
567	Unemployed	93607010
165	Discouraged work-seeker	93607010
2765	Other not economically active	93607010
0	Age less than 15 years	93607010
3838	Not applicable	93607010
735	Employed	93607011
994	Unemployed	93607011
448	Discouraged work-seeker	93607011
3010	Other not economically active	93607011
0	Age less than 15 years	93607011
4537	Not applicable	93607011
3665	Employed	93607012
888	Unemployed	93607012
270	Discouraged work-seeker	93607012
2648	Other not economically active	93607012
0	Age less than 15 years	93607012
3174	Not applicable	93607012
958	Employed	93607013
1065	Unemployed	93607013
568	Discouraged work-seeker	93607013
3048	Other not economically active	93607013
0	Age less than 15 years	93607013
4878	Not applicable	93607013
828	Employed	93607014
1055	Unemployed	93607014
209	Discouraged work-seeker	93607014
2492	Other not economically active	93607014
0	Age less than 15 years	93607014
3837	Not applicable	93607014
356	Employed	93607015
475	Unemployed	93607015
189	Discouraged work-seeker	93607015
2860	Other not economically active	93607015
0	Age less than 15 years	93607015
3821	Not applicable	93607015
1418	Employed	93607016
786	Unemployed	93607016
494	Discouraged work-seeker	93607016
2613	Other not economically active	93607016
0	Age less than 15 years	93607016
3857	Not applicable	93607016
594	Employed	93607017
955	Unemployed	93607017
446	Discouraged work-seeker	93607017
2812	Other not economically active	93607017
0	Age less than 15 years	93607017
3994	Not applicable	93607017
1395	Employed	93607018
1734	Unemployed	93607018
229	Discouraged work-seeker	93607018
3327	Other not economically active	93607018
0	Age less than 15 years	93607018
4983	Not applicable	93607018
719	Employed	93607019
446	Unemployed	93607019
427	Discouraged work-seeker	93607019
3301	Other not economically active	93607019
0	Age less than 15 years	93607019
3663	Not applicable	93607019
1178	Employed	93607020
2020	Unemployed	93607020
275	Discouraged work-seeker	93607020
2686	Other not economically active	93607020
0	Age less than 15 years	93607020
4078	Not applicable	93607020
657	Employed	93607021
1159	Unemployed	93607021
413	Discouraged work-seeker	93607021
1509	Other not economically active	93607021
0	Age less than 15 years	93607021
2406	Not applicable	93607021
1349	Employed	93607022
951	Unemployed	93607022
270	Discouraged work-seeker	93607022
2900	Other not economically active	93607022
0	Age less than 15 years	93607022
3951	Not applicable	93607022
1618	Employed	93607023
848	Unemployed	93607023
326	Discouraged work-seeker	93607023
2263	Other not economically active	93607023
0	Age less than 15 years	93607023
3108	Not applicable	93607023
2457	Employed	93607024
1850	Unemployed	93607024
301	Discouraged work-seeker	93607024
3184	Other not economically active	93607024
0	Age less than 15 years	93607024
4364	Not applicable	93607024
1803	Employed	93607025
1279	Unemployed	93607025
369	Discouraged work-seeker	93607025
3301	Other not economically active	93607025
0	Age less than 15 years	93607025
4229	Not applicable	93607025
1320	Employed	93607026
1023	Unemployed	93607026
181	Discouraged work-seeker	93607026
1307	Other not economically active	93607026
0	Age less than 15 years	93607026
2125	Not applicable	93607026
2340	Employed	93607027
1213	Unemployed	93607027
276	Discouraged work-seeker	93607027
2564	Other not economically active	93607027
0	Age less than 15 years	93607027
3062	Not applicable	93607027
3259	Employed	93607028
1605	Unemployed	93607028
364	Discouraged work-seeker	93607028
3279	Other not economically active	93607028
0	Age less than 15 years	93607028
4088	Not applicable	93607028
2297	Employed	93607029
1524	Unemployed	93607029
492	Discouraged work-seeker	93607029
3096	Other not economically active	93607029
0	Age less than 15 years	93607029
4032	Not applicable	93607029
1393	Employed	93607030
911	Unemployed	93607030
386	Discouraged work-seeker	93607030
2552	Other not economically active	93607030
0	Age less than 15 years	93607030
3181	Not applicable	93607030
6609	Employed	93607031
2574	Unemployed	93607031
436	Discouraged work-seeker	93607031
4035	Other not economically active	93607031
0	Age less than 15 years	93607031
7115	Not applicable	93607031
3409	Employed	93607032
352	Unemployed	93607032
54	Discouraged work-seeker	93607032
1945	Other not economically active	93607032
0	Age less than 15 years	93607032
2583	Not applicable	93607032
522	Employed	94701001
510	Unemployed	94701001
271	Discouraged work-seeker	94701001
2107	Other not economically active	94701001
0	Age less than 15 years	94701001
3036	Not applicable	94701001
348	Employed	94701002
513	Unemployed	94701002
299	Discouraged work-seeker	94701002
1940	Other not economically active	94701002
0	Age less than 15 years	94701002
2872	Not applicable	94701002
547	Employed	94701003
635	Unemployed	94701003
703	Discouraged work-seeker	94701003
3215	Other not economically active	94701003
0	Age less than 15 years	94701003
4501	Not applicable	94701003
455	Employed	94701004
513	Unemployed	94701004
299	Discouraged work-seeker	94701004
2487	Other not economically active	94701004
0	Age less than 15 years	94701004
3241	Not applicable	94701004
5580	Employed	94701005
632	Unemployed	94701005
140	Discouraged work-seeker	94701005
1509	Other not economically active	94701005
0	Age less than 15 years	94701005
2160	Not applicable	94701005
559	Employed	94701006
1066	Unemployed	94701006
219	Discouraged work-seeker	94701006
2419	Other not economically active	94701006
0	Age less than 15 years	94701006
3642	Not applicable	94701006
3054	Employed	94701007
193	Unemployed	94701007
62	Discouraged work-seeker	94701007
652	Other not economically active	94701007
0	Age less than 15 years	94701007
1116	Not applicable	94701007
1393	Employed	94701008
1490	Unemployed	94701008
220	Discouraged work-seeker	94701008
2047	Other not economically active	94701008
0	Age less than 15 years	94701008
3087	Not applicable	94701008
1078	Employed	94701009
1361	Unemployed	94701009
162	Discouraged work-seeker	94701009
2420	Other not economically active	94701009
0	Age less than 15 years	94701009
3714	Not applicable	94701009
618	Employed	94701010
1366	Unemployed	94701010
74	Discouraged work-seeker	94701010
2370	Other not economically active	94701010
0	Age less than 15 years	94701010
3607	Not applicable	94701010
594	Employed	94701011
485	Unemployed	94701011
626	Discouraged work-seeker	94701011
1834	Other not economically active	94701011
0	Age less than 15 years	94701011
3098	Not applicable	94701011
412	Employed	94701012
771	Unemployed	94701012
759	Discouraged work-seeker	94701012
2497	Other not economically active	94701012
0	Age less than 15 years	94701012
4125	Not applicable	94701012
493	Employed	94701013
985	Unemployed	94701013
221	Discouraged work-seeker	94701013
1956	Other not economically active	94701013
0	Age less than 15 years	94701013
3263	Not applicable	94701013
334	Employed	94701014
410	Unemployed	94701014
429	Discouraged work-seeker	94701014
1932	Other not economically active	94701014
0	Age less than 15 years	94701014
2822	Not applicable	94701014
870	Employed	94701015
1056	Unemployed	94701015
403	Discouraged work-seeker	94701015
2860	Other not economically active	94701015
0	Age less than 15 years	94701015
4479	Not applicable	94701015
1494	Employed	94701016
958	Unemployed	94701016
412	Discouraged work-seeker	94701016
2333	Other not economically active	94701016
0	Age less than 15 years	94701016
3715	Not applicable	94701016
1444	Employed	94702001
1311	Unemployed	94702001
600	Discouraged work-seeker	94702001
3224	Other not economically active	94702001
0	Age less than 15 years	94702001
4930	Not applicable	94702001
646	Employed	94702002
677	Unemployed	94702002
344	Discouraged work-seeker	94702002
1515	Other not economically active	94702002
0	Age less than 15 years	94702002
2408	Not applicable	94702002
511	Employed	94702003
696	Unemployed	94702003
170	Discouraged work-seeker	94702003
2378	Other not economically active	94702003
0	Age less than 15 years	94702003
3164	Not applicable	94702003
409	Employed	94702004
751	Unemployed	94702004
126	Discouraged work-seeker	94702004
1580	Other not economically active	94702004
0	Age less than 15 years	94702004
2431	Not applicable	94702004
611	Employed	94702005
594	Unemployed	94702005
533	Discouraged work-seeker	94702005
2860	Other not economically active	94702005
0	Age less than 15 years	94702005
4089	Not applicable	94702005
908	Employed	94702006
509	Unemployed	94702006
415	Discouraged work-seeker	94702006
1989	Other not economically active	94702006
0	Age less than 15 years	94702006
2649	Not applicable	94702006
1287	Employed	94702007
1137	Unemployed	94702007
454	Discouraged work-seeker	94702007
3629	Other not economically active	94702007
0	Age less than 15 years	94702007
4959	Not applicable	94702007
387	Employed	94702008
523	Unemployed	94702008
249	Discouraged work-seeker	94702008
2332	Other not economically active	94702008
0	Age less than 15 years	94702008
2818	Not applicable	94702008
1470	Employed	94702009
1594	Unemployed	94702009
737	Discouraged work-seeker	94702009
2765	Other not economically active	94702009
0	Age less than 15 years	94702009
4640	Not applicable	94702009
488	Employed	94702010
911	Unemployed	94702010
290	Discouraged work-seeker	94702010
3491	Other not economically active	94702010
0	Age less than 15 years	94702010
4451	Not applicable	94702010
516	Employed	94702011
367	Unemployed	94702011
257	Discouraged work-seeker	94702011
1748	Other not economically active	94702011
0	Age less than 15 years	94702011
1837	Not applicable	94702011
2353	Employed	94702012
883	Unemployed	94702012
277	Discouraged work-seeker	94702012
2485	Other not economically active	94702012
0	Age less than 15 years	94702012
3705	Not applicable	94702012
1896	Employed	94702013
164	Unemployed	94702013
29	Discouraged work-seeker	94702013
742	Other not economically active	94702013
0	Age less than 15 years	94702013
1299	Not applicable	94702013
5203	Employed	94702014
1062	Unemployed	94702014
224	Discouraged work-seeker	94702014
2332	Other not economically active	94702014
0	Age less than 15 years	94702014
4122	Not applicable	94702014
492	Employed	94702015
422	Unemployed	94702015
287	Discouraged work-seeker	94702015
3199	Other not economically active	94702015
0	Age less than 15 years	94702015
4078	Not applicable	94702015
496	Employed	94702016
752	Unemployed	94702016
525	Discouraged work-seeker	94702016
2848	Other not economically active	94702016
0	Age less than 15 years	94702016
4130	Not applicable	94702016
658	Employed	94702017
414	Unemployed	94702017
200	Discouraged work-seeker	94702017
2377	Other not economically active	94702017
0	Age less than 15 years	94702017
2908	Not applicable	94702017
277	Employed	94702018
849	Unemployed	94702018
225	Discouraged work-seeker	94702018
2217	Other not economically active	94702018
0	Age less than 15 years	94702018
3488	Not applicable	94702018
482	Employed	94702019
681	Unemployed	94702019
409	Discouraged work-seeker	94702019
2355	Other not economically active	94702019
0	Age less than 15 years	94702019
3942	Not applicable	94702019
1621	Employed	94702020
769	Unemployed	94702020
550	Discouraged work-seeker	94702020
3022	Other not economically active	94702020
0	Age less than 15 years	94702020
4437	Not applicable	94702020
799	Employed	94702021
997	Unemployed	94702021
503	Discouraged work-seeker	94702021
3072	Other not economically active	94702021
0	Age less than 15 years	94702021
4979	Not applicable	94702021
332	Employed	94702022
591	Unemployed	94702022
408	Discouraged work-seeker	94702022
1483	Other not economically active	94702022
0	Age less than 15 years	94702022
2571	Not applicable	94702022
406	Employed	94702023
671	Unemployed	94702023
298	Discouraged work-seeker	94702023
2300	Other not economically active	94702023
0	Age less than 15 years	94702023
3329	Not applicable	94702023
775	Employed	94702024
1064	Unemployed	94702024
612	Discouraged work-seeker	94702024
3124	Other not economically active	94702024
0	Age less than 15 years	94702024
5028	Not applicable	94702024
559	Employed	94702025
964	Unemployed	94702025
257	Discouraged work-seeker	94702025
2419	Other not economically active	94702025
0	Age less than 15 years	94702025
3677	Not applicable	94702025
701	Employed	94702026
764	Unemployed	94702026
195	Discouraged work-seeker	94702026
1515	Other not economically active	94702026
0	Age less than 15 years	94702026
2468	Not applicable	94702026
1248	Employed	94702027
1262	Unemployed	94702027
907	Discouraged work-seeker	94702027
2962	Other not economically active	94702027
0	Age less than 15 years	94702027
4937	Not applicable	94702027
1037	Employed	94702028
997	Unemployed	94702028
423	Discouraged work-seeker	94702028
2699	Other not economically active	94702028
0	Age less than 15 years	94702028
4242	Not applicable	94702028
2470	Employed	94702029
798	Unemployed	94702029
467	Discouraged work-seeker	94702029
3167	Other not economically active	94702029
0	Age less than 15 years	94702029
2991	Not applicable	94702029
1721	Employed	94702030
1000	Unemployed	94702030
207	Discouraged work-seeker	94702030
2311	Other not economically active	94702030
0	Age less than 15 years	94702030
2963	Not applicable	94702030
1061	Employed	94703001
1063	Unemployed	94703001
566	Discouraged work-seeker	94703001
2626	Other not economically active	94703001
0	Age less than 15 years	94703001
4739	Not applicable	94703001
454	Employed	94703002
826	Unemployed	94703002
304	Discouraged work-seeker	94703002
2302	Other not economically active	94703002
0	Age less than 15 years	94703002
3537	Not applicable	94703002
1210	Employed	94703003
1269	Unemployed	94703003
373	Discouraged work-seeker	94703003
3088	Other not economically active	94703003
0	Age less than 15 years	94703003
4405	Not applicable	94703003
300	Employed	94703004
1009	Unemployed	94703004
770	Discouraged work-seeker	94703004
2295	Other not economically active	94703004
0	Age less than 15 years	94703004
3871	Not applicable	94703004
616	Employed	94703005
764	Unemployed	94703005
578	Discouraged work-seeker	94703005
2792	Other not economically active	94703005
0	Age less than 15 years	94703005
3893	Not applicable	94703005
404	Employed	94703006
865	Unemployed	94703006
306	Discouraged work-seeker	94703006
2681	Other not economically active	94703006
0	Age less than 15 years	94703006
3824	Not applicable	94703006
159	Employed	94703007
496	Unemployed	94703007
117	Discouraged work-seeker	94703007
2313	Other not economically active	94703007
0	Age less than 15 years	94703007
3114	Not applicable	94703007
1182	Employed	94703008
1525	Unemployed	94703008
527	Discouraged work-seeker	94703008
4707	Other not economically active	94703008
0	Age less than 15 years	94703008
6375	Not applicable	94703008
1098	Employed	94703009
1397	Unemployed	94703009
620	Discouraged work-seeker	94703009
2635	Other not economically active	94703009
0	Age less than 15 years	94703009
4665	Not applicable	94703009
564	Employed	94703010
733	Unemployed	94703010
452	Discouraged work-seeker	94703010
1997	Other not economically active	94703010
0	Age less than 15 years	94703010
3175	Not applicable	94703010
700	Employed	94703011
1385	Unemployed	94703011
84	Discouraged work-seeker	94703011
1483	Other not economically active	94703011
0	Age less than 15 years	94703011
2596	Not applicable	94703011
679	Employed	94703012
1295	Unemployed	94703012
355	Discouraged work-seeker	94703012
2580	Other not economically active	94703012
0	Age less than 15 years	94703012
4098	Not applicable	94703012
878	Employed	94703013
1471	Unemployed	94703013
752	Discouraged work-seeker	94703013
3199	Other not economically active	94703013
0	Age less than 15 years	94703013
5088	Not applicable	94703013
599	Employed	94703014
995	Unemployed	94703014
203	Discouraged work-seeker	94703014
1833	Other not economically active	94703014
0	Age less than 15 years	94703014
2837	Not applicable	94703014
273	Employed	94703015
364	Unemployed	94703015
893	Discouraged work-seeker	94703015
2202	Other not economically active	94703015
0	Age less than 15 years	94703015
3390	Not applicable	94703015
455	Employed	94703016
669	Unemployed	94703016
243	Discouraged work-seeker	94703016
2666	Other not economically active	94703016
0	Age less than 15 years	94703016
3210	Not applicable	94703016
423	Employed	94703017
944	Unemployed	94703017
560	Discouraged work-seeker	94703017
3043	Other not economically active	94703017
0	Age less than 15 years	94703017
4370	Not applicable	94703017
1487	Employed	94703018
1975	Unemployed	94703018
358	Discouraged work-seeker	94703018
2310	Other not economically active	94703018
0	Age less than 15 years	94703018
4161	Not applicable	94703018
521	Employed	94703019
1923	Unemployed	94703019
317	Discouraged work-seeker	94703019
2661	Other not economically active	94703019
0	Age less than 15 years	94703019
4439	Not applicable	94703019
504	Employed	94703020
937	Unemployed	94703020
304	Discouraged work-seeker	94703020
3164	Other not economically active	94703020
0	Age less than 15 years	94703020
4304	Not applicable	94703020
1305	Employed	94703021
1420	Unemployed	94703021
525	Discouraged work-seeker	94703021
2690	Other not economically active	94703021
0	Age less than 15 years	94703021
4441	Not applicable	94703021
400	Employed	94703022
890	Unemployed	94703022
398	Discouraged work-seeker	94703022
2434	Other not economically active	94703022
0	Age less than 15 years	94703022
3697	Not applicable	94703022
626	Employed	94703023
1350	Unemployed	94703023
750	Discouraged work-seeker	94703023
3000	Other not economically active	94703023
0	Age less than 15 years	94703023
5202	Not applicable	94703023
400	Employed	94703024
911	Unemployed	94703024
229	Discouraged work-seeker	94703024
2632	Other not economically active	94703024
0	Age less than 15 years	94703024
3703	Not applicable	94703024
532	Employed	94703025
1109	Unemployed	94703025
680	Discouraged work-seeker	94703025
2869	Other not economically active	94703025
0	Age less than 15 years	94703025
4917	Not applicable	94703025
769	Employed	94703026
636	Unemployed	94703026
608	Discouraged work-seeker	94703026
2850	Other not economically active	94703026
0	Age less than 15 years	94703026
4308	Not applicable	94703026
413	Employed	94703027
1234	Unemployed	94703027
218	Discouraged work-seeker	94703027
2405	Other not economically active	94703027
0	Age less than 15 years	94703027
3845	Not applicable	94703027
520	Employed	94703028
1630	Unemployed	94703028
547	Discouraged work-seeker	94703028
3050	Other not economically active	94703028
0	Age less than 15 years	94703028
5460	Not applicable	94703028
298	Employed	94703029
580	Unemployed	94703029
333	Discouraged work-seeker	94703029
2055	Other not economically active	94703029
0	Age less than 15 years	94703029
3251	Not applicable	94703029
440	Employed	94703030
587	Unemployed	94703030
266	Discouraged work-seeker	94703030
3209	Other not economically active	94703030
0	Age less than 15 years	94703030
4060	Not applicable	94703030
264	Employed	94703031
530	Unemployed	94703031
420	Discouraged work-seeker	94703031
2221	Other not economically active	94703031
0	Age less than 15 years	94703031
3418	Not applicable	94703031
263	Employed	94704001
939	Unemployed	94704001
271	Discouraged work-seeker	94704001
1853	Other not economically active	94704001
0	Age less than 15 years	94704001
2761	Not applicable	94704001
399	Employed	94704002
764	Unemployed	94704002
549	Discouraged work-seeker	94704002
2351	Other not economically active	94704002
0	Age less than 15 years	94704002
3960	Not applicable	94704002
597	Employed	94704003
949	Unemployed	94704003
460	Discouraged work-seeker	94704003
2101	Other not economically active	94704003
0	Age less than 15 years	94704003
3325	Not applicable	94704003
177	Employed	94704004
620	Unemployed	94704004
144	Discouraged work-seeker	94704004
2178	Other not economically active	94704004
0	Age less than 15 years	94704004
2875	Not applicable	94704004
431	Employed	94704005
540	Unemployed	94704005
393	Discouraged work-seeker	94704005
1846	Other not economically active	94704005
0	Age less than 15 years	94704005
2775	Not applicable	94704005
1087	Employed	94704006
1290	Unemployed	94704006
389	Discouraged work-seeker	94704006
2144	Other not economically active	94704006
0	Age less than 15 years	94704006
3654	Not applicable	94704006
778	Employed	94704007
898	Unemployed	94704007
259	Discouraged work-seeker	94704007
2653	Other not economically active	94704007
0	Age less than 15 years	94704007
3696	Not applicable	94704007
880	Employed	94704008
1094	Unemployed	94704008
139	Discouraged work-seeker	94704008
1794	Other not economically active	94704008
0	Age less than 15 years	94704008
3023	Not applicable	94704008
590	Employed	94704009
795	Unemployed	94704009
182	Discouraged work-seeker	94704009
2004	Other not economically active	94704009
0	Age less than 15 years	94704009
2874	Not applicable	94704009
739	Employed	94704010
1391	Unemployed	94704010
58	Discouraged work-seeker	94704010
1078	Other not economically active	94704010
0	Age less than 15 years	94704010
2095	Not applicable	94704010
610	Employed	94704011
1754	Unemployed	94704011
226	Discouraged work-seeker	94704011
2763	Other not economically active	94704011
0	Age less than 15 years	94704011
4095	Not applicable	94704011
1823	Employed	94704012
1200	Unemployed	94704012
67	Discouraged work-seeker	94704012
2130	Other not economically active	94704012
0	Age less than 15 years	94704012
2785	Not applicable	94704012
809	Employed	94704013
920	Unemployed	94704013
137	Discouraged work-seeker	94704013
2466	Other not economically active	94704013
0	Age less than 15 years	94704013
2905	Not applicable	94704013
1841	Employed	94705001
548	Unemployed	94705001
396	Discouraged work-seeker	94705001
2211	Other not economically active	94705001
0	Age less than 15 years	94705001
3405	Not applicable	94705001
3693	Employed	94705002
2110	Unemployed	94705002
344	Discouraged work-seeker	94705002
3772	Other not economically active	94705002
0	Age less than 15 years	94705002
5070	Not applicable	94705002
951	Employed	94705003
1800	Unemployed	94705003
168	Discouraged work-seeker	94705003
2715	Other not economically active	94705003
0	Age less than 15 years	94705003
4060	Not applicable	94705003
823	Employed	94705004
1182	Unemployed	94705004
66	Discouraged work-seeker	94705004
1167	Other not economically active	94705004
0	Age less than 15 years	94705004
1842	Not applicable	94705004
2180	Employed	94705005
1545	Unemployed	94705005
577	Discouraged work-seeker	94705005
4229	Other not economically active	94705005
0	Age less than 15 years	94705005
5509	Not applicable	94705005
1214	Employed	94705006
1354	Unemployed	94705006
298	Discouraged work-seeker	94705006
2602	Other not economically active	94705006
0	Age less than 15 years	94705006
3562	Not applicable	94705006
2329	Employed	94705007
1994	Unemployed	94705007
533	Discouraged work-seeker	94705007
3047	Other not economically active	94705007
0	Age less than 15 years	94705007
4180	Not applicable	94705007
1237	Employed	94705008
2297	Unemployed	94705008
94	Discouraged work-seeker	94705008
3008	Other not economically active	94705008
0	Age less than 15 years	94705008
4657	Not applicable	94705008
1062	Employed	94705009
2216	Unemployed	94705009
393	Discouraged work-seeker	94705009
2882	Other not economically active	94705009
0	Age less than 15 years	94705009
5055	Not applicable	94705009
2178	Employed	94705010
1941	Unemployed	94705010
443	Discouraged work-seeker	94705010
3267	Other not economically active	94705010
0	Age less than 15 years	94705010
4750	Not applicable	94705010
1282	Employed	94705011
1158	Unemployed	94705011
351	Discouraged work-seeker	94705011
1873	Other not economically active	94705011
0	Age less than 15 years	94705011
2750	Not applicable	94705011
1031	Employed	94705012
1494	Unemployed	94705012
251	Discouraged work-seeker	94705012
2477	Other not economically active	94705012
0	Age less than 15 years	94705012
3544	Not applicable	94705012
3387	Employed	94705013
2156	Unemployed	94705013
793	Discouraged work-seeker	94705013
4652	Other not economically active	94705013
0	Age less than 15 years	94705013
6019	Not applicable	94705013
1635	Employed	94705014
1909	Unemployed	94705014
367	Discouraged work-seeker	94705014
3289	Other not economically active	94705014
0	Age less than 15 years	94705014
5406	Not applicable	94705014
503	Employed	94705015
1292	Unemployed	94705015
51	Discouraged work-seeker	94705015
2722	Other not economically active	94705015
0	Age less than 15 years	94705015
3721	Not applicable	94705015
707	Employed	94705016
826	Unemployed	94705016
328	Discouraged work-seeker	94705016
2696	Other not economically active	94705016
0	Age less than 15 years	94705016
3584	Not applicable	94705016
1451	Employed	94705017
2320	Unemployed	94705017
472	Discouraged work-seeker	94705017
2524	Other not economically active	94705017
0	Age less than 15 years	94705017
4767	Not applicable	94705017
3952	Employed	94705018
1258	Unemployed	94705018
210	Discouraged work-seeker	94705018
2957	Other not economically active	94705018
0	Age less than 15 years	94705018
3573	Not applicable	94705018
1768	Employed	94705019
1804	Unemployed	94705019
319	Discouraged work-seeker	94705019
2607	Other not economically active	94705019
0	Age less than 15 years	94705019
4301	Not applicable	94705019
1572	Employed	94705020
2044	Unemployed	94705020
338	Discouraged work-seeker	94705020
3422	Other not economically active	94705020
0	Age less than 15 years	94705020
4834	Not applicable	94705020
517	Employed	94705021
920	Unemployed	94705021
66	Discouraged work-seeker	94705021
2145	Other not economically active	94705021
0	Age less than 15 years	94705021
2841	Not applicable	94705021
638	Employed	94705022
761	Unemployed	94705022
240	Discouraged work-seeker	94705022
3280	Other not economically active	94705022
0	Age less than 15 years	94705022
3715	Not applicable	94705022
808	Employed	94705023
1205	Unemployed	94705023
595	Discouraged work-seeker	94705023
2989	Other not economically active	94705023
0	Age less than 15 years	94705023
4024	Not applicable	94705023
458	Employed	94705024
469	Unemployed	94705024
628	Discouraged work-seeker	94705024
3188	Other not economically active	94705024
0	Age less than 15 years	94705024
4209	Not applicable	94705024
2369	Employed	94705025
2822	Unemployed	94705025
278	Discouraged work-seeker	94705025
3174	Other not economically active	94705025
0	Age less than 15 years	94705025
5417	Not applicable	94705025
390	Employed	94705026
548	Unemployed	94705026
540	Discouraged work-seeker	94705026
2727	Other not economically active	94705026
0	Age less than 15 years	94705026
3502	Not applicable	94705026
1510	Employed	94705027
2378	Unemployed	94705027
255	Discouraged work-seeker	94705027
3036	Other not economically active	94705027
0	Age less than 15 years	94705027
5286	Not applicable	94705027
1447	Employed	94705028
2472	Unemployed	94705028
131	Discouraged work-seeker	94705028
2871	Other not economically active	94705028
0	Age less than 15 years	94705028
4820	Not applicable	94705028
757	Employed	94705029
1567	Unemployed	94705029
700	Discouraged work-seeker	94705029
3418	Other not economically active	94705029
0	Age less than 15 years	94705029
5077	Not applicable	94705029
2162	Employed	94705030
2056	Unemployed	94705030
273	Discouraged work-seeker	94705030
3983	Other not economically active	94705030
0	Age less than 15 years	94705030
5321	Not applicable	94705030
3673	Employed	94705031
1774	Unemployed	94705031
108	Discouraged work-seeker	94705031
3444	Other not economically active	94705031
0	Age less than 15 years	94705031
4151	Not applicable	94705031
712	Employed	83001001
509	Unemployed	83001001
805	Discouraged work-seeker	83001001
2664	Other not economically active	83001001
0	Age less than 15 years	83001001
3999	Not applicable	83001001
808	Employed	83001002
287	Unemployed	83001002
390	Discouraged work-seeker	83001002
2746	Other not economically active	83001002
0	Age less than 15 years	83001002
3392	Not applicable	83001002
709	Employed	83001003
225	Unemployed	83001003
669	Discouraged work-seeker	83001003
2736	Other not economically active	83001003
0	Age less than 15 years	83001003
3666	Not applicable	83001003
1290	Employed	83001004
659	Unemployed	83001004
405	Discouraged work-seeker	83001004
2463	Other not economically active	83001004
0	Age less than 15 years	83001004
3321	Not applicable	83001004
712	Employed	83001005
599	Unemployed	83001005
242	Discouraged work-seeker	83001005
1901	Other not economically active	83001005
0	Age less than 15 years	83001005
2845	Not applicable	83001005
593	Employed	83001006
368	Unemployed	83001006
354	Discouraged work-seeker	83001006
2910	Other not economically active	83001006
0	Age less than 15 years	83001006
3607	Not applicable	83001006
211	Employed	83001007
190	Unemployed	83001007
114	Discouraged work-seeker	83001007
784	Other not economically active	83001007
0	Age less than 15 years	83001007
1101	Not applicable	83001007
326	Employed	83001008
293	Unemployed	83001008
153	Discouraged work-seeker	83001008
1341	Other not economically active	83001008
0	Age less than 15 years	83001008
1696	Not applicable	83001008
1442	Employed	83001009
573	Unemployed	83001009
927	Discouraged work-seeker	83001009
4368	Other not economically active	83001009
0	Age less than 15 years	83001009
5501	Not applicable	83001009
1071	Employed	83001010
662	Unemployed	83001010
147	Discouraged work-seeker	83001010
2014	Other not economically active	83001010
0	Age less than 15 years	83001010
2814	Not applicable	83001010
581	Employed	83001011
433	Unemployed	83001011
320	Discouraged work-seeker	83001011
2863	Other not economically active	83001011
0	Age less than 15 years	83001011
3186	Not applicable	83001011
838	Employed	83001012
965	Unemployed	83001012
226	Discouraged work-seeker	83001012
2085	Other not economically active	83001012
0	Age less than 15 years	83001012
3126	Not applicable	83001012
876	Employed	83001013
407	Unemployed	83001013
269	Discouraged work-seeker	83001013
1220	Other not economically active	83001013
0	Age less than 15 years	83001013
2074	Not applicable	83001013
2169	Employed	83001014
798	Unemployed	83001014
422	Discouraged work-seeker	83001014
2308	Other not economically active	83001014
0	Age less than 15 years	83001014
3479	Not applicable	83001014
2984	Employed	83001015
1454	Unemployed	83001015
275	Discouraged work-seeker	83001015
2843	Other not economically active	83001015
0	Age less than 15 years	83001015
3815	Not applicable	83001015
1120	Employed	83001016
1106	Unemployed	83001016
555	Discouraged work-seeker	83001016
2368	Other not economically active	83001016
0	Age less than 15 years	83001016
4194	Not applicable	83001016
1132	Employed	83001017
492	Unemployed	83001017
23	Discouraged work-seeker	83001017
848	Other not economically active	83001017
0	Age less than 15 years	83001017
1372	Not applicable	83001017
1622	Employed	83001018
757	Unemployed	83001018
622	Discouraged work-seeker	83001018
2660	Other not economically active	83001018
0	Age less than 15 years	83001018
4358	Not applicable	83001018
638	Employed	83001019
538	Unemployed	83001019
542	Discouraged work-seeker	83001019
1866	Other not economically active	83001019
0	Age less than 15 years	83001019
2909	Not applicable	83001019
696	Employed	83001020
536	Unemployed	83001020
273	Discouraged work-seeker	83001020
1587	Other not economically active	83001020
0	Age less than 15 years	83001020
2154	Not applicable	83001020
3021	Employed	83001021
741	Unemployed	83001021
406	Discouraged work-seeker	83001021
2129	Other not economically active	83001021
0	Age less than 15 years	83001021
3619	Not applicable	83001021
406	Employed	83001022
356	Unemployed	83001022
24	Discouraged work-seeker	83001022
391	Other not economically active	83001022
0	Age less than 15 years	83001022
626	Not applicable	83001022
2635	Employed	83001023
825	Unemployed	83001023
278	Discouraged work-seeker	83001023
2179	Other not economically active	83001023
0	Age less than 15 years	83001023
3488	Not applicable	83001023
1867	Employed	83001024
1614	Unemployed	83001024
312	Discouraged work-seeker	83001024
2548	Other not economically active	83001024
0	Age less than 15 years	83001024
4414	Not applicable	83001024
683	Employed	83001025
587	Unemployed	83001025
526	Discouraged work-seeker	83001025
2123	Other not economically active	83001025
0	Age less than 15 years	83001025
2913	Not applicable	83001025
1802	Employed	83002001
1110	Unemployed	83002001
71	Discouraged work-seeker	83002001
1251	Other not economically active	83002001
0	Age less than 15 years	83002001
1865	Not applicable	83002001
2272	Employed	83002002
793	Unemployed	83002002
447	Discouraged work-seeker	83002002
2212	Other not economically active	83002002
0	Age less than 15 years	83002002
3169	Not applicable	83002002
2434	Employed	83002003
1013	Unemployed	83002003
158	Discouraged work-seeker	83002003
3048	Other not economically active	83002003
0	Age less than 15 years	83002003
2696	Not applicable	83002003
1663	Employed	83002004
648	Unemployed	83002004
246	Discouraged work-seeker	83002004
996	Other not economically active	83002004
0	Age less than 15 years	83002004
1486	Not applicable	83002004
1074	Employed	83002005
290	Unemployed	83002005
135	Discouraged work-seeker	83002005
805	Other not economically active	83002005
0	Age less than 15 years	83002005
1126	Not applicable	83002005
1833	Employed	83002006
905	Unemployed	83002006
59	Discouraged work-seeker	83002006
1059	Other not economically active	83002006
0	Age less than 15 years	83002006
1448	Not applicable	83002006
2428	Employed	83002007
226	Unemployed	83002007
46	Discouraged work-seeker	83002007
1362	Other not economically active	83002007
0	Age less than 15 years	83002007
1549	Not applicable	83002007
5598	Employed	83002008
519	Unemployed	83002008
176	Discouraged work-seeker	83002008
3033	Other not economically active	83002008
0	Age less than 15 years	83002008
4271	Not applicable	83002008
2521	Employed	83002009
1234	Unemployed	83002009
407	Discouraged work-seeker	83002009
2373	Other not economically active	83002009
0	Age less than 15 years	83002009
3254	Not applicable	83002009
1798	Employed	83002010
667	Unemployed	83002010
338	Discouraged work-seeker	83002010
2393	Other not economically active	83002010
0	Age less than 15 years	83002010
3287	Not applicable	83002010
1345	Employed	83002011
756	Unemployed	83002011
386	Discouraged work-seeker	83002011
1763	Other not economically active	83002011
0	Age less than 15 years	83002011
3038	Not applicable	83002011
649	Employed	83002012
250	Unemployed	83002012
256	Discouraged work-seeker	83002012
842	Other not economically active	83002012
0	Age less than 15 years	83002012
1278	Not applicable	83002012
2014	Employed	83002013
1100	Unemployed	83002013
640	Discouraged work-seeker	83002013
2095	Other not economically active	83002013
0	Age less than 15 years	83002013
3105	Not applicable	83002013
1172	Employed	83002014
1042	Unemployed	83002014
343	Discouraged work-seeker	83002014
1374	Other not economically active	83002014
0	Age less than 15 years	83002014
2439	Not applicable	83002014
1934	Employed	83002015
756	Unemployed	83002015
407	Discouraged work-seeker	83002015
2994	Other not economically active	83002015
0	Age less than 15 years	83002015
4011	Not applicable	83002015
5117	Employed	83002016
1888	Unemployed	83002016
373	Discouraged work-seeker	83002016
3077	Other not economically active	83002016
0	Age less than 15 years	83002016
5266	Not applicable	83002016
2063	Employed	83002017
786	Unemployed	83002017
148	Discouraged work-seeker	83002017
1869	Other not economically active	83002017
0	Age less than 15 years	83002017
2287	Not applicable	83002017
1753	Employed	83002018
519	Unemployed	83002018
274	Discouraged work-seeker	83002018
1204	Other not economically active	83002018
0	Age less than 15 years	83002018
2706	Not applicable	83002018
2225	Employed	83002019
765	Unemployed	83002019
400	Discouraged work-seeker	83002019
1874	Other not economically active	83002019
0	Age less than 15 years	83002019
3196	Not applicable	83002019
1306	Employed	83003001
1235	Unemployed	83003001
284	Discouraged work-seeker	83003001
2956	Other not economically active	83003001
0	Age less than 15 years	83003001
4352	Not applicable	83003001
1720	Employed	83003002
1356	Unemployed	83003002
735	Discouraged work-seeker	83003002
5157	Other not economically active	83003002
0	Age less than 15 years	83003002
7476	Not applicable	83003002
1135	Employed	83003003
1499	Unemployed	83003003
569	Discouraged work-seeker	83003003
3883	Other not economically active	83003003
0	Age less than 15 years	83003003
5918	Not applicable	83003003
1308	Employed	83003004
130	Unemployed	83003004
84	Discouraged work-seeker	83003004
2180	Other not economically active	83003004
0	Age less than 15 years	83003004
2161	Not applicable	83003004
1723	Employed	83003005
1180	Unemployed	83003005
414	Discouraged work-seeker	83003005
3718	Other not economically active	83003005
0	Age less than 15 years	83003005
5152	Not applicable	83003005
1851	Employed	83003006
567	Unemployed	83003006
162	Discouraged work-seeker	83003006
2165	Other not economically active	83003006
0	Age less than 15 years	83003006
3532	Not applicable	83003006
2315	Employed	83003007
270	Unemployed	83003007
40	Discouraged work-seeker	83003007
1827	Other not economically active	83003007
0	Age less than 15 years	83003007
1631	Not applicable	83003007
1684	Employed	83003008
1081	Unemployed	83003008
316	Discouraged work-seeker	83003008
2362	Other not economically active	83003008
0	Age less than 15 years	83003008
3652	Not applicable	83003008
2123	Employed	83003009
1098	Unemployed	83003009
437	Discouraged work-seeker	83003009
4013	Other not economically active	83003009
0	Age less than 15 years	83003009
6359	Not applicable	83003009
1874	Employed	83003010
684	Unemployed	83003010
228	Discouraged work-seeker	83003010
1778	Other not economically active	83003010
0	Age less than 15 years	83003010
2186	Not applicable	83003010
2481	Employed	83003011
1734	Unemployed	83003011
278	Discouraged work-seeker	83003011
3137	Other not economically active	83003011
0	Age less than 15 years	83003011
4690	Not applicable	83003011
1317	Employed	83003012
744	Unemployed	83003012
337	Discouraged work-seeker	83003012
1703	Other not economically active	83003012
0	Age less than 15 years	83003012
2282	Not applicable	83003012
1103	Employed	83003013
1562	Unemployed	83003013
198	Discouraged work-seeker	83003013
1682	Other not economically active	83003013
0	Age less than 15 years	83003013
2906	Not applicable	83003013
2565	Employed	83003014
808	Unemployed	83003014
234	Discouraged work-seeker	83003014
2350	Other not economically active	83003014
0	Age less than 15 years	83003014
3439	Not applicable	83003014
1475	Employed	83003015
487	Unemployed	83003015
573	Discouraged work-seeker	83003015
2134	Other not economically active	83003015
0	Age less than 15 years	83003015
3784	Not applicable	83003015
962	Employed	83003016
898	Unemployed	83003016
494	Discouraged work-seeker	83003016
1172	Other not economically active	83003016
0	Age less than 15 years	83003016
2174	Not applicable	83003016
1085	Employed	83003017
889	Unemployed	83003017
226	Discouraged work-seeker	83003017
1828	Other not economically active	83003017
0	Age less than 15 years	83003017
2855	Not applicable	83003017
339	Employed	83003018
465	Unemployed	83003018
69	Discouraged work-seeker	83003018
1097	Other not economically active	83003018
0	Age less than 15 years	83003018
1434	Not applicable	83003018
2144	Employed	83003019
433	Unemployed	83003019
379	Discouraged work-seeker	83003019
2942	Other not economically active	83003019
0	Age less than 15 years	83003019
4221	Not applicable	83003019
1580	Employed	83004001
1184	Unemployed	83004001
283	Discouraged work-seeker	83004001
1773	Other not economically active	83004001
0	Age less than 15 years	83004001
2734	Not applicable	83004001
637	Employed	83004002
519	Unemployed	83004002
135	Discouraged work-seeker	83004002
882	Other not economically active	83004002
0	Age less than 15 years	83004002
1239	Not applicable	83004002
1904	Employed	83004003
965	Unemployed	83004003
270	Discouraged work-seeker	83004003
2066	Other not economically active	83004003
0	Age less than 15 years	83004003
2663	Not applicable	83004003
2314	Employed	83004004
339	Unemployed	83004004
115	Discouraged work-seeker	83004004
1667	Other not economically active	83004004
0	Age less than 15 years	83004004
2328	Not applicable	83004004
979	Employed	83004005
791	Unemployed	83004005
246	Discouraged work-seeker	83004005
1947	Other not economically active	83004005
0	Age less than 15 years	83004005
2889	Not applicable	83004005
1488	Employed	83004006
554	Unemployed	83004006
336	Discouraged work-seeker	83004006
3015	Other not economically active	83004006
0	Age less than 15 years	83004006
3678	Not applicable	83004006
1505	Employed	83004007
746	Unemployed	83004007
288	Discouraged work-seeker	83004007
1813	Other not economically active	83004007
0	Age less than 15 years	83004007
2596	Not applicable	83004007
1383	Employed	83004008
680	Unemployed	83004008
491	Discouraged work-seeker	83004008
2122	Other not economically active	83004008
0	Age less than 15 years	83004008
3187	Not applicable	83004008
305	Employed	83004009
518	Unemployed	83004009
482	Discouraged work-seeker	83004009
1581	Other not economically active	83004009
0	Age less than 15 years	83004009
2571	Not applicable	83004009
1401	Employed	83004010
794	Unemployed	83004010
783	Discouraged work-seeker	83004010
3869	Other not economically active	83004010
0	Age less than 15 years	83004010
5765	Not applicable	83004010
483	Employed	83004011
816	Unemployed	83004011
756	Discouraged work-seeker	83004011
2649	Other not economically active	83004011
0	Age less than 15 years	83004011
4134	Not applicable	83004011
1703	Employed	83005001
800	Unemployed	83005001
137	Discouraged work-seeker	83005001
1419	Other not economically active	83005001
0	Age less than 15 years	83005001
2135	Not applicable	83005001
1134	Employed	83005002
486	Unemployed	83005002
73	Discouraged work-seeker	83005002
1122	Other not economically active	83005002
0	Age less than 15 years	83005002
1469	Not applicable	83005002
2425	Employed	83005003
700	Unemployed	83005003
137	Discouraged work-seeker	83005003
1822	Other not economically active	83005003
0	Age less than 15 years	83005003
2619	Not applicable	83005003
2415	Employed	83005004
330	Unemployed	83005004
50	Discouraged work-seeker	83005004
1270	Other not economically active	83005004
0	Age less than 15 years	83005004
1782	Not applicable	83005004
1994	Employed	83005005
949	Unemployed	83005005
136	Discouraged work-seeker	83005005
2222	Other not economically active	83005005
0	Age less than 15 years	83005005
2673	Not applicable	83005005
1320	Employed	83005006
854	Unemployed	83005006
54	Discouraged work-seeker	83005006
1226	Other not economically active	83005006
0	Age less than 15 years	83005006
1666	Not applicable	83005006
1698	Employed	83005007
1077	Unemployed	83005007
87	Discouraged work-seeker	83005007
1234	Other not economically active	83005007
0	Age less than 15 years	83005007
2094	Not applicable	83005007
4039	Employed	83005008
459	Unemployed	83005008
99	Discouraged work-seeker	83005008
2436	Other not economically active	83005008
0	Age less than 15 years	83005008
2394	Not applicable	83005008
2163	Employed	83005009
520	Unemployed	83005009
276	Discouraged work-seeker	83005009
1582	Other not economically active	83005009
0	Age less than 15 years	83005009
2622	Not applicable	83005009
2523	Employed	83005010
147	Unemployed	83005010
61	Discouraged work-seeker	83005010
1421	Other not economically active	83005010
0	Age less than 15 years	83005010
1531	Not applicable	83005010
2933	Employed	83005011
1906	Unemployed	83005011
544	Discouraged work-seeker	83005011
2992	Other not economically active	83005011
0	Age less than 15 years	83005011
4750	Not applicable	83005011
3233	Employed	83005012
779	Unemployed	83005012
243	Discouraged work-seeker	83005012
2397	Other not economically active	83005012
0	Age less than 15 years	83005012
3410	Not applicable	83005012
1716	Employed	83005013
456	Unemployed	83005013
184	Discouraged work-seeker	83005013
1758	Other not economically active	83005013
0	Age less than 15 years	83005013
2645	Not applicable	83005013
1289	Employed	83005014
841	Unemployed	83005014
217	Discouraged work-seeker	83005014
2438	Other not economically active	83005014
0	Age less than 15 years	83005014
2861	Not applicable	83005014
3534	Employed	83005015
1589	Unemployed	83005015
301	Discouraged work-seeker	83005015
2831	Other not economically active	83005015
0	Age less than 15 years	83005015
4227	Not applicable	83005015
1715	Employed	83006001
1527	Unemployed	83006001
82	Discouraged work-seeker	83006001
1581	Other not economically active	83006001
0	Age less than 15 years	83006001
2733	Not applicable	83006001
1704	Employed	83006002
1312	Unemployed	83006002
264	Discouraged work-seeker	83006002
1712	Other not economically active	83006002
0	Age less than 15 years	83006002
2422	Not applicable	83006002
1847	Employed	83006003
299	Unemployed	83006003
125	Discouraged work-seeker	83006003
1165	Other not economically active	83006003
0	Age less than 15 years	83006003
1669	Not applicable	83006003
1777	Employed	83006004
1633	Unemployed	83006004
431	Discouraged work-seeker	83006004
1551	Other not economically active	83006004
0	Age less than 15 years	83006004
2788	Not applicable	83006004
2103	Employed	83006005
626	Unemployed	83006005
112	Discouraged work-seeker	83006005
1897	Other not economically active	83006005
0	Age less than 15 years	83006005
2250	Not applicable	83006005
1399	Employed	83006006
846	Unemployed	83006006
281	Discouraged work-seeker	83006006
1970	Other not economically active	83006006
0	Age less than 15 years	83006006
2568	Not applicable	83006006
3881	Employed	83007001
1563	Unemployed	83007001
438	Discouraged work-seeker	83007001
2776	Other not economically active	83007001
0	Age less than 15 years	83007001
4677	Not applicable	83007001
2332	Employed	83007002
1003	Unemployed	83007002
406	Discouraged work-seeker	83007002
2764	Other not economically active	83007002
0	Age less than 15 years	83007002
3612	Not applicable	83007002
2057	Employed	83007003
1777	Unemployed	83007003
184	Discouraged work-seeker	83007003
2062	Other not economically active	83007003
0	Age less than 15 years	83007003
3155	Not applicable	83007003
1570	Employed	83007004
1066	Unemployed	83007004
152	Discouraged work-seeker	83007004
1550	Other not economically active	83007004
0	Age less than 15 years	83007004
2090	Not applicable	83007004
4419	Employed	83007005
249	Unemployed	83007005
28	Discouraged work-seeker	83007005
2255	Other not economically active	83007005
0	Age less than 15 years	83007005
2267	Not applicable	83007005
1056	Employed	83007006
942	Unemployed	83007006
147	Discouraged work-seeker	83007006
1168	Other not economically active	83007006
0	Age less than 15 years	83007006
1655	Not applicable	83007006
2712	Employed	83007007
849	Unemployed	83007007
115	Discouraged work-seeker	83007007
1305	Other not economically active	83007007
0	Age less than 15 years	83007007
1939	Not applicable	83007007
2067	Employed	83007008
1044	Unemployed	83007008
159	Discouraged work-seeker	83007008
1434	Other not economically active	83007008
0	Age less than 15 years	83007008
2191	Not applicable	83007008
2144	Employed	83007009
1294	Unemployed	83007009
100	Discouraged work-seeker	83007009
1008	Other not economically active	83007009
0	Age less than 15 years	83007009
1842	Not applicable	83007009
3272	Employed	83007010
1754	Unemployed	83007010
193	Discouraged work-seeker	83007010
1889	Other not economically active	83007010
0	Age less than 15 years	83007010
3306	Not applicable	83007010
2813	Employed	83007011
732	Unemployed	83007011
268	Discouraged work-seeker	83007011
1952	Other not economically active	83007011
0	Age less than 15 years	83007011
2328	Not applicable	83007011
3761	Employed	83007012
1411	Unemployed	83007012
353	Discouraged work-seeker	83007012
1841	Other not economically active	83007012
0	Age less than 15 years	83007012
3355	Not applicable	83007012
1795	Employed	83007013
1033	Unemployed	83007013
361	Discouraged work-seeker	83007013
1627	Other not economically active	83007013
0	Age less than 15 years	83007013
2318	Not applicable	83007013
1456	Employed	83007014
940	Unemployed	83007014
186	Discouraged work-seeker	83007014
734	Other not economically active	83007014
0	Age less than 15 years	83007014
1546	Not applicable	83007014
4755	Employed	83007015
864	Unemployed	83007015
251	Discouraged work-seeker	83007015
2920	Other not economically active	83007015
0	Age less than 15 years	83007015
4170	Not applicable	83007015
3980	Employed	83007016
1498	Unemployed	83007016
377	Discouraged work-seeker	83007016
3362	Other not economically active	83007016
0	Age less than 15 years	83007016
4155	Not applicable	83007016
2335	Employed	83007017
351	Unemployed	83007017
49	Discouraged work-seeker	83007017
1214	Other not economically active	83007017
0	Age less than 15 years	83007017
1425	Not applicable	83007017
5278	Employed	83007018
701	Unemployed	83007018
118	Discouraged work-seeker	83007018
2078	Other not economically active	83007018
0	Age less than 15 years	83007018
2647	Not applicable	83007018
4717	Employed	83007019
3485	Unemployed	83007019
488	Discouraged work-seeker	83007019
3747	Other not economically active	83007019
0	Age less than 15 years	83007019
5710	Not applicable	83007019
3647	Employed	83007020
2525	Unemployed	83007020
440	Discouraged work-seeker	83007020
2212	Other not economically active	83007020
0	Age less than 15 years	83007020
3259	Not applicable	83007020
4444	Employed	83007021
211	Unemployed	83007021
39	Discouraged work-seeker	83007021
1278	Other not economically active	83007021
0	Age less than 15 years	83007021
2018	Not applicable	83007021
2789	Employed	83007022
1078	Unemployed	83007022
463	Discouraged work-seeker	83007022
2525	Other not economically active	83007022
0	Age less than 15 years	83007022
3641	Not applicable	83007022
1445	Employed	83007023
845	Unemployed	83007023
48	Discouraged work-seeker	83007023
1264	Other not economically active	83007023
0	Age less than 15 years	83007023
1828	Not applicable	83007023
1734	Employed	83007024
977	Unemployed	83007024
335	Discouraged work-seeker	83007024
2070	Other not economically active	83007024
0	Age less than 15 years	83007024
2623	Not applicable	83007024
5876	Employed	83007025
343	Unemployed	83007025
45	Discouraged work-seeker	83007025
2043	Other not economically active	83007025
0	Age less than 15 years	83007025
2821	Not applicable	83007025
3386	Employed	83007026
1351	Unemployed	83007026
169	Discouraged work-seeker	83007026
2801	Other not economically active	83007026
0	Age less than 15 years	83007026
3882	Not applicable	83007026
1619	Employed	83007027
731	Unemployed	83007027
116	Discouraged work-seeker	83007027
1377	Other not economically active	83007027
0	Age less than 15 years	83007027
1662	Not applicable	83007027
5210	Employed	83007028
786	Unemployed	83007028
148	Discouraged work-seeker	83007028
3164	Other not economically active	83007028
0	Age less than 15 years	83007028
3877	Not applicable	83007028
1655	Employed	83007029
870	Unemployed	83007029
131	Discouraged work-seeker	83007029
882	Other not economically active	83007029
0	Age less than 15 years	83007029
1474	Not applicable	83007029
5105	Employed	83007030
235	Unemployed	83007030
56	Discouraged work-seeker	83007030
1854	Other not economically active	83007030
0	Age less than 15 years	83007030
2527	Not applicable	83007030
3168	Employed	83007031
1466	Unemployed	83007031
347	Discouraged work-seeker	83007031
2526	Other not economically active	83007031
0	Age less than 15 years	83007031
3551	Not applicable	83007031
2661	Employed	83007032
1273	Unemployed	83007032
76	Discouraged work-seeker	83007032
1621	Other not economically active	83007032
0	Age less than 15 years	83007032
2512	Not applicable	83007032
1655	Employed	83101001
1051	Unemployed	83101001
258	Discouraged work-seeker	83101001
1470	Other not economically active	83101001
0	Age less than 15 years	83101001
2172	Not applicable	83101001
1240	Employed	83101002
940	Unemployed	83101002
263	Discouraged work-seeker	83101002
1113	Other not economically active	83101002
0	Age less than 15 years	83101002
1695	Not applicable	83101002
3403	Employed	83101003
1542	Unemployed	83101003
628	Discouraged work-seeker	83101003
3524	Other not economically active	83101003
0	Age less than 15 years	83101003
4937	Not applicable	83101003
1327	Employed	83101004
781	Unemployed	83101004
340	Discouraged work-seeker	83101004
1523	Other not economically active	83101004
0	Age less than 15 years	83101004
2051	Not applicable	83101004
1856	Employed	83101005
1051	Unemployed	83101005
270	Discouraged work-seeker	83101005
1751	Other not economically active	83101005
0	Age less than 15 years	83101005
2541	Not applicable	83101005
1843	Employed	83101006
972	Unemployed	83101006
218	Discouraged work-seeker	83101006
1412	Other not economically active	83101006
0	Age less than 15 years	83101006
2200	Not applicable	83101006
3626	Employed	83101007
945	Unemployed	83101007
288	Discouraged work-seeker	83101007
2771	Other not economically active	83101007
0	Age less than 15 years	83101007
3693	Not applicable	83101007
2581	Employed	83101008
356	Unemployed	83101008
80	Discouraged work-seeker	83101008
1259	Other not economically active	83101008
0	Age less than 15 years	83101008
1803	Not applicable	83101008
4312	Employed	83101009
936	Unemployed	83101009
131	Discouraged work-seeker	83101009
2889	Other not economically active	83101009
0	Age less than 15 years	83101009
3756	Not applicable	83101009
4325	Employed	83102001
2887	Unemployed	83102001
514	Discouraged work-seeker	83102001
2796	Other not economically active	83102001
0	Age less than 15 years	83102001
5081	Not applicable	83102001
2561	Employed	83102002
1358	Unemployed	83102002
374	Discouraged work-seeker	83102002
1964	Other not economically active	83102002
0	Age less than 15 years	83102002
3092	Not applicable	83102002
1418	Employed	83102003
684	Unemployed	83102003
23	Discouraged work-seeker	83102003
846	Other not economically active	83102003
0	Age less than 15 years	83102003
1200	Not applicable	83102003
2607	Employed	83102004
1893	Unemployed	83102004
281	Discouraged work-seeker	83102004
2085	Other not economically active	83102004
0	Age less than 15 years	83102004
3246	Not applicable	83102004
3384	Employed	83102005
1502	Unemployed	83102005
296	Discouraged work-seeker	83102005
2155	Other not economically active	83102005
0	Age less than 15 years	83102005
3028	Not applicable	83102005
4288	Employed	83102006
2505	Unemployed	83102006
422	Discouraged work-seeker	83102006
2808	Other not economically active	83102006
0	Age less than 15 years	83102006
4434	Not applicable	83102006
2635	Employed	83102007
1442	Unemployed	83102007
94	Discouraged work-seeker	83102007
1610	Other not economically active	83102007
0	Age less than 15 years	83102007
2505	Not applicable	83102007
3671	Employed	83102008
1808	Unemployed	83102008
486	Discouraged work-seeker	83102008
2872	Other not economically active	83102008
0	Age less than 15 years	83102008
4118	Not applicable	83102008
3261	Employed	83102009
1184	Unemployed	83102009
602	Discouraged work-seeker	83102009
2350	Other not economically active	83102009
0	Age less than 15 years	83102009
3149	Not applicable	83102009
2304	Employed	83102010
1059	Unemployed	83102010
87	Discouraged work-seeker	83102010
1803	Other not economically active	83102010
0	Age less than 15 years	83102010
2181	Not applicable	83102010
2186	Employed	83102011
1051	Unemployed	83102011
65	Discouraged work-seeker	83102011
1673	Other not economically active	83102011
0	Age less than 15 years	83102011
2343	Not applicable	83102011
5024	Employed	83102012
2578	Unemployed	83102012
123	Discouraged work-seeker	83102012
4305	Other not economically active	83102012
0	Age less than 15 years	83102012
3225	Not applicable	83102012
1934	Employed	83102013
1098	Unemployed	83102013
135	Discouraged work-seeker	83102013
1243	Other not economically active	83102013
0	Age less than 15 years	83102013
1885	Not applicable	83102013
5083	Employed	83102014
2725	Unemployed	83102014
349	Discouraged work-seeker	83102014
1771	Other not economically active	83102014
0	Age less than 15 years	83102014
2991	Not applicable	83102014
5566	Employed	83102015
3103	Unemployed	83102015
390	Discouraged work-seeker	83102015
2998	Other not economically active	83102015
0	Age less than 15 years	83102015
4687	Not applicable	83102015
2154	Employed	83102016
998	Unemployed	83102016
101	Discouraged work-seeker	83102016
2329	Other not economically active	83102016
0	Age less than 15 years	83102016
2781	Not applicable	83102016
3423	Employed	83102017
1426	Unemployed	83102017
337	Discouraged work-seeker	83102017
2240	Other not economically active	83102017
0	Age less than 15 years	83102017
2830	Not applicable	83102017
6355	Employed	83102018
569	Unemployed	83102018
112	Discouraged work-seeker	83102018
2073	Other not economically active	83102018
0	Age less than 15 years	83102018
3474	Not applicable	83102018
5391	Employed	83102019
1283	Unemployed	83102019
309	Discouraged work-seeker	83102019
2262	Other not economically active	83102019
0	Age less than 15 years	83102019
2906	Not applicable	83102019
4829	Employed	83102020
562	Unemployed	83102020
187	Discouraged work-seeker	83102020
1871	Other not economically active	83102020
0	Age less than 15 years	83102020
2792	Not applicable	83102020
8363	Employed	83102021
1547	Unemployed	83102021
302	Discouraged work-seeker	83102021
3878	Other not economically active	83102021
0	Age less than 15 years	83102021
5114	Not applicable	83102021
2510	Employed	83102022
527	Unemployed	83102022
35	Discouraged work-seeker	83102022
1221	Other not economically active	83102022
0	Age less than 15 years	83102022
1229	Not applicable	83102022
3890	Employed	83102023
1685	Unemployed	83102023
375	Discouraged work-seeker	83102023
2439	Other not economically active	83102023
0	Age less than 15 years	83102023
4095	Not applicable	83102023
4956	Employed	83102024
408	Unemployed	83102024
34	Discouraged work-seeker	83102024
2590	Other not economically active	83102024
0	Age less than 15 years	83102024
2778	Not applicable	83102024
4805	Employed	83102025
2559	Unemployed	83102025
445	Discouraged work-seeker	83102025
2483	Other not economically active	83102025
0	Age less than 15 years	83102025
4645	Not applicable	83102025
3615	Employed	83102026
727	Unemployed	83102026
152	Discouraged work-seeker	83102026
2430	Other not economically active	83102026
0	Age less than 15 years	83102026
2261	Not applicable	83102026
3781	Employed	83102027
633	Unemployed	83102027
177	Discouraged work-seeker	83102027
1916	Other not economically active	83102027
0	Age less than 15 years	83102027
2419	Not applicable	83102027
3915	Employed	83102028
2987	Unemployed	83102028
543	Discouraged work-seeker	83102028
3355	Other not economically active	83102028
0	Age less than 15 years	83102028
4856	Not applicable	83102028
5896	Employed	83102029
2958	Unemployed	83102029
601	Discouraged work-seeker	83102029
3962	Other not economically active	83102029
0	Age less than 15 years	83102029
6359	Not applicable	83102029
3133	Employed	83102030
1708	Unemployed	83102030
351	Discouraged work-seeker	83102030
2643	Other not economically active	83102030
0	Age less than 15 years	83102030
3015	Not applicable	83102030
2902	Employed	83102031
1720	Unemployed	83102031
296	Discouraged work-seeker	83102031
2334	Other not economically active	83102031
0	Age less than 15 years	83102031
3243	Not applicable	83102031
4304	Employed	83102032
1372	Unemployed	83102032
759	Discouraged work-seeker	83102032
2285	Other not economically active	83102032
0	Age less than 15 years	83102032
2850	Not applicable	83102032
5712	Employed	83102033
792	Unemployed	83102033
125	Discouraged work-seeker	83102033
3070	Other not economically active	83102033
0	Age less than 15 years	83102033
4542	Not applicable	83102033
8366	Employed	83102034
775	Unemployed	83102034
128	Discouraged work-seeker	83102034
2834	Other not economically active	83102034
0	Age less than 15 years	83102034
4347	Not applicable	83102034
1090	Employed	83103001
548	Unemployed	83103001
201	Discouraged work-seeker	83103001
863	Other not economically active	83103001
0	Age less than 15 years	83103001
1339	Not applicable	83103001
3172	Employed	83103002
1631	Unemployed	83103002
707	Discouraged work-seeker	83103002
2761	Other not economically active	83103002
0	Age less than 15 years	83103002
4302	Not applicable	83103002
2525	Employed	83103003
851	Unemployed	83103003
207	Discouraged work-seeker	83103003
1683	Other not economically active	83103003
0	Age less than 15 years	83103003
2535	Not applicable	83103003
2253	Employed	83103004
584	Unemployed	83103004
129	Discouraged work-seeker	83103004
1020	Other not economically active	83103004
0	Age less than 15 years	83103004
1022	Not applicable	83103004
1848	Employed	83103005
328	Unemployed	83103005
32	Discouraged work-seeker	83103005
918	Other not economically active	83103005
0	Age less than 15 years	83103005
824	Not applicable	83103005
3009	Employed	83103006
596	Unemployed	83103006
179	Discouraged work-seeker	83103006
1462	Other not economically active	83103006
0	Age less than 15 years	83103006
1553	Not applicable	83103006
2368	Employed	83103007
292	Unemployed	83103007
168	Discouraged work-seeker	83103007
1422	Other not economically active	83103007
0	Age less than 15 years	83103007
1572	Not applicable	83103007
3958	Employed	83103008
1444	Unemployed	83103008
516	Discouraged work-seeker	83103008
1914	Other not economically active	83103008
0	Age less than 15 years	83103008
3043	Not applicable	83103008
2351	Employed	83103009
559	Unemployed	83103009
154	Discouraged work-seeker	83103009
1297	Other not economically active	83103009
0	Age less than 15 years	83103009
2268	Not applicable	83103009
7061	Employed	83103010
827	Unemployed	83103010
101	Discouraged work-seeker	83103010
3460	Other not economically active	83103010
0	Age less than 15 years	83103010
4535	Not applicable	83103010
5399	Employed	83103011
671	Unemployed	83103011
60	Discouraged work-seeker	83103011
2179	Other not economically active	83103011
0	Age less than 15 years	83103011
3315	Not applicable	83103011
7147	Employed	83103012
383	Unemployed	83103012
41	Discouraged work-seeker	83103012
3299	Other not economically active	83103012
0	Age less than 15 years	83103012
4559	Not applicable	83103012
2853	Employed	83103013
322	Unemployed	83103013
43	Discouraged work-seeker	83103013
1217	Other not economically active	83103013
0	Age less than 15 years	83103013
1645	Not applicable	83103013
3203	Employed	83103014
136	Unemployed	83103014
22	Discouraged work-seeker	83103014
1563	Other not economically active	83103014
0	Age less than 15 years	83103014
1840	Not applicable	83103014
3575	Employed	83103015
229	Unemployed	83103015
46	Discouraged work-seeker	83103015
2142	Other not economically active	83103015
0	Age less than 15 years	83103015
2424	Not applicable	83103015
3596	Employed	83103016
297	Unemployed	83103016
43	Discouraged work-seeker	83103016
1574	Other not economically active	83103016
0	Age less than 15 years	83103016
2294	Not applicable	83103016
2329	Employed	83103017
1011	Unemployed	83103017
144	Discouraged work-seeker	83103017
1467	Other not economically active	83103017
0	Age less than 15 years	83103017
2028	Not applicable	83103017
1406	Employed	83103018
416	Unemployed	83103018
92	Discouraged work-seeker	83103018
1270	Other not economically active	83103018
0	Age less than 15 years	83103018
1435	Not applicable	83103018
2274	Employed	83103019
637	Unemployed	83103019
71	Discouraged work-seeker	83103019
1043	Other not economically active	83103019
0	Age less than 15 years	83103019
1532	Not applicable	83103019
1288	Employed	83103020
590	Unemployed	83103020
54	Discouraged work-seeker	83103020
1247	Other not economically active	83103020
0	Age less than 15 years	83103020
1313	Not applicable	83103020
1921	Employed	83103021
448	Unemployed	83103021
157	Discouraged work-seeker	83103021
1852	Other not economically active	83103021
0	Age less than 15 years	83103021
1771	Not applicable	83103021
874	Employed	83103022
334	Unemployed	83103022
57	Discouraged work-seeker	83103022
1094	Other not economically active	83103022
0	Age less than 15 years	83103022
1114	Not applicable	83103022
4525	Employed	83103023
1547	Unemployed	83103023
497	Discouraged work-seeker	83103023
2260	Other not economically active	83103023
0	Age less than 15 years	83103023
3754	Not applicable	83103023
708	Employed	83103024
230	Unemployed	83103024
29	Discouraged work-seeker	83103024
443	Other not economically active	83103024
0	Age less than 15 years	83103024
610	Not applicable	83103024
4389	Employed	83103025
1631	Unemployed	83103025
347	Discouraged work-seeker	83103025
2964	Other not economically active	83103025
0	Age less than 15 years	83103025
3987	Not applicable	83103025
556	Employed	83103026
282	Unemployed	83103026
15	Discouraged work-seeker	83103026
727	Other not economically active	83103026
0	Age less than 15 years	83103026
659	Not applicable	83103026
1841	Employed	83103027
1254	Unemployed	83103027
185	Discouraged work-seeker	83103027
1275	Other not economically active	83103027
0	Age less than 15 years	83103027
1793	Not applicable	83103027
6999	Employed	83103028
2186	Unemployed	83103028
529	Discouraged work-seeker	83103028
4207	Other not economically active	83103028
0	Age less than 15 years	83103028
5923	Not applicable	83103028
1449	Employed	83103029
836	Unemployed	83103029
266	Discouraged work-seeker	83103029
1628	Other not economically active	83103029
0	Age less than 15 years	83103029
2431	Not applicable	83103029
1747	Employed	83104001
744	Unemployed	83104001
159	Discouraged work-seeker	83104001
1063	Other not economically active	83104001
0	Age less than 15 years	83104001
2138	Not applicable	83104001
1260	Employed	83104002
494	Unemployed	83104002
114	Discouraged work-seeker	83104002
1377	Other not economically active	83104002
0	Age less than 15 years	83104002
1871	Not applicable	83104002
1310	Employed	83104003
564	Unemployed	83104003
277	Discouraged work-seeker	83104003
2218	Other not economically active	83104003
0	Age less than 15 years	83104003
2170	Not applicable	83104003
1714	Employed	83104004
472	Unemployed	83104004
246	Discouraged work-seeker	83104004
1482	Other not economically active	83104004
0	Age less than 15 years	83104004
2137	Not applicable	83104004
2132	Employed	83104005
238	Unemployed	83104005
220	Discouraged work-seeker	83104005
747	Other not economically active	83104005
0	Age less than 15 years	83104005
1096	Not applicable	83104005
2237	Employed	83104006
1183	Unemployed	83104006
252	Discouraged work-seeker	83104006
1393	Other not economically active	83104006
0	Age less than 15 years	83104006
2449	Not applicable	83104006
1510	Employed	83104007
676	Unemployed	83104007
149	Discouraged work-seeker	83104007
1583	Other not economically active	83104007
0	Age less than 15 years	83104007
2169	Not applicable	83104007
1762	Employed	83104008
410	Unemployed	83104008
156	Discouraged work-seeker	83104008
1380	Other not economically active	83104008
0	Age less than 15 years	83104008
1916	Not applicable	83104008
2206	Employed	83105001
901	Unemployed	83105001
483	Discouraged work-seeker	83105001
3094	Other not economically active	83105001
0	Age less than 15 years	83105001
3593	Not applicable	83105001
2574	Employed	83105002
1268	Unemployed	83105002
527	Discouraged work-seeker	83105002
2682	Other not economically active	83105002
0	Age less than 15 years	83105002
4156	Not applicable	83105002
1627	Employed	83105003
1010	Unemployed	83105003
239	Discouraged work-seeker	83105003
2124	Other not economically active	83105003
0	Age less than 15 years	83105003
2870	Not applicable	83105003
3887	Employed	83105004
1770	Unemployed	83105004
397	Discouraged work-seeker	83105004
4275	Other not economically active	83105004
0	Age less than 15 years	83105004
5439	Not applicable	83105004
1304	Employed	83105005
831	Unemployed	83105005
249	Discouraged work-seeker	83105005
2079	Other not economically active	83105005
0	Age less than 15 years	83105005
2605	Not applicable	83105005
2416	Employed	83105006
1379	Unemployed	83105006
399	Discouraged work-seeker	83105006
2732	Other not economically active	83105006
0	Age less than 15 years	83105006
3982	Not applicable	83105006
1604	Employed	83105007
1147	Unemployed	83105007
470	Discouraged work-seeker	83105007
2942	Other not economically active	83105007
0	Age less than 15 years	83105007
3528	Not applicable	83105007
1724	Employed	83105008
1552	Unemployed	83105008
589	Discouraged work-seeker	83105008
3466	Other not economically active	83105008
0	Age less than 15 years	83105008
4886	Not applicable	83105008
1954	Employed	83105009
1224	Unemployed	83105009
316	Discouraged work-seeker	83105009
2744	Other not economically active	83105009
0	Age less than 15 years	83105009
3758	Not applicable	83105009
1068	Employed	83105010
672	Unemployed	83105010
537	Discouraged work-seeker	83105010
2320	Other not economically active	83105010
0	Age less than 15 years	83105010
2991	Not applicable	83105010
1497	Employed	83105011
1247	Unemployed	83105011
700	Discouraged work-seeker	83105011
3445	Other not economically active	83105011
0	Age less than 15 years	83105011
4645	Not applicable	83105011
1203	Employed	83105012
906	Unemployed	83105012
148	Discouraged work-seeker	83105012
1821	Other not economically active	83105012
0	Age less than 15 years	83105012
2546	Not applicable	83105012
1742	Employed	83105013
853	Unemployed	83105013
427	Discouraged work-seeker	83105013
1984	Other not economically active	83105013
0	Age less than 15 years	83105013
2818	Not applicable	83105013
3555	Employed	83105014
1838	Unemployed	83105014
364	Discouraged work-seeker	83105014
3066	Other not economically active	83105014
0	Age less than 15 years	83105014
5245	Not applicable	83105014
1667	Employed	83105015
1539	Unemployed	83105015
388	Discouraged work-seeker	83105015
2525	Other not economically active	83105015
0	Age less than 15 years	83105015
3784	Not applicable	83105015
1524	Employed	83105016
945	Unemployed	83105016
382	Discouraged work-seeker	83105016
3022	Other not economically active	83105016
0	Age less than 15 years	83105016
3611	Not applicable	83105016
1951	Employed	83105017
958	Unemployed	83105017
420	Discouraged work-seeker	83105017
2152	Other not economically active	83105017
0	Age less than 15 years	83105017
3230	Not applicable	83105017
2004	Employed	83105018
1003	Unemployed	83105018
361	Discouraged work-seeker	83105018
3050	Other not economically active	83105018
0	Age less than 15 years	83105018
3571	Not applicable	83105018
2617	Employed	83105019
1280	Unemployed	83105019
302	Discouraged work-seeker	83105019
3084	Other not economically active	83105019
0	Age less than 15 years	83105019
4109	Not applicable	83105019
3242	Employed	83105020
1727	Unemployed	83105020
485	Discouraged work-seeker	83105020
3709	Other not economically active	83105020
0	Age less than 15 years	83105020
5080	Not applicable	83105020
1709	Employed	83105021
1162	Unemployed	83105021
545	Discouraged work-seeker	83105021
2436	Other not economically active	83105021
0	Age less than 15 years	83105021
3594	Not applicable	83105021
2142	Employed	83105022
1129	Unemployed	83105022
452	Discouraged work-seeker	83105022
2833	Other not economically active	83105022
0	Age less than 15 years	83105022
4274	Not applicable	83105022
1678	Employed	83105023
849	Unemployed	83105023
1028	Discouraged work-seeker	83105023
2192	Other not economically active	83105023
0	Age less than 15 years	83105023
3260	Not applicable	83105023
1536	Employed	83105024
1110	Unemployed	83105024
480	Discouraged work-seeker	83105024
2995	Other not economically active	83105024
0	Age less than 15 years	83105024
4014	Not applicable	83105024
1762	Employed	83105025
1060	Unemployed	83105025
245	Discouraged work-seeker	83105025
2183	Other not economically active	83105025
0	Age less than 15 years	83105025
2988	Not applicable	83105025
1526	Employed	83105026
689	Unemployed	83105026
468	Discouraged work-seeker	83105026
2142	Other not economically active	83105026
0	Age less than 15 years	83105026
2913	Not applicable	83105026
1517	Employed	83105027
1444	Unemployed	83105027
402	Discouraged work-seeker	83105027
1965	Other not economically active	83105027
0	Age less than 15 years	83105027
3130	Not applicable	83105027
1576	Employed	83105028
836	Unemployed	83105028
285	Discouraged work-seeker	83105028
2001	Other not economically active	83105028
0	Age less than 15 years	83105028
2533	Not applicable	83105028
1164	Employed	83105029
532	Unemployed	83105029
220	Discouraged work-seeker	83105029
1859	Other not economically active	83105029
0	Age less than 15 years	83105029
2156	Not applicable	83105029
1693	Employed	83105030
1701	Unemployed	83105030
682	Discouraged work-seeker	83105030
2991	Other not economically active	83105030
0	Age less than 15 years	83105030
4146	Not applicable	83105030
1829	Employed	83105031
1062	Unemployed	83105031
386	Discouraged work-seeker	83105031
2496	Other not economically active	83105031
0	Age less than 15 years	83105031
3591	Not applicable	83105031
2104	Employed	83105032
519	Unemployed	83105032
101	Discouraged work-seeker	83105032
1781	Other not economically active	83105032
0	Age less than 15 years	83105032
2005	Not applicable	83105032
1412	Employed	83106001
838	Unemployed	83106001
130	Discouraged work-seeker	83106001
2602	Other not economically active	83106001
0	Age less than 15 years	83106001
3093	Not applicable	83106001
1455	Employed	83106002
1070	Unemployed	83106002
458	Discouraged work-seeker	83106002
2623	Other not economically active	83106002
0	Age less than 15 years	83106002
3557	Not applicable	83106002
1070	Employed	83106003
856	Unemployed	83106003
356	Discouraged work-seeker	83106003
2262	Other not economically active	83106003
0	Age less than 15 years	83106003
2716	Not applicable	83106003
1282	Employed	83106004
935	Unemployed	83106004
502	Discouraged work-seeker	83106004
2310	Other not economically active	83106004
0	Age less than 15 years	83106004
3059	Not applicable	83106004
1737	Employed	83106005
1425	Unemployed	83106005
217	Discouraged work-seeker	83106005
1989	Other not economically active	83106005
0	Age less than 15 years	83106005
2869	Not applicable	83106005
1908	Employed	83106006
1061	Unemployed	83106006
497	Discouraged work-seeker	83106006
2610	Other not economically active	83106006
0	Age less than 15 years	83106006
3601	Not applicable	83106006
779	Employed	83106007
941	Unemployed	83106007
298	Discouraged work-seeker	83106007
2183	Other not economically active	83106007
0	Age less than 15 years	83106007
3050	Not applicable	83106007
901	Employed	83106008
577	Unemployed	83106008
412	Discouraged work-seeker	83106008
2641	Other not economically active	83106008
0	Age less than 15 years	83106008
2849	Not applicable	83106008
883	Employed	83106009
604	Unemployed	83106009
338	Discouraged work-seeker	83106009
1663	Other not economically active	83106009
0	Age less than 15 years	83106009
1958	Not applicable	83106009
1032	Employed	83106010
1426	Unemployed	83106010
355	Discouraged work-seeker	83106010
2086	Other not economically active	83106010
0	Age less than 15 years	83106010
2911	Not applicable	83106010
1226	Employed	83106011
739	Unemployed	83106011
642	Discouraged work-seeker	83106011
2636	Other not economically active	83106011
0	Age less than 15 years	83106011
3234	Not applicable	83106011
1343	Employed	83106012
1114	Unemployed	83106012
636	Discouraged work-seeker	83106012
2677	Other not economically active	83106012
0	Age less than 15 years	83106012
3439	Not applicable	83106012
1262	Employed	83106013
1151	Unemployed	83106013
140	Discouraged work-seeker	83106013
2167	Other not economically active	83106013
0	Age less than 15 years	83106013
2988	Not applicable	83106013
972	Employed	83106014
835	Unemployed	83106014
308	Discouraged work-seeker	83106014
2452	Other not economically active	83106014
0	Age less than 15 years	83106014
2859	Not applicable	83106014
1263	Employed	83106015
1209	Unemployed	83106015
490	Discouraged work-seeker	83106015
2538	Other not economically active	83106015
0	Age less than 15 years	83106015
3657	Not applicable	83106015
655	Employed	83106016
565	Unemployed	83106016
197	Discouraged work-seeker	83106016
1447	Other not economically active	83106016
0	Age less than 15 years	83106016
1851	Not applicable	83106016
1796	Employed	83106017
1735	Unemployed	83106017
295	Discouraged work-seeker	83106017
2743	Other not economically active	83106017
0	Age less than 15 years	83106017
4061	Not applicable	83106017
1021	Employed	83106018
779	Unemployed	83106018
280	Discouraged work-seeker	83106018
2697	Other not economically active	83106018
0	Age less than 15 years	83106018
3053	Not applicable	83106018
1325	Employed	83106019
1256	Unemployed	83106019
247	Discouraged work-seeker	83106019
2795	Other not economically active	83106019
0	Age less than 15 years	83106019
4064	Not applicable	83106019
594	Employed	83106020
724	Unemployed	83106020
515	Discouraged work-seeker	83106020
2032	Other not economically active	83106020
0	Age less than 15 years	83106020
2918	Not applicable	83106020
687	Employed	83106021
894	Unemployed	83106021
306	Discouraged work-seeker	83106021
3098	Other not economically active	83106021
0	Age less than 15 years	83106021
3969	Not applicable	83106021
597	Employed	83106022
1111	Unemployed	83106022
236	Discouraged work-seeker	83106022
3193	Other not economically active	83106022
0	Age less than 15 years	83106022
4407	Not applicable	83106022
816	Employed	83106023
629	Unemployed	83106023
95	Discouraged work-seeker	83106023
1354	Other not economically active	83106023
0	Age less than 15 years	83106023
2389	Not applicable	83106023
1228	Employed	83106024
1170	Unemployed	83106024
227	Discouraged work-seeker	83106024
2932	Other not economically active	83106024
0	Age less than 15 years	83106024
4646	Not applicable	83106024
779	Employed	83106025
936	Unemployed	83106025
304	Discouraged work-seeker	83106025
1984	Other not economically active	83106025
0	Age less than 15 years	83106025
3492	Not applicable	83106025
970	Employed	83106026
1248	Unemployed	83106026
327	Discouraged work-seeker	83106026
2522	Other not economically active	83106026
0	Age less than 15 years	83106026
3846	Not applicable	83106026
510	Employed	83106027
691	Unemployed	83106027
293	Discouraged work-seeker	83106027
3048	Other not economically active	83106027
0	Age less than 15 years	83106027
3453	Not applicable	83106027
819	Employed	83106028
911	Unemployed	83106028
94	Discouraged work-seeker	83106028
1976	Other not economically active	83106028
0	Age less than 15 years	83106028
2764	Not applicable	83106028
1246	Employed	83106029
727	Unemployed	83106029
343	Discouraged work-seeker	83106029
2313	Other not economically active	83106029
0	Age less than 15 years	83106029
3327	Not applicable	83106029
1065	Employed	83106030
547	Unemployed	83106030
540	Discouraged work-seeker	83106030
2468	Other not economically active	83106030
0	Age less than 15 years	83106030
3679	Not applicable	83106030
1212	Employed	83106031
836	Unemployed	83106031
244	Discouraged work-seeker	83106031
2712	Other not economically active	83106031
0	Age less than 15 years	83106031
3491	Not applicable	83106031
1114	Employed	83201001
385	Unemployed	83201001
26	Discouraged work-seeker	83201001
701	Other not economically active	83201001
0	Age less than 15 years	83201001
1029	Not applicable	83201001
3161	Employed	83201002
979	Unemployed	83201002
224	Discouraged work-seeker	83201002
1410	Other not economically active	83201002
0	Age less than 15 years	83201002
2442	Not applicable	83201002
3185	Employed	83201003
1066	Unemployed	83201003
264	Discouraged work-seeker	83201003
2243	Other not economically active	83201003
0	Age less than 15 years	83201003
3161	Not applicable	83201003
3381	Employed	83201004
314	Unemployed	83201004
118	Discouraged work-seeker	83201004
1686	Other not economically active	83201004
0	Age less than 15 years	83201004
2322	Not applicable	83201004
3043	Employed	83201005
896	Unemployed	83201005
192	Discouraged work-seeker	83201005
2306	Other not economically active	83201005
0	Age less than 15 years	83201005
3656	Not applicable	83201005
2040	Employed	83201006
687	Unemployed	83201006
108	Discouraged work-seeker	83201006
1041	Other not economically active	83201006
0	Age less than 15 years	83201006
1316	Not applicable	83201006
3673	Employed	83201007
738	Unemployed	83201007
372	Discouraged work-seeker	83201007
2020	Other not economically active	83201007
0	Age less than 15 years	83201007
2632	Not applicable	83201007
902	Employed	83201008
1082	Unemployed	83201008
338	Discouraged work-seeker	83201008
2008	Other not economically active	83201008
0	Age less than 15 years	83201008
3036	Not applicable	83201008
1145	Employed	83201009
1781	Unemployed	83201009
196	Discouraged work-seeker	83201009
2027	Other not economically active	83201009
0	Age less than 15 years	83201009
3376	Not applicable	83201009
2530	Employed	83201010
241	Unemployed	83201010
130	Discouraged work-seeker	83201010
1290	Other not economically active	83201010
0	Age less than 15 years	83201010
1183	Not applicable	83201010
4614	Employed	83201011
91	Unemployed	83201011
32	Discouraged work-seeker	83201011
376	Other not economically active	83201011
0	Age less than 15 years	83201011
524	Not applicable	83201011
1785	Employed	83201012
97	Unemployed	83201012
21	Discouraged work-seeker	83201012
1235	Other not economically active	83201012
0	Age less than 15 years	83201012
1344	Not applicable	83201012
1179	Employed	83201013
205	Unemployed	83201013
43	Discouraged work-seeker	83201013
525	Other not economically active	83201013
0	Age less than 15 years	83201013
634	Not applicable	83201013
4221	Employed	83201014
706	Unemployed	83201014
148	Discouraged work-seeker	83201014
2459	Other not economically active	83201014
0	Age less than 15 years	83201014
2951	Not applicable	83201014
5914	Employed	83202001
2548	Unemployed	83202001
1127	Discouraged work-seeker	83202001
4573	Other not economically active	83202001
0	Age less than 15 years	83202001
7989	Not applicable	83202001
4299	Employed	83202002
2840	Unemployed	83202002
920	Discouraged work-seeker	83202002
5548	Other not economically active	83202002
0	Age less than 15 years	83202002
8463	Not applicable	83202002
4686	Employed	83202003
1727	Unemployed	83202003
795	Discouraged work-seeker	83202003
3519	Other not economically active	83202003
0	Age less than 15 years	83202003
5416	Not applicable	83202003
1907	Employed	83202004
1014	Unemployed	83202004
475	Discouraged work-seeker	83202004
2723	Other not economically active	83202004
0	Age less than 15 years	83202004
3548	Not applicable	83202004
3058	Employed	83202005
1394	Unemployed	83202005
616	Discouraged work-seeker	83202005
5609	Other not economically active	83202005
0	Age less than 15 years	83202005
6236	Not applicable	83202005
3318	Employed	83202006
1661	Unemployed	83202006
683	Discouraged work-seeker	83202006
4173	Other not economically active	83202006
0	Age less than 15 years	83202006
5593	Not applicable	83202006
2603	Employed	83202007
1533	Unemployed	83202007
666	Discouraged work-seeker	83202007
3686	Other not economically active	83202007
0	Age less than 15 years	83202007
4814	Not applicable	83202007
4557	Employed	83202008
1366	Unemployed	83202008
633	Discouraged work-seeker	83202008
4408	Other not economically active	83202008
0	Age less than 15 years	83202008
5440	Not applicable	83202008
2755	Employed	83202009
2198	Unemployed	83202009
428	Discouraged work-seeker	83202009
3735	Other not economically active	83202009
0	Age less than 15 years	83202009
5216	Not applicable	83202009
2955	Employed	83202010
1856	Unemployed	83202010
868	Discouraged work-seeker	83202010
3088	Other not economically active	83202010
0	Age less than 15 years	83202010
5445	Not applicable	83202010
3354	Employed	83202011
1807	Unemployed	83202011
726	Discouraged work-seeker	83202011
4277	Other not economically active	83202011
0	Age less than 15 years	83202011
5464	Not applicable	83202011
7084	Employed	83202012
959	Unemployed	83202012
121	Discouraged work-seeker	83202012
2277	Other not economically active	83202012
0	Age less than 15 years	83202012
2811	Not applicable	83202012
2523	Employed	83202013
1701	Unemployed	83202013
235	Discouraged work-seeker	83202013
2746	Other not economically active	83202013
0	Age less than 15 years	83202013
4032	Not applicable	83202013
7114	Employed	83202014
1936	Unemployed	83202014
388	Discouraged work-seeker	83202014
3726	Other not economically active	83202014
0	Age less than 15 years	83202014
5478	Not applicable	83202014
7711	Employed	83202015
385	Unemployed	83202015
74	Discouraged work-seeker	83202015
2863	Other not economically active	83202015
0	Age less than 15 years	83202015
4369	Not applicable	83202015
5959	Employed	83202016
379	Unemployed	83202016
82	Discouraged work-seeker	83202016
2112	Other not economically active	83202016
0	Age less than 15 years	83202016
2948	Not applicable	83202016
7763	Employed	83202017
477	Unemployed	83202017
57	Discouraged work-seeker	83202017
2731	Other not economically active	83202017
0	Age less than 15 years	83202017
4400	Not applicable	83202017
5302	Employed	83202018
1721	Unemployed	83202018
129	Discouraged work-seeker	83202018
2895	Other not economically active	83202018
0	Age less than 15 years	83202018
4448	Not applicable	83202018
4103	Employed	83202019
1636	Unemployed	83202019
304	Discouraged work-seeker	83202019
3848	Other not economically active	83202019
0	Age less than 15 years	83202019
4666	Not applicable	83202019
3658	Employed	83202020
1431	Unemployed	83202020
485	Discouraged work-seeker	83202020
3389	Other not economically active	83202020
0	Age less than 15 years	83202020
4484	Not applicable	83202020
4082	Employed	83202021
1631	Unemployed	83202021
747	Discouraged work-seeker	83202021
4604	Other not economically active	83202021
0	Age less than 15 years	83202021
5736	Not applicable	83202021
3233	Employed	83202022
2312	Unemployed	83202022
206	Discouraged work-seeker	83202022
3248	Other not economically active	83202022
0	Age less than 15 years	83202022
4823	Not applicable	83202022
2411	Employed	83202023
1726	Unemployed	83202023
145	Discouraged work-seeker	83202023
2568	Other not economically active	83202023
0	Age less than 15 years	83202023
3550	Not applicable	83202023
2066	Employed	83202024
2351	Unemployed	83202024
431	Discouraged work-seeker	83202024
2769	Other not economically active	83202024
0	Age less than 15 years	83202024
4552	Not applicable	83202024
3448	Employed	83202025
2304	Unemployed	83202025
887	Discouraged work-seeker	83202025
2897	Other not economically active	83202025
0	Age less than 15 years	83202025
5409	Not applicable	83202025
4395	Employed	83202026
1914	Unemployed	83202026
442	Discouraged work-seeker	83202026
4661	Other not economically active	83202026
0	Age less than 15 years	83202026
6098	Not applicable	83202026
4115	Employed	83202027
1921	Unemployed	83202027
1054	Discouraged work-seeker	83202027
4561	Other not economically active	83202027
0	Age less than 15 years	83202027
6767	Not applicable	83202027
3589	Employed	83202028
2478	Unemployed	83202028
332	Discouraged work-seeker	83202028
3719	Other not economically active	83202028
0	Age less than 15 years	83202028
5607	Not applicable	83202028
3487	Employed	83202029
1658	Unemployed	83202029
910	Discouraged work-seeker	83202029
4224	Other not economically active	83202029
0	Age less than 15 years	83202029
5765	Not applicable	83202029
5180	Employed	83202030
435	Unemployed	83202030
32	Discouraged work-seeker	83202030
2299	Other not economically active	83202030
0	Age less than 15 years	83202030
3743	Not applicable	83202030
2700	Employed	83202031
1484	Unemployed	83202031
402	Discouraged work-seeker	83202031
2626	Other not economically active	83202031
0	Age less than 15 years	83202031
3885	Not applicable	83202031
5276	Employed	83202032
2213	Unemployed	83202032
561	Discouraged work-seeker	83202032
3808	Other not economically active	83202032
0	Age less than 15 years	83202032
6123	Not applicable	83202032
3928	Employed	83202033
1709	Unemployed	83202033
285	Discouraged work-seeker	83202033
2954	Other not economically active	83202033
0	Age less than 15 years	83202033
4116	Not applicable	83202033
2346	Employed	83202034
1453	Unemployed	83202034
829	Discouraged work-seeker	83202034
3094	Other not economically active	83202034
0	Age less than 15 years	83202034
4614	Not applicable	83202034
3768	Employed	83202035
2034	Unemployed	83202035
666	Discouraged work-seeker	83202035
3348	Other not economically active	83202035
0	Age less than 15 years	83202035
5295	Not applicable	83202035
2825	Employed	83202036
1326	Unemployed	83202036
596	Discouraged work-seeker	83202036
3464	Other not economically active	83202036
0	Age less than 15 years	83202036
4698	Not applicable	83202036
3394	Employed	83202037
1545	Unemployed	83202037
772	Discouraged work-seeker	83202037
3351	Other not economically active	83202037
0	Age less than 15 years	83202037
5334	Not applicable	83202037
9300	Employed	83202038
1555	Unemployed	83202038
1048	Discouraged work-seeker	83202038
5343	Other not economically active	83202038
0	Age less than 15 years	83202038
8007	Not applicable	83202038
3838	Employed	83202039
1618	Unemployed	83202039
616	Discouraged work-seeker	83202039
3852	Other not economically active	83202039
0	Age less than 15 years	83202039
5090	Not applicable	83202039
1983	Employed	83203001
605	Unemployed	83203001
62	Discouraged work-seeker	83203001
862	Other not economically active	83203001
0	Age less than 15 years	83203001
1528	Not applicable	83203001
3234	Employed	83203002
399	Unemployed	83203002
190	Discouraged work-seeker	83203002
1823	Other not economically active	83203002
0	Age less than 15 years	83203002
2493	Not applicable	83203002
3229	Employed	83203003
1878	Unemployed	83203003
548	Discouraged work-seeker	83203003
3452	Other not economically active	83203003
0	Age less than 15 years	83203003
4069	Not applicable	83203003
2270	Employed	83203004
1194	Unemployed	83203004
230	Discouraged work-seeker	83203004
1636	Other not economically active	83203004
0	Age less than 15 years	83203004
3125	Not applicable	83203004
1587	Employed	83203005
609	Unemployed	83203005
211	Discouraged work-seeker	83203005
1323	Other not economically active	83203005
0	Age less than 15 years	83203005
1948	Not applicable	83203005
1670	Employed	83203006
927	Unemployed	83203006
163	Discouraged work-seeker	83203006
1869	Other not economically active	83203006
0	Age less than 15 years	83203006
2155	Not applicable	83203006
1108	Employed	83203007
579	Unemployed	83203007
67	Discouraged work-seeker	83203007
629	Other not economically active	83203007
0	Age less than 15 years	83203007
1009	Not applicable	83203007
3166	Employed	83203008
1047	Unemployed	83203008
159	Discouraged work-seeker	83203008
2369	Other not economically active	83203008
0	Age less than 15 years	83203008
2765	Not applicable	83203008
2646	Employed	83203009
443	Unemployed	83203009
82	Discouraged work-seeker	83203009
1681	Other not economically active	83203009
0	Age less than 15 years	83203009
2134	Not applicable	83203009
2576	Employed	83204001
1456	Unemployed	83204001
570	Discouraged work-seeker	83204001
4303	Other not economically active	83204001
0	Age less than 15 years	83204001
5410	Not applicable	83204001
2942	Employed	83204002
2002	Unemployed	83204002
797	Discouraged work-seeker	83204002
6518	Other not economically active	83204002
0	Age less than 15 years	83204002
9463	Not applicable	83204002
3122	Employed	83204003
1495	Unemployed	83204003
792	Discouraged work-seeker	83204003
4530	Other not economically active	83204003
0	Age less than 15 years	83204003
6862	Not applicable	83204003
1756	Employed	83204004
852	Unemployed	83204004
249	Discouraged work-seeker	83204004
2772	Other not economically active	83204004
0	Age less than 15 years	83204004
3301	Not applicable	83204004
1948	Employed	83204005
1202	Unemployed	83204005
583	Discouraged work-seeker	83204005
3848	Other not economically active	83204005
0	Age less than 15 years	83204005
5334	Not applicable	83204005
5343	Employed	83204006
1003	Unemployed	83204006
618	Discouraged work-seeker	83204006
3361	Other not economically active	83204006
0	Age less than 15 years	83204006
5000	Not applicable	83204006
8226	Employed	83204007
1098	Unemployed	83204007
233	Discouraged work-seeker	83204007
2988	Other not economically active	83204007
0	Age less than 15 years	83204007
4994	Not applicable	83204007
1944	Employed	83204008
1562	Unemployed	83204008
562	Discouraged work-seeker	83204008
3980	Other not economically active	83204008
0	Age less than 15 years	83204008
5856	Not applicable	83204008
2292	Employed	83204009
1704	Unemployed	83204009
459	Discouraged work-seeker	83204009
3859	Other not economically active	83204009
0	Age less than 15 years	83204009
5362	Not applicable	83204009
1753	Employed	83204010
1310	Unemployed	83204010
857	Discouraged work-seeker	83204010
3662	Other not economically active	83204010
0	Age less than 15 years	83204010
5593	Not applicable	83204010
2094	Employed	83204011
1191	Unemployed	83204011
726	Discouraged work-seeker	83204011
3639	Other not economically active	83204011
0	Age less than 15 years	83204011
5259	Not applicable	83204011
1173	Employed	83204012
1096	Unemployed	83204012
573	Discouraged work-seeker	83204012
3219	Other not economically active	83204012
0	Age less than 15 years	83204012
4537	Not applicable	83204012
653	Employed	83204013
685	Unemployed	83204013
232	Discouraged work-seeker	83204013
4048	Other not economically active	83204013
0	Age less than 15 years	83204013
4371	Not applicable	83204013
1185	Employed	83204014
1163	Unemployed	83204014
637	Discouraged work-seeker	83204014
3133	Other not economically active	83204014
0	Age less than 15 years	83204014
4614	Not applicable	83204014
795	Employed	83204015
621	Unemployed	83204015
559	Discouraged work-seeker	83204015
4913	Other not economically active	83204015
0	Age less than 15 years	83204015
5710	Not applicable	83204015
1075	Employed	83204016
955	Unemployed	83204016
701	Discouraged work-seeker	83204016
2943	Other not economically active	83204016
0	Age less than 15 years	83204016
4192	Not applicable	83204016
744	Employed	83204017
861	Unemployed	83204017
439	Discouraged work-seeker	83204017
2199	Other not economically active	83204017
0	Age less than 15 years	83204017
3125	Not applicable	83204017
953	Employed	83204018
1077	Unemployed	83204018
365	Discouraged work-seeker	83204018
3468	Other not economically active	83204018
0	Age less than 15 years	83204018
4290	Not applicable	83204018
1175	Employed	83204019
1278	Unemployed	83204019
514	Discouraged work-seeker	83204019
2362	Other not economically active	83204019
0	Age less than 15 years	83204019
3505	Not applicable	83204019
2883	Employed	83204020
2093	Unemployed	83204020
549	Discouraged work-seeker	83204020
3854	Other not economically active	83204020
0	Age less than 15 years	83204020
6215	Not applicable	83204020
2570	Employed	83204021
2108	Unemployed	83204021
940	Discouraged work-seeker	83204021
3347	Other not economically active	83204021
0	Age less than 15 years	83204021
6259	Not applicable	83204021
2478	Employed	83204022
1105	Unemployed	83204022
441	Discouraged work-seeker	83204022
3517	Other not economically active	83204022
0	Age less than 15 years	83204022
4285	Not applicable	83204022
815	Employed	83204023
879	Unemployed	83204023
835	Discouraged work-seeker	83204023
1949	Other not economically active	83204023
0	Age less than 15 years	83204023
3334	Not applicable	83204023
2055	Employed	83204024
805	Unemployed	83204024
726	Discouraged work-seeker	83204024
3453	Other not economically active	83204024
0	Age less than 15 years	83204024
4846	Not applicable	83204024
926	Employed	83204025
750	Unemployed	83204025
384	Discouraged work-seeker	83204025
2973	Other not economically active	83204025
0	Age less than 15 years	83204025
3531	Not applicable	83204025
1249	Employed	83204026
943	Unemployed	83204026
162	Discouraged work-seeker	83204026
1652	Other not economically active	83204026
0	Age less than 15 years	83204026
2365	Not applicable	83204026
2295	Employed	83204027
1253	Unemployed	83204027
412	Discouraged work-seeker	83204027
2970	Other not economically active	83204027
0	Age less than 15 years	83204027
4556	Not applicable	83204027
970	Employed	83204028
647	Unemployed	83204028
450	Discouraged work-seeker	83204028
1727	Other not economically active	83204028
0	Age less than 15 years	83204028
2370	Not applicable	83204028
2924	Employed	83204029
629	Unemployed	83204029
453	Discouraged work-seeker	83204029
2758	Other not economically active	83204029
0	Age less than 15 years	83204029
3883	Not applicable	83204029
7057	Employed	83204030
773	Unemployed	83204030
261	Discouraged work-seeker	83204030
2891	Other not economically active	83204030
0	Age less than 15 years	83204030
4172	Not applicable	83204030
1459	Employed	83204031
911	Unemployed	83204031
194	Discouraged work-seeker	83204031
1940	Other not economically active	83204031
0	Age less than 15 years	83204031
3235	Not applicable	83204031
1205	Employed	83204032
884	Unemployed	83204032
785	Discouraged work-seeker	83204032
3137	Other not economically active	83204032
0	Age less than 15 years	83204032
4101	Not applicable	83204032
1954	Employed	83204033
1489	Unemployed	83204033
595	Discouraged work-seeker	83204033
3642	Other not economically active	83204033
0	Age less than 15 years	83204033
5425	Not applicable	83204033
3954	Employed	83205001
2432	Unemployed	83205001
856	Discouraged work-seeker	83205001
5302	Other not economically active	83205001
0	Age less than 15 years	83205001
8235	Not applicable	83205001
1056	Employed	83205002
1177	Unemployed	83205002
775	Discouraged work-seeker	83205002
3399	Other not economically active	83205002
0	Age less than 15 years	83205002
4747	Not applicable	83205002
2065	Employed	83205003
1542	Unemployed	83205003
820	Discouraged work-seeker	83205003
4793	Other not economically active	83205003
0	Age less than 15 years	83205003
6490	Not applicable	83205003
1397	Employed	83205004
783	Unemployed	83205004
500	Discouraged work-seeker	83205004
4094	Other not economically active	83205004
0	Age less than 15 years	83205004
4304	Not applicable	83205004
974	Employed	83205005
1580	Unemployed	83205005
326	Discouraged work-seeker	83205005
3275	Other not economically active	83205005
0	Age less than 15 years	83205005
4526	Not applicable	83205005
1853	Employed	83205006
2415	Unemployed	83205006
772	Discouraged work-seeker	83205006
5725	Other not economically active	83205006
0	Age less than 15 years	83205006
7390	Not applicable	83205006
2036	Employed	83205007
2081	Unemployed	83205007
510	Discouraged work-seeker	83205007
4137	Other not economically active	83205007
0	Age less than 15 years	83205007
6278	Not applicable	83205007
2248	Employed	83205008
2210	Unemployed	83205008
379	Discouraged work-seeker	83205008
3052	Other not economically active	83205008
0	Age less than 15 years	83205008
5153	Not applicable	83205008
3917	Employed	83205009
3382	Unemployed	83205009
624	Discouraged work-seeker	83205009
3896	Other not economically active	83205009
0	Age less than 15 years	83205009
6611	Not applicable	83205009
1375	Employed	83205010
2495	Unemployed	83205010
696	Discouraged work-seeker	83205010
3624	Other not economically active	83205010
0	Age less than 15 years	83205010
6668	Not applicable	83205010
1475	Employed	83205011
1866	Unemployed	83205011
579	Discouraged work-seeker	83205011
4227	Other not economically active	83205011
0	Age less than 15 years	83205011
5938	Not applicable	83205011
954	Employed	83205012
1432	Unemployed	83205012
872	Discouraged work-seeker	83205012
3790	Other not economically active	83205012
0	Age less than 15 years	83205012
5711	Not applicable	83205012
691	Employed	83205013
1619	Unemployed	83205013
973	Discouraged work-seeker	83205013
3607	Other not economically active	83205013
0	Age less than 15 years	83205013
4987	Not applicable	83205013
794	Employed	83205014
1947	Unemployed	83205014
1079	Discouraged work-seeker	83205014
3607	Other not economically active	83205014
0	Age less than 15 years	83205014
5400	Not applicable	83205014
2017	Employed	83205015
2701	Unemployed	83205015
1096	Discouraged work-seeker	83205015
3365	Other not economically active	83205015
0	Age less than 15 years	83205015
6174	Not applicable	83205015
1066	Employed	83205016
1878	Unemployed	83205016
994	Discouraged work-seeker	83205016
2661	Other not economically active	83205016
0	Age less than 15 years	83205016
4838	Not applicable	83205016
2143	Employed	83205017
1944	Unemployed	83205017
942	Discouraged work-seeker	83205017
3863	Other not economically active	83205017
0	Age less than 15 years	83205017
6107	Not applicable	83205017
2882	Employed	83205018
3592	Unemployed	83205018
760	Discouraged work-seeker	83205018
4432	Other not economically active	83205018
0	Age less than 15 years	83205018
7644	Not applicable	83205018
1910	Employed	83205019
2569	Unemployed	83205019
812	Discouraged work-seeker	83205019
4670	Other not economically active	83205019
0	Age less than 15 years	83205019
6753	Not applicable	83205019
1097	Employed	83205020
1366	Unemployed	83205020
798	Discouraged work-seeker	83205020
3725	Other not economically active	83205020
0	Age less than 15 years	83205020
5168	Not applicable	83205020
1061	Employed	83205021
1628	Unemployed	83205021
1236	Discouraged work-seeker	83205021
4145	Other not economically active	83205021
0	Age less than 15 years	83205021
6168	Not applicable	83205021
1163	Employed	83205022
1551	Unemployed	83205022
892	Discouraged work-seeker	83205022
3794	Other not economically active	83205022
0	Age less than 15 years	83205022
5826	Not applicable	83205022
1653	Employed	83205023
1745	Unemployed	83205023
700	Discouraged work-seeker	83205023
4477	Other not economically active	83205023
0	Age less than 15 years	83205023
6419	Not applicable	83205023
1380	Employed	83205024
1215	Unemployed	83205024
1131	Discouraged work-seeker	83205024
4942	Other not economically active	83205024
0	Age less than 15 years	83205024
6844	Not applicable	83205024
1835	Employed	83205025
2005	Unemployed	83205025
933	Discouraged work-seeker	83205025
4328	Other not economically active	83205025
0	Age less than 15 years	83205025
7428	Not applicable	83205025
1407	Employed	83205026
1271	Unemployed	83205026
502	Discouraged work-seeker	83205026
4144	Other not economically active	83205026
0	Age less than 15 years	83205026
5798	Not applicable	83205026
1230	Employed	83205027
992	Unemployed	83205027
764	Discouraged work-seeker	83205027
4745	Other not economically active	83205027
0	Age less than 15 years	83205027
6769	Not applicable	83205027
841	Employed	83205028
990	Unemployed	83205028
585	Discouraged work-seeker	83205028
2904	Other not economically active	83205028
0	Age less than 15 years	83205028
4589	Not applicable	83205028
753	Employed	83205029
1241	Unemployed	83205029
486	Discouraged work-seeker	83205029
3990	Other not economically active	83205029
0	Age less than 15 years	83205029
5310	Not applicable	83205029
1203	Employed	83205030
1945	Unemployed	83205030
1153	Discouraged work-seeker	83205030
4155	Other not economically active	83205030
0	Age less than 15 years	83205030
7056	Not applicable	83205030
3374	Employed	83205031
2602	Unemployed	83205031
749	Discouraged work-seeker	83205031
5364	Other not economically active	83205031
0	Age less than 15 years	83205031
8316	Not applicable	83205031
969	Employed	83205032
1982	Unemployed	83205032
1048	Discouraged work-seeker	83205032
3667	Other not economically active	83205032
0	Age less than 15 years	83205032
5487	Not applicable	83205032
1732	Employed	83205033
1491	Unemployed	83205033
1277	Discouraged work-seeker	83205033
5011	Other not economically active	83205033
0	Age less than 15 years	83205033
8107	Not applicable	83205033
3614	Employed	83205034
1333	Unemployed	83205034
824	Discouraged work-seeker	83205034
5540	Other not economically active	83205034
0	Age less than 15 years	83205034
7601	Not applicable	83205034
1257	Employed	83205035
1019	Unemployed	83205035
1194	Discouraged work-seeker	83205035
5281	Other not economically active	83205035
0	Age less than 15 years	83205035
7203	Not applicable	83205035
974	Employed	83205036
1229	Unemployed	83205036
1114	Discouraged work-seeker	83205036
4089	Other not economically active	83205036
0	Age less than 15 years	83205036
6181	Not applicable	83205036
1358	Employed	83205037
1904	Unemployed	83205037
674	Discouraged work-seeker	83205037
3115	Other not economically active	83205037
0	Age less than 15 years	83205037
4802	Not applicable	83205037
741	Employed	63701001
844	Unemployed	63701001
357	Discouraged work-seeker	63701001
2357	Other not economically active	63701001
0	Age less than 15 years	63701001
3354	Not applicable	63701001
690	Employed	63701002
921	Unemployed	63701002
313	Discouraged work-seeker	63701002
2444	Other not economically active	63701002
0	Age less than 15 years	63701002
3684	Not applicable	63701002
1164	Employed	63701003
728	Unemployed	63701003
300	Discouraged work-seeker	63701003
2816	Other not economically active	63701003
0	Age less than 15 years	63701003
3836	Not applicable	63701003
799	Employed	63701004
660	Unemployed	63701004
401	Discouraged work-seeker	63701004
1852	Other not economically active	63701004
0	Age less than 15 years	63701004
2885	Not applicable	63701004
821	Employed	63701005
1037	Unemployed	63701005
110	Discouraged work-seeker	63701005
1479	Other not economically active	63701005
0	Age less than 15 years	63701005
2448	Not applicable	63701005
450	Employed	63701006
792	Unemployed	63701006
80	Discouraged work-seeker	63701006
1561	Other not economically active	63701006
0	Age less than 15 years	63701006
2419	Not applicable	63701006
1053	Employed	63701007
758	Unemployed	63701007
517	Discouraged work-seeker	63701007
1747	Other not economically active	63701007
0	Age less than 15 years	63701007
2644	Not applicable	63701007
872	Employed	63701008
835	Unemployed	63701008
171	Discouraged work-seeker	63701008
1878	Other not economically active	63701008
0	Age less than 15 years	63701008
2367	Not applicable	63701008
759	Employed	63701009
561	Unemployed	63701009
272	Discouraged work-seeker	63701009
1411	Other not economically active	63701009
0	Age less than 15 years	63701009
1852	Not applicable	63701009
768	Employed	63701010
718	Unemployed	63701010
309	Discouraged work-seeker	63701010
1798	Other not economically active	63701010
0	Age less than 15 years	63701010
2412	Not applicable	63701010
1292	Employed	63701011
685	Unemployed	63701011
799	Discouraged work-seeker	63701011
1720	Other not economically active	63701011
0	Age less than 15 years	63701011
2638	Not applicable	63701011
1467	Employed	63701012
1359	Unemployed	63701012
532	Discouraged work-seeker	63701012
2047	Other not economically active	63701012
0	Age less than 15 years	63701012
3273	Not applicable	63701012
2666	Employed	63701013
1411	Unemployed	63701013
482	Discouraged work-seeker	63701013
2536	Other not economically active	63701013
0	Age less than 15 years	63701013
4091	Not applicable	63701013
1541	Employed	63701014
1282	Unemployed	63701014
191	Discouraged work-seeker	63701014
1745	Other not economically active	63701014
0	Age less than 15 years	63701014
2639	Not applicable	63701014
826	Employed	63701015
755	Unemployed	63701015
139	Discouraged work-seeker	63701015
1117	Other not economically active	63701015
0	Age less than 15 years	63701015
1813	Not applicable	63701015
1347	Employed	63701016
845	Unemployed	63701016
388	Discouraged work-seeker	63701016
1567	Other not economically active	63701016
0	Age less than 15 years	63701016
2461	Not applicable	63701016
618	Employed	63701017
367	Unemployed	63701017
157	Discouraged work-seeker	63701017
1575	Other not economically active	63701017
0	Age less than 15 years	63701017
1795	Not applicable	63701017
931	Employed	63701018
620	Unemployed	63701018
211	Discouraged work-seeker	63701018
1795	Other not economically active	63701018
0	Age less than 15 years	63701018
1995	Not applicable	63701018
1255	Employed	63701019
648	Unemployed	63701019
270	Discouraged work-seeker	63701019
2109	Other not economically active	63701019
0	Age less than 15 years	63701019
2591	Not applicable	63701019
833	Employed	63701020
649	Unemployed	63701020
479	Discouraged work-seeker	63701020
1576	Other not economically active	63701020
0	Age less than 15 years	63701020
2157	Not applicable	63701020
675	Employed	63701021
818	Unemployed	63701021
203	Discouraged work-seeker	63701021
1491	Other not economically active	63701021
0	Age less than 15 years	63701021
2067	Not applicable	63701021
1630	Employed	63701022
1357	Unemployed	63701022
279	Discouraged work-seeker	63701022
2157	Other not economically active	63701022
0	Age less than 15 years	63701022
2893	Not applicable	63701022
968	Employed	63701023
1068	Unemployed	63701023
353	Discouraged work-seeker	63701023
1844	Other not economically active	63701023
0	Age less than 15 years	63701023
2557	Not applicable	63701023
825	Employed	63701024
598	Unemployed	63701024
222	Discouraged work-seeker	63701024
1248	Other not economically active	63701024
0	Age less than 15 years	63701024
1840	Not applicable	63701024
1098	Employed	63701025
1244	Unemployed	63701025
314	Discouraged work-seeker	63701025
1319	Other not economically active	63701025
0	Age less than 15 years	63701025
2384	Not applicable	63701025
946	Employed	63701026
1014	Unemployed	63701026
266	Discouraged work-seeker	63701026
2019	Other not economically active	63701026
0	Age less than 15 years	63701026
2751	Not applicable	63701026
991	Employed	63701027
725	Unemployed	63701027
261	Discouraged work-seeker	63701027
1010	Other not economically active	63701027
0	Age less than 15 years	63701027
1709	Not applicable	63701027
1448	Employed	63701028
1754	Unemployed	63701028
354	Discouraged work-seeker	63701028
2361	Other not economically active	63701028
0	Age less than 15 years	63701028
3556	Not applicable	63701028
1680	Employed	63702001
881	Unemployed	63702001
376	Discouraged work-seeker	63702001
2909	Other not economically active	63702001
0	Age less than 15 years	63702001
3671	Not applicable	63702001
1481	Employed	63702002
1600	Unemployed	63702002
187	Discouraged work-seeker	63702002
2158	Other not economically active	63702002
0	Age less than 15 years	63702002
3186	Not applicable	63702002
1682	Employed	63702003
1606	Unemployed	63702003
424	Discouraged work-seeker	63702003
3119	Other not economically active	63702003
0	Age less than 15 years	63702003
4052	Not applicable	63702003
1522	Employed	63702004
1557	Unemployed	63702004
506	Discouraged work-seeker	63702004
2282	Other not economically active	63702004
0	Age less than 15 years	63702004
3570	Not applicable	63702004
2311	Employed	63702005
2161	Unemployed	63702005
452	Discouraged work-seeker	63702005
2777	Other not economically active	63702005
0	Age less than 15 years	63702005
4657	Not applicable	63702005
1646	Employed	63702006
1415	Unemployed	63702006
354	Discouraged work-seeker	63702006
2380	Other not economically active	63702006
0	Age less than 15 years	63702006
3524	Not applicable	63702006
3120	Employed	63702007
879	Unemployed	63702007
230	Discouraged work-seeker	63702007
2185	Other not economically active	63702007
0	Age less than 15 years	63702007
3132	Not applicable	63702007
1928	Employed	63702008
1798	Unemployed	63702008
397	Discouraged work-seeker	63702008
2566	Other not economically active	63702008
0	Age less than 15 years	63702008
3942	Not applicable	63702008
3533	Employed	63702009
3017	Unemployed	63702009
262	Discouraged work-seeker	63702009
2546	Other not economically active	63702009
0	Age less than 15 years	63702009
4875	Not applicable	63702009
5339	Employed	63702010
3482	Unemployed	63702010
957	Discouraged work-seeker	63702010
3985	Other not economically active	63702010
0	Age less than 15 years	63702010
6385	Not applicable	63702010
3462	Employed	63702011
2184	Unemployed	63702011
259	Discouraged work-seeker	63702011
2867	Other not economically active	63702011
0	Age less than 15 years	63702011
4137	Not applicable	63702011
2433	Employed	63702012
1685	Unemployed	63702012
183	Discouraged work-seeker	63702012
1542	Other not economically active	63702012
0	Age less than 15 years	63702012
3075	Not applicable	63702012
2467	Employed	63702013
1300	Unemployed	63702013
174	Discouraged work-seeker	63702013
1328	Other not economically active	63702013
0	Age less than 15 years	63702013
2290	Not applicable	63702013
10880	Employed	63702014
2108	Unemployed	63702014
370	Discouraged work-seeker	63702014
3464	Other not economically active	63702014
0	Age less than 15 years	63702014
6184	Not applicable	63702014
2336	Employed	63702015
1495	Unemployed	63702015
160	Discouraged work-seeker	63702015
2058	Other not economically active	63702015
0	Age less than 15 years	63702015
2832	Not applicable	63702015
3987	Employed	63702016
1620	Unemployed	63702016
637	Discouraged work-seeker	63702016
2878	Other not economically active	63702016
0	Age less than 15 years	63702016
4153	Not applicable	63702016
4090	Employed	63702017
1814	Unemployed	63702017
510	Discouraged work-seeker	63702017
3211	Other not economically active	63702017
0	Age less than 15 years	63702017
4201	Not applicable	63702017
2785	Employed	63702018
1773	Unemployed	63702018
417	Discouraged work-seeker	63702018
2691	Other not economically active	63702018
0	Age less than 15 years	63702018
3612	Not applicable	63702018
3062	Employed	63702019
2141	Unemployed	63702019
294	Discouraged work-seeker	63702019
2575	Other not economically active	63702019
0	Age less than 15 years	63702019
3877	Not applicable	63702019
3201	Employed	63702020
1734	Unemployed	63702020
125	Discouraged work-seeker	63702020
3007	Other not economically active	63702020
0	Age less than 15 years	63702020
3562	Not applicable	63702020
4975	Employed	63702021
1553	Unemployed	63702021
217	Discouraged work-seeker	63702021
2701	Other not economically active	63702021
0	Age less than 15 years	63702021
4032	Not applicable	63702021
5637	Employed	63702022
1399	Unemployed	63702022
199	Discouraged work-seeker	63702022
3039	Other not economically active	63702022
0	Age less than 15 years	63702022
4266	Not applicable	63702022
2530	Employed	63702023
244	Unemployed	63702023
29	Discouraged work-seeker	63702023
1323	Other not economically active	63702023
0	Age less than 15 years	63702023
1582	Not applicable	63702023
2457	Employed	63702024
2184	Unemployed	63702024
685	Discouraged work-seeker	63702024
3500	Other not economically active	63702024
0	Age less than 15 years	63702024
4989	Not applicable	63702024
12621	Employed	63702025
4098	Unemployed	63702025
599	Discouraged work-seeker	63702025
8277	Other not economically active	63702025
0	Age less than 15 years	63702025
11370	Not applicable	63702025
8961	Employed	63702026
3421	Unemployed	63702026
206	Discouraged work-seeker	63702026
4364	Other not economically active	63702026
0	Age less than 15 years	63702026
3424	Not applicable	63702026
7505	Employed	63702027
2428	Unemployed	63702027
318	Discouraged work-seeker	63702027
2728	Other not economically active	63702027
0	Age less than 15 years	63702027
3111	Not applicable	63702027
3634	Employed	63702028
1728	Unemployed	63702028
90	Discouraged work-seeker	63702028
2593	Other not economically active	63702028
0	Age less than 15 years	63702028
3740	Not applicable	63702028
10420	Employed	63702029
2310	Unemployed	63702029
361	Discouraged work-seeker	63702029
3122	Other not economically active	63702029
0	Age less than 15 years	63702029
4956	Not applicable	63702029
8491	Employed	63702030
1254	Unemployed	63702030
214	Discouraged work-seeker	63702030
2505	Other not economically active	63702030
0	Age less than 15 years	63702030
4426	Not applicable	63702030
2594	Employed	63702031
905	Unemployed	63702031
179	Discouraged work-seeker	63702031
2207	Other not economically active	63702031
0	Age less than 15 years	63702031
2625	Not applicable	63702031
3270	Employed	63702032
1297	Unemployed	63702032
102	Discouraged work-seeker	63702032
1579	Other not economically active	63702032
0	Age less than 15 years	63702032
2410	Not applicable	63702032
7346	Employed	63702033
862	Unemployed	63702033
98	Discouraged work-seeker	63702033
2988	Other not economically active	63702033
0	Age less than 15 years	63702033
3427	Not applicable	63702033
1601	Employed	63702034
1278	Unemployed	63702034
309	Discouraged work-seeker	63702034
2801	Other not economically active	63702034
0	Age less than 15 years	63702034
3919	Not applicable	63702034
2559	Employed	63702035
2699	Unemployed	63702035
478	Discouraged work-seeker	63702035
4209	Other not economically active	63702035
0	Age less than 15 years	63702035
5919	Not applicable	63702035
2178	Employed	63702036
1579	Unemployed	63702036
463	Discouraged work-seeker	63702036
3007	Other not economically active	63702036
0	Age less than 15 years	63702036
3763	Not applicable	63702036
4783	Employed	63703001
1490	Unemployed	63703001
431	Discouraged work-seeker	63703001
4140	Other not economically active	63703001
0	Age less than 15 years	63703001
4975	Not applicable	63703001
5527	Employed	63703002
2320	Unemployed	63703002
329	Discouraged work-seeker	63703002
3558	Other not economically active	63703002
0	Age less than 15 years	63703002
5058	Not applicable	63703002
4192	Employed	63703003
1036	Unemployed	63703003
208	Discouraged work-seeker	63703003
3248	Other not economically active	63703003
0	Age less than 15 years	63703003
2045	Not applicable	63703003
6009	Employed	63703004
1426	Unemployed	63703004
465	Discouraged work-seeker	63703004
2778	Other not economically active	63703004
0	Age less than 15 years	63703004
3089	Not applicable	63703004
2399	Employed	63703005
1506	Unemployed	63703005
170	Discouraged work-seeker	63703005
2273	Other not economically active	63703005
0	Age less than 15 years	63703005
2667	Not applicable	63703005
3542	Employed	63703006
1589	Unemployed	63703006
272	Discouraged work-seeker	63703006
3600	Other not economically active	63703006
0	Age less than 15 years	63703006
3747	Not applicable	63703006
6010	Employed	63703007
2893	Unemployed	63703007
383	Discouraged work-seeker	63703007
3466	Other not economically active	63703007
0	Age less than 15 years	63703007
5151	Not applicable	63703007
9467	Employed	63703008
1371	Unemployed	63703008
260	Discouraged work-seeker	63703008
3877	Other not economically active	63703008
0	Age less than 15 years	63703008
6924	Not applicable	63703008
2246	Employed	63703009
945	Unemployed	63703009
79	Discouraged work-seeker	63703009
2847	Other not economically active	63703009
0	Age less than 15 years	63703009
2395	Not applicable	63703009
7241	Employed	63703010
2171	Unemployed	63703010
312	Discouraged work-seeker	63703010
4338	Other not economically active	63703010
0	Age less than 15 years	63703010
4994	Not applicable	63703010
6003	Employed	63703011
2759	Unemployed	63703011
716	Discouraged work-seeker	63703011
3661	Other not economically active	63703011
0	Age less than 15 years	63703011
4439	Not applicable	63703011
5746	Employed	63703012
2121	Unemployed	63703012
436	Discouraged work-seeker	63703012
2719	Other not economically active	63703012
0	Age less than 15 years	63703012
3994	Not applicable	63703012
3519	Employed	63703013
1008	Unemployed	63703013
145	Discouraged work-seeker	63703013
1256	Other not economically active	63703013
0	Age less than 15 years	63703013
1915	Not applicable	63703013
4872	Employed	63703014
303	Unemployed	63703014
27	Discouraged work-seeker	63703014
1593	Other not economically active	63703014
0	Age less than 15 years	63703014
2685	Not applicable	63703014
6112	Employed	63703015
414	Unemployed	63703015
59	Discouraged work-seeker	63703015
2573	Other not economically active	63703015
0	Age less than 15 years	63703015
3475	Not applicable	63703015
4889	Employed	63703016
325	Unemployed	63703016
72	Discouraged work-seeker	63703016
1725	Other not economically active	63703016
0	Age less than 15 years	63703016
2512	Not applicable	63703016
10976	Employed	63703017
828	Unemployed	63703017
165	Discouraged work-seeker	63703017
3482	Other not economically active	63703017
0	Age less than 15 years	63703017
5437	Not applicable	63703017
9302	Employed	63703018
3046	Unemployed	63703018
528	Discouraged work-seeker	63703018
4362	Other not economically active	63703018
0	Age less than 15 years	63703018
6264	Not applicable	63703018
8392	Employed	63703019
3753	Unemployed	63703019
549	Discouraged work-seeker	63703019
4114	Other not economically active	63703019
0	Age less than 15 years	63703019
7292	Not applicable	63703019
2975	Employed	63703020
1155	Unemployed	63703020
254	Discouraged work-seeker	63703020
1794	Other not economically active	63703020
0	Age less than 15 years	63703020
2538	Not applicable	63703020
5002	Employed	63703021
3243	Unemployed	63703021
424	Discouraged work-seeker	63703021
3947	Other not economically active	63703021
0	Age less than 15 years	63703021
5513	Not applicable	63703021
7048	Employed	63703022
3046	Unemployed	63703022
415	Discouraged work-seeker	63703022
3627	Other not economically active	63703022
0	Age less than 15 years	63703022
4386	Not applicable	63703022
3941	Employed	63703023
1692	Unemployed	63703023
311	Discouraged work-seeker	63703023
3041	Other not economically active	63703023
0	Age less than 15 years	63703023
3729	Not applicable	63703023
8237	Employed	63703024
3713	Unemployed	63703024
314	Discouraged work-seeker	63703024
8692	Other not economically active	63703024
0	Age less than 15 years	63703024
4517	Not applicable	63703024
2361	Employed	63703025
1384	Unemployed	63703025
262	Discouraged work-seeker	63703025
2597	Other not economically active	63703025
0	Age less than 15 years	63703025
3473	Not applicable	63703025
3015	Employed	63703026
1545	Unemployed	63703026
550	Discouraged work-seeker	63703026
3743	Other not economically active	63703026
0	Age less than 15 years	63703026
5120	Not applicable	63703026
2597	Employed	63703027
1659	Unemployed	63703027
665	Discouraged work-seeker	63703027
4020	Other not economically active	63703027
0	Age less than 15 years	63703027
5752	Not applicable	63703027
2099	Employed	63703028
1599	Unemployed	63703028
441	Discouraged work-seeker	63703028
3224	Other not economically active	63703028
0	Age less than 15 years	63703028
4337	Not applicable	63703028
4262	Employed	63703029
2479	Unemployed	63703029
398	Discouraged work-seeker	63703029
4162	Other not economically active	63703029
0	Age less than 15 years	63703029
6298	Not applicable	63703029
2742	Employed	63703030
1984	Unemployed	63703030
195	Discouraged work-seeker	63703030
3568	Other not economically active	63703030
0	Age less than 15 years	63703030
5042	Not applicable	63703030
4270	Employed	63703031
1887	Unemployed	63703031
101	Discouraged work-seeker	63703031
3599	Other not economically active	63703031
0	Age less than 15 years	63703031
1977	Not applicable	63703031
8227	Employed	63703032
2103	Unemployed	63703032
141	Discouraged work-seeker	63703032
2628	Other not economically active	63703032
0	Age less than 15 years	63703032
3567	Not applicable	63703032
2322	Employed	63703033
1455	Unemployed	63703033
113	Discouraged work-seeker	63703033
1494	Other not economically active	63703033
0	Age less than 15 years	63703033
1061	Not applicable	63703033
3873	Employed	63703034
2119	Unemployed	63703034
241	Discouraged work-seeker	63703034
2357	Other not economically active	63703034
0	Age less than 15 years	63703034
2102	Not applicable	63703034
4741	Employed	63703035
1337	Unemployed	63703035
210	Discouraged work-seeker	63703035
2031	Other not economically active	63703035
0	Age less than 15 years	63703035
2482	Not applicable	63703035
7603	Employed	63703036
1106	Unemployed	63703036
215	Discouraged work-seeker	63703036
3108	Other not economically active	63703036
0	Age less than 15 years	63703036
4900	Not applicable	63703036
8017	Employed	63703037
4967	Unemployed	63703037
355	Discouraged work-seeker	63703037
3160	Other not economically active	63703037
0	Age less than 15 years	63703037
4665	Not applicable	63703037
1523	Employed	63703038
615	Unemployed	63703038
49	Discouraged work-seeker	63703038
469	Other not economically active	63703038
0	Age less than 15 years	63703038
455	Not applicable	63703038
1452	Employed	63704001
776	Unemployed	63704001
212	Discouraged work-seeker	63704001
2720	Other not economically active	63704001
0	Age less than 15 years	63704001
3420	Not applicable	63704001
4639	Employed	63704002
540	Unemployed	63704002
83	Discouraged work-seeker	63704002
2277	Other not economically active	63704002
0	Age less than 15 years	63704002
2540	Not applicable	63704002
1692	Employed	63704003
268	Unemployed	63704003
50	Discouraged work-seeker	63704003
1305	Other not economically active	63704003
0	Age less than 15 years	63704003
1593	Not applicable	63704003
1043	Employed	63704004
492	Unemployed	63704004
122	Discouraged work-seeker	63704004
1542	Other not economically active	63704004
0	Age less than 15 years	63704004
2054	Not applicable	63704004
2005	Employed	63704005
990	Unemployed	63704005
523	Discouraged work-seeker	63704005
3345	Other not economically active	63704005
0	Age less than 15 years	63704005
4698	Not applicable	63704005
4166	Employed	63704006
796	Unemployed	63704006
120	Discouraged work-seeker	63704006
2313	Other not economically active	63704006
0	Age less than 15 years	63704006
3272	Not applicable	63704006
429	Employed	63705001
373	Unemployed	63705001
350	Discouraged work-seeker	63705001
2059	Other not economically active	63705001
0	Age less than 15 years	63705001
2855	Not applicable	63705001
568	Employed	63705002
692	Unemployed	63705002
549	Discouraged work-seeker	63705002
2331	Other not economically active	63705002
0	Age less than 15 years	63705002
3390	Not applicable	63705002
773	Employed	63705003
569	Unemployed	63705003
445	Discouraged work-seeker	63705003
2129	Other not economically active	63705003
0	Age less than 15 years	63705003
2738	Not applicable	63705003
675	Employed	63705004
1538	Unemployed	63705004
465	Discouraged work-seeker	63705004
2726	Other not economically active	63705004
0	Age less than 15 years	63705004
4593	Not applicable	63705004
1820	Employed	63705005
1144	Unemployed	63705005
400	Discouraged work-seeker	63705005
3451	Other not economically active	63705005
0	Age less than 15 years	63705005
3583	Not applicable	63705005
1081	Employed	63705006
616	Unemployed	63705006
384	Discouraged work-seeker	63705006
2155	Other not economically active	63705006
0	Age less than 15 years	63705006
2710	Not applicable	63705006
1968	Employed	63705007
1044	Unemployed	63705007
323	Discouraged work-seeker	63705007
1959	Other not economically active	63705007
0	Age less than 15 years	63705007
1992	Not applicable	63705007
1655	Employed	63705008
940	Unemployed	63705008
231	Discouraged work-seeker	63705008
1835	Other not economically active	63705008
0	Age less than 15 years	63705008
2479	Not applicable	63705008
2350	Employed	63705009
1262	Unemployed	63705009
414	Discouraged work-seeker	63705009
1841	Other not economically active	63705009
0	Age less than 15 years	63705009
2901	Not applicable	63705009
3888	Employed	63705010
1676	Unemployed	63705010
183	Discouraged work-seeker	63705010
2583	Other not economically active	63705010
0	Age less than 15 years	63705010
3717	Not applicable	63705010
966	Employed	63705011
495	Unemployed	63705011
99	Discouraged work-seeker	63705011
2057	Other not economically active	63705011
0	Age less than 15 years	63705011
2535	Not applicable	63705011
852	Employed	63705012
748	Unemployed	63705012
81	Discouraged work-seeker	63705012
1628	Other not economically active	63705012
0	Age less than 15 years	63705012
2286	Not applicable	63705012
2351	Employed	63705013
758	Unemployed	63705013
302	Discouraged work-seeker	63705013
2027	Other not economically active	63705013
0	Age less than 15 years	63705013
1624	Not applicable	63705013
2726	Employed	63705014
635	Unemployed	63705014
93	Discouraged work-seeker	63705014
2023	Other not economically active	63705014
0	Age less than 15 years	63705014
2190	Not applicable	63705014
2731	Employed	63705015
1076	Unemployed	63705015
245	Discouraged work-seeker	63705015
1295	Other not economically active	63705015
0	Age less than 15 years	63705015
2216	Not applicable	63705015
2491	Employed	63705016
1456	Unemployed	63705016
206	Discouraged work-seeker	63705016
2329	Other not economically active	63705016
0	Age less than 15 years	63705016
3456	Not applicable	63705016
2123	Employed	63705017
1331	Unemployed	63705017
127	Discouraged work-seeker	63705017
2545	Other not economically active	63705017
0	Age less than 15 years	63705017
3219	Not applicable	63705017
484	Employed	63705018
774	Unemployed	63705018
349	Discouraged work-seeker	63705018
2083	Other not economically active	63705018
0	Age less than 15 years	63705018
3024	Not applicable	63705018
955	Employed	63705019
964	Unemployed	63705019
239	Discouraged work-seeker	63705019
2232	Other not economically active	63705019
0	Age less than 15 years	63705019
3119	Not applicable	63705019
552	Employed	63705020
912	Unemployed	63705020
305	Discouraged work-seeker	63705020
2472	Other not economically active	63705020
0	Age less than 15 years	63705020
2989	Not applicable	63705020
824	Employed	63705021
1230	Unemployed	63705021
151	Discouraged work-seeker	63705021
2579	Other not economically active	63705021
0	Age less than 15 years	63705021
3533	Not applicable	63705021
1445	Employed	63705022
1052	Unemployed	63705022
221	Discouraged work-seeker	63705022
1905	Other not economically active	63705022
0	Age less than 15 years	63705022
2607	Not applicable	63705022
884	Employed	63705023
825	Unemployed	63705023
193	Discouraged work-seeker	63705023
2708	Other not economically active	63705023
0	Age less than 15 years	63705023
3230	Not applicable	63705023
584	Employed	63705024
183	Unemployed	63705024
229	Discouraged work-seeker	63705024
1548	Other not economically active	63705024
0	Age less than 15 years	63705024
1711	Not applicable	63705024
950	Employed	63705025
463	Unemployed	63705025
445	Discouraged work-seeker	63705025
2598	Other not economically active	63705025
0	Age less than 15 years	63705025
2890	Not applicable	63705025
1064	Employed	63705026
646	Unemployed	63705026
320	Discouraged work-seeker	63705026
2699	Other not economically active	63705026
0	Age less than 15 years	63705026
2854	Not applicable	63705026
1586	Employed	63705027
770	Unemployed	63705027
240	Discouraged work-seeker	63705027
2663	Other not economically active	63705027
0	Age less than 15 years	63705027
3397	Not applicable	63705027
2654	Employed	63705028
1316	Unemployed	63705028
297	Discouraged work-seeker	63705028
2245	Other not economically active	63705028
0	Age less than 15 years	63705028
3066	Not applicable	63705028
1932	Employed	63705029
771	Unemployed	63705029
155	Discouraged work-seeker	63705029
2962	Other not economically active	63705029
0	Age less than 15 years	63705029
3424	Not applicable	63705029
1709	Employed	63705030
1133	Unemployed	63705030
225	Discouraged work-seeker	63705030
1793	Other not economically active	63705030
0	Age less than 15 years	63705030
2503	Not applicable	63705030
1346	Employed	63705031
933	Unemployed	63705031
102	Discouraged work-seeker	63705031
2398	Other not economically active	63705031
0	Age less than 15 years	63705031
2750	Not applicable	63705031
418	Employed	63801001
609	Unemployed	63801001
654	Discouraged work-seeker	63801001
2045	Other not economically active	63801001
0	Age less than 15 years	63801001
3657	Not applicable	63801001
513	Employed	63801002
548	Unemployed	63801002
540	Discouraged work-seeker	63801002
2066	Other not economically active	63801002
0	Age less than 15 years	63801002
2722	Not applicable	63801002
455	Employed	63801003
428	Unemployed	63801003
823	Discouraged work-seeker	63801003
2303	Other not economically active	63801003
0	Age less than 15 years	63801003
3225	Not applicable	63801003
403	Employed	63801004
1143	Unemployed	63801004
695	Discouraged work-seeker	63801004
2292	Other not economically active	63801004
0	Age less than 15 years	63801004
4038	Not applicable	63801004
568	Employed	63801005
243	Unemployed	63801005
439	Discouraged work-seeker	63801005
1701	Other not economically active	63801005
0	Age less than 15 years	63801005
2579	Not applicable	63801005
474	Employed	63801006
459	Unemployed	63801006
469	Discouraged work-seeker	63801006
1746	Other not economically active	63801006
0	Age less than 15 years	63801006
2812	Not applicable	63801006
262	Employed	63801007
239	Unemployed	63801007
567	Discouraged work-seeker	63801007
3018	Other not economically active	63801007
0	Age less than 15 years	63801007
3927	Not applicable	63801007
700	Employed	63801008
663	Unemployed	63801008
505	Discouraged work-seeker	63801008
4363	Other not economically active	63801008
0	Age less than 15 years	63801008
5333	Not applicable	63801008
350	Employed	63801009
186	Unemployed	63801009
381	Discouraged work-seeker	63801009
3908	Other not economically active	63801009
0	Age less than 15 years	63801009
4200	Not applicable	63801009
132	Employed	63801010
53	Unemployed	63801010
130	Discouraged work-seeker	63801010
1342	Other not economically active	63801010
0	Age less than 15 years	63801010
1464	Not applicable	63801010
1778	Employed	63801011
373	Unemployed	63801011
256	Discouraged work-seeker	63801011
1905	Other not economically active	63801011
0	Age less than 15 years	63801011
2854	Not applicable	63801011
246	Employed	63801012
772	Unemployed	63801012
225	Discouraged work-seeker	63801012
2432	Other not economically active	63801012
0	Age less than 15 years	63801012
3345	Not applicable	63801012
1364	Employed	63801013
626	Unemployed	63801013
405	Discouraged work-seeker	63801013
3215	Other not economically active	63801013
0	Age less than 15 years	63801013
4903	Not applicable	63801013
1148	Employed	63801014
545	Unemployed	63801014
496	Discouraged work-seeker	63801014
3208	Other not economically active	63801014
0	Age less than 15 years	63801014
4452	Not applicable	63801014
1788	Employed	63802001
490	Unemployed	63802001
340	Discouraged work-seeker	63802001
3094	Other not economically active	63802001
0	Age less than 15 years	63802001
4129	Not applicable	63802001
450	Employed	63802002
719	Unemployed	63802002
375	Discouraged work-seeker	63802002
2589	Other not economically active	63802002
0	Age less than 15 years	63802002
3536	Not applicable	63802002
361	Employed	63802003
490	Unemployed	63802003
462	Discouraged work-seeker	63802003
2217	Other not economically active	63802003
0	Age less than 15 years	63802003
2929	Not applicable	63802003
719	Employed	63802004
474	Unemployed	63802004
504	Discouraged work-seeker	63802004
2444	Other not economically active	63802004
0	Age less than 15 years	63802004
3541	Not applicable	63802004
399	Employed	63802005
494	Unemployed	63802005
357	Discouraged work-seeker	63802005
2387	Other not economically active	63802005
0	Age less than 15 years	63802005
3191	Not applicable	63802005
773	Employed	63802006
839	Unemployed	63802006
410	Discouraged work-seeker	63802006
2450	Other not economically active	63802006
0	Age less than 15 years	63802006
3742	Not applicable	63802006
1689	Employed	63802007
510	Unemployed	63802007
459	Discouraged work-seeker	63802007
2345	Other not economically active	63802007
0	Age less than 15 years	63802007
3451	Not applicable	63802007
915	Employed	63802008
292	Unemployed	63802008
158	Discouraged work-seeker	63802008
1366	Other not economically active	63802008
0	Age less than 15 years	63802008
1834	Not applicable	63802008
3688	Employed	63802009
1052	Unemployed	63802009
708	Discouraged work-seeker	63802009
4477	Other not economically active	63802009
0	Age less than 15 years	63802009
6657	Not applicable	63802009
2006	Employed	63802010
892	Unemployed	63802010
529	Discouraged work-seeker	63802010
2640	Other not economically active	63802010
0	Age less than 15 years	63802010
4163	Not applicable	63802010
626	Employed	63802011
536	Unemployed	63802011
310	Discouraged work-seeker	63802011
2947	Other not economically active	63802011
0	Age less than 15 years	63802011
3248	Not applicable	63802011
2024	Employed	63802012
769	Unemployed	63802012
525	Discouraged work-seeker	63802012
3249	Other not economically active	63802012
0	Age less than 15 years	63802012
4561	Not applicable	63802012
350	Employed	63802013
361	Unemployed	63802013
118	Discouraged work-seeker	63802013
1292	Other not economically active	63802013
0	Age less than 15 years	63802013
1361	Not applicable	63802013
2320	Employed	63802014
215	Unemployed	63802014
194	Discouraged work-seeker	63802014
1566	Other not economically active	63802014
0	Age less than 15 years	63802014
2524	Not applicable	63802014
2645	Employed	63802015
216	Unemployed	63802015
160	Discouraged work-seeker	63802015
2289	Other not economically active	63802015
0	Age less than 15 years	63802015
3285	Not applicable	63802015
976	Employed	63803001
924	Unemployed	63803001
600	Discouraged work-seeker	63803001
3399	Other not economically active	63803001
0	Age less than 15 years	63803001
4454	Not applicable	63803001
1356	Employed	63803002
765	Unemployed	63803002
439	Discouraged work-seeker	63803002
2355	Other not economically active	63803002
0	Age less than 15 years	63803002
3138	Not applicable	63803002
1412	Employed	63803003
969	Unemployed	63803003
502	Discouraged work-seeker	63803003
2418	Other not economically active	63803003
0	Age less than 15 years	63803003
3282	Not applicable	63803003
2349	Employed	63803004
1105	Unemployed	63803004
412	Discouraged work-seeker	63803004
1975	Other not economically active	63803004
0	Age less than 15 years	63803004
3342	Not applicable	63803004
551	Employed	63803005
329	Unemployed	63803005
323	Discouraged work-seeker	63803005
1038	Other not economically active	63803005
0	Age less than 15 years	63803005
1250	Not applicable	63803005
2599	Employed	63803006
1197	Unemployed	63803006
400	Discouraged work-seeker	63803006
3058	Other not economically active	63803006
0	Age less than 15 years	63803006
3540	Not applicable	63803006
4413	Employed	63803007
1844	Unemployed	63803007
532	Discouraged work-seeker	63803007
3582	Other not economically active	63803007
0	Age less than 15 years	63803007
4786	Not applicable	63803007
1769	Employed	63803008
645	Unemployed	63803008
86	Discouraged work-seeker	63803008
2816	Other not economically active	63803008
0	Age less than 15 years	63803008
1598	Not applicable	63803008
3185	Employed	63803009
1004	Unemployed	63803009
297	Discouraged work-seeker	63803009
3423	Other not economically active	63803009
0	Age less than 15 years	63803009
3366	Not applicable	63803009
2611	Employed	63803010
438	Unemployed	63803010
104	Discouraged work-seeker	63803010
1823	Other not economically active	63803010
0	Age less than 15 years	63803010
1690	Not applicable	63803010
1284	Employed	63803011
926	Unemployed	63803011
189	Discouraged work-seeker	63803011
1348	Other not economically active	63803011
0	Age less than 15 years	63803011
1922	Not applicable	63803011
3143	Employed	63803012
1090	Unemployed	63803012
265	Discouraged work-seeker	63803012
1917	Other not economically active	63803012
0	Age less than 15 years	63803012
3165	Not applicable	63803012
4700	Employed	63803013
1873	Unemployed	63803013
517	Discouraged work-seeker	63803013
3005	Other not economically active	63803013
0	Age less than 15 years	63803013
4889	Not applicable	63803013
2422	Employed	63803014
2170	Unemployed	63803014
537	Discouraged work-seeker	63803014
3333	Other not economically active	63803014
0	Age less than 15 years	63803014
4803	Not applicable	63803014
1714	Employed	63803015
1072	Unemployed	63803015
391	Discouraged work-seeker	63803015
2286	Other not economically active	63803015
0	Age less than 15 years	63803015
2599	Not applicable	63803015
2216	Employed	63803016
1329	Unemployed	63803016
883	Discouraged work-seeker	63803016
2775	Other not economically active	63803016
0	Age less than 15 years	63803016
3422	Not applicable	63803016
1528	Employed	63803017
743	Unemployed	63803017
494	Discouraged work-seeker	63803017
2263	Other not economically active	63803017
0	Age less than 15 years	63803017
2851	Not applicable	63803017
1642	Employed	63803018
1568	Unemployed	63803018
399	Discouraged work-seeker	63803018
2472	Other not economically active	63803018
0	Age less than 15 years	63803018
3574	Not applicable	63803018
854	Employed	63803019
570	Unemployed	63803019
281	Discouraged work-seeker	63803019
1746	Other not economically active	63803019
0	Age less than 15 years	63803019
1970	Not applicable	63803019
1666	Employed	63803020
931	Unemployed	63803020
96	Discouraged work-seeker	63803020
1278	Other not economically active	63803020
0	Age less than 15 years	63803020
1831	Not applicable	63803020
1319	Employed	63803021
1060	Unemployed	63803021
355	Discouraged work-seeker	63803021
2507	Other not economically active	63803021
0	Age less than 15 years	63803021
3061	Not applicable	63803021
1806	Employed	63803022
1461	Unemployed	63803022
576	Discouraged work-seeker	63803022
3989	Other not economically active	63803022
0	Age less than 15 years	63803022
4672	Not applicable	63803022
916	Employed	63803023
885	Unemployed	63803023
393	Discouraged work-seeker	63803023
2700	Other not economically active	63803023
0	Age less than 15 years	63803023
3145	Not applicable	63803023
887	Employed	63803024
908	Unemployed	63803024
359	Discouraged work-seeker	63803024
3008	Other not economically active	63803024
0	Age less than 15 years	63803024
3849	Not applicable	63803024
778	Employed	63803025
365	Unemployed	63803025
565	Discouraged work-seeker	63803025
2926	Other not economically active	63803025
0	Age less than 15 years	63803025
3474	Not applicable	63803025
429	Employed	63803026
501	Unemployed	63803026
845	Discouraged work-seeker	63803026
3300	Other not economically active	63803026
0	Age less than 15 years	63803026
4398	Not applicable	63803026
1686	Employed	63803027
893	Unemployed	63803027
454	Discouraged work-seeker	63803027
3688	Other not economically active	63803027
0	Age less than 15 years	63803027
4226	Not applicable	63803027
2685	Employed	63803028
1329	Unemployed	63803028
309	Discouraged work-seeker	63803028
2759	Other not economically active	63803028
0	Age less than 15 years	63803028
4278	Not applicable	63803028
2860	Employed	63803029
1607	Unemployed	63803029
583	Discouraged work-seeker	63803029
2249	Other not economically active	63803029
0	Age less than 15 years	63803029
3801	Not applicable	63803029
1694	Employed	63803030
1338	Unemployed	63803030
225	Discouraged work-seeker	63803030
3111	Other not economically active	63803030
0	Age less than 15 years	63803030
2475	Not applicable	63803030
2276	Employed	63803031
1328	Unemployed	63803031
576	Discouraged work-seeker	63803031
3316	Other not economically active	63803031
0	Age less than 15 years	63803031
4934	Not applicable	63803031
1597	Employed	63804001
954	Unemployed	63804001
197	Discouraged work-seeker	63804001
1352	Other not economically active	63804001
0	Age less than 15 years	63804001
2594	Not applicable	63804001
1682	Employed	63804002
584	Unemployed	63804002
193	Discouraged work-seeker	63804002
1409	Other not economically active	63804002
0	Age less than 15 years	63804002
2157	Not applicable	63804002
2158	Employed	63804003
328	Unemployed	63804003
439	Discouraged work-seeker	63804003
2317	Other not economically active	63804003
0	Age less than 15 years	63804003
2898	Not applicable	63804003
2055	Employed	63804004
969	Unemployed	63804004
241	Discouraged work-seeker	63804004
2516	Other not economically active	63804004
0	Age less than 15 years	63804004
3609	Not applicable	63804004
3379	Employed	63804005
566	Unemployed	63804005
77	Discouraged work-seeker	63804005
1649	Other not economically active	63804005
0	Age less than 15 years	63804005
2722	Not applicable	63804005
2463	Employed	63804006
223	Unemployed	63804006
57	Discouraged work-seeker	63804006
1671	Other not economically active	63804006
0	Age less than 15 years	63804006
1596	Not applicable	63804006
752	Employed	63804007
676	Unemployed	63804007
68	Discouraged work-seeker	63804007
1608	Other not economically active	63804007
0	Age less than 15 years	63804007
1898	Not applicable	63804007
1396	Employed	63804008
850	Unemployed	63804008
202	Discouraged work-seeker	63804008
2067	Other not economically active	63804008
0	Age less than 15 years	63804008
2608	Not applicable	63804008
945	Employed	63804009
935	Unemployed	63804009
63	Discouraged work-seeker	63804009
1065	Other not economically active	63804009
0	Age less than 15 years	63804009
1757	Not applicable	63804009
1075	Employed	63804010
719	Unemployed	63804010
756	Discouraged work-seeker	63804010
2735	Other not economically active	63804010
0	Age less than 15 years	63804010
3713	Not applicable	63804010
712	Employed	63804011
471	Unemployed	63804011
476	Discouraged work-seeker	63804011
2225	Other not economically active	63804011
0	Age less than 15 years	63804011
2550	Not applicable	63804011
1266	Employed	63804012
951	Unemployed	63804012
219	Discouraged work-seeker	63804012
1351	Other not economically active	63804012
0	Age less than 15 years	63804012
2352	Not applicable	63804012
3395	Employed	63804013
734	Unemployed	63804013
369	Discouraged work-seeker	63804013
2867	Other not economically active	63804013
0	Age less than 15 years	63804013
4165	Not applicable	63804013
3697	Employed	63804014
600	Unemployed	63804014
511	Discouraged work-seeker	63804014
2564	Other not economically active	63804014
0	Age less than 15 years	63804014
4278	Not applicable	63804014
1430	Employed	63804015
881	Unemployed	63804015
840	Discouraged work-seeker	63804015
3186	Other not economically active	63804015
0	Age less than 15 years	63804015
4918	Not applicable	63804015
2711	Employed	63804016
1013	Unemployed	63804016
188	Discouraged work-seeker	63804016
2806	Other not economically active	63804016
0	Age less than 15 years	63804016
4255	Not applicable	63804016
684	Employed	63804017
600	Unemployed	63804017
593	Discouraged work-seeker	63804017
2119	Other not economically active	63804017
0	Age less than 15 years	63804017
2884	Not applicable	63804017
546	Employed	63804018
453	Unemployed	63804018
353	Discouraged work-seeker	63804018
1942	Other not economically active	63804018
0	Age less than 15 years	63804018
2233	Not applicable	63804018
589	Employed	63804019
710	Unemployed	63804019
301	Discouraged work-seeker	63804019
2713	Other not economically active	63804019
0	Age less than 15 years	63804019
3022	Not applicable	63804019
2539	Employed	63804020
701	Unemployed	63804020
418	Discouraged work-seeker	63804020
1826	Other not economically active	63804020
0	Age less than 15 years	63804020
3430	Not applicable	63804020
2531	Employed	63804021
910	Unemployed	63804021
589	Discouraged work-seeker	63804021
3029	Other not economically active	63804021
0	Age less than 15 years	63804021
4661	Not applicable	63804021
316	Employed	63805001
371	Unemployed	63805001
393	Discouraged work-seeker	63805001
1628	Other not economically active	63805001
0	Age less than 15 years	63805001
2068	Not applicable	63805001
412	Employed	63805002
703	Unemployed	63805002
694	Discouraged work-seeker	63805002
2913	Other not economically active	63805002
0	Age less than 15 years	63805002
4045	Not applicable	63805002
386	Employed	63805003
268	Unemployed	63805003
321	Discouraged work-seeker	63805003
2084	Other not economically active	63805003
0	Age less than 15 years	63805003
2562	Not applicable	63805003
643	Employed	63805004
691	Unemployed	63805004
399	Discouraged work-seeker	63805004
2133	Other not economically active	63805004
0	Age less than 15 years	63805004
3058	Not applicable	63805004
383	Employed	63805005
691	Unemployed	63805005
194	Discouraged work-seeker	63805005
2332	Other not economically active	63805005
0	Age less than 15 years	63805005
2746	Not applicable	63805005
569	Employed	63805006
786	Unemployed	63805006
147	Discouraged work-seeker	63805006
1480	Other not economically active	63805006
0	Age less than 15 years	63805006
2095	Not applicable	63805006
373	Employed	63805007
672	Unemployed	63805007
450	Discouraged work-seeker	63805007
2802	Other not economically active	63805007
0	Age less than 15 years	63805007
3577	Not applicable	63805007
374	Employed	63805008
369	Unemployed	63805008
464	Discouraged work-seeker	63805008
2329	Other not economically active	63805008
0	Age less than 15 years	63805008
2937	Not applicable	63805008
448	Employed	63805009
637	Unemployed	63805009
254	Discouraged work-seeker	63805009
1958	Other not economically active	63805009
0	Age less than 15 years	63805009
2521	Not applicable	63805009
344	Employed	63805010
364	Unemployed	63805010
285	Discouraged work-seeker	63805010
1781	Other not economically active	63805010
0	Age less than 15 years	63805010
2092	Not applicable	63805010
845	Employed	63805011
797	Unemployed	63805011
968	Discouraged work-seeker	63805011
3445	Other not economically active	63805011
0	Age less than 15 years	63805011
4454	Not applicable	63805011
1900	Employed	63805012
846	Unemployed	63805012
233	Discouraged work-seeker	63805012
2130	Other not economically active	63805012
0	Age less than 15 years	63805012
2697	Not applicable	63805012
1050	Employed	63805013
750	Unemployed	63805013
809	Discouraged work-seeker	63805013
3061	Other not economically active	63805013
0	Age less than 15 years	63805013
4349	Not applicable	63805013
1188	Employed	63805014
614	Unemployed	63805014
1000	Discouraged work-seeker	63805014
2024	Other not economically active	63805014
0	Age less than 15 years	63805014
3367	Not applicable	63805014
2607	Employed	63805015
334	Unemployed	63805015
63	Discouraged work-seeker	63805015
1547	Other not economically active	63805015
0	Age less than 15 years	63805015
2169	Not applicable	63805015
2342	Employed	63805016
627	Unemployed	63805016
555	Discouraged work-seeker	63805016
2728	Other not economically active	63805016
0	Age less than 15 years	63805016
3016	Not applicable	63805016
1899	Employed	63805017
523	Unemployed	63805017
351	Discouraged work-seeker	63805017
2348	Other not economically active	63805017
0	Age less than 15 years	63805017
2822	Not applicable	63805017
635	Employed	63805018
899	Unemployed	63805018
505	Discouraged work-seeker	63805018
2039	Other not economically active	63805018
0	Age less than 15 years	63805018
3239	Not applicable	63805018
5039	Employed	63805019
1165	Unemployed	63805019
447	Discouraged work-seeker	63805019
2865	Other not economically active	63805019
0	Age less than 15 years	63805019
4023	Not applicable	63805019
684	Employed	63805020
634	Unemployed	63805020
498	Discouraged work-seeker	63805020
2092	Other not economically active	63805020
0	Age less than 15 years	63805020
2945	Not applicable	63805020
2484	Employed	63902001
489	Unemployed	63902001
294	Discouraged work-seeker	63902001
2475	Other not economically active	63902001
0	Age less than 15 years	63902001
3518	Not applicable	63902001
2340	Employed	63902002
497	Unemployed	63902002
103	Discouraged work-seeker	63902002
1572	Other not economically active	63902002
0	Age less than 15 years	63902002
2313	Not applicable	63902002
2002	Employed	63902003
831	Unemployed	63902003
284	Discouraged work-seeker	63902003
2223	Other not economically active	63902003
0	Age less than 15 years	63902003
3230	Not applicable	63902003
1926	Employed	63902004
1861	Unemployed	63902004
366	Discouraged work-seeker	63902004
2814	Other not economically active	63902004
0	Age less than 15 years	63902004
4397	Not applicable	63902004
2862	Employed	63902005
491	Unemployed	63902005
264	Discouraged work-seeker	63902005
2100	Other not economically active	63902005
0	Age less than 15 years	63902005
3228	Not applicable	63902005
1026	Employed	63902006
618	Unemployed	63902006
131	Discouraged work-seeker	63902006
1317	Other not economically active	63902006
0	Age less than 15 years	63902006
1657	Not applicable	63902006
3333	Employed	63902007
180	Unemployed	63902007
87	Discouraged work-seeker	63902007
1411	Other not economically active	63902007
0	Age less than 15 years	63902007
2133	Not applicable	63902007
1160	Employed	63902008
848	Unemployed	63902008
140	Discouraged work-seeker	63902008
1138	Other not economically active	63902008
0	Age less than 15 years	63902008
1819	Not applicable	63902008
1069	Employed	63902009
599	Unemployed	63902009
112	Discouraged work-seeker	63902009
1294	Other not economically active	63902009
0	Age less than 15 years	63902009
1744	Not applicable	63902009
1880	Employed	63903001
335	Unemployed	63903001
198	Discouraged work-seeker	63903001
2466	Other not economically active	63903001
0	Age less than 15 years	63903001
3450	Not applicable	63903001
609	Employed	63903002
795	Unemployed	63903002
123	Discouraged work-seeker	63903002
1459	Other not economically active	63903002
0	Age less than 15 years	63903002
1876	Not applicable	63903002
1318	Employed	63903003
746	Unemployed	63903003
537	Discouraged work-seeker	63903003
2094	Other not economically active	63903003
0	Age less than 15 years	63903003
3471	Not applicable	63903003
947	Employed	63903004
940	Unemployed	63903004
274	Discouraged work-seeker	63903004
1546	Other not economically active	63903004
0	Age less than 15 years	63903004
2663	Not applicable	63903004
1206	Employed	63903005
920	Unemployed	63903005
511	Discouraged work-seeker	63903005
2828	Other not economically active	63903005
0	Age less than 15 years	63903005
4297	Not applicable	63903005
1187	Employed	63903006
972	Unemployed	63903006
428	Discouraged work-seeker	63903006
1971	Other not economically active	63903006
0	Age less than 15 years	63903006
3433	Not applicable	63903006
2816	Employed	63903007
426	Unemployed	63903007
209	Discouraged work-seeker	63903007
1798	Other not economically active	63903007
0	Age less than 15 years	63903007
3114	Not applicable	63903007
989	Employed	63903008
800	Unemployed	63903008
237	Discouraged work-seeker	63903008
1723	Other not economically active	63903008
0	Age less than 15 years	63903008
2762	Not applicable	63903008
1653	Employed	63904001
344	Unemployed	63904001
380	Discouraged work-seeker	63904001
2141	Other not economically active	63904001
0	Age less than 15 years	63904001
3123	Not applicable	63904001
567	Employed	63904002
570	Unemployed	63904002
905	Discouraged work-seeker	63904002
2999	Other not economically active	63904002
0	Age less than 15 years	63904002
4569	Not applicable	63904002
478	Employed	63904003
654	Unemployed	63904003
427	Discouraged work-seeker	63904003
2287	Other not economically active	63904003
0	Age less than 15 years	63904003
3416	Not applicable	63904003
397	Employed	63904004
291	Unemployed	63904004
619	Discouraged work-seeker	63904004
1878	Other not economically active	63904004
0	Age less than 15 years	63904004
2740	Not applicable	63904004
1830	Employed	63904005
648	Unemployed	63904005
371	Discouraged work-seeker	63904005
2001	Other not economically active	63904005
0	Age less than 15 years	63904005
2570	Not applicable	63904005
470	Employed	63904006
531	Unemployed	63904006
631	Discouraged work-seeker	63904006
3162	Other not economically active	63904006
0	Age less than 15 years	63904006
3923	Not applicable	63904006
391	Employed	63904007
550	Unemployed	63904007
383	Discouraged work-seeker	63904007
1796	Other not economically active	63904007
0	Age less than 15 years	63904007
2574	Not applicable	63904007
664	Employed	63904008
465	Unemployed	63904008
836	Discouraged work-seeker	63904008
1921	Other not economically active	63904008
0	Age less than 15 years	63904008
2793	Not applicable	63904008
611	Employed	63904009
552	Unemployed	63904009
897	Discouraged work-seeker	63904009
2557	Other not economically active	63904009
0	Age less than 15 years	63904009
3547	Not applicable	63904009
460	Employed	63904010
704	Unemployed	63904010
610	Discouraged work-seeker	63904010
1856	Other not economically active	63904010
0	Age less than 15 years	63904010
3281	Not applicable	63904010
1378	Employed	63904011
938	Unemployed	63904011
150	Discouraged work-seeker	63904011
1257	Other not economically active	63904011
0	Age less than 15 years	63904011
1889	Not applicable	63904011
771	Employed	63904012
764	Unemployed	63904012
696	Discouraged work-seeker	63904012
2145	Other not economically active	63904012
0	Age less than 15 years	63904012
3222	Not applicable	63904012
1049	Employed	63904013
1013	Unemployed	63904013
213	Discouraged work-seeker	63904013
1403	Other not economically active	63904013
0	Age less than 15 years	63904013
2380	Not applicable	63904013
390	Employed	63904014
883	Unemployed	63904014
369	Discouraged work-seeker	63904014
1909	Other not economically active	63904014
0	Age less than 15 years	63904014
2887	Not applicable	63904014
419	Employed	63904015
589	Unemployed	63904015
360	Discouraged work-seeker	63904015
2388	Other not economically active	63904015
0	Age less than 15 years	63904015
3434	Not applicable	63904015
365	Employed	63904016
774	Unemployed	63904016
503	Discouraged work-seeker	63904016
1624	Other not economically active	63904016
0	Age less than 15 years	63904016
2611	Not applicable	63904016
431	Employed	63904017
728	Unemployed	63904017
234	Discouraged work-seeker	63904017
2425	Other not economically active	63904017
0	Age less than 15 years	63904017
3077	Not applicable	63904017
568	Employed	63904018
394	Unemployed	63904018
264	Discouraged work-seeker	63904018
3138	Other not economically active	63904018
0	Age less than 15 years	63904018
3217	Not applicable	63904018
421	Employed	63904019
585	Unemployed	63904019
311	Discouraged work-seeker	63904019
1953	Other not economically active	63904019
0	Age less than 15 years	63904019
2473	Not applicable	63904019
590	Employed	63904020
945	Unemployed	63904020
500	Discouraged work-seeker	63904020
1882	Other not economically active	63904020
0	Age less than 15 years	63904020
3139	Not applicable	63904020
409	Employed	63904021
603	Unemployed	63904021
409	Discouraged work-seeker	63904021
2615	Other not economically active	63904021
0	Age less than 15 years	63904021
3257	Not applicable	63904021
286	Employed	63904022
629	Unemployed	63904022
505	Discouraged work-seeker	63904022
1522	Other not economically active	63904022
0	Age less than 15 years	63904022
2665	Not applicable	63904022
232	Employed	63904023
115	Unemployed	63904023
414	Discouraged work-seeker	63904023
2116	Other not economically active	63904023
0	Age less than 15 years	63904023
2429	Not applicable	63904023
448	Employed	63904024
410	Unemployed	63904024
904	Discouraged work-seeker	63904024
1896	Other not economically active	63904024
0	Age less than 15 years	63904024
3090	Not applicable	63904024
886	Employed	63904025
1000	Unemployed	63904025
348	Discouraged work-seeker	63904025
1936	Other not economically active	63904025
0	Age less than 15 years	63904025
2631	Not applicable	63904025
300	Employed	63904026
622	Unemployed	63904026
538	Discouraged work-seeker	63904026
1649	Other not economically active	63904026
0	Age less than 15 years	63904026
2702	Not applicable	63904026
1510	Employed	63906001
1172	Unemployed	63906001
524	Discouraged work-seeker	63906001
2403	Other not economically active	63906001
0	Age less than 15 years	63906001
3929	Not applicable	63906001
701	Employed	63906002
591	Unemployed	63906002
414	Discouraged work-seeker	63906002
1226	Other not economically active	63906002
0	Age less than 15 years	63906002
1929	Not applicable	63906002
1403	Employed	63906003
887	Unemployed	63906003
630	Discouraged work-seeker	63906003
2088	Other not economically active	63906003
0	Age less than 15 years	63906003
3759	Not applicable	63906003
1840	Employed	63906004
476	Unemployed	63906004
109	Discouraged work-seeker	63906004
1305	Other not economically active	63906004
0	Age less than 15 years	63906004
1743	Not applicable	63906004
1642	Employed	63906005
840	Unemployed	63906005
504	Discouraged work-seeker	63906005
2441	Other not economically active	63906005
0	Age less than 15 years	63906005
3596	Not applicable	63906005
2842	Employed	63906006
245	Unemployed	63906006
113	Discouraged work-seeker	63906006
1783	Other not economically active	63906006
0	Age less than 15 years	63906006
1926	Not applicable	63906006
1430	Employed	63906007
771	Unemployed	63906007
561	Discouraged work-seeker	63906007
2599	Other not economically active	63906007
0	Age less than 15 years	63906007
3313	Not applicable	63906007
1303	Employed	63907001
184	Unemployed	63907001
359	Discouraged work-seeker	63907001
2613	Other not economically active	63907001
0	Age less than 15 years	63907001
3654	Not applicable	63907001
2723	Employed	63907002
284	Unemployed	63907002
369	Discouraged work-seeker	63907002
1575	Other not economically active	63907002
0	Age less than 15 years	63907002
2382	Not applicable	63907002
2211	Employed	63907003
603	Unemployed	63907003
533	Discouraged work-seeker	63907003
3127	Other not economically active	63907003
0	Age less than 15 years	63907003
4599	Not applicable	63907003
821	Employed	63907004
991	Unemployed	63907004
204	Discouraged work-seeker	63907004
2031	Other not economically active	63907004
0	Age less than 15 years	63907004
2854	Not applicable	63907004
558	Employed	63907005
540	Unemployed	63907005
189	Discouraged work-seeker	63907005
1313	Other not economically active	63907005
0	Age less than 15 years	63907005
1930	Not applicable	63907005
1046	Employed	63907006
296	Unemployed	63907006
271	Discouraged work-seeker	63907006
2001	Other not economically active	63907006
0	Age less than 15 years	63907006
2727	Not applicable	63907006
581	Employed	63907007
266	Unemployed	63907007
389	Discouraged work-seeker	63907007
2623	Other not economically active	63907007
0	Age less than 15 years	63907007
3495	Not applicable	63907007
1416	Employed	63907008
309	Unemployed	63907008
195	Discouraged work-seeker	63907008
2202	Other not economically active	63907008
0	Age less than 15 years	63907008
2848	Not applicable	63907008
428	Employed	63907009
417	Unemployed	63907009
379	Discouraged work-seeker	63907009
1593	Other not economically active	63907009
0	Age less than 15 years	63907009
2123	Not applicable	63907009
768	Employed	63907010
421	Unemployed	63907010
499	Discouraged work-seeker	63907010
2665	Other not economically active	63907010
0	Age less than 15 years	63907010
3756	Not applicable	63907010
210	Employed	63907011
284	Unemployed	63907011
521	Discouraged work-seeker	63907011
2230	Other not economically active	63907011
0	Age less than 15 years	63907011
2832	Not applicable	63907011
607	Employed	63907012
192	Unemployed	63907012
395	Discouraged work-seeker	63907012
1893	Other not economically active	63907012
0	Age less than 15 years	63907012
2689	Not applicable	63907012
515	Employed	63907013
421	Unemployed	63907013
239	Discouraged work-seeker	63907013
2918	Other not economically active	63907013
0	Age less than 15 years	63907013
3792	Not applicable	63907013
610	Employed	63907014
503	Unemployed	63907014
364	Discouraged work-seeker	63907014
2512	Other not economically active	63907014
0	Age less than 15 years	63907014
3603	Not applicable	63907014
995	Employed	63907015
693	Unemployed	63907015
245	Discouraged work-seeker	63907015
2100	Other not economically active	63907015
0	Age less than 15 years	63907015
2760	Not applicable	63907015
860	Employed	64001001
418	Unemployed	64001001
257	Discouraged work-seeker	64001001
1199	Other not economically active	64001001
0	Age less than 15 years	64001001
1819	Not applicable	64001001
1043	Employed	64001002
535	Unemployed	64001002
200	Discouraged work-seeker	64001002
1184	Other not economically active	64001002
0	Age less than 15 years	64001002
1727	Not applicable	64001002
1896	Employed	64001003
925	Unemployed	64001003
638	Discouraged work-seeker	64001003
4848	Other not economically active	64001003
0	Age less than 15 years	64001003
6287	Not applicable	64001003
2681	Employed	64001004
561	Unemployed	64001004
402	Discouraged work-seeker	64001004
2246	Other not economically active	64001004
0	Age less than 15 years	64001004
3526	Not applicable	64001004
2643	Employed	64001005
920	Unemployed	64001005
378	Discouraged work-seeker	64001005
3623	Other not economically active	64001005
0	Age less than 15 years	64001005
5035	Not applicable	64001005
2582	Employed	64001006
963	Unemployed	64001006
398	Discouraged work-seeker	64001006
2751	Other not economically active	64001006
0	Age less than 15 years	64001006
4158	Not applicable	64001006
1395	Employed	64002001
371	Unemployed	64002001
233	Discouraged work-seeker	64002001
1654	Other not economically active	64002001
0	Age less than 15 years	64002001
2231	Not applicable	64002001
6328	Employed	64002002
646	Unemployed	64002002
279	Discouraged work-seeker	64002002
2950	Other not economically active	64002002
0	Age less than 15 years	64002002
3994	Not applicable	64002002
5133	Employed	64002003
422	Unemployed	64002003
92	Discouraged work-seeker	64002003
2147	Other not economically active	64002003
0	Age less than 15 years	64002003
3080	Not applicable	64002003
3097	Employed	64002004
873	Unemployed	64002004
119	Discouraged work-seeker	64002004
2417	Other not economically active	64002004
0	Age less than 15 years	64002004
3023	Not applicable	64002004
1307	Employed	64002005
107	Unemployed	64002005
15	Discouraged work-seeker	64002005
472	Other not economically active	64002005
0	Age less than 15 years	64002005
938	Not applicable	64002005
1265	Employed	64002006
246	Unemployed	64002006
33	Discouraged work-seeker	64002006
1645	Other not economically active	64002006
0	Age less than 15 years	64002006
1124	Not applicable	64002006
1458	Employed	64002007
133	Unemployed	64002007
23	Discouraged work-seeker	64002007
3108	Other not economically active	64002007
0	Age less than 15 years	64002007
809	Not applicable	64002007
1384	Employed	64002008
565	Unemployed	64002008
64	Discouraged work-seeker	64002008
1069	Other not economically active	64002008
0	Age less than 15 years	64002008
1316	Not applicable	64002008
2278	Employed	64002009
946	Unemployed	64002009
292	Discouraged work-seeker	64002009
1509	Other not economically active	64002009
0	Age less than 15 years	64002009
2567	Not applicable	64002009
1317	Employed	64002010
422	Unemployed	64002010
65	Discouraged work-seeker	64002010
1036	Other not economically active	64002010
0	Age less than 15 years	64002010
1332	Not applicable	64002010
704	Employed	64002011
281	Unemployed	64002011
54	Discouraged work-seeker	64002011
796	Other not economically active	64002011
0	Age less than 15 years	64002011
831	Not applicable	64002011
1818	Employed	64002012
607	Unemployed	64002012
115	Discouraged work-seeker	64002012
1283	Other not economically active	64002012
0	Age less than 15 years	64002012
1794	Not applicable	64002012
2670	Employed	64002013
1284	Unemployed	64002013
166	Discouraged work-seeker	64002013
1863	Other not economically active	64002013
0	Age less than 15 years	64002013
2938	Not applicable	64002013
1186	Employed	64002014
623	Unemployed	64002014
22	Discouraged work-seeker	64002014
1158	Other not economically active	64002014
0	Age less than 15 years	64002014
1478	Not applicable	64002014
1861	Employed	64002015
169	Unemployed	64002015
37	Discouraged work-seeker	64002015
1090	Other not economically active	64002015
0	Age less than 15 years	64002015
1421	Not applicable	64002015
1049	Employed	64002016
373	Unemployed	64002016
89	Discouraged work-seeker	64002016
1423	Other not economically active	64002016
0	Age less than 15 years	64002016
1462	Not applicable	64002016
1547	Employed	64002017
514	Unemployed	64002017
184	Discouraged work-seeker	64002017
1397	Other not economically active	64002017
0	Age less than 15 years	64002017
1879	Not applicable	64002017
1585	Employed	64002018
719	Unemployed	64002018
143	Discouraged work-seeker	64002018
1698	Other not economically active	64002018
0	Age less than 15 years	64002018
2133	Not applicable	64002018
2304	Employed	64002019
1279	Unemployed	64002019
201	Discouraged work-seeker	64002019
2454	Other not economically active	64002019
0	Age less than 15 years	64002019
3191	Not applicable	64002019
1727	Employed	64002020
438	Unemployed	64002020
235	Discouraged work-seeker	64002020
1776	Other not economically active	64002020
0	Age less than 15 years	64002020
2323	Not applicable	64002020
3024	Employed	64002021
1725	Unemployed	64002021
397	Discouraged work-seeker	64002021
3214	Other not economically active	64002021
0	Age less than 15 years	64002021
4389	Not applicable	64002021
367	Employed	64002022
60	Unemployed	64002022
1	Discouraged work-seeker	64002022
1800	Other not economically active	64002022
0	Age less than 15 years	64002022
147	Not applicable	64002022
2072	Employed	64002023
104	Unemployed	64002023
9	Discouraged work-seeker	64002023
900	Other not economically active	64002023
0	Age less than 15 years	64002023
1255	Not applicable	64002023
538	Employed	64002024
71	Unemployed	64002024
12	Discouraged work-seeker	64002024
356	Other not economically active	64002024
0	Age less than 15 years	64002024
311	Not applicable	64002024
1354	Employed	64002025
120	Unemployed	64002025
10	Discouraged work-seeker	64002025
1313	Other not economically active	64002025
0	Age less than 15 years	64002025
652	Not applicable	64002025
2900	Employed	64002026
1154	Unemployed	64002026
264	Discouraged work-seeker	64002026
2897	Other not economically active	64002026
0	Age less than 15 years	64002026
3644	Not applicable	64002026
4597	Employed	64003001
972	Unemployed	64003001
586	Discouraged work-seeker	64003001
4479	Other not economically active	64003001
0	Age less than 15 years	64003001
5932	Not applicable	64003001
2739	Employed	64003002
1212	Unemployed	64003002
506	Discouraged work-seeker	64003002
5275	Other not economically active	64003002
0	Age less than 15 years	64003002
5967	Not applicable	64003002
3046	Employed	64003003
1181	Unemployed	64003003
128	Discouraged work-seeker	64003003
2373	Other not economically active	64003003
0	Age less than 15 years	64003003
3422	Not applicable	64003003
4845	Employed	64003004
3404	Unemployed	64003004
529	Discouraged work-seeker	64003004
3555	Other not economically active	64003004
0	Age less than 15 years	64003004
7278	Not applicable	64003004
2609	Employed	64003005
1518	Unemployed	64003005
570	Discouraged work-seeker	64003005
3406	Other not economically active	64003005
0	Age less than 15 years	64003005
4305	Not applicable	64003005
3031	Employed	64003006
1421	Unemployed	64003006
428	Discouraged work-seeker	64003006
3999	Other not economically active	64003006
0	Age less than 15 years	64003006
4011	Not applicable	64003006
2201	Employed	64003007
2118	Unemployed	64003007
229	Discouraged work-seeker	64003007
2983	Other not economically active	64003007
0	Age less than 15 years	64003007
3947	Not applicable	64003007
2340	Employed	64003008
1198	Unemployed	64003008
341	Discouraged work-seeker	64003008
2269	Other not economically active	64003008
0	Age less than 15 years	64003008
3220	Not applicable	64003008
2304	Employed	64003009
1980	Unemployed	64003009
428	Discouraged work-seeker	64003009
1938	Other not economically active	64003009
0	Age less than 15 years	64003009
3360	Not applicable	64003009
1407	Employed	64003010
1178	Unemployed	64003010
72	Discouraged work-seeker	64003010
1826	Other not economically active	64003010
0	Age less than 15 years	64003010
2465	Not applicable	64003010
1768	Employed	64003011
1301	Unemployed	64003011
317	Discouraged work-seeker	64003011
1800	Other not economically active	64003011
0	Age less than 15 years	64003011
2509	Not applicable	64003011
3270	Employed	64003012
3241	Unemployed	64003012
462	Discouraged work-seeker	64003012
2987	Other not economically active	64003012
0	Age less than 15 years	64003012
5626	Not applicable	64003012
2399	Employed	64003013
1843	Unemployed	64003013
673	Discouraged work-seeker	64003013
2470	Other not economically active	64003013
0	Age less than 15 years	64003013
3879	Not applicable	64003013
2308	Employed	64003014
1365	Unemployed	64003014
336	Discouraged work-seeker	64003014
2636	Other not economically active	64003014
0	Age less than 15 years	64003014
3796	Not applicable	64003014
4521	Employed	64003015
510	Unemployed	64003015
62	Discouraged work-seeker	64003015
2418	Other not economically active	64003015
0	Age less than 15 years	64003015
3220	Not applicable	64003015
4260	Employed	64003016
249	Unemployed	64003016
68	Discouraged work-seeker	64003016
1806	Other not economically active	64003016
0	Age less than 15 years	64003016
2858	Not applicable	64003016
5485	Employed	64003017
271	Unemployed	64003017
73	Discouraged work-seeker	64003017
2313	Other not economically active	64003017
0	Age less than 15 years	64003017
3394	Not applicable	64003017
5235	Employed	64003018
436	Unemployed	64003018
237	Discouraged work-seeker	64003018
2428	Other not economically active	64003018
0	Age less than 15 years	64003018
4345	Not applicable	64003018
5373	Employed	64003019
785	Unemployed	64003019
186	Discouraged work-seeker	64003019
3587	Other not economically active	64003019
0	Age less than 15 years	64003019
3681	Not applicable	64003019
1315	Employed	64003020
896	Unemployed	64003020
231	Discouraged work-seeker	64003020
1507	Other not economically active	64003020
0	Age less than 15 years	64003020
2146	Not applicable	64003020
2784	Employed	64003021
544	Unemployed	64003021
101	Discouraged work-seeker	64003021
2918	Other not economically active	64003021
0	Age less than 15 years	64003021
1612	Not applicable	64003021
4413	Employed	64003022
3426	Unemployed	64003022
711	Discouraged work-seeker	64003022
3992	Other not economically active	64003022
0	Age less than 15 years	64003022
7003	Not applicable	64003022
2722	Employed	64003023
2372	Unemployed	64003023
505	Discouraged work-seeker	64003023
2685	Other not economically active	64003023
0	Age less than 15 years	64003023
4685	Not applicable	64003023
1977	Employed	64003024
2030	Unemployed	64003024
235	Discouraged work-seeker	64003024
2304	Other not economically active	64003024
0	Age less than 15 years	64003024
3556	Not applicable	64003024
2381	Employed	64003025
1807	Unemployed	64003025
132	Discouraged work-seeker	64003025
1813	Other not economically active	64003025
0	Age less than 15 years	64003025
3207	Not applicable	64003025
1602	Employed	64003026
1888	Unemployed	64003026
221	Discouraged work-seeker	64003026
1978	Other not economically active	64003026
0	Age less than 15 years	64003026
3098	Not applicable	64003026
2379	Employed	64003027
1778	Unemployed	64003027
462	Discouraged work-seeker	64003027
2798	Other not economically active	64003027
0	Age less than 15 years	64003027
4204	Not applicable	64003027
4190	Employed	64003028
569	Unemployed	64003028
168	Discouraged work-seeker	64003028
2862	Other not economically active	64003028
0	Age less than 15 years	64003028
2647	Not applicable	64003028
3958	Employed	64003029
591	Unemployed	64003029
151	Discouraged work-seeker	64003029
2640	Other not economically active	64003029
0	Age less than 15 years	64003029
2736	Not applicable	64003029
3934	Employed	64003030
541	Unemployed	64003030
115	Discouraged work-seeker	64003030
2280	Other not economically active	64003030
0	Age less than 15 years	64003030
3029	Not applicable	64003030
3436	Employed	64003031
1722	Unemployed	64003031
324	Discouraged work-seeker	64003031
3010	Other not economically active	64003031
0	Age less than 15 years	64003031
4489	Not applicable	64003031
2413	Employed	64003032
1907	Unemployed	64003032
283	Discouraged work-seeker	64003032
2015	Other not economically active	64003032
0	Age less than 15 years	64003032
2847	Not applicable	64003032
1900	Employed	64003033
2079	Unemployed	64003033
530	Discouraged work-seeker	64003033
2649	Other not economically active	64003033
0	Age less than 15 years	64003033
4051	Not applicable	64003033
1408	Employed	64003034
1261	Unemployed	64003034
264	Discouraged work-seeker	64003034
1934	Other not economically active	64003034
0	Age less than 15 years	64003034
2945	Not applicable	64003034
2378	Employed	64003035
2374	Unemployed	64003035
648	Discouraged work-seeker	64003035
2487	Other not economically active	64003035
0	Age less than 15 years	64003035
4579	Not applicable	64003035
756	Employed	64004001
549	Unemployed	64004001
182	Discouraged work-seeker	64004001
1971	Other not economically active	64004001
0	Age less than 15 years	64004001
2377	Not applicable	64004001
690	Employed	64004002
758	Unemployed	64004002
249	Discouraged work-seeker	64004002
1750	Other not economically active	64004002
0	Age less than 15 years	64004002
2241	Not applicable	64004002
603	Employed	64004003
702	Unemployed	64004003
127	Discouraged work-seeker	64004003
1877	Other not economically active	64004003
0	Age less than 15 years	64004003
1960	Not applicable	64004003
824	Employed	64004004
952	Unemployed	64004004
182	Discouraged work-seeker	64004004
1882	Other not economically active	64004004
0	Age less than 15 years	64004004
2436	Not applicable	64004004
2198	Employed	64004005
175	Unemployed	64004005
125	Discouraged work-seeker	64004005
1786	Other not economically active	64004005
0	Age less than 15 years	64004005
1888	Not applicable	64004005
1242	Employed	64004006
382	Unemployed	64004006
395	Discouraged work-seeker	64004006
1856	Other not economically active	64004006
0	Age less than 15 years	64004006
2489	Not applicable	64004006
556	Employed	64004007
508	Unemployed	64004007
152	Discouraged work-seeker	64004007
924	Other not economically active	64004007
0	Age less than 15 years	64004007
1279	Not applicable	64004007
4597	Employed	64004008
973	Unemployed	64004008
457	Discouraged work-seeker	64004008
3355	Other not economically active	64004008
0	Age less than 15 years	64004008
5549	Not applicable	64004008
767	Employed	64004009
783	Unemployed	64004009
218	Discouraged work-seeker	64004009
1448	Other not economically active	64004009
0	Age less than 15 years	64004009
2163	Not applicable	64004009
2100	Employed	64004010
1142	Unemployed	64004010
666	Discouraged work-seeker	64004010
2731	Other not economically active	64004010
0	Age less than 15 years	64004010
3961	Not applicable	64004010
930	Employed	64004011
749	Unemployed	64004011
261	Discouraged work-seeker	64004011
2547	Other not economically active	64004011
0	Age less than 15 years	64004011
3372	Not applicable	64004011
815	Employed	30601001
159	Unemployed	30601001
67	Discouraged work-seeker	30601001
365	Other not economically active	30601001
0	Age less than 15 years	30601001
697	Not applicable	30601001
1616	Employed	30601002
340	Unemployed	30601002
29	Discouraged work-seeker	30601002
742	Other not economically active	30601002
0	Age less than 15 years	30601002
1004	Not applicable	30601002
1120	Employed	30601003
335	Unemployed	30601003
77	Discouraged work-seeker	30601003
734	Other not economically active	30601003
0	Age less than 15 years	30601003
896	Not applicable	30601003
1076	Employed	30601004
227	Unemployed	30601004
38	Discouraged work-seeker	30601004
669	Other not economically active	30601004
0	Age less than 15 years	30601004
977	Not applicable	30601004
1349	Employed	30602001
349	Unemployed	30602001
202	Discouraged work-seeker	30602001
1675	Other not economically active	30602001
0	Age less than 15 years	30602001
1914	Not applicable	30602001
1159	Employed	30602002
373	Unemployed	30602002
243	Discouraged work-seeker	30602002
1830	Other not economically active	30602002
0	Age less than 15 years	30602002
1873	Not applicable	30602002
682	Employed	30602003
289	Unemployed	30602003
469	Discouraged work-seeker	30602003
1637	Other not economically active	30602003
0	Age less than 15 years	30602003
1607	Not applicable	30602003
1897	Employed	30602004
136	Unemployed	30602004
26	Discouraged work-seeker	30602004
661	Other not economically active	30602004
0	Age less than 15 years	30602004
1095	Not applicable	30602004
1612	Employed	30602005
113	Unemployed	30602005
145	Discouraged work-seeker	30602005
1686	Other not economically active	30602005
0	Age less than 15 years	30602005
1711	Not applicable	30602005
1636	Employed	30602006
673	Unemployed	30602006
175	Discouraged work-seeker	30602006
1660	Other not economically active	30602006
0	Age less than 15 years	30602006
1967	Not applicable	30602006
1477	Employed	30602007
607	Unemployed	30602007
191	Discouraged work-seeker	30602007
1130	Other not economically active	30602007
0	Age less than 15 years	30602007
1841	Not applicable	30602007
1239	Employed	30602008
570	Unemployed	30602008
349	Discouraged work-seeker	30602008
1555	Other not economically active	30602008
0	Age less than 15 years	30602008
1673	Not applicable	30602008
1300	Employed	30602009
555	Unemployed	30602009
135	Discouraged work-seeker	30602009
1692	Other not economically active	30602009
0	Age less than 15 years	30602009
1884	Not applicable	30602009
438	Employed	30604001
257	Unemployed	30604001
219	Discouraged work-seeker	30604001
389	Other not economically active	30604001
0	Age less than 15 years	30604001
725	Not applicable	30604001
937	Employed	30604002
329	Unemployed	30604002
116	Discouraged work-seeker	30604002
776	Other not economically active	30604002
0	Age less than 15 years	30604002
1104	Not applicable	30604002
451	Employed	30604003
122	Unemployed	30604003
167	Discouraged work-seeker	30604003
893	Other not economically active	30604003
0	Age less than 15 years	30604003
998	Not applicable	30604003
379	Employed	30604004
273	Unemployed	30604004
229	Discouraged work-seeker	30604004
478	Other not economically active	30604004
0	Age less than 15 years	30604004
909	Not applicable	30604004
999	Employed	30605001
150	Unemployed	30605001
85	Discouraged work-seeker	30605001
1209	Other not economically active	30605001
0	Age less than 15 years	30605001
1502	Not applicable	30605001
1512	Employed	30605002
246	Unemployed	30605002
67	Discouraged work-seeker	30605002
1699	Other not economically active	30605002
0	Age less than 15 years	30605002
2100	Not applicable	30605002
1147	Employed	30605003
261	Unemployed	30605003
203	Discouraged work-seeker	30605003
997	Other not economically active	30605003
0	Age less than 15 years	30605003
1395	Not applicable	30605003
1487	Employed	30605004
98	Unemployed	30605004
60	Discouraged work-seeker	30605004
1297	Other not economically active	30605004
0	Age less than 15 years	30605004
1542	Not applicable	30605004
1102	Employed	30605005
83	Unemployed	30605005
31	Discouraged work-seeker	30605005
1134	Other not economically active	30605005
0	Age less than 15 years	30605005
1174	Not applicable	30605005
760	Employed	30606001
245	Unemployed	30606001
137	Discouraged work-seeker	30606001
838	Other not economically active	30606001
0	Age less than 15 years	30606001
1389	Not applicable	30606001
682	Employed	30606002
151	Unemployed	30606002
67	Discouraged work-seeker	30606002
953	Other not economically active	30606002
0	Age less than 15 years	30606002
1175	Not applicable	30606002
1384	Employed	30606003
56	Unemployed	30606003
69	Discouraged work-seeker	30606003
658	Other not economically active	30606003
0	Age less than 15 years	30606003
904	Not applicable	30606003
830	Employed	30606004
171	Unemployed	30606004
122	Discouraged work-seeker	30606004
721	Other not economically active	30606004
0	Age less than 15 years	30606004
1277	Not applicable	30606004
1737	Employed	30607001
416	Unemployed	30607001
24	Discouraged work-seeker	30607001
383	Other not economically active	30607001
0	Age less than 15 years	30607001
960	Not applicable	30607001
443	Employed	30607002
483	Unemployed	30607002
121	Discouraged work-seeker	30607002
527	Other not economically active	30607002
0	Age less than 15 years	30607002
1011	Not applicable	30607002
970	Employed	30607003
263	Unemployed	30607003
113	Discouraged work-seeker	30607003
602	Other not economically active	30607003
0	Age less than 15 years	30607003
1008	Not applicable	30607003
1450	Employed	30607004
141	Unemployed	30607004
64	Discouraged work-seeker	30607004
815	Other not economically active	30607004
0	Age less than 15 years	30607004
933	Not applicable	30607004
1065	Employed	30701001
675	Unemployed	30701001
224	Discouraged work-seeker	30701001
1147	Other not economically active	30701001
0	Age less than 15 years	30701001
2012	Not applicable	30701001
1142	Employed	30701002
840	Unemployed	30701002
115	Discouraged work-seeker	30701002
1070	Other not economically active	30701002
0	Age less than 15 years	30701002
2183	Not applicable	30701002
1826	Employed	30701003
199	Unemployed	30701003
70	Discouraged work-seeker	30701003
829	Other not economically active	30701003
0	Age less than 15 years	30701003
1790	Not applicable	30701003
995	Employed	30701004
350	Unemployed	30701004
99	Discouraged work-seeker	30701004
729	Other not economically active	30701004
0	Age less than 15 years	30701004
1242	Not applicable	30701004
1245	Employed	30702001
383	Unemployed	30702001
496	Discouraged work-seeker	30702001
1933	Other not economically active	30702001
0	Age less than 15 years	30702001
2501	Not applicable	30702001
1117	Employed	30702002
621	Unemployed	30702002
282	Discouraged work-seeker	30702002
849	Other not economically active	30702002
0	Age less than 15 years	30702002
1691	Not applicable	30702002
1361	Employed	30702003
692	Unemployed	30702003
307	Discouraged work-seeker	30702003
1877	Other not economically active	30702003
0	Age less than 15 years	30702003
2580	Not applicable	30702003
1274	Employed	30702004
608	Unemployed	30702004
48	Discouraged work-seeker	30702004
1878	Other not economically active	30702004
0	Age less than 15 years	30702004
2271	Not applicable	30702004
1119	Employed	30702005
716	Unemployed	30702005
56	Discouraged work-seeker	30702005
955	Other not economically active	30702005
0	Age less than 15 years	30702005
1519	Not applicable	30702005
1055	Employed	30703001
596	Unemployed	30703001
186	Discouraged work-seeker	30703001
1288	Other not economically active	30703001
0	Age less than 15 years	30703001
2048	Not applicable	30703001
1402	Employed	30703002
821	Unemployed	30703002
235	Discouraged work-seeker	30703002
2351	Other not economically active	30703002
0	Age less than 15 years	30703002
3187	Not applicable	30703002
800	Employed	30703003
382	Unemployed	30703003
263	Discouraged work-seeker	30703003
2000	Other not economically active	30703003
0	Age less than 15 years	30703003
1974	Not applicable	30703003
1034	Employed	30703004
850	Unemployed	30703004
91	Discouraged work-seeker	30703004
1287	Other not economically active	30703004
0	Age less than 15 years	30703004
2090	Not applicable	30703004
2124	Employed	30703005
236	Unemployed	30703005
16	Discouraged work-seeker	30703005
1749	Other not economically active	30703005
0	Age less than 15 years	30703005
1925	Not applicable	30703005
1763	Employed	30703006
439	Unemployed	30703006
155	Discouraged work-seeker	30703006
1533	Other not economically active	30703006
0	Age less than 15 years	30703006
2287	Not applicable	30703006
1689	Employed	30703007
508	Unemployed	30703007
257	Discouraged work-seeker	30703007
1352	Other not economically active	30703007
0	Age less than 15 years	30703007
2382	Not applicable	30703007
745	Employed	30704001
178	Unemployed	30704001
37	Discouraged work-seeker	30704001
858	Other not economically active	30704001
0	Age less than 15 years	30704001
932	Not applicable	30704001
611	Employed	30704002
470	Unemployed	30704002
245	Discouraged work-seeker	30704002
962	Other not economically active	30704002
0	Age less than 15 years	30704002
1574	Not applicable	30704002
859	Employed	30704003
111	Unemployed	30704003
42	Discouraged work-seeker	30704003
449	Other not economically active	30704003
0	Age less than 15 years	30704003
707	Not applicable	30704003
643	Employed	30704004
193	Unemployed	30704004
134	Discouraged work-seeker	30704004
760	Other not economically active	30704004
0	Age less than 15 years	30704004
1162	Not applicable	30704004
747	Employed	30705001
133	Unemployed	30705001
73	Discouraged work-seeker	30705001
854	Other not economically active	30705001
0	Age less than 15 years	30705001
1182	Not applicable	30705001
614	Employed	30705002
515	Unemployed	30705002
173	Discouraged work-seeker	30705002
1232	Other not economically active	30705002
0	Age less than 15 years	30705002
1721	Not applicable	30705002
467	Employed	30705003
163	Unemployed	30705003
40	Discouraged work-seeker	30705003
318	Other not economically active	30705003
0	Age less than 15 years	30705003
598	Not applicable	30705003
789	Employed	30705004
147	Unemployed	30705004
39	Discouraged work-seeker	30705004
390	Other not economically active	30705004
0	Age less than 15 years	30705004
783	Not applicable	30705004
840	Employed	30706001
386	Unemployed	30706001
122	Discouraged work-seeker	30706001
803	Other not economically active	30706001
0	Age less than 15 years	30706001
1385	Not applicable	30706001
1422	Employed	30706002
209	Unemployed	30706002
187	Discouraged work-seeker	30706002
1153	Other not economically active	30706002
0	Age less than 15 years	30706002
1588	Not applicable	30706002
639	Employed	30706003
407	Unemployed	30706003
109	Discouraged work-seeker	30706003
889	Other not economically active	30706003
0	Age less than 15 years	30706003
1220	Not applicable	30706003
960	Employed	30706004
529	Unemployed	30706004
268	Discouraged work-seeker	30706004
932	Other not economically active	30706004
0	Age less than 15 years	30706004
1652	Not applicable	30706004
1162	Employed	30707001
586	Unemployed	30707001
374	Discouraged work-seeker	30707001
1935	Other not economically active	30707001
0	Age less than 15 years	30707001
2439	Not applicable	30707001
641	Employed	30707002
477	Unemployed	30707002
111	Discouraged work-seeker	30707002
1137	Other not economically active	30707002
0	Age less than 15 years	30707002
1421	Not applicable	30707002
1698	Employed	30707003
329	Unemployed	30707003
202	Discouraged work-seeker	30707003
1761	Other not economically active	30707003
0	Age less than 15 years	30707003
2390	Not applicable	30707003
1870	Employed	30707004
336	Unemployed	30707004
80	Discouraged work-seeker	30707004
954	Other not economically active	30707004
0	Age less than 15 years	30707004
1690	Not applicable	30707004
1401	Employed	30708001
480	Unemployed	30708001
215	Discouraged work-seeker	30708001
1543	Other not economically active	30708001
0	Age less than 15 years	30708001
2322	Not applicable	30708001
1290	Employed	30708002
356	Unemployed	30708002
280	Discouraged work-seeker	30708002
985	Other not economically active	30708002
0	Age less than 15 years	30708002
1901	Not applicable	30708002
1272	Employed	30708003
817	Unemployed	30708003
390	Discouraged work-seeker	30708003
1980	Other not economically active	30708003
0	Age less than 15 years	30708003
2541	Not applicable	30708003
1261	Employed	30708004
568	Unemployed	30708004
223	Discouraged work-seeker	30708004
2862	Other not economically active	30708004
0	Age less than 15 years	30708004
3258	Not applicable	30708004
1269	Employed	30708005
285	Unemployed	30708005
65	Discouraged work-seeker	30708005
1370	Other not economically active	30708005
0	Age less than 15 years	30708005
1761	Not applicable	30708005
1453	Employed	30708006
611	Unemployed	30708006
249	Discouraged work-seeker	30708006
1833	Other not economically active	30708006
0	Age less than 15 years	30708006
2233	Not applicable	30708006
155	Employed	30801001
17	Unemployed	30801001
38	Discouraged work-seeker	30801001
115	Other not economically active	30801001
0	Age less than 15 years	30801001
158	Not applicable	30801001
443	Employed	30801002
256	Unemployed	30801002
94	Discouraged work-seeker	30801002
867	Other not economically active	30801002
0	Age less than 15 years	30801002
1097	Not applicable	30801002
354	Employed	30801003
204	Unemployed	30801003
89	Discouraged work-seeker	30801003
747	Other not economically active	30801003
0	Age less than 15 years	30801003
899	Not applicable	30801003
349	Employed	30801004
104	Unemployed	30801004
66	Discouraged work-seeker	30801004
390	Other not economically active	30801004
0	Age less than 15 years	30801004
561	Not applicable	30801004
7821	Employed	30802001
197	Unemployed	30802001
47	Discouraged work-seeker	30802001
1181	Other not economically active	30802001
0	Age less than 15 years	30802001
2163	Not applicable	30802001
4433	Employed	30802002
127	Unemployed	30802002
46	Discouraged work-seeker	30802002
1618	Other not economically active	30802002
0	Age less than 15 years	30802002
1967	Not applicable	30802002
4717	Employed	30802003
319	Unemployed	30802003
102	Discouraged work-seeker	30802003
1966	Other not economically active	30802003
0	Age less than 15 years	30802003
2413	Not applicable	30802003
2137	Employed	30802004
528	Unemployed	30802004
58	Discouraged work-seeker	30802004
1468	Other not economically active	30802004
0	Age less than 15 years	30802004
2185	Not applicable	30802004
1922	Employed	30802005
283	Unemployed	30802005
132	Discouraged work-seeker	30802005
1181	Other not economically active	30802005
0	Age less than 15 years	30802005
1981	Not applicable	30802005
1021	Employed	30802006
517	Unemployed	30802006
195	Discouraged work-seeker	30802006
2878	Other not economically active	30802006
0	Age less than 15 years	30802006
3072	Not applicable	30802006
1409	Employed	30802007
378	Unemployed	30802007
33	Discouraged work-seeker	30802007
1271	Other not economically active	30802007
0	Age less than 15 years	30802007
1765	Not applicable	30802007
2106	Employed	30802008
239	Unemployed	30802008
57	Discouraged work-seeker	30802008
1465	Other not economically active	30802008
0	Age less than 15 years	30802008
1792	Not applicable	30802008
2287	Employed	30802009
509	Unemployed	30802009
268	Discouraged work-seeker	30802009
1505	Other not economically active	30802009
0	Age less than 15 years	30802009
2109	Not applicable	30802009
1384	Employed	30803001
351	Unemployed	30803001
209	Discouraged work-seeker	30803001
2108	Other not economically active	30803001
0	Age less than 15 years	30803001
2346	Not applicable	30803001
1651	Employed	30803002
749	Unemployed	30803002
118	Discouraged work-seeker	30803002
2279	Other not economically active	30803002
0	Age less than 15 years	30803002
2897	Not applicable	30803002
1396	Employed	30803003
365	Unemployed	30803003
174	Discouraged work-seeker	30803003
1575	Other not economically active	30803003
0	Age less than 15 years	30803003
1819	Not applicable	30803003
975	Employed	30803004
529	Unemployed	30803004
39	Discouraged work-seeker	30803004
1421	Other not economically active	30803004
0	Age less than 15 years	30803004
1750	Not applicable	30803004
1592	Employed	30803005
684	Unemployed	30803005
133	Discouraged work-seeker	30803005
2047	Other not economically active	30803005
0	Age less than 15 years	30803005
2666	Not applicable	30803005
1573	Employed	30803006
893	Unemployed	30803006
189	Discouraged work-seeker	30803006
1905	Other not economically active	30803006
0	Age less than 15 years	30803006
2351	Not applicable	30803006
883	Employed	30803007
198	Unemployed	30803007
245	Discouraged work-seeker	30803007
1094	Other not economically active	30803007
0	Age less than 15 years	30803007
1206	Not applicable	30803007
2990	Employed	30803008
317	Unemployed	30803008
100	Discouraged work-seeker	30803008
1288	Other not economically active	30803008
0	Age less than 15 years	30803008
2095	Not applicable	30803008
3218	Employed	30803009
173	Unemployed	30803009
49	Discouraged work-seeker	30803009
1010	Other not economically active	30803009
0	Age less than 15 years	30803009
2092	Not applicable	30803009
2424	Employed	30803010
941	Unemployed	30803010
218	Discouraged work-seeker	30803010
2835	Other not economically active	30803010
0	Age less than 15 years	30803010
3837	Not applicable	30803010
2582	Employed	30803011
494	Unemployed	30803011
179	Discouraged work-seeker	30803011
1765	Other not economically active	30803011
0	Age less than 15 years	30803011
2519	Not applicable	30803011
1713	Employed	30803012
260	Unemployed	30803012
382	Discouraged work-seeker	30803012
1676	Other not economically active	30803012
0	Age less than 15 years	30803012
2605	Not applicable	30803012
1487	Employed	30803013
909	Unemployed	30803013
123	Discouraged work-seeker	30803013
3218	Other not economically active	30803013
0	Age less than 15 years	30803013
2614	Not applicable	30803013
1256	Employed	30803014
248	Unemployed	30803014
132	Discouraged work-seeker	30803014
1680	Other not economically active	30803014
0	Age less than 15 years	30803014
2274	Not applicable	30803014
773	Employed	30804001
635	Unemployed	30804001
183	Discouraged work-seeker	30804001
1071	Other not economically active	30804001
0	Age less than 15 years	30804001
1683	Not applicable	30804001
1416	Employed	30804002
291	Unemployed	30804002
107	Discouraged work-seeker	30804002
1038	Other not economically active	30804002
0	Age less than 15 years	30804002
2038	Not applicable	30804002
1176	Employed	30804003
310	Unemployed	30804003
94	Discouraged work-seeker	30804003
930	Other not economically active	30804003
0	Age less than 15 years	30804003
1311	Not applicable	30804003
683	Employed	30804004
334	Unemployed	30804004
167	Discouraged work-seeker	30804004
822	Other not economically active	30804004
0	Age less than 15 years	30804004
1574	Not applicable	30804004
1246	Employed	30805001
325	Unemployed	30805001
83	Discouraged work-seeker	30805001
1020	Other not economically active	30805001
0	Age less than 15 years	30805001
1347	Not applicable	30805001
1589	Employed	30805002
751	Unemployed	30805002
120	Discouraged work-seeker	30805002
1996	Other not economically active	30805002
0	Age less than 15 years	30805002
2192	Not applicable	30805002
1391	Employed	30805003
741	Unemployed	30805003
59	Discouraged work-seeker	30805003
1443	Other not economically active	30805003
0	Age less than 15 years	30805003
2081	Not applicable	30805003
1397	Employed	30805004
944	Unemployed	30805004
20	Discouraged work-seeker	30805004
1249	Other not economically active	30805004
0	Age less than 15 years	30805004
1816	Not applicable	30805004
2979	Employed	30805005
779	Unemployed	30805005
79	Discouraged work-seeker	30805005
1603	Other not economically active	30805005
0	Age less than 15 years	30805005
2303	Not applicable	30805005
2159	Employed	30805006
256	Unemployed	30805006
58	Discouraged work-seeker	30805006
1454	Other not economically active	30805006
0	Age less than 15 years	30805006
1614	Not applicable	30805006
661	Employed	30806001
650	Unemployed	30806001
228	Discouraged work-seeker	30806001
1184	Other not economically active	30806001
0	Age less than 15 years	30806001
1537	Not applicable	30806001
907	Employed	30806002
85	Unemployed	30806002
38	Discouraged work-seeker	30806002
905	Other not economically active	30806002
0	Age less than 15 years	30806002
971	Not applicable	30806002
1561	Employed	30806003
460	Unemployed	30806003
150	Discouraged work-seeker	30806003
2240	Other not economically active	30806003
0	Age less than 15 years	30806003
2598	Not applicable	30806003
2236	Employed	30806004
349	Unemployed	30806004
58	Discouraged work-seeker	30806004
700	Other not economically active	30806004
0	Age less than 15 years	30806004
1170	Not applicable	30806004
1537	Employed	30901001
722	Unemployed	30901001
290	Discouraged work-seeker	30901001
1327	Other not economically active	30901001
0	Age less than 15 years	30901001
2035	Not applicable	30901001
2569	Employed	30901002
1133	Unemployed	30901002
309	Discouraged work-seeker	30901002
3366	Other not economically active	30901002
0	Age less than 15 years	30901002
4001	Not applicable	30901002
2060	Employed	30901003
1081	Unemployed	30901003
248	Discouraged work-seeker	30901003
2168	Other not economically active	30901003
0	Age less than 15 years	30901003
2923	Not applicable	30901003
1352	Employed	30901004
1161	Unemployed	30901004
126	Discouraged work-seeker	30901004
2089	Other not economically active	30901004
0	Age less than 15 years	30901004
2461	Not applicable	30901004
1433	Employed	30901005
1358	Unemployed	30901005
153	Discouraged work-seeker	30901005
1985	Other not economically active	30901005
0	Age less than 15 years	30901005
2484	Not applicable	30901005
1344	Employed	30901006
1125	Unemployed	30901006
205	Discouraged work-seeker	30901006
2179	Other not economically active	30901006
0	Age less than 15 years	30901006
2304	Not applicable	30901006
1647	Employed	30901007
1615	Unemployed	30901007
423	Discouraged work-seeker	30901007
2004	Other not economically active	30901007
0	Age less than 15 years	30901007
3088	Not applicable	30901007
2590	Employed	30901008
1019	Unemployed	30901008
177	Discouraged work-seeker	30901008
2315	Other not economically active	30901008
0	Age less than 15 years	30901008
3028	Not applicable	30901008
1912	Employed	30901009
919	Unemployed	30901009
164	Discouraged work-seeker	30901009
1882	Other not economically active	30901009
0	Age less than 15 years	30901009
2312	Not applicable	30901009
1457	Employed	30901010
1073	Unemployed	30901010
162	Discouraged work-seeker	30901010
1724	Other not economically active	30901010
0	Age less than 15 years	30901010
2350	Not applicable	30901010
1496	Employed	30901011
1141	Unemployed	30901011
429	Discouraged work-seeker	30901011
1856	Other not economically active	30901011
0	Age less than 15 years	30901011
2467	Not applicable	30901011
1116	Employed	30901012
623	Unemployed	30901012
149	Discouraged work-seeker	30901012
2126	Other not economically active	30901012
0	Age less than 15 years	30901012
2035	Not applicable	30901012
1698	Employed	30901013
622	Unemployed	30901013
175	Discouraged work-seeker	30901013
3262	Other not economically active	30901013
0	Age less than 15 years	30901013
2838	Not applicable	30901013
2216	Employed	30901014
437	Unemployed	30901014
68	Discouraged work-seeker	30901014
1717	Other not economically active	30901014
0	Age less than 15 years	30901014
2118	Not applicable	30901014
1555	Employed	30901015
1029	Unemployed	30901015
239	Discouraged work-seeker	30901015
1966	Other not economically active	30901015
0	Age less than 15 years	30901015
2464	Not applicable	30901015
2973	Employed	30901016
2446	Unemployed	30901016
348	Discouraged work-seeker	30901016
2811	Other not economically active	30901016
0	Age less than 15 years	30901016
4466	Not applicable	30901016
2673	Employed	30901017
1719	Unemployed	30901017
306	Discouraged work-seeker	30901017
2402	Other not economically active	30901017
0	Age less than 15 years	30901017
3558	Not applicable	30901017
1043	Employed	30901018
754	Unemployed	30901018
188	Discouraged work-seeker	30901018
1111	Other not economically active	30901018
0	Age less than 15 years	30901018
1422	Not applicable	30901018
1289	Employed	30901019
919	Unemployed	30901019
340	Discouraged work-seeker	30901019
2064	Other not economically active	30901019
0	Age less than 15 years	30901019
2253	Not applicable	30901019
3075	Employed	30901020
793	Unemployed	30901020
174	Discouraged work-seeker	30901020
1381	Other not economically active	30901020
0	Age less than 15 years	30901020
2321	Not applicable	30901020
3764	Employed	30901021
397	Unemployed	30901021
62	Discouraged work-seeker	30901021
1858	Other not economically active	30901021
0	Age less than 15 years	30901021
2373	Not applicable	30901021
2715	Employed	30901022
609	Unemployed	30901022
224	Discouraged work-seeker	30901022
2923	Other not economically active	30901022
0	Age less than 15 years	30901022
3213	Not applicable	30901022
2533	Employed	30901023
142	Unemployed	30901023
20	Discouraged work-seeker	30901023
1257	Other not economically active	30901023
0	Age less than 15 years	30901023
1717	Not applicable	30901023
2824	Employed	30901024
200	Unemployed	30901024
20	Discouraged work-seeker	30901024
1049	Other not economically active	30901024
0	Age less than 15 years	30901024
1873	Not applicable	30901024
3009	Employed	30901025
835	Unemployed	30901025
124	Discouraged work-seeker	30901025
2058	Other not economically active	30901025
0	Age less than 15 years	30901025
2661	Not applicable	30901025
2360	Employed	30901026
495	Unemployed	30901026
461	Discouraged work-seeker	30901026
2782	Other not economically active	30901026
0	Age less than 15 years	30901026
3581	Not applicable	30901026
1843	Employed	30901027
1049	Unemployed	30901027
584	Discouraged work-seeker	30901027
2854	Other not economically active	30901027
0	Age less than 15 years	30901027
4209	Not applicable	30901027
2550	Employed	30901028
948	Unemployed	30901028
216	Discouraged work-seeker	30901028
2510	Other not economically active	30901028
0	Age less than 15 years	30901028
3307	Not applicable	30901028
513	Employed	30901029
205	Unemployed	30901029
69	Discouraged work-seeker	30901029
456	Other not economically active	30901029
0	Age less than 15 years	30901029
667	Not applicable	30901029
1627	Employed	30901030
1403	Unemployed	30901030
492	Discouraged work-seeker	30901030
2594	Other not economically active	30901030
0	Age less than 15 years	30901030
3775	Not applicable	30901030
2277	Employed	30901031
1541	Unemployed	30901031
529	Discouraged work-seeker	30901031
2174	Other not economically active	30901031
0	Age less than 15 years	30901031
3450	Not applicable	30901031
1003	Employed	30902001
794	Unemployed	30902001
202	Discouraged work-seeker	30902001
1622	Other not economically active	30902001
0	Age less than 15 years	30902001
2140	Not applicable	30902001
1425	Employed	30902002
549	Unemployed	30902002
181	Discouraged work-seeker	30902002
2258	Other not economically active	30902002
0	Age less than 15 years	30902002
2370	Not applicable	30902002
1391	Employed	30902003
1297	Unemployed	30902003
372	Discouraged work-seeker	30902003
2607	Other not economically active	30902003
0	Age less than 15 years	30902003
3238	Not applicable	30902003
845	Employed	30902004
602	Unemployed	30902004
258	Discouraged work-seeker	30902004
2113	Other not economically active	30902004
0	Age less than 15 years	30902004
2433	Not applicable	30902004
995	Employed	30902005
692	Unemployed	30902005
491	Discouraged work-seeker	30902005
2539	Other not economically active	30902005
0	Age less than 15 years	30902005
2908	Not applicable	30902005
1363	Employed	30902006
381	Unemployed	30902006
154	Discouraged work-seeker	30902006
1237	Other not economically active	30902006
0	Age less than 15 years	30902006
1711	Not applicable	30902006
818	Employed	30902007
848	Unemployed	30902007
383	Discouraged work-seeker	30902007
2133	Other not economically active	30902007
0	Age less than 15 years	30902007
2485	Not applicable	30902007
896	Employed	30903001
648	Unemployed	30903001
393	Discouraged work-seeker	30903001
2598	Other not economically active	30903001
0	Age less than 15 years	30903001
2982	Not applicable	30903001
459	Employed	30903002
544	Unemployed	30903002
493	Discouraged work-seeker	30903002
1580	Other not economically active	30903002
0	Age less than 15 years	30903002
1865	Not applicable	30903002
337	Employed	30903003
414	Unemployed	30903003
10	Discouraged work-seeker	30903003
834	Other not economically active	30903003
0	Age less than 15 years	30903003
975	Not applicable	30903003
971	Employed	30903004
782	Unemployed	30903004
242	Discouraged work-seeker	30903004
1810	Other not economically active	30903004
0	Age less than 15 years	30903004
2232	Not applicable	30903004
1006	Employed	30903005
182	Unemployed	30903005
167	Discouraged work-seeker	30903005
693	Other not economically active	30903005
0	Age less than 15 years	30903005
1093	Not applicable	30903005
984	Employed	30904001
1357	Unemployed	30904001
311	Discouraged work-seeker	30904001
2219	Other not economically active	30904001
0	Age less than 15 years	30904001
3337	Not applicable	30904001
920	Employed	30904002
757	Unemployed	30904002
170	Discouraged work-seeker	30904002
1468	Other not economically active	30904002
0	Age less than 15 years	30904002
1941	Not applicable	30904002
687	Employed	30904003
952	Unemployed	30904003
48	Discouraged work-seeker	30904003
1091	Other not economically active	30904003
0	Age less than 15 years	30904003
1794	Not applicable	30904003
1302	Employed	30904004
821	Unemployed	30904004
254	Discouraged work-seeker	30904004
1239	Other not economically active	30904004
0	Age less than 15 years	30904004
2251	Not applicable	30904004
2453	Employed	30904005
1046	Unemployed	30904005
331	Discouraged work-seeker	30904005
1980	Other not economically active	30904005
0	Age less than 15 years	30904005
3561	Not applicable	30904005
1407	Employed	30904006
84	Unemployed	30904006
13	Discouraged work-seeker	30904006
735	Other not economically active	30904006
0	Age less than 15 years	30904006
1059	Not applicable	30904006
1688	Employed	30904007
826	Unemployed	30904007
412	Discouraged work-seeker	30904007
2919	Other not economically active	30904007
0	Age less than 15 years	30904007
3498	Not applicable	30904007
1603	Employed	30904008
811	Unemployed	30904008
619	Discouraged work-seeker	30904008
2639	Other not economically active	30904008
0	Age less than 15 years	30904008
3572	Not applicable	30904008
1567	Employed	30904009
934	Unemployed	30904009
410	Discouraged work-seeker	30904009
1966	Other not economically active	30904009
0	Age less than 15 years	30904009
2967	Not applicable	30904009
472	Employed	34501001
400	Unemployed	34501001
466	Discouraged work-seeker	34501001
1721	Other not economically active	34501001
0	Age less than 15 years	34501001
2475	Not applicable	34501001
444	Employed	34501002
221	Unemployed	34501002
941	Discouraged work-seeker	34501002
1552	Other not economically active	34501002
0	Age less than 15 years	34501002
2729	Not applicable	34501002
371	Employed	34501003
206	Unemployed	34501003
655	Discouraged work-seeker	34501003
1728	Other not economically active	34501003
0	Age less than 15 years	34501003
2680	Not applicable	34501003
2566	Employed	34501004
347	Unemployed	34501004
226	Discouraged work-seeker	34501004
1368	Other not economically active	34501004
0	Age less than 15 years	34501004
2295	Not applicable	34501004
625	Employed	34501005
578	Unemployed	34501005
492	Discouraged work-seeker	34501005
1721	Other not economically active	34501005
0	Age less than 15 years	34501005
2466	Not applicable	34501005
361	Employed	34501006
375	Unemployed	34501006
466	Discouraged work-seeker	34501006
1899	Other not economically active	34501006
0	Age less than 15 years	34501006
2869	Not applicable	34501006
411	Employed	34501007
240	Unemployed	34501007
343	Discouraged work-seeker	34501007
1523	Other not economically active	34501007
0	Age less than 15 years	34501007
2034	Not applicable	34501007
366	Employed	34501008
128	Unemployed	34501008
498	Discouraged work-seeker	34501008
1847	Other not economically active	34501008
0	Age less than 15 years	34501008
2370	Not applicable	34501008
300	Employed	34501009
634	Unemployed	34501009
399	Discouraged work-seeker	34501009
2449	Other not economically active	34501009
0	Age less than 15 years	34501009
3628	Not applicable	34501009
227	Employed	34501010
269	Unemployed	34501010
429	Discouraged work-seeker	34501010
2521	Other not economically active	34501010
0	Age less than 15 years	34501010
3281	Not applicable	34501010
296	Employed	34501011
143	Unemployed	34501011
402	Discouraged work-seeker	34501011
2051	Other not economically active	34501011
0	Age less than 15 years	34501011
2697	Not applicable	34501011
137	Employed	34501012
65	Unemployed	34501012
91	Discouraged work-seeker	34501012
2662	Other not economically active	34501012
0	Age less than 15 years	34501012
2808	Not applicable	34501012
397	Employed	34501013
347	Unemployed	34501013
408	Discouraged work-seeker	34501013
2552	Other not economically active	34501013
0	Age less than 15 years	34501013
3733	Not applicable	34501013
412	Employed	34501014
558	Unemployed	34501014
157	Discouraged work-seeker	34501014
1705	Other not economically active	34501014
0	Age less than 15 years	34501014
2350	Not applicable	34501014
442	Employed	34501015
400	Unemployed	34501015
226	Discouraged work-seeker	34501015
2271	Other not economically active	34501015
0	Age less than 15 years	34501015
2606	Not applicable	34501015
2811	Employed	34502001
191	Unemployed	34502001
62	Discouraged work-seeker	34502001
1223	Other not economically active	34502001
0	Age less than 15 years	34502001
1835	Not applicable	34502001
1599	Employed	34502002
815	Unemployed	34502002
540	Discouraged work-seeker	34502002
2340	Other not economically active	34502002
0	Age less than 15 years	34502002
3458	Not applicable	34502002
2819	Employed	34502003
1474	Unemployed	34502003
211	Discouraged work-seeker	34502003
2144	Other not economically active	34502003
0	Age less than 15 years	34502003
3349	Not applicable	34502003
1287	Employed	34502004
984	Unemployed	34502004
152	Discouraged work-seeker	34502004
1275	Other not economically active	34502004
0	Age less than 15 years	34502004
2126	Not applicable	34502004
686	Employed	34502005
441	Unemployed	34502005
35	Discouraged work-seeker	34502005
945	Other not economically active	34502005
0	Age less than 15 years	34502005
1184	Not applicable	34502005
2070	Employed	34502006
1300	Unemployed	34502006
421	Discouraged work-seeker	34502006
1987	Other not economically active	34502006
0	Age less than 15 years	34502006
3041	Not applicable	34502006
565	Employed	34502007
519	Unemployed	34502007
193	Discouraged work-seeker	34502007
2036	Other not economically active	34502007
0	Age less than 15 years	34502007
2505	Not applicable	34502007
916	Employed	34502008
366	Unemployed	34502008
389	Discouraged work-seeker	34502008
2009	Other not economically active	34502008
0	Age less than 15 years	34502008
2311	Not applicable	34502008
544	Employed	34502009
316	Unemployed	34502009
182	Discouraged work-seeker	34502009
1317	Other not economically active	34502009
0	Age less than 15 years	34502009
1425	Not applicable	34502009
1761	Employed	34502010
1221	Unemployed	34502010
717	Discouraged work-seeker	34502010
3225	Other not economically active	34502010
0	Age less than 15 years	34502010
4252	Not applicable	34502010
1366	Employed	34502011
1005	Unemployed	34502011
214	Discouraged work-seeker	34502011
1687	Other not economically active	34502011
0	Age less than 15 years	34502011
2662	Not applicable	34502011
1684	Employed	34502012
888	Unemployed	34502012
603	Discouraged work-seeker	34502012
3218	Other not economically active	34502012
0	Age less than 15 years	34502012
3901	Not applicable	34502012
1831	Employed	34502013
634	Unemployed	34502013
175	Discouraged work-seeker	34502013
1832	Other not economically active	34502013
0	Age less than 15 years	34502013
2378	Not applicable	34502013
5980	Employed	34503001
733	Unemployed	34503001
70	Discouraged work-seeker	34503001
2054	Other not economically active	34503001
0	Age less than 15 years	34503001
2715	Not applicable	34503001
2091	Employed	34503002
731	Unemployed	34503002
276	Discouraged work-seeker	34503002
1959	Other not economically active	34503002
0	Age less than 15 years	34503002
2851	Not applicable	34503002
1959	Employed	34503003
867	Unemployed	34503003
48	Discouraged work-seeker	34503003
1304	Other not economically active	34503003
0	Age less than 15 years	34503003
2064	Not applicable	34503003
2074	Employed	34503004
495	Unemployed	34503004
257	Discouraged work-seeker	34503004
2254	Other not economically active	34503004
0	Age less than 15 years	34503004
2934	Not applicable	34503004
3953	Employed	34503005
628	Unemployed	34503005
222	Discouraged work-seeker	34503005
1982	Other not economically active	34503005
0	Age less than 15 years	34503005
1115	Not applicable	34503005
3252	Employed	10101001
504	Unemployed	10101001
115	Discouraged work-seeker	10101001
2178	Other not economically active	10101001
0	Age less than 15 years	10101001
3019	Not applicable	10101001
2923	Employed	10101002
691	Unemployed	10101002
181	Discouraged work-seeker	10101002
1968	Other not economically active	10101002
0	Age less than 15 years	10101002
2710	Not applicable	10101002
2252	Employed	10101003
695	Unemployed	10101003
96	Discouraged work-seeker	10101003
1659	Other not economically active	10101003
0	Age less than 15 years	10101003
2305	Not applicable	10101003
3348	Employed	10101004
580	Unemployed	10101004
59	Discouraged work-seeker	10101004
2541	Other not economically active	10101004
0	Age less than 15 years	10101004
3131	Not applicable	10101004
3479	Employed	10101005
99	Unemployed	10101005
24	Discouraged work-seeker	10101005
1418	Other not economically active	10101005
0	Age less than 15 years	10101005
2400	Not applicable	10101005
2238	Employed	10101006
383	Unemployed	10101006
52	Discouraged work-seeker	10101006
2029	Other not economically active	10101006
0	Age less than 15 years	10101006
2484	Not applicable	10101006
3321	Employed	10101007
272	Unemployed	10101007
172	Discouraged work-seeker	10101007
2237	Other not economically active	10101007
0	Age less than 15 years	10101007
2946	Not applicable	10101007
2994	Employed	10101008
665	Unemployed	10101008
602	Discouraged work-seeker	10101008
1922	Other not economically active	10101008
0	Age less than 15 years	10101008
3205	Not applicable	10101008
4239	Employed	10102001
305	Unemployed	10102001
51	Discouraged work-seeker	10102001
2581	Other not economically active	10102001
0	Age less than 15 years	10102001
3249	Not applicable	10102001
2300	Employed	10102002
230	Unemployed	10102002
12	Discouraged work-seeker	10102002
1832	Other not economically active	10102002
0	Age less than 15 years	10102002
1900	Not applicable	10102002
2579	Employed	10102003
655	Unemployed	10102003
101	Discouraged work-seeker	10102003
1861	Other not economically active	10102003
0	Age less than 15 years	10102003
2328	Not applicable	10102003
3826	Employed	10102004
284	Unemployed	10102004
155	Discouraged work-seeker	10102004
2434	Other not economically active	10102004
0	Age less than 15 years	10102004
3342	Not applicable	10102004
2501	Employed	10102005
503	Unemployed	10102005
135	Discouraged work-seeker	10102005
1875	Other not economically active	10102005
0	Age less than 15 years	10102005
2602	Not applicable	10102005
3094	Employed	10102006
210	Unemployed	10102006
202	Discouraged work-seeker	10102006
1895	Other not economically active	10102006
0	Age less than 15 years	10102006
2490	Not applicable	10102006
4659	Employed	10103001
54	Unemployed	10103001
33	Discouraged work-seeker	10103001
2408	Other not economically active	10103001
0	Age less than 15 years	10103001
3353	Not applicable	10103001
1863	Employed	10103002
152	Unemployed	10103002
55	Discouraged work-seeker	10103002
1419	Other not economically active	10103002
0	Age less than 15 years	10103002
1718	Not applicable	10103002
3745	Employed	10103003
226	Unemployed	10103003
22	Discouraged work-seeker	10103003
1938	Other not economically active	10103003
0	Age less than 15 years	10103003
2796	Not applicable	10103003
3233	Employed	10103004
310	Unemployed	10103004
112	Discouraged work-seeker	10103004
2689	Other not economically active	10103004
0	Age less than 15 years	10103004
3116	Not applicable	10103004
5266	Employed	10103005
258	Unemployed	10103005
32	Discouraged work-seeker	10103005
3698	Other not economically active	10103005
0	Age less than 15 years	10103005
3762	Not applicable	10103005
1327	Employed	10103006
76	Unemployed	10103006
43	Discouraged work-seeker	10103006
1018	Other not economically active	10103006
0	Age less than 15 years	10103006
1181	Not applicable	10103006
3667	Employed	10103007
656	Unemployed	10103007
164	Discouraged work-seeker	10103007
3013	Other not economically active	10103007
0	Age less than 15 years	10103007
3833	Not applicable	10103007
2625	Employed	10104001
1265	Unemployed	10104001
410	Discouraged work-seeker	10104001
1713	Other not economically active	10104001
0	Age less than 15 years	10104001
2389	Not applicable	10104001
3191	Employed	10104002
1764	Unemployed	10104002
258	Discouraged work-seeker	10104002
1769	Other not economically active	10104002
0	Age less than 15 years	10104002
3605	Not applicable	10104002
1611	Employed	10104003
413	Unemployed	10104003
41	Discouraged work-seeker	10104003
2744	Other not economically active	10104003
0	Age less than 15 years	10104003
1396	Not applicable	10104003
2410	Employed	10104004
1209	Unemployed	10104004
123	Discouraged work-seeker	10104004
1850	Other not economically active	10104004
0	Age less than 15 years	10104004
3000	Not applicable	10104004
2830	Employed	10104005
312	Unemployed	10104005
56	Discouraged work-seeker	10104005
1257	Other not economically active	10104005
0	Age less than 15 years	10104005
1750	Not applicable	10104005
3556	Employed	10104006
270	Unemployed	10104006
58	Discouraged work-seeker	10104006
1732	Other not economically active	10104006
0	Age less than 15 years	10104006
2854	Not applicable	10104006
2546	Employed	10104007
512	Unemployed	10104007
99	Discouraged work-seeker	10104007
1944	Other not economically active	10104007
0	Age less than 15 years	10104007
2445	Not applicable	10104007
2809	Employed	10104008
161	Unemployed	10104008
51	Discouraged work-seeker	10104008
1131	Other not economically active	10104008
0	Age less than 15 years	10104008
1637	Not applicable	10104008
2799	Employed	10104009
1537	Unemployed	10104009
404	Discouraged work-seeker	10104009
1265	Other not economically active	10104009
0	Age less than 15 years	10104009
1971	Not applicable	10104009
2900	Employed	10104010
510	Unemployed	10104010
129	Discouraged work-seeker	10104010
2290	Other not economically active	10104010
0	Age less than 15 years	10104010
2694	Not applicable	10104010
2013	Employed	10104011
304	Unemployed	10104011
89	Discouraged work-seeker	10104011
1400	Other not economically active	10104011
0	Age less than 15 years	10104011
1709	Not applicable	10104011
2727	Employed	10104012
1457	Unemployed	10104012
123	Discouraged work-seeker	10104012
1486	Other not economically active	10104012
0	Age less than 15 years	10104012
2616	Not applicable	10104012
2344	Employed	10104013
756	Unemployed	10104013
68	Discouraged work-seeker	10104013
1587	Other not economically active	10104013
0	Age less than 15 years	10104013
2223	Not applicable	10104013
2735	Employed	10105001
102	Unemployed	10105001
80	Discouraged work-seeker	10105001
5085	Other not economically active	10105001
0	Age less than 15 years	10105001
2555	Not applicable	10105001
2821	Employed	10105002
599	Unemployed	10105002
180	Discouraged work-seeker	10105002
2539	Other not economically active	10105002
0	Age less than 15 years	10105002
3027	Not applicable	10105002
3666	Employed	10105003
223	Unemployed	10105003
63	Discouraged work-seeker	10105003
2114	Other not economically active	10105003
0	Age less than 15 years	10105003
2822	Not applicable	10105003
4379	Employed	10105004
581	Unemployed	10105004
217	Discouraged work-seeker	10105004
3240	Other not economically active	10105004
0	Age less than 15 years	10105004
3577	Not applicable	10105004
3322	Employed	10105005
345	Unemployed	10105005
43	Discouraged work-seeker	10105005
1540	Other not economically active	10105005
0	Age less than 15 years	10105005
2665	Not applicable	10105005
2929	Employed	10105006
555	Unemployed	10105006
51	Discouraged work-seeker	10105006
1858	Other not economically active	10105006
0	Age less than 15 years	10105006
2909	Not applicable	10105006
4812	Employed	10105007
657	Unemployed	10105007
120	Discouraged work-seeker	10105007
3644	Other not economically active	10105007
0	Age less than 15 years	10105007
3784	Not applicable	10105007
2561	Employed	10105008
260	Unemployed	10105008
98	Discouraged work-seeker	10105008
1840	Other not economically active	10105008
0	Age less than 15 years	10105008
2195	Not applicable	10105008
2694	Employed	10105009
1404	Unemployed	10105009
148	Discouraged work-seeker	10105009
1745	Other not economically active	10105009
0	Age less than 15 years	10105009
2540	Not applicable	10105009
3418	Employed	10105010
273	Unemployed	10105010
69	Discouraged work-seeker	10105010
2311	Other not economically active	10105010
0	Age less than 15 years	10105010
2618	Not applicable	10105010
3111	Employed	10105011
724	Unemployed	10105011
80	Discouraged work-seeker	10105011
2214	Other not economically active	10105011
0	Age less than 15 years	10105011
3174	Not applicable	10105011
4203	Employed	10105012
203	Unemployed	10105012
46	Discouraged work-seeker	10105012
2722	Other not economically active	10105012
0	Age less than 15 years	10105012
3264	Not applicable	10105012
2356	Employed	10202001
1122	Unemployed	10202001
272	Discouraged work-seeker	10202001
1245	Other not economically active	10202001
0	Age less than 15 years	10202001
2083	Not applicable	10202001
2678	Employed	10202002
79	Unemployed	10202002
19	Discouraged work-seeker	10202002
1360	Other not economically active	10202002
0	Age less than 15 years	10202002
2078	Not applicable	10202002
3689	Employed	10202003
304	Unemployed	10202003
68	Discouraged work-seeker	10202003
2186	Other not economically active	10202003
0	Age less than 15 years	10202003
2958	Not applicable	10202003
2576	Employed	10202004
319	Unemployed	10202004
30	Discouraged work-seeker	10202004
2006	Other not economically active	10202004
0	Age less than 15 years	10202004
2425	Not applicable	10202004
4202	Employed	10202005
231	Unemployed	10202005
43	Discouraged work-seeker	10202005
1616	Other not economically active	10202005
0	Age less than 15 years	10202005
2955	Not applicable	10202005
3572	Employed	10202006
429	Unemployed	10202006
183	Discouraged work-seeker	10202006
3147	Other not economically active	10202006
0	Age less than 15 years	10202006
3683	Not applicable	10202006
4647	Employed	10202007
666	Unemployed	10202007
182	Discouraged work-seeker	10202007
4004	Other not economically active	10202007
0	Age less than 15 years	10202007
4842	Not applicable	10202007
6981	Employed	10202008
112	Unemployed	10202008
33	Discouraged work-seeker	10202008
954	Other not economically active	10202008
0	Age less than 15 years	10202008
2133	Not applicable	10202008
6591	Employed	10202009
73	Unemployed	10202009
30	Discouraged work-seeker	10202009
1271	Other not economically active	10202009
0	Age less than 15 years	10202009
2253	Not applicable	10202009
5273	Employed	10202010
152	Unemployed	10202010
40	Discouraged work-seeker	10202010
1705	Other not economically active	10202010
0	Age less than 15 years	10202010
2940	Not applicable	10202010
5150	Employed	10202011
455	Unemployed	10202011
109	Discouraged work-seeker	10202011
2833	Other not economically active	10202011
0	Age less than 15 years	10202011
3735	Not applicable	10202011
4346	Employed	10202012
330	Unemployed	10202012
60	Discouraged work-seeker	10202012
1904	Other not economically active	10202012
0	Age less than 15 years	10202012
2229	Not applicable	10202012
4363	Employed	10203001
437	Unemployed	10203001
67	Discouraged work-seeker	10203001
1987	Other not economically active	10203001
0	Age less than 15 years	10203001
3091	Not applicable	10203001
2403	Employed	10203002
136	Unemployed	10203002
21	Discouraged work-seeker	10203002
1094	Other not economically active	10203002
0	Age less than 15 years	10203002
1493	Not applicable	10203002
5939	Employed	10203003
220	Unemployed	10203003
45	Discouraged work-seeker	10203003
1968	Other not economically active	10203003
0	Age less than 15 years	10203003
3572	Not applicable	10203003
2708	Employed	10203004
81	Unemployed	10203004
13	Discouraged work-seeker	10203004
1734	Other not economically active	10203004
0	Age less than 15 years	10203004
2061	Not applicable	10203004
2403	Employed	10203005
1165	Unemployed	10203005
469	Discouraged work-seeker	10203005
2443	Other not economically active	10203005
0	Age less than 15 years	10203005
3058	Not applicable	10203005
1309	Employed	10203006
1135	Unemployed	10203006
496	Discouraged work-seeker	10203006
1030	Other not economically active	10203006
0	Age less than 15 years	10203006
1859	Not applicable	10203006
3287	Employed	10203007
642	Unemployed	10203007
182	Discouraged work-seeker	10203007
2443	Other not economically active	10203007
0	Age less than 15 years	10203007
2848	Not applicable	10203007
469	Employed	10203008
406	Unemployed	10203008
47	Discouraged work-seeker	10203008
355	Other not economically active	10203008
0	Age less than 15 years	10203008
601	Not applicable	10203008
1664	Employed	10203009
1136	Unemployed	10203009
207	Discouraged work-seeker	10203009
1576	Other not economically active	10203009
0	Age less than 15 years	10203009
2128	Not applicable	10203009
2730	Employed	10203010
344	Unemployed	10203010
278	Discouraged work-seeker	10203010
2253	Other not economically active	10203010
0	Age less than 15 years	10203010
2676	Not applicable	10203010
3944	Employed	10203011
861	Unemployed	10203011
226	Discouraged work-seeker	10203011
3302	Other not economically active	10203011
0	Age less than 15 years	10203011
3797	Not applicable	10203011
1370	Employed	10203012
1028	Unemployed	10203012
47	Discouraged work-seeker	10203012
1897	Other not economically active	10203012
0	Age less than 15 years	10203012
2057	Not applicable	10203012
2741	Employed	10203013
798	Unemployed	10203013
375	Discouraged work-seeker	10203013
1481	Other not economically active	10203013
0	Age less than 15 years	10203013
2355	Not applicable	10203013
4243	Employed	10203014
1658	Unemployed	10203014
592	Discouraged work-seeker	10203014
2820	Other not economically active	10203014
0	Age less than 15 years	10203014
4623	Not applicable	10203014
3379	Employed	10203015
121	Unemployed	10203015
35	Discouraged work-seeker	10203015
1523	Other not economically active	10203015
0	Age less than 15 years	10203015
2095	Not applicable	10203015
1910	Employed	10203016
1740	Unemployed	10203016
475	Discouraged work-seeker	10203016
1036	Other not economically active	10203016
0	Age less than 15 years	10203016
2327	Not applicable	10203016
4892	Employed	10203017
569	Unemployed	10203017
36	Discouraged work-seeker	10203017
1356	Other not economically active	10203017
0	Age less than 15 years	10203017
2777	Not applicable	10203017
2874	Employed	10203018
556	Unemployed	10203018
47	Discouraged work-seeker	10203018
2655	Other not economically active	10203018
0	Age less than 15 years	10203018
2120	Not applicable	10203018
2859	Employed	10203019
149	Unemployed	10203019
33	Discouraged work-seeker	10203019
1748	Other not economically active	10203019
0	Age less than 15 years	10203019
1801	Not applicable	10203019
1096	Employed	10203020
188	Unemployed	10203020
184	Discouraged work-seeker	10203020
770	Other not economically active	10203020
0	Age less than 15 years	10203020
1080	Not applicable	10203020
3051	Employed	10203021
1093	Unemployed	10203021
476	Discouraged work-seeker	10203021
2913	Other not economically active	10203021
0	Age less than 15 years	10203021
3810	Not applicable	10203021
3540	Employed	10203022
179	Unemployed	10203022
112	Discouraged work-seeker	10203022
2226	Other not economically active	10203022
0	Age less than 15 years	10203022
2693	Not applicable	10203022
3186	Employed	10203023
438	Unemployed	10203023
86	Discouraged work-seeker	10203023
2077	Other not economically active	10203023
0	Age less than 15 years	10203023
2314	Not applicable	10203023
1848	Employed	10203024
390	Unemployed	10203024
449	Discouraged work-seeker	10203024
1790	Other not economically active	10203024
0	Age less than 15 years	10203024
2245	Not applicable	10203024
2544	Employed	10203025
725	Unemployed	10203025
173	Discouraged work-seeker	10203025
2924	Other not economically active	10203025
0	Age less than 15 years	10203025
2511	Not applicable	10203025
3385	Employed	10203026
617	Unemployed	10203026
146	Discouraged work-seeker	10203026
2891	Other not economically active	10203026
0	Age less than 15 years	10203026
3144	Not applicable	10203026
1402	Employed	10203027
712	Unemployed	10203027
57	Discouraged work-seeker	10203027
2152	Other not economically active	10203027
0	Age less than 15 years	10203027
2044	Not applicable	10203027
2407	Employed	10203028
164	Unemployed	10203028
53	Discouraged work-seeker	10203028
2905	Other not economically active	10203028
0	Age less than 15 years	10203028
1555	Not applicable	10203028
2873	Employed	10203029
467	Unemployed	10203029
52	Discouraged work-seeker	10203029
1997	Other not economically active	10203029
0	Age less than 15 years	10203029
2477	Not applicable	10203029
3612	Employed	10203030
352	Unemployed	10203030
139	Discouraged work-seeker	10203030
2320	Other not economically active	10203030
0	Age less than 15 years	10203030
3516	Not applicable	10203030
2906	Employed	10203031
186	Unemployed	10203031
88	Discouraged work-seeker	10203031
2436	Other not economically active	10203031
0	Age less than 15 years	10203031
2694	Not applicable	10203031
4550	Employed	10204001
1070	Unemployed	10204001
344	Discouraged work-seeker	10204001
2469	Other not economically active	10204001
0	Age less than 15 years	10204001
3956	Not applicable	10204001
2778	Employed	10204002
1083	Unemployed	10204002
220	Discouraged work-seeker	10204002
1257	Other not economically active	10204002
0	Age less than 15 years	10204002
2183	Not applicable	10204002
3542	Employed	10204003
331	Unemployed	10204003
92	Discouraged work-seeker	10204003
2297	Other not economically active	10204003
0	Age less than 15 years	10204003
2689	Not applicable	10204003
3351	Employed	10204004
352	Unemployed	10204004
59	Discouraged work-seeker	10204004
2094	Other not economically active	10204004
0	Age less than 15 years	10204004
2374	Not applicable	10204004
2355	Employed	10204005
412	Unemployed	10204005
116	Discouraged work-seeker	10204005
1121	Other not economically active	10204005
0	Age less than 15 years	10204005
1651	Not applicable	10204005
2324	Employed	10204006
175	Unemployed	10204006
161	Discouraged work-seeker	10204006
1388	Other not economically active	10204006
0	Age less than 15 years	10204006
1809	Not applicable	10204006
1289	Employed	10204007
66	Unemployed	10204007
4	Discouraged work-seeker	10204007
1664	Other not economically active	10204007
0	Age less than 15 years	10204007
850	Not applicable	10204007
493	Employed	10204008
57	Unemployed	10204008
0	Discouraged work-seeker	10204008
4909	Other not economically active	10204008
0	Age less than 15 years	10204008
225	Not applicable	10204008
125	Employed	10204009
6	Unemployed	10204009
0	Discouraged work-seeker	10204009
633	Other not economically active	10204009
0	Age less than 15 years	10204009
59	Not applicable	10204009
1487	Employed	10204010
172	Unemployed	10204010
52	Discouraged work-seeker	10204010
2892	Other not economically active	10204010
0	Age less than 15 years	10204010
667	Not applicable	10204010
2592	Employed	10204011
219	Unemployed	10204011
34	Discouraged work-seeker	10204011
2182	Other not economically active	10204011
0	Age less than 15 years	10204011
1517	Not applicable	10204011
2611	Employed	10204012
1280	Unemployed	10204012
235	Discouraged work-seeker	10204012
1606	Other not economically active	10204012
0	Age less than 15 years	10204012
2279	Not applicable	10204012
929	Employed	10204013
164	Unemployed	10204013
41	Discouraged work-seeker	10204013
671	Other not economically active	10204013
0	Age less than 15 years	10204013
678	Not applicable	10204013
1692	Employed	10204014
756	Unemployed	10204014
94	Discouraged work-seeker	10204014
1235	Other not economically active	10204014
0	Age less than 15 years	10204014
1502	Not applicable	10204014
3102	Employed	10204015
1376	Unemployed	10204015
178	Discouraged work-seeker	10204015
2767	Other not economically active	10204015
0	Age less than 15 years	10204015
2981	Not applicable	10204015
2322	Employed	10204016
581	Unemployed	10204016
431	Discouraged work-seeker	10204016
2774	Other not economically active	10204016
0	Age less than 15 years	10204016
2518	Not applicable	10204016
3446	Employed	10204017
299	Unemployed	10204017
170	Discouraged work-seeker	10204017
1728	Other not economically active	10204017
0	Age less than 15 years	10204017
2084	Not applicable	10204017
3173	Employed	10204018
647	Unemployed	10204018
244	Discouraged work-seeker	10204018
1889	Other not economically active	10204018
0	Age less than 15 years	10204018
2811	Not applicable	10204018
4374	Employed	10204019
343	Unemployed	10204019
118	Discouraged work-seeker	10204019
2508	Other not economically active	10204019
0	Age less than 15 years	10204019
3152	Not applicable	10204019
4586	Employed	10204020
273	Unemployed	10204020
66	Discouraged work-seeker	10204020
1756	Other not economically active	10204020
0	Age less than 15 years	10204020
2948	Not applicable	10204020
3771	Employed	10204021
399	Unemployed	10204021
55	Discouraged work-seeker	10204021
1535	Other not economically active	10204021
0	Age less than 15 years	10204021
2892	Not applicable	10204021
2066	Employed	10204022
119	Unemployed	10204022
18	Discouraged work-seeker	10204022
1293	Other not economically active	10204022
0	Age less than 15 years	10204022
1376	Not applicable	10204022
1961	Employed	10205001
666	Unemployed	10205001
142	Discouraged work-seeker	10205001
2772	Other not economically active	10205001
0	Age less than 15 years	10205001
3210	Not applicable	10205001
2652	Employed	10205002
602	Unemployed	10205002
57	Discouraged work-seeker	10205002
3267	Other not economically active	10205002
0	Age less than 15 years	10205002
2836	Not applicable	10205002
4047	Employed	10205003
148	Unemployed	10205003
22	Discouraged work-seeker	10205003
1919	Other not economically active	10205003
0	Age less than 15 years	10205003
3456	Not applicable	10205003
4122	Employed	10205004
81	Unemployed	10205004
9	Discouraged work-seeker	10205004
2101	Other not economically active	10205004
0	Age less than 15 years	10205004
3668	Not applicable	10205004
5429	Employed	10205005
140	Unemployed	10205005
44	Discouraged work-seeker	10205005
1920	Other not economically active	10205005
0	Age less than 15 years	10205005
3909	Not applicable	10205005
2059	Employed	10205006
185	Unemployed	10205006
53	Discouraged work-seeker	10205006
1487	Other not economically active	10205006
0	Age less than 15 years	10205006
1566	Not applicable	10205006
2693	Employed	10205007
134	Unemployed	10205007
7	Discouraged work-seeker	10205007
1615	Other not economically active	10205007
0	Age less than 15 years	10205007
1739	Not applicable	10205007
2506	Employed	10205008
968	Unemployed	10205008
146	Discouraged work-seeker	10205008
2401	Other not economically active	10205008
0	Age less than 15 years	10205008
2890	Not applicable	10205008
1946	Employed	10205009
468	Unemployed	10205009
24	Discouraged work-seeker	10205009
2037	Other not economically active	10205009
0	Age less than 15 years	10205009
2371	Not applicable	10205009
2394	Employed	10205010
812	Unemployed	10205010
68	Discouraged work-seeker	10205010
1969	Other not economically active	10205010
0	Age less than 15 years	10205010
2681	Not applicable	10205010
2378	Employed	10205011
294	Unemployed	10205011
163	Discouraged work-seeker	10205011
1705	Other not economically active	10205011
0	Age less than 15 years	10205011
2154	Not applicable	10205011
2253	Employed	10205012
284	Unemployed	10205012
102	Discouraged work-seeker	10205012
2130	Other not economically active	10205012
0	Age less than 15 years	10205012
2415	Not applicable	10205012
2822	Employed	10205013
634	Unemployed	10205013
65	Discouraged work-seeker	10205013
1744	Other not economically active	10205013
0	Age less than 15 years	10205013
2328	Not applicable	10205013
1769	Employed	10205014
558	Unemployed	10205014
30	Discouraged work-seeker	10205014
1541	Other not economically active	10205014
0	Age less than 15 years	10205014
2026	Not applicable	10205014
3063	Employed	10205015
157	Unemployed	10205015
7	Discouraged work-seeker	10205015
2796	Other not economically active	10205015
0	Age less than 15 years	10205015
2083	Not applicable	10205015
2448	Employed	10205016
1180	Unemployed	10205016
85	Discouraged work-seeker	10205016
1667	Other not economically active	10205016
0	Age less than 15 years	10205016
2557	Not applicable	10205016
615	Employed	10205017
718	Unemployed	10205017
102	Discouraged work-seeker	10205017
784	Other not economically active	10205017
0	Age less than 15 years	10205017
1158	Not applicable	10205017
3116	Employed	10205018
584	Unemployed	10205018
210	Discouraged work-seeker	10205018
1493	Other not economically active	10205018
0	Age less than 15 years	10205018
2709	Not applicable	10205018
2810	Employed	10205019
60	Unemployed	10205019
10	Discouraged work-seeker	10205019
951	Other not economically active	10205019
0	Age less than 15 years	10205019
2294	Not applicable	10205019
3279	Employed	10205020
203	Unemployed	10205020
31	Discouraged work-seeker	10205020
1339	Other not economically active	10205020
0	Age less than 15 years	10205020
2775	Not applicable	10205020
4336	Employed	10205021
1036	Unemployed	10205021
403	Discouraged work-seeker	10205021
3547	Other not economically active	10205021
0	Age less than 15 years	10205021
4430	Not applicable	10205021
2055	Employed	10206001
152	Unemployed	10206001
89	Discouraged work-seeker	10206001
1449	Other not economically active	10206001
0	Age less than 15 years	10206001
1993	Not applicable	10206001
2728	Employed	10206002
1296	Unemployed	10206002
212	Discouraged work-seeker	10206002
1605	Other not economically active	10206002
0	Age less than 15 years	10206002
3033	Not applicable	10206002
2534	Employed	10206003
433	Unemployed	10206003
108	Discouraged work-seeker	10206003
2677	Other not economically active	10206003
0	Age less than 15 years	10206003
2941	Not applicable	10206003
2918	Employed	10206004
322	Unemployed	10206004
216	Discouraged work-seeker	10206004
1616	Other not economically active	10206004
0	Age less than 15 years	10206004
2785	Not applicable	10206004
2138	Employed	10206005
176	Unemployed	10206005
18	Discouraged work-seeker	10206005
1376	Other not economically active	10206005
0	Age less than 15 years	10206005
1936	Not applicable	10206005
3859	Employed	10206006
311	Unemployed	10206006
45	Discouraged work-seeker	10206006
2137	Other not economically active	10206006
0	Age less than 15 years	10206006
3445	Not applicable	10206006
3373	Employed	10206007
331	Unemployed	10206007
92	Discouraged work-seeker	10206007
2566	Other not economically active	10206007
0	Age less than 15 years	10206007
3307	Not applicable	10206007
4565	Employed	10206008
104	Unemployed	10206008
26	Discouraged work-seeker	10206008
1708	Other not economically active	10206008
0	Age less than 15 years	10206008
3311	Not applicable	10206008
2028	Employed	10206009
487	Unemployed	10206009
31	Discouraged work-seeker	10206009
2491	Other not economically active	10206009
0	Age less than 15 years	10206009
2571	Not applicable	10206009
848	Employed	10206010
412	Unemployed	10206010
217	Discouraged work-seeker	10206010
2162	Other not economically active	10206010
0	Age less than 15 years	10206010
1960	Not applicable	10206010
2628	Employed	10206011
57	Unemployed	10206011
4	Discouraged work-seeker	10206011
1144	Other not economically active	10206011
0	Age less than 15 years	10206011
2114	Not applicable	10206011
5041	Employed	10206012
350	Unemployed	10206012
51	Discouraged work-seeker	10206012
2843	Other not economically active	10206012
0	Age less than 15 years	10206012
4301	Not applicable	10206012
3007	Employed	10304001
165	Unemployed	10304001
98	Discouraged work-seeker	10304001
1822	Other not economically active	10304001
0	Age less than 15 years	10304001
2530	Not applicable	10304001
3047	Employed	10304002
261	Unemployed	10304002
46	Discouraged work-seeker	10304002
1924	Other not economically active	10304002
0	Age less than 15 years	10304002
2634	Not applicable	10304002
2832	Employed	10304003
498	Unemployed	10304003
45	Discouraged work-seeker	10304003
1791	Other not economically active	10304003
0	Age less than 15 years	10304003
2613	Not applicable	10304003
968	Employed	10304004
76	Unemployed	10304004
29	Discouraged work-seeker	10304004
1011	Other not economically active	10304004
0	Age less than 15 years	10304004
1434	Not applicable	10304004
2766	Employed	10304005
625	Unemployed	10304005
154	Discouraged work-seeker	10304005
2741	Other not economically active	10304005
0	Age less than 15 years	10304005
2800	Not applicable	10304005
3343	Employed	10301001
893	Unemployed	10301001
154	Discouraged work-seeker	10301001
1838	Other not economically active	10301001
0	Age less than 15 years	10301001
3028	Not applicable	10301001
2608	Employed	10301002
696	Unemployed	10301002
192	Discouraged work-seeker	10301002
2012	Other not economically active	10301002
0	Age less than 15 years	10301002
2934	Not applicable	10301002
4081	Employed	10301003
651	Unemployed	10301003
261	Discouraged work-seeker	10301003
2848	Other not economically active	10301003
0	Age less than 15 years	10301003
3334	Not applicable	10301003
3140	Employed	10301004
253	Unemployed	10301004
81	Discouraged work-seeker	10301004
1562	Other not economically active	10301004
0	Age less than 15 years	10301004
2066	Not applicable	10301004
4614	Employed	10301005
249	Unemployed	10301005
85	Discouraged work-seeker	10301005
3436	Other not economically active	10301005
0	Age less than 15 years	10301005
3243	Not applicable	10301005
2826	Employed	10301006
592	Unemployed	10301006
112	Discouraged work-seeker	10301006
1292	Other not economically active	10301006
0	Age less than 15 years	10301006
1983	Not applicable	10301006
2971	Employed	10301007
550	Unemployed	10301007
141	Discouraged work-seeker	10301007
2033	Other not economically active	10301007
0	Age less than 15 years	10301007
2527	Not applicable	10301007
1600	Employed	10301008
853	Unemployed	10301008
94	Discouraged work-seeker	10301008
1099	Other not economically active	10301008
0	Age less than 15 years	10301008
1420	Not applicable	10301008
3761	Employed	10301009
126	Unemployed	10301009
103	Discouraged work-seeker	10301009
1703	Other not economically active	10301009
0	Age less than 15 years	10301009
2303	Not applicable	10301009
2860	Employed	10301010
185	Unemployed	10301010
37	Discouraged work-seeker	10301010
1040	Other not economically active	10301010
0	Age less than 15 years	10301010
1782	Not applicable	10301010
1726	Employed	10301011
303	Unemployed	10301011
220	Discouraged work-seeker	10301011
1458	Other not economically active	10301011
0	Age less than 15 years	10301011
1586	Not applicable	10301011
2307	Employed	10301012
419	Unemployed	10301012
107	Discouraged work-seeker	10301012
2157	Other not economically active	10301012
0	Age less than 15 years	10301012
2587	Not applicable	10301012
4732	Employed	10301013
1304	Unemployed	10301013
381	Discouraged work-seeker	10301013
3374	Other not economically active	10301013
0	Age less than 15 years	10301013
4534	Not applicable	10301013
2035	Employed	10302001
1238	Unemployed	10302001
66	Discouraged work-seeker	10302001
1042	Other not economically active	10302001
0	Age less than 15 years	10302001
2072	Not applicable	10302001
2101	Employed	10302002
362	Unemployed	10302002
33	Discouraged work-seeker	10302002
2150	Other not economically active	10302002
0	Age less than 15 years	10302002
2221	Not applicable	10302002
1161	Employed	10302003
53	Unemployed	10302003
15	Discouraged work-seeker	10302003
1227	Other not economically active	10302003
0	Age less than 15 years	10302003
1811	Not applicable	10302003
2989	Employed	10302004
495	Unemployed	10302004
75	Discouraged work-seeker	10302004
1494	Other not economically active	10302004
0	Age less than 15 years	10302004
2747	Not applicable	10302004
2313	Employed	10302005
1034	Unemployed	10302005
150	Discouraged work-seeker	10302005
1129	Other not economically active	10302005
0	Age less than 15 years	10302005
1720	Not applicable	10302005
2571	Employed	10302006
1075	Unemployed	10302006
98	Discouraged work-seeker	10302006
795	Other not economically active	10302006
0	Age less than 15 years	10302006
1990	Not applicable	10302006
1465	Employed	10302007
99	Unemployed	10302007
30	Discouraged work-seeker	10302007
767	Other not economically active	10302007
0	Age less than 15 years	10302007
1740	Not applicable	10302007
2920	Employed	10302008
902	Unemployed	10302008
310	Discouraged work-seeker	10302008
2162	Other not economically active	10302008
0	Age less than 15 years	10302008
3119	Not applicable	10302008
574	Employed	10302009
118	Unemployed	10302009
23	Discouraged work-seeker	10302009
549	Other not economically active	10302009
0	Age less than 15 years	10302009
1181	Not applicable	10302009
2135	Employed	10302010
1011	Unemployed	10302010
66	Discouraged work-seeker	10302010
1224	Other not economically active	10302010
0	Age less than 15 years	10302010
2202	Not applicable	10302010
3313	Employed	10302011
863	Unemployed	10302011
490	Discouraged work-seeker	10302011
1590	Other not economically active	10302011
0	Age less than 15 years	10302011
2831	Not applicable	10302011
2131	Employed	10302012
881	Unemployed	10302012
70	Discouraged work-seeker	10302012
722	Other not economically active	10302012
0	Age less than 15 years	10302012
1532	Not applicable	10302012
1552	Employed	10302013
163	Unemployed	10302013
28	Discouraged work-seeker	10302013
946	Other not economically active	10302013
0	Age less than 15 years	10302013
2463	Not applicable	10302013
1848	Employed	10303001
297	Unemployed	10303001
616	Discouraged work-seeker	10303001
1138	Other not economically active	10303001
0	Age less than 15 years	10303001
2096	Not applicable	10303001
3231	Employed	10303002
372	Unemployed	10303002
134	Discouraged work-seeker	10303002
1755	Other not economically active	10303002
0	Age less than 15 years	10303002
2537	Not applicable	10303002
2517	Employed	10303003
688	Unemployed	10303003
166	Discouraged work-seeker	10303003
1125	Other not economically active	10303003
0	Age less than 15 years	10303003
1820	Not applicable	10303003
2471	Employed	10303004
126	Unemployed	10303004
100	Discouraged work-seeker	10303004
1217	Other not economically active	10303004
0	Age less than 15 years	10303004
1804	Not applicable	10303004
2545	Employed	10303005
533	Unemployed	10303005
57	Discouraged work-seeker	10303005
1407	Other not economically active	10303005
0	Age less than 15 years	10303005
2436	Not applicable	10303005
1662	Employed	10401001
313	Unemployed	10401001
98	Discouraged work-seeker	10401001
2116	Other not economically active	10401001
0	Age less than 15 years	10401001
2255	Not applicable	10401001
1689	Employed	10401002
600	Unemployed	10401002
177	Discouraged work-seeker	10401002
2120	Other not economically active	10401002
0	Age less than 15 years	10401002
2857	Not applicable	10401002
1223	Employed	10401003
352	Unemployed	10401003
46	Discouraged work-seeker	10401003
1520	Other not economically active	10401003
0	Age less than 15 years	10401003
1877	Not applicable	10401003
1697	Employed	10401004
51	Unemployed	10401004
51	Discouraged work-seeker	10401004
2013	Other not economically active	10401004
0	Age less than 15 years	10401004
2051	Not applicable	10401004
2379	Employed	10402001
108	Unemployed	10402001
75	Discouraged work-seeker	10402001
1637	Other not economically active	10402001
0	Age less than 15 years	10402001
2544	Not applicable	10402001
2430	Employed	10402002
679	Unemployed	10402002
304	Discouraged work-seeker	10402002
1534	Other not economically active	10402002
0	Age less than 15 years	10402002
2539	Not applicable	10402002
1532	Employed	10402003
55	Unemployed	10402003
46	Discouraged work-seeker	10402003
1144	Other not economically active	10402003
0	Age less than 15 years	10402003
2062	Not applicable	10402003
2424	Employed	10402004
303	Unemployed	10402004
552	Discouraged work-seeker	10402004
2323	Other not economically active	10402004
0	Age less than 15 years	10402004
2854	Not applicable	10402004
1652	Employed	10402005
274	Unemployed	10402005
231	Discouraged work-seeker	10402005
1587	Other not economically active	10402005
0	Age less than 15 years	10402005
2031	Not applicable	10402005
2449	Employed	10402006
389	Unemployed	10402006
66	Discouraged work-seeker	10402006
1701	Other not economically active	10402006
0	Age less than 15 years	10402006
2310	Not applicable	10402006
2249	Employed	10402007
536	Unemployed	10402007
50	Discouraged work-seeker	10402007
1275	Other not economically active	10402007
0	Age less than 15 years	10402007
2199	Not applicable	10402007
1937	Employed	10402008
459	Unemployed	10402008
134	Discouraged work-seeker	10402008
1471	Other not economically active	10402008
0	Age less than 15 years	10402008
2115	Not applicable	10402008
1419	Employed	10403001
1030	Unemployed	10403001
191	Discouraged work-seeker	10403001
1974	Other not economically active	10403001
0	Age less than 15 years	10403001
2139	Not applicable	10403001
1399	Employed	10403002
705	Unemployed	10403002
158	Discouraged work-seeker	10403002
1753	Other not economically active	10403002
0	Age less than 15 years	10403002
1746	Not applicable	10403002
2976	Employed	10403003
1728	Unemployed	10403003
226	Discouraged work-seeker	10403003
1993	Other not economically active	10403003
0	Age less than 15 years	10403003
3063	Not applicable	10403003
1669	Employed	10403004
246	Unemployed	10403004
219	Discouraged work-seeker	10403004
1172	Other not economically active	10403004
0	Age less than 15 years	10403004
1998	Not applicable	10403004
2119	Employed	10403005
150	Unemployed	10403005
47	Discouraged work-seeker	10403005
1589	Other not economically active	10403005
0	Age less than 15 years	10403005
2478	Not applicable	10403005
2204	Employed	10403006
362	Unemployed	10403006
67	Discouraged work-seeker	10403006
1390	Other not economically active	10403006
0	Age less than 15 years	10403006
2236	Not applicable	10403006
1617	Employed	10403007
173	Unemployed	10403007
83	Discouraged work-seeker	10403007
1346	Other not economically active	10403007
0	Age less than 15 years	10403007
1725	Not applicable	10403007
1598	Employed	10403008
226	Unemployed	10403008
99	Discouraged work-seeker	10403008
1168	Other not economically active	10403008
0	Age less than 15 years	10403008
1586	Not applicable	10403008
1848	Employed	10403009
806	Unemployed	10403009
225	Discouraged work-seeker	10403009
1755	Other not economically active	10403009
0	Age less than 15 years	10403009
2079	Not applicable	10403009
1387	Employed	10403010
98	Unemployed	10403010
25	Discouraged work-seeker	10403010
1193	Other not economically active	10403010
0	Age less than 15 years	10403010
1868	Not applicable	10403010
2075	Employed	10403011
716	Unemployed	10403011
132	Discouraged work-seeker	10403011
1521	Other not economically active	10403011
0	Age less than 15 years	10403011
2391	Not applicable	10403011
1649	Employed	10403012
613	Unemployed	10403012
52	Discouraged work-seeker	10403012
1134	Other not economically active	10403012
0	Age less than 15 years	10403012
1406	Not applicable	10403012
2113	Employed	10403013
586	Unemployed	10403013
261	Discouraged work-seeker	10403013
1776	Other not economically active	10403013
0	Age less than 15 years	10403013
1902	Not applicable	10403013
2836	Employed	10403014
554	Unemployed	10403014
233	Discouraged work-seeker	10403014
3045	Other not economically active	10403014
0	Age less than 15 years	10403014
3085	Not applicable	10403014
3166	Employed	10404001
607	Unemployed	10404001
214	Discouraged work-seeker	10404001
2429	Other not economically active	10404001
0	Age less than 15 years	10404001
2941	Not applicable	10404001
1484	Employed	10404002
59	Unemployed	10404002
20	Discouraged work-seeker	10404002
643	Other not economically active	10404002
0	Age less than 15 years	10404002
1191	Not applicable	10404002
2382	Employed	10404003
98	Unemployed	10404003
37	Discouraged work-seeker	10404003
1123	Other not economically active	10404003
0	Age less than 15 years	10404003
2107	Not applicable	10404003
2539	Employed	10404004
391	Unemployed	10404004
171	Discouraged work-seeker	10404004
2440	Other not economically active	10404004
0	Age less than 15 years	10404004
2652	Not applicable	10404004
2780	Employed	10404005
309	Unemployed	10404005
38	Discouraged work-seeker	10404005
1360	Other not economically active	10404005
0	Age less than 15 years	10404005
2086	Not applicable	10404005
2964	Employed	10404006
917	Unemployed	10404006
300	Discouraged work-seeker	10404006
2508	Other not economically active	10404006
0	Age less than 15 years	10404006
3357	Not applicable	10404006
2520	Employed	10404007
1044	Unemployed	10404007
362	Discouraged work-seeker	10404007
2272	Other not economically active	10404007
0	Age less than 15 years	10404007
3196	Not applicable	10404007
2219	Employed	10404008
766	Unemployed	10404008
295	Discouraged work-seeker	10404008
1991	Other not economically active	10404008
0	Age less than 15 years	10404008
2488	Not applicable	10404008
1643	Employed	10404009
820	Unemployed	10404009
184	Discouraged work-seeker	10404009
1514	Other not economically active	10404009
0	Age less than 15 years	10404009
1805	Not applicable	10404009
778	Employed	10404010
521	Unemployed	10404010
207	Discouraged work-seeker	10404010
634	Other not economically active	10404010
0	Age less than 15 years	10404010
1012	Not applicable	10404010
2073	Employed	10404011
1141	Unemployed	10404011
89	Discouraged work-seeker	10404011
2645	Other not economically active	10404011
0	Age less than 15 years	10404011
2812	Not applicable	10404011
1390	Employed	10404012
701	Unemployed	10404012
243	Discouraged work-seeker	10404012
660	Other not economically active	10404012
0	Age less than 15 years	10404012
1295	Not applicable	10404012
2157	Employed	10404013
1066	Unemployed	10404013
383	Discouraged work-seeker	10404013
1660	Other not economically active	10404013
0	Age less than 15 years	10404013
2338	Not applicable	10404013
2962	Employed	10404014
841	Unemployed	10404014
131	Discouraged work-seeker	10404014
2426	Other not economically active	10404014
0	Age less than 15 years	10404014
3212	Not applicable	10404014
1628	Employed	10404015
939	Unemployed	10404015
380	Discouraged work-seeker	10404015
1183	Other not economically active	10404015
0	Age less than 15 years	10404015
2025	Not applicable	10404015
3724	Employed	10404016
1164	Unemployed	10404016
376	Discouraged work-seeker	10404016
2742	Other not economically active	10404016
0	Age less than 15 years	10404016
3952	Not applicable	10404016
2451	Employed	10404017
1163	Unemployed	10404017
153	Discouraged work-seeker	10404017
2295	Other not economically active	10404017
0	Age less than 15 years	10404017
3211	Not applicable	10404017
2101	Employed	10404018
82	Unemployed	10404018
20	Discouraged work-seeker	10404018
1140	Other not economically active	10404018
0	Age less than 15 years	10404018
1684	Not applicable	10404018
4261	Employed	10404019
166	Unemployed	10404019
55	Discouraged work-seeker	10404019
1975	Other not economically active	10404019
0	Age less than 15 years	10404019
2815	Not applicable	10404019
1973	Employed	10404020
934	Unemployed	10404020
333	Discouraged work-seeker	10404020
1934	Other not economically active	10404020
0	Age less than 15 years	10404020
2739	Not applicable	10404020
2597	Employed	10404021
1383	Unemployed	10404021
619	Discouraged work-seeker	10404021
1586	Other not economically active	10404021
0	Age less than 15 years	10404021
3033	Not applicable	10404021
3733	Employed	10404022
180	Unemployed	10404022
47	Discouraged work-seeker	10404022
1519	Other not economically active	10404022
0	Age less than 15 years	10404022
2799	Not applicable	10404022
3430	Employed	10404023
478	Unemployed	10404023
151	Discouraged work-seeker	10404023
3062	Other not economically active	10404023
0	Age less than 15 years	10404023
2828	Not applicable	10404023
3191	Employed	10404024
315	Unemployed	10404024
153	Discouraged work-seeker	10404024
1695	Other not economically active	10404024
0	Age less than 15 years	10404024
2629	Not applicable	10404024
2964	Employed	10404025
350	Unemployed	10404025
179	Discouraged work-seeker	10404025
2230	Other not economically active	10404025
0	Age less than 15 years	10404025
3118	Not applicable	10404025
2114	Employed	10405001
144	Unemployed	10405001
131	Discouraged work-seeker	10405001
1700	Other not economically active	10405001
0	Age less than 15 years	10405001
2447	Not applicable	10405001
2288	Employed	10405002
152	Unemployed	10405002
113	Discouraged work-seeker	10405002
1752	Other not economically active	10405002
0	Age less than 15 years	10405002
2589	Not applicable	10405002
2871	Employed	10405003
278	Unemployed	10405003
108	Discouraged work-seeker	10405003
2602	Other not economically active	10405003
0	Age less than 15 years	10405003
2803	Not applicable	10405003
929	Employed	10405004
837	Unemployed	10405004
81	Discouraged work-seeker	10405004
1110	Other not economically active	10405004
0	Age less than 15 years	10405004
1725	Not applicable	10405004
1397	Employed	10405005
538	Unemployed	10405005
434	Discouraged work-seeker	10405005
1584	Other not economically active	10405005
0	Age less than 15 years	10405005
2283	Not applicable	10405005
2759	Employed	10405006
1104	Unemployed	10405006
335	Discouraged work-seeker	10405006
3111	Other not economically active	10405006
0	Age less than 15 years	10405006
3799	Not applicable	10405006
1843	Employed	10405007
485	Unemployed	10405007
173	Discouraged work-seeker	10405007
2323	Other not economically active	10405007
0	Age less than 15 years	10405007
2335	Not applicable	10405007
2089	Employed	10405008
1449	Unemployed	10405008
291	Discouraged work-seeker	10405008
3097	Other not economically active	10405008
0	Age less than 15 years	10405008
3666	Not applicable	10405008
914	Employed	10405009
643	Unemployed	10405009
387	Discouraged work-seeker	10405009
1452	Other not economically active	10405009
0	Age less than 15 years	10405009
2176	Not applicable	10405009
832	Employed	10405010
768	Unemployed	10405010
611	Discouraged work-seeker	10405010
1654	Other not economically active	10405010
0	Age less than 15 years	10405010
2473	Not applicable	10405010
2202	Employed	10405011
969	Unemployed	10405011
348	Discouraged work-seeker	10405011
3036	Other not economically active	10405011
0	Age less than 15 years	10405011
4042	Not applicable	10405011
1874	Employed	10405012
326	Unemployed	10405012
56	Discouraged work-seeker	10405012
2035	Other not economically active	10405012
0	Age less than 15 years	10405012
2466	Not applicable	10405012
1170	Employed	10405013
195	Unemployed	10405013
120	Discouraged work-seeker	10405013
1774	Other not economically active	10405013
0	Age less than 15 years	10405013
1544	Not applicable	10405013
2713	Employed	10407001
651	Unemployed	10407001
460	Discouraged work-seeker	10407001
1790	Other not economically active	10407001
0	Age less than 15 years	10407001
2505	Not applicable	10407001
2739	Employed	10407002
590	Unemployed	10407002
47	Discouraged work-seeker	10407002
1604	Other not economically active	10407002
0	Age less than 15 years	10407002
2745	Not applicable	10407002
1585	Employed	10407003
1242	Unemployed	10407003
35	Discouraged work-seeker	10407003
477	Other not economically active	10407003
0	Age less than 15 years	10407003
1270	Not applicable	10407003
1906	Employed	10407004
1183	Unemployed	10407004
280	Discouraged work-seeker	10407004
1381	Other not economically active	10407004
0	Age less than 15 years	10407004
2145	Not applicable	10407004
2111	Employed	10407005
1135	Unemployed	10407005
136	Discouraged work-seeker	10407005
912	Other not economically active	10407005
0	Age less than 15 years	10407005
1680	Not applicable	10407005
1409	Employed	10407006
875	Unemployed	10407006
180	Discouraged work-seeker	10407006
466	Other not economically active	10407006
0	Age less than 15 years	10407006
1324	Not applicable	10407006
4030	Employed	10407007
1430	Unemployed	10407007
355	Discouraged work-seeker	10407007
1924	Other not economically active	10407007
0	Age less than 15 years	10407007
3846	Not applicable	10407007
2146	Employed	10408001
461	Unemployed	10408001
110	Discouraged work-seeker	10408001
1442	Other not economically active	10408001
0	Age less than 15 years	10408001
2051	Not applicable	10408001
2003	Employed	10408002
118	Unemployed	10408002
151	Discouraged work-seeker	10408002
1406	Other not economically active	10408002
0	Age less than 15 years	10408002
2115	Not applicable	10408002
1301	Employed	10408003
503	Unemployed	10408003
52	Discouraged work-seeker	10408003
1375	Other not economically active	10408003
0	Age less than 15 years	10408003
1350	Not applicable	10408003
1836	Employed	10408004
881	Unemployed	10408004
60	Discouraged work-seeker	10408004
948	Other not economically active	10408004
0	Age less than 15 years	10408004
1531	Not applicable	10408004
1801	Employed	10408005
632	Unemployed	10408005
85	Discouraged work-seeker	10408005
1278	Other not economically active	10408005
0	Age less than 15 years	10408005
2271	Not applicable	10408005
2787	Employed	10408006
1236	Unemployed	10408006
226	Discouraged work-seeker	10408006
1703	Other not economically active	10408006
0	Age less than 15 years	10408006
2740	Not applicable	10408006
3624	Employed	10408007
2123	Unemployed	10408007
588	Discouraged work-seeker	10408007
2204	Other not economically active	10408007
0	Age less than 15 years	10408007
4202	Not applicable	10408007
2065	Employed	10408008
549	Unemployed	10408008
241	Discouraged work-seeker	10408008
1090	Other not economically active	10408008
0	Age less than 15 years	10408008
1925	Not applicable	10408008
2227	Employed	10408009
577	Unemployed	10408009
44	Discouraged work-seeker	10408009
2083	Other not economically active	10408009
0	Age less than 15 years	10408009
2807	Not applicable	10408009
2149	Employed	10408010
168	Unemployed	10408010
34	Discouraged work-seeker	10408010
1617	Other not economically active	10408010
0	Age less than 15 years	10408010
1743	Not applicable	10408010
866	Employed	10501001
320	Unemployed	10501001
77	Discouraged work-seeker	10501001
615	Other not economically active	10501001
0	Age less than 15 years	10501001
952	Not applicable	10501001
313	Employed	10501002
20	Unemployed	10501002
23	Discouraged work-seeker	10501002
244	Other not economically active	10501002
0	Age less than 15 years	10501002
327	Not applicable	10501002
173	Employed	10501003
19	Unemployed	10501003
4	Discouraged work-seeker	10501003
60	Other not economically active	10501003
0	Age less than 15 years	10501003
104	Not applicable	10501003
1583	Employed	10501004
279	Unemployed	10501004
108	Discouraged work-seeker	10501004
789	Other not economically active	10501004
0	Age less than 15 years	10501004
1414	Not applicable	10501004
849	Employed	10502001
521	Unemployed	10502001
113	Discouraged work-seeker	10502001
747	Other not economically active	10502001
0	Age less than 15 years	10502001
1291	Not applicable	10502001
695	Employed	10502002
103	Unemployed	10502002
45	Discouraged work-seeker	10502002
886	Other not economically active	10502002
0	Age less than 15 years	10502002
906	Not applicable	10502002
591	Employed	10502003
53	Unemployed	10502003
135	Discouraged work-seeker	10502003
860	Other not economically active	10502003
0	Age less than 15 years	10502003
1007	Not applicable	10502003
1377	Employed	10502004
167	Unemployed	10502004
204	Discouraged work-seeker	10502004
1063	Other not economically active	10502004
0	Age less than 15 years	10502004
1521	Not applicable	10502004
1605	Employed	10503001
829	Unemployed	10503001
434	Discouraged work-seeker	10503001
1540	Other not economically active	10503001
0	Age less than 15 years	10503001
3046	Not applicable	10503001
2281	Employed	10503002
298	Unemployed	10503002
266	Discouraged work-seeker	10503002
1692	Other not economically active	10503002
0	Age less than 15 years	10503002
1982	Not applicable	10503002
1518	Employed	10503003
514	Unemployed	10503003
432	Discouraged work-seeker	10503003
2142	Other not economically active	10503003
0	Age less than 15 years	10503003
2674	Not applicable	10503003
1458	Employed	10503004
395	Unemployed	10503004
161	Discouraged work-seeker	10503004
1398	Other not economically active	10503004
0	Age less than 15 years	10503004
1936	Not applicable	10503004
1166	Employed	10503005
693	Unemployed	10503005
255	Discouraged work-seeker	10503005
2301	Other not economically active	10503005
0	Age less than 15 years	10503005
2688	Not applicable	10503005
641	Employed	10503006
378	Unemployed	10503006
434	Discouraged work-seeker	10503006
1516	Other not economically active	10503006
0	Age less than 15 years	10503006
1950	Not applicable	10503006
2343	Employed	10503007
664	Unemployed	10503007
590	Discouraged work-seeker	10503007
3105	Other not economically active	10503007
0	Age less than 15 years	10503007
4259	Not applicable	10503007
12710	Employed	19100001
521	Unemployed	19100001
86	Discouraged work-seeker	19100001
5688	Other not economically active	19100001
0	Age less than 15 years	19100001
7881	Not applicable	19100001
11923	Employed	19100002
722	Unemployed	19100002
122	Discouraged work-seeker	19100002
5247	Other not economically active	19100002
0	Age less than 15 years	19100002
7570	Not applicable	19100002
15389	Employed	19100003
879	Unemployed	19100003
166	Discouraged work-seeker	19100003
7142	Other not economically active	19100003
0	Age less than 15 years	19100003
8369	Not applicable	19100003
19847	Employed	19100004
3067	Unemployed	19100004
593	Discouraged work-seeker	19100004
6602	Other not economically active	19100004
0	Age less than 15 years	19100004
10806	Not applicable	19100004
10962	Employed	19100005
749	Unemployed	19100005
133	Discouraged work-seeker	19100005
6373	Other not economically active	19100005
0	Age less than 15 years	19100005
6446	Not applicable	19100005
8754	Employed	19100006
2427	Unemployed	19100006
520	Discouraged work-seeker	19100006
4756	Other not economically active	19100006
0	Age less than 15 years	19100006
7017	Not applicable	19100006
11723	Employed	19100007
1729	Unemployed	19100007
626	Discouraged work-seeker	19100007
7530	Other not economically active	19100007
0	Age less than 15 years	19100007
9200	Not applicable	19100007
18894	Employed	19100008
1357	Unemployed	19100008
480	Discouraged work-seeker	19100008
6309	Other not economically active	19100008
0	Age less than 15 years	19100008
10705	Not applicable	19100008
8531	Employed	19100009
2164	Unemployed	19100009
354	Discouraged work-seeker	19100009
10437	Other not economically active	19100009
0	Age less than 15 years	19100009
7815	Not applicable	19100009
11363	Employed	19100010
1723	Unemployed	19100010
360	Discouraged work-seeker	19100010
8535	Other not economically active	19100010
0	Age less than 15 years	19100010
8539	Not applicable	19100010
15948	Employed	19100011
2983	Unemployed	19100011
656	Discouraged work-seeker	19100011
9453	Other not economically active	19100011
0	Age less than 15 years	19100011
12654	Not applicable	19100011
11186	Employed	19100012
3642	Unemployed	19100012
1081	Discouraged work-seeker	19100012
8483	Other not economically active	19100012
0	Age less than 15 years	19100012
11000	Not applicable	19100012
12432	Employed	19100013
7592	Unemployed	19100013
1523	Discouraged work-seeker	19100013
9727	Other not economically active	19100013
0	Age less than 15 years	19100013
14482	Not applicable	19100013
17741	Employed	19100014
4092	Unemployed	19100014
483	Discouraged work-seeker	19100014
8227	Other not economically active	19100014
0	Age less than 15 years	19100014
12745	Not applicable	19100014
9769	Employed	19100015
634	Unemployed	19100015
147	Discouraged work-seeker	19100015
4393	Other not economically active	19100015
0	Age less than 15 years	19100015
7663	Not applicable	19100015
14815	Employed	19100016
4443	Unemployed	19100016
846	Discouraged work-seeker	19100016
9719	Other not economically active	19100016
0	Age less than 15 years	19100016
13288	Not applicable	19100016
14536	Employed	19100017
3728	Unemployed	19100017
839	Discouraged work-seeker	19100017
9548	Other not economically active	19100017
0	Age less than 15 years	19100017
12426	Not applicable	19100017
5575	Employed	19100018
3841	Unemployed	19100018
683	Discouraged work-seeker	19100018
5403	Other not economically active	19100018
0	Age less than 15 years	19100018
6802	Not applicable	19100018
18638	Employed	19100019
6480	Unemployed	19100019
1235	Discouraged work-seeker	19100019
10148	Other not economically active	19100019
0	Age less than 15 years	19100019
18016	Not applicable	19100019
11308	Employed	19100020
7369	Unemployed	19100020
915	Discouraged work-seeker	19100020
8889	Other not economically active	19100020
0	Age less than 15 years	19100020
13281	Not applicable	19100020
10678	Employed	19100021
412	Unemployed	19100021
67	Discouraged work-seeker	19100021
3923	Other not economically active	19100021
0	Age less than 15 years	19100021
6497	Not applicable	19100021
10305	Employed	19100022
2602	Unemployed	19100022
594	Discouraged work-seeker	19100022
7806	Other not economically active	19100022
0	Age less than 15 years	19100022
9540	Not applicable	19100022
17692	Employed	19100023
1024	Unemployed	19100023
133	Discouraged work-seeker	19100023
5396	Other not economically active	19100023
0	Age less than 15 years	19100023
9204	Not applicable	19100023
7326	Employed	19100024
2937	Unemployed	19100024
855	Discouraged work-seeker	19100024
7630	Other not economically active	19100024
0	Age less than 15 years	19100024
8982	Not applicable	19100024
11846	Employed	19100025
3764	Unemployed	19100025
1167	Discouraged work-seeker	19100025
10484	Other not economically active	19100025
0	Age less than 15 years	19100025
12950	Not applicable	19100025
11028	Employed	19100026
1907	Unemployed	19100026
572	Discouraged work-seeker	19100026
7963	Other not economically active	19100026
0	Age less than 15 years	19100026
9271	Not applicable	19100026
13165	Employed	19100027
1137	Unemployed	19100027
205	Discouraged work-seeker	19100027
5725	Other not economically active	19100027
0	Age less than 15 years	19100027
7885	Not applicable	19100027
9014	Employed	19100028
2687	Unemployed	19100028
1334	Discouraged work-seeker	19100028
7769	Other not economically active	19100028
0	Age less than 15 years	19100028
10023	Not applicable	19100028
12916	Employed	19100029
5110	Unemployed	19100029
1406	Discouraged work-seeker	19100029
9862	Other not economically active	19100029
0	Age less than 15 years	19100029
13975	Not applicable	19100029
11544	Employed	19100030
2997	Unemployed	19100030
788	Discouraged work-seeker	19100030
9031	Other not economically active	19100030
0	Age less than 15 years	19100030
11362	Not applicable	19100030
9541	Employed	19100031
3495	Unemployed	19100031
1032	Discouraged work-seeker	19100031
9233	Other not economically active	19100031
0	Age less than 15 years	19100031
12028	Not applicable	19100031
11997	Employed	19100032
3851	Unemployed	19100032
1406	Discouraged work-seeker	19100032
8735	Other not economically active	19100032
0	Age less than 15 years	19100032
11440	Not applicable	19100032
13479	Employed	19100033
9093	Unemployed	19100033
767	Discouraged work-seeker	19100033
7766	Other not economically active	19100033
0	Age less than 15 years	19100033
12589	Not applicable	19100033
10862	Employed	19100034
6046	Unemployed	19100034
1178	Discouraged work-seeker	19100034
6403	Other not economically active	19100034
0	Age less than 15 years	19100034
9904	Not applicable	19100034
11177	Employed	19100035
6413	Unemployed	19100035
1622	Discouraged work-seeker	19100035
8445	Other not economically active	19100035
0	Age less than 15 years	19100035
12409	Not applicable	19100035
7253	Employed	19100036
5903	Unemployed	19100036
1236	Discouraged work-seeker	19100036
8933	Other not economically active	19100036
0	Age less than 15 years	19100036
10841	Not applicable	19100036
5080	Employed	19100037
4689	Unemployed	19100037
1062	Discouraged work-seeker	19100037
4647	Other not economically active	19100037
0	Age less than 15 years	19100037
6729	Not applicable	19100037
4663	Employed	19100038
4007	Unemployed	19100038
841	Discouraged work-seeker	19100038
4358	Other not economically active	19100038
0	Age less than 15 years	19100038
6764	Not applicable	19100038
6484	Employed	19100039
4402	Unemployed	19100039
1455	Discouraged work-seeker	19100039
4992	Other not economically active	19100039
0	Age less than 15 years	19100039
7138	Not applicable	19100039
7983	Employed	19100040
6038	Unemployed	19100040
951	Discouraged work-seeker	19100040
5086	Other not economically active	19100040
0	Age less than 15 years	19100040
8414	Not applicable	19100040
5124	Employed	19100041
3885	Unemployed	19100041
1010	Discouraged work-seeker	19100041
4396	Other not economically active	19100041
0	Age less than 15 years	19100041
6590	Not applicable	19100041
7505	Employed	19100042
4267	Unemployed	19100042
754	Discouraged work-seeker	19100042
7192	Other not economically active	19100042
0	Age less than 15 years	19100042
8363	Not applicable	19100042
16297	Employed	19100043
2910	Unemployed	19100043
582	Discouraged work-seeker	19100043
8486	Other not economically active	19100043
0	Age less than 15 years	19100043
12128	Not applicable	19100043
10189	Employed	19100044
4448	Unemployed	19100044
800	Discouraged work-seeker	19100044
8027	Other not economically active	19100044
0	Age less than 15 years	19100044
10939	Not applicable	19100044
7968	Employed	19100045
5725	Unemployed	19100045
953	Discouraged work-seeker	19100045
8480	Other not economically active	19100045
0	Age less than 15 years	19100045
11666	Not applicable	19100045
8424	Employed	19100046
2772	Unemployed	19100046
1461	Discouraged work-seeker	19100046
9510	Other not economically active	19100046
0	Age less than 15 years	19100046
11725	Not applicable	19100046
6888	Employed	19100047
4868	Unemployed	19100047
1279	Discouraged work-seeker	19100047
9185	Other not economically active	19100047
0	Age less than 15 years	19100047
12405	Not applicable	19100047
10562	Employed	19100048
1485	Unemployed	19100048
445	Discouraged work-seeker	19100048
8208	Other not economically active	19100048
0	Age less than 15 years	19100048
9052	Not applicable	19100048
12139	Employed	19100049
2921	Unemployed	19100049
1127	Discouraged work-seeker	19100049
9539	Other not economically active	19100049
0	Age less than 15 years	19100049
11738	Not applicable	19100049
9366	Employed	19100050
3759	Unemployed	19100050
993	Discouraged work-seeker	19100050
7654	Other not economically active	19100050
0	Age less than 15 years	19100050
11206	Not applicable	19100050
6840	Employed	19100051
3824	Unemployed	19100051
612	Discouraged work-seeker	19100051
5247	Other not economically active	19100051
0	Age less than 15 years	19100051
6765	Not applicable	19100051
6812	Employed	19100052
5392	Unemployed	19100052
740	Discouraged work-seeker	19100052
4995	Other not economically active	19100052
0	Age less than 15 years	19100052
6737	Not applicable	19100052
11677	Employed	19100053
1625	Unemployed	19100053
201	Discouraged work-seeker	19100053
6500	Other not economically active	19100053
0	Age less than 15 years	19100053
9025	Not applicable	19100053
13318	Employed	19100054
704	Unemployed	19100054
83	Discouraged work-seeker	19100054
6512	Other not economically active	19100054
0	Age less than 15 years	19100054
7286	Not applicable	19100054
14583	Employed	19100055
2307	Unemployed	19100055
313	Discouraged work-seeker	19100055
8032	Other not economically active	19100055
0	Age less than 15 years	19100055
10299	Not applicable	19100055
12611	Employed	19100056
1926	Unemployed	19100056
391	Discouraged work-seeker	19100056
8587	Other not economically active	19100056
0	Age less than 15 years	19100056
10282	Not applicable	19100056
12364	Employed	19100057
1611	Unemployed	19100057
198	Discouraged work-seeker	19100057
12228	Other not economically active	19100057
0	Age less than 15 years	19100057
6675	Not applicable	19100057
13585	Employed	19100058
566	Unemployed	19100058
92	Discouraged work-seeker	19100058
6648	Other not economically active	19100058
0	Age less than 15 years	19100058
7732	Not applicable	19100058
10675	Employed	19100059
532	Unemployed	19100059
50	Discouraged work-seeker	19100059
6687	Other not economically active	19100059
0	Age less than 15 years	19100059
5789	Not applicable	19100059
13473	Employed	19100060
1266	Unemployed	19100060
300	Discouraged work-seeker	19100060
6971	Other not economically active	19100060
0	Age less than 15 years	19100060
9669	Not applicable	19100060
9279	Employed	19100061
1652	Unemployed	19100061
648	Discouraged work-seeker	19100061
11129	Other not economically active	19100061
0	Age less than 15 years	19100061
9175	Not applicable	19100061
11050	Employed	19100062
534	Unemployed	19100062
163	Discouraged work-seeker	19100062
5547	Other not economically active	19100062
0	Age less than 15 years	19100062
7538	Not applicable	19100062
12208	Employed	19100063
1289	Unemployed	19100063
209	Discouraged work-seeker	19100063
6046	Other not economically active	19100063
0	Age less than 15 years	19100063
8120	Not applicable	19100063
11007	Employed	19100064
630	Unemployed	19100064
71	Discouraged work-seeker	19100064
4909	Other not economically active	19100064
0	Age less than 15 years	19100064
7872	Not applicable	19100064
9979	Employed	19100065
2008	Unemployed	19100065
533	Discouraged work-seeker	19100065
6287	Other not economically active	19100065
0	Age less than 15 years	19100065
9310	Not applicable	19100065
8680	Employed	19100066
3117	Unemployed	19100066
765	Discouraged work-seeker	19100066
6718	Other not economically active	19100066
0	Age less than 15 years	19100066
9565	Not applicable	19100066
15736	Employed	19100067
6875	Unemployed	19100067
952	Discouraged work-seeker	19100067
9978	Other not economically active	19100067
0	Age less than 15 years	19100067
15071	Not applicable	19100067
9730	Employed	19100068
3534	Unemployed	19100068
802	Discouraged work-seeker	19100068
7335	Other not economically active	19100068
0	Age less than 15 years	19100068
10431	Not applicable	19100068
15983	Employed	19100069
4466	Unemployed	19100069
359	Discouraged work-seeker	19100069
5406	Other not economically active	19100069
0	Age less than 15 years	19100069
10957	Not applicable	19100069
12746	Employed	19100070
379	Unemployed	19100070
56	Discouraged work-seeker	19100070
4872	Other not economically active	19100070
0	Age less than 15 years	19100070
6881	Not applicable	19100070
11669	Employed	19100071
1168	Unemployed	19100071
171	Discouraged work-seeker	19100071
6601	Other not economically active	19100071
0	Age less than 15 years	19100071
8334	Not applicable	19100071
9961	Employed	19100072
1721	Unemployed	19100072
209	Discouraged work-seeker	19100072
5622	Other not economically active	19100072
0	Age less than 15 years	19100072
7677	Not applicable	19100072
11227	Employed	19100073
608	Unemployed	19100073
113	Discouraged work-seeker	19100073
4519	Other not economically active	19100073
0	Age less than 15 years	19100073
7819	Not applicable	19100073
15354	Employed	19100074
4121	Unemployed	19100074
579	Discouraged work-seeker	19100074
6094	Other not economically active	19100074
0	Age less than 15 years	19100074
10674	Not applicable	19100074
12866	Employed	19100075
3987	Unemployed	19100075
655	Discouraged work-seeker	19100075
8248	Other not economically active	19100075
0	Age less than 15 years	19100075
11942	Not applicable	19100075
12896	Employed	19100076
3447	Unemployed	19100076
900	Discouraged work-seeker	19100076
11167	Other not economically active	19100076
0	Age less than 15 years	19100076
12555	Not applicable	19100076
13165	Employed	19100077
825	Unemployed	19100077
91	Discouraged work-seeker	19100077
8679	Other not economically active	19100077
0	Age less than 15 years	19100077
5491	Not applicable	19100077
13482	Employed	19100078
3117	Unemployed	19100078
925	Discouraged work-seeker	19100078
9589	Other not economically active	19100078
0	Age less than 15 years	19100078
12958	Not applicable	19100078
10400	Employed	19100079
3827	Unemployed	19100079
1166	Discouraged work-seeker	19100079
8414	Other not economically active	19100079
0	Age less than 15 years	19100079
11603	Not applicable	19100079
13565	Employed	19100080
8229	Unemployed	19100080
1461	Discouraged work-seeker	19100080
8904	Other not economically active	19100080
0	Age less than 15 years	19100080
13992	Not applicable	19100080
11092	Employed	19100081
2409	Unemployed	19100081
598	Discouraged work-seeker	19100081
8206	Other not economically active	19100081
0	Age less than 15 years	19100081
9860	Not applicable	19100081
10189	Employed	19100082
6230	Unemployed	19100082
1065	Discouraged work-seeker	19100082
10367	Other not economically active	19100082
0	Age less than 15 years	19100082
13532	Not applicable	19100082
9763	Employed	19100083
2398	Unemployed	19100083
620	Discouraged work-seeker	19100083
4343	Other not economically active	19100083
0	Age less than 15 years	19100083
7716	Not applicable	19100083
9867	Employed	19100084
678	Unemployed	19100084
295	Discouraged work-seeker	19100084
4909	Other not economically active	19100084
0	Age less than 15 years	19100084
9545	Not applicable	19100084
12899	Employed	19100085
4034	Unemployed	19100085
940	Discouraged work-seeker	19100085
5007	Other not economically active	19100085
0	Age less than 15 years	19100085
10488	Not applicable	19100085
11914	Employed	19100086
6194	Unemployed	19100086
1161	Discouraged work-seeker	19100086
7673	Other not economically active	19100086
0	Age less than 15 years	19100086
12236	Not applicable	19100086
8056	Employed	19100087
6241	Unemployed	19100087
728	Discouraged work-seeker	19100087
5859	Other not economically active	19100087
0	Age less than 15 years	19100087
8769	Not applicable	19100087
11700	Employed	19100088
5867	Unemployed	19100088
1337	Discouraged work-seeker	19100088
9278	Other not economically active	19100088
0	Age less than 15 years	19100088
12731	Not applicable	19100088
7829	Employed	19100089
5308	Unemployed	19100089
1035	Discouraged work-seeker	19100089
5557	Other not economically active	19100089
0	Age less than 15 years	19100089
7911	Not applicable	19100089
7821	Employed	19100090
5910	Unemployed	19100090
816	Discouraged work-seeker	19100090
5780	Other not economically active	19100090
0	Age less than 15 years	19100090
8248	Not applicable	19100090
8488	Employed	19100091
4545	Unemployed	19100091
986	Discouraged work-seeker	19100091
7643	Other not economically active	19100091
0	Age less than 15 years	19100091
9031	Not applicable	19100091
10640	Employed	19100092
4545	Unemployed	19100092
739	Discouraged work-seeker	19100092
8136	Other not economically active	19100092
0	Age less than 15 years	19100092
10639	Not applicable	19100092
8940	Employed	19100093
5726	Unemployed	19100093
923	Discouraged work-seeker	19100093
6232	Other not economically active	19100093
0	Age less than 15 years	19100093
9397	Not applicable	19100093
7317	Employed	19100094
3277	Unemployed	19100094
584	Discouraged work-seeker	19100094
6198	Other not economically active	19100094
0	Age less than 15 years	19100094
7593	Not applicable	19100094
17557	Employed	19100095
11010	Unemployed	19100095
1404	Discouraged work-seeker	19100095
11354	Other not economically active	19100095
0	Age less than 15 years	19100095
17516	Not applicable	19100095
7026	Employed	19100096
4259	Unemployed	19100096
946	Discouraged work-seeker	19100096
6616	Other not economically active	19100096
0	Age less than 15 years	19100096
7988	Not applicable	19100096
7669	Employed	19100097
4896	Unemployed	19100097
830	Discouraged work-seeker	19100097
6605	Other not economically active	19100097
0	Age less than 15 years	19100097
8528	Not applicable	19100097
8563	Employed	19100098
4894	Unemployed	19100098
1220	Discouraged work-seeker	19100098
5653	Other not economically active	19100098
0	Age less than 15 years	19100098
8641	Not applicable	19100098
13546	Employed	19100099
7993	Unemployed	19100099
1887	Discouraged work-seeker	19100099
12165	Other not economically active	19100099
0	Age less than 15 years	19100099
16621	Not applicable	19100099
16054	Employed	19100100
3336	Unemployed	19100100
1384	Discouraged work-seeker	19100100
9647	Other not economically active	19100100
0	Age less than 15 years	19100100
13887	Not applicable	19100100
11715	Employed	19100101
6420	Unemployed	19100101
1014	Discouraged work-seeker	19100101
6808	Other not economically active	19100101
0	Age less than 15 years	19100101
11128	Not applicable	19100101
14361	Employed	19100102
827	Unemployed	19100102
236	Discouraged work-seeker	19100102
4654	Other not economically active	19100102
0	Age less than 15 years	19100102
6962	Not applicable	19100102
21848	Employed	19100103
887	Unemployed	19100103
182	Discouraged work-seeker	19100103
6364	Other not economically active	19100103
0	Age less than 15 years	19100103
12026	Not applicable	19100103
12917	Employed	19100104
8339	Unemployed	19100104
741	Discouraged work-seeker	19100104
4704	Other not economically active	19100104
0	Age less than 15 years	19100104
10274	Not applicable	19100104
17542	Employed	19100105
2624	Unemployed	19100105
245	Discouraged work-seeker	19100105
6853	Other not economically active	19100105
0	Age less than 15 years	19100105
12308	Not applicable	19100105
15988	Employed	19100106
13027	Unemployed	19100106
1462	Discouraged work-seeker	19100106
12966	Other not economically active	19100106
0	Age less than 15 years	19100106
21069	Not applicable	19100106
22887	Employed	19100107
1472	Unemployed	19100107
284	Discouraged work-seeker	19100107
6457	Other not economically active	19100107
0	Age less than 15 years	19100107
12196	Not applicable	19100107
15867	Employed	19100108
10301	Unemployed	19100108
1549	Discouraged work-seeker	19100108
9060	Other not economically active	19100108
0	Age less than 15 years	19100108
16760	Not applicable	19100108
12953	Employed	19100109
4635	Unemployed	19100109
780	Discouraged work-seeker	19100109
8601	Other not economically active	19100109
0	Age less than 15 years	19100109
13363	Not applicable	19100109
10507	Employed	19100110
2452	Unemployed	19100110
548	Discouraged work-seeker	19100110
5377	Other not economically active	19100110
0	Age less than 15 years	19100110
8911	Not applicable	19100110
13267	Employed	19100111
4274	Unemployed	19100111
1169	Discouraged work-seeker	19100111
7532	Other not economically active	19100111
0	Age less than 15 years	19100111
11252	Not applicable	19100111
\.


--
-- Name: officialemploymentstatus_country_pkey; Type: CONSTRAINT; Schema: public; Owner: census; Tablespace: 
--

ALTER TABLE ONLY officialemploymentstatus_country
    ADD CONSTRAINT officialemploymentstatus_country_pkey PRIMARY KEY ("official employment status");


--
-- Name: officialemploymentstatus_district_pkey; Type: CONSTRAINT; Schema: public; Owner: census; Tablespace: 
--

ALTER TABLE ONLY officialemploymentstatus_district
    ADD CONSTRAINT officialemploymentstatus_district_pkey PRIMARY KEY ("official employment status", district_code);


--
-- Name: officialemploymentstatus_municipality_pkey; Type: CONSTRAINT; Schema: public; Owner: census; Tablespace: 
--

ALTER TABLE ONLY officialemploymentstatus_municipality
    ADD CONSTRAINT officialemploymentstatus_municipality_pkey PRIMARY KEY ("official employment status", municipality_code);


--
-- Name: officialemploymentstatus_province_pkey; Type: CONSTRAINT; Schema: public; Owner: census; Tablespace: 
--

ALTER TABLE ONLY officialemploymentstatus_province
    ADD CONSTRAINT officialemploymentstatus_province_pkey PRIMARY KEY ("official employment status", province_code);


--
-- Name: officialemploymentstatus_ward_pkey; Type: CONSTRAINT; Schema: public; Owner: census; Tablespace: 
--

ALTER TABLE ONLY officialemploymentstatus_ward
    ADD CONSTRAINT officialemploymentstatus_ward_pkey PRIMARY KEY ("official employment status", ward_code);


--
-- Name: officialemploymentstatus_country_country_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: census
--

ALTER TABLE ONLY officialemploymentstatus_country
    ADD CONSTRAINT officialemploymentstatus_country_country_code_fkey FOREIGN KEY (country_code) REFERENCES country(code);


--
-- Name: officialemploymentstatus_district_district_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: census
--

ALTER TABLE ONLY officialemploymentstatus_district
    ADD CONSTRAINT officialemploymentstatus_district_district_code_fkey FOREIGN KEY (district_code) REFERENCES district(code);


--
-- Name: officialemploymentstatus_municipality_municipality_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: census
--

ALTER TABLE ONLY officialemploymentstatus_municipality
    ADD CONSTRAINT officialemploymentstatus_municipality_municipality_code_fkey FOREIGN KEY (municipality_code) REFERENCES municipality(code);


--
-- Name: officialemploymentstatus_province_province_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: census
--

ALTER TABLE ONLY officialemploymentstatus_province
    ADD CONSTRAINT officialemploymentstatus_province_province_code_fkey FOREIGN KEY (province_code) REFERENCES province(code);


--
-- Name: officialemploymentstatus_ward_ward_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: census
--

ALTER TABLE ONLY officialemploymentstatus_ward
    ADD CONSTRAINT officialemploymentstatus_ward_ward_code_fkey FOREIGN KEY (ward_code) REFERENCES ward(code);


--
-- PostgreSQL database dump complete
--

