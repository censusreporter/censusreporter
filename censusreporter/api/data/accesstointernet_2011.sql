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
-- Name: accesstointernet_country; Type: TABLE; Schema: public; Owner: census; Tablespace: 
--

CREATE TABLE accesstointernet_country (
    total integer NOT NULL,
    "access to internet" character varying(128) NOT NULL,
    country_code character varying(8) NOT NULL
);


ALTER TABLE public.accesstointernet_country OWNER TO census;

--
-- Name: accesstointernet_municipality; Type: TABLE; Schema: public; Owner: census; Tablespace: 
--

CREATE TABLE accesstointernet_municipality (
    total integer NOT NULL,
    "access to internet" character varying(128) NOT NULL,
    municipality_code character varying(8) NOT NULL
);


ALTER TABLE public.accesstointernet_municipality OWNER TO census;

--
-- Name: accesstointernet_province; Type: TABLE; Schema: public; Owner: census; Tablespace: 
--

CREATE TABLE accesstointernet_province (
    total integer NOT NULL,
    "access to internet" character varying(128) NOT NULL,
    province_code character varying(8) NOT NULL
);


ALTER TABLE public.accesstointernet_province OWNER TO census;

--
-- Name: accesstointernet_ward; Type: TABLE; Schema: public; Owner: census; Tablespace: 
--

CREATE TABLE accesstointernet_ward (
    total integer NOT NULL,
    "access to internet" character varying(128) NOT NULL,
    ward_code character varying(8) NOT NULL
);


ALTER TABLE public.accesstointernet_ward OWNER TO census;

--
-- Data for Name: accesstointernet_country; Type: TABLE DATA; Schema: public; Owner: census
--

COPY accesstointernet_country (total, "access to internet", country_code) FROM stdin;
1239186	From home	ZA
2356920	From cell phone	ZA
678243	From work	ZA
811296	From elsewhere	ZA
9364518	No access to internet	ZA
\.


--
-- Data for Name: accesstointernet_municipality; Type: TABLE DATA; Schema: public; Owner: census
--

COPY accesstointernet_municipality (total, "access to internet", municipality_code) FROM stdin;
1023	From home	EC101
1371	From cell phone	EC101
378	From work	EC101
258	From elsewhere	EC101
9369	No access to internet	EC101
576	From home	EC102
1353	From cell phone	EC102
231	From work	EC102
381	From elsewhere	EC102
7218	No access to internet	EC102
102	From home	EC103
381	From cell phone	EC103
45	From work	EC103
36	From elsewhere	EC103
2349	No access to internet	EC103
1866	From home	EC104
2757	From cell phone	EC104
1179	From work	EC104
597	From elsewhere	EC104
14991	No access to internet	EC104
2106	From home	EC105
2409	From cell phone	EC105
597	From work	EC105
696	From elsewhere	EC105
13524	No access to internet	EC105
501	From home	EC106
1533	From cell phone	EC106
390	From work	EC106
477	From elsewhere	EC106
11853	No access to internet	EC106
171	From home	EC107
408	From cell phone	EC107
63	From work	EC107
99	From elsewhere	EC107
3867	No access to internet	EC107
3309	From home	EC108
3327	From cell phone	EC108
870	From work	EC108
738	From elsewhere	EC108
21204	No access to internet	EC108
537	From home	EC109
1008	From cell phone	EC109
351	From work	EC109
606	From elsewhere	EC109
8526	No access to internet	EC109
573	From home	EC121
6999	From cell phone	EC121
540	From work	EC121
1134	From elsewhere	EC121
50880	No access to internet	EC121
870	From home	EC122
7248	From cell phone	EC122
1080	From work	EC122
1866	From elsewhere	EC122
58668	No access to internet	EC122
456	From home	EC123
1080	From cell phone	EC123
150	From work	EC123
132	From elsewhere	EC123
8493	No access to internet	EC123
681	From home	EC124
3549	From cell phone	EC124
489	From work	EC124
894	From elsewhere	EC124
28548	No access to internet	EC124
372	From home	EC126
2742	From cell phone	EC126
207	From work	EC126
417	From elsewhere	EC126
17643	No access to internet	EC126
741	From home	EC127
4320	From cell phone	EC127
783	From work	EC127
870	From elsewhere	EC127
28641	No access to internet	EC127
333	From home	EC128
636	From cell phone	EC128
138	From work	EC128
87	From elsewhere	EC128
5517	No access to internet	EC128
1275	From home	EC131
2340	From cell phone	EC131
630	From work	EC131
600	From elsewhere	EC131
13614	No access to internet	EC131
258	From home	EC132
1104	From cell phone	EC132
126	From work	EC132
222	From elsewhere	EC132
7782	No access to internet	EC132
234	From home	EC133
951	From cell phone	EC133
138	From work	EC133
129	From elsewhere	EC133
4779	No access to internet	EC133
2565	From home	EC134
7617	From cell phone	EC134
1695	From work	EC134
3819	From elsewhere	EC134
35478	No access to internet	EC134
330	From home	EC135
3507	From cell phone	EC135
384	From work	EC135
852	From elsewhere	EC135
35379	No access to internet	EC135
519	From home	EC136
3612	From cell phone	EC136
300	From work	EC136
708	From elsewhere	EC136
26541	No access to internet	EC136
276	From home	EC137
4341	From cell phone	EC137
417	From work	EC137
918	From elsewhere	EC137
31263	No access to internet	EC137
393	From home	EC138
2226	From cell phone	EC138
249	From work	EC138
588	From elsewhere	EC138
12693	No access to internet	EC138
630	From home	EC141
3687	From cell phone	EC141
378	From work	EC141
558	From elsewhere	EC141
32604	No access to internet	EC141
561	From home	EC142
5013	From cell phone	EC142
396	From work	EC142
852	From elsewhere	EC142
31224	No access to internet	EC142
735	From home	EC143
1875	From cell phone	EC143
492	From work	EC143
378	From elsewhere	EC143
8622	No access to internet	EC143
552	From home	EC144
939	From cell phone	EC144
285	From work	EC144
264	From elsewhere	EC144
7734	No access to internet	EC144
762	From home	EC153
6885	From cell phone	EC153
777	From work	EC153
1821	From elsewhere	EC153
45972	No access to internet	EC153
372	From home	EC154
3537	From cell phone	EC154
318	From work	EC154
786	From elsewhere	EC154
26706	No access to internet	EC154
771	From home	EC155
7596	From cell phone	EC155
726	From work	EC155
1329	From elsewhere	EC155
51222	No access to internet	EC155
459	From home	EC156
5634	From cell phone	EC156
372	From work	EC156
849	From elsewhere	EC156
36102	No access to internet	EC156
2913	From home	EC157
16383	From cell phone	EC157
3069	From work	EC157
3819	From elsewhere	EC157
79056	No access to internet	EC157
744	From home	EC441
5598	From cell phone	EC441
675	From work	EC441
1257	From elsewhere	EC441
41247	No access to internet	EC441
585	From home	EC442
6198	From cell phone	EC442
618	From work	EC442
1509	From elsewhere	EC442
37980	No access to internet	EC442
594	From home	EC443
5259	From cell phone	EC443
603	From work	EC443
1344	From elsewhere	EC443
40644	No access to internet	EC443
93	From home	EC444
2361	From cell phone	EC444
213	From work	EC444
384	From elsewhere	EC444
21345	No access to internet	EC444
18111	From home	BUF
32727	From cell phone	BUF
11904	From work	BUF
10917	From elsewhere	BUF
149910	No access to internet	BUF
35790	From home	NMA
45330	From cell phone	NMA
15468	From work	NMA
16245	From elsewhere	NMA
211455	No access to internet	NMA
423	From home	FS161
1551	From cell phone	FS161
207	From work	FS161
492	From elsewhere	FS161
8571	No access to internet	FS161
609	From home	FS162
2106	From cell phone	FS162
387	From work	FS162
1077	From elsewhere	FS162
11463	No access to internet	FS162
405	From home	FS163
1362	From cell phone	FS163
282	From work	FS163
420	From elsewhere	FS163
8322	No access to internet	FS163
264	From home	FS164
1161	From cell phone	FS164
162	From work	FS164
282	From elsewhere	FS164
5820	No access to internet	FS164
516	From home	FS181
2682	From cell phone	FS181
300	From work	FS181
483	From elsewhere	FS181
13593	No access to internet	FS181
279	From home	FS182
948	From cell phone	FS182
135	From work	FS182
291	From elsewhere	FS182
7044	No access to internet	FS182
441	From home	FS183
1500	From cell phone	FS183
237	From work	FS183
438	From elsewhere	FS183
9381	No access to internet	FS183
7098	From home	FS184
20202	From cell phone	FS184
3504	From work	FS184
6357	From elsewhere	FS184
86034	No access to internet	FS184
837	From home	FS185
2448	From cell phone	FS185
456	From work	FS185
735	From elsewhere	FS185
17229	No access to internet	FS185
1230	From home	FS191
4593	From cell phone	FS191
771	From work	FS191
1383	From elsewhere	FS191
25716	No access to internet	FS191
2787	From home	FS192
6660	From cell phone	FS192
1371	From work	FS192
1869	From elsewhere	FS192
25902	No access to internet	FS192
600	From home	FS193
2709	From cell phone	FS193
390	From work	FS193
678	From elsewhere	FS193
12942	No access to internet	FS193
3333	From home	FS194
16911	From cell phone	FS194
1995	From work	FS194
5949	From elsewhere	FS194
72039	No access to internet	FS194
462	From home	FS195
1686	From cell phone	FS195
213	From work	FS195
348	From elsewhere	FS195
10176	No access to internet	FS195
660	From home	FS196
1908	From cell phone	FS196
459	From work	FS196
891	From elsewhere	FS196
11250	No access to internet	FS196
2643	From home	FS201
7128	From cell phone	FS201
1293	From work	FS201
2031	From elsewhere	FS201
32562	No access to internet	FS201
1893	From home	FS203
5586	From cell phone	FS203
771	From work	FS203
1881	From elsewhere	FS203
26970	No access to internet	FS203
3756	From home	FS204
8916	From cell phone	FS204
2316	From work	FS204
3801	From elsewhere	FS204
26964	No access to internet	FS204
663	From home	FS205
2754	From cell phone	FS205
339	From work	FS205
1575	From elsewhere	FS205
11133	No access to internet	FS205
19875	From home	MAN
43953	From cell phone	MAN
11946	From work	MAN
12573	From elsewhere	MAN
143574	No access to internet	MAN
15573	From home	GT421
41865	From cell phone	GT421
9555	From work	GT421
22470	From elsewhere	GT421
130671	No access to internet	GT421
3777	From home	GT422
4362	From cell phone	GT422
2184	From work	GT422
993	From elsewhere	GT422
18651	No access to internet	GT422
2340	From home	GT423
4314	From cell phone	GT423
1536	From work	GT423
1218	From elsewhere	GT423
20256	No access to internet	GT423
11643	From home	GT481
19986	From cell phone	GT481
8010	From work	GT481
7164	From elsewhere	GT481
70569	No access to internet	GT481
3501	From home	GT482
8244	From cell phone	GT482
2682	From work	GT482
2553	From elsewhere	GT482
26322	No access to internet	GT482
1443	From home	GT483
5781	From cell phone	GT483
1008	From work	GT483
1773	From elsewhere	GT483
30096	No access to internet	GT483
3795	From home	GT484
9753	From cell phone	GT484
2076	From work	GT484
3537	From elsewhere	GT484
47460	No access to internet	GT484
98904	From home	EKU
174540	From cell phone	EKU
71112	From work	EKU
87669	From elsewhere	EKU
583248	No access to internet	EKU
206088	From home	JHB
259386	From cell phone	JHB
123387	From work	JHB
122202	From elsewhere	JHB
723786	No access to internet	JHB
135960	From home	TSH
168843	From cell phone	TSH
85959	From work	TSH
78093	From elsewhere	TSH
442683	No access to internet	TSH
390	From home	KZN213
4416	From cell phone	KZN213
420	From work	KZN213
1314	From elsewhere	KZN213
28629	No access to internet	KZN213
483	From home	KZN214
2532	From cell phone	KZN214
360	From work	KZN214
741	From elsewhere	KZN214
17502	No access to internet	KZN214
240	From home	KZN215
1470	From cell phone	KZN215
162	From work	KZN215
531	From elsewhere	KZN215
9069	No access to internet	KZN215
7725	From home	KZN216
12564	From cell phone	KZN216
2454	From work	KZN216
3126	From elsewhere	KZN216
46305	No access to internet	KZN216
255	From home	KZN211
2322	From cell phone	KZN211
207	From work	KZN211
660	From elsewhere	KZN211
12693	No access to internet	KZN211
2226	From home	KZN212
3618	From cell phone	KZN212
585	From work	KZN212
1032	From elsewhere	KZN212
15411	No access to internet	KZN212
813	From home	KZN221
5310	From cell phone	KZN221
456	From work	KZN221
4299	From elsewhere	KZN221
17244	No access to internet	KZN221
4824	From home	KZN222
4290	From cell phone	KZN222
1455	From work	KZN222
1563	From elsewhere	KZN222
18363	No access to internet	KZN222
465	From home	KZN223
1458	From cell phone	KZN223
291	From work	KZN223
378	From elsewhere	KZN223
7860	No access to internet	KZN223
84	From home	KZN224
1233	From cell phone	KZN224
90	From work	KZN224
234	From elsewhere	KZN224
6561	No access to internet	KZN224
15648	From home	KZN225
28014	From cell phone	KZN225
8277	From work	KZN225
10764	From elsewhere	KZN225
101292	No access to internet	KZN225
456	From home	KZN226
1638	From cell phone	KZN226
309	From work	KZN226
696	From elsewhere	KZN226
11868	No access to internet	KZN226
465	From home	KZN227
2085	From cell phone	KZN227
261	From work	KZN227
387	From elsewhere	KZN227
13245	No access to internet	KZN227
3162	From home	KZN232
9864	From cell phone	KZN232
1518	From work	KZN232
3468	From elsewhere	KZN232
40041	No access to internet	KZN232
366	From home	KZN233
3057	From cell phone	KZN233
183	From work	KZN233
558	From elsewhere	KZN233
15870	No access to internet	KZN233
945	From home	KZN234
3999	From cell phone	KZN234
525	From work	KZN234
510	From elsewhere	KZN234
13275	No access to internet	KZN234
669	From home	KZN235
5937	From cell phone	KZN235
483	From work	KZN235
816	From elsewhere	KZN235
19671	No access to internet	KZN235
528	From home	KZN236
4506	From cell phone	KZN236
255	From work	KZN236
861	From elsewhere	KZN236
16215	No access to internet	KZN236
498	From home	KZN271
5469	From cell phone	KZN271
483	From work	KZN271
1020	From elsewhere	KZN271
26391	No access to internet	KZN271
606	From home	KZN272
6777	From cell phone	KZN272
636	From work	KZN272
741	From elsewhere	KZN272
30087	No access to internet	KZN272
255	From home	KZN273
1740	From cell phone	KZN273
225	From work	KZN273
108	From elsewhere	KZN273
5673	No access to internet	KZN273
180	From home	KZN274
2814	From cell phone	KZN274
252	From work	KZN274
354	From elsewhere	KZN274
8988	No access to internet	KZN274
1479	From home	KZN275
6999	From cell phone	KZN275
807	From work	KZN275
1179	From elsewhere	KZN275
24444	No access to internet	KZN275
9402	From home	KZN282
19686	From cell phone	KZN282
4905	From work	KZN282
7569	From elsewhere	KZN282
45051	No access to internet	KZN282
366	From home	KZN286
3777	From cell phone	KZN286
498	From work	KZN286
492	From elsewhere	KZN286
17331	No access to internet	KZN286
567	From home	KZN281
5343	From cell phone	KZN281
471	From work	KZN281
900	From elsewhere	KZN281
18303	No access to internet	KZN281
132	From home	KZN283
1446	From cell phone	KZN283
132	From work	KZN283
294	From elsewhere	KZN283
10818	No access to internet	KZN283
1677	From home	KZN284
8076	From cell phone	KZN284
879	From work	KZN284
1683	From elsewhere	KZN284
32742	No access to internet	KZN284
183	From home	KZN285
1662	From cell phone	KZN285
255	From work	KZN285
201	From elsewhere	KZN285
8133	No access to internet	KZN285
267	From home	KZN431
2541	From cell phone	KZN431
348	From work	KZN431
489	From elsewhere	KZN431
19431	No access to internet	KZN431
330	From home	KZN432
669	From cell phone	KZN432
132	From work	KZN432
63	From elsewhere	KZN432
2481	No access to internet	KZN432
1095	From home	KZN433
2883	From cell phone	KZN433
834	From work	KZN433
603	From elsewhere	KZN433
13725	No access to internet	KZN433
501	From home	KZN434
2601	From cell phone	KZN434
444	From work	KZN434
705	From elsewhere	KZN434
19239	No access to internet	KZN434
462	From home	KZN435
5337	From cell phone	KZN435
441	From work	KZN435
1350	From elsewhere	KZN435
35322	No access to internet	KZN435
1185	From home	KZN241
2754	From cell phone	KZN241
564	From work	KZN241
384	From elsewhere	KZN241
11964	No access to internet	KZN241
390	From home	KZN242
4764	From cell phone	KZN242
291	From work	KZN242
552	From elsewhere	KZN242
25614	No access to internet	KZN242
318	From home	KZN244
3747	From cell phone	KZN244
468	From work	KZN244
534	From elsewhere	KZN244
32655	No access to internet	KZN244
855	From home	KZN245
4020	From cell phone	KZN245
507	From work	KZN245
618	From elsewhere	KZN245
21279	No access to internet	KZN245
5160	From home	KZN252
14616	From cell phone	KZN252
2028	From work	KZN252
5937	From elsewhere	KZN252
56532	No access to internet	KZN252
249	From home	KZN253
978	From cell phone	KZN253
135	From work	KZN253
87	From elsewhere	KZN253
4800	No access to internet	KZN253
339	From home	KZN254
2724	From cell phone	KZN254
183	From work	KZN254
924	From elsewhere	KZN254
16269	No access to internet	KZN254
1950	From home	KZN263
8376	From cell phone	KZN263
972	From work	KZN263
1695	From elsewhere	KZN263
30312	No access to internet	KZN263
513	From home	KZN261
3123	From cell phone	KZN261
291	From work	KZN261
747	From elsewhere	KZN261
11463	No access to internet	KZN261
576	From home	KZN262
4776	From cell phone	KZN262
531	From work	KZN262
702	From elsewhere	KZN262
22191	No access to internet	KZN262
621	From home	KZN265
7779	From cell phone	KZN265
441	From work	KZN265
1749	From elsewhere	KZN265
23748	No access to internet	KZN265
996	From home	KZN266
7806	From cell phone	KZN266
828	From work	KZN266
1218	From elsewhere	KZN266
24351	No access to internet	KZN266
255	From home	KZN294
2505	From cell phone	KZN294
255	From work	KZN294
732	From elsewhere	KZN294
16227	No access to internet	KZN294
1251	From home	KZN291
7386	From cell phone	KZN291
807	From work	KZN291
1635	From elsewhere	KZN291
27156	No access to internet	KZN291
5793	From home	KZN292
11301	From cell phone	KZN292
2277	From work	KZN292
2499	From elsewhere	KZN292
48417	No access to internet	KZN292
417	From home	KZN293
4881	From cell phone	KZN293
363	From work	KZN293
1167	From elsewhere	KZN293
22371	No access to internet	KZN293
111678	From home	ETH
182340	From cell phone	ETH
46092	From work	ETH
54312	From elsewhere	ETH
562293	No access to internet	ETH
1461	From home	LIM331
10347	From cell phone	LIM331
945	From work	LIM331
3123	From elsewhere	LIM331
47667	No access to internet	LIM331
954	From home	LIM332
10311	From cell phone	LIM332
552	From work	LIM332
1743	From elsewhere	LIM332
44700	No access to internet	LIM332
3897	From home	LIM333
15813	From cell phone	LIM333
2151	From work	LIM333
3783	From elsewhere	LIM333
83283	No access to internet	LIM333
2046	From home	LIM334
7416	From cell phone	LIM334
1167	From work	LIM334
1566	From elsewhere	LIM334
28917	No access to internet	LIM334
627	From home	LIM335
2466	From cell phone	LIM335
420	From work	LIM335
564	From elsewhere	LIM335
20391	No access to internet	LIM335
351	From home	LIM342
3981	From cell phone	LIM342
264	From work	LIM342
480	From elsewhere	LIM342
18672	No access to internet	LIM342
3315	From home	LIM343
27546	From cell phone	LIM343
2256	From work	LIM343
7458	From elsewhere	LIM343
116016	No access to internet	LIM343
918	From home	LIM341
2322	From cell phone	LIM341
678	From work	LIM341
378	From elsewhere	LIM341
15744	No access to internet	LIM341
3570	From home	LIM344
19128	From cell phone	LIM344
2010	From work	LIM344
4842	From elsewhere	LIM344
105339	No access to internet	LIM344
423	From home	LIM351
4179	From cell phone	LIM351
387	From work	LIM351
1308	From elsewhere	LIM351
34890	No access to internet	LIM351
444	From home	LIM352
3429	From cell phone	LIM352
270	From work	LIM352
990	From elsewhere	LIM352
28782	No access to internet	LIM352
744	From home	LIM353
3993	From cell phone	LIM353
477	From work	LIM353
3870	From elsewhere	LIM353
20961	No access to internet	LIM353
11064	From home	LIM354
32862	From cell phone	LIM354
9012	From work	LIM354
9846	From elsewhere	LIM354
115215	No access to internet	LIM354
1431	From home	LIM355
8016	From cell phone	LIM355
1044	From work	LIM355
2832	From elsewhere	LIM355
46359	No access to internet	LIM355
1680	From home	LIM361
4260	From cell phone	LIM361
1239	From work	LIM361
642	From elsewhere	LIM361
17256	No access to internet	LIM361
1458	From home	LIM362
5187	From cell phone	LIM362
1425	From work	LIM362
837	From elsewhere	LIM362
20970	No access to internet	LIM362
516	From home	LIM364
1896	From cell phone	LIM364
204	From work	LIM364
276	From elsewhere	LIM364
7029	No access to internet	LIM364
1017	From home	LIM365
2250	From cell phone	LIM365
735	From work	LIM365
696	From elsewhere	LIM365
12828	No access to internet	LIM365
1134	From home	LIM366
2490	From cell phone	LIM366
645	From work	LIM366
534	From elsewhere	LIM366
13260	No access to internet	LIM366
2514	From home	LIM367
10392	From cell phone	LIM367
1455	From work	LIM367
3528	From elsewhere	LIM367
61506	No access to internet	LIM367
633	From home	LIM471
3288	From cell phone	LIM471
471	From work	LIM471
681	From elsewhere	LIM471
27204	No access to internet	LIM471
1224	From home	LIM472
7743	From cell phone	LIM472
846	From work	LIM472
3495	From elsewhere	LIM472
46941	No access to internet	LIM472
987	From home	LIM473
7863	From cell phone	LIM473
615	From work	LIM473
2559	From elsewhere	LIM473
53193	No access to internet	LIM473
333	From home	LIM474
2211	From cell phone	LIM474
318	From work	LIM474
816	From elsewhere	LIM474
19176	No access to internet	LIM474
2022	From home	LIM475
10398	From cell phone	LIM475
1536	From work	LIM475
2607	From elsewhere	LIM475
66633	No access to internet	LIM475
1092	From home	MP301
7764	From cell phone	MP301
795	From work	MP301
1686	From elsewhere	MP301
36366	No access to internet	MP301
2514	From home	MP302
7563	From cell phone	MP302
1485	From work	MP302
2595	From elsewhere	MP302
26772	No access to internet	MP302
1278	From home	MP303
6018	From cell phone	MP303
714	From work	MP303
1740	From elsewhere	MP303
27687	No access to internet	MP303
933	From home	MP304
3423	From cell phone	MP304
411	From work	MP304
831	From elsewhere	MP304
14238	No access to internet	MP304
2043	From home	MP305
5427	From cell phone	MP305
1293	From work	MP305
2067	From elsewhere	MP305
20241	No access to internet	MP305
492	From home	MP306
2307	From cell phone	MP306
354	From work	MP306
261	From elsewhere	MP306
9222	No access to internet	MP306
7191	From home	MP307
16377	From cell phone	MP307
4323	From work	MP307
3747	From elsewhere	MP307
52239	No access to internet	MP307
1002	From home	MP311
3243	From cell phone	MP311
717	From work	MP311
756	From elsewhere	MP311
14832	No access to internet	MP311
9987	From home	MP312
22596	From cell phone	MP312
5922	From work	MP312
7815	From elsewhere	MP312
73551	No access to internet	MP312
6342	From home	MP313
11742	From cell phone	MP313
3861	From work	MP313
2289	From elsewhere	MP313
40737	No access to internet	MP313
846	From home	MP314
2865	From cell phone	MP314
381	From work	MP314
471	From elsewhere	MP314
9159	No access to internet	MP314
1689	From home	MP315
13617	From cell phone	MP315
1254	From work	MP315
7047	From elsewhere	MP315
52026	No access to internet	MP315
960	From home	MP316
9726	From cell phone	MP316
846	From work	MP316
4692	From elsewhere	MP316
45936	No access to internet	MP316
2043	From home	MP321
5127	From cell phone	MP321
1248	From work	MP321
906	From elsewhere	MP321
24030	No access to internet	MP321
10440	From home	MP322
33441	From cell phone	MP322
8058	From work	MP322
5754	From elsewhere	MP322
104085	No access to internet	MP322
1155	From home	MP323
4038	From cell phone	MP323
801	From work	MP323
543	From elsewhere	MP323
13029	No access to internet	MP323
2760	From home	MP324
16875	From cell phone	MP324
1464	From work	MP324
2859	From elsewhere	MP324
72246	No access to internet	MP324
2601	From home	MP325
22047	From cell phone	MP325
1854	From work	MP325
6585	From elsewhere	MP325
101106	No access to internet	MP325
720	From home	NW371
6630	From cell phone	NW371
633	From work	NW371
2721	From elsewhere	NW371
41358	No access to internet	NW371
7080	From home	NW372
24681	From cell phone	NW372
4992	From work	NW372
6615	From elsewhere	NW372
117360	No access to internet	NW372
10683	From home	NW373
33576	From cell phone	NW373
7884	From work	NW373
6465	From elsewhere	NW373
140436	No access to internet	NW373
888	From home	NW374
1899	From cell phone	NW374
396	From work	NW374
441	From elsewhere	NW374
11046	No access to internet	NW374
1869	From home	NW375
12222	From cell phone	NW375
1647	From work	NW375
2328	From elsewhere	NW375
57132	No access to internet	NW375
279	From home	NW381
2586	From cell phone	NW381
228	From work	NW381
516	From elsewhere	NW381
23283	No access to internet	NW381
1038	From home	NW382
4617	From cell phone	NW382
456	From work	NW382
912	From elsewhere	NW382
23613	No access to internet	NW382
3888	From home	NW383
13860	From cell phone	NW383
5484	From work	NW383
5136	From elsewhere	NW383
55869	No access to internet	NW383
1872	From home	NW384
6825	From cell phone	NW384
1170	From work	NW384
1203	From elsewhere	NW384
33429	No access to internet	NW384
1101	From home	NW385
4926	From cell phone	NW385
1158	From work	NW385
777	From elsewhere	NW385
32778	No access to internet	NW385
891	From home	NW392
3249	From cell phone	NW392
882	From work	NW392
936	From elsewhere	NW392
12612	No access to internet	NW392
465	From home	NW393
1794	From cell phone	NW393
267	From work	NW393
813	From elsewhere	NW393
11289	No access to internet	NW393
675	From home	NW394
5076	From cell phone	NW394
621	From work	NW394
1656	From elsewhere	NW394
40581	No access to internet	NW394
486	From home	NW396
2061	From cell phone	NW396
378	From work	NW396
288	From elsewhere	NW396
11721	No access to internet	NW396
519	From home	NW397
3108	From cell phone	NW397
408	From work	NW397
807	From elsewhere	NW397
23694	No access to internet	NW397
429	From home	NW401
2103	From cell phone	NW401
225	From work	NW401
273	From elsewhere	NW401
11535	No access to internet	NW401
5907	From home	NW402
9111	From cell phone	NW402
2805	From work	NW402
2997	From elsewhere	NW402
31716	No access to internet	NW402
7527	From home	NW403
16314	From cell phone	NW403
4404	From work	NW403
4791	From elsewhere	NW403
87408	No access to internet	NW403
807	From home	NW404
2778	From cell phone	NW404
435	From work	NW404
603	From elsewhere	NW404
15882	No access to internet	NW404
273	From home	NC061
516	From cell phone	NC061
153	From work	NC061
45	From elsewhere	NC061
2556	No access to internet	NC061
726	From home	NC062
1884	From cell phone	NC062
534	From work	NC062
252	From elsewhere	NC062
9798	No access to internet	NC062
87	From home	NC064
156	From cell phone	NC064
51	From work	NC064
60	From elsewhere	NC064
2790	No access to internet	NC064
423	From home	NC065
1020	From cell phone	NC065
177	From work	NC065
114	From elsewhere	NC065
4605	No access to internet	NC065
252	From home	NC066
462	From cell phone	NC066
90	From work	NC066
45	From elsewhere	NC066
2994	No access to internet	NC066
129	From home	NC067
495	From cell phone	NC067
144	From work	NC067
69	From elsewhere	NC067
2952	No access to internet	NC067
237	From home	NC071
705	From cell phone	NC071
114	From work	NC071
75	From elsewhere	NC071
3999	No access to internet	NC071
375	From home	NC072
1158	From cell phone	NC072
297	From work	NC072
207	From elsewhere	NC072
5805	No access to internet	NC072
576	From home	NC073
1158	From cell phone	NC073
390	From work	NC073
96	From elsewhere	NC073
8235	No access to internet	NC073
168	From home	NC074
420	From cell phone	NC074
87	From work	NC074
54	From elsewhere	NC074
2493	No access to internet	NC074
159	From home	NC075
321	From cell phone	NC075
78	From work	NC075
63	From elsewhere	NC075
2370	No access to internet	NC075
243	From home	NC076
570	From cell phone	NC076
93	From work	NC076
99	From elsewhere	NC076
3138	No access to internet	NC076
294	From home	NC077
651	From cell phone	NC077
126	From work	NC077
219	From elsewhere	NC077
4539	No access to internet	NC077
357	From home	NC078
990	From cell phone	NC078
279	From work	NC078
105	From elsewhere	NC078
7851	No access to internet	NC078
54	From home	NC081
225	From cell phone	NC081
42	From work	NC081
6	From elsewhere	NC081
1452	No access to internet	NC081
690	From home	NC082
1692	From cell phone	NC082
426	From work	NC082
285	From elsewhere	NC082
13608	No access to internet	NC082
1764	From home	NC083
2997	From cell phone	NC083
1041	From work	NC083
495	From elsewhere	NC083
16944	No access to internet	NC083
156	From home	NC084
624	From cell phone	NC084
84	From work	NC084
57	From elsewhere	NC084
3222	No access to internet	NC084
606	From home	NC085
1581	From cell phone	NC085
312	From work	NC085
237	From elsewhere	NC085
7098	No access to internet	NC085
408	From home	NC086
1005	From cell phone	NC086
225	From work	NC086
234	From elsewhere	NC086
3504	No access to internet	NC086
4824	From home	NC091
10506	From cell phone	NC091
3072	From work	NC091
2460	From elsewhere	NC091
39438	No access to internet	NC091
378	From home	NC092
2418	From cell phone	NC092
162	From work	NC092
153	From elsewhere	NC092
8856	No access to internet	NC092
177	From home	NC093
1071	From cell phone	NC093
87	From work	NC093
102	From elsewhere	NC093
4686	No access to internet	NC093
738	From home	NC094
2463	From cell phone	NC094
435	From work	NC094
396	From elsewhere	NC094
13512	No access to internet	NC094
378	From home	NC451
3108	From cell phone	NC451
300	From work	NC451
471	From elsewhere	NC451
19452	No access to internet	NC451
1116	From home	NC452
3507	From cell phone	NC452
852	From work	NC452
462	From elsewhere	NC452
20880	No access to internet	NC452
1020	From home	NC453
2343	From cell phone	NC453
828	From work	NC453
195	From elsewhere	NC453
6426	No access to internet	NC453
1761	From home	WC011
1980	From cell phone	WC011
672	From work	WC011
351	From elsewhere	WC011
14073	No access to internet	WC011
1014	From home	WC012
960	From cell phone	WC012
477	From work	WC012
156	From elsewhere	WC012
10908	No access to internet	WC012
1749	From home	WC013
1620	From cell phone	WC013
570	From work	WC013
258	From elsewhere	WC013
12078	No access to internet	WC013
3795	From home	WC014
4434	From cell phone	WC014
1161	From work	WC014
1104	From elsewhere	WC014
18342	No access to internet	WC014
3702	From home	WC015
3195	From cell phone	WC015
1209	From work	WC015
804	From elsewhere	WC015
20412	No access to internet	WC015
1800	From home	WC022
3141	From cell phone	WC022
1116	From work	WC022
399	From elsewhere	WC022
20961	No access to internet	WC022
7905	From home	WC023
10578	From cell phone	WC023
3018	From work	WC023
1728	From elsewhere	WC023
36540	No access to internet	WC023
7791	From home	WC024
7227	From cell phone	WC024
2472	From work	WC024
2181	From elsewhere	WC024
23754	No access to internet	WC024
3435	From home	WC025
6843	From cell phone	WC025
1527	From work	WC025
798	From elsewhere	WC025
29928	No access to internet	WC025
2460	From home	WC026
2892	From cell phone	WC026
741	From work	WC026
948	From elsewhere	WC026
18084	No access to internet	WC026
1263	From home	WC034
2064	From cell phone	WC034
420	From work	WC034
243	From elsewhere	WC034
6147	No access to internet	WC034
2586	From home	WC031
4674	From cell phone	WC031
948	From work	WC031
771	From elsewhere	WC031
19905	No access to internet	WC031
5892	From home	WC032
2871	From cell phone	WC032
855	From work	WC032
867	From elsewhere	WC032
17532	No access to internet	WC032
1506	From home	WC033
1188	From cell phone	WC033
399	From work	WC033
333	From elsewhere	WC033
6738	No access to internet	WC033
450	From home	WC041
645	From cell phone	WC041
129	From work	WC041
126	From elsewhere	WC041
4863	No access to internet	WC041
2196	From home	WC042
1878	From cell phone	WC042
438	From work	WC042
303	From elsewhere	WC042
11061	No access to internet	WC042
4776	From home	WC043
3261	From cell phone	WC043
1107	From work	WC043
858	From elsewhere	WC043
18027	No access to internet	WC043
7701	From home	WC044
7581	From cell phone	WC044
2571	From work	WC044
1902	From elsewhere	WC044
33792	No access to internet	WC044
2031	From home	WC045
2256	From cell phone	WC045
732	From work	WC045
483	From elsewhere	WC045
16410	No access to internet	WC045
2370	From home	WC047
2403	From cell phone	WC047
720	From work	WC047
1023	From elsewhere	WC047
10131	No access to internet	WC047
4038	From home	WC048
2448	From cell phone	WC048
864	From work	WC048
618	From elsewhere	WC048
13926	No access to internet	WC048
153	From home	WC051
273	From cell phone	WC051
66	From work	WC051
120	From elsewhere	WC051
1797	No access to internet	WC051
318	From home	WC052
540	From cell phone	WC052
72	From work	WC052
66	From elsewhere	WC052
2580	No access to internet	WC052
807	From home	WC053
1491	From cell phone	WC053
327	From work	WC053
438	From elsewhere	WC053
10023	No access to internet	WC053
197994	From home	CPT
175353	From cell phone	CPT
73941	From work	CPT
79149	From elsewhere	CPT
542136	No access to internet	CPT
\.


--
-- Data for Name: accesstointernet_province; Type: TABLE DATA; Schema: public; Owner: census
--

COPY accesstointernet_province (total, "access to internet", province_code) FROM stdin;
83721	From home	EC
215844	From cell phone	EC
47730	From work	EC
59451	From elsewhere	EC
1280643	No access to internet	EC
48771	From home	FS
136770	From cell phone	FS
27540	From work	FS
43554	From elsewhere	FS
566682	No access to internet	FS
483024	From home	GT
697068	From cell phone	GT
307512	From work	GT
327675	From elsewhere	GT
2093742	No access to internet	GT
190284	From home	KZN
449991	From cell phone	KZN
87081	From work	KZN
125163	From elsewhere	KZN
1686909	No access to internet	KZN
44778	From home	LIM
209799	From cell phone	LIM
31122	From work	LIM
59463	From elsewhere	LIM
1072941	No access to internet	LIM
55371	From home	MP
194199	From cell phone	MP
35772	From work	MP
52644	From elsewhere	MP
737502	No access to internet	MP
47124	From home	NW
157407	From cell phone	NW
34473	From work	NW
40269	From elsewhere	NW
782742	No access to internet	NW
16620	From home	NC
44055	From cell phone	NC
10470	From work	NC
7047	From elsewhere	NC
223212	No access to internet	NC
269493	From home	WC
251790	From cell phone	WC
96546	From work	WC
96030	From elsewhere	WC
920142	No access to internet	WC
\.


--
-- Data for Name: accesstointernet_ward; Type: TABLE DATA; Schema: public; Owner: census
--

COPY accesstointernet_ward (total, "access to internet", ward_code) FROM stdin;
126	From home	21001001
195	From cell phone	21001001
36	From work	21001001
12	From elsewhere	21001001
2133	No access to internet	21001001
384	From home	21001002
219	From cell phone	21001002
186	From work	21001002
96	From elsewhere	21001002
1197	No access to internet	21001002
60	From home	21001003
219	From cell phone	21001003
0	From work	21001003
12	From elsewhere	21001003
816	No access to internet	21001003
171	From home	21001004
363	From cell phone	21001004
72	From work	21001004
30	From elsewhere	21001004
1536	No access to internet	21001004
45	From home	21001005
54	From cell phone	21001005
18	From work	21001005
33	From elsewhere	21001005
1119	No access to internet	21001005
30	From home	21001006
183	From cell phone	21001006
36	From work	21001006
27	From elsewhere	21001006
1443	No access to internet	21001006
204	From home	21001007
135	From cell phone	21001007
24	From work	21001007
48	From elsewhere	21001007
1134	No access to internet	21001007
51	From home	21002001
153	From cell phone	21002001
21	From work	21002001
9	From elsewhere	21002001
939	No access to internet	21002001
207	From home	21002002
252	From cell phone	21002002
72	From work	21002002
84	From elsewhere	21002002
1230	No access to internet	21002002
45	From home	21002003
255	From cell phone	21002003
39	From work	21002003
66	From elsewhere	21002003
1617	No access to internet	21002003
63	From home	21002004
126	From cell phone	21002004
21	From work	21002004
81	From elsewhere	21002004
1293	No access to internet	21002004
114	From home	21002005
243	From cell phone	21002005
48	From work	21002005
117	From elsewhere	21002005
966	No access to internet	21002005
96	From home	21002006
327	From cell phone	21002006
27	From work	21002006
24	From elsewhere	21002006
1173	No access to internet	21002006
48	From home	21003001
90	From cell phone	21003001
24	From work	21003001
6	From elsewhere	21003001
504	No access to internet	21003001
18	From home	21003002
198	From cell phone	21003002
12	From work	21003002
15	From elsewhere	21003002
837	No access to internet	21003002
9	From home	21003003
33	From cell phone	21003003
0	From work	21003003
3	From elsewhere	21003003
444	No access to internet	21003003
21	From home	21003004
63	From cell phone	21003004
6	From work	21003004
9	From elsewhere	21003004
564	No access to internet	21003004
39	From home	21004001
84	From cell phone	21004001
33	From work	21004001
3	From elsewhere	21004001
615	No access to internet	21004001
48	From home	21004002
147	From cell phone	21004002
60	From work	21004002
33	From elsewhere	21004002
1650	No access to internet	21004002
252	From home	21004003
213	From cell phone	21004003
117	From work	21004003
21	From elsewhere	21004003
1095	No access to internet	21004003
600	From home	21004004
408	From cell phone	21004004
339	From work	21004004
120	From elsewhere	21004004
783	No access to internet	21004004
42	From home	21004005
453	From cell phone	21004005
57	From work	21004005
27	From elsewhere	21004005
1668	No access to internet	21004005
51	From home	21004006
324	From cell phone	21004006
33	From work	21004006
27	From elsewhere	21004006
801	No access to internet	21004006
21	From home	21004007
54	From cell phone	21004007
27	From work	21004007
9	From elsewhere	21004007
780	No access to internet	21004007
342	From home	21004008
216	From cell phone	21004008
192	From work	21004008
171	From elsewhere	21004008
462	No access to internet	21004008
27	From home	21004009
174	From cell phone	21004009
33	From work	21004009
18	From elsewhere	21004009
1158	No access to internet	21004009
81	From home	21004010
285	From cell phone	21004010
87	From work	21004010
60	From elsewhere	21004010
1605	No access to internet	21004010
18	From home	21004011
138	From cell phone	21004011
66	From work	21004011
39	From elsewhere	21004011
1629	No access to internet	21004011
54	From home	21004012
6	From cell phone	21004012
15	From work	21004012
9	From elsewhere	21004012
21	No access to internet	21004012
201	From home	21004013
99	From cell phone	21004013
60	From work	21004013
45	From elsewhere	21004013
1302	No access to internet	21004013
87	From home	21004014
156	From cell phone	21004014
57	From work	21004014
18	From elsewhere	21004014
1428	No access to internet	21004014
30	From home	21005001
285	From cell phone	21005001
33	From work	21005001
27	From elsewhere	21005001
1251	No access to internet	21005001
210	From home	21005002
270	From cell phone	21005002
72	From work	21005002
72	From elsewhere	21005002
1446	No access to internet	21005002
156	From home	21005003
336	From cell phone	21005003
57	From work	21005003
87	From elsewhere	21005003
1530	No access to internet	21005003
312	From home	21005004
207	From cell phone	21005004
54	From work	21005004
30	From elsewhere	21005004
1272	No access to internet	21005004
153	From home	21005005
261	From cell phone	21005005
60	From work	21005005
78	From elsewhere	21005005
1587	No access to internet	21005005
261	From home	21005006
315	From cell phone	21005006
78	From work	21005006
42	From elsewhere	21005006
1779	No access to internet	21005006
60	From home	21005007
111	From cell phone	21005007
21	From work	21005007
93	From elsewhere	21005007
1341	No access to internet	21005007
15	From home	21005008
132	From cell phone	21005008
24	From work	21005008
180	From elsewhere	21005008
1008	No access to internet	21005008
42	From home	21005009
267	From cell phone	21005009
33	From work	21005009
30	From elsewhere	21005009
1737	No access to internet	21005009
867	From home	21005010
222	From cell phone	21005010
165	From work	21005010
57	From elsewhere	21005010
573	No access to internet	21005010
51	From home	21006001
243	From cell phone	21006001
18	From work	21006001
57	From elsewhere	21006001
1443	No access to internet	21006001
108	From home	21006002
189	From cell phone	21006002
78	From work	21006002
141	From elsewhere	21006002
1470	No access to internet	21006002
57	From home	21006003
201	From cell phone	21006003
39	From work	21006003
42	From elsewhere	21006003
1758	No access to internet	21006003
30	From home	21006004
138	From cell phone	21006004
27	From work	21006004
96	From elsewhere	21006004
1203	No access to internet	21006004
6	From home	21006005
171	From cell phone	21006005
18	From work	21006005
15	From elsewhere	21006005
1299	No access to internet	21006005
45	From home	21006006
198	From cell phone	21006006
21	From work	21006006
27	From elsewhere	21006006
1254	No access to internet	21006006
135	From home	21006007
153	From cell phone	21006007
120	From work	21006007
60	From elsewhere	21006007
1218	No access to internet	21006007
69	From home	21006008
243	From cell phone	21006008
66	From work	21006008
39	From elsewhere	21006008
2205	No access to internet	21006008
48	From home	21007001
78	From cell phone	21007001
24	From work	21007001
6	From elsewhere	21007001
357	No access to internet	21007001
51	From home	21007002
111	From cell phone	21007002
12	From work	21007002
57	From elsewhere	21007002
1155	No access to internet	21007002
45	From home	21007003
147	From cell phone	21007003
27	From work	21007003
24	From elsewhere	21007003
1668	No access to internet	21007003
27	From home	21007004
69	From cell phone	21007004
6	From work	21007004
15	From elsewhere	21007004
690	No access to internet	21007004
69	From home	21008001
24	From cell phone	21008001
15	From work	21008001
3	From elsewhere	21008001
456	No access to internet	21008001
39	From home	21008002
117	From cell phone	21008002
27	From work	21008002
24	From elsewhere	21008002
576	No access to internet	21008002
186	From home	21008003
36	From cell phone	21008003
24	From work	21008003
12	From elsewhere	21008003
141	No access to internet	21008003
129	From home	21008004
531	From cell phone	21008004
54	From work	21008004
48	From elsewhere	21008004
2751	No access to internet	21008004
33	From home	21008005
60	From cell phone	21008005
15	From work	21008005
15	From elsewhere	21008005
654	No access to internet	21008005
48	From home	21008006
171	From cell phone	21008006
39	From work	21008006
30	From elsewhere	21008006
1845	No access to internet	21008006
159	From home	21008007
237	From cell phone	21008007
51	From work	21008007
30	From elsewhere	21008007
1920	No access to internet	21008007
1086	From home	21008008
390	From cell phone	21008008
189	From work	21008008
129	From elsewhere	21008008
1527	No access to internet	21008008
63	From home	21008009
237	From cell phone	21008009
27	From work	21008009
213	From elsewhere	21008009
2064	No access to internet	21008009
21	From home	21008010
96	From cell phone	21008010
12	From work	21008010
18	From elsewhere	21008010
1380	No access to internet	21008010
279	From home	21008011
165	From cell phone	21008011
102	From work	21008011
39	From elsewhere	21008011
615	No access to internet	21008011
495	From home	21008012
240	From cell phone	21008012
84	From work	21008012
48	From elsewhere	21008012
1176	No access to internet	21008012
102	From home	21008013
111	From cell phone	21008013
33	From work	21008013
9	From elsewhere	21008013
1161	No access to internet	21008013
294	From home	21008014
390	From cell phone	21008014
66	From work	21008014
48	From elsewhere	21008014
1713	No access to internet	21008014
303	From home	21008015
516	From cell phone	21008015
129	From work	21008015
66	From elsewhere	21008015
3222	No access to internet	21008015
54	From home	21009001
138	From cell phone	21009001
87	From work	21009001
27	From elsewhere	21009001
2451	No access to internet	21009001
129	From home	21009002
153	From cell phone	21009002
57	From work	21009002
39	From elsewhere	21009002
1299	No access to internet	21009002
42	From home	21009003
141	From cell phone	21009003
27	From work	21009003
201	From elsewhere	21009003
936	No access to internet	21009003
135	From home	21009004
186	From cell phone	21009004
57	From work	21009004
45	From elsewhere	21009004
1338	No access to internet	21009004
66	From home	21009005
273	From cell phone	21009005
30	From work	21009005
147	From elsewhere	21009005
1341	No access to internet	21009005
111	From home	21009006
123	From cell phone	21009006
93	From work	21009006
150	From elsewhere	21009006
1158	No access to internet	21009006
45	From home	21201001
357	From cell phone	21201001
30	From work	21201001
51	From elsewhere	21201001
900	No access to internet	21201001
15	From home	21201002
282	From cell phone	21201002
9	From work	21201002
57	From elsewhere	21201002
1611	No access to internet	21201002
18	From home	21201003
126	From cell phone	21201003
6	From work	21201003
45	From elsewhere	21201003
1524	No access to internet	21201003
3	From home	21201004
129	From cell phone	21201004
12	From work	21201004
15	From elsewhere	21201004
1491	No access to internet	21201004
21	From home	21201005
243	From cell phone	21201005
9	From work	21201005
15	From elsewhere	21201005
2037	No access to internet	21201005
9	From home	21201006
150	From cell phone	21201006
9	From work	21201006
84	From elsewhere	21201006
1620	No access to internet	21201006
3	From home	21201007
153	From cell phone	21201007
3	From work	21201007
21	From elsewhere	21201007
1380	No access to internet	21201007
12	From home	21201008
177	From cell phone	21201008
12	From work	21201008
15	From elsewhere	21201008
1425	No access to internet	21201008
66	From home	21201009
783	From cell phone	21201009
132	From work	21201009
156	From elsewhere	21201009
2562	No access to internet	21201009
12	From home	21201010
132	From cell phone	21201010
21	From work	21201010
15	From elsewhere	21201010
1671	No access to internet	21201010
3	From home	21201011
39	From cell phone	21201011
18	From work	21201011
18	From elsewhere	21201011
1947	No access to internet	21201011
18	From home	21201012
180	From cell phone	21201012
6	From work	21201012
15	From elsewhere	21201012
1608	No access to internet	21201012
15	From home	21201013
279	From cell phone	21201013
27	From work	21201013
42	From elsewhere	21201013
1518	No access to internet	21201013
9	From home	21201014
174	From cell phone	21201014
6	From work	21201014
3	From elsewhere	21201014
1773	No access to internet	21201014
21	From home	21201015
177	From cell phone	21201015
3	From work	21201015
117	From elsewhere	21201015
1953	No access to internet	21201015
21	From home	21201016
321	From cell phone	21201016
12	From work	21201016
21	From elsewhere	21201016
1716	No access to internet	21201016
9	From home	21201017
426	From cell phone	21201017
9	From work	21201017
24	From elsewhere	21201017
1293	No access to internet	21201017
18	From home	21201018
141	From cell phone	21201018
6	From work	21201018
3	From elsewhere	21201018
1014	No access to internet	21201018
24	From home	21201019
372	From cell phone	21201019
12	From work	21201019
6	From elsewhere	21201019
1830	No access to internet	21201019
3	From home	21201020
72	From cell phone	21201020
3	From work	21201020
3	From elsewhere	21201020
1638	No access to internet	21201020
3	From home	21201021
135	From cell phone	21201021
9	From work	21201021
6	From elsewhere	21201021
1773	No access to internet	21201021
3	From home	21201022
144	From cell phone	21201022
6	From work	21201022
12	From elsewhere	21201022
1908	No access to internet	21201022
24	From home	21201023
108	From cell phone	21201023
21	From work	21201023
21	From elsewhere	21201023
2109	No access to internet	21201023
63	From home	21201024
180	From cell phone	21201024
12	From work	21201024
72	From elsewhere	21201024
1473	No access to internet	21201024
63	From home	21201025
321	From cell phone	21201025
66	From work	21201025
60	From elsewhere	21201025
1647	No access to internet	21201025
9	From home	21201026
213	From cell phone	21201026
9	From work	21201026
9	From elsewhere	21201026
1656	No access to internet	21201026
15	From home	21201027
318	From cell phone	21201027
21	From work	21201027
84	From elsewhere	21201027
1293	No access to internet	21201027
18	From home	21201028
279	From cell phone	21201028
21	From work	21201028
9	From elsewhere	21201028
1635	No access to internet	21201028
15	From home	21201029
144	From cell phone	21201029
12	From work	21201029
21	From elsewhere	21201029
1647	No access to internet	21201029
12	From home	21201030
294	From cell phone	21201030
9	From work	21201030
21	From elsewhere	21201030
1806	No access to internet	21201030
6	From home	21201031
147	From cell phone	21201031
12	From work	21201031
93	From elsewhere	21201031
1428	No access to internet	21201031
144	From home	21202001
375	From cell phone	21202001
171	From work	21202001
99	From elsewhere	21202001
1644	No access to internet	21202001
75	From home	21202002
411	From cell phone	21202002
75	From work	21202002
156	From elsewhere	21202002
2421	No access to internet	21202002
81	From home	21202003
465	From cell phone	21202003
93	From work	21202003
156	From elsewhere	21202003
1443	No access to internet	21202003
114	From home	21202004
600	From cell phone	21202004
144	From work	21202004
204	From elsewhere	21202004
1659	No access to internet	21202004
99	From home	21202005
567	From cell phone	21202005
111	From work	21202005
195	From elsewhere	21202005
2184	No access to internet	21202005
30	From home	21202006
396	From cell phone	21202006
60	From work	21202006
156	From elsewhere	21202006
633	No access to internet	21202006
18	From home	21202007
297	From cell phone	21202007
30	From work	21202007
267	From elsewhere	21202007
1674	No access to internet	21202007
21	From home	21202008
294	From cell phone	21202008
18	From work	21202008
21	From elsewhere	21202008
1401	No access to internet	21202008
33	From home	21202009
252	From cell phone	21202009
18	From work	21202009
30	From elsewhere	21202009
1692	No access to internet	21202009
9	From home	21202010
87	From cell phone	21202010
3	From work	21202010
6	From elsewhere	21202010
1671	No access to internet	21202010
6	From home	21202011
198	From cell phone	21202011
15	From work	21202011
12	From elsewhere	21202011
2178	No access to internet	21202011
24	From home	21202012
279	From cell phone	21202012
21	From work	21202012
21	From elsewhere	21202012
1686	No access to internet	21202012
9	From home	21202013
246	From cell phone	21202013
18	From work	21202013
15	From elsewhere	21202013
1719	No access to internet	21202013
9	From home	21202014
177	From cell phone	21202014
15	From work	21202014
24	From elsewhere	21202014
1806	No access to internet	21202014
6	From home	21202015
99	From cell phone	21202015
9	From work	21202015
12	From elsewhere	21202015
1560	No access to internet	21202015
15	From home	21202016
192	From cell phone	21202016
21	From work	21202016
12	From elsewhere	21202016
1845	No access to internet	21202016
21	From home	21202017
114	From cell phone	21202017
12	From work	21202017
9	From elsewhere	21202017
1974	No access to internet	21202017
18	From home	21202018
207	From cell phone	21202018
36	From work	21202018
45	From elsewhere	21202018
2082	No access to internet	21202018
6	From home	21202019
171	From cell phone	21202019
9	From work	21202019
21	From elsewhere	21202019
1797	No access to internet	21202019
9	From home	21202020
267	From cell phone	21202020
24	From work	21202020
15	From elsewhere	21202020
1683	No access to internet	21202020
9	From home	21202021
198	From cell phone	21202021
12	From work	21202021
27	From elsewhere	21202021
1887	No access to internet	21202021
9	From home	21202022
93	From cell phone	21202022
12	From work	21202022
9	From elsewhere	21202022
2352	No access to internet	21202022
18	From home	21202023
135	From cell phone	21202023
21	From work	21202023
75	From elsewhere	21202023
1632	No access to internet	21202023
9	From home	21202024
165	From cell phone	21202024
6	From work	21202024
12	From elsewhere	21202024
2328	No access to internet	21202024
9	From home	21202025
240	From cell phone	21202025
30	From work	21202025
66	From elsewhere	21202025
2607	No access to internet	21202025
12	From home	21202026
129	From cell phone	21202026
15	From work	21202026
24	From elsewhere	21202026
2460	No access to internet	21202026
15	From home	21202027
69	From cell phone	21202027
15	From work	21202027
18	From elsewhere	21202027
2220	No access to internet	21202027
6	From home	21202028
168	From cell phone	21202028
9	From work	21202028
9	From elsewhere	21202028
2175	No access to internet	21202028
12	From home	21202029
93	From cell phone	21202029
15	From work	21202029
15	From elsewhere	21202029
2121	No access to internet	21202029
12	From home	21202030
129	From cell phone	21202030
39	From work	21202030
9	From elsewhere	21202030
1923	No access to internet	21202030
15	From home	21202031
135	From cell phone	21202031
9	From work	21202031
126	From elsewhere	21202031
2211	No access to internet	21202031
141	From home	21203001
201	From cell phone	21203001
48	From work	21203001
21	From elsewhere	21203001
1347	No access to internet	21203001
6	From home	21203002
144	From cell phone	21203002
6	From work	21203002
15	From elsewhere	21203002
1008	No access to internet	21203002
6	From home	21203003
45	From cell phone	21203003
6	From work	21203003
6	From elsewhere	21203003
1365	No access to internet	21203003
6	From home	21203004
141	From cell phone	21203004
6	From work	21203004
9	From elsewhere	21203004
1017	No access to internet	21203004
18	From home	21203005
198	From cell phone	21203005
6	From work	21203005
15	From elsewhere	21203005
1206	No access to internet	21203005
213	From home	21203006
120	From cell phone	21203006
42	From work	21203006
39	From elsewhere	21203006
1122	No access to internet	21203006
66	From home	21203007
234	From cell phone	21203007
33	From work	21203007
33	From elsewhere	21203007
1428	No access to internet	21203007
12	From home	21204001
189	From cell phone	21204001
6	From work	21204001
72	From elsewhere	21204001
1374	No access to internet	21204001
21	From home	21204002
210	From cell phone	21204002
54	From work	21204002
114	From elsewhere	21204002
1809	No access to internet	21204002
6	From home	21204003
57	From cell phone	21204003
12	From work	21204003
6	From elsewhere	21204003
1839	No access to internet	21204003
117	From home	21204004
258	From cell phone	21204004
54	From work	21204004
36	From elsewhere	21204004
1362	No access to internet	21204004
105	From home	21204005
165	From cell phone	21204005
15	From work	21204005
69	From elsewhere	21204005
1407	No access to internet	21204005
63	From home	21204006
327	From cell phone	21204006
42	From work	21204006
36	From elsewhere	21204006
1671	No access to internet	21204006
3	From home	21204007
162	From cell phone	21204007
3	From work	21204007
39	From elsewhere	21204007
1242	No access to internet	21204007
3	From home	21204008
123	From cell phone	21204008
18	From work	21204008
45	From elsewhere	21204008
1521	No access to internet	21204008
18	From home	21204009
48	From cell phone	21204009
6	From work	21204009
15	From elsewhere	21204009
1203	No access to internet	21204009
24	From home	21204010
129	From cell phone	21204010
36	From work	21204010
90	From elsewhere	21204010
1248	No access to internet	21204010
18	From home	21204011
201	From cell phone	21204011
6	From work	21204011
48	From elsewhere	21204011
1281	No access to internet	21204011
0	From home	21204012
228	From cell phone	21204012
3	From work	21204012
24	From elsewhere	21204012
1674	No access to internet	21204012
9	From home	21204013
201	From cell phone	21204013
3	From work	21204013
9	From elsewhere	21204013
1230	No access to internet	21204013
21	From home	21204014
177	From cell phone	21204014
21	From work	21204014
9	From elsewhere	21204014
1518	No access to internet	21204014
18	From home	21204015
87	From cell phone	21204015
12	From work	21204015
54	From elsewhere	21204015
1419	No access to internet	21204015
21	From home	21204016
156	From cell phone	21204016
18	From work	21204016
12	From elsewhere	21204016
1818	No access to internet	21204016
195	From home	21204017
348	From cell phone	21204017
144	From work	21204017
39	From elsewhere	21204017
930	No access to internet	21204017
6	From home	21204018
141	From cell phone	21204018
12	From work	21204018
123	From elsewhere	21204018
1242	No access to internet	21204018
12	From home	21204019
63	From cell phone	21204019
12	From work	21204019
24	From elsewhere	21204019
1473	No access to internet	21204019
9	From home	21204020
282	From cell phone	21204020
18	From work	21204020
39	From elsewhere	21204020
1281	No access to internet	21204020
9	From home	21206001
225	From cell phone	21206001
15	From work	21206001
21	From elsewhere	21206001
1431	No access to internet	21206001
99	From home	21206002
141	From cell phone	21206002
27	From work	21206002
30	From elsewhere	21206002
1389	No access to internet	21206002
12	From home	21206003
48	From cell phone	21206003
12	From work	21206003
12	From elsewhere	21206003
1704	No access to internet	21206003
6	From home	21206004
168	From cell phone	21206004
6	From work	21206004
78	From elsewhere	21206004
1299	No access to internet	21206004
18	From home	21206005
48	From cell phone	21206005
12	From work	21206005
3	From elsewhere	21206005
837	No access to internet	21206005
15	From home	21206006
222	From cell phone	21206006
15	From work	21206006
24	From elsewhere	21206006
1389	No access to internet	21206006
33	From home	21206007
378	From cell phone	21206007
15	From work	21206007
30	From elsewhere	21206007
1488	No access to internet	21206007
9	From home	21206008
249	From cell phone	21206008
9	From work	21206008
78	From elsewhere	21206008
1527	No access to internet	21206008
9	From home	21206009
216	From cell phone	21206009
3	From work	21206009
9	From elsewhere	21206009
1257	No access to internet	21206009
108	From home	21206010
531	From cell phone	21206010
48	From work	21206010
66	From elsewhere	21206010
873	No access to internet	21206010
27	From home	21206011
270	From cell phone	21206011
24	From work	21206011
30	From elsewhere	21206011
1488	No access to internet	21206011
12	From home	21206012
135	From cell phone	21206012
12	From work	21206012
21	From elsewhere	21206012
1242	No access to internet	21206012
12	From home	21206013
111	From cell phone	21206013
12	From work	21206013
12	From elsewhere	21206013
1722	No access to internet	21206013
6	From home	21207001
45	From cell phone	21207001
9	From work	21207001
9	From elsewhere	21207001
1398	No access to internet	21207001
21	From home	21207002
216	From cell phone	21207002
21	From work	21207002
27	From elsewhere	21207002
1440	No access to internet	21207002
30	From home	21207003
72	From cell phone	21207003
21	From work	21207003
48	From elsewhere	21207003
1365	No access to internet	21207003
102	From home	21207004
279	From cell phone	21207004
81	From work	21207004
57	From elsewhere	21207004
1773	No access to internet	21207004
42	From home	21207005
363	From cell phone	21207005
12	From work	21207005
39	From elsewhere	21207005
1386	No access to internet	21207005
75	From home	21207006
330	From cell phone	21207006
180	From work	21207006
174	From elsewhere	21207006
1485	No access to internet	21207006
12	From home	21207007
132	From cell phone	21207007
6	From work	21207007
6	From elsewhere	21207007
1425	No access to internet	21207007
69	From home	21207008
270	From cell phone	21207008
39	From work	21207008
24	From elsewhere	21207008
1584	No access to internet	21207008
9	From home	21207009
327	From cell phone	21207009
21	From work	21207009
6	From elsewhere	21207009
1926	No access to internet	21207009
99	From home	21207010
303	From cell phone	21207010
33	From work	21207010
21	From elsewhere	21207010
1212	No access to internet	21207010
12	From home	21207011
39	From cell phone	21207011
60	From work	21207011
27	From elsewhere	21207011
429	No access to internet	21207011
9	From home	21207012
264	From cell phone	21207012
9	From work	21207012
18	From elsewhere	21207012
1263	No access to internet	21207012
15	From home	21207013
378	From cell phone	21207013
12	From work	21207013
69	From elsewhere	21207013
1275	No access to internet	21207013
3	From home	21207014
90	From cell phone	21207014
6	From work	21207014
9	From elsewhere	21207014
1623	No access to internet	21207014
39	From home	21207015
165	From cell phone	21207015
72	From work	21207015
66	From elsewhere	21207015
1404	No access to internet	21207015
33	From home	21207016
168	From cell phone	21207016
33	From work	21207016
24	From elsewhere	21207016
1596	No access to internet	21207016
0	From home	21207017
120	From cell phone	21207017
3	From work	21207017
33	From elsewhere	21207017
1209	No access to internet	21207017
15	From home	21207018
114	From cell phone	21207018
24	From work	21207018
60	From elsewhere	21207018
1425	No access to internet	21207018
9	From home	21207019
75	From cell phone	21207019
12	From work	21207019
6	From elsewhere	21207019
1218	No access to internet	21207019
99	From home	21207020
222	From cell phone	21207020
87	From work	21207020
63	From elsewhere	21207020
1062	No access to internet	21207020
51	From home	21207021
351	From cell phone	21207021
36	From work	21207021
99	From elsewhere	21207021
1146	No access to internet	21207021
111	From home	21208001
258	From cell phone	21208001
78	From work	21208001
48	From elsewhere	21208001
981	No access to internet	21208001
18	From home	21208002
42	From cell phone	21208002
9	From work	21208002
3	From elsewhere	21208002
1140	No access to internet	21208002
96	From home	21208003
135	From cell phone	21208003
21	From work	21208003
6	From elsewhere	21208003
822	No access to internet	21208003
108	From home	21208004
204	From cell phone	21208004
24	From work	21208004
30	From elsewhere	21208004
2574	No access to internet	21208004
33	From home	21301001
330	From cell phone	21301001
18	From work	21301001
39	From elsewhere	21301001
1458	No access to internet	21301001
36	From home	21301002
165	From cell phone	21301002
42	From work	21301002
63	From elsewhere	21301002
1341	No access to internet	21301002
45	From home	21301003
144	From cell phone	21301003
21	From work	21301003
207	From elsewhere	21301003
1110	No access to internet	21301003
39	From home	21301004
201	From cell phone	21301004
51	From work	21301004
93	From elsewhere	21301004
1062	No access to internet	21301004
564	From home	21301005
519	From cell phone	21301005
330	From work	21301005
57	From elsewhere	21301005
1458	No access to internet	21301005
177	From home	21301006
201	From cell phone	21301006
36	From work	21301006
39	From elsewhere	21301006
2775	No access to internet	21301006
69	From home	21301007
315	From cell phone	21301007
30	From work	21301007
33	From elsewhere	21301007
1413	No access to internet	21301007
195	From home	21301008
258	From cell phone	21301008
84	From work	21301008
45	From elsewhere	21301008
1680	No access to internet	21301008
114	From home	21301009
207	From cell phone	21301009
18	From work	21301009
27	From elsewhere	21301009
1320	No access to internet	21301009
15	From home	21302001
204	From cell phone	21302001
27	From work	21302001
21	From elsewhere	21302001
1683	No access to internet	21302001
27	From home	21302002
81	From cell phone	21302002
12	From work	21302002
66	From elsewhere	21302002
1350	No access to internet	21302002
12	From home	21302003
270	From cell phone	21302003
21	From work	21302003
24	From elsewhere	21302003
1662	No access to internet	21302003
75	From home	21302004
282	From cell phone	21302004
48	From work	21302004
15	From elsewhere	21302004
1467	No access to internet	21302004
129	From home	21302005
270	From cell phone	21302005
21	From work	21302005
96	From elsewhere	21302005
1623	No access to internet	21302005
27	From home	21303001
225	From cell phone	21303001
21	From work	21303001
33	From elsewhere	21303001
873	No access to internet	21303001
144	From home	21303002
261	From cell phone	21303002
84	From work	21303002
51	From elsewhere	21303002
1344	No access to internet	21303002
39	From home	21303003
225	From cell phone	21303003
12	From work	21303003
18	From elsewhere	21303003
1446	No access to internet	21303003
18	From home	21303004
237	From cell phone	21303004
24	From work	21303004
30	From elsewhere	21303004
1116	No access to internet	21303004
30	From home	21304001
222	From cell phone	21304001
24	From work	21304001
93	From elsewhere	21304001
1773	No access to internet	21304001
15	From home	21304002
300	From cell phone	21304002
18	From work	21304002
33	From elsewhere	21304002
1530	No access to internet	21304002
27	From home	21304003
93	From cell phone	21304003
6	From work	21304003
60	From elsewhere	21304003
1593	No access to internet	21304003
120	From home	21304004
339	From cell phone	21304004
75	From work	21304004
318	From elsewhere	21304004
639	No access to internet	21304004
15	From home	21304005
123	From cell phone	21304005
21	From work	21304005
78	From elsewhere	21304005
1230	No access to internet	21304005
252	From home	21304006
522	From cell phone	21304006
159	From work	21304006
270	From elsewhere	21304006
864	No access to internet	21304006
81	From home	21304007
378	From cell phone	21304007
78	From work	21304007
258	From elsewhere	21304007
2298	No access to internet	21304007
42	From home	21304008
402	From cell phone	21304008
117	From work	21304008
168	From elsewhere	21304008
1143	No access to internet	21304008
66	From home	21304009
183	From cell phone	21304009
21	From work	21304009
45	From elsewhere	21304009
1341	No access to internet	21304009
33	From home	21304010
84	From cell phone	21304010
18	From work	21304010
66	From elsewhere	21304010
933	No access to internet	21304010
78	From home	21304011
417	From cell phone	21304011
33	From work	21304011
246	From elsewhere	21304011
1395	No access to internet	21304011
3	From home	21304012
216	From cell phone	21304012
9	From work	21304012
27	From elsewhere	21304012
1287	No access to internet	21304012
27	From home	21304013
207	From cell phone	21304013
12	From work	21304013
78	From elsewhere	21304013
1278	No access to internet	21304013
9	From home	21304014
240	From cell phone	21304014
6	From work	21304014
18	From elsewhere	21304014
1476	No access to internet	21304014
84	From home	21304015
180	From cell phone	21304015
69	From work	21304015
66	From elsewhere	21304015
915	No access to internet	21304015
57	From home	21304016
267	From cell phone	21304016
24	From work	21304016
78	From elsewhere	21304016
1245	No access to internet	21304016
30	From home	21304017
303	From cell phone	21304017
21	From work	21304017
120	From elsewhere	21304017
1377	No access to internet	21304017
132	From home	21304018
420	From cell phone	21304018
102	From work	21304018
177	From elsewhere	21304018
2616	No access to internet	21304018
111	From home	21304019
408	From cell phone	21304019
63	From work	21304019
252	From elsewhere	21304019
1368	No access to internet	21304019
111	From home	21304020
198	From cell phone	21304020
57	From work	21304020
255	From elsewhere	21304020
1095	No access to internet	21304020
51	From home	21304021
129	From cell phone	21304021
48	From work	21304021
129	From elsewhere	21304021
1308	No access to internet	21304021
126	From home	21304022
186	From cell phone	21304022
21	From work	21304022
144	From elsewhere	21304022
1248	No access to internet	21304022
57	From home	21304023
345	From cell phone	21304023
45	From work	21304023
90	From elsewhere	21304023
765	No access to internet	21304023
117	From home	21304024
396	From cell phone	21304024
135	From work	21304024
183	From elsewhere	21304024
738	No access to internet	21304024
162	From home	21304025
387	From cell phone	21304025
138	From work	21304025
258	From elsewhere	21304025
1431	No access to internet	21304025
669	From home	21304026
480	From cell phone	21304026
333	From work	21304026
249	From elsewhere	21304026
930	No access to internet	21304026
54	From home	21304027
192	From cell phone	21304027
36	From work	21304027
60	From elsewhere	21304027
1659	No access to internet	21304027
9	From home	21305001
183	From cell phone	21305001
3	From work	21305001
36	From elsewhere	21305001
1755	No access to internet	21305001
6	From home	21305002
90	From cell phone	21305002
18	From work	21305002
84	From elsewhere	21305002
1449	No access to internet	21305002
0	From home	21305003
30	From cell phone	21305003
3	From work	21305003
3	From elsewhere	21305003
2028	No access to internet	21305003
27	From home	21305004
129	From cell phone	21305004
18	From work	21305004
9	From elsewhere	21305004
2160	No access to internet	21305004
12	From home	21305005
135	From cell phone	21305005
15	From work	21305005
33	From elsewhere	21305005
1878	No access to internet	21305005
18	From home	21305006
216	From cell phone	21305006
12	From work	21305006
90	From elsewhere	21305006
1644	No access to internet	21305006
27	From home	21305007
183	From cell phone	21305007
9	From work	21305007
54	From elsewhere	21305007
1422	No access to internet	21305007
36	From home	21305008
297	From cell phone	21305008
36	From work	21305008
24	From elsewhere	21305008
1872	No access to internet	21305008
3	From home	21305009
93	From cell phone	21305009
6	From work	21305009
138	From elsewhere	21305009
1110	No access to internet	21305009
0	From home	21305010
177	From cell phone	21305010
3	From work	21305010
3	From elsewhere	21305010
1506	No access to internet	21305010
0	From home	21305011
105	From cell phone	21305011
3	From work	21305011
30	From elsewhere	21305011
1170	No access to internet	21305011
6	From home	21305012
129	From cell phone	21305012
18	From work	21305012
21	From elsewhere	21305012
1551	No access to internet	21305012
15	From home	21305013
210	From cell phone	21305013
12	From work	21305013
21	From elsewhere	21305013
1719	No access to internet	21305013
84	From home	21305014
624	From cell phone	21305014
147	From work	21305014
72	From elsewhere	21305014
2118	No access to internet	21305014
21	From home	21305015
240	From cell phone	21305015
21	From work	21305015
102	From elsewhere	21305015
1494	No access to internet	21305015
15	From home	21305016
183	From cell phone	21305016
12	From work	21305016
18	From elsewhere	21305016
2004	No access to internet	21305016
21	From home	21305017
168	From cell phone	21305017
18	From work	21305017
39	From elsewhere	21305017
1662	No access to internet	21305017
9	From home	21305018
72	From cell phone	21305018
6	From work	21305018
9	From elsewhere	21305018
1956	No access to internet	21305018
6	From home	21305019
54	From cell phone	21305019
6	From work	21305019
6	From elsewhere	21305019
1398	No access to internet	21305019
0	From home	21305020
66	From cell phone	21305020
12	From work	21305020
6	From elsewhere	21305020
1554	No access to internet	21305020
6	From home	21305021
126	From cell phone	21305021
6	From work	21305021
54	From elsewhere	21305021
1926	No access to internet	21305021
9	From home	21306001
123	From cell phone	21306001
9	From work	21306001
6	From elsewhere	21306001
1944	No access to internet	21306001
9	From home	21306002
114	From cell phone	21306002
3	From work	21306002
36	From elsewhere	21306002
1536	No access to internet	21306002
15	From home	21306003
297	From cell phone	21306003
6	From work	21306003
9	From elsewhere	21306003
1440	No access to internet	21306003
42	From home	21306004
258	From cell phone	21306004
75	From work	21306004
81	From elsewhere	21306004
1647	No access to internet	21306004
18	From home	21306005
243	From cell phone	21306005
18	From work	21306005
114	From elsewhere	21306005
1836	No access to internet	21306005
6	From home	21306006
54	From cell phone	21306006
6	From work	21306006
9	From elsewhere	21306006
1983	No access to internet	21306006
12	From home	21306007
219	From cell phone	21306007
15	From work	21306007
42	From elsewhere	21306007
1791	No access to internet	21306007
9	From home	21306008
246	From cell phone	21306008
18	From work	21306008
9	From elsewhere	21306008
1614	No access to internet	21306008
9	From home	21306009
327	From cell phone	21306009
3	From work	21306009
81	From elsewhere	21306009
1419	No access to internet	21306009
12	From home	21306010
198	From cell phone	21306010
6	From work	21306010
42	From elsewhere	21306010
1263	No access to internet	21306010
186	From home	21306011
129	From cell phone	21306011
12	From work	21306011
102	From elsewhere	21306011
1554	No access to internet	21306011
15	From home	21306012
102	From cell phone	21306012
9	From work	21306012
3	From elsewhere	21306012
1638	No access to internet	21306012
12	From home	21306013
249	From cell phone	21306013
6	From work	21306013
21	From elsewhere	21306013
1302	No access to internet	21306013
48	From home	21306014
243	From cell phone	21306014
39	From work	21306014
48	From elsewhere	21306014
1581	No access to internet	21306014
33	From home	21306015
213	From cell phone	21306015
12	From work	21306015
42	From elsewhere	21306015
1437	No access to internet	21306015
69	From home	21306016
258	From cell phone	21306016
51	From work	21306016
45	From elsewhere	21306016
1371	No access to internet	21306016
9	From home	21306017
339	From cell phone	21306017
12	From work	21306017
15	From elsewhere	21306017
1188	No access to internet	21306017
9	From home	21307001
171	From cell phone	21307001
9	From work	21307001
30	From elsewhere	21307001
1254	No access to internet	21307001
6	From home	21307002
201	From cell phone	21307002
6	From work	21307002
6	From elsewhere	21307002
1434	No access to internet	21307002
6	From home	21307003
108	From cell phone	21307003
18	From work	21307003
54	From elsewhere	21307003
1281	No access to internet	21307003
3	From home	21307004
141	From cell phone	21307004
3	From work	21307004
0	From elsewhere	21307004
1554	No access to internet	21307004
3	From home	21307005
144	From cell phone	21307005
9	From work	21307005
18	From elsewhere	21307005
1299	No access to internet	21307005
12	From home	21307006
258	From cell phone	21307006
9	From work	21307006
24	From elsewhere	21307006
1512	No access to internet	21307006
12	From home	21307007
96	From cell phone	21307007
12	From work	21307007
18	From elsewhere	21307007
1761	No access to internet	21307007
12	From home	21307008
258	From cell phone	21307008
15	From work	21307008
15	From elsewhere	21307008
1755	No access to internet	21307008
24	From home	21307009
378	From cell phone	21307009
21	From work	21307009
168	From elsewhere	21307009
1323	No access to internet	21307009
36	From home	21307010
429	From cell phone	21307010
72	From work	21307010
189	From elsewhere	21307010
2664	No access to internet	21307010
87	From home	21307011
306	From cell phone	21307011
81	From work	21307011
114	From elsewhere	21307011
975	No access to internet	21307011
3	From home	21307012
186	From cell phone	21307012
12	From work	21307012
9	From elsewhere	21307012
1650	No access to internet	21307012
9	From home	21307013
138	From cell phone	21307013
0	From work	21307013
9	From elsewhere	21307013
1602	No access to internet	21307013
9	From home	21307014
279	From cell phone	21307014
6	From work	21307014
90	From elsewhere	21307014
1446	No access to internet	21307014
6	From home	21307015
174	From cell phone	21307015
12	From work	21307015
15	From elsewhere	21307015
1845	No access to internet	21307015
6	From home	21307016
75	From cell phone	21307016
12	From work	21307016
9	From elsewhere	21307016
1791	No access to internet	21307016
12	From home	21307017
249	From cell phone	21307017
54	From work	21307017
57	From elsewhere	21307017
1452	No access to internet	21307017
12	From home	21307018
180	From cell phone	21307018
27	From work	21307018
78	From elsewhere	21307018
1839	No access to internet	21307018
3	From home	21307019
417	From cell phone	21307019
18	From work	21307019
9	From elsewhere	21307019
1398	No access to internet	21307019
6	From home	21307020
147	From cell phone	21307020
12	From work	21307020
9	From elsewhere	21307020
1425	No access to internet	21307020
123	From home	21308001
213	From cell phone	21308001
99	From work	21308001
33	From elsewhere	21308001
1701	No access to internet	21308001
27	From home	21308002
117	From cell phone	21308002
39	From work	21308002
90	From elsewhere	21308002
1518	No access to internet	21308002
27	From home	21308003
276	From cell phone	21308003
9	From work	21308003
30	From elsewhere	21308003
1509	No access to internet	21308003
84	From home	21308004
366	From cell phone	21308004
54	From work	21308004
81	From elsewhere	21308004
1263	No access to internet	21308004
81	From home	21308005
582	From cell phone	21308005
21	From work	21308005
225	From elsewhere	21308005
1386	No access to internet	21308005
15	From home	21308006
279	From cell phone	21308006
9	From work	21308006
15	From elsewhere	21308006
1269	No access to internet	21308006
0	From home	21308007
180	From cell phone	21308007
0	From work	21308007
78	From elsewhere	21308007
1110	No access to internet	21308007
12	From home	21308008
39	From cell phone	21308008
9	From work	21308008
6	From elsewhere	21308008
1629	No access to internet	21308008
18	From home	21308009
177	From cell phone	21308009
3	From work	21308009
30	From elsewhere	21308009
1311	No access to internet	21308009
18	From home	21401001
171	From cell phone	21401001
18	From work	21401001
6	From elsewhere	21401001
2343	No access to internet	21401001
72	From home	21401002
285	From cell phone	21401002
36	From work	21401002
60	From elsewhere	21401002
2811	No access to internet	21401002
111	From home	21401003
243	From cell phone	21401003
39	From work	21401003
21	From elsewhere	21401003
1887	No access to internet	21401003
105	From home	21401004
273	From cell phone	21401004
33	From work	21401004
42	From elsewhere	21401004
1449	No access to internet	21401004
51	From home	21401005
246	From cell phone	21401005
12	From work	21401005
63	From elsewhere	21401005
1839	No access to internet	21401005
6	From home	21401006
246	From cell phone	21401006
6	From work	21401006
24	From elsewhere	21401006
1329	No access to internet	21401006
9	From home	21401007
210	From cell phone	21401007
12	From work	21401007
27	From elsewhere	21401007
1983	No access to internet	21401007
3	From home	21401008
42	From cell phone	21401008
9	From work	21401008
0	From elsewhere	21401008
1683	No access to internet	21401008
102	From home	21401009
576	From cell phone	21401009
78	From work	21401009
63	From elsewhere	21401009
2892	No access to internet	21401009
9	From home	21401010
66	From cell phone	21401010
15	From work	21401010
12	From elsewhere	21401010
2034	No access to internet	21401010
21	From home	21401011
165	From cell phone	21401011
18	From work	21401011
33	From elsewhere	21401011
1386	No access to internet	21401011
9	From home	21401012
132	From cell phone	21401012
9	From work	21401012
12	From elsewhere	21401012
1908	No access to internet	21401012
24	From home	21401013
165	From cell phone	21401013
15	From work	21401013
39	From elsewhere	21401013
2073	No access to internet	21401013
3	From home	21401014
165	From cell phone	21401014
12	From work	21401014
15	From elsewhere	21401014
1440	No access to internet	21401014
12	From home	21401015
156	From cell phone	21401015
15	From work	21401015
96	From elsewhere	21401015
2139	No access to internet	21401015
21	From home	21401016
219	From cell phone	21401016
9	From work	21401016
24	From elsewhere	21401016
1725	No access to internet	21401016
48	From home	21401017
333	From cell phone	21401017
39	From work	21401017
21	From elsewhere	21401017
1680	No access to internet	21401017
6	From home	21402001
96	From cell phone	21402001
6	From work	21402001
24	From elsewhere	21402001
1617	No access to internet	21402001
27	From home	21402002
333	From cell phone	21402002
21	From work	21402002
39	From elsewhere	21402002
2817	No access to internet	21402002
6	From home	21402003
105	From cell phone	21402003
6	From work	21402003
99	From elsewhere	21402003
1239	No access to internet	21402003
9	From home	21402004
132	From cell phone	21402004
12	From work	21402004
12	From elsewhere	21402004
1335	No access to internet	21402004
0	From home	21402005
15	From cell phone	21402005
0	From work	21402005
3	From elsewhere	21402005
1197	No access to internet	21402005
6	From home	21402006
78	From cell phone	21402006
6	From work	21402006
9	From elsewhere	21402006
1659	No access to internet	21402006
39	From home	21402007
162	From cell phone	21402007
6	From work	21402007
3	From elsewhere	21402007
1773	No access to internet	21402007
51	From home	21402008
576	From cell phone	21402008
57	From work	21402008
75	From elsewhere	21402008
2169	No access to internet	21402008
27	From home	21402009
456	From cell phone	21402009
9	From work	21402009
93	From elsewhere	21402009
1266	No access to internet	21402009
87	From home	21402010
366	From cell phone	21402010
66	From work	21402010
51	From elsewhere	21402010
2151	No access to internet	21402010
21	From home	21402011
366	From cell phone	21402011
30	From work	21402011
84	From elsewhere	21402011
1974	No access to internet	21402011
9	From home	21402012
282	From cell phone	21402012
6	From work	21402012
15	From elsewhere	21402012
1479	No access to internet	21402012
15	From home	21402013
222	From cell phone	21402013
9	From work	21402013
42	From elsewhere	21402013
1674	No access to internet	21402013
57	From home	21402014
552	From cell phone	21402014
39	From work	21402014
24	From elsewhere	21402014
1488	No access to internet	21402014
45	From home	21402015
153	From cell phone	21402015
6	From work	21402015
30	From elsewhere	21402015
1674	No access to internet	21402015
63	From home	21402016
81	From cell phone	21402016
12	From work	21402016
6	From elsewhere	21402016
1434	No access to internet	21402016
9	From home	21402017
279	From cell phone	21402017
12	From work	21402017
45	From elsewhere	21402017
1482	No access to internet	21402017
18	From home	21402018
336	From cell phone	21402018
21	From work	21402018
183	From elsewhere	21402018
1188	No access to internet	21402018
69	From home	21402019
423	From cell phone	21402019
69	From work	21402019
15	From elsewhere	21402019
1605	No access to internet	21402019
114	From home	21403001
219	From cell phone	21403001
21	From work	21403001
30	From elsewhere	21403001
1752	No access to internet	21403001
90	From home	21403002
330	From cell phone	21403002
63	From work	21403002
63	From elsewhere	21403002
1623	No access to internet	21403002
45	From home	21403003
294	From cell phone	21403003
39	From work	21403003
48	From elsewhere	21403003
972	No access to internet	21403003
249	From home	21403004
414	From cell phone	21403004
174	From work	21403004
81	From elsewhere	21403004
1197	No access to internet	21403004
192	From home	21403005
396	From cell phone	21403005
153	From work	21403005
102	From elsewhere	21403005
888	No access to internet	21403005
48	From home	21403006
219	From cell phone	21403006
45	From work	21403006
57	From elsewhere	21403006
2190	No access to internet	21403006
102	From home	21404001
234	From cell phone	21404001
54	From work	21404001
90	From elsewhere	21404001
1464	No access to internet	21404001
15	From home	21404002
120	From cell phone	21404002
12	From work	21404002
18	From elsewhere	21404002
1173	No access to internet	21404002
339	From home	21404003
315	From cell phone	21404003
156	From work	21404003
66	From elsewhere	21404003
2253	No access to internet	21404003
39	From home	21404004
90	From cell phone	21404004
45	From work	21404004
60	From elsewhere	21404004
1233	No access to internet	21404004
63	From home	21404005
180	From cell phone	21404005
21	From work	21404005
27	From elsewhere	21404005
1608	No access to internet	21404005
48	From home	21503001
63	From cell phone	21503001
9	From work	21503001
12	From elsewhere	21503001
909	No access to internet	21503001
6	From home	21503002
54	From cell phone	21503002
12	From work	21503002
45	From elsewhere	21503002
1302	No access to internet	21503002
0	From home	21503003
141	From cell phone	21503003
12	From work	21503003
6	From elsewhere	21503003
894	No access to internet	21503003
21	From home	21503004
126	From cell phone	21503004
12	From work	21503004
78	From elsewhere	21503004
1389	No access to internet	21503004
3	From home	21503005
111	From cell phone	21503005
21	From work	21503005
18	From elsewhere	21503005
1632	No access to internet	21503005
78	From home	21503006
573	From cell phone	21503006
81	From work	21503006
33	From elsewhere	21503006
1968	No access to internet	21503006
12	From home	21503007
105	From cell phone	21503007
18	From work	21503007
129	From elsewhere	21503007
1566	No access to internet	21503007
6	From home	21503008
60	From cell phone	21503008
6	From work	21503008
9	From elsewhere	21503008
1323	No access to internet	21503008
33	From home	21503009
333	From cell phone	21503009
48	From work	21503009
75	From elsewhere	21503009
1389	No access to internet	21503009
21	From home	21503010
63	From cell phone	21503010
6	From work	21503010
3	From elsewhere	21503010
1524	No access to internet	21503010
42	From home	21503011
132	From cell phone	21503011
18	From work	21503011
24	From elsewhere	21503011
1617	No access to internet	21503011
3	From home	21503012
111	From cell phone	21503012
9	From work	21503012
72	From elsewhere	21503012
1365	No access to internet	21503012
21	From home	21503013
255	From cell phone	21503013
27	From work	21503013
39	From elsewhere	21503013
1536	No access to internet	21503013
24	From home	21503014
411	From cell phone	21503014
69	From work	21503014
246	From elsewhere	21503014
1209	No access to internet	21503014
129	From home	21503015
489	From cell phone	21503015
123	From work	21503015
108	From elsewhere	21503015
1536	No access to internet	21503015
6	From home	21503016
291	From cell phone	21503016
9	From work	21503016
30	From elsewhere	21503016
1386	No access to internet	21503016
45	From home	21503017
291	From cell phone	21503017
18	From work	21503017
12	From elsewhere	21503017
1203	No access to internet	21503017
12	From home	21503018
78	From cell phone	21503018
9	From work	21503018
192	From elsewhere	21503018
1308	No access to internet	21503018
39	From home	21503019
531	From cell phone	21503019
42	From work	21503019
36	From elsewhere	21503019
1890	No access to internet	21503019
33	From home	21503020
360	From cell phone	21503020
21	From work	21503020
309	From elsewhere	21503020
1599	No access to internet	21503020
36	From home	21503021
240	From cell phone	21503021
51	From work	21503021
111	From elsewhere	21503021
2232	No access to internet	21503021
33	From home	21503022
168	From cell phone	21503022
33	From work	21503022
39	From elsewhere	21503022
1905	No access to internet	21503022
18	From home	21503023
213	From cell phone	21503023
15	From work	21503023
39	From elsewhere	21503023
1254	No access to internet	21503023
3	From home	21503024
36	From cell phone	21503024
3	From work	21503024
3	From elsewhere	21503024
1431	No access to internet	21503024
6	From home	21503025
90	From cell phone	21503025
21	From work	21503025
6	From elsewhere	21503025
1494	No access to internet	21503025
15	From home	21503026
270	From cell phone	21503026
12	From work	21503026
15	From elsewhere	21503026
1470	No access to internet	21503026
18	From home	21503027
189	From cell phone	21503027
9	From work	21503027
21	From elsewhere	21503027
1098	No access to internet	21503027
9	From home	21503028
228	From cell phone	21503028
18	From work	21503028
21	From elsewhere	21503028
1758	No access to internet	21503028
24	From home	21503029
474	From cell phone	21503029
27	From work	21503029
57	From elsewhere	21503029
1467	No access to internet	21503029
6	From home	21503030
246	From cell phone	21503030
9	From work	21503030
33	From elsewhere	21503030
1656	No access to internet	21503030
12	From home	21503031
147	From cell phone	21503031
18	From work	21503031
6	From elsewhere	21503031
1656	No access to internet	21503031
9	From home	21504001
51	From cell phone	21504001
9	From work	21504001
18	From elsewhere	21504001
1935	No access to internet	21504001
12	From home	21504002
141	From cell phone	21504002
24	From work	21504002
9	From elsewhere	21504002
1917	No access to internet	21504002
30	From home	21504003
237	From cell phone	21504003
15	From work	21504003
66	From elsewhere	21504003
1563	No access to internet	21504003
12	From home	21504004
210	From cell phone	21504004
21	From work	21504004
45	From elsewhere	21504004
1362	No access to internet	21504004
30	From home	21504005
219	From cell phone	21504005
6	From work	21504005
6	From elsewhere	21504005
975	No access to internet	21504005
63	From home	21504006
282	From cell phone	21504006
87	From work	21504006
135	From elsewhere	21504006
1482	No access to internet	21504006
36	From home	21504007
324	From cell phone	21504007
6	From work	21504007
183	From elsewhere	21504007
1170	No access to internet	21504007
9	From home	21504008
231	From cell phone	21504008
15	From work	21504008
18	From elsewhere	21504008
1128	No access to internet	21504008
3	From home	21504009
126	From cell phone	21504009
3	From work	21504009
9	From elsewhere	21504009
1098	No access to internet	21504009
12	From home	21504010
252	From cell phone	21504010
15	From work	21504010
84	From elsewhere	21504010
1344	No access to internet	21504010
3	From home	21504011
195	From cell phone	21504011
15	From work	21504011
27	From elsewhere	21504011
1581	No access to internet	21504011
18	From home	21504012
171	From cell phone	21504012
9	From work	21504012
30	From elsewhere	21504012
1608	No access to internet	21504012
6	From home	21504013
114	From cell phone	21504013
12	From work	21504013
24	From elsewhere	21504013
1284	No access to internet	21504013
24	From home	21504014
87	From cell phone	21504014
3	From work	21504014
6	From elsewhere	21504014
1218	No access to internet	21504014
60	From home	21504015
36	From cell phone	21504015
6	From work	21504015
15	From elsewhere	21504015
591	No access to internet	21504015
15	From home	21504016
147	From cell phone	21504016
12	From work	21504016
21	From elsewhere	21504016
1296	No access to internet	21504016
15	From home	21504017
309	From cell phone	21504017
9	From work	21504017
15	From elsewhere	21504017
606	No access to internet	21504017
3	From home	21504018
66	From cell phone	21504018
15	From work	21504018
3	From elsewhere	21504018
1473	No access to internet	21504018
6	From home	21504019
186	From cell phone	21504019
6	From work	21504019
63	From elsewhere	21504019
1563	No access to internet	21504019
6	From home	21504020
156	From cell phone	21504020
21	From work	21504020
18	From elsewhere	21504020
1521	No access to internet	21504020
9	From home	21505001
93	From cell phone	21505001
9	From work	21505001
15	From elsewhere	21505001
1815	No access to internet	21505001
3	From home	21505002
294	From cell phone	21505002
9	From work	21505002
36	From elsewhere	21505002
1254	No access to internet	21505002
9	From home	21505003
93	From cell phone	21505003
6	From work	21505003
9	From elsewhere	21505003
1515	No access to internet	21505003
9	From home	21505004
420	From cell phone	21505004
12	From work	21505004
15	From elsewhere	21505004
1290	No access to internet	21505004
6	From home	21505005
117	From cell phone	21505005
12	From work	21505005
12	From elsewhere	21505005
1641	No access to internet	21505005
21	From home	21505006
288	From cell phone	21505006
27	From work	21505006
9	From elsewhere	21505006
1797	No access to internet	21505006
60	From home	21505007
327	From cell phone	21505007
123	From work	21505007
30	From elsewhere	21505007
1638	No access to internet	21505007
15	From home	21505008
339	From cell phone	21505008
12	From work	21505008
147	From elsewhere	21505008
1152	No access to internet	21505008
69	From home	21505009
234	From cell phone	21505009
27	From work	21505009
135	From elsewhere	21505009
1818	No access to internet	21505009
48	From home	21505010
441	From cell phone	21505010
33	From work	21505010
63	From elsewhere	21505010
1692	No access to internet	21505010
60	From home	21505011
582	From cell phone	21505011
54	From work	21505011
42	From elsewhere	21505011
2577	No access to internet	21505011
51	From home	21505012
510	From cell phone	21505012
66	From work	21505012
216	From elsewhere	21505012
2433	No access to internet	21505012
18	From home	21505013
216	From cell phone	21505013
33	From work	21505013
27	From elsewhere	21505013
1536	No access to internet	21505013
9	From home	21505014
66	From cell phone	21505014
9	From work	21505014
60	From elsewhere	21505014
1470	No access to internet	21505014
48	From home	21505015
402	From cell phone	21505015
51	From work	21505015
33	From elsewhere	21505015
1920	No access to internet	21505015
6	From home	21505016
129	From cell phone	21505016
12	From work	21505016
12	From elsewhere	21505016
1362	No access to internet	21505016
75	From home	21505017
399	From cell phone	21505017
9	From work	21505017
30	From elsewhere	21505017
1530	No access to internet	21505017
33	From home	21505018
321	From cell phone	21505018
15	From work	21505018
18	From elsewhere	21505018
1218	No access to internet	21505018
6	From home	21505019
129	From cell phone	21505019
18	From work	21505019
6	From elsewhere	21505019
2106	No access to internet	21505019
99	From home	21505020
156	From cell phone	21505020
6	From work	21505020
45	From elsewhere	21505020
1839	No access to internet	21505020
21	From home	21505021
213	From cell phone	21505021
54	From work	21505021
150	From elsewhere	21505021
1395	No access to internet	21505021
3	From home	21505022
237	From cell phone	21505022
21	From work	21505022
15	From elsewhere	21505022
1851	No access to internet	21505022
12	From home	21505023
99	From cell phone	21505023
30	From work	21505023
15	From elsewhere	21505023
1695	No access to internet	21505023
3	From home	21505024
225	From cell phone	21505024
6	From work	21505024
6	From elsewhere	21505024
1320	No access to internet	21505024
21	From home	21505025
63	From cell phone	21505025
15	From work	21505025
9	From elsewhere	21505025
1683	No access to internet	21505025
9	From home	21505026
366	From cell phone	21505026
21	From work	21505026
18	From elsewhere	21505026
1893	No access to internet	21505026
6	From home	21505027
162	From cell phone	21505027
3	From work	21505027
15	From elsewhere	21505027
1149	No access to internet	21505027
3	From home	21505028
57	From cell phone	21505028
6	From work	21505028
6	From elsewhere	21505028
1278	No access to internet	21505028
15	From home	21505029
153	From cell phone	21505029
18	From work	21505029
108	From elsewhere	21505029
1743	No access to internet	21505029
12	From home	21505030
141	From cell phone	21505030
15	From work	21505030
12	From elsewhere	21505030
2058	No access to internet	21505030
15	From home	21505031
321	From cell phone	21505031
6	From work	21505031
27	From elsewhere	21505031
1557	No access to internet	21505031
0	From home	21506001
27	From cell phone	21506001
18	From work	21506001
6	From elsewhere	21506001
1365	No access to internet	21506001
27	From home	21506002
147	From cell phone	21506002
24	From work	21506002
18	From elsewhere	21506002
1614	No access to internet	21506002
12	From home	21506003
201	From cell phone	21506003
15	From work	21506003
81	From elsewhere	21506003
1518	No access to internet	21506003
18	From home	21506004
120	From cell phone	21506004
12	From work	21506004
129	From elsewhere	21506004
1251	No access to internet	21506004
12	From home	21506005
192	From cell phone	21506005
18	From work	21506005
51	From elsewhere	21506005
1050	No access to internet	21506005
45	From home	21506006
363	From cell phone	21506006
48	From work	21506006
27	From elsewhere	21506006
2316	No access to internet	21506006
18	From home	21506007
123	From cell phone	21506007
3	From work	21506007
9	From elsewhere	21506007
939	No access to internet	21506007
3	From home	21506008
63	From cell phone	21506008
24	From work	21506008
15	From elsewhere	21506008
1539	No access to internet	21506008
18	From home	21506009
342	From cell phone	21506009
6	From work	21506009
3	From elsewhere	21506009
924	No access to internet	21506009
6	From home	21506010
213	From cell phone	21506010
3	From work	21506010
18	From elsewhere	21506010
1119	No access to internet	21506010
3	From home	21506011
489	From cell phone	21506011
9	From work	21506011
30	From elsewhere	21506011
1134	No access to internet	21506011
48	From home	21506012
132	From cell phone	21506012
18	From work	21506012
15	From elsewhere	21506012
1392	No access to internet	21506012
3	From home	21506013
180	From cell phone	21506013
12	From work	21506013
108	From elsewhere	21506013
1545	No access to internet	21506013
24	From home	21506014
156	From cell phone	21506014
12	From work	21506014
9	From elsewhere	21506014
1659	No access to internet	21506014
69	From home	21506015
732	From cell phone	21506015
36	From work	21506015
30	From elsewhere	21506015
2043	No access to internet	21506015
9	From home	21506016
99	From cell phone	21506016
3	From work	21506016
0	From elsewhere	21506016
1536	No access to internet	21506016
12	From home	21506017
150	From cell phone	21506017
12	From work	21506017
84	From elsewhere	21506017
1653	No access to internet	21506017
9	From home	21506018
549	From cell phone	21506018
18	From work	21506018
30	From elsewhere	21506018
1194	No access to internet	21506018
6	From home	21506019
219	From cell phone	21506019
9	From work	21506019
6	From elsewhere	21506019
1455	No access to internet	21506019
15	From home	21506020
240	From cell phone	21506020
12	From work	21506020
21	From elsewhere	21506020
1263	No access to internet	21506020
33	From home	21506021
255	From cell phone	21506021
15	From work	21506021
15	From elsewhere	21506021
1104	No access to internet	21506021
30	From home	21506022
108	From cell phone	21506022
9	From work	21506022
3	From elsewhere	21506022
1431	No access to internet	21506022
15	From home	21506023
294	From cell phone	21506023
9	From work	21506023
57	From elsewhere	21506023
1233	No access to internet	21506023
0	From home	21506024
36	From cell phone	21506024
6	From work	21506024
9	From elsewhere	21506024
1476	No access to internet	21506024
12	From home	21506025
123	From cell phone	21506025
6	From work	21506025
12	From elsewhere	21506025
1317	No access to internet	21506025
12	From home	21506026
81	From cell phone	21506026
9	From work	21506026
63	From elsewhere	21506026
1026	No access to internet	21506026
132	From home	21507001
549	From cell phone	21507001
123	From work	21507001
228	From elsewhere	21507001
2409	No access to internet	21507001
153	From home	21507002
1083	From cell phone	21507002
165	From work	21507002
285	From elsewhere	21507002
2418	No access to internet	21507002
123	From home	21507003
819	From cell phone	21507003
177	From work	21507003
210	From elsewhere	21507003
3258	No access to internet	21507003
213	From home	21507004
708	From cell phone	21507004
255	From work	21507004
324	From elsewhere	21507004
3003	No access to internet	21507004
219	From home	21507005
345	From cell phone	21507005
132	From work	21507005
72	From elsewhere	21507005
585	No access to internet	21507005
705	From home	21507006
852	From cell phone	21507006
675	From work	21507006
387	From elsewhere	21507006
1278	No access to internet	21507006
27	From home	21507007
192	From cell phone	21507007
51	From work	21507007
15	From elsewhere	21507007
417	No access to internet	21507007
276	From home	21507008
753	From cell phone	21507008
234	From work	21507008
189	From elsewhere	21507008
1707	No access to internet	21507008
174	From home	21507009
501	From cell phone	21507009
177	From work	21507009
99	From elsewhere	21507009
2829	No access to internet	21507009
24	From home	21507010
252	From cell phone	21507010
30	From work	21507010
90	From elsewhere	21507010
2058	No access to internet	21507010
99	From home	21507011
1671	From cell phone	21507011
165	From work	21507011
243	From elsewhere	21507011
4155	No access to internet	21507011
60	From home	21507012
882	From cell phone	21507012
153	From work	21507012
165	From elsewhere	21507012
2889	No access to internet	21507012
150	From home	21507013
813	From cell phone	21507013
132	From work	21507013
147	From elsewhere	21507013
1659	No access to internet	21507013
27	From home	21507014
390	From cell phone	21507014
42	From work	21507014
30	From elsewhere	21507014
1968	No access to internet	21507014
12	From home	21507015
297	From cell phone	21507015
18	From work	21507015
72	From elsewhere	21507015
1953	No access to internet	21507015
21	From home	21507016
300	From cell phone	21507016
24	From work	21507016
18	From elsewhere	21507016
2148	No access to internet	21507016
15	From home	21507017
105	From cell phone	21507017
15	From work	21507017
63	From elsewhere	21507017
1776	No access to internet	21507017
6	From home	21507018
234	From cell phone	21507018
12	From work	21507018
9	From elsewhere	21507018
2481	No access to internet	21507018
24	From home	21507019
354	From cell phone	21507019
33	From work	21507019
198	From elsewhere	21507019
2169	No access to internet	21507019
15	From home	21507020
384	From cell phone	21507020
15	From work	21507020
51	From elsewhere	21507020
2661	No access to internet	21507020
6	From home	21507021
96	From cell phone	21507021
36	From work	21507021
18	From elsewhere	21507021
2685	No access to internet	21507021
21	From home	21507022
369	From cell phone	21507022
12	From work	21507022
21	From elsewhere	21507022
2415	No access to internet	21507022
30	From home	21507023
279	From cell phone	21507023
15	From work	21507023
33	From elsewhere	21507023
2820	No access to internet	21507023
36	From home	21507024
222	From cell phone	21507024
39	From work	21507024
51	From elsewhere	21507024
2505	No access to internet	21507024
12	From home	21507025
234	From cell phone	21507025
27	From work	21507025
15	From elsewhere	21507025
3213	No access to internet	21507025
15	From home	21507026
459	From cell phone	21507026
12	From work	21507026
27	From elsewhere	21507026
2082	No access to internet	21507026
0	From home	21507027
129	From cell phone	21507027
6	From work	21507027
18	From elsewhere	21507027
2094	No access to internet	21507027
12	From home	21507028
273	From cell phone	21507028
18	From work	21507028
117	From elsewhere	21507028
1971	No access to internet	21507028
84	From home	21507029
495	From cell phone	21507029
51	From work	21507029
102	From elsewhere	21507029
2619	No access to internet	21507029
93	From home	21507030
495	From cell phone	21507030
72	From work	21507030
78	From elsewhere	21507030
2610	No access to internet	21507030
6	From home	21507031
117	From cell phone	21507031
18	From work	21507031
162	From elsewhere	21507031
2034	No access to internet	21507031
27	From home	21507032
492	From cell phone	21507032
21	From work	21507032
36	From elsewhere	21507032
2280	No access to internet	21507032
45	From home	21507033
558	From cell phone	21507033
81	From work	21507033
117	From elsewhere	21507033
2160	No access to internet	21507033
9	From home	21507034
282	From cell phone	21507034
12	From work	21507034
81	From elsewhere	21507034
1680	No access to internet	21507034
36	From home	21507035
396	From cell phone	21507035
24	From work	21507035
57	From elsewhere	21507035
2055	No access to internet	21507035
60	From home	24401001
264	From cell phone	24401001
63	From work	24401001
132	From elsewhere	24401001
810	No access to internet	24401001
36	From home	24401002
408	From cell phone	24401002
60	From work	24401002
243	From elsewhere	24401002
2325	No access to internet	24401002
9	From home	24401003
144	From cell phone	24401003
9	From work	24401003
120	From elsewhere	24401003
1599	No access to internet	24401003
6	From home	24401004
204	From cell phone	24401004
15	From work	24401004
21	From elsewhere	24401004
1758	No access to internet	24401004
18	From home	24401005
261	From cell phone	24401005
21	From work	24401005
36	From elsewhere	24401005
1698	No access to internet	24401005
15	From home	24401006
195	From cell phone	24401006
12	From work	24401006
27	From elsewhere	24401006
1719	No access to internet	24401006
9	From home	24401007
234	From cell phone	24401007
12	From work	24401007
18	From elsewhere	24401007
1413	No access to internet	24401007
9	From home	24401008
99	From cell phone	24401008
6	From work	24401008
6	From elsewhere	24401008
1086	No access to internet	24401008
6	From home	24401009
84	From cell phone	24401009
9	From work	24401009
63	From elsewhere	24401009
1497	No access to internet	24401009
27	From home	24401010
273	From cell phone	24401010
21	From work	24401010
27	From elsewhere	24401010
1809	No access to internet	24401010
18	From home	24401011
144	From cell phone	24401011
30	From work	24401011
21	From elsewhere	24401011
2604	No access to internet	24401011
15	From home	24401012
153	From cell phone	24401012
27	From work	24401012
39	From elsewhere	24401012
1410	No access to internet	24401012
6	From home	24401013
186	From cell phone	24401013
3	From work	24401013
30	From elsewhere	24401013
1446	No access to internet	24401013
3	From home	24401014
108	From cell phone	24401014
18	From work	24401014
6	From elsewhere	24401014
1545	No access to internet	24401014
9	From home	24401015
141	From cell phone	24401015
12	From work	24401015
15	From elsewhere	24401015
1680	No access to internet	24401015
18	From home	24401016
240	From cell phone	24401016
15	From work	24401016
3	From elsewhere	24401016
1374	No access to internet	24401016
12	From home	24401017
351	From cell phone	24401017
12	From work	24401017
45	From elsewhere	24401017
1776	No access to internet	24401017
0	From home	24401018
231	From cell phone	24401018
18	From work	24401018
6	From elsewhere	24401018
1665	No access to internet	24401018
225	From home	24401019
267	From cell phone	24401019
102	From work	24401019
60	From elsewhere	24401019
720	No access to internet	24401019
93	From home	24401020
453	From cell phone	24401020
84	From work	24401020
102	From elsewhere	24401020
2820	No access to internet	24401020
12	From home	24401021
105	From cell phone	24401021
18	From work	24401021
15	From elsewhere	24401021
1476	No access to internet	24401021
3	From home	24401022
84	From cell phone	24401022
12	From work	24401022
6	From elsewhere	24401022
1647	No access to internet	24401022
3	From home	24401023
207	From cell phone	24401023
18	From work	24401023
6	From elsewhere	24401023
1317	No access to internet	24401023
3	From home	24401024
204	From cell phone	24401024
9	From work	24401024
18	From elsewhere	24401024
1143	No access to internet	24401024
66	From home	24401025
327	From cell phone	24401025
15	From work	24401025
165	From elsewhere	24401025
1089	No access to internet	24401025
66	From home	24401026
234	From cell phone	24401026
54	From work	24401026
30	From elsewhere	24401026
1815	No access to internet	24401026
36	From home	24402001
228	From cell phone	24402001
9	From work	24402001
201	From elsewhere	24402001
915	No access to internet	24402001
27	From home	24402002
207	From cell phone	24402002
6	From work	24402002
75	From elsewhere	24402002
936	No access to internet	24402002
15	From home	24402003
126	From cell phone	24402003
9	From work	24402003
294	From elsewhere	24402003
1458	No access to internet	24402003
18	From home	24402004
210	From cell phone	24402004
18	From work	24402004
48	From elsewhere	24402004
1431	No access to internet	24402004
3	From home	24402005
54	From cell phone	24402005
3	From work	24402005
6	From elsewhere	24402005
1176	No access to internet	24402005
18	From home	24402006
66	From cell phone	24402006
9	From work	24402006
15	From elsewhere	24402006
1242	No access to internet	24402006
81	From home	24402007
582	From cell phone	24402007
150	From work	24402007
60	From elsewhere	24402007
1680	No access to internet	24402007
39	From home	24402008
318	From cell phone	24402008
21	From work	24402008
60	From elsewhere	24402008
1089	No access to internet	24402008
3	From home	24402009
60	From cell phone	24402009
0	From work	24402009
6	From elsewhere	24402009
537	No access to internet	24402009
6	From home	24402010
177	From cell phone	24402010
9	From work	24402010
24	From elsewhere	24402010
1755	No access to internet	24402010
15	From home	24402011
228	From cell phone	24402011
9	From work	24402011
60	From elsewhere	24402011
1740	No access to internet	24402011
3	From home	24402012
204	From cell phone	24402012
18	From work	24402012
15	From elsewhere	24402012
1509	No access to internet	24402012
9	From home	24402013
135	From cell phone	24402013
15	From work	24402013
42	From elsewhere	24402013
1461	No access to internet	24402013
6	From home	24402014
201	From cell phone	24402014
6	From work	24402014
18	From elsewhere	24402014
1713	No access to internet	24402014
9	From home	24402015
165	From cell phone	24402015
12	From work	24402015
9	From elsewhere	24402015
1596	No access to internet	24402015
27	From home	24402016
360	From cell phone	24402016
27	From work	24402016
123	From elsewhere	24402016
2163	No access to internet	24402016
27	From home	24402017
399	From cell phone	24402017
24	From work	24402017
72	From elsewhere	24402017
1362	No access to internet	24402017
117	From home	24402018
624	From cell phone	24402018
171	From work	24402018
117	From elsewhere	24402018
1254	No access to internet	24402018
18	From home	24402019
366	From cell phone	24402019
12	From work	24402019
33	From elsewhere	24402019
1566	No access to internet	24402019
12	From home	24402020
147	From cell phone	24402020
24	From work	24402020
54	From elsewhere	24402020
1824	No access to internet	24402020
9	From home	24402021
294	From cell phone	24402021
9	From work	24402021
39	From elsewhere	24402021
1440	No access to internet	24402021
6	From home	24402022
264	From cell phone	24402022
9	From work	24402022
48	From elsewhere	24402022
1383	No access to internet	24402022
12	From home	24402023
126	From cell phone	24402023
6	From work	24402023
27	From elsewhere	24402023
1554	No access to internet	24402023
3	From home	24402024
135	From cell phone	24402024
6	From work	24402024
18	From elsewhere	24402024
1743	No access to internet	24402024
6	From home	24402025
72	From cell phone	24402025
0	From work	24402025
3	From elsewhere	24402025
1137	No access to internet	24402025
39	From home	24402026
249	From cell phone	24402026
18	From work	24402026
36	From elsewhere	24402026
1191	No access to internet	24402026
18	From home	24402027
201	From cell phone	24402027
18	From work	24402027
9	From elsewhere	24402027
1131	No access to internet	24402027
159	From home	24403001
525	From cell phone	24403001
129	From work	24403001
150	From elsewhere	24403001
1770	No access to internet	24403001
12	From home	24403002
351	From cell phone	24403002
6	From work	24403002
78	From elsewhere	24403002
801	No access to internet	24403002
12	From home	24403003
198	From cell phone	24403003
12	From work	24403003
15	From elsewhere	24403003
1395	No access to internet	24403003
18	From home	24403004
102	From cell phone	24403004
6	From work	24403004
36	From elsewhere	24403004
1236	No access to internet	24403004
6	From home	24403005
330	From cell phone	24403005
12	From work	24403005
57	From elsewhere	24403005
1158	No access to internet	24403005
15	From home	24403006
186	From cell phone	24403006
27	From work	24403006
54	From elsewhere	24403006
1920	No access to internet	24403006
18	From home	24403007
192	From cell phone	24403007
21	From work	24403007
174	From elsewhere	24403007
1155	No access to internet	24403007
24	From home	24403008
129	From cell phone	24403008
21	From work	24403008
66	From elsewhere	24403008
1716	No access to internet	24403008
24	From home	24403009
198	From cell phone	24403009
15	From work	24403009
69	From elsewhere	24403009
2016	No access to internet	24403009
12	From home	24403010
138	From cell phone	24403010
15	From work	24403010
3	From elsewhere	24403010
1701	No access to internet	24403010
9	From home	24403011
84	From cell phone	24403011
12	From work	24403011
6	From elsewhere	24403011
1446	No access to internet	24403011
0	From home	24403012
27	From cell phone	24403012
15	From work	24403012
6	From elsewhere	24403012
843	No access to internet	24403012
21	From home	24403013
177	From cell phone	24403013
21	From work	24403013
33	From elsewhere	24403013
1410	No access to internet	24403013
12	From home	24403014
87	From cell phone	24403014
9	From work	24403014
9	From elsewhere	24403014
1278	No access to internet	24403014
6	From home	24403015
36	From cell phone	24403015
9	From work	24403015
9	From elsewhere	24403015
1491	No access to internet	24403015
3	From home	24403016
66	From cell phone	24403016
15	From work	24403016
9	From elsewhere	24403016
1209	No access to internet	24403016
36	From home	24403017
261	From cell phone	24403017
39	From work	24403017
33	From elsewhere	24403017
1509	No access to internet	24403017
15	From home	24403018
114	From cell phone	24403018
9	From work	24403018
33	From elsewhere	24403018
1623	No access to internet	24403018
12	From home	24403019
264	From cell phone	24403019
18	From work	24403019
21	From elsewhere	24403019
1314	No access to internet	24403019
27	From home	24403020
102	From cell phone	24403020
15	From work	24403020
21	From elsewhere	24403020
1668	No access to internet	24403020
15	From home	24403021
195	From cell phone	24403021
21	From work	24403021
30	From elsewhere	24403021
1038	No access to internet	24403021
3	From home	24403022
75	From cell phone	24403022
6	From work	24403022
12	From elsewhere	24403022
690	No access to internet	24403022
39	From home	24403023
402	From cell phone	24403023
24	From work	24403023
60	From elsewhere	24403023
1866	No access to internet	24403023
39	From home	24403024
252	From cell phone	24403024
60	From work	24403024
96	From elsewhere	24403024
1419	No access to internet	24403024
3	From home	24403025
42	From cell phone	24403025
3	From work	24403025
3	From elsewhere	24403025
333	No access to internet	24403025
21	From home	24403026
186	From cell phone	24403026
15	From work	24403026
126	From elsewhere	24403026
1179	No access to internet	24403026
12	From home	24403027
120	From cell phone	24403027
12	From work	24403027
81	From elsewhere	24403027
1482	No access to internet	24403027
0	From home	24403028
48	From cell phone	24403028
9	From work	24403028
9	From elsewhere	24403028
549	No access to internet	24403028
6	From home	24403029
246	From cell phone	24403029
12	From work	24403029
9	From elsewhere	24403029
1227	No access to internet	24403029
3	From home	24403030
63	From cell phone	24403030
9	From work	24403030
12	From elsewhere	24403030
756	No access to internet	24403030
9	From home	24403031
69	From cell phone	24403031
9	From work	24403031
18	From elsewhere	24403031
1440	No access to internet	24403031
0	From home	24404001
33	From cell phone	24404001
3	From work	24404001
6	From elsewhere	24404001
963	No access to internet	24404001
6	From home	24404002
222	From cell phone	24404002
0	From work	24404002
24	From elsewhere	24404002
1092	No access to internet	24404002
3	From home	24404003
120	From cell phone	24404003
9	From work	24404003
12	From elsewhere	24404003
1131	No access to internet	24404003
0	From home	24404004
42	From cell phone	24404004
15	From work	24404004
45	From elsewhere	24404004
1128	No access to internet	24404004
3	From home	24404005
108	From cell phone	24404005
9	From work	24404005
3	From elsewhere	24404005
894	No access to internet	24404005
6	From home	24404006
141	From cell phone	24404006
6	From work	24404006
18	From elsewhere	24404006
1254	No access to internet	24404006
6	From home	24404007
141	From cell phone	24404007
6	From work	24404007
24	From elsewhere	24404007
1554	No access to internet	24404007
0	From home	24404008
156	From cell phone	24404008
6	From work	24404008
24	From elsewhere	24404008
1353	No access to internet	24404008
21	From home	24404009
330	From cell phone	24404009
72	From work	24404009
51	From elsewhere	24404009
1524	No access to internet	24404009
0	From home	24404010
114	From cell phone	24404010
6	From work	24404010
6	From elsewhere	24404010
1095	No access to internet	24404010
6	From home	24404011
102	From cell phone	24404011
12	From work	24404011
3	From elsewhere	24404011
1323	No access to internet	24404011
0	From home	24404012
78	From cell phone	24404012
6	From work	24404012
3	From elsewhere	24404012
624	No access to internet	24404012
15	From home	24404013
237	From cell phone	24404013
15	From work	24404013
15	From elsewhere	24404013
1290	No access to internet	24404013
3	From home	24404014
51	From cell phone	24404014
12	From work	24404014
66	From elsewhere	24404014
1278	No access to internet	24404014
3	From home	24404015
159	From cell phone	24404015
6	From work	24404015
15	From elsewhere	24404015
723	No access to internet	24404015
15	From home	24404016
114	From cell phone	24404016
9	From work	24404016
18	From elsewhere	24404016
1695	No access to internet	24404016
0	From home	24404017
129	From cell phone	24404017
12	From work	24404017
42	From elsewhere	24404017
1149	No access to internet	24404017
3	From home	24404018
93	From cell phone	24404018
9	From work	24404018
21	From elsewhere	24404018
1269	No access to internet	24404018
168	From home	29200001
333	From cell phone	29200001
102	From work	29200001
285	From elsewhere	29200001
3168	No access to internet	29200001
36	From home	29200002
867	From cell phone	29200002
48	From work	29200002
225	From elsewhere	29200002
2895	No access to internet	29200002
1008	From home	29200003
2130	From cell phone	29200003
990	From work	29200003
639	From elsewhere	29200003
1767	No access to internet	29200003
2187	From home	29200004
573	From cell phone	29200004
708	From work	29200004
120	From elsewhere	29200004
870	No access to internet	29200004
75	From home	29200005
528	From cell phone	29200005
57	From work	29200005
111	From elsewhere	29200005
3597	No access to internet	29200005
75	From home	29200006
423	From cell phone	29200006
60	From work	29200006
177	From elsewhere	29200006
3543	No access to internet	29200006
57	From home	29200007
405	From cell phone	29200007
54	From work	29200007
276	From elsewhere	29200007
2802	No access to internet	29200007
162	From home	29200008
246	From cell phone	29200008
69	From work	29200008
243	From elsewhere	29200008
2406	No access to internet	29200008
726	From home	29200009
1449	From cell phone	29200009
549	From work	29200009
309	From elsewhere	29200009
3297	No access to internet	29200009
174	From home	29200010
654	From cell phone	29200010
132	From work	29200010
39	From elsewhere	29200010
2976	No access to internet	29200010
108	From home	29200011
501	From cell phone	29200011
114	From work	29200011
357	From elsewhere	29200011
3483	No access to internet	29200011
72	From home	29200012
744	From cell phone	29200012
72	From work	29200012
63	From elsewhere	29200012
3405	No access to internet	29200012
129	From home	29200013
867	From cell phone	29200013
186	From work	29200013
210	From elsewhere	29200013
7128	No access to internet	29200013
108	From home	29200014
348	From cell phone	29200014
66	From work	29200014
282	From elsewhere	29200014
1791	No access to internet	29200014
735	From home	29200015
744	From cell phone	29200015
291	From work	29200015
132	From elsewhere	29200015
2133	No access to internet	29200015
1242	From home	29200016
1734	From cell phone	29200016
834	From work	29200016
585	From elsewhere	29200016
4509	No access to internet	29200016
90	From home	29200017
675	From cell phone	29200017
102	From work	29200017
384	From elsewhere	29200017
3393	No access to internet	29200017
1572	From home	29200018
438	From cell phone	29200018
534	From work	29200018
153	From elsewhere	29200018
1008	No access to internet	29200018
231	From home	29200019
549	From cell phone	29200019
147	From work	29200019
66	From elsewhere	29200019
1887	No access to internet	29200019
90	From home	29200020
261	From cell phone	29200020
105	From work	29200020
168	From elsewhere	29200020
2544	No access to internet	29200020
192	From home	29200021
558	From cell phone	29200021
132	From work	29200021
435	From elsewhere	29200021
2523	No access to internet	29200021
195	From home	29200022
522	From cell phone	29200022
177	From work	29200022
192	From elsewhere	29200022
3390	No access to internet	29200022
267	From home	29200023
819	From cell phone	29200023
189	From work	29200023
480	From elsewhere	29200023
2643	No access to internet	29200023
90	From home	29200024
264	From cell phone	29200024
66	From work	29200024
78	From elsewhere	29200024
3948	No access to internet	29200024
135	From home	29200025
651	From cell phone	29200025
216	From work	29200025
192	From elsewhere	29200025
2349	No access to internet	29200025
54	From home	29200026
213	From cell phone	29200026
36	From work	29200026
147	From elsewhere	29200026
3783	No access to internet	29200026
1389	From home	29200027
522	From cell phone	29200027
507	From work	29200027
132	From elsewhere	29200027
1218	No access to internet	29200027
1323	From home	29200028
651	From cell phone	29200028
555	From work	29200028
102	From elsewhere	29200028
3903	No access to internet	29200028
726	From home	29200029
639	From cell phone	29200029
375	From work	29200029
123	From elsewhere	29200029
5121	No access to internet	29200029
132	From home	29200030
675	From cell phone	29200030
90	From work	29200030
111	From elsewhere	29200030
2715	No access to internet	29200030
570	From home	29200031
1011	From cell phone	29200031
291	From work	29200031
141	From elsewhere	29200031
4674	No access to internet	29200031
24	From home	29200032
309	From cell phone	29200032
21	From work	29200032
174	From elsewhere	29200032
3897	No access to internet	29200032
27	From home	29200033
288	From cell phone	29200033
24	From work	29200033
63	From elsewhere	29200033
3786	No access to internet	29200033
63	From home	29200034
309	From cell phone	29200034
54	From work	29200034
450	From elsewhere	29200034
3015	No access to internet	29200034
504	From home	29200035
750	From cell phone	29200035
531	From work	29200035
162	From elsewhere	29200035
2343	No access to internet	29200035
117	From home	29200036
441	From cell phone	29200036
66	From work	29200036
165	From elsewhere	29200036
3597	No access to internet	29200036
408	From home	29200037
717	From cell phone	29200037
522	From work	29200037
222	From elsewhere	29200037
2313	No access to internet	29200037
39	From home	29200038
231	From cell phone	29200038
39	From work	29200038
138	From elsewhere	29200038
3840	No access to internet	29200038
165	From home	29200039
687	From cell phone	29200039
120	From work	29200039
339	From elsewhere	29200039
3351	No access to internet	29200039
24	From home	29200040
276	From cell phone	29200040
24	From work	29200040
30	From elsewhere	29200040
2901	No access to internet	29200040
141	From home	29200041
813	From cell phone	29200041
417	From work	29200041
258	From elsewhere	29200041
2262	No access to internet	29200041
75	From home	29200042
411	From cell phone	29200042
66	From work	29200042
267	From elsewhere	29200042
2781	No access to internet	29200042
285	From home	29200043
1158	From cell phone	29200043
552	From work	29200043
297	From elsewhere	29200043
2913	No access to internet	29200043
252	From home	29200044
780	From cell phone	29200044
300	From work	29200044
279	From elsewhere	29200044
3840	No access to internet	29200044
111	From home	29200045
378	From cell phone	29200045
84	From work	29200045
198	From elsewhere	29200045
2772	No access to internet	29200045
765	From home	29200046
1215	From cell phone	29200046
450	From work	29200046
138	From elsewhere	29200046
3276	No access to internet	29200046
714	From home	29200047
1179	From cell phone	29200047
564	From work	29200047
420	From elsewhere	29200047
1305	No access to internet	29200047
132	From home	29200048
729	From cell phone	29200048
108	From work	29200048
39	From elsewhere	29200048
2421	No access to internet	29200048
27	From home	29200049
510	From cell phone	29200049
42	From work	29200049
150	From elsewhere	29200049
2244	No access to internet	29200049
117	From home	29200050
570	From cell phone	29200050
75	From work	29200050
168	From elsewhere	29200050
2178	No access to internet	29200050
2775	From home	29300001
789	From cell phone	29300001
543	From work	29300001
441	From elsewhere	29300001
1278	No access to internet	29300001
3120	From home	29300002
1764	From cell phone	29300002
930	From work	29300002
753	From elsewhere	29300002
2124	No access to internet	29300002
2772	From home	29300003
774	From cell phone	29300003
747	From work	29300003
135	From elsewhere	29300003
1704	No access to internet	29300003
180	From home	29300004
885	From cell phone	29300004
126	From work	29300004
504	From elsewhere	29300004
6114	No access to internet	29300004
1419	From home	29300005
1722	From cell phone	29300005
729	From work	29300005
672	From elsewhere	29300005
2292	No access to internet	29300005
2166	From home	29300006
627	From cell phone	29300006
723	From work	29300006
132	From elsewhere	29300006
1326	No access to internet	29300006
1242	From home	29300007
687	From cell phone	29300007
441	From work	29300007
75	From elsewhere	29300007
2901	No access to internet	29300007
3255	From home	29300008
1185	From cell phone	29300008
1392	From work	29300008
189	From elsewhere	29300008
1986	No access to internet	29300008
2346	From home	29300009
729	From cell phone	29300009
699	From work	29300009
138	From elsewhere	29300009
1815	No access to internet	29300009
459	From home	29300010
642	From cell phone	29300010
219	From work	29300010
102	From elsewhere	29300010
3129	No access to internet	29300010
390	From home	29300011
993	From cell phone	29300011
219	From work	29300011
123	From elsewhere	29300011
2436	No access to internet	29300011
1803	From home	29300012
1488	From cell phone	29300012
873	From work	29300012
225	From elsewhere	29300012
3999	No access to internet	29300012
33	From home	29300013
396	From cell phone	29300013
48	From work	29300013
45	From elsewhere	29300013
3558	No access to internet	29300013
150	From home	29300014
555	From cell phone	29300014
126	From work	29300014
339	From elsewhere	29300014
2451	No access to internet	29300014
66	From home	29300015
453	From cell phone	29300015
87	From work	29300015
129	From elsewhere	29300015
2925	No access to internet	29300015
42	From home	29300016
255	From cell phone	29300016
51	From work	29300016
45	From elsewhere	29300016
2079	No access to internet	29300016
81	From home	29300017
537	From cell phone	29300017
90	From work	29300017
207	From elsewhere	29300017
3474	No access to internet	29300017
87	From home	29300018
705	From cell phone	29300018
126	From work	29300018
255	From elsewhere	29300018
3822	No access to internet	29300018
72	From home	29300019
459	From cell phone	29300019
72	From work	29300019
138	From elsewhere	29300019
2397	No access to internet	29300019
39	From home	29300020
417	From cell phone	29300020
84	From work	29300020
105	From elsewhere	29300020
2829	No access to internet	29300020
114	From home	29300021
552	From cell phone	29300021
51	From work	29300021
216	From elsewhere	29300021
2274	No access to internet	29300021
231	From home	29300022
612	From cell phone	29300022
75	From work	29300022
474	From elsewhere	29300022
2340	No access to internet	29300022
120	From home	29300023
438	From cell phone	29300023
117	From work	29300023
465	From elsewhere	29300023
2400	No access to internet	29300023
54	From home	29300024
237	From cell phone	29300024
48	From work	29300024
27	From elsewhere	29300024
3147	No access to internet	29300024
69	From home	29300025
1083	From cell phone	29300025
105	From work	29300025
288	From elsewhere	29300025
1911	No access to internet	29300025
87	From home	29300026
540	From cell phone	29300026
45	From work	29300026
45	From elsewhere	29300026
2139	No access to internet	29300026
27	From home	29300027
444	From cell phone	29300027
48	From work	29300027
117	From elsewhere	29300027
3216	No access to internet	29300027
153	From home	29300028
849	From cell phone	29300028
96	From work	29300028
369	From elsewhere	29300028
3150	No access to internet	29300028
483	From home	29300029
594	From cell phone	29300029
189	From work	29300029
99	From elsewhere	29300029
3492	No access to internet	29300029
279	From home	29300030
516	From cell phone	29300030
198	From work	29300030
234	From elsewhere	29300030
3003	No access to internet	29300030
360	From home	29300031
1059	From cell phone	29300031
273	From work	29300031
159	From elsewhere	29300031
3669	No access to internet	29300031
456	From home	29300032
918	From cell phone	29300032
225	From work	29300032
123	From elsewhere	29300032
4377	No access to internet	29300032
54	From home	29300033
294	From cell phone	29300033
69	From work	29300033
108	From elsewhere	29300033
4065	No access to internet	29300033
204	From home	29300034
726	From cell phone	29300034
96	From work	29300034
33	From elsewhere	29300034
3813	No access to internet	29300034
222	From home	29300035
819	From cell phone	29300035
171	From work	29300035
159	From elsewhere	29300035
3021	No access to internet	29300035
273	From home	29300036
891	From cell phone	29300036
264	From work	29300036
498	From elsewhere	29300036
1995	No access to internet	29300036
81	From home	29300037
450	From cell phone	29300037
60	From work	29300037
51	From elsewhere	29300037
3951	No access to internet	29300037
84	From home	29300038
429	From cell phone	29300038
42	From work	29300038
96	From elsewhere	29300038
3840	No access to internet	29300038
1812	From home	29300039
1083	From cell phone	29300039
876	From work	29300039
99	From elsewhere	29300039
2088	No access to internet	29300039
885	From home	29300040
924	From cell phone	29300040
429	From work	29300040
216	From elsewhere	29300040
5202	No access to internet	29300040
312	From home	29300041
2052	From cell phone	29300041
264	From work	29300041
711	From elsewhere	29300041
12579	No access to internet	29300041
72	From home	29300042
654	From cell phone	29300042
33	From work	29300042
330	From elsewhere	29300042
4179	No access to internet	29300042
99	From home	29300043
366	From cell phone	29300043
51	From work	29300043
477	From elsewhere	29300043
3021	No access to internet	29300043
165	From home	29300044
771	From cell phone	29300044
96	From work	29300044
327	From elsewhere	29300044
5937	No access to internet	29300044
96	From home	29300045
411	From cell phone	29300045
75	From work	29300045
243	From elsewhere	29300045
5001	No access to internet	29300045
120	From home	29300046
483	From cell phone	29300046
90	From work	29300046
474	From elsewhere	29300046
3660	No access to internet	29300046
72	From home	29300047
366	From cell phone	29300047
48	From work	29300047
315	From elsewhere	29300047
3225	No access to internet	29300047
282	From home	29300048
648	From cell phone	29300048
99	From work	29300048
192	From elsewhere	29300048
2919	No access to internet	29300048
252	From home	29300049
747	From cell phone	29300049
105	From work	29300049
387	From elsewhere	29300049
2466	No access to internet	29300049
99	From home	29300050
666	From cell phone	29300050
66	From work	29300050
495	From elsewhere	29300050
5034	No access to internet	29300050
2184	From home	29300051
1242	From cell phone	29300051
750	From work	29300051
237	From elsewhere	29300051
3276	No access to internet	29300051
1059	From home	29300052
708	From cell phone	29300052
369	From work	29300052
147	From elsewhere	29300052
4761	No access to internet	29300052
735	From home	29300053
978	From cell phone	29300053
522	From work	29300053
384	From elsewhere	29300053
6093	No access to internet	29300053
144	From home	29300054
804	From cell phone	29300054
75	From work	29300054
234	From elsewhere	29300054
5919	No access to internet	29300054
81	From home	29300055
636	From cell phone	29300055
93	From work	29300055
507	From elsewhere	29300055
6513	No access to internet	29300055
117	From home	29300056
837	From cell phone	29300056
132	From work	29300056
384	From elsewhere	29300056
5391	No access to internet	29300056
102	From home	29300057
756	From cell phone	29300057
120	From work	29300057
495	From elsewhere	29300057
3045	No access to internet	29300057
147	From home	29300058
810	From cell phone	29300058
99	From work	29300058
483	From elsewhere	29300058
3051	No access to internet	29300058
297	From home	29300059
999	From cell phone	29300059
231	From work	29300059
477	From elsewhere	29300059
2382	No access to internet	29300059
810	From home	29300060
864	From cell phone	29300060
351	From work	29300060
315	From elsewhere	29300060
5277	No access to internet	29300060
84	From home	41601001
288	From cell phone	41601001
18	From work	41601001
27	From elsewhere	41601001
1260	No access to internet	41601001
24	From home	41601002
297	From cell phone	41601002
18	From work	41601002
9	From elsewhere	41601002
1392	No access to internet	41601002
138	From home	41601003
369	From cell phone	41601003
51	From work	41601003
36	From elsewhere	41601003
1809	No access to internet	41601003
21	From home	41601004
141	From cell phone	41601004
18	From work	41601004
153	From elsewhere	41601004
1413	No access to internet	41601004
111	From home	41601005
234	From cell phone	41601005
63	From work	41601005
105	From elsewhere	41601005
1221	No access to internet	41601005
51	From home	41601006
225	From cell phone	41601006
42	From work	41601006
162	From elsewhere	41601006
1476	No access to internet	41601006
75	From home	41602001
186	From cell phone	41602001
45	From work	41602001
42	From elsewhere	41602001
1623	No access to internet	41602001
84	From home	41602002
387	From cell phone	41602002
105	From work	41602002
234	From elsewhere	41602002
1410	No access to internet	41602002
84	From home	41602003
219	From cell phone	41602003
45	From work	41602003
300	From elsewhere	41602003
1368	No access to internet	41602003
87	From home	41602004
258	From cell phone	41602004
39	From work	41602004
51	From elsewhere	41602004
1338	No access to internet	41602004
57	From home	41602005
279	From cell phone	41602005
36	From work	41602005
87	From elsewhere	41602005
1410	No access to internet	41602005
66	From home	41602006
219	From cell phone	41602006
45	From work	41602006
153	From elsewhere	41602006
1458	No access to internet	41602006
72	From home	41602007
297	From cell phone	41602007
27	From work	41602007
51	From elsewhere	41602007
1431	No access to internet	41602007
81	From home	41602008
267	From cell phone	41602008
48	From work	41602008
156	From elsewhere	41602008
1428	No access to internet	41602008
33	From home	41603001
99	From cell phone	41603001
6	From work	41603001
39	From elsewhere	41603001
1527	No access to internet	41603001
108	From home	41603002
336	From cell phone	41603002
96	From work	41603002
123	From elsewhere	41603002
1545	No access to internet	41603002
45	From home	41603003
303	From cell phone	41603003
42	From work	41603003
45	From elsewhere	41603003
1602	No access to internet	41603003
39	From home	41603004
141	From cell phone	41603004
12	From work	41603004
57	From elsewhere	41603004
747	No access to internet	41603004
114	From home	41603005
219	From cell phone	41603005
90	From work	41603005
48	From elsewhere	41603005
1083	No access to internet	41603005
66	From home	41603006
267	From cell phone	41603006
36	From work	41603006
108	From elsewhere	41603006
1815	No access to internet	41603006
87	From home	41604001
333	From cell phone	41604001
57	From work	41604001
33	From elsewhere	41604001
2112	No access to internet	41604001
33	From home	41604002
291	From cell phone	41604002
18	From work	41604002
99	From elsewhere	41604002
1143	No access to internet	41604002
123	From home	41604003
306	From cell phone	41604003
54	From work	41604003
117	From elsewhere	41604003
1227	No access to internet	41604003
21	From home	41604004
228	From cell phone	41604004
33	From work	41604004
39	From elsewhere	41604004
1335	No access to internet	41604004
84	From home	41801001
207	From cell phone	41801001
45	From work	41801001
93	From elsewhere	41801001
927	No access to internet	41801001
75	From home	41801002
324	From cell phone	41801002
39	From work	41801002
39	From elsewhere	41801002
1809	No access to internet	41801002
57	From home	41801003
285	From cell phone	41801003
15	From work	41801003
75	From elsewhere	41801003
1545	No access to internet	41801003
54	From home	41801004
156	From cell phone	41801004
48	From work	41801004
45	From elsewhere	41801004
1098	No access to internet	41801004
51	From home	41801005
261	From cell phone	41801005
33	From work	41801005
66	From elsewhere	41801005
2349	No access to internet	41801005
69	From home	41801006
180	From cell phone	41801006
39	From work	41801006
18	From elsewhere	41801006
414	No access to internet	41801006
45	From home	41801007
282	From cell phone	41801007
39	From work	41801007
54	From elsewhere	41801007
1701	No access to internet	41801007
6	From home	41801008
66	From cell phone	41801008
9	From work	41801008
15	From elsewhere	41801008
1101	No access to internet	41801008
66	From home	41801009
714	From cell phone	41801009
21	From work	41801009
66	From elsewhere	41801009
1497	No access to internet	41801009
12	From home	41801010
201	From cell phone	41801010
12	From work	41801010
12	From elsewhere	41801010
1146	No access to internet	41801010
54	From home	41802001
366	From cell phone	41802001
21	From work	41802001
48	From elsewhere	41802001
1737	No access to internet	41802001
96	From home	41802002
312	From cell phone	41802002
54	From work	41802002
171	From elsewhere	41802002
1689	No access to internet	41802002
66	From home	41802003
174	From cell phone	41802003
27	From work	41802003
57	From elsewhere	41802003
2175	No access to internet	41802003
60	From home	41802004
96	From cell phone	41802004
30	From work	41802004
18	From elsewhere	41802004
1440	No access to internet	41802004
12	From home	41803001
159	From cell phone	41803001
12	From work	41803001
21	From elsewhere	41803001
960	No access to internet	41803001
30	From home	41803002
132	From cell phone	41803002
18	From work	41803002
24	From elsewhere	41803002
930	No access to internet	41803002
45	From home	41803003
306	From cell phone	41803003
39	From work	41803003
111	From elsewhere	41803003
1131	No access to internet	41803003
105	From home	41803004
201	From cell phone	41803004
63	From work	41803004
51	From elsewhere	41803004
1467	No access to internet	41803004
84	From home	41803005
249	From cell phone	41803005
18	From work	41803005
27	From elsewhere	41803005
1665	No access to internet	41803005
9	From home	41803006
132	From cell phone	41803006
9	From work	41803006
63	From elsewhere	41803006
1080	No access to internet	41803006
39	From home	41803007
162	From cell phone	41803007
30	From work	41803007
99	From elsewhere	41803007
1071	No access to internet	41803007
111	From home	41803008
156	From cell phone	41803008
48	From work	41803008
42	From elsewhere	41803008
1083	No access to internet	41803008
102	From home	41804001
375	From cell phone	41804001
57	From work	41804001
192	From elsewhere	41804001
2778	No access to internet	41804001
69	From home	41804002
765	From cell phone	41804002
33	From work	41804002
105	From elsewhere	41804002
2448	No access to internet	41804002
336	From home	41804003
579	From cell phone	41804003
156	From work	41804003
195	From elsewhere	41804003
3174	No access to internet	41804003
69	From home	41804004
504	From cell phone	41804004
51	From work	41804004
102	From elsewhere	41804004
2796	No access to internet	41804004
117	From home	41804005
564	From cell phone	41804005
66	From work	41804005
147	From elsewhere	41804005
2916	No access to internet	41804005
60	From home	41804006
564	From cell phone	41804006
30	From work	41804006
201	From elsewhere	41804006
1938	No access to internet	41804006
87	From home	41804007
708	From cell phone	41804007
42	From work	41804007
207	From elsewhere	41804007
2586	No access to internet	41804007
267	From home	41804008
678	From cell phone	41804008
144	From work	41804008
174	From elsewhere	41804008
1956	No access to internet	41804008
465	From home	41804009
711	From cell phone	41804009
189	From work	41804009
150	From elsewhere	41804009
1902	No access to internet	41804009
135	From home	41804010
390	From cell phone	41804010
60	From work	41804010
363	From elsewhere	41804010
2334	No access to internet	41804010
123	From home	41804011
372	From cell phone	41804011
51	From work	41804011
39	From elsewhere	41804011
3000	No access to internet	41804011
156	From home	41804012
681	From cell phone	41804012
96	From work	41804012
270	From elsewhere	41804012
4935	No access to internet	41804012
39	From home	41804013
228	From cell phone	41804013
6	From work	41804013
183	From elsewhere	41804013
1803	No access to internet	41804013
84	From home	41804014
606	From cell phone	41804014
57	From work	41804014
159	From elsewhere	41804014
2757	No access to internet	41804014
99	From home	41804015
684	From cell phone	41804015
45	From work	41804015
321	From elsewhere	41804015
2829	No access to internet	41804015
108	From home	41804016
882	From cell phone	41804016
42	From work	41804016
102	From elsewhere	41804016
2913	No access to internet	41804016
45	From home	41804017
477	From cell phone	41804017
15	From work	41804017
219	From elsewhere	41804017
3735	No access to internet	41804017
60	From home	41804018
663	From cell phone	41804018
39	From work	41804018
258	From elsewhere	41804018
1860	No access to internet	41804018
36	From home	41804019
423	From cell phone	41804019
12	From work	41804019
81	From elsewhere	41804019
2670	No access to internet	41804019
96	From home	41804020
564	From cell phone	41804020
69	From work	41804020
315	From elsewhere	41804020
2397	No access to internet	41804020
87	From home	41804021
675	From cell phone	41804021
30	From work	41804021
216	From elsewhere	41804021
2487	No access to internet	41804021
45	From home	41804022
654	From cell phone	41804022
36	From work	41804022
192	From elsewhere	41804022
2664	No access to internet	41804022
18	From home	41804023
174	From cell phone	41804023
66	From work	41804023
18	From elsewhere	41804023
1755	No access to internet	41804023
84	From home	41804024
336	From cell phone	41804024
27	From work	41804024
36	From elsewhere	41804024
1395	No access to internet	41804024
555	From home	41804025
693	From cell phone	41804025
288	From work	41804025
189	From elsewhere	41804025
3012	No access to internet	41804025
66	From home	41804026
552	From cell phone	41804026
66	From work	41804026
381	From elsewhere	41804026
1365	No access to internet	41804026
720	From home	41804027
546	From cell phone	41804027
312	From work	41804027
198	From elsewhere	41804027
1389	No access to internet	41804027
87	From home	41804028
510	From cell phone	41804028
51	From work	41804028
186	From elsewhere	41804028
1911	No access to internet	41804028
93	From home	41804029
561	From cell phone	41804029
24	From work	41804029
183	From elsewhere	41804029
1491	No access to internet	41804029
57	From home	41804030
465	From cell phone	41804030
42	From work	41804030
162	From elsewhere	41804030
2556	No access to internet	41804030
45	From home	41804031
342	From cell phone	41804031
24	From work	41804031
129	From elsewhere	41804031
2442	No access to internet	41804031
648	From home	41804032
780	From cell phone	41804032
324	From work	41804032
150	From elsewhere	41804032
1839	No access to internet	41804032
474	From home	41804033
702	From cell phone	41804033
282	From work	41804033
99	From elsewhere	41804033
1707	No access to internet	41804033
774	From home	41804034
744	From cell phone	41804034
348	From work	41804034
120	From elsewhere	41804034
1965	No access to internet	41804034
417	From home	41804035
399	From cell phone	41804035
183	From work	41804035
129	From elsewhere	41804035
1626	No access to internet	41804035
363	From home	41804036
645	From cell phone	41804036
138	From work	41804036
171	From elsewhere	41804036
2691	No access to internet	41804036
30	From home	41805001
150	From cell phone	41805001
12	From work	41805001
21	From elsewhere	41805001
1644	No access to internet	41805001
102	From home	41805002
222	From cell phone	41805002
60	From work	41805002
48	From elsewhere	41805002
1215	No access to internet	41805002
54	From home	41805003
207	From cell phone	41805003
24	From work	41805003
195	From elsewhere	41805003
1386	No access to internet	41805003
33	From home	41805004
105	From cell phone	41805004
18	From work	41805004
105	From elsewhere	41805004
1596	No access to internet	41805004
117	From home	41805005
327	From cell phone	41805005
99	From work	41805005
126	From elsewhere	41805005
1239	No access to internet	41805005
24	From home	41805006
117	From cell phone	41805006
15	From work	41805006
21	From elsewhere	41805006
1194	No access to internet	41805006
36	From home	41805007
153	From cell phone	41805007
27	From work	41805007
63	From elsewhere	41805007
1140	No access to internet	41805007
45	From home	41805008
138	From cell phone	41805008
18	From work	41805008
6	From elsewhere	41805008
1152	No access to internet	41805008
12	From home	41805009
240	From cell phone	41805009
12	From work	41805009
15	From elsewhere	41805009
2256	No access to internet	41805009
87	From home	41805010
126	From cell phone	41805010
15	From work	41805010
42	From elsewhere	41805010
1680	No access to internet	41805010
33	From home	41805011
420	From cell phone	41805011
12	From work	41805011
54	From elsewhere	41805011
1548	No access to internet	41805011
261	From home	41805012
243	From cell phone	41805012
144	From work	41805012
36	From elsewhere	41805012
1185	No access to internet	41805012
84	From home	41901001
273	From cell phone	41901001
48	From work	41901001
54	From elsewhere	41901001
1323	No access to internet	41901001
24	From home	41901002
321	From cell phone	41901002
36	From work	41901002
42	From elsewhere	41901002
2256	No access to internet	41901002
87	From home	41901003
126	From cell phone	41901003
12	From work	41901003
15	From elsewhere	41901003
1407	No access to internet	41901003
114	From home	41901004
279	From cell phone	41901004
63	From work	41901004
174	From elsewhere	41901004
936	No access to internet	41901004
3	From home	41901005
42	From cell phone	41901005
6	From work	41901005
69	From elsewhere	41901005
603	No access to internet	41901005
105	From home	41901006
447	From cell phone	41901006
63	From work	41901006
123	From elsewhere	41901006
2364	No access to internet	41901006
45	From home	41901007
447	From cell phone	41901007
51	From work	41901007
63	From elsewhere	41901007
1743	No access to internet	41901007
18	From home	41901008
144	From cell phone	41901008
21	From work	41901008
201	From elsewhere	41901008
1902	No access to internet	41901008
96	From home	41901009
183	From cell phone	41901009
42	From work	41901009
48	From elsewhere	41901009
1455	No access to internet	41901009
156	From home	41901010
234	From cell phone	41901010
66	From work	41901010
75	From elsewhere	41901010
687	No access to internet	41901010
42	From home	41901011
237	From cell phone	41901011
39	From work	41901011
96	From elsewhere	41901011
1701	No access to internet	41901011
12	From home	41901012
99	From cell phone	41901012
9	From work	41901012
129	From elsewhere	41901012
1236	No access to internet	41901012
24	From home	41901013
339	From cell phone	41901013
33	From work	41901013
51	From elsewhere	41901013
1698	No access to internet	41901013
42	From home	41901014
423	From cell phone	41901014
42	From work	41901014
105	From elsewhere	41901014
1176	No access to internet	41901014
273	From home	41901015
288	From cell phone	41901015
168	From work	41901015
75	From elsewhere	41901015
1743	No access to internet	41901015
66	From home	41901016
345	From cell phone	41901016
39	From work	41901016
33	From elsewhere	41901016
1914	No access to internet	41901016
30	From home	41901017
153	From cell phone	41901017
18	From work	41901017
12	From elsewhere	41901017
306	No access to internet	41901017
3	From home	41901018
219	From cell phone	41901018
12	From work	41901018
15	From elsewhere	41901018
1269	No access to internet	41901018
105	From home	41902001
453	From cell phone	41902001
57	From work	41902001
93	From elsewhere	41902001
1281	No access to internet	41902001
75	From home	41902002
303	From cell phone	41902002
69	From work	41902002
51	From elsewhere	41902002
1194	No access to internet	41902002
345	From home	41902003
546	From cell phone	41902003
213	From work	41902003
102	From elsewhere	41902003
972	No access to internet	41902003
48	From home	41902004
207	From cell phone	41902004
45	From work	41902004
54	From elsewhere	41902004
1536	No access to internet	41902004
27	From home	41902005
150	From cell phone	41902005
12	From work	41902005
111	From elsewhere	41902005
1242	No access to internet	41902005
195	From home	41902006
345	From cell phone	41902006
102	From work	41902006
246	From elsewhere	41902006
963	No access to internet	41902006
75	From home	41902007
318	From cell phone	41902007
51	From work	41902007
33	From elsewhere	41902007
1065	No access to internet	41902007
120	From home	41902008
441	From cell phone	41902008
36	From work	41902008
261	From elsewhere	41902008
1257	No access to internet	41902008
204	From home	41902009
192	From cell phone	41902009
87	From work	41902009
33	From elsewhere	41902009
411	No access to internet	41902009
411	From home	41902010
201	From cell phone	41902010
192	From work	41902010
33	From elsewhere	41902010
534	No access to internet	41902010
78	From home	41902011
201	From cell phone	41902011
33	From work	41902011
57	From elsewhere	41902011
2100	No access to internet	41902011
42	From home	41902012
507	From cell phone	41902012
24	From work	41902012
252	From elsewhere	41902012
1653	No access to internet	41902012
36	From home	41902013
141	From cell phone	41902013
15	From work	41902013
81	From elsewhere	41902013
741	No access to internet	41902013
96	From home	41902014
192	From cell phone	41902014
36	From work	41902014
27	From elsewhere	41902014
1134	No access to internet	41902014
60	From home	41902015
258	From cell phone	41902015
15	From work	41902015
54	From elsewhere	41902015
1590	No access to internet	41902015
126	From home	41902016
336	From cell phone	41902016
75	From work	41902016
57	From elsewhere	41902016
1431	No access to internet	41902016
75	From home	41902017
204	From cell phone	41902017
15	From work	41902017
105	From elsewhere	41902017
1686	No access to internet	41902017
372	From home	41902018
390	From cell phone	41902018
204	From work	41902018
54	From elsewhere	41902018
1188	No access to internet	41902018
90	From home	41902019
900	From cell phone	41902019
36	From work	41902019
84	From elsewhere	41902019
2088	No access to internet	41902019
210	From home	41902020
381	From cell phone	41902020
51	From work	41902020
84	From elsewhere	41902020
1833	No access to internet	41902020
69	From home	41903001
387	From cell phone	41903001
33	From work	41903001
180	From elsewhere	41903001
1266	No access to internet	41903001
54	From home	41903002
204	From cell phone	41903002
24	From work	41903002
132	From elsewhere	41903002
1452	No access to internet	41903002
51	From home	41903003
315	From cell phone	41903003
30	From work	41903003
42	From elsewhere	41903003
1737	No access to internet	41903003
84	From home	41903004
171	From cell phone	41903004
42	From work	41903004
45	From elsewhere	41903004
1425	No access to internet	41903004
42	From home	41903005
222	From cell phone	41903005
24	From work	41903005
18	From elsewhere	41903005
1449	No access to internet	41903005
147	From home	41903006
372	From cell phone	41903006
93	From work	41903006
30	From elsewhere	41903006
1230	No access to internet	41903006
117	From home	41903007
477	From cell phone	41903007
126	From work	41903007
102	From elsewhere	41903007
1290	No access to internet	41903007
18	From home	41903008
240	From cell phone	41903008
15	From work	41903008
54	From elsewhere	41903008
1197	No access to internet	41903008
18	From home	41903009
324	From cell phone	41903009
9	From work	41903009
75	From elsewhere	41903009
1896	No access to internet	41903009
99	From home	41904001
486	From cell phone	41904001
48	From work	41904001
186	From elsewhere	41904001
2988	No access to internet	41904001
156	From home	41904002
567	From cell phone	41904002
57	From work	41904002
210	From elsewhere	41904002
1623	No access to internet	41904002
102	From home	41904003
276	From cell phone	41904003
60	From work	41904003
54	From elsewhere	41904003
2124	No access to internet	41904003
63	From home	41904004
306	From cell phone	41904004
36	From work	41904004
108	From elsewhere	41904004
1779	No access to internet	41904004
69	From home	41904005
603	From cell phone	41904005
84	From work	41904005
198	From elsewhere	41904005
1917	No access to internet	41904005
141	From home	41904006
300	From cell phone	41904006
108	From work	41904006
63	From elsewhere	41904006
1410	No access to internet	41904006
156	From home	41904007
660	From cell phone	41904007
15	From work	41904007
69	From elsewhere	41904007
1599	No access to internet	41904007
27	From home	41904008
327	From cell phone	41904008
6	From work	41904008
93	From elsewhere	41904008
906	No access to internet	41904008
63	From home	41904009
420	From cell phone	41904009
33	From work	41904009
81	From elsewhere	41904009
2247	No access to internet	41904009
33	From home	41904010
201	From cell phone	41904010
21	From work	41904010
183	From elsewhere	41904010
2202	No access to internet	41904010
39	From home	41904011
309	From cell phone	41904011
30	From work	41904011
78	From elsewhere	41904011
1998	No access to internet	41904011
81	From home	41904012
468	From cell phone	41904012
30	From work	41904012
300	From elsewhere	41904012
2868	No access to internet	41904012
39	From home	41904013
339	From cell phone	41904013
27	From work	41904013
222	From elsewhere	41904013
1971	No access to internet	41904013
39	From home	41904014
369	From cell phone	41904014
15	From work	41904014
156	From elsewhere	41904014
2091	No access to internet	41904014
51	From home	41904015
423	From cell phone	41904015
21	From work	41904015
123	From elsewhere	41904015
2211	No access to internet	41904015
78	From home	41904016
507	From cell phone	41904016
36	From work	41904016
99	From elsewhere	41904016
2292	No access to internet	41904016
45	From home	41904017
210	From cell phone	41904017
39	From work	41904017
144	From elsewhere	41904017
1842	No access to internet	41904017
36	From home	41904018
591	From cell phone	41904018
18	From work	41904018
81	From elsewhere	41904018
1659	No access to internet	41904018
36	From home	41904019
318	From cell phone	41904019
15	From work	41904019
192	From elsewhere	41904019
2313	No access to internet	41904019
12	From home	41904020
120	From cell phone	41904020
15	From work	41904020
138	From elsewhere	41904020
1779	No access to internet	41904020
27	From home	41904021
285	From cell phone	41904021
24	From work	41904021
207	From elsewhere	41904021
2325	No access to internet	41904021
546	From home	41904022
747	From cell phone	41904022
303	From work	41904022
171	From elsewhere	41904022
1785	No access to internet	41904022
78	From home	41904023
534	From cell phone	41904023
27	From work	41904023
147	From elsewhere	41904023
2172	No access to internet	41904023
66	From home	41904024
1173	From cell phone	41904024
42	From work	41904024
240	From elsewhere	41904024
3393	No access to internet	41904024
117	From home	41904025
336	From cell phone	41904025
102	From work	41904025
177	From elsewhere	41904025
1632	No access to internet	41904025
36	From home	41904026
330	From cell phone	41904026
12	From work	41904026
72	From elsewhere	41904026
1548	No access to internet	41904026
255	From home	41904027
558	From cell phone	41904027
198	From work	41904027
336	From elsewhere	41904027
1647	No access to internet	41904027
141	From home	41904028
813	From cell phone	41904028
99	From work	41904028
189	From elsewhere	41904028
2385	No access to internet	41904028
210	From home	41904029
894	From cell phone	41904029
111	From work	41904029
582	From elsewhere	41904029
1650	No access to internet	41904029
39	From home	41904030
423	From cell phone	41904030
15	From work	41904030
81	From elsewhere	41904030
1668	No access to internet	41904030
21	From home	41904031
288	From cell phone	41904031
33	From work	41904031
135	From elsewhere	41904031
2025	No access to internet	41904031
48	From home	41904032
819	From cell phone	41904032
51	From work	41904032
234	From elsewhere	41904032
2814	No access to internet	41904032
69	From home	41904033
435	From cell phone	41904033
54	From work	41904033
123	From elsewhere	41904033
2916	No access to internet	41904033
288	From home	41904034
1155	From cell phone	41904034
213	From work	41904034
447	From elsewhere	41904034
2688	No access to internet	41904034
33	From home	41904035
333	From cell phone	41904035
9	From work	41904035
42	From elsewhere	41904035
1569	No access to internet	41904035
42	From home	41905001
90	From cell phone	41905001
21	From work	41905001
15	From elsewhere	41905001
468	No access to internet	41905001
27	From home	41905002
237	From cell phone	41905002
9	From work	41905002
99	From elsewhere	41905002
1149	No access to internet	41905002
132	From home	41905003
210	From cell phone	41905003
66	From work	41905003
24	From elsewhere	41905003
930	No access to internet	41905003
30	From home	41905004
234	From cell phone	41905004
30	From work	41905004
48	From elsewhere	41905004
1176	No access to internet	41905004
78	From home	41905005
141	From cell phone	41905005
33	From work	41905005
21	From elsewhere	41905005
1338	No access to internet	41905005
15	From home	41905006
165	From cell phone	41905006
12	From work	41905006
78	From elsewhere	41905006
1314	No access to internet	41905006
60	From home	41905007
333	From cell phone	41905007
30	From work	41905007
39	From elsewhere	41905007
1515	No access to internet	41905007
78	From home	41905008
270	From cell phone	41905008
12	From work	41905008
21	From elsewhere	41905008
2283	No access to internet	41905008
54	From home	41906001
180	From cell phone	41906001
30	From work	41906001
366	From elsewhere	41906001
1251	No access to internet	41906001
105	From home	41906002
201	From cell phone	41906002
33	From work	41906002
75	From elsewhere	41906002
1455	No access to internet	41906002
42	From home	41906003
228	From cell phone	41906003
72	From work	41906003
33	From elsewhere	41906003
1485	No access to internet	41906003
39	From home	41906004
192	From cell phone	41906004
69	From work	41906004
45	From elsewhere	41906004
1740	No access to internet	41906004
24	From home	41906005
291	From cell phone	41906005
39	From work	41906005
21	From elsewhere	41906005
1182	No access to internet	41906005
12	From home	41906006
264	From cell phone	41906006
21	From work	41906006
36	From elsewhere	41906006
1026	No access to internet	41906006
273	From home	41906007
252	From cell phone	41906007
156	From work	41906007
72	From elsewhere	41906007
822	No access to internet	41906007
51	From home	41906008
129	From cell phone	41906008
27	From work	41906008
207	From elsewhere	41906008
1080	No access to internet	41906008
57	From home	41906009
168	From cell phone	41906009
12	From work	41906009
36	From elsewhere	41906009
1209	No access to internet	41906009
27	From home	42001001
342	From cell phone	42001001
27	From work	42001001
36	From elsewhere	42001001
1749	No access to internet	42001001
132	From home	42001002
195	From cell phone	42001002
36	From work	42001002
18	From elsewhere	42001002
1794	No access to internet	42001002
264	From home	42001003
354	From cell phone	42001003
144	From work	42001003
84	From elsewhere	42001003
1041	No access to internet	42001003
45	From home	42001004
297	From cell phone	42001004
24	From work	42001004
195	From elsewhere	42001004
1284	No access to internet	42001004
24	From home	42001005
192	From cell phone	42001005
12	From work	42001005
18	From elsewhere	42001005
1629	No access to internet	42001005
63	From home	42001006
171	From cell phone	42001006
15	From work	42001006
33	From elsewhere	42001006
519	No access to internet	42001006
129	From home	42001007
222	From cell phone	42001007
54	From work	42001007
135	From elsewhere	42001007
1668	No access to internet	42001007
54	From home	42001008
213	From cell phone	42001008
45	From work	42001008
30	From elsewhere	42001008
1305	No access to internet	42001008
87	From home	42001009
429	From cell phone	42001009
30	From work	42001009
60	From elsewhere	42001009
2019	No access to internet	42001009
45	From home	42001010
240	From cell phone	42001010
57	From work	42001010
87	From elsewhere	42001010
1170	No access to internet	42001010
60	From home	42001011
228	From cell phone	42001011
30	From work	42001011
48	From elsewhere	42001011
1179	No access to internet	42001011
57	From home	42001012
285	From cell phone	42001012
24	From work	42001012
75	From elsewhere	42001012
1002	No access to internet	42001012
99	From home	42001013
399	From cell phone	42001013
81	From work	42001013
99	From elsewhere	42001013
1686	No access to internet	42001013
45	From home	42001014
375	From cell phone	42001014
27	From work	42001014
57	From elsewhere	42001014
831	No access to internet	42001014
105	From home	42001015
270	From cell phone	42001015
36	From work	42001015
45	From elsewhere	42001015
1743	No access to internet	42001015
321	From home	42001016
555	From cell phone	42001016
144	From work	42001016
72	From elsewhere	42001016
1344	No access to internet	42001016
570	From home	42001017
240	From cell phone	42001017
249	From work	42001017
51	From elsewhere	42001017
747	No access to internet	42001017
96	From home	42001018
393	From cell phone	42001018
15	From work	42001018
108	From elsewhere	42001018
1389	No access to internet	42001018
30	From home	42001019
246	From cell phone	42001019
21	From work	42001019
174	From elsewhere	42001019
1344	No access to internet	42001019
45	From home	42001020
369	From cell phone	42001020
24	From work	42001020
111	From elsewhere	42001020
1323	No access to internet	42001020
45	From home	42001021
282	From cell phone	42001021
45	From work	42001021
258	From elsewhere	42001021
1173	No access to internet	42001021
45	From home	42001022
351	From cell phone	42001022
27	From work	42001022
72	From elsewhere	42001022
1596	No access to internet	42001022
78	From home	42001023
153	From cell phone	42001023
21	From work	42001023
18	From elsewhere	42001023
996	No access to internet	42001023
24	From home	42001024
48	From cell phone	42001024
9	From work	42001024
3	From elsewhere	42001024
462	No access to internet	42001024
153	From home	42001025
288	From cell phone	42001025
93	From work	42001025
150	From elsewhere	42001025
1566	No access to internet	42001025
57	From home	42003001
396	From cell phone	42003001
30	From work	42003001
48	From elsewhere	42003001
1734	No access to internet	42003001
24	From home	42003002
333	From cell phone	42003002
21	From work	42003002
75	From elsewhere	42003002
1266	No access to internet	42003002
219	From home	42003003
306	From cell phone	42003003
90	From work	42003003
102	From elsewhere	42003003
1182	No access to internet	42003003
48	From home	42003004
126	From cell phone	42003004
18	From work	42003004
90	From elsewhere	42003004
624	No access to internet	42003004
33	From home	42003005
396	From cell phone	42003005
6	From work	42003005
54	From elsewhere	42003005
819	No access to internet	42003005
42	From home	42003006
69	From cell phone	42003006
24	From work	42003006
6	From elsewhere	42003006
573	No access to internet	42003006
132	From home	42003007
342	From cell phone	42003007
30	From work	42003007
123	From elsewhere	42003007
2208	No access to internet	42003007
114	From home	42003008
504	From cell phone	42003008
51	From work	42003008
66	From elsewhere	42003008
3012	No access to internet	42003008
45	From home	42003009
237	From cell phone	42003009
33	From work	42003009
213	From elsewhere	42003009
1146	No access to internet	42003009
33	From home	42003010
285	From cell phone	42003010
33	From work	42003010
93	From elsewhere	42003010
1221	No access to internet	42003010
36	From home	42003011
177	From cell phone	42003011
27	From work	42003011
93	From elsewhere	42003011
954	No access to internet	42003011
87	From home	42003012
330	From cell phone	42003012
60	From work	42003012
177	From elsewhere	42003012
1248	No access to internet	42003012
378	From home	42003013
267	From cell phone	42003013
132	From work	42003013
81	From elsewhere	42003013
1332	No access to internet	42003013
63	From home	42003014
378	From cell phone	42003014
21	From work	42003014
342	From elsewhere	42003014
1125	No access to internet	42003014
24	From home	42003015
189	From cell phone	42003015
21	From work	42003015
54	From elsewhere	42003015
966	No access to internet	42003015
30	From home	42003016
159	From cell phone	42003016
21	From work	42003016
69	From elsewhere	42003016
2133	No access to internet	42003016
27	From home	42003017
420	From cell phone	42003017
21	From work	42003017
72	From elsewhere	42003017
1383	No access to internet	42003017
312	From home	42003018
270	From cell phone	42003018
81	From work	42003018
36	From elsewhere	42003018
1053	No access to internet	42003018
36	From home	42003019
207	From cell phone	42003019
30	From work	42003019
48	From elsewhere	42003019
1623	No access to internet	42003019
150	From home	42003020
189	From cell phone	42003020
24	From work	42003020
42	From elsewhere	42003020
1362	No access to internet	42003020
108	From home	42004001
810	From cell phone	42004001
102	From work	42004001
123	From elsewhere	42004001
3567	No access to internet	42004001
42	From home	42004002
456	From cell phone	42004002
33	From work	42004002
45	From elsewhere	42004002
645	No access to internet	42004002
72	From home	42004003
264	From cell phone	42004003
21	From work	42004003
342	From elsewhere	42004003
897	No access to internet	42004003
27	From home	42004004
243	From cell phone	42004004
9	From work	42004004
246	From elsewhere	42004004
858	No access to internet	42004004
117	From home	42004005
432	From cell phone	42004005
69	From work	42004005
75	From elsewhere	42004005
1476	No access to internet	42004005
66	From home	42004006
387	From cell phone	42004006
21	From work	42004006
60	From elsewhere	42004006
885	No access to internet	42004006
30	From home	42004007
165	From cell phone	42004007
30	From work	42004007
195	From elsewhere	42004007
657	No access to internet	42004007
54	From home	42004008
291	From cell phone	42004008
54	From work	42004008
231	From elsewhere	42004008
1422	No access to internet	42004008
96	From home	42004009
267	From cell phone	42004009
78	From work	42004009
354	From elsewhere	42004009
945	No access to internet	42004009
171	From home	42004010
630	From cell phone	42004010
84	From work	42004010
123	From elsewhere	42004010
996	No access to internet	42004010
117	From home	42004011
333	From cell phone	42004011
36	From work	42004011
132	From elsewhere	42004011
813	No access to internet	42004011
36	From home	42004012
393	From cell phone	42004012
42	From work	42004012
279	From elsewhere	42004012
726	No access to internet	42004012
105	From home	42004013
417	From cell phone	42004013
36	From work	42004013
321	From elsewhere	42004013
3153	No access to internet	42004013
1086	From home	42004014
642	From cell phone	42004014
663	From work	42004014
156	From elsewhere	42004014
1170	No access to internet	42004014
147	From home	42004015
309	From cell phone	42004015
78	From work	42004015
57	From elsewhere	42004015
423	No access to internet	42004015
639	From home	42004016
396	From cell phone	42004016
330	From work	42004016
108	From elsewhere	42004016
900	No access to internet	42004016
414	From home	42004017
906	From cell phone	42004017
321	From work	42004017
147	From elsewhere	42004017
999	No access to internet	42004017
234	From home	42004018
246	From cell phone	42004018
141	From work	42004018
42	From elsewhere	42004018
498	No access to internet	42004018
48	From home	42004019
729	From cell phone	42004019
63	From work	42004019
222	From elsewhere	42004019
3396	No access to internet	42004019
120	From home	42004020
471	From cell phone	42004020
87	From work	42004020
327	From elsewhere	42004020
1713	No access to internet	42004020
30	From home	42004021
132	From cell phone	42004021
21	From work	42004021
219	From elsewhere	42004021
822	No access to internet	42004021
48	From home	42005001
327	From cell phone	42005001
18	From work	42005001
36	From elsewhere	42005001
804	No access to internet	42005001
57	From home	42005002
423	From cell phone	42005002
36	From work	42005002
306	From elsewhere	42005002
1875	No access to internet	42005002
33	From home	42005003
309	From cell phone	42005003
18	From work	42005003
162	From elsewhere	42005003
999	No access to internet	42005003
123	From home	42005004
378	From cell phone	42005004
39	From work	42005004
72	From elsewhere	42005004
1344	No access to internet	42005004
195	From home	42005005
207	From cell phone	42005005
102	From work	42005005
60	From elsewhere	42005005
1137	No access to internet	42005005
54	From home	42005006
333	From cell phone	42005006
66	From work	42005006
171	From elsewhere	42005006
1083	No access to internet	42005006
57	From home	42005007
291	From cell phone	42005007
24	From work	42005007
345	From elsewhere	42005007
1137	No access to internet	42005007
39	From home	42005008
165	From cell phone	42005008
18	From work	42005008
243	From elsewhere	42005008
1371	No access to internet	42005008
60	From home	42005009
318	From cell phone	42005009
15	From work	42005009
180	From elsewhere	42005009
1383	No access to internet	42005009
120	From home	49400001
768	From cell phone	49400001
117	From work	49400001
270	From elsewhere	49400001
3036	No access to internet	49400001
312	From home	49400002
939	From cell phone	49400002
207	From work	49400002
381	From elsewhere	49400002
2841	No access to internet	49400002
162	From home	49400003
624	From cell phone	49400003
135	From work	49400003
210	From elsewhere	49400003
3090	No access to internet	49400003
126	From home	49400004
672	From cell phone	49400004
102	From work	49400004
120	From elsewhere	49400004
2598	No access to internet	49400004
231	From home	49400005
1203	From cell phone	49400005
189	From work	49400005
252	From elsewhere	49400005
2883	No access to internet	49400005
153	From home	49400006
1020	From cell phone	49400006
75	From work	49400006
228	From elsewhere	49400006
3618	No access to internet	49400006
51	From home	49400007
636	From cell phone	49400007
81	From work	49400007
165	From elsewhere	49400007
1641	No access to internet	49400007
159	From home	49400008
768	From cell phone	49400008
96	From work	49400008
270	From elsewhere	49400008
3549	No access to internet	49400008
390	From home	49400009
891	From cell phone	49400009
396	From work	49400009
228	From elsewhere	49400009
1950	No access to internet	49400009
297	From home	49400010
1047	From cell phone	49400010
204	From work	49400010
429	From elsewhere	49400010
3621	No access to internet	49400010
213	From home	49400011
693	From cell phone	49400011
108	From work	49400011
192	From elsewhere	49400011
3240	No access to internet	49400011
267	From home	49400012
1452	From cell phone	49400012
213	From work	49400012
420	From elsewhere	49400012
5256	No access to internet	49400012
132	From home	49400013
807	From cell phone	49400013
117	From work	49400013
198	From elsewhere	49400013
1812	No access to internet	49400013
249	From home	49400014
1335	From cell phone	49400014
279	From work	49400014
618	From elsewhere	49400014
2475	No access to internet	49400014
282	From home	49400015
1218	From cell phone	49400015
258	From work	49400015
420	From elsewhere	49400015
2679	No access to internet	49400015
201	From home	49400016
591	From cell phone	49400016
198	From work	49400016
273	From elsewhere	49400016
2082	No access to internet	49400016
336	From home	49400017
828	From cell phone	49400017
207	From work	49400017
207	From elsewhere	49400017
3255	No access to internet	49400017
978	From home	49400018
1851	From cell phone	49400018
804	From work	49400018
303	From elsewhere	49400018
4023	No access to internet	49400018
909	From home	49400019
2073	From cell phone	49400019
633	From work	49400019
630	From elsewhere	49400019
1194	No access to internet	49400019
1275	From home	49400020
996	From cell phone	49400020
612	From work	49400020
345	From elsewhere	49400020
1047	No access to internet	49400020
1317	From home	49400021
729	From cell phone	49400021
450	From work	49400021
114	From elsewhere	49400021
906	No access to internet	49400021
1644	From home	49400022
1395	From cell phone	49400022
885	From work	49400022
435	From elsewhere	49400022
933	No access to internet	49400022
771	From home	49400023
981	From cell phone	49400023
243	From work	49400023
438	From elsewhere	49400023
816	No access to internet	49400023
948	From home	49400024
597	From cell phone	49400024
537	From work	49400024
114	From elsewhere	49400024
1404	No access to internet	49400024
1530	From home	49400025
642	From cell phone	49400025
735	From work	49400025
99	From elsewhere	49400025
1092	No access to internet	49400025
861	From home	49400026
657	From cell phone	49400026
315	From work	49400026
165	From elsewhere	49400026
1686	No access to internet	49400026
168	From home	49400027
1314	From cell phone	49400027
72	From work	49400027
150	From elsewhere	49400027
5301	No access to internet	49400027
102	From home	49400028
615	From cell phone	49400028
45	From work	49400028
231	From elsewhere	49400028
3063	No access to internet	49400028
120	From home	49400029
795	From cell phone	49400029
75	From work	49400029
207	From elsewhere	49400029
2460	No access to internet	49400029
216	From home	49400030
1038	From cell phone	49400030
195	From work	49400030
177	From elsewhere	49400030
2547	No access to internet	49400030
102	From home	49400031
636	From cell phone	49400031
48	From work	49400031
273	From elsewhere	49400031
1878	No access to internet	49400031
207	From home	49400032
663	From cell phone	49400032
51	From work	49400032
261	From elsewhere	49400032
2256	No access to internet	49400032
69	From home	49400033
390	From cell phone	49400033
63	From work	49400033
114	From elsewhere	49400033
2988	No access to internet	49400033
93	From home	49400034
1140	From cell phone	49400034
42	From work	49400034
261	From elsewhere	49400034
3801	No access to internet	49400034
87	From home	49400035
552	From cell phone	49400035
48	From work	49400035
108	From elsewhere	49400035
3957	No access to internet	49400035
72	From home	49400036
528	From cell phone	49400036
48	From work	49400036
99	From elsewhere	49400036
3087	No access to internet	49400036
138	From home	49400037
588	From cell phone	49400037
51	From work	49400037
324	From elsewhere	49400037
4380	No access to internet	49400037
30	From home	49400038
456	From cell phone	49400038
24	From work	49400038
30	From elsewhere	49400038
3066	No access to internet	49400038
123	From home	49400039
747	From cell phone	49400039
81	From work	49400039
159	From elsewhere	49400039
2943	No access to internet	49400039
216	From home	49400040
822	From cell phone	49400040
198	From work	49400040
390	From elsewhere	49400040
2271	No access to internet	49400040
42	From home	49400041
462	From cell phone	49400041
15	From work	49400041
111	From elsewhere	49400041
3564	No access to internet	49400041
48	From home	49400042
300	From cell phone	49400042
24	From work	49400042
75	From elsewhere	49400042
3144	No access to internet	49400042
93	From home	49400043
537	From cell phone	49400043
48	From work	49400043
276	From elsewhere	49400043
3576	No access to internet	49400043
1812	From home	49400044
1011	From cell phone	49400044
942	From work	49400044
210	From elsewhere	49400044
2580	No access to internet	49400044
222	From home	49400045
1464	From cell phone	49400045
153	From work	49400045
372	From elsewhere	49400045
9399	No access to internet	49400045
222	From home	49400046
1992	From cell phone	49400046
240	From work	49400046
567	From elsewhere	49400046
7716	No access to internet	49400046
522	From home	49400047
1035	From cell phone	49400047
504	From work	49400047
279	From elsewhere	49400047
1530	No access to internet	49400047
1131	From home	49400048
852	From cell phone	49400048
684	From work	49400048
153	From elsewhere	49400048
1788	No access to internet	49400048
114	From home	49400049
603	From cell phone	49400049
93	From work	49400049
216	From elsewhere	49400049
3561	No access to internet	49400049
1503	From home	74201001
927	From cell phone	74201001
858	From work	74201001
138	From elsewhere	74201001
2361	No access to internet	74201001
228	From home	74201002
942	From cell phone	74201002
126	From work	74201002
423	From elsewhere	74201002
3048	No access to internet	74201002
489	From home	74201003
1356	From cell phone	74201003
360	From work	74201003
333	From elsewhere	74201003
3249	No access to internet	74201003
1416	From home	74201004
1344	From cell phone	74201004
741	From work	74201004
861	From elsewhere	74201004
975	No access to internet	74201004
1731	From home	74201005
831	From cell phone	74201005
936	From work	74201005
231	From elsewhere	74201005
2025	No access to internet	74201005
225	From home	74201006
1143	From cell phone	74201006
105	From work	74201006
1062	From elsewhere	74201006
5034	No access to internet	74201006
210	From home	74201007
1029	From cell phone	74201007
120	From work	74201007
549	From elsewhere	74201007
4023	No access to internet	74201007
237	From home	74201008
1041	From cell phone	74201008
156	From work	74201008
330	From elsewhere	74201008
2676	No access to internet	74201008
966	From home	74201009
2580	From cell phone	74201009
657	From work	74201009
1482	From elsewhere	74201009
1953	No access to internet	74201009
630	From home	74201010
1461	From cell phone	74201010
426	From work	74201010
675	From elsewhere	74201010
2502	No access to internet	74201010
288	From home	74201011
951	From cell phone	74201011
180	From work	74201011
612	From elsewhere	74201011
4233	No access to internet	74201011
144	From home	74201012
627	From cell phone	74201012
81	From work	74201012
255	From elsewhere	74201012
2256	No access to internet	74201012
210	From home	74201013
738	From cell phone	74201013
84	From work	74201013
291	From elsewhere	74201013
3489	No access to internet	74201013
129	From home	74201014
936	From cell phone	74201014
57	From work	74201014
417	From elsewhere	74201014
2484	No access to internet	74201014
609	From home	74201015
2172	From cell phone	74201015
645	From work	74201015
501	From elsewhere	74201015
4113	No access to internet	74201015
720	From home	74201016
783	From cell phone	74201016
525	From work	74201016
120	From elsewhere	74201016
2886	No access to internet	74201016
90	From home	74201017
645	From cell phone	74201017
66	From work	74201017
249	From elsewhere	74201017
2559	No access to internet	74201017
120	From home	74201018
609	From cell phone	74201018
48	From work	74201018
360	From elsewhere	74201018
3537	No access to internet	74201018
177	From home	74201019
810	From cell phone	74201019
81	From work	74201019
438	From elsewhere	74201019
3252	No access to internet	74201019
312	From home	74201020
1149	From cell phone	74201020
222	From work	74201020
1164	From elsewhere	74201020
1917	No access to internet	74201020
450	From home	74201021
765	From cell phone	74201021
192	From work	74201021
354	From elsewhere	74201021
4032	No access to internet	74201021
210	From home	74201022
1143	From cell phone	74201022
90	From work	74201022
696	From elsewhere	74201022
3123	No access to internet	74201022
252	From home	74201023
771	From cell phone	74201023
156	From work	74201023
270	From elsewhere	74201023
3432	No access to internet	74201023
90	From home	74201024
975	From cell phone	74201024
84	From work	74201024
258	From elsewhere	74201024
2010	No access to internet	74201024
381	From home	74201025
834	From cell phone	74201025
162	From work	74201025
771	From elsewhere	74201025
3909	No access to internet	74201025
216	From home	74201026
1335	From cell phone	74201026
216	From work	74201026
1065	From elsewhere	74201026
5145	No access to internet	74201026
75	From home	74201027
516	From cell phone	74201027
42	From work	74201027
561	From elsewhere	74201027
2031	No access to internet	74201027
339	From home	74201028
1518	From cell phone	74201028
174	From work	74201028
1155	From elsewhere	74201028
4140	No access to internet	74201028
171	From home	74201029
720	From cell phone	74201029
90	From work	74201029
648	From elsewhere	74201029
3378	No access to internet	74201029
135	From home	74201030
789	From cell phone	74201030
78	From work	74201030
507	From elsewhere	74201030
1710	No access to internet	74201030
228	From home	74201031
795	From cell phone	74201031
126	From work	74201031
285	From elsewhere	74201031
1389	No access to internet	74201031
84	From home	74201032
759	From cell phone	74201032
54	From work	74201032
330	From elsewhere	74201032
1953	No access to internet	74201032
177	From home	74201033
777	From cell phone	74201033
105	From work	74201033
759	From elsewhere	74201033
2469	No access to internet	74201033
120	From home	74201034
543	From cell phone	74201034
69	From work	74201034
342	From elsewhere	74201034
1986	No access to internet	74201034
87	From home	74201035
570	From cell phone	74201035
66	From work	74201035
204	From elsewhere	74201035
2061	No access to internet	74201035
297	From home	74201036
858	From cell phone	74201036
216	From work	74201036
1128	From elsewhere	74201036
4539	No access to internet	74201036
81	From home	74201037
567	From cell phone	74201037
51	From work	74201037
381	From elsewhere	74201037
1872	No access to internet	74201037
216	From home	74201038
870	From cell phone	74201038
129	From work	74201038
534	From elsewhere	74201038
2466	No access to internet	74201038
66	From home	74201039
432	From cell phone	74201039
63	From work	74201039
210	From elsewhere	74201039
3096	No access to internet	74201039
237	From home	74201040
630	From cell phone	74201040
63	From work	74201040
348	From elsewhere	74201040
2115	No access to internet	74201040
183	From home	74201041
699	From cell phone	74201041
174	From work	74201041
192	From elsewhere	74201041
2376	No access to internet	74201041
102	From home	74201042
426	From cell phone	74201042
45	From work	74201042
72	From elsewhere	74201042
2109	No access to internet	74201042
141	From home	74201043
795	From cell phone	74201043
99	From work	74201043
306	From elsewhere	74201043
4143	No access to internet	74201043
111	From home	74201044
789	From cell phone	74201044
84	From work	74201044
438	From elsewhere	74201044
4902	No access to internet	74201044
672	From home	74201045
912	From cell phone	74201045
459	From work	74201045
174	From elsewhere	74201045
1704	No access to internet	74201045
183	From home	74202001
360	From cell phone	74202001
111	From work	74202001
54	From elsewhere	74202001
1812	No access to internet	74202001
447	From home	74202002
231	From cell phone	74202002
246	From work	74202002
18	From elsewhere	74202002
609	No access to internet	74202002
288	From home	74202003
258	From cell phone	74202003
228	From work	74202003
63	From elsewhere	74202003
795	No access to internet	74202003
561	From home	74202004
387	From cell phone	74202004
270	From work	74202004
60	From elsewhere	74202004
1209	No access to internet	74202004
471	From home	74202005
528	From cell phone	74202005
258	From work	74202005
144	From elsewhere	74202005
1947	No access to internet	74202005
48	From home	74202006
333	From cell phone	74202006
27	From work	74202006
57	From elsewhere	74202006
2358	No access to internet	74202006
276	From home	74202007
369	From cell phone	74202007
141	From work	74202007
54	From elsewhere	74202007
1461	No access to internet	74202007
57	From home	74202008
237	From cell phone	74202008
54	From work	74202008
72	From elsewhere	74202008
2751	No access to internet	74202008
39	From home	74202009
48	From cell phone	74202009
15	From work	74202009
3	From elsewhere	74202009
138	No access to internet	74202009
264	From home	74202010
381	From cell phone	74202010
51	From work	74202010
219	From elsewhere	74202010
1692	No access to internet	74202010
237	From home	74202011
417	From cell phone	74202011
159	From work	74202011
102	From elsewhere	74202011
1164	No access to internet	74202011
99	From home	74202012
183	From cell phone	74202012
93	From work	74202012
24	From elsewhere	74202012
789	No access to internet	74202012
219	From home	74202013
357	From cell phone	74202013
183	From work	74202013
54	From elsewhere	74202013
1296	No access to internet	74202013
588	From home	74202014
264	From cell phone	74202014
345	From work	74202014
72	From elsewhere	74202014
624	No access to internet	74202014
72	From home	74203001
303	From cell phone	74203001
63	From work	74203001
30	From elsewhere	74203001
1437	No access to internet	74203001
48	From home	74203002
327	From cell phone	74203002
51	From work	74203002
111	From elsewhere	74203002
1794	No access to internet	74203002
87	From home	74203003
483	From cell phone	74203003
75	From work	74203003
237	From elsewhere	74203003
1254	No access to internet	74203003
57	From home	74203004
267	From cell phone	74203004
51	From work	74203004
105	From elsewhere	74203004
1557	No access to internet	74203004
30	From home	74203005
237	From cell phone	74203005
27	From work	74203005
81	From elsewhere	74203005
1641	No access to internet	74203005
69	From home	74203006
195	From cell phone	74203006
39	From work	74203006
39	From elsewhere	74203006
1362	No access to internet	74203006
51	From home	74203007
321	From cell phone	74203007
45	From work	74203007
69	From elsewhere	74203007
2466	No access to internet	74203007
540	From home	74203008
486	From cell phone	74203008
354	From work	74203008
60	From elsewhere	74203008
1365	No access to internet	74203008
672	From home	74203009
336	From cell phone	74203009
348	From work	74203009
63	From elsewhere	74203009
789	No access to internet	74203009
414	From home	74203010
399	From cell phone	74203010
255	From work	74203010
195	From elsewhere	74203010
903	No access to internet	74203010
78	From home	74203011
240	From cell phone	74203011
48	From work	74203011
39	From elsewhere	74203011
1707	No access to internet	74203011
168	From home	74203012
402	From cell phone	74203012
126	From work	74203012
57	From elsewhere	74203012
1788	No access to internet	74203012
63	From home	74203013
321	From cell phone	74203013
45	From work	74203013
135	From elsewhere	74203013
2193	No access to internet	74203013
105	From home	74801001
456	From cell phone	74801001
78	From work	74801001
612	From elsewhere	74801001
3084	No access to internet	74801001
96	From home	74801002
1044	From cell phone	74801002
66	From work	74801002
204	From elsewhere	74801002
3459	No access to internet	74801002
414	From home	74801003
624	From cell phone	74801003
168	From work	74801003
291	From elsewhere	74801003
2295	No access to internet	74801003
93	From home	74801004
789	From cell phone	74801004
153	From work	74801004
462	From elsewhere	74801004
2607	No access to internet	74801004
105	From home	74801005
414	From cell phone	74801005
84	From work	74801005
162	From elsewhere	74801005
1836	No access to internet	74801005
114	From home	74801006
474	From cell phone	74801006
120	From work	74801006
360	From elsewhere	74801006
792	No access to internet	74801006
309	From home	74801007
789	From cell phone	74801007
225	From work	74801007
309	From elsewhere	74801007
987	No access to internet	74801007
225	From home	74801008
711	From cell phone	74801008
201	From work	74801008
372	From elsewhere	74801008
1632	No access to internet	74801008
366	From home	74801009
372	From cell phone	74801009
225	From work	74801009
81	From elsewhere	74801009
963	No access to internet	74801009
96	From home	74801010
351	From cell phone	74801010
72	From work	74801010
1083	From elsewhere	74801010
1188	No access to internet	74801010
186	From home	74801011
765	From cell phone	74801011
189	From work	74801011
474	From elsewhere	74801011
2229	No access to internet	74801011
75	From home	74801012
300	From cell phone	74801012
51	From work	74801012
165	From elsewhere	74801012
1122	No access to internet	74801012
153	From home	74801013
690	From cell phone	74801013
174	From work	74801013
207	From elsewhere	74801013
1539	No access to internet	74801013
270	From home	74801014
744	From cell phone	74801014
228	From work	74801014
168	From elsewhere	74801014
2163	No access to internet	74801014
102	From home	74801015
321	From cell phone	74801015
63	From work	74801015
276	From elsewhere	74801015
2349	No access to internet	74801015
234	From home	74801016
909	From cell phone	74801016
228	From work	74801016
72	From elsewhere	74801016
3204	No access to internet	74801016
801	From home	74801017
402	From cell phone	74801017
492	From work	74801017
69	From elsewhere	74801017
1170	No access to internet	74801017
966	From home	74801018
477	From cell phone	74801018
717	From work	74801018
78	From elsewhere	74801018
969	No access to internet	74801018
96	From home	74801019
372	From cell phone	74801019
99	From work	74801019
183	From elsewhere	74801019
1119	No access to internet	74801019
573	From home	74801020
981	From cell phone	74801020
381	From work	74801020
108	From elsewhere	74801020
2184	No access to internet	74801020
1014	From home	74801021
393	From cell phone	74801021
612	From work	74801021
72	From elsewhere	74801021
816	No access to internet	74801021
1287	From home	74801022
570	From cell phone	74801022
684	From work	74801022
96	From elsewhere	74801022
1161	No access to internet	74801022
258	From home	74801023
630	From cell phone	74801023
207	From work	74801023
117	From elsewhere	74801023
3513	No access to internet	74801023
129	From home	74801024
645	From cell phone	74801024
99	From work	74801024
231	From elsewhere	74801024
2931	No access to internet	74801024
183	From home	74801025
261	From cell phone	74801025
45	From work	74801025
111	From elsewhere	74801025
2046	No access to internet	74801025
504	From home	74801026
831	From cell phone	74801026
384	From work	74801026
132	From elsewhere	74801026
2391	No access to internet	74801026
147	From home	74801027
672	From cell phone	74801027
144	From work	74801027
177	From elsewhere	74801027
3840	No access to internet	74801027
1281	From home	74801028
459	From cell phone	74801028
777	From work	74801028
72	From elsewhere	74801028
480	No access to internet	74801028
663	From home	74801029
507	From cell phone	74801029
468	From work	74801029
66	From elsewhere	74801029
1026	No access to internet	74801029
198	From home	74801030
633	From cell phone	74801030
162	From work	74801030
66	From elsewhere	74801030
5112	No access to internet	74801030
198	From home	74801031
711	From cell phone	74801031
105	From work	74801031
81	From elsewhere	74801031
2397	No access to internet	74801031
90	From home	74801032
288	From cell phone	74801032
84	From work	74801032
24	From elsewhere	74801032
1878	No access to internet	74801032
252	From home	74801033
558	From cell phone	74801033
180	From work	74801033
57	From elsewhere	74801033
2283	No access to internet	74801033
60	From home	74801034
840	From cell phone	74801034
54	From work	74801034
129	From elsewhere	74801034
3801	No access to internet	74801034
117	From home	74802001
474	From cell phone	74802001
75	From work	74802001
51	From elsewhere	74802001
2523	No access to internet	74802001
324	From home	74802002
615	From cell phone	74802002
207	From work	74802002
126	From elsewhere	74802002
2196	No access to internet	74802002
192	From home	74802003
330	From cell phone	74802003
162	From work	74802003
30	From elsewhere	74802003
1140	No access to internet	74802003
138	From home	74802004
168	From cell phone	74802004
81	From work	74802004
18	From elsewhere	74802004
630	No access to internet	74802004
141	From home	74802005
303	From cell phone	74802005
162	From work	74802005
96	From elsewhere	74802005
879	No access to internet	74802005
462	From home	74802006
411	From cell phone	74802006
291	From work	74802006
63	From elsewhere	74802006
942	No access to internet	74802006
543	From home	74802007
468	From cell phone	74802007
471	From work	74802007
75	From elsewhere	74802007
927	No access to internet	74802007
189	From home	74802008
552	From cell phone	74802008
117	From work	74802008
60	From elsewhere	74802008
1449	No access to internet	74802008
546	From home	74802009
513	From cell phone	74802009
420	From work	74802009
72	From elsewhere	74802009
1326	No access to internet	74802009
78	From home	74802010
222	From cell phone	74802010
36	From work	74802010
81	From elsewhere	74802010
654	No access to internet	74802010
105	From home	74802011
339	From cell phone	74802011
96	From work	74802011
132	From elsewhere	74802011
510	No access to internet	74802011
9	From home	74802012
306	From cell phone	74802012
15	From work	74802012
105	From elsewhere	74802012
1728	No access to internet	74802012
87	From home	74802013
294	From cell phone	74802013
75	From work	74802013
171	From elsewhere	74802013
1044	No access to internet	74802013
36	From home	74802014
243	From cell phone	74802014
51	From work	74802014
111	From elsewhere	74802014
1530	No access to internet	74802014
45	From home	74802015
318	From cell phone	74802015
36	From work	74802015
258	From elsewhere	74802015
1200	No access to internet	74802015
123	From home	74802016
570	From cell phone	74802016
99	From work	74802016
330	From elsewhere	74802016
1086	No access to internet	74802016
48	From home	74802017
300	From cell phone	74802017
21	From work	74802017
129	From elsewhere	74802017
669	No access to internet	74802017
72	From home	74802018
411	From cell phone	74802018
72	From work	74802018
264	From elsewhere	74802018
1566	No access to internet	74802018
48	From home	74802019
372	From cell phone	74802019
18	From work	74802019
96	From elsewhere	74802019
927	No access to internet	74802019
105	From home	74802020
411	From cell phone	74802020
126	From work	74802020
60	From elsewhere	74802020
1713	No access to internet	74802020
39	From home	74802021
258	From cell phone	74802021
15	From work	74802021
51	From elsewhere	74802021
822	No access to internet	74802021
57	From home	74802022
366	From cell phone	74802022
39	From work	74802022
174	From elsewhere	74802022
861	No access to internet	74802022
60	From home	74803001
456	From cell phone	74803001
54	From work	74803001
27	From elsewhere	74803001
2892	No access to internet	74803001
264	From home	74803002
741	From cell phone	74803002
144	From work	74803002
120	From elsewhere	74803002
1851	No access to internet	74803002
0	From home	74803003
12	From cell phone	74803003
0	From work	74803003
0	From elsewhere	74803003
243	No access to internet	74803003
168	From home	74803004
426	From cell phone	74803004
99	From work	74803004
135	From elsewhere	74803004
786	No access to internet	74803004
105	From home	74803005
375	From cell phone	74803005
81	From work	74803005
36	From elsewhere	74803005
1407	No access to internet	74803005
345	From home	74803006
582	From cell phone	74803006
201	From work	74803006
102	From elsewhere	74803006
1101	No access to internet	74803006
60	From home	74803007
333	From cell phone	74803007
93	From work	74803007
393	From elsewhere	74803007
1533	No access to internet	74803007
81	From home	74803008
408	From cell phone	74803008
57	From work	74803008
336	From elsewhere	74803008
1878	No access to internet	74803008
63	From home	74803009
195	From cell phone	74803009
15	From work	74803009
12	From elsewhere	74803009
2340	No access to internet	74803009
36	From home	74803010
225	From cell phone	74803010
30	From work	74803010
165	From elsewhere	74803010
2640	No access to internet	74803010
6	From home	74803011
267	From cell phone	74803011
24	From work	74803011
24	From elsewhere	74803011
1836	No access to internet	74803011
75	From home	74803012
579	From cell phone	74803012
51	From work	74803012
81	From elsewhere	74803012
2244	No access to internet	74803012
45	From home	74803013
285	From cell phone	74803013
51	From work	74803013
105	From elsewhere	74803013
1743	No access to internet	74803013
6	From home	74803014
234	From cell phone	74803014
24	From work	74803014
12	From elsewhere	74803014
2907	No access to internet	74803014
51	From home	74803015
357	From cell phone	74803015
24	From work	74803015
99	From elsewhere	74803015
1962	No access to internet	74803015
78	From home	74803016
303	From cell phone	74803016
69	From work	74803016
132	From elsewhere	74803016
2742	No access to internet	74803016
81	From home	74804001
426	From cell phone	74804001
90	From work	74804001
102	From elsewhere	74804001
2505	No access to internet	74804001
120	From home	74804002
462	From cell phone	74804002
42	From work	74804002
216	From elsewhere	74804002
1476	No access to internet	74804002
15	From home	74804003
171	From cell phone	74804003
9	From work	74804003
387	From elsewhere	74804003
1707	No access to internet	74804003
18	From home	74804004
429	From cell phone	74804004
27	From work	74804004
27	From elsewhere	74804004
2451	No access to internet	74804004
90	From home	74804005
195	From cell phone	74804005
36	From work	74804005
30	From elsewhere	74804005
903	No access to internet	74804005
36	From home	74804006
234	From cell phone	74804006
21	From work	74804006
162	From elsewhere	74804006
1221	No access to internet	74804006
123	From home	74804007
381	From cell phone	74804007
30	From work	74804007
468	From elsewhere	74804007
1140	No access to internet	74804007
42	From home	74804008
192	From cell phone	74804008
36	From work	74804008
48	From elsewhere	74804008
1785	No access to internet	74804008
33	From home	74804009
228	From cell phone	74804009
18	From work	74804009
183	From elsewhere	74804009
1611	No access to internet	74804009
45	From home	74804010
351	From cell phone	74804010
51	From work	74804010
81	From elsewhere	74804010
1521	No access to internet	74804010
96	From home	74804011
306	From cell phone	74804011
102	From work	74804011
33	From elsewhere	74804011
2598	No access to internet	74804011
225	From home	74804012
381	From cell phone	74804012
84	From work	74804012
60	From elsewhere	74804012
792	No access to internet	74804012
57	From home	74804013
423	From cell phone	74804013
57	From work	74804013
75	From elsewhere	74804013
1785	No access to internet	74804013
138	From home	74804014
336	From cell phone	74804014
72	From work	74804014
141	From elsewhere	74804014
5052	No access to internet	74804014
99	From home	74804015
300	From cell phone	74804015
96	From work	74804015
24	From elsewhere	74804015
1461	No access to internet	74804015
333	From home	74804016
534	From cell phone	74804016
159	From work	74804016
180	From elsewhere	74804016
1311	No access to internet	74804016
417	From home	74804017
291	From cell phone	74804017
156	From work	74804017
90	From elsewhere	74804017
927	No access to internet	74804017
234	From home	74804018
570	From cell phone	74804018
150	From work	74804018
129	From elsewhere	74804018
999	No access to internet	74804018
0	From home	74804019
0	From cell phone	74804019
0	From work	74804019
0	From elsewhere	74804019
0	No access to internet	74804019
81	From home	74804020
618	From cell phone	74804020
51	From work	74804020
153	From elsewhere	74804020
2646	No access to internet	74804020
441	From home	74804021
591	From cell phone	74804021
222	From work	74804021
90	From elsewhere	74804021
2661	No access to internet	74804021
51	From home	74804022
246	From cell phone	74804022
21	From work	74804022
66	From elsewhere	74804022
1518	No access to internet	74804022
126	From home	74804023
381	From cell phone	74804023
60	From work	74804023
90	From elsewhere	74804023
1731	No access to internet	74804023
237	From home	74804024
339	From cell phone	74804024
114	From work	74804024
105	From elsewhere	74804024
753	No access to internet	74804024
60	From home	74804025
231	From cell phone	74804025
36	From work	74804025
135	From elsewhere	74804025
1680	No access to internet	74804025
132	From home	74804026
561	From cell phone	74804026
90	From work	74804026
339	From elsewhere	74804026
2031	No access to internet	74804026
111	From home	74804027
228	From cell phone	74804027
75	From work	74804027
45	From elsewhere	74804027
1716	No access to internet	74804027
363	From home	74804028
339	From cell phone	74804028
168	From work	74804028
84	From elsewhere	74804028
1479	No access to internet	74804028
2265	From home	79700001
3486	From cell phone	79700001
1764	From work	79700001
1605	From elsewhere	79700001
12483	No access to internet	79700001
357	From home	79700002
1863	From cell phone	79700002
549	From work	79700002
1689	From elsewhere	79700002
7824	No access to internet	79700002
267	From home	79700003
1353	From cell phone	79700003
261	From work	79700003
1167	From elsewhere	79700003
7176	No access to internet	79700003
201	From home	79700004
837	From cell phone	79700004
144	From work	79700004
534	From elsewhere	79700004
4626	No access to internet	79700004
303	From home	79700005
1491	From cell phone	79700005
351	From work	79700005
1341	From elsewhere	79700005
6180	No access to internet	79700005
375	From home	79700006
1803	From cell phone	79700006
330	From work	79700006
2289	From elsewhere	79700006
5784	No access to internet	79700006
477	From home	79700007
1473	From cell phone	79700007
372	From work	79700007
1410	From elsewhere	79700007
5019	No access to internet	79700007
390	From home	79700008
1725	From cell phone	79700008
342	From work	79700008
1659	From elsewhere	79700008
6897	No access to internet	79700008
450	From home	79700009
1659	From cell phone	79700009
378	From work	79700009
1638	From elsewhere	79700009
3135	No access to internet	79700009
387	From home	79700010
1398	From cell phone	79700010
408	From work	79700010
1410	From elsewhere	79700010
3699	No access to internet	79700010
228	From home	79700011
1593	From cell phone	79700011
195	From work	79700011
651	From elsewhere	79700011
4350	No access to internet	79700011
699	From home	79700012
2778	From cell phone	79700012
528	From work	79700012
1674	From elsewhere	79700012
8223	No access to internet	79700012
1752	From home	79700013
2241	From cell phone	79700013
1422	From work	79700013
669	From elsewhere	79700013
3909	No access to internet	79700013
339	From home	79700014
1644	From cell phone	79700014
318	From work	79700014
1314	From elsewhere	79700014
5829	No access to internet	79700014
3018	From home	79700015
1554	From cell phone	79700015
2223	From work	79700015
303	From elsewhere	79700015
2712	No access to internet	79700015
2184	From home	79700016
1512	From cell phone	79700016
1497	From work	79700016
531	From elsewhere	79700016
2637	No access to internet	79700016
2379	From home	79700017
2895	From cell phone	79700017
1794	From work	79700017
738	From elsewhere	79700017
2868	No access to internet	79700017
3789	From home	79700018
1437	From cell phone	79700018
2139	From work	79700018
216	From elsewhere	79700018
2100	No access to internet	79700018
3711	From home	79700019
1185	From cell phone	79700019
1803	From work	79700019
300	From elsewhere	79700019
2265	No access to internet	79700019
3669	From home	79700020
1665	From cell phone	79700020
1674	From work	79700020
312	From elsewhere	79700020
2706	No access to internet	79700020
1773	From home	79700021
2310	From cell phone	79700021
1311	From work	79700021
795	From elsewhere	79700021
12021	No access to internet	79700021
2379	From home	79700022
2280	From cell phone	79700022
1794	From work	79700022
306	From elsewhere	79700022
3291	No access to internet	79700022
2688	From home	79700023
1473	From cell phone	79700023
2034	From work	79700023
288	From elsewhere	79700023
3183	No access to internet	79700023
2253	From home	79700024
2448	From cell phone	79700024
1872	From work	79700024
600	From elsewhere	79700024
7668	No access to internet	79700024
627	From home	79700025
2091	From cell phone	79700025
339	From work	79700025
648	From elsewhere	79700025
10026	No access to internet	79700025
192	From home	79700026
1887	From cell phone	79700026
180	From work	79700026
981	From elsewhere	79700026
7398	No access to internet	79700026
2622	From home	79700027
930	From cell phone	79700027
1476	From work	79700027
231	From elsewhere	79700027
1980	No access to internet	79700027
3108	From home	79700028
1200	From cell phone	79700028
1581	From work	79700028
309	From elsewhere	79700028
2253	No access to internet	79700028
321	From home	79700029
774	From cell phone	79700029
270	From work	79700029
357	From elsewhere	79700029
3003	No access to internet	79700029
210	From home	79700030
849	From cell phone	79700030
213	From work	79700030
609	From elsewhere	79700030
4833	No access to internet	79700030
1530	From home	79700031
1749	From cell phone	79700031
1239	From work	79700031
330	From elsewhere	79700031
4764	No access to internet	79700031
1857	From home	79700032
1710	From cell phone	79700032
1395	From work	79700032
267	From elsewhere	79700032
2709	No access to internet	79700032
1017	From home	79700033
2505	From cell phone	79700033
846	From work	79700033
972	From elsewhere	79700033
14115	No access to internet	79700033
381	From home	79700034
1512	From cell phone	79700034
255	From work	79700034
489	From elsewhere	79700034
3747	No access to internet	79700034
630	From home	79700035
2142	From cell phone	79700035
567	From work	79700035
765	From elsewhere	79700035
8058	No access to internet	79700035
1851	From home	79700036
1497	From cell phone	79700036
1278	From work	79700036
579	From elsewhere	79700036
4197	No access to internet	79700036
3045	From home	79700037
1512	From cell phone	79700037
1743	From work	79700037
333	From elsewhere	79700037
3054	No access to internet	79700037
3762	From home	79700038
1548	From cell phone	79700038
2187	From work	79700038
291	From elsewhere	79700038
1893	No access to internet	79700038
2115	From home	79700039
2076	From cell phone	79700039
1542	From work	79700039
414	From elsewhere	79700039
4344	No access to internet	79700039
798	From home	79700040
2292	From cell phone	79700040
762	From work	79700040
1035	From elsewhere	79700040
4581	No access to internet	79700040
939	From home	79700041
2583	From cell phone	79700041
669	From work	79700041
1035	From elsewhere	79700041
8289	No access to internet	79700041
1284	From home	79700042
2175	From cell phone	79700042
912	From work	79700042
834	From elsewhere	79700042
7743	No access to internet	79700042
1998	From home	79700043
1830	From cell phone	79700043
1509	From work	79700043
402	From elsewhere	79700043
2061	No access to internet	79700043
849	From home	79700044
2316	From cell phone	79700044
777	From work	79700044
1005	From elsewhere	79700044
4143	No access to internet	79700044
573	From home	79700045
1524	From cell phone	79700045
501	From work	79700045
696	From elsewhere	79700045
6003	No access to internet	79700045
684	From home	79700046
1929	From cell phone	79700046
453	From work	79700046
1704	From elsewhere	79700046
2526	No access to internet	79700046
414	From home	79700047
1899	From cell phone	79700047
411	From work	79700047
1152	From elsewhere	79700047
4692	No access to internet	79700047
327	From home	79700048
1290	From cell phone	79700048
249	From work	79700048
777	From elsewhere	79700048
3720	No access to internet	79700048
216	From home	79700049
1131	From cell phone	79700049
207	From work	79700049
816	From elsewhere	79700049
5517	No access to internet	79700049
273	From home	79700050
1719	From cell phone	79700050
315	From work	79700050
1254	From elsewhere	79700050
5919	No access to internet	79700050
222	From home	79700051
1056	From cell phone	79700051
177	From work	79700051
1074	From elsewhere	79700051
8859	No access to internet	79700051
255	From home	79700052
2016	From cell phone	79700052
213	From work	79700052
552	From elsewhere	79700052
10671	No access to internet	79700052
333	From home	79700053
1491	From cell phone	79700053
276	From work	79700053
1653	From elsewhere	79700053
7278	No access to internet	79700053
261	From home	79700054
1236	From cell phone	79700054
147	From work	79700054
522	From elsewhere	79700054
6147	No access to internet	79700054
291	From home	79700055
1530	From cell phone	79700055
240	From work	79700055
987	From elsewhere	79700055
5889	No access to internet	79700055
231	From home	79700056
1056	From cell phone	79700056
165	From work	79700056
1248	From elsewhere	79700056
4824	No access to internet	79700056
369	From home	79700057
1926	From cell phone	79700057
234	From work	79700057
636	From elsewhere	79700057
7881	No access to internet	79700057
453	From home	79700058
1623	From cell phone	79700058
474	From work	79700058
1266	From elsewhere	79700058
9078	No access to internet	79700058
324	From home	79700059
1797	From cell phone	79700059
309	From work	79700059
906	From elsewhere	79700059
5775	No access to internet	79700059
375	From home	79700060
1665	From cell phone	79700060
336	From work	79700060
1479	From elsewhere	79700060
4533	No access to internet	79700060
171	From home	79700061
1947	From cell phone	79700061
144	From work	79700061
741	From elsewhere	79700061
9078	No access to internet	79700061
141	From home	79700062
759	From cell phone	79700062
102	From work	79700062
555	From elsewhere	79700062
4839	No access to internet	79700062
243	From home	79700063
1575	From cell phone	79700063
159	From work	79700063
807	From elsewhere	79700063
6021	No access to internet	79700063
288	From home	79700064
1860	From cell phone	79700064
249	From work	79700064
1338	From elsewhere	79700064
6000	No access to internet	79700064
222	From home	79700065
1974	From cell phone	79700065
168	From work	79700065
693	From elsewhere	79700065
7983	No access to internet	79700065
279	From home	79700066
2208	From cell phone	79700066
216	From work	79700066
669	From elsewhere	79700066
7485	No access to internet	79700066
390	From home	79700067
1650	From cell phone	79700067
303	From work	79700067
1185	From elsewhere	79700067
6048	No access to internet	79700067
192	From home	79700068
1260	From cell phone	79700068
159	From work	79700068
591	From elsewhere	79700068
7920	No access to internet	79700068
282	From home	79700069
1092	From cell phone	79700069
156	From work	79700069
696	From elsewhere	79700069
4470	No access to internet	79700069
312	From home	79700070
1050	From cell phone	79700070
165	From work	79700070
705	From elsewhere	79700070
4779	No access to internet	79700070
360	From home	79700071
1620	From cell phone	79700071
312	From work	79700071
774	From elsewhere	79700071
7689	No access to internet	79700071
987	From home	79700072
2097	From cell phone	79700072
825	From work	79700072
552	From elsewhere	79700072
6426	No access to internet	79700072
1011	From home	79700073
2040	From cell phone	79700073
714	From work	79700073
552	From elsewhere	79700073
5619	No access to internet	79700073
1137	From home	79700074
1254	From cell phone	79700074
1002	From work	79700074
666	From elsewhere	79700074
4644	No access to internet	79700074
1521	From home	79700075
2097	From cell phone	79700075
1071	From work	79700075
648	From elsewhere	79700075
4965	No access to internet	79700075
1764	From home	79700076
1680	From cell phone	79700076
1140	From work	79700076
357	From elsewhere	79700076
3858	No access to internet	79700076
360	From home	79700077
2208	From cell phone	79700077
321	From work	79700077
1188	From elsewhere	79700077
5676	No access to internet	79700077
429	From home	79700078
1266	From cell phone	79700078
369	From work	79700078
627	From elsewhere	79700078
4353	No access to internet	79700078
258	From home	79700079
1434	From cell phone	79700079
219	From work	79700079
1404	From elsewhere	79700079
5973	No access to internet	79700079
246	From home	79700080
1047	From cell phone	79700080
249	From work	79700080
1113	From elsewhere	79700080
3384	No access to internet	79700080
231	From home	79700081
1587	From cell phone	79700081
192	From work	79700081
966	From elsewhere	79700081
11064	No access to internet	79700081
453	From home	79700082
1833	From cell phone	79700082
294	From work	79700082
1494	From elsewhere	79700082
3450	No access to internet	79700082
294	From home	79700083
1509	From cell phone	79700083
141	From work	79700083
1185	From elsewhere	79700083
4020	No access to internet	79700083
357	From home	79700084
2172	From cell phone	79700084
210	From work	79700084
1452	From elsewhere	79700084
7635	No access to internet	79700084
321	From home	79700085
1677	From cell phone	79700085
294	From work	79700085
1188	From elsewhere	79700085
5103	No access to internet	79700085
294	From home	79700086
2550	From cell phone	79700086
192	From work	79700086
1245	From elsewhere	79700086
8763	No access to internet	79700086
195	From home	79700087
1251	From cell phone	79700087
183	From work	79700087
1092	From elsewhere	79700087
6396	No access to internet	79700087
1305	From home	79700088
1560	From cell phone	79700088
636	From work	79700088
678	From elsewhere	79700088
5256	No access to internet	79700088
636	From home	79700089
2649	From cell phone	79700089
561	From work	79700089
1632	From elsewhere	79700089
16794	No access to internet	79700089
213	From home	79700090
2091	From cell phone	79700090
225	From work	79700090
615	From elsewhere	79700090
8418	No access to internet	79700090
2103	From home	79700091
2451	From cell phone	79700091
1788	From work	79700091
708	From elsewhere	79700091
2766	No access to internet	79700091
2493	From home	79700092
1758	From cell phone	79700092
1848	From work	79700092
240	From elsewhere	79700092
3090	No access to internet	79700092
396	From home	79700093
1953	From cell phone	79700093
402	From work	79700093
777	From elsewhere	79700093
7947	No access to internet	79700093
2808	From home	79700094
1473	From cell phone	79700094
1854	From work	79700094
264	From elsewhere	79700094
2100	No access to internet	79700094
585	From home	79700095
1473	From cell phone	79700095
282	From work	79700095
699	From elsewhere	79700095
7119	No access to internet	79700095
144	From home	79700096
1266	From cell phone	79700096
159	From work	79700096
750	From elsewhere	79700096
6135	No access to internet	79700096
1407	From home	79700097
1959	From cell phone	79700097
1167	From work	79700097
468	From elsewhere	79700097
4980	No access to internet	79700097
567	From home	79700098
1380	From cell phone	79700098
309	From work	79700098
1056	From elsewhere	79700098
2916	No access to internet	79700098
420	From home	79700099
2250	From cell phone	79700099
480	From work	79700099
1179	From elsewhere	79700099
9270	No access to internet	79700099
1827	From home	79700100
1659	From cell phone	79700100
1590	From work	79700100
960	From elsewhere	79700100
3816	No access to internet	79700100
201	From home	79700101
1752	From cell phone	79700101
294	From work	79700101
1095	From elsewhere	79700101
9927	No access to internet	79700101
315	From home	79800001
1662	From cell phone	79800001
219	From work	79800001
2115	From elsewhere	79800001
8343	No access to internet	79800001
381	From home	79800002
2328	From cell phone	79800002
234	From work	79800002
1266	From elsewhere	79800002
7713	No access to internet	79800002
279	From home	79800003
1311	From cell phone	79800003
153	From work	79800003
1143	From elsewhere	79800003
5649	No access to internet	79800003
306	From home	79800004
2067	From cell phone	79800004
255	From work	79800004
2070	From elsewhere	79800004
6897	No access to internet	79800004
324	From home	79800005
1734	From cell phone	79800005
201	From work	79800005
1533	From elsewhere	79800005
11031	No access to internet	79800005
303	From home	79800006
1443	From cell phone	79800006
192	From work	79800006
375	From elsewhere	79800006
10125	No access to internet	79800006
609	From home	79800007
2244	From cell phone	79800007
699	From work	79800007
558	From elsewhere	79800007
6561	No access to internet	79800007
606	From home	79800008
1776	From cell phone	79800008
423	From work	79800008
609	From elsewhere	79800008
10737	No access to internet	79800008
1302	From home	79800009
1452	From cell phone	79800009
783	From work	79800009
282	From elsewhere	79800009
3159	No access to internet	79800009
1140	From home	79800010
1551	From cell phone	79800010
483	From work	79800010
585	From elsewhere	79800010
5913	No access to internet	79800010
591	From home	79800011
1836	From cell phone	79800011
429	From work	79800011
1029	From elsewhere	79800011
4929	No access to internet	79800011
471	From home	79800012
2010	From cell phone	79800012
336	From work	79800012
1146	From elsewhere	79800012
3912	No access to internet	79800012
1122	From home	79800013
2778	From cell phone	79800013
1161	From work	79800013
1275	From elsewhere	79800013
4290	No access to internet	79800013
939	From home	79800014
2037	From cell phone	79800014
588	From work	79800014
1035	From elsewhere	79800014
3228	No access to internet	79800014
258	From home	79800015
972	From cell phone	79800015
195	From work	79800015
1548	From elsewhere	79800015
3783	No access to internet	79800015
435	From home	79800016
1611	From cell phone	79800016
426	From work	79800016
1098	From elsewhere	79800016
5115	No access to internet	79800016
462	From home	79800017
1425	From cell phone	79800017
474	From work	79800017
462	From elsewhere	79800017
5652	No access to internet	79800017
561	From home	79800018
1647	From cell phone	79800018
756	From work	79800018
525	From elsewhere	79800018
4566	No access to internet	79800018
348	From home	79800019
1761	From cell phone	79800019
273	From work	79800019
603	From elsewhere	79800019
5172	No access to internet	79800019
339	From home	79800020
1506	From cell phone	79800020
393	From work	79800020
1347	From elsewhere	79800020
4653	No access to internet	79800020
417	From home	79800021
1641	From cell phone	79800021
435	From work	79800021
1521	From elsewhere	79800021
4464	No access to internet	79800021
582	From home	79800022
1845	From cell phone	79800022
396	From work	79800022
867	From elsewhere	79800022
3816	No access to internet	79800022
3759	From home	79800023
1557	From cell phone	79800023
2289	From work	79800023
291	From elsewhere	79800023
2736	No access to internet	79800023
294	From home	79800024
1809	From cell phone	79800024
189	From work	79800024
900	From elsewhere	79800024
6705	No access to internet	79800024
588	From home	79800025
1851	From cell phone	79800025
411	From work	79800025
1779	From elsewhere	79800025
5592	No access to internet	79800025
282	From home	79800026
1338	From cell phone	79800026
210	From work	79800026
939	From elsewhere	79800026
3243	No access to internet	79800026
366	From home	79800027
1398	From cell phone	79800027
291	From work	79800027
777	From elsewhere	79800027
3465	No access to internet	79800027
402	From home	79800028
1425	From cell phone	79800028
240	From work	79800028
957	From elsewhere	79800028
3864	No access to internet	79800028
375	From home	79800029
1560	From cell phone	79800029
270	From work	79800029
864	From elsewhere	79800029
3564	No access to internet	79800029
435	From home	79800030
2118	From cell phone	79800030
297	From work	79800030
1716	From elsewhere	79800030
7773	No access to internet	79800030
372	From home	79800031
1905	From cell phone	79800031
210	From work	79800031
717	From elsewhere	79800031
6081	No access to internet	79800031
3492	From home	79800032
2832	From cell phone	79800032
2634	From work	79800032
684	From elsewhere	79800032
4746	No access to internet	79800032
435	From home	79800033
1425	From cell phone	79800033
273	From work	79800033
1146	From elsewhere	79800033
3813	No access to internet	79800033
354	From home	79800034
2001	From cell phone	79800034
453	From work	79800034
1329	From elsewhere	79800034
5811	No access to internet	79800034
252	From home	79800035
1620	From cell phone	79800035
237	From work	79800035
954	From elsewhere	79800035
3336	No access to internet	79800035
252	From home	79800036
1197	From cell phone	79800036
237	From work	79800036
987	From elsewhere	79800036
2808	No access to internet	79800036
270	From home	79800037
1071	From cell phone	79800037
228	From work	79800037
1545	From elsewhere	79800037
4593	No access to internet	79800037
408	From home	79800038
1359	From cell phone	79800038
261	From work	79800038
1005	From elsewhere	79800038
3567	No access to internet	79800038
489	From home	79800039
1671	From cell phone	79800039
357	From work	79800039
1119	From elsewhere	79800039
4509	No access to internet	79800039
348	From home	79800040
1077	From cell phone	79800040
198	From work	79800040
978	From elsewhere	79800040
4728	No access to internet	79800040
384	From home	79800041
990	From cell phone	79800041
222	From work	79800041
714	From elsewhere	79800041
3255	No access to internet	79800041
315	From home	79800042
1323	From cell phone	79800042
237	From work	79800042
864	From elsewhere	79800042
4251	No access to internet	79800042
351	From home	79800043
1494	From cell phone	79800043
282	From work	79800043
1023	From elsewhere	79800043
3882	No access to internet	79800043
756	From home	79800044
3399	From cell phone	79800044
606	From work	79800044
2718	From elsewhere	79800044
10467	No access to internet	79800044
417	From home	79800045
1608	From cell phone	79800045
303	From work	79800045
876	From elsewhere	79800045
4767	No access to internet	79800045
381	From home	79800046
1917	From cell phone	79800046
363	From work	79800046
1506	From elsewhere	79800046
4302	No access to internet	79800046
384	From home	79800047
1335	From cell phone	79800047
309	From work	79800047
1317	From elsewhere	79800047
5025	No access to internet	79800047
582	From home	79800048
1929	From cell phone	79800048
441	From work	79800048
1161	From elsewhere	79800048
4707	No access to internet	79800048
438	From home	79800049
2622	From cell phone	79800049
510	From work	79800049
1425	From elsewhere	79800049
10842	No access to internet	79800049
141	From home	79800050
747	From cell phone	79800050
123	From work	79800050
936	From elsewhere	79800050
4236	No access to internet	79800050
243	From home	79800051
1794	From cell phone	79800051
276	From work	79800051
1101	From elsewhere	79800051
3936	No access to internet	79800051
339	From home	79800052
1548	From cell phone	79800052
180	From work	79800052
1071	From elsewhere	79800052
3837	No access to internet	79800052
1323	From home	79800053
6054	From cell phone	79800053
1539	From work	79800053
1770	From elsewhere	79800053
9210	No access to internet	79800053
3831	From home	79800054
2697	From cell phone	79800054
2844	From work	79800054
684	From elsewhere	79800054
3210	No access to internet	79800054
1350	From home	79800055
1788	From cell phone	79800055
900	From work	79800055
1032	From elsewhere	79800055
3993	No access to internet	79800055
1845	From home	79800056
1761	From cell phone	79800056
1116	From work	79800056
1017	From elsewhere	79800056
4464	No access to internet	79800056
1779	From home	79800057
2394	From cell phone	79800057
1251	From work	79800057
780	From elsewhere	79800057
5730	No access to internet	79800057
1350	From home	79800058
1827	From cell phone	79800058
570	From work	79800058
708	From elsewhere	79800058
3582	No access to internet	79800058
54	From home	79800059
624	From cell phone	79800059
114	From work	79800059
267	From elsewhere	79800059
849	No access to internet	79800059
1881	From home	79800060
4050	From cell phone	79800060
939	From work	79800060
1617	From elsewhere	79800060
4671	No access to internet	79800060
477	From home	79800061
861	From cell phone	79800061
201	From work	79800061
393	From elsewhere	79800061
3204	No access to internet	79800061
396	From home	79800062
1491	From cell phone	79800062
171	From work	79800062
726	From elsewhere	79800062
2664	No access to internet	79800062
564	From home	79800063
2982	From cell phone	79800063
507	From work	79800063
1296	From elsewhere	79800063
4065	No access to internet	79800063
1380	From home	79800064
3276	From cell phone	79800064
567	From work	79800064
1617	From elsewhere	79800064
4593	No access to internet	79800064
282	From home	79800065
1794	From cell phone	79800065
264	From work	79800065
609	From elsewhere	79800065
8556	No access to internet	79800065
2619	From home	79800066
2436	From cell phone	79800066
876	From work	79800066
1869	From elsewhere	79800066
6198	No access to internet	79800066
1314	From home	79800067
1710	From cell phone	79800067
516	From work	79800067
957	From elsewhere	79800067
2769	No access to internet	79800067
795	From home	79800068
1956	From cell phone	79800068
963	From work	79800068
369	From elsewhere	79800068
4839	No access to internet	79800068
2316	From home	79800069
3006	From cell phone	79800069
1134	From work	79800069
1209	From elsewhere	79800069
3159	No access to internet	79800069
2472	From home	79800070
2223	From cell phone	79800070
1734	From work	79800070
345	From elsewhere	79800070
3999	No access to internet	79800070
1809	From home	79800071
1752	From cell phone	79800071
1449	From work	79800071
294	From elsewhere	79800071
3327	No access to internet	79800071
2667	From home	79800072
456	From cell phone	79800072
591	From work	79800072
150	From elsewhere	79800072
2505	No access to internet	79800072
3864	From home	79800073
1431	From cell phone	79800073
1290	From work	79800073
633	From elsewhere	79800073
4089	No access to internet	79800073
3702	From home	79800074
1155	From cell phone	79800074
1335	From work	79800074
321	From elsewhere	79800074
3813	No access to internet	79800074
348	From home	79800075
1713	From cell phone	79800075
237	From work	79800075
990	From elsewhere	79800075
5118	No access to internet	79800075
252	From home	79800076
783	From cell phone	79800076
189	From work	79800076
792	From elsewhere	79800076
4407	No access to internet	79800076
492	From home	79800077
2649	From cell phone	79800077
510	From work	79800077
1929	From elsewhere	79800077
12744	No access to internet	79800077
609	From home	79800078
2688	From cell phone	79800078
357	From work	79800078
1425	From elsewhere	79800078
11394	No access to internet	79800078
543	From home	79800079
2592	From cell phone	79800079
414	From work	79800079
1359	From elsewhere	79800079
14112	No access to internet	79800079
252	From home	79800080
1554	From cell phone	79800080
243	From work	79800080
894	From elsewhere	79800080
8397	No access to internet	79800080
2412	From home	79800081
2466	From cell phone	79800081
1311	From work	79800081
951	From elsewhere	79800081
4401	No access to internet	79800081
981	From home	79800082
1479	From cell phone	79800082
594	From work	79800082
912	From elsewhere	79800082
5385	No access to internet	79800082
2484	From home	79800083
789	From cell phone	79800083
1284	From work	79800083
147	From elsewhere	79800083
2055	No access to internet	79800083
2367	From home	79800084
1806	From cell phone	79800084
1668	From work	79800084
486	From elsewhere	79800084
3270	No access to internet	79800084
2667	From home	79800085
1134	From cell phone	79800085
1347	From work	79800085
192	From elsewhere	79800085
2850	No access to internet	79800085
2898	From home	79800086
1842	From cell phone	79800086
1857	From work	79800086
477	From elsewhere	79800086
4092	No access to internet	79800086
2886	From home	79800087
555	From cell phone	79800087
822	From work	79800087
195	From elsewhere	79800087
1656	No access to internet	79800087
3882	From home	79800088
921	From cell phone	79800088
1446	From work	79800088
300	From elsewhere	79800088
2679	No access to internet	79800088
3468	From home	79800089
1128	From cell phone	79800089
1629	From work	79800089
159	From elsewhere	79800089
1713	No access to internet	79800089
4230	From home	79800090
1113	From cell phone	79800090
1737	From work	79800090
333	From elsewhere	79800090
3390	No access to internet	79800090
2916	From home	79800091
1620	From cell phone	79800091
1071	From work	79800091
846	From elsewhere	79800091
4437	No access to internet	79800091
2313	From home	79800092
3837	From cell phone	79800092
1692	From work	79800092
1767	From elsewhere	79800092
6300	No access to internet	79800092
4050	From home	79800093
1497	From cell phone	79800093
2922	From work	79800093
249	From elsewhere	79800093
1233	No access to internet	79800093
3915	From home	79800094
1023	From cell phone	79800094
1722	From work	79800094
264	From elsewhere	79800094
1776	No access to internet	79800094
384	From home	79800095
3507	From cell phone	79800095
363	From work	79800095
810	From elsewhere	79800095
17922	No access to internet	79800095
5622	From home	79800096
3072	From cell phone	79800096
2724	From work	79800096
483	From elsewhere	79800096
10905	No access to internet	79800096
6858	From home	79800097
3639	From cell phone	79800097
5172	From work	79800097
708	From elsewhere	79800097
4206	No access to internet	79800097
3918	From home	79800098
1704	From cell phone	79800098
1620	From work	79800098
396	From elsewhere	79800098
2901	No access to internet	79800098
3249	From home	79800099
852	From cell phone	79800099
1371	From work	79800099
162	From elsewhere	79800099
1890	No access to internet	79800099
2193	From home	79800100
4062	From cell phone	79800100
1914	From work	79800100
1128	From elsewhere	79800100
9420	No access to internet	79800100
4998	From home	79800101
1644	From cell phone	79800101
3072	From work	79800101
303	From elsewhere	79800101
2199	No access to internet	79800101
4971	From home	79800102
2007	From cell phone	79800102
2301	From work	79800102
381	From elsewhere	79800102
2931	No access to internet	79800102
7020	From home	79800103
1872	From cell phone	79800103
2805	From work	79800103
342	From elsewhere	79800103
4044	No access to internet	79800103
4245	From home	79800104
1818	From cell phone	79800104
2139	From work	79800104
330	From elsewhere	79800104
3126	No access to internet	79800104
891	From home	79800105
2958	From cell phone	79800105
798	From work	79800105
2619	From elsewhere	79800105
9054	No access to internet	79800105
6381	From home	79800106
1857	From cell phone	79800106
3387	From work	79800106
327	From elsewhere	79800106
3339	No access to internet	79800106
330	From home	79800107
1062	From cell phone	79800107
249	From work	79800107
834	From elsewhere	79800107
4851	No access to internet	79800107
537	From home	79800108
1782	From cell phone	79800108
318	From work	79800108
1743	From elsewhere	79800108
7083	No access to internet	79800108
1986	From home	79800109
1068	From cell phone	79800109
891	From work	79800109
606	From elsewhere	79800109
4836	No access to internet	79800109
1530	From home	79800110
3870	From cell phone	79800110
1167	From work	79800110
1842	From elsewhere	79800110
12147	No access to internet	79800110
951	From home	79800111
4476	From cell phone	79800111
1068	From work	79800111
2823	From elsewhere	79800111
12111	No access to internet	79800111
8022	From home	79800112
4092	From cell phone	79800112
6066	From work	79800112
537	From elsewhere	79800112
3801	No access to internet	79800112
825	From home	79800113
6831	From cell phone	79800113
711	From work	79800113
1506	From elsewhere	79800113
29805	No access to internet	79800113
2685	From home	79800114
1953	From cell phone	79800114
1683	From work	79800114
387	From elsewhere	79800114
9396	No access to internet	79800114
6105	From home	79800115
2073	From cell phone	79800115
3927	From work	79800115
414	From elsewhere	79800115
2247	No access to internet	79800115
270	From home	79800116
1083	From cell phone	79800116
222	From work	79800116
1203	From elsewhere	79800116
4494	No access to internet	79800116
3777	From home	79800117
774	From cell phone	79800117
1254	From work	79800117
222	From elsewhere	79800117
2736	No access to internet	79800117
2238	From home	79800118
1569	From cell phone	79800118
834	From work	79800118
867	From elsewhere	79800118
3525	No access to internet	79800118
855	From home	79800119
3132	From cell phone	79800119
882	From work	79800119
723	From elsewhere	79800119
8526	No access to internet	79800119
999	From home	79800120
2208	From cell phone	79800120
822	From work	79800120
465	From elsewhere	79800120
6315	No access to internet	79800120
849	From home	79800121
2319	From cell phone	79800121
915	From work	79800121
831	From elsewhere	79800121
9858	No access to internet	79800121
798	From home	79800122
2475	From cell phone	79800122
552	From work	79800122
921	From elsewhere	79800122
10809	No access to internet	79800122
1200	From home	79800123
4470	From cell phone	79800123
693	From work	79800123
1782	From elsewhere	79800123
6987	No access to internet	79800123
1605	From home	79800124
4401	From cell phone	79800124
1275	From work	79800124
1797	From elsewhere	79800124
6762	No access to internet	79800124
2502	From home	79800125
2913	From cell phone	79800125
2178	From work	79800125
729	From elsewhere	79800125
2595	No access to internet	79800125
4017	From home	79800126
1251	From cell phone	79800126
2454	From work	79800126
234	From elsewhere	79800126
1950	No access to internet	79800126
192	From home	79800127
1668	From cell phone	79800127
255	From work	79800127
849	From elsewhere	79800127
8514	No access to internet	79800127
366	From home	79800128
2562	From cell phone	79800128
297	From work	79800128
1203	From elsewhere	79800128
13512	No access to internet	79800128
390	From home	79800129
1770	From cell phone	79800129
279	From work	79800129
1455	From elsewhere	79800129
6534	No access to internet	79800129
297	From home	79800130
1107	From cell phone	79800130
168	From work	79800130
522	From elsewhere	79800130
3420	No access to internet	79800130
1404	From home	79900001
1137	From cell phone	79900001
1101	From work	79900001
210	From elsewhere	79900001
3108	No access to internet	79900001
1716	From home	79900002
1059	From cell phone	79900002
1065	From work	79900002
288	From elsewhere	79900002
2298	No access to internet	79900002
1416	From home	79900003
2403	From cell phone	79900003
1452	From work	79900003
558	From elsewhere	79900003
3150	No access to internet	79900003
3528	From home	79900004
2958	From cell phone	79900004
2748	From work	79900004
534	From elsewhere	79900004
2703	No access to internet	79900004
3432	From home	79900005
1473	From cell phone	79900005
1839	From work	79900005
279	From elsewhere	79900005
2880	No access to internet	79900005
288	From home	79900006
1137	From cell phone	79900006
297	From work	79900006
558	From elsewhere	79900006
3165	No access to internet	79900006
999	From home	79900007
2475	From cell phone	79900007
1338	From work	79900007
1956	From elsewhere	79900007
6381	No access to internet	79900007
174	From home	79900008
1377	From cell phone	79900008
180	From work	79900008
711	From elsewhere	79900008
5013	No access to internet	79900008
126	From home	79900009
1080	From cell phone	79900009
81	From work	79900009
813	From elsewhere	79900009
7437	No access to internet	79900009
285	From home	79900010
2481	From cell phone	79900010
300	From work	79900010
1296	From elsewhere	79900010
11496	No access to internet	79900010
129	From home	79900011
960	From cell phone	79900011
198	From work	79900011
642	From elsewhere	79900011
3726	No access to internet	79900011
228	From home	79900012
1302	From cell phone	79900012
270	From work	79900012
708	From elsewhere	79900012
4560	No access to internet	79900012
111	From home	79900013
1068	From cell phone	79900013
132	From work	79900013
771	From elsewhere	79900013
4686	No access to internet	79900013
267	From home	79900014
936	From cell phone	79900014
123	From work	79900014
558	From elsewhere	79900014
4470	No access to internet	79900014
525	From home	79900015
1446	From cell phone	79900015
405	From work	79900015
846	From elsewhere	79900015
1971	No access to internet	79900015
219	From home	79900016
951	From cell phone	79900016
237	From work	79900016
1056	From elsewhere	79900016
3375	No access to internet	79900016
450	From home	79900017
2238	From cell phone	79900017
729	From work	79900017
2265	From elsewhere	79900017
7128	No access to internet	79900017
498	From home	79900018
1386	From cell phone	79900018
456	From work	79900018
777	From elsewhere	79900018
3201	No access to internet	79900018
345	From home	79900019
1242	From cell phone	79900019
201	From work	79900019
717	From elsewhere	79900019
5832	No access to internet	79900019
564	From home	79900020
1704	From cell phone	79900020
471	From work	79900020
885	From elsewhere	79900020
4179	No access to internet	79900020
543	From home	79900021
1386	From cell phone	79900021
546	From work	79900021
1593	From elsewhere	79900021
4347	No access to internet	79900021
546	From home	79900022
1839	From cell phone	79900022
588	From work	79900022
1242	From elsewhere	79900022
5670	No access to internet	79900022
399	From home	79900023
1137	From cell phone	79900023
309	From work	79900023
984	From elsewhere	79900023
3249	No access to internet	79900023
141	From home	79900024
1911	From cell phone	79900024
204	From work	79900024
780	From elsewhere	79900024
10524	No access to internet	79900024
174	From home	79900025
1248	From cell phone	79900025
138	From work	79900025
627	From elsewhere	79900025
4356	No access to internet	79900025
195	From home	79900026
1341	From cell phone	79900026
252	From work	79900026
903	From elsewhere	79900026
3831	No access to internet	79900026
273	From home	79900027
1038	From cell phone	79900027
177	From work	79900027
627	From elsewhere	79900027
4836	No access to internet	79900027
402	From home	79900028
1050	From cell phone	79900028
201	From work	79900028
627	From elsewhere	79900028
3063	No access to internet	79900028
366	From home	79900029
1563	From cell phone	79900029
285	From work	79900029
1095	From elsewhere	79900029
4254	No access to internet	79900029
624	From home	79900030
2106	From cell phone	79900030
606	From work	79900030
2121	From elsewhere	79900030
6744	No access to internet	79900030
393	From home	79900031
1668	From cell phone	79900031
342	From work	79900031
1020	From elsewhere	79900031
4176	No access to internet	79900031
684	From home	79900032
1941	From cell phone	79900032
714	From work	79900032
1311	From elsewhere	79900032
4257	No access to internet	79900032
261	From home	79900033
930	From cell phone	79900033
276	From work	79900033
780	From elsewhere	79900033
1740	No access to internet	79900033
363	From home	79900034
771	From cell phone	79900034
270	From work	79900034
717	From elsewhere	79900034
2976	No access to internet	79900034
306	From home	79900035
1041	From cell phone	79900035
312	From work	79900035
774	From elsewhere	79900035
2214	No access to internet	79900035
300	From home	79900036
1647	From cell phone	79900036
288	From work	79900036
687	From elsewhere	79900036
2655	No access to internet	79900036
339	From home	79900037
2163	From cell phone	79900037
438	From work	79900037
1173	From elsewhere	79900037
9141	No access to internet	79900037
153	From home	79900038
702	From cell phone	79900038
99	From work	79900038
378	From elsewhere	79900038
2046	No access to internet	79900038
213	From home	79900039
1281	From cell phone	79900039
231	From work	79900039
957	From elsewhere	79900039
5856	No access to internet	79900039
429	From home	79900040
3519	From cell phone	79900040
666	From work	79900040
2319	From elsewhere	79900040
16611	No access to internet	79900040
2130	From home	79900041
1242	From cell phone	79900041
1242	From work	79900041
240	From elsewhere	79900041
1485	No access to internet	79900041
3573	From home	79900042
690	From cell phone	79900042
1056	From work	79900042
210	From elsewhere	79900042
2001	No access to internet	79900042
555	From home	79900043
1209	From cell phone	79900043
738	From work	79900043
336	From elsewhere	79900043
4077	No access to internet	79900043
2925	From home	79900044
813	From cell phone	79900044
1353	From work	79900044
192	From elsewhere	79900044
1620	No access to internet	79900044
1638	From home	79900045
483	From cell phone	79900045
738	From work	79900045
90	From elsewhere	79900045
777	No access to internet	79900045
3489	From home	79900046
1092	From cell phone	79900046
1230	From work	79900046
198	From elsewhere	79900046
1833	No access to internet	79900046
2445	From home	79900047
798	From cell phone	79900047
1134	From work	79900047
123	From elsewhere	79900047
1353	No access to internet	79900047
411	From home	79900048
2289	From cell phone	79900048
360	From work	79900048
747	From elsewhere	79900048
9021	No access to internet	79900048
405	From home	79900049
1902	From cell phone	79900049
351	From work	79900049
915	From elsewhere	79900049
6603	No access to internet	79900049
2532	From home	79900050
1089	From cell phone	79900050
1269	From work	79900050
213	From elsewhere	79900050
2271	No access to internet	79900050
507	From home	79900051
1884	From cell phone	79900051
366	From work	79900051
864	From elsewhere	79900051
5415	No access to internet	79900051
2367	From home	79900052
840	From cell phone	79900052
1116	From work	79900052
177	From elsewhere	79900052
2370	No access to internet	79900052
2508	From home	79900053
1311	From cell phone	79900053
1164	From work	79900053
318	From elsewhere	79900053
2814	No access to internet	79900053
2127	From home	79900054
1107	From cell phone	79900054
1173	From work	79900054
198	From elsewhere	79900054
2715	No access to internet	79900054
1239	From home	79900055
1440	From cell phone	79900055
1209	From work	79900055
204	From elsewhere	79900055
3015	No access to internet	79900055
3363	From home	79900056
2289	From cell phone	79900056
555	From work	79900056
915	From elsewhere	79900056
1059	No access to internet	79900056
3753	From home	79900057
2130	From cell phone	79900057
2202	From work	79900057
402	From elsewhere	79900057
2859	No access to internet	79900057
1671	From home	79900058
3072	From cell phone	79900058
1776	From work	79900058
1332	From elsewhere	79900058
2259	No access to internet	79900058
2085	From home	79900059
3324	From cell phone	79900059
1008	From work	79900059
1146	From elsewhere	79900059
1800	No access to internet	79900059
1164	From home	79900060
2712	From cell phone	79900060
1125	From work	79900060
1320	From elsewhere	79900060
3678	No access to internet	79900060
1605	From home	79900061
2967	From cell phone	79900061
663	From work	79900061
516	From elsewhere	79900061
9276	No access to internet	79900061
318	From home	79900062
1128	From cell phone	79900062
303	From work	79900062
1011	From elsewhere	79900062
2415	No access to internet	79900062
225	From home	79900063
1125	From cell phone	79900063
312	From work	79900063
882	From elsewhere	79900063
3579	No access to internet	79900063
4290	From home	79900064
1893	From cell phone	79900064
2931	From work	79900064
324	From elsewhere	79900064
1824	No access to internet	79900064
3348	From home	79900065
945	From cell phone	79900065
1374	From work	79900065
144	From elsewhere	79900065
1896	No access to internet	79900065
2145	From home	79900066
1092	From cell phone	79900066
1200	From work	79900066
279	From elsewhere	79900066
2022	No access to internet	79900066
282	From home	79900067
843	From cell phone	79900067
297	From work	79900067
321	From elsewhere	79900067
4425	No access to internet	79900067
417	From home	79900068
1629	From cell phone	79900068
462	From work	79900068
1134	From elsewhere	79900068
3972	No access to internet	79900068
3489	From home	79900069
1134	From cell phone	79900069
2094	From work	79900069
219	From elsewhere	79900069
1854	No access to internet	79900069
4125	From home	79900070
1659	From cell phone	79900070
2244	From work	79900070
213	From elsewhere	79900070
1860	No access to internet	79900070
138	From home	79900071
1410	From cell phone	79900071
198	From work	79900071
1818	From elsewhere	79900071
8382	No access to internet	79900071
243	From home	79900072
1221	From cell phone	79900072
309	From work	79900072
912	From elsewhere	79900072
4479	No access to internet	79900072
258	From home	79900073
1407	From cell phone	79900073
222	From work	79900073
870	From elsewhere	79900073
7308	No access to internet	79900073
330	From home	79900074
1230	From cell phone	79900074
192	From work	79900074
591	From elsewhere	79900074
3789	No access to internet	79900074
471	From home	79900075
1632	From cell phone	79900075
513	From work	79900075
1587	From elsewhere	79900075
4038	No access to internet	79900075
102	From home	79900076
1158	From cell phone	79900076
138	From work	79900076
447	From elsewhere	79900076
4029	No access to internet	79900076
2595	From home	79900077
4557	From cell phone	79900077
2100	From work	79900077
2319	From elsewhere	79900077
17367	No access to internet	79900077
3438	From home	79900078
1467	From cell phone	79900078
2373	From work	79900078
195	From elsewhere	79900078
1392	No access to internet	79900078
3885	From home	79900079
1569	From cell phone	79900079
2178	From work	79900079
294	From elsewhere	79900079
2205	No access to internet	79900079
1404	From home	79900080
4110	From cell phone	79900080
1104	From work	79900080
2046	From elsewhere	79900080
1809	No access to internet	79900080
696	From home	79900081
2286	From cell phone	79900081
567	From work	79900081
1074	From elsewhere	79900081
1080	No access to internet	79900081
3165	From home	79900082
762	From cell phone	79900082
876	From work	79900082
138	From elsewhere	79900082
1515	No access to internet	79900082
1842	From home	79900083
594	From cell phone	79900083
942	From work	79900083
141	From elsewhere	79900083
1053	No access to internet	79900083
2907	From home	79900084
1515	From cell phone	79900084
1416	From work	79900084
420	From elsewhere	79900084
2991	No access to internet	79900084
5778	From home	79900085
2097	From cell phone	79900085
2940	From work	79900085
384	From elsewhere	79900085
2475	No access to internet	79900085
696	From home	79900086
2394	From cell phone	79900086
750	From work	79900086
957	From elsewhere	79900086
8244	No access to internet	79900086
1011	From home	79900087
1086	From cell phone	79900087
762	From work	79900087
429	From elsewhere	79900087
4398	No access to internet	79900087
465	From home	79900088
1512	From cell phone	79900088
273	From work	79900088
504	From elsewhere	79900088
4071	No access to internet	79900088
420	From home	79900089
1722	From cell phone	79900089
537	From work	79900089
540	From elsewhere	79900089
4191	No access to internet	79900089
711	From home	79900090
2943	From cell phone	79900090
1338	From work	79900090
891	From elsewhere	79900090
7779	No access to internet	79900090
5754	From home	79900091
2238	From cell phone	79900091
3063	From work	79900091
393	From elsewhere	79900091
3072	No access to internet	79900091
3132	From home	79900092
3936	From cell phone	79900092
1728	From work	79900092
1455	From elsewhere	79900092
2256	No access to internet	79900092
237	From home	79900093
666	From cell phone	79900093
264	From work	79900093
462	From elsewhere	79900093
3816	No access to internet	79900093
282	From home	79900094
1644	From cell phone	79900094
255	From work	79900094
690	From elsewhere	79900094
2079	No access to internet	79900094
66	From home	79900095
741	From cell phone	79900095
69	From work	79900095
564	From elsewhere	79900095
4011	No access to internet	79900095
1788	From home	79900096
1452	From cell phone	79900096
1344	From work	79900096
405	From elsewhere	79900096
5004	No access to internet	79900096
171	From home	79900097
1752	From cell phone	79900097
171	From work	79900097
1101	From elsewhere	79900097
4755	No access to internet	79900097
1923	From home	79900098
1767	From cell phone	79900098
1413	From work	79900098
270	From elsewhere	79900098
3057	No access to internet	79900098
714	From home	79900099
1866	From cell phone	79900099
759	From work	79900099
1110	From elsewhere	79900099
6426	No access to internet	79900099
747	From home	79900100
1437	From cell phone	79900100
582	From work	79900100
336	From elsewhere	79900100
5934	No access to internet	79900100
3741	From home	79900101
1719	From cell phone	79900101
1704	From work	79900101
411	From elsewhere	79900101
3567	No access to internet	79900101
504	From home	79900102
1521	From cell phone	79900102
369	From work	79900102
399	From elsewhere	79900102
6927	No access to internet	79900102
453	From home	79900103
1647	From cell phone	79900103
228	From work	79900103
771	From elsewhere	79900103
4065	No access to internet	79900103
129	From home	79900104
1194	From cell phone	79900104
90	From work	79900104
189	From elsewhere	79900104
5961	No access to internet	79900104
813	From home	79900105
1347	From cell phone	79900105
567	From work	79900105
663	From elsewhere	79900105
3708	No access to internet	79900105
6	From home	52103001
168	From cell phone	52103001
27	From work	52103001
15	From elsewhere	52103001
1548	No access to internet	52103001
6	From home	52103002
240	From cell phone	52103002
15	From work	52103002
27	From elsewhere	52103002
1713	No access to internet	52103002
18	From home	52103003
114	From cell phone	52103003
36	From work	52103003
63	From elsewhere	52103003
1815	No access to internet	52103003
18	From home	52103004
210	From cell phone	52103004
27	From work	52103004
15	From elsewhere	52103004
1941	No access to internet	52103004
21	From home	52103005
276	From cell phone	52103005
18	From work	52103005
45	From elsewhere	52103005
1533	No access to internet	52103005
3	From home	52103006
114	From cell phone	52103006
12	From work	52103006
135	From elsewhere	52103006
1002	No access to internet	52103006
0	From home	52103007
126	From cell phone	52103007
6	From work	52103007
57	From elsewhere	52103007
1197	No access to internet	52103007
6	From home	52103008
219	From cell phone	52103008
12	From work	52103008
39	From elsewhere	52103008
1578	No access to internet	52103008
12	From home	52103009
228	From cell phone	52103009
12	From work	52103009
12	From elsewhere	52103009
1056	No access to internet	52103009
72	From home	52103010
489	From cell phone	52103010
39	From work	52103010
186	From elsewhere	52103010
1653	No access to internet	52103010
9	From home	52103011
228	From cell phone	52103011
30	From work	52103011
27	From elsewhere	52103011
1524	No access to internet	52103011
3	From home	52103012
66	From cell phone	52103012
18	From work	52103012
18	From elsewhere	52103012
1452	No access to internet	52103012
9	From home	52103013
66	From cell phone	52103013
12	From work	52103013
153	From elsewhere	52103013
1392	No access to internet	52103013
12	From home	52103014
213	From cell phone	52103014
24	From work	52103014
75	From elsewhere	52103014
1356	No access to internet	52103014
9	From home	52103015
129	From cell phone	52103015
21	From work	52103015
42	From elsewhere	52103015
1713	No access to internet	52103015
18	From home	52103016
261	From cell phone	52103016
27	From work	52103016
15	From elsewhere	52103016
1554	No access to internet	52103016
45	From home	52103017
351	From cell phone	52103017
24	From work	52103017
114	From elsewhere	52103017
1086	No access to internet	52103017
51	From home	52103018
462	From cell phone	52103018
27	From work	52103018
99	From elsewhere	52103018
2049	No access to internet	52103018
63	From home	52103019
462	From cell phone	52103019
27	From work	52103019
171	From elsewhere	52103019
1467	No access to internet	52103019
18	From home	52104001
279	From cell phone	52104001
15	From work	52104001
36	From elsewhere	52104001
1806	No access to internet	52104001
24	From home	52104002
213	From cell phone	52104002
24	From work	52104002
36	From elsewhere	52104002
2034	No access to internet	52104002
186	From home	52104003
492	From cell phone	52104003
102	From work	52104003
93	From elsewhere	52104003
2103	No access to internet	52104003
39	From home	52104004
153	From cell phone	52104004
21	From work	52104004
66	From elsewhere	52104004
1347	No access to internet	52104004
33	From home	52104005
222	From cell phone	52104005
18	From work	52104005
99	From elsewhere	52104005
1578	No access to internet	52104005
51	From home	52104006
249	From cell phone	52104006
18	From work	52104006
33	From elsewhere	52104006
1191	No access to internet	52104006
60	From home	52104007
258	From cell phone	52104007
78	From work	52104007
108	From elsewhere	52104007
2391	No access to internet	52104007
21	From home	52104008
255	From cell phone	52104008
30	From work	52104008
180	From elsewhere	52104008
1452	No access to internet	52104008
18	From home	52104009
216	From cell phone	52104009
18	From work	52104009
48	From elsewhere	52104009
1698	No access to internet	52104009
33	From home	52104010
198	From cell phone	52104010
33	From work	52104010
45	From elsewhere	52104010
1902	No access to internet	52104010
51	From home	52105001
138	From cell phone	52105001
9	From work	52105001
27	From elsewhere	52105001
1713	No access to internet	52105001
63	From home	52105002
195	From cell phone	52105002
33	From work	52105002
39	From elsewhere	52105002
1230	No access to internet	52105002
15	From home	52105003
186	From cell phone	52105003
15	From work	52105003
12	From elsewhere	52105003
1863	No access to internet	52105003
21	From home	52105004
144	From cell phone	52105004
27	From work	52105004
33	From elsewhere	52105004
1743	No access to internet	52105004
75	From home	52105005
387	From cell phone	52105005
48	From work	52105005
153	From elsewhere	52105005
1569	No access to internet	52105005
15	From home	52105006
414	From cell phone	52105006
30	From work	52105006
264	From elsewhere	52105006
951	No access to internet	52105006
711	From home	52106001
429	From cell phone	52106001
138	From work	52106001
105	From elsewhere	52106001
2088	No access to internet	52106001
1080	From home	52106002
516	From cell phone	52106002
171	From work	52106002
87	From elsewhere	52106002
1800	No access to internet	52106002
657	From home	52106003
477	From cell phone	52106003
180	From work	52106003
186	From elsewhere	52106003
2430	No access to internet	52106003
48	From home	52106004
546	From cell phone	52106004
33	From work	52106004
87	From elsewhere	52106004
1032	No access to internet	52106004
18	From home	52106005
150	From cell phone	52106005
27	From work	52106005
30	From elsewhere	52106005
1713	No access to internet	52106005
579	From home	52106006
849	From cell phone	52106006
138	From work	52106006
144	From elsewhere	52106006
1209	No access to internet	52106006
12	From home	52106007
591	From cell phone	52106007
21	From work	52106007
33	From elsewhere	52106007
1101	No access to internet	52106007
18	From home	52106008
210	From cell phone	52106008
24	From work	52106008
27	From elsewhere	52106008
1281	No access to internet	52106008
66	From home	52106009
519	From cell phone	52106009
39	From work	52106009
129	From elsewhere	52106009
1620	No access to internet	52106009
168	From home	52106010
255	From cell phone	52106010
39	From work	52106010
252	From elsewhere	52106010
1704	No access to internet	52106010
15	From home	52106011
291	From cell phone	52106011
21	From work	52106011
33	From elsewhere	52106011
1755	No access to internet	52106011
696	From home	52106012
543	From cell phone	52106012
198	From work	52106012
123	From elsewhere	52106012
1440	No access to internet	52106012
264	From home	52106013
195	From cell phone	52106013
84	From work	52106013
81	From elsewhere	52106013
1446	No access to internet	52106013
15	From home	52106014
408	From cell phone	52106014
15	From work	52106014
39	From elsewhere	52106014
1152	No access to internet	52106014
24	From home	52106015
168	From cell phone	52106015
27	From work	52106015
42	From elsewhere	52106015
1530	No access to internet	52106015
924	From home	52106016
438	From cell phone	52106016
207	From work	52106016
69	From elsewhere	52106016
1290	No access to internet	52106016
309	From home	52106017
552	From cell phone	52106017
144	From work	52106017
108	From elsewhere	52106017
1134	No access to internet	52106017
570	From home	52106018
390	From cell phone	52106018
186	From work	52106018
288	From elsewhere	52106018
864	No access to internet	52106018
822	From home	52106019
318	From cell phone	52106019
162	From work	52106019
102	From elsewhere	52106019
822	No access to internet	52106019
141	From home	52106020
900	From cell phone	52106020
144	From work	52106020
120	From elsewhere	52106020
4371	No access to internet	52106020
48	From home	52106021
333	From cell phone	52106021
39	From work	52106021
90	From elsewhere	52106021
1656	No access to internet	52106021
90	From home	52106022
456	From cell phone	52106022
81	From work	52106022
69	From elsewhere	52106022
1356	No access to internet	52106022
33	From home	52106023
300	From cell phone	52106023
27	From work	52106023
330	From elsewhere	52106023
1527	No access to internet	52106023
72	From home	52106024
594	From cell phone	52106024
36	From work	52106024
96	From elsewhere	52106024
1407	No access to internet	52106024
63	From home	52106025
255	From cell phone	52106025
42	From work	52106025
75	From elsewhere	52106025
1587	No access to internet	52106025
159	From home	52106026
735	From cell phone	52106026
105	From work	52106026
129	From elsewhere	52106026
1830	No access to internet	52106026
72	From home	52106027
456	From cell phone	52106027
57	From work	52106027
126	From elsewhere	52106027
2343	No access to internet	52106027
27	From home	52106028
459	From cell phone	52106028
39	From work	52106028
69	From elsewhere	52106028
1143	No access to internet	52106028
18	From home	52106029
231	From cell phone	52106029
27	From work	52106029
51	From elsewhere	52106029
1662	No access to internet	52106029
30	From home	52101001
420	From cell phone	52101001
18	From work	52101001
45	From elsewhere	52101001
813	No access to internet	52101001
15	From home	52101002
291	From cell phone	52101002
12	From work	52101002
30	From elsewhere	52101002
960	No access to internet	52101002
24	From home	52101003
219	From cell phone	52101003
9	From work	52101003
12	From elsewhere	52101003
948	No access to internet	52101003
12	From home	52101004
186	From cell phone	52101004
21	From work	52101004
96	From elsewhere	52101004
1266	No access to internet	52101004
18	From home	52101005
189	From cell phone	52101005
39	From work	52101005
27	From elsewhere	52101005
2052	No access to internet	52101005
27	From home	52101006
288	From cell phone	52101006
30	From work	52101006
99	From elsewhere	52101006
1629	No access to internet	52101006
9	From home	52101007
234	From cell phone	52101007
21	From work	52101007
33	From elsewhere	52101007
936	No access to internet	52101007
39	From home	52101008
165	From cell phone	52101008
12	From work	52101008
36	From elsewhere	52101008
1215	No access to internet	52101008
36	From home	52101009
180	From cell phone	52101009
33	From work	52101009
240	From elsewhere	52101009
1587	No access to internet	52101009
48	From home	52101010
150	From cell phone	52101010
12	From work	52101010
42	From elsewhere	52101010
1290	No access to internet	52101010
39	From home	52102001
117	From cell phone	52102001
18	From work	52102001
75	From elsewhere	52102001
1344	No access to internet	52102001
42	From home	52102002
294	From cell phone	52102002
18	From work	52102002
171	From elsewhere	52102002
1434	No access to internet	52102002
165	From home	52102003
534	From cell phone	52102003
72	From work	52102003
63	From elsewhere	52102003
2361	No access to internet	52102003
324	From home	52102004
264	From cell phone	52102004
90	From work	52102004
126	From elsewhere	52102004
1107	No access to internet	52102004
444	From home	52102005
279	From cell phone	52102005
105	From work	52102005
183	From elsewhere	52102005
924	No access to internet	52102005
156	From home	52102006
252	From cell phone	52102006
51	From work	52102006
24	From elsewhere	52102006
1728	No access to internet	52102006
234	From home	52102007
459	From cell phone	52102007
66	From work	52102007
75	From elsewhere	52102007
2055	No access to internet	52102007
48	From home	52102008
594	From cell phone	52102008
21	From work	52102008
144	From elsewhere	52102008
1350	No access to internet	52102008
42	From home	52102009
387	From cell phone	52102009
18	From work	52102009
48	From elsewhere	52102009
1611	No access to internet	52102009
729	From home	52102010
444	From cell phone	52102010
129	From work	52102010
120	From elsewhere	52102010
1500	No access to internet	52102010
96	From home	52201001
501	From cell phone	52201001
69	From work	52201001
99	From elsewhere	52201001
3762	No access to internet	52201001
117	From home	52201002
255	From cell phone	52201002
54	From work	52201002
558	From elsewhere	52201002
1173	No access to internet	52201002
51	From home	52201003
345	From cell phone	52201003
24	From work	52201003
174	From elsewhere	52201003
1623	No access to internet	52201003
48	From home	52201004
507	From cell phone	52201004
30	From work	52201004
249	From elsewhere	52201004
1695	No access to internet	52201004
54	From home	52201005
375	From cell phone	52201005
27	From work	52201005
72	From elsewhere	52201005
1722	No access to internet	52201005
18	From home	52201006
429	From cell phone	52201006
12	From work	52201006
513	From elsewhere	52201006
687	No access to internet	52201006
198	From home	52201007
207	From cell phone	52201007
102	From work	52201007
105	From elsewhere	52201007
1491	No access to internet	52201007
9	From home	52201008
531	From cell phone	52201008
3	From work	52201008
582	From elsewhere	52201008
231	No access to internet	52201008
120	From home	52201009
726	From cell phone	52201009
78	From work	52201009
60	From elsewhere	52201009
2442	No access to internet	52201009
33	From home	52201010
378	From cell phone	52201010
24	From work	52201010
27	From elsewhere	52201010
1035	No access to internet	52201010
15	From home	52201011
600	From cell phone	52201011
12	From work	52201011
654	From elsewhere	52201011
132	No access to internet	52201011
42	From home	52201012
210	From cell phone	52201012
18	From work	52201012
687	From elsewhere	52201012
924	No access to internet	52201012
18	From home	52201013
252	From cell phone	52201013
3	From work	52201013
522	From elsewhere	52201013
330	No access to internet	52201013
117	From home	52202001
513	From cell phone	52202001
57	From work	52202001
75	From elsewhere	52202001
1674	No access to internet	52202001
150	From home	52202002
93	From cell phone	52202002
51	From work	52202002
18	From elsewhere	52202002
285	No access to internet	52202002
309	From home	52202003
450	From cell phone	52202003
189	From work	52202003
96	From elsewhere	52202003
1695	No access to internet	52202003
261	From home	52202004
504	From cell phone	52202004
114	From work	52202004
189	From elsewhere	52202004
2469	No access to internet	52202004
1146	From home	52202005
192	From cell phone	52202005
168	From work	52202005
87	From elsewhere	52202005
1665	No access to internet	52202005
870	From home	52202006
216	From cell phone	52202006
183	From work	52202006
57	From elsewhere	52202006
1182	No access to internet	52202006
1269	From home	52202007
210	From cell phone	52202007
282	From work	52202007
57	From elsewhere	52202007
837	No access to internet	52202007
42	From home	52202008
411	From cell phone	52202008
60	From work	52202008
357	From elsewhere	52202008
2823	No access to internet	52202008
81	From home	52202009
330	From cell phone	52202009
123	From work	52202009
219	From elsewhere	52202009
2223	No access to internet	52202009
120	From home	52202010
162	From cell phone	52202010
48	From work	52202010
123	From elsewhere	52202010
891	No access to internet	52202010
69	From home	52202011
615	From cell phone	52202011
24	From work	52202011
117	From elsewhere	52202011
1053	No access to internet	52202011
387	From home	52202012
594	From cell phone	52202012
153	From work	52202012
168	From elsewhere	52202012
1569	No access to internet	52202012
147	From home	52203001
357	From cell phone	52203001
87	From work	52203001
213	From elsewhere	52203001
2217	No access to internet	52203001
231	From home	52203002
684	From cell phone	52203002
114	From work	52203002
57	From elsewhere	52203002
2217	No access to internet	52203002
60	From home	52203003
324	From cell phone	52203003
54	From work	52203003
75	From elsewhere	52203003
1581	No access to internet	52203003
24	From home	52203004
93	From cell phone	52203004
36	From work	52203004
36	From elsewhere	52203004
1845	No access to internet	52203004
33	From home	52204001
504	From cell phone	52204001
21	From work	52204001
42	From elsewhere	52204001
1611	No access to internet	52204001
0	From home	52204002
240	From cell phone	52204002
18	From work	52204002
15	From elsewhere	52204002
1998	No access to internet	52204002
15	From home	52204003
294	From cell phone	52204003
33	From work	52204003
39	From elsewhere	52204003
1437	No access to internet	52204003
30	From home	52204004
189	From cell phone	52204004
24	From work	52204004
138	From elsewhere	52204004
1515	No access to internet	52204004
87	From home	52205001
534	From cell phone	52205001
75	From work	52205001
321	From elsewhere	52205001
2997	No access to internet	52205001
153	From home	52205002
756	From cell phone	52205002
57	From work	52205002
177	From elsewhere	52205002
2622	No access to internet	52205002
30	From home	52205003
489	From cell phone	52205003
33	From work	52205003
57	From elsewhere	52205003
2415	No access to internet	52205003
54	From home	52205004
381	From cell phone	52205004
72	From work	52205004
531	From elsewhere	52205004
1767	No access to internet	52205004
51	From home	52205005
747	From cell phone	52205005
72	From work	52205005
189	From elsewhere	52205005
2442	No access to internet	52205005
48	From home	52205006
444	From cell phone	52205006
42	From work	52205006
192	From elsewhere	52205006
2508	No access to internet	52205006
54	From home	52205007
279	From cell phone	52205007
45	From work	52205007
186	From elsewhere	52205007
2736	No access to internet	52205007
33	From home	52205008
645	From cell phone	52205008
39	From work	52205008
102	From elsewhere	52205008
1983	No access to internet	52205008
39	From home	52205009
432	From cell phone	52205009
27	From work	52205009
180	From elsewhere	52205009
2079	No access to internet	52205009
57	From home	52205010
585	From cell phone	52205010
60	From work	52205010
117	From elsewhere	52205010
2757	No access to internet	52205010
72	From home	52205011
810	From cell phone	52205011
66	From work	52205011
432	From elsewhere	52205011
3684	No access to internet	52205011
120	From home	52205012
768	From cell phone	52205012
81	From work	52205012
300	From elsewhere	52205012
1755	No access to internet	52205012
219	From home	52205013
987	From cell phone	52205013
159	From work	52205013
417	From elsewhere	52205013
4779	No access to internet	52205013
51	From home	52205014
450	From cell phone	52205014
36	From work	52205014
144	From elsewhere	52205014
2361	No access to internet	52205014
138	From home	52205015
864	From cell phone	52205015
171	From work	52205015
594	From elsewhere	52205015
2637	No access to internet	52205015
102	From home	52205016
855	From cell phone	52205016
93	From work	52205016
657	From elsewhere	52205016
4452	No access to internet	52205016
198	From home	52205017
1299	From cell phone	52205017
198	From work	52205017
588	From elsewhere	52205017
3258	No access to internet	52205017
141	From home	52205018
741	From cell phone	52205018
144	From work	52205018
363	From elsewhere	52205018
4686	No access to internet	52205018
219	From home	52205019
888	From cell phone	52205019
168	From work	52205019
357	From elsewhere	52205019
1992	No access to internet	52205019
153	From home	52205020
573	From cell phone	52205020
57	From work	52205020
303	From elsewhere	52205020
2286	No access to internet	52205020
60	From home	52205021
288	From cell phone	52205021
45	From work	52205021
192	From elsewhere	52205021
2382	No access to internet	52205021
210	From home	52205022
573	From cell phone	52205022
93	From work	52205022
306	From elsewhere	52205022
2748	No access to internet	52205022
141	From home	52205023
594	From cell phone	52205023
66	From work	52205023
72	From elsewhere	52205023
2772	No access to internet	52205023
834	From home	52205024
1212	From cell phone	52205024
357	From work	52205024
669	From elsewhere	52205024
1437	No access to internet	52205024
2694	From home	52205025
684	From cell phone	52205025
873	From work	52205025
111	From elsewhere	52205025
1503	No access to internet	52205025
1725	From home	52205026
840	From cell phone	52205026
696	From work	52205026
216	From elsewhere	52205026
1854	No access to internet	52205026
696	From home	52205027
1623	From cell phone	52205027
708	From work	52205027
531	From elsewhere	52205027
1797	No access to internet	52205027
612	From home	52205028
1071	From cell phone	52205028
342	From work	52205028
309	From elsewhere	52205028
3480	No access to internet	52205028
135	From home	52205029
537	From cell phone	52205029
78	From work	52205029
198	From elsewhere	52205029
4554	No access to internet	52205029
816	From home	52205030
855	From cell phone	52205030
369	From work	52205030
156	From elsewhere	52205030
3273	No access to internet	52205030
237	From home	52205031
441	From cell phone	52205031
147	From work	52205031
171	From elsewhere	52205031
2379	No access to internet	52205031
366	From home	52205032
843	From cell phone	52205032
192	From work	52205032
291	From elsewhere	52205032
2754	No access to internet	52205032
750	From home	52205033
966	From cell phone	52205033
327	From work	52205033
339	From elsewhere	52205033
1809	No access to internet	52205033
375	From home	52205034
1041	From cell phone	52205034
291	From work	52205034
228	From elsewhere	52205034
4416	No access to internet	52205034
879	From home	52205035
954	From cell phone	52205035
486	From work	52205035
147	From elsewhere	52205035
2472	No access to internet	52205035
1971	From home	52205036
1434	From cell phone	52205036
1011	From work	52205036
501	From elsewhere	52205036
1881	No access to internet	52205036
1125	From home	52205037
534	From cell phone	52205037
504	From work	52205037
120	From elsewhere	52205037
3582	No access to internet	52205037
21	From home	52206001
249	From cell phone	52206001
24	From work	52206001
459	From elsewhere	52206001
1494	No access to internet	52206001
21	From home	52206002
312	From cell phone	52206002
21	From work	52206002
156	From elsewhere	52206002
1443	No access to internet	52206002
96	From home	52206003
213	From cell phone	52206003
57	From work	52206003
21	From elsewhere	52206003
1275	No access to internet	52206003
237	From home	52206004
309	From cell phone	52206004
132	From work	52206004
24	From elsewhere	52206004
2301	No access to internet	52206004
9	From home	52206005
111	From cell phone	52206005
15	From work	52206005
15	From elsewhere	52206005
1395	No access to internet	52206005
60	From home	52206006
348	From cell phone	52206006
45	From work	52206006
15	From elsewhere	52206006
2589	No access to internet	52206006
6	From home	52206007
99	From cell phone	52206007
18	From work	52206007
6	From elsewhere	52206007
1368	No access to internet	52206007
222	From home	52207001
279	From cell phone	52207001
60	From work	52207001
54	From elsewhere	52207001
1500	No access to internet	52207001
24	From home	52207002
387	From cell phone	52207002
21	From work	52207002
60	From elsewhere	52207002
2400	No access to internet	52207002
75	From home	52207003
267	From cell phone	52207003
84	From work	52207003
54	From elsewhere	52207003
2625	No access to internet	52207003
93	From home	52207004
168	From cell phone	52207004
36	From work	52207004
21	From elsewhere	52207004
1329	No access to internet	52207004
21	From home	52207005
195	From cell phone	52207005
9	From work	52207005
36	From elsewhere	52207005
1512	No access to internet	52207005
9	From home	52207006
429	From cell phone	52207006
36	From work	52207006
84	From elsewhere	52207006
2046	No access to internet	52207006
21	From home	52207007
360	From cell phone	52207007
15	From work	52207007
75	From elsewhere	52207007
1833	No access to internet	52207007
105	From home	52302001
357	From cell phone	52302001
66	From work	52302001
222	From elsewhere	52302001
1242	No access to internet	52302001
108	From home	52302002
594	From cell phone	52302002
33	From work	52302002
156	From elsewhere	52302002
1068	No access to internet	52302002
174	From home	52302003
675	From cell phone	52302003
39	From work	52302003
204	From elsewhere	52302003
1827	No access to internet	52302003
18	From home	52302004
78	From cell phone	52302004
9	From work	52302004
6	From elsewhere	52302004
1125	No access to internet	52302004
60	From home	52302005
399	From cell phone	52302005
18	From work	52302005
60	From elsewhere	52302005
1773	No access to internet	52302005
48	From home	52302006
864	From cell phone	52302006
48	From work	52302006
114	From elsewhere	52302006
1941	No access to internet	52302006
15	From home	52302007
189	From cell phone	52302007
27	From work	52302007
30	From elsewhere	52302007
1464	No access to internet	52302007
30	From home	52302008
444	From cell phone	52302008
24	From work	52302008
99	From elsewhere	52302008
1254	No access to internet	52302008
60	From home	52302009
279	From cell phone	52302009
27	From work	52302009
99	From elsewhere	52302009
2589	No access to internet	52302009
108	From home	52302010
354	From cell phone	52302010
51	From work	52302010
252	From elsewhere	52302010
1266	No access to internet	52302010
507	From home	52302011
432	From cell phone	52302011
156	From work	52302011
93	From elsewhere	52302011
1023	No access to internet	52302011
582	From home	52302012
510	From cell phone	52302012
210	From work	52302012
90	From elsewhere	52302012
1155	No access to internet	52302012
30	From home	52302013
195	From cell phone	52302013
39	From work	52302013
159	From elsewhere	52302013
1995	No access to internet	52302013
27	From home	52302014
246	From cell phone	52302014
45	From work	52302014
24	From elsewhere	52302014
1818	No access to internet	52302014
24	From home	52302015
111	From cell phone	52302015
21	From work	52302015
21	From elsewhere	52302015
1305	No access to internet	52302015
45	From home	52302016
120	From cell phone	52302016
36	From work	52302016
102	From elsewhere	52302016
1062	No access to internet	52302016
9	From home	52302017
192	From cell phone	52302017
15	From work	52302017
150	From elsewhere	52302017
1248	No access to internet	52302017
54	From home	52302018
279	From cell phone	52302018
15	From work	52302018
273	From elsewhere	52302018
1188	No access to internet	52302018
30	From home	52302019
129	From cell phone	52302019
6	From work	52302019
414	From elsewhere	52302019
969	No access to internet	52302019
219	From home	52302020
408	From cell phone	52302020
123	From work	52302020
171	From elsewhere	52302020
1878	No access to internet	52302020
90	From home	52302021
555	From cell phone	52302021
45	From work	52302021
84	From elsewhere	52302021
1818	No access to internet	52302021
513	From home	52302022
807	From cell phone	52302022
276	From work	52302022
129	From elsewhere	52302022
1467	No access to internet	52302022
24	From home	52302023
330	From cell phone	52302023
12	From work	52302023
21	From elsewhere	52302023
1125	No access to internet	52302023
36	From home	52302024
213	From cell phone	52302024
27	From work	52302024
129	From elsewhere	52302024
1296	No access to internet	52302024
126	From home	52302025
351	From cell phone	52302025
90	From work	52302025
117	From elsewhere	52302025
1794	No access to internet	52302025
36	From home	52302026
135	From cell phone	52302026
21	From work	52302026
60	From elsewhere	52302026
765	No access to internet	52302026
84	From home	52302027
627	From cell phone	52302027
48	From work	52302027
180	From elsewhere	52302027
2580	No access to internet	52302027
24	From home	52303001
513	From cell phone	52303001
15	From work	52303001
36	From elsewhere	52303001
1476	No access to internet	52303001
48	From home	52303002
492	From cell phone	52303002
36	From work	52303002
150	From elsewhere	52303002
1647	No access to internet	52303002
108	From home	52303003
111	From cell phone	52303003
18	From work	52303003
87	From elsewhere	52303003
1689	No access to internet	52303003
24	From home	52303004
318	From cell phone	52303004
24	From work	52303004
39	From elsewhere	52303004
1812	No access to internet	52303004
81	From home	52303005
414	From cell phone	52303005
33	From work	52303005
138	From elsewhere	52303005
1476	No access to internet	52303005
30	From home	52303006
540	From cell phone	52303006
3	From work	52303006
33	From elsewhere	52303006
1152	No access to internet	52303006
6	From home	52303007
156	From cell phone	52303007
21	From work	52303007
12	From elsewhere	52303007
1662	No access to internet	52303007
3	From home	52303008
39	From cell phone	52303008
9	From work	52303008
9	From elsewhere	52303008
1863	No access to internet	52303008
3	From home	52303009
216	From cell phone	52303009
9	From work	52303009
18	From elsewhere	52303009
1803	No access to internet	52303009
48	From home	52303010
258	From cell phone	52303010
15	From work	52303010
36	From elsewhere	52303010
1293	No access to internet	52303010
99	From home	52304001
402	From cell phone	52304001
69	From work	52304001
102	From elsewhere	52304001
1710	No access to internet	52304001
75	From home	52304002
642	From cell phone	52304002
24	From work	52304002
42	From elsewhere	52304002
1275	No access to internet	52304002
381	From home	52304003
762	From cell phone	52304003
144	From work	52304003
159	From elsewhere	52304003
1401	No access to internet	52304003
222	From home	52304004
609	From cell phone	52304004
144	From work	52304004
81	From elsewhere	52304004
1377	No access to internet	52304004
18	From home	52304005
324	From cell phone	52304005
21	From work	52304005
12	From elsewhere	52304005
1398	No access to internet	52304005
45	From home	52304006
228	From cell phone	52304006
45	From work	52304006
42	From elsewhere	52304006
1353	No access to internet	52304006
39	From home	52304007
441	From cell phone	52304007
24	From work	52304007
6	From elsewhere	52304007
1200	No access to internet	52304007
33	From home	52304008
357	From cell phone	52304008
15	From work	52304008
33	From elsewhere	52304008
1578	No access to internet	52304008
30	From home	52304009
228	From cell phone	52304009
45	From work	52304009
33	From elsewhere	52304009
1980	No access to internet	52304009
108	From home	52305001
423	From cell phone	52305001
60	From work	52305001
87	From elsewhere	52305001
1659	No access to internet	52305001
18	From home	52305002
663	From cell phone	52305002
30	From work	52305002
15	From elsewhere	52305002
1383	No access to internet	52305002
21	From home	52305003
282	From cell phone	52305003
36	From work	52305003
18	From elsewhere	52305003
1419	No access to internet	52305003
18	From home	52305004
300	From cell phone	52305004
15	From work	52305004
60	From elsewhere	52305004
1536	No access to internet	52305004
12	From home	52305005
492	From cell phone	52305005
18	From work	52305005
27	From elsewhere	52305005
930	No access to internet	52305005
36	From home	52305006
483	From cell phone	52305006
48	From work	52305006
72	From elsewhere	52305006
1434	No access to internet	52305006
18	From home	52305007
285	From cell phone	52305007
6	From work	52305007
138	From elsewhere	52305007
1548	No access to internet	52305007
15	From home	52305008
468	From cell phone	52305008
12	From work	52305008
78	From elsewhere	52305008
1437	No access to internet	52305008
12	From home	52305009
66	From cell phone	52305009
3	From work	52305009
39	From elsewhere	52305009
1746	No access to internet	52305009
63	From home	52305010
441	From cell phone	52305010
72	From work	52305010
84	From elsewhere	52305010
1614	No access to internet	52305010
48	From home	52305011
588	From cell phone	52305011
27	From work	52305011
30	From elsewhere	52305011
1410	No access to internet	52305011
150	From home	52305012
324	From cell phone	52305012
84	From work	52305012
33	From elsewhere	52305012
1428	No access to internet	52305012
39	From home	52305013
606	From cell phone	52305013
21	From work	52305013
63	From elsewhere	52305013
1092	No access to internet	52305013
114	From home	52305014
510	From cell phone	52305014
48	From work	52305014
75	From elsewhere	52305014
1032	No access to internet	52305014
30	From home	52306001
318	From cell phone	52306001
15	From work	52306001
24	From elsewhere	52306001
1359	No access to internet	52306001
15	From home	52306002
273	From cell phone	52306002
18	From work	52306002
45	From elsewhere	52306002
1281	No access to internet	52306002
24	From home	52306003
216	From cell phone	52306003
30	From work	52306003
75	From elsewhere	52306003
1173	No access to internet	52306003
27	From home	52306004
228	From cell phone	52306004
12	From work	52306004
42	From elsewhere	52306004
1665	No access to internet	52306004
12	From home	52306005
525	From cell phone	52306005
6	From work	52306005
147	From elsewhere	52306005
780	No access to internet	52306005
18	From home	52306006
306	From cell phone	52306006
18	From work	52306006
30	From elsewhere	52306006
1281	No access to internet	52306006
204	From home	52306007
318	From cell phone	52306007
12	From work	52306007
69	From elsewhere	52306007
888	No access to internet	52306007
24	From home	52306008
552	From cell phone	52306008
21	From work	52306008
45	From elsewhere	52306008
1044	No access to internet	52306008
9	From home	52306009
363	From cell phone	52306009
27	From work	52306009
18	From elsewhere	52306009
1506	No access to internet	52306009
102	From home	52306010
465	From cell phone	52306010
27	From work	52306010
87	From elsewhere	52306010
1611	No access to internet	52306010
27	From home	52306011
378	From cell phone	52306011
12	From work	52306011
81	From elsewhere	52306011
1236	No access to internet	52306011
6	From home	52306012
165	From cell phone	52306012
18	From work	52306012
129	From elsewhere	52306012
957	No access to internet	52306012
24	From home	52306013
402	From cell phone	52306013
42	From work	52306013
66	From elsewhere	52306013
1434	No access to internet	52306013
33	From home	52701001
210	From cell phone	52701001
42	From work	52701001
36	From elsewhere	52701001
834	No access to internet	52701001
102	From home	52701002
300	From cell phone	52701002
45	From work	52701002
75	From elsewhere	52701002
1236	No access to internet	52701002
33	From home	52701003
204	From cell phone	52701003
39	From work	52701003
45	From elsewhere	52701003
1746	No access to internet	52701003
33	From home	52701004
381	From cell phone	52701004
42	From work	52701004
171	From elsewhere	52701004
2289	No access to internet	52701004
39	From home	52701005
378	From cell phone	52701005
54	From work	52701005
21	From elsewhere	52701005
1551	No access to internet	52701005
9	From home	52701006
315	From cell phone	52701006
30	From work	52701006
18	From elsewhere	52701006
2373	No access to internet	52701006
27	From home	52701007
192	From cell phone	52701007
21	From work	52701007
15	From elsewhere	52701007
1695	No access to internet	52701007
33	From home	52701008
342	From cell phone	52701008
12	From work	52701008
36	From elsewhere	52701008
1527	No access to internet	52701008
12	From home	52701009
357	From cell phone	52701009
27	From work	52701009
120	From elsewhere	52701009
2064	No access to internet	52701009
18	From home	52701010
282	From cell phone	52701010
18	From work	52701010
21	From elsewhere	52701010
1212	No access to internet	52701010
39	From home	52701011
543	From cell phone	52701011
33	From work	52701011
45	From elsewhere	52701011
1569	No access to internet	52701011
6	From home	52701012
51	From cell phone	52701012
12	From work	52701012
6	From elsewhere	52701012
1515	No access to internet	52701012
27	From home	52701013
336	From cell phone	52701013
12	From work	52701013
72	From elsewhere	52701013
1221	No access to internet	52701013
33	From home	52701014
528	From cell phone	52701014
9	From work	52701014
135	From elsewhere	52701014
972	No access to internet	52701014
18	From home	52701015
315	From cell phone	52701015
30	From work	52701015
33	From elsewhere	52701015
1800	No access to internet	52701015
3	From home	52701016
117	From cell phone	52701016
3	From work	52701016
9	From elsewhere	52701016
1377	No access to internet	52701016
39	From home	52701017
618	From cell phone	52701017
45	From work	52701017
159	From elsewhere	52701017
1410	No access to internet	52701017
12	From home	52702001
354	From cell phone	52702001
12	From work	52702001
12	From elsewhere	52702001
1014	No access to internet	52702001
30	From home	52702002
348	From cell phone	52702002
33	From work	52702002
6	From elsewhere	52702002
1239	No access to internet	52702002
39	From home	52702003
123	From cell phone	52702003
27	From work	52702003
21	From elsewhere	52702003
1353	No access to internet	52702003
6	From home	52702004
459	From cell phone	52702004
9	From work	52702004
3	From elsewhere	52702004
972	No access to internet	52702004
87	From home	52702005
210	From cell phone	52702005
39	From work	52702005
315	From elsewhere	52702005
2028	No access to internet	52702005
72	From home	52702006
558	From cell phone	52702006
15	From work	52702006
24	From elsewhere	52702006
678	No access to internet	52702006
99	From home	52702007
804	From cell phone	52702007
96	From work	52702007
63	From elsewhere	52702007
2067	No access to internet	52702007
27	From home	52702008
255	From cell phone	52702008
21	From work	52702008
36	From elsewhere	52702008
1245	No access to internet	52702008
9	From home	52702009
228	From cell phone	52702009
3	From work	52702009
3	From elsewhere	52702009
1569	No access to internet	52702009
3	From home	52702010
147	From cell phone	52702010
24	From work	52702010
12	From elsewhere	52702010
1875	No access to internet	52702010
24	From home	52702011
297	From cell phone	52702011
21	From work	52702011
24	From elsewhere	52702011
1146	No access to internet	52702011
12	From home	52702012
345	From cell phone	52702012
15	From work	52702012
9	From elsewhere	52702012
1710	No access to internet	52702012
15	From home	52702013
207	From cell phone	52702013
21	From work	52702013
36	From elsewhere	52702013
1812	No access to internet	52702013
45	From home	52702014
507	From cell phone	52702014
66	From work	52702014
54	From elsewhere	52702014
2112	No access to internet	52702014
3	From home	52702015
342	From cell phone	52702015
12	From work	52702015
12	From elsewhere	52702015
1260	No access to internet	52702015
30	From home	52702016
240	From cell phone	52702016
24	From work	52702016
45	From elsewhere	52702016
1608	No access to internet	52702016
9	From home	52702017
198	From cell phone	52702017
15	From work	52702017
6	From elsewhere	52702017
1599	No access to internet	52702017
9	From home	52702018
240	From cell phone	52702018
6	From work	52702018
6	From elsewhere	52702018
1230	No access to internet	52702018
6	From home	52702019
156	From cell phone	52702019
18	From work	52702019
6	From elsewhere	52702019
1329	No access to internet	52702019
63	From home	52702020
759	From cell phone	52702020
147	From work	52702020
33	From elsewhere	52702020
2241	No access to internet	52702020
90	From home	52703001
243	From cell phone	52703001
30	From work	52703001
48	From elsewhere	52703001
1446	No access to internet	52703001
15	From home	52703002
273	From cell phone	52703002
21	From work	52703002
18	From elsewhere	52703002
1104	No access to internet	52703002
138	From home	52703003
942	From cell phone	52703003
156	From work	52703003
30	From elsewhere	52703003
1707	No access to internet	52703003
15	From home	52703004
279	From cell phone	52703004
18	From work	52703004
12	From elsewhere	52703004
1413	No access to internet	52703004
12	From home	52704001
237	From cell phone	52704001
9	From work	52704001
30	From elsewhere	52704001
786	No access to internet	52704001
27	From home	52704002
561	From cell phone	52704002
99	From work	52704002
15	From elsewhere	52704002
543	No access to internet	52704002
90	From home	52704003
471	From cell phone	52704003
60	From work	52704003
135	From elsewhere	52704003
1413	No access to internet	52704003
6	From home	52704004
297	From cell phone	52704004
24	From work	52704004
27	From elsewhere	52704004
1497	No access to internet	52704004
3	From home	52704005
141	From cell phone	52704005
9	From work	52704005
9	From elsewhere	52704005
1077	No access to internet	52704005
9	From home	52704006
249	From cell phone	52704006
15	From work	52704006
33	From elsewhere	52704006
1002	No access to internet	52704006
21	From home	52704007
462	From cell phone	52704007
6	From work	52704007
6	From elsewhere	52704007
801	No access to internet	52704007
15	From home	52704008
390	From cell phone	52704008
27	From work	52704008
102	From elsewhere	52704008
1866	No access to internet	52704008
201	From home	52705001
738	From cell phone	52705001
87	From work	52705001
216	From elsewhere	52705001
579	No access to internet	52705001
267	From home	52705002
1026	From cell phone	52705002
81	From work	52705002
138	From elsewhere	52705002
2133	No access to internet	52705002
108	From home	52705003
627	From cell phone	52705003
93	From work	52705003
174	From elsewhere	52705003
2589	No access to internet	52705003
171	From home	52705004
216	From cell phone	52705004
51	From work	52705004
27	From elsewhere	52705004
1641	No access to internet	52705004
222	From home	52705005
309	From cell phone	52705005
120	From work	52705005
57	From elsewhere	52705005
963	No access to internet	52705005
117	From home	52705006
825	From cell phone	52705006
87	From work	52705006
180	From elsewhere	52705006
2196	No access to internet	52705006
9	From home	52705007
309	From cell phone	52705007
21	From work	52705007
15	From elsewhere	52705007
1032	No access to internet	52705007
6	From home	52705008
117	From cell phone	52705008
30	From work	52705008
96	From elsewhere	52705008
1365	No access to internet	52705008
9	From home	52705009
117	From cell phone	52705009
15	From work	52705009
15	From elsewhere	52705009
1122	No access to internet	52705009
12	From home	52705010
189	From cell phone	52705010
18	From work	52705010
9	From elsewhere	52705010
1341	No access to internet	52705010
9	From home	52705011
213	From cell phone	52705011
24	From work	52705011
15	From elsewhere	52705011
1017	No access to internet	52705011
24	From home	52705012
252	From cell phone	52705012
24	From work	52705012
33	From elsewhere	52705012
1194	No access to internet	52705012
12	From home	52705013
153	From cell phone	52705013
21	From work	52705013
3	From elsewhere	52705013
720	No access to internet	52705013
24	From home	52705014
243	From cell phone	52705014
18	From work	52705014
27	From elsewhere	52705014
858	No access to internet	52705014
27	From home	52705015
456	From cell phone	52705015
12	From work	52705015
18	From elsewhere	52705015
669	No access to internet	52705015
159	From home	52705016
297	From cell phone	52705016
42	From work	52705016
69	From elsewhere	52705016
1344	No access to internet	52705016
15	From home	52705017
285	From cell phone	52705017
12	From work	52705017
33	From elsewhere	52705017
1047	No access to internet	52705017
42	From home	52705018
339	From cell phone	52705018
27	From work	52705018
18	From elsewhere	52705018
1554	No access to internet	52705018
39	From home	52705019
285	From cell phone	52705019
27	From work	52705019
33	From elsewhere	52705019
1077	No access to internet	52705019
1002	From home	52802001
606	From cell phone	52802001
366	From work	52802001
102	From elsewhere	52802001
1332	No access to internet	52802001
1227	From home	52802002
1104	From cell phone	52802002
663	From work	52802002
129	From elsewhere	52802002
804	No access to internet	52802002
972	From home	52802003
525	From cell phone	52802003
378	From work	52802003
69	From elsewhere	52802003
642	No access to internet	52802003
741	From home	52802004
651	From cell phone	52802004
273	From work	52802004
183	From elsewhere	52802004
1098	No access to internet	52802004
99	From home	52802005
510	From cell phone	52802005
90	From work	52802005
144	From elsewhere	52802005
2550	No access to internet	52802005
123	From home	52802006
810	From cell phone	52802006
72	From work	52802006
60	From elsewhere	52802006
2484	No access to internet	52802006
51	From home	52802007
198	From cell phone	52802007
54	From work	52802007
36	From elsewhere	52802007
1899	No access to internet	52802007
84	From home	52802008
297	From cell phone	52802008
42	From work	52802008
99	From elsewhere	52802008
1296	No access to internet	52802008
795	From home	52802009
1221	From cell phone	52802009
456	From work	52802009
177	From elsewhere	52802009
1674	No access to internet	52802009
87	From home	52802010
759	From cell phone	52802010
18	From work	52802010
675	From elsewhere	52802010
975	No access to internet	52802010
18	From home	52802011
300	From cell phone	52802011
36	From work	52802011
48	From elsewhere	52802011
1116	No access to internet	52802011
42	From home	52802012
267	From cell phone	52802012
15	From work	52802012
93	From elsewhere	52802012
1443	No access to internet	52802012
60	From home	52802013
354	From cell phone	52802013
39	From work	52802013
243	From elsewhere	52802013
1992	No access to internet	52802013
81	From home	52802014
537	From cell phone	52802014
57	From work	52802014
201	From elsewhere	52802014
2385	No access to internet	52802014
72	From home	52802015
483	From cell phone	52802015
36	From work	52802015
387	From elsewhere	52802015
2079	No access to internet	52802015
117	From home	52802016
528	From cell phone	52802016
99	From work	52802016
75	From elsewhere	52802016
1059	No access to internet	52802016
246	From home	52802017
1308	From cell phone	52802017
177	From work	52802017
387	From elsewhere	52802017
1224	No access to internet	52802017
99	From home	52802018
624	From cell phone	52802018
54	From work	52802018
402	From elsewhere	52802018
1704	No access to internet	52802018
264	From home	52802019
1086	From cell phone	52802019
171	From work	52802019
231	From elsewhere	52802019
1233	No access to internet	52802019
213	From home	52802020
738	From cell phone	52802020
135	From work	52802020
126	From elsewhere	52802020
1275	No access to internet	52802020
177	From home	52802021
633	From cell phone	52802021
54	From work	52802021
216	From elsewhere	52802021
846	No access to internet	52802021
129	From home	52802022
477	From cell phone	52802022
69	From work	52802022
231	From elsewhere	52802022
1053	No access to internet	52802022
948	From home	52802023
822	From cell phone	52802023
471	From work	52802023
90	From elsewhere	52802023
993	No access to internet	52802023
414	From home	52802024
981	From cell phone	52802024
273	From work	52802024
93	From elsewhere	52802024
2610	No access to internet	52802024
69	From home	52802025
459	From cell phone	52802025
57	From work	52802025
165	From elsewhere	52802025
2412	No access to internet	52802025
519	From home	52802026
690	From cell phone	52802026
366	From work	52802026
195	From elsewhere	52802026
1134	No access to internet	52802026
273	From home	52802027
792	From cell phone	52802027
135	From work	52802027
150	From elsewhere	52802027
1326	No access to internet	52802027
138	From home	52802028
492	From cell phone	52802028
102	From work	52802028
393	From elsewhere	52802028
1233	No access to internet	52802028
99	From home	52802029
741	From cell phone	52802029
66	From work	52802029
117	From elsewhere	52802029
2343	No access to internet	52802029
243	From home	52802030
696	From cell phone	52802030
84	From work	52802030
2055	From elsewhere	52802030
837	No access to internet	52802030
57	From home	52806001
285	From cell phone	52806001
15	From work	52806001
24	From elsewhere	52806001
1491	No access to internet	52806001
9	From home	52806002
99	From cell phone	52806002
6	From work	52806002
24	From elsewhere	52806002
1047	No access to internet	52806002
9	From home	52806003
162	From cell phone	52806003
12	From work	52806003
12	From elsewhere	52806003
1194	No access to internet	52806003
9	From home	52806004
447	From cell phone	52806004
12	From work	52806004
12	From elsewhere	52806004
804	No access to internet	52806004
90	From home	52806005
543	From cell phone	52806005
138	From work	52806005
219	From elsewhere	52806005
1329	No access to internet	52806005
12	From home	52806006
387	From cell phone	52806006
18	From work	52806006
33	From elsewhere	52806006
1104	No access to internet	52806006
3	From home	52806007
258	From cell phone	52806007
36	From work	52806007
12	From elsewhere	52806007
1248	No access to internet	52806007
9	From home	52806008
426	From cell phone	52806008
18	From work	52806008
6	From elsewhere	52806008
939	No access to internet	52806008
51	From home	52806009
153	From cell phone	52806009
144	From work	52806009
18	From elsewhere	52806009
1233	No access to internet	52806009
15	From home	52806010
357	From cell phone	52806010
27	From work	52806010
96	From elsewhere	52806010
1197	No access to internet	52806010
9	From home	52806011
195	From cell phone	52806011
21	From work	52806011
0	From elsewhere	52806011
933	No access to internet	52806011
66	From home	52806012
201	From cell phone	52806012
15	From work	52806012
15	From elsewhere	52806012
1590	No access to internet	52806012
12	From home	52806013
177	From cell phone	52806013
21	From work	52806013
15	From elsewhere	52806013
1806	No access to internet	52806013
21	From home	52806014
87	From cell phone	52806014
12	From work	52806014
3	From elsewhere	52806014
1416	No access to internet	52806014
6	From home	52801001
75	From cell phone	52801001
15	From work	52801001
150	From elsewhere	52801001
603	No access to internet	52801001
120	From home	52801002
267	From cell phone	52801002
72	From work	52801002
33	From elsewhere	52801002
1860	No access to internet	52801002
21	From home	52801003
150	From cell phone	52801003
36	From work	52801003
141	From elsewhere	52801003
1026	No access to internet	52801003
63	From home	52801004
471	From cell phone	52801004
48	From work	52801004
42	From elsewhere	52801004
1950	No access to internet	52801004
27	From home	52801005
324	From cell phone	52801005
27	From work	52801005
12	From elsewhere	52801005
1269	No access to internet	52801005
42	From home	52801006
234	From cell phone	52801006
60	From work	52801006
84	From elsewhere	52801006
1773	No access to internet	52801006
18	From home	52801007
378	From cell phone	52801007
15	From work	52801007
12	From elsewhere	52801007
636	No access to internet	52801007
36	From home	52801008
414	From cell phone	52801008
21	From work	52801008
12	From elsewhere	52801008
1461	No access to internet	52801008
54	From home	52801009
321	From cell phone	52801009
24	From work	52801009
39	From elsewhere	52801009
1305	No access to internet	52801009
27	From home	52801010
612	From cell phone	52801010
6	From work	52801010
30	From elsewhere	52801010
537	No access to internet	52801010
24	From home	52801011
225	From cell phone	52801011
15	From work	52801011
69	From elsewhere	52801011
1173	No access to internet	52801011
9	From home	52801012
513	From cell phone	52801012
9	From work	52801012
174	From elsewhere	52801012
780	No access to internet	52801012
18	From home	52801013
480	From cell phone	52801013
12	From work	52801013
27	From elsewhere	52801013
756	No access to internet	52801013
87	From home	52801014
282	From cell phone	52801014
96	From work	52801014
45	From elsewhere	52801014
2067	No access to internet	52801014
24	From home	52801015
591	From cell phone	52801015
18	From work	52801015
33	From elsewhere	52801015
1110	No access to internet	52801015
6	From home	52803001
78	From cell phone	52803001
12	From work	52803001
3	From elsewhere	52803001
1089	No access to internet	52803001
9	From home	52803002
45	From cell phone	52803002
21	From work	52803002
6	From elsewhere	52803002
1410	No access to internet	52803002
3	From home	52803003
306	From cell phone	52803003
9	From work	52803003
93	From elsewhere	52803003
1230	No access to internet	52803003
6	From home	52803004
147	From cell phone	52803004
6	From work	52803004
42	From elsewhere	52803004
1137	No access to internet	52803004
21	From home	52803005
150	From cell phone	52803005
15	From work	52803005
15	From elsewhere	52803005
1740	No access to internet	52803005
24	From home	52803006
165	From cell phone	52803006
24	From work	52803006
9	From elsewhere	52803006
1335	No access to internet	52803006
27	From home	52803007
351	From cell phone	52803007
24	From work	52803007
54	From elsewhere	52803007
1620	No access to internet	52803007
36	From home	52803008
204	From cell phone	52803008
18	From work	52803008
66	From elsewhere	52803008
1257	No access to internet	52803008
15	From home	52804001
420	From cell phone	52804001
9	From work	52804001
48	From elsewhere	52804001
981	No access to internet	52804001
9	From home	52804002
243	From cell phone	52804002
12	From work	52804002
9	From elsewhere	52804002
1188	No access to internet	52804002
57	From home	52804003
195	From cell phone	52804003
21	From work	52804003
24	From elsewhere	52804003
1068	No access to internet	52804003
24	From home	52804004
294	From cell phone	52804004
33	From work	52804004
21	From elsewhere	52804004
1227	No access to internet	52804004
27	From home	52804005
246	From cell phone	52804005
15	From work	52804005
72	From elsewhere	52804005
1548	No access to internet	52804005
9	From home	52804006
204	From cell phone	52804006
18	From work	52804006
18	From elsewhere	52804006
1140	No access to internet	52804006
72	From home	52804007
510	From cell phone	52804007
30	From work	52804007
30	From elsewhere	52804007
1443	No access to internet	52804007
18	From home	52804008
96	From cell phone	52804008
45	From work	52804008
27	From elsewhere	52804008
1593	No access to internet	52804008
45	From home	52804009
171	From cell phone	52804009
21	From work	52804009
129	From elsewhere	52804009
1173	No access to internet	52804009
27	From home	52804010
501	From cell phone	52804010
18	From work	52804010
66	From elsewhere	52804010
984	No access to internet	52804010
483	From home	52804011
888	From cell phone	52804011
201	From work	52804011
204	From elsewhere	52804011
1191	No access to internet	52804011
87	From home	52804012
375	From cell phone	52804012
57	From work	52804012
165	From elsewhere	52804012
1134	No access to internet	52804012
72	From home	52804013
753	From cell phone	52804013
42	From work	52804013
168	From elsewhere	52804013
1614	No access to internet	52804013
21	From home	52804014
414	From cell phone	52804014
6	From work	52804014
27	From elsewhere	52804014
1017	No access to internet	52804014
3	From home	52804015
372	From cell phone	52804015
21	From work	52804015
27	From elsewhere	52804015
1452	No access to internet	52804015
12	From home	52804016
207	From cell phone	52804016
12	From work	52804016
84	From elsewhere	52804016
1773	No access to internet	52804016
21	From home	52804017
291	From cell phone	52804017
15	From work	52804017
27	From elsewhere	52804017
903	No access to internet	52804017
57	From home	52804018
222	From cell phone	52804018
36	From work	52804018
24	From elsewhere	52804018
969	No access to internet	52804018
447	From home	52804019
252	From cell phone	52804019
123	From work	52804019
54	From elsewhere	52804019
1026	No access to internet	52804019
27	From home	52804020
252	From cell phone	52804020
24	From work	52804020
228	From elsewhere	52804020
1536	No access to internet	52804020
42	From home	52804021
51	From cell phone	52804021
12	From work	52804021
18	From elsewhere	52804021
1119	No access to internet	52804021
12	From home	52804022
108	From cell phone	52804022
12	From work	52804022
30	From elsewhere	52804022
1020	No access to internet	52804022
21	From home	52804023
393	From cell phone	52804023
33	From work	52804023
54	From elsewhere	52804023
1056	No access to internet	52804023
6	From home	52804024
306	From cell phone	52804024
9	From work	52804024
81	From elsewhere	52804024
1161	No access to internet	52804024
33	From home	52804025
111	From cell phone	52804025
15	From work	52804025
21	From elsewhere	52804025
1155	No access to internet	52804025
30	From home	52804026
207	From cell phone	52804026
39	From work	52804026
36	From elsewhere	52804026
2274	No access to internet	52804026
123	From home	52805001
768	From cell phone	52805001
159	From work	52805001
63	From elsewhere	52805001
1935	No access to internet	52805001
21	From home	52805002
129	From cell phone	52805002
27	From work	52805002
9	From elsewhere	52805002
1368	No access to internet	52805002
6	From home	52805003
159	From cell phone	52805003
12	From work	52805003
15	From elsewhere	52805003
1233	No access to internet	52805003
12	From home	52805004
60	From cell phone	52805004
24	From work	52805004
0	From elsewhere	52805004
1449	No access to internet	52805004
9	From home	52805005
303	From cell phone	52805005
15	From work	52805005
57	From elsewhere	52805005
1407	No access to internet	52805005
12	From home	52805006
237	From cell phone	52805006
15	From work	52805006
57	From elsewhere	52805006
744	No access to internet	52805006
9	From home	54301001
156	From cell phone	54301001
24	From work	54301001
24	From elsewhere	54301001
1896	No access to internet	54301001
6	From home	54301002
177	From cell phone	54301002
27	From work	54301002
33	From elsewhere	54301002
1743	No access to internet	54301002
12	From home	54301003
159	From cell phone	54301003
24	From work	54301003
42	From elsewhere	54301003
1881	No access to internet	54301003
15	From home	54301004
150	From cell phone	54301004
27	From work	54301004
21	From elsewhere	54301004
1812	No access to internet	54301004
24	From home	54301005
192	From cell phone	54301005
30	From work	54301005
33	From elsewhere	54301005
1548	No access to internet	54301005
51	From home	54301006
552	From cell phone	54301006
42	From work	54301006
57	From elsewhere	54301006
1797	No access to internet	54301006
9	From home	54301007
105	From cell phone	54301007
21	From work	54301007
18	From elsewhere	54301007
1611	No access to internet	54301007
6	From home	54301008
192	From cell phone	54301008
15	From work	54301008
24	From elsewhere	54301008
1647	No access to internet	54301008
45	From home	54301009
261	From cell phone	54301009
48	From work	54301009
33	From elsewhere	54301009
2391	No access to internet	54301009
9	From home	54301010
219	From cell phone	54301010
36	From work	54301010
180	From elsewhere	54301010
1563	No access to internet	54301010
84	From home	54301011
381	From cell phone	54301011
57	From work	54301011
27	From elsewhere	54301011
1542	No access to internet	54301011
3	From home	54302001
189	From cell phone	54302001
6	From work	54302001
3	From elsewhere	54302001
456	No access to internet	54302001
123	From home	54302002
147	From cell phone	54302002
39	From work	54302002
21	From elsewhere	54302002
801	No access to internet	54302002
171	From home	54302003
282	From cell phone	54302003
48	From work	54302003
18	From elsewhere	54302003
585	No access to internet	54302003
33	From home	54302004
48	From cell phone	54302004
39	From work	54302004
18	From elsewhere	54302004
636	No access to internet	54302004
33	From home	54303001
153	From cell phone	54303001
51	From work	54303001
39	From elsewhere	54303001
3180	No access to internet	54303001
69	From home	54303002
198	From cell phone	54303002
27	From work	54303002
15	From elsewhere	54303002
1557	No access to internet	54303002
324	From home	54303003
453	From cell phone	54303003
324	From work	54303003
75	From elsewhere	54303003
723	No access to internet	54303003
189	From home	54303004
627	From cell phone	54303004
123	From work	54303004
159	From elsewhere	54303004
2325	No access to internet	54303004
60	From home	54303005
219	From cell phone	54303005
48	From work	54303005
105	From elsewhere	54303005
600	No access to internet	54303005
285	From home	54303006
276	From cell phone	54303006
156	From work	54303006
72	From elsewhere	54303006
2130	No access to internet	54303006
54	From home	54303007
489	From cell phone	54303007
39	From work	54303007
27	From elsewhere	54303007
1404	No access to internet	54303007
78	From home	54303008
468	From cell phone	54303008
66	From work	54303008
111	From elsewhere	54303008
1809	No access to internet	54303008
27	From home	54304001
87	From cell phone	54304001
24	From work	54304001
18	From elsewhere	54304001
1563	No access to internet	54304001
177	From home	54304002
321	From cell phone	54304002
132	From work	54304002
45	From elsewhere	54304002
879	No access to internet	54304002
6	From home	54304003
54	From cell phone	54304003
18	From work	54304003
96	From elsewhere	54304003
1800	No access to internet	54304003
129	From home	54304004
588	From cell phone	54304004
93	From work	54304004
120	From elsewhere	54304004
2853	No access to internet	54304004
15	From home	54304005
123	From cell phone	54304005
24	From work	54304005
27	From elsewhere	54304005
1620	No access to internet	54304005
15	From home	54304006
198	From cell phone	54304006
21	From work	54304006
27	From elsewhere	54304006
1251	No access to internet	54304006
21	From home	54304007
258	From cell phone	54304007
21	From work	54304007
105	From elsewhere	54304007
1107	No access to internet	54304007
21	From home	54304008
318	From cell phone	54304008
21	From work	54304008
12	From elsewhere	54304008
2166	No access to internet	54304008
45	From home	54304009
216	From cell phone	54304009
18	From work	54304009
45	From elsewhere	54304009
1386	No access to internet	54304009
15	From home	54304010
108	From cell phone	54304010
21	From work	54304010
12	From elsewhere	54304010
1533	No access to internet	54304010
18	From home	54304011
126	From cell phone	54304011
33	From work	54304011
96	From elsewhere	54304011
1404	No access to internet	54304011
12	From home	54304012
204	From cell phone	54304012
15	From work	54304012
102	From elsewhere	54304012
1671	No access to internet	54304012
6	From home	54305001
153	From cell phone	54305001
24	From work	54305001
21	From elsewhere	54305001
2001	No access to internet	54305001
18	From home	54305002
378	From cell phone	54305002
9	From work	54305002
168	From elsewhere	54305002
1821	No access to internet	54305002
3	From home	54305003
456	From cell phone	54305003
0	From work	54305003
36	From elsewhere	54305003
1422	No access to internet	54305003
15	From home	54305004
330	From cell phone	54305004
15	From work	54305004
9	From elsewhere	54305004
1464	No access to internet	54305004
33	From home	54305005
225	From cell phone	54305005
9	From work	54305005
111	From elsewhere	54305005
1833	No access to internet	54305005
6	From home	54305006
186	From cell phone	54305006
15	From work	54305006
18	From elsewhere	54305006
2154	No access to internet	54305006
12	From home	54305007
201	From cell phone	54305007
15	From work	54305007
18	From elsewhere	54305007
1806	No access to internet	54305007
9	From home	54305008
501	From cell phone	54305008
18	From work	54305008
24	From elsewhere	54305008
1872	No access to internet	54305008
9	From home	54305009
48	From cell phone	54305009
15	From work	54305009
15	From elsewhere	54305009
1671	No access to internet	54305009
21	From home	54305010
78	From cell phone	54305010
15	From work	54305010
27	From elsewhere	54305010
2175	No access to internet	54305010
12	From home	54305011
252	From cell phone	54305011
27	From work	54305011
234	From elsewhere	54305011
1167	No access to internet	54305011
33	From home	54305012
225	From cell phone	54305012
21	From work	54305012
21	From elsewhere	54305012
2046	No access to internet	54305012
42	From home	54305013
228	From cell phone	54305013
15	From work	54305013
57	From elsewhere	54305013
2124	No access to internet	54305013
15	From home	54305014
282	From cell phone	54305014
15	From work	54305014
63	From elsewhere	54305014
2022	No access to internet	54305014
3	From home	54305015
69	From cell phone	54305015
6	From work	54305015
6	From elsewhere	54305015
1404	No access to internet	54305015
111	From home	54305016
606	From cell phone	54305016
123	From work	54305016
255	From elsewhere	54305016
1851	No access to internet	54305016
57	From home	54305017
426	From cell phone	54305017
51	From work	54305017
72	From elsewhere	54305017
1590	No access to internet	54305017
9	From home	54305018
126	From cell phone	54305018
15	From work	54305018
21	From elsewhere	54305018
1893	No access to internet	54305018
12	From home	54305019
162	From cell phone	54305019
21	From work	54305019
18	From elsewhere	54305019
1551	No access to internet	54305019
30	From home	54305020
402	From cell phone	54305020
9	From work	54305020
168	From elsewhere	54305020
1452	No access to internet	54305020
126	From home	52401001
237	From cell phone	52401001
54	From work	52401001
30	From elsewhere	52401001
1113	No access to internet	52401001
564	From home	52401002
735	From cell phone	52401002
210	From work	52401002
81	From elsewhere	52401002
2226	No access to internet	52401002
114	From home	52401003
633	From cell phone	52401003
36	From work	52401003
33	From elsewhere	52401003
2805	No access to internet	52401003
138	From home	52401004
405	From cell phone	52401004
87	From work	52401004
36	From elsewhere	52401004
1887	No access to internet	52401004
51	From home	52401005
258	From cell phone	52401005
57	From work	52401005
99	From elsewhere	52401005
2037	No access to internet	52401005
192	From home	52401006
486	From cell phone	52401006
117	From work	52401006
102	From elsewhere	52401006
1899	No access to internet	52401006
15	From home	52402001
192	From cell phone	52402001
18	From work	52402001
3	From elsewhere	52402001
2142	No access to internet	52402001
30	From home	52402002
69	From cell phone	52402002
6	From work	52402002
3	From elsewhere	52402002
1590	No access to internet	52402002
9	From home	52402003
255	From cell phone	52402003
18	From work	52402003
6	From elsewhere	52402003
1677	No access to internet	52402003
9	From home	52402004
195	From cell phone	52402004
15	From work	52402004
3	From elsewhere	52402004
1230	No access to internet	52402004
27	From home	52402005
405	From cell phone	52402005
6	From work	52402005
72	From elsewhere	52402005
1230	No access to internet	52402005
30	From home	52402006
357	From cell phone	52402006
9	From work	52402006
153	From elsewhere	52402006
1002	No access to internet	52402006
6	From home	52402007
174	From cell phone	52402007
15	From work	52402007
33	From elsewhere	52402007
1407	No access to internet	52402007
9	From home	52402008
324	From cell phone	52402008
6	From work	52402008
30	From elsewhere	52402008
1161	No access to internet	52402008
6	From home	52402009
126	From cell phone	52402009
12	From work	52402009
0	From elsewhere	52402009
1581	No access to internet	52402009
9	From home	52402010
267	From cell phone	52402010
21	From work	52402010
3	From elsewhere	52402010
1761	No access to internet	52402010
15	From home	52402011
231	From cell phone	52402011
36	From work	52402011
18	From elsewhere	52402011
1986	No access to internet	52402011
18	From home	52402012
276	From cell phone	52402012
18	From work	52402012
24	From elsewhere	52402012
1326	No access to internet	52402012
24	From home	52402013
234	From cell phone	52402013
21	From work	52402013
12	From elsewhere	52402013
1614	No access to internet	52402013
108	From home	52402014
471	From cell phone	52402014
48	From work	52402014
60	From elsewhere	52402014
1740	No access to internet	52402014
27	From home	52402015
405	From cell phone	52402015
9	From work	52402015
39	From elsewhere	52402015
1671	No access to internet	52402015
18	From home	52402016
501	From cell phone	52402016
15	From work	52402016
36	From elsewhere	52402016
1086	No access to internet	52402016
27	From home	52402017
285	From cell phone	52402017
9	From work	52402017
48	From elsewhere	52402017
1404	No access to internet	52402017
3	From home	52404001
45	From cell phone	52404001
30	From work	52404001
15	From elsewhere	52404001
1713	No access to internet	52404001
9	From home	52404002
93	From cell phone	52404002
15	From work	52404002
6	From elsewhere	52404002
1467	No access to internet	52404002
0	From home	52404003
219	From cell phone	52404003
12	From work	52404003
9	From elsewhere	52404003
1788	No access to internet	52404003
42	From home	52404004
312	From cell phone	52404004
69	From work	52404004
102	From elsewhere	52404004
1713	No access to internet	52404004
18	From home	52404005
426	From cell phone	52404005
57	From work	52404005
45	From elsewhere	52404005
2703	No access to internet	52404005
12	From home	52404006
294	From cell phone	52404006
15	From work	52404006
18	From elsewhere	52404006
1815	No access to internet	52404006
12	From home	52404007
96	From cell phone	52404007
12	From work	52404007
18	From elsewhere	52404007
1626	No access to internet	52404007
3	From home	52404008
21	From cell phone	52404008
33	From work	52404008
3	From elsewhere	52404008
1614	No access to internet	52404008
36	From home	52404009
234	From cell phone	52404009
6	From work	52404009
15	From elsewhere	52404009
1581	No access to internet	52404009
12	From home	52404010
204	From cell phone	52404010
30	From work	52404010
12	From elsewhere	52404010
1983	No access to internet	52404010
9	From home	52404011
96	From cell phone	52404011
21	From work	52404011
105	From elsewhere	52404011
1794	No access to internet	52404011
21	From home	52404012
489	From cell phone	52404012
9	From work	52404012
72	From elsewhere	52404012
1545	No access to internet	52404012
15	From home	52404013
291	From cell phone	52404013
15	From work	52404013
27	From elsewhere	52404013
1602	No access to internet	52404013
54	From home	52404014
267	From cell phone	52404014
30	From work	52404014
21	From elsewhere	52404014
1746	No access to internet	52404014
9	From home	52404015
111	From cell phone	52404015
15	From work	52404015
9	From elsewhere	52404015
1578	No access to internet	52404015
9	From home	52404016
159	From cell phone	52404016
24	From work	52404016
15	From elsewhere	52404016
1605	No access to internet	52404016
21	From home	52404017
108	From cell phone	52404017
33	From work	52404017
6	From elsewhere	52404017
1881	No access to internet	52404017
3	From home	52404018
150	From cell phone	52404018
21	From work	52404018
6	From elsewhere	52404018
1236	No access to internet	52404018
36	From home	52404019
141	From cell phone	52404019
24	From work	52404019
15	From elsewhere	52404019
1665	No access to internet	52404019
33	From home	52405001
198	From cell phone	52405001
39	From work	52405001
15	From elsewhere	52405001
2160	No access to internet	52405001
36	From home	52405002
237	From cell phone	52405002
36	From work	52405002
24	From elsewhere	52405002
1806	No access to internet	52405002
21	From home	52405003
285	From cell phone	52405003
30	From work	52405003
33	From elsewhere	52405003
1683	No access to internet	52405003
24	From home	52405004
141	From cell phone	52405004
9	From work	52405004
99	From elsewhere	52405004
1593	No access to internet	52405004
48	From home	52405005
375	From cell phone	52405005
57	From work	52405005
90	From elsewhere	52405005
2241	No access to internet	52405005
9	From home	52405006
468	From cell phone	52405006
15	From work	52405006
75	From elsewhere	52405006
1494	No access to internet	52405006
81	From home	52405007
690	From cell phone	52405007
57	From work	52405007
72	From elsewhere	52405007
2718	No access to internet	52405007
30	From home	52405008
177	From cell phone	52405008
30	From work	52405008
36	From elsewhere	52405008
2526	No access to internet	52405008
192	From home	52405009
306	From cell phone	52405009
93	From work	52405009
84	From elsewhere	52405009
948	No access to internet	52405009
204	From home	52405010
798	From cell phone	52405010
81	From work	52405010
42	From elsewhere	52405010
2229	No access to internet	52405010
171	From home	52405011
342	From cell phone	52405011
60	From work	52405011
42	From elsewhere	52405011
1884	No access to internet	52405011
99	From home	52502001
333	From cell phone	52502001
60	From work	52502001
24	From elsewhere	52502001
2613	No access to internet	52502001
1209	From home	52502002
555	From cell phone	52502002
366	From work	52502002
147	From elsewhere	52502002
1005	No access to internet	52502002
327	From home	52502003
435	From cell phone	52502003
159	From work	52502003
135	From elsewhere	52502003
1329	No access to internet	52502003
648	From home	52502004
705	From cell phone	52502004
237	From work	52502004
123	From elsewhere	52502004
1119	No access to internet	52502004
546	From home	52502005
915	From cell phone	52502005
120	From work	52502005
405	From elsewhere	52502005
921	No access to internet	52502005
51	From home	52502006
747	From cell phone	52502006
39	From work	52502006
321	From elsewhere	52502006
3651	No access to internet	52502006
51	From home	52502007
534	From cell phone	52502007
39	From work	52502007
177	From elsewhere	52502007
2823	No access to internet	52502007
39	From home	52502008
294	From cell phone	52502008
15	From work	52502008
96	From elsewhere	52502008
1416	No access to internet	52502008
207	From home	52502009
594	From cell phone	52502009
27	From work	52502009
234	From elsewhere	52502009
2661	No access to internet	52502009
78	From home	52502010
321	From cell phone	52502010
27	From work	52502010
222	From elsewhere	52502010
1515	No access to internet	52502010
48	From home	52502011
462	From cell phone	52502011
36	From work	52502011
369	From elsewhere	52502011
1590	No access to internet	52502011
30	From home	52502012
348	From cell phone	52502012
12	From work	52502012
45	From elsewhere	52502012
1392	No access to internet	52502012
72	From home	52502013
324	From cell phone	52502013
18	From work	52502013
264	From elsewhere	52502013
1008	No access to internet	52502013
45	From home	52502014
579	From cell phone	52502014
33	From work	52502014
87	From elsewhere	52502014
2868	No access to internet	52502014
24	From home	52502015
366	From cell phone	52502015
27	From work	52502015
156	From elsewhere	52502015
1638	No access to internet	52502015
30	From home	52502016
345	From cell phone	52502016
27	From work	52502016
114	From elsewhere	52502016
2592	No access to internet	52502016
39	From home	52502017
348	From cell phone	52502017
15	From work	52502017
246	From elsewhere	52502017
1761	No access to internet	52502017
33	From home	52502018
519	From cell phone	52502018
21	From work	52502018
141	From elsewhere	52502018
1860	No access to internet	52502018
33	From home	52502019
600	From cell phone	52502019
39	From work	52502019
51	From elsewhere	52502019
1779	No access to internet	52502019
219	From home	52502020
345	From cell phone	52502020
24	From work	52502020
183	From elsewhere	52502020
3021	No access to internet	52502020
117	From home	52502021
663	From cell phone	52502021
54	From work	52502021
168	From elsewhere	52502021
2094	No access to internet	52502021
120	From home	52502022
450	From cell phone	52502022
54	From work	52502022
342	From elsewhere	52502022
996	No access to internet	52502022
60	From home	52502023
618	From cell phone	52502023
30	From work	52502023
129	From elsewhere	52502023
1101	No access to internet	52502023
78	From home	52502024
537	From cell phone	52502024
84	From work	52502024
570	From elsewhere	52502024
1692	No access to internet	52502024
441	From home	52502025
543	From cell phone	52502025
207	From work	52502025
87	From elsewhere	52502025
2430	No access to internet	52502025
69	From home	52502026
288	From cell phone	52502026
48	From work	52502026
132	From elsewhere	52502026
1077	No access to internet	52502026
114	From home	52502027
585	From cell phone	52502027
39	From work	52502027
237	From elsewhere	52502027
1503	No access to internet	52502027
96	From home	52502028
399	From cell phone	52502028
63	From work	52502028
219	From elsewhere	52502028
888	No access to internet	52502028
51	From home	52502029
321	From cell phone	52502029
33	From work	52502029
210	From elsewhere	52502029
1923	No access to internet	52502029
135	From home	52502030
318	From cell phone	52502030
39	From work	52502030
255	From elsewhere	52502030
1974	No access to internet	52502030
39	From home	52502031
228	From cell phone	52502031
21	From work	52502031
48	From elsewhere	52502031
2292	No access to internet	52502031
18	From home	52503001
201	From cell phone	52503001
15	From work	52503001
15	From elsewhere	52503001
1458	No access to internet	52503001
162	From home	52503002
309	From cell phone	52503002
78	From work	52503002
45	From elsewhere	52503002
858	No access to internet	52503002
48	From home	52503003
333	From cell phone	52503003
36	From work	52503003
18	From elsewhere	52503003
1242	No access to internet	52503003
21	From home	52503004
132	From cell phone	52503004
6	From work	52503004
9	From elsewhere	52503004
1245	No access to internet	52503004
87	From home	52504001
402	From cell phone	52504001
21	From work	52504001
138	From elsewhere	52504001
1425	No access to internet	52504001
117	From home	52504002
324	From cell phone	52504002
69	From work	52504002
39	From elsewhere	52504002
1542	No access to internet	52504002
15	From home	52504003
270	From cell phone	52504003
6	From work	52504003
171	From elsewhere	52504003
1395	No access to internet	52504003
9	From home	52504004
156	From cell phone	52504004
9	From work	52504004
12	From elsewhere	52504004
1584	No access to internet	52504004
15	From home	52504005
108	From cell phone	52504005
12	From work	52504005
12	From elsewhere	52504005
1275	No access to internet	52504005
6	From home	52504006
108	From cell phone	52504006
15	From work	52504006
144	From elsewhere	52504006
1488	No access to internet	52504006
9	From home	52504007
66	From cell phone	52504007
3	From work	52504007
15	From elsewhere	52504007
1425	No access to internet	52504007
30	From home	52504008
375	From cell phone	52504008
18	From work	52504008
72	From elsewhere	52504008
1323	No access to internet	52504008
18	From home	52504009
324	From cell phone	52504009
12	From work	52504009
21	From elsewhere	52504009
1680	No access to internet	52504009
18	From home	52504010
315	From cell phone	52504010
9	From work	52504010
105	From elsewhere	52504010
1797	No access to internet	52504010
21	From home	52504011
276	From cell phone	52504011
15	From work	52504011
201	From elsewhere	52504011
1332	No access to internet	52504011
39	From home	52603001
159	From cell phone	52603001
33	From work	52603001
54	From elsewhere	52603001
1656	No access to internet	52603001
6	From home	52603002
174	From cell phone	52603002
12	From work	52603002
15	From elsewhere	52603002
957	No access to internet	52603002
12	From home	52603003
99	From cell phone	52603003
12	From work	52603003
78	From elsewhere	52603003
1482	No access to internet	52603003
12	From home	52603004
45	From cell phone	52603004
33	From work	52603004
12	From elsewhere	52603004
702	No access to internet	52603004
12	From home	52603005
135	From cell phone	52603005
24	From work	52603005
12	From elsewhere	52603005
1734	No access to internet	52603005
78	From home	52603006
312	From cell phone	52603006
42	From work	52603006
75	From elsewhere	52603006
1524	No access to internet	52603006
18	From home	52603007
462	From cell phone	52603007
24	From work	52603007
21	From elsewhere	52603007
1785	No access to internet	52603007
378	From home	52603008
315	From cell phone	52603008
123	From work	52603008
69	From elsewhere	52603008
570	No access to internet	52603008
513	From home	52603009
363	From cell phone	52603009
195	From work	52603009
96	From elsewhere	52603009
717	No access to internet	52603009
30	From home	52603010
261	From cell phone	52603010
21	From work	52603010
33	From elsewhere	52603010
423	No access to internet	52603010
228	From home	52603011
936	From cell phone	52603011
66	From work	52603011
153	From elsewhere	52603011
1797	No access to internet	52603011
93	From home	52603012
654	From cell phone	52603012
48	From work	52603012
66	From elsewhere	52603012
1536	No access to internet	52603012
90	From home	52603013
837	From cell phone	52603013
57	From work	52603013
363	From elsewhere	52603013
1929	No access to internet	52603013
21	From home	52603014
372	From cell phone	52603014
15	From work	52603014
21	From elsewhere	52603014
1221	No access to internet	52603014
15	From home	52603015
288	From cell phone	52603015
15	From work	52603015
12	From elsewhere	52603015
1293	No access to internet	52603015
21	From home	52603016
246	From cell phone	52603016
51	From work	52603016
45	From elsewhere	52603016
1470	No access to internet	52603016
57	From home	52603017
444	From cell phone	52603017
9	From work	52603017
36	From elsewhere	52603017
1668	No access to internet	52603017
42	From home	52603018
279	From cell phone	52603018
21	From work	52603018
72	From elsewhere	52603018
1131	No access to internet	52603018
21	From home	52603019
186	From cell phone	52603019
12	From work	52603019
36	From elsewhere	52603019
1296	No access to internet	52603019
72	From home	52603020
558	From cell phone	52603020
45	From work	52603020
120	From elsewhere	52603020
1314	No access to internet	52603020
18	From home	52603021
324	From cell phone	52603021
18	From work	52603021
33	From elsewhere	52603021
2037	No access to internet	52603021
177	From home	52603022
924	From cell phone	52603022
93	From work	52603022
279	From elsewhere	52603022
2061	No access to internet	52603022
90	From home	52601001
306	From cell phone	52601001
42	From work	52601001
69	From elsewhere	52601001
1740	No access to internet	52601001
87	From home	52601002
717	From cell phone	52601002
18	From work	52601002
195	From elsewhere	52601002
1800	No access to internet	52601002
186	From home	52601003
609	From cell phone	52601003
132	From work	52601003
240	From elsewhere	52601003
1659	No access to internet	52601003
72	From home	52601004
459	From cell phone	52601004
18	From work	52601004
42	From elsewhere	52601004
1575	No access to internet	52601004
3	From home	52601005
183	From cell phone	52601005
3	From work	52601005
15	From elsewhere	52601005
1200	No access to internet	52601005
6	From home	52601006
222	From cell phone	52601006
12	From work	52601006
102	From elsewhere	52601006
1197	No access to internet	52601006
15	From home	52601007
327	From cell phone	52601007
21	From work	52601007
54	From elsewhere	52601007
1200	No access to internet	52601007
60	From home	52601008
300	From cell phone	52601008
42	From work	52601008
27	From elsewhere	52601008
1095	No access to internet	52601008
30	From home	52602001
294	From cell phone	52602001
21	From work	52602001
48	From elsewhere	52602001
1605	No access to internet	52602001
51	From home	52602002
558	From cell phone	52602002
63	From work	52602002
147	From elsewhere	52602002
1434	No access to internet	52602002
6	From home	52602003
132	From cell phone	52602003
15	From work	52602003
15	From elsewhere	52602003
1365	No access to internet	52602003
33	From home	52602004
330	From cell phone	52602004
36	From work	52602004
45	From elsewhere	52602004
1506	No access to internet	52602004
15	From home	52602005
342	From cell phone	52602005
15	From work	52602005
30	From elsewhere	52602005
1323	No access to internet	52602005
6	From home	52602006
273	From cell phone	52602006
15	From work	52602006
12	From elsewhere	52602006
1089	No access to internet	52602006
21	From home	52602007
414	From cell phone	52602007
18	From work	52602007
57	From elsewhere	52602007
813	No access to internet	52602007
27	From home	52602008
57	From cell phone	52602008
12	From work	52602008
24	From elsewhere	52602008
1128	No access to internet	52602008
24	From home	52602009
345	From cell phone	52602009
18	From work	52602009
54	From elsewhere	52602009
1878	No access to internet	52602009
75	From home	52602010
534	From cell phone	52602010
54	From work	52602010
69	From elsewhere	52602010
1986	No access to internet	52602010
165	From home	52602011
270	From cell phone	52602011
168	From work	52602011
60	From elsewhere	52602011
3720	No access to internet	52602011
33	From home	52602012
261	From cell phone	52602012
18	From work	52602012
30	From elsewhere	52602012
1299	No access to internet	52602012
6	From home	52602013
201	From cell phone	52602013
3	From work	52602013
90	From elsewhere	52602013
567	No access to internet	52602013
81	From home	52602014
765	From cell phone	52602014
75	From work	52602014
27	From elsewhere	52602014
2481	No access to internet	52602014
6	From home	52605001
351	From cell phone	52605001
15	From work	52605001
54	From elsewhere	52605001
1278	No access to internet	52605001
6	From home	52605002
246	From cell phone	52605002
21	From work	52605002
36	From elsewhere	52605002
1329	No access to internet	52605002
21	From home	52605003
423	From cell phone	52605003
6	From work	52605003
15	From elsewhere	52605003
1305	No access to internet	52605003
30	From home	52605004
537	From cell phone	52605004
9	From work	52605004
375	From elsewhere	52605004
1224	No access to internet	52605004
24	From home	52605005
237	From cell phone	52605005
21	From work	52605005
60	From elsewhere	52605005
1269	No access to internet	52605005
30	From home	52605006
300	From cell phone	52605006
30	From work	52605006
51	From elsewhere	52605006
930	No access to internet	52605006
15	From home	52605007
321	From cell phone	52605007
15	From work	52605007
33	From elsewhere	52605007
1305	No access to internet	52605007
15	From home	52605008
159	From cell phone	52605008
27	From work	52605008
120	From elsewhere	52605008
1251	No access to internet	52605008
117	From home	52605009
705	From cell phone	52605009
87	From work	52605009
204	From elsewhere	52605009
1824	No access to internet	52605009
18	From home	52605010
156	From cell phone	52605010
21	From work	52605010
120	From elsewhere	52605010
1188	No access to internet	52605010
15	From home	52605011
642	From cell phone	52605011
12	From work	52605011
87	From elsewhere	52605011
867	No access to internet	52605011
27	From home	52605012
549	From cell phone	52605012
15	From work	52605012
108	From elsewhere	52605012
948	No access to internet	52605012
18	From home	52605013
453	From cell phone	52605013
9	From work	52605013
123	From elsewhere	52605013
453	No access to internet	52605013
9	From home	52605014
399	From cell phone	52605014
9	From work	52605014
18	From elsewhere	52605014
1407	No access to internet	52605014
18	From home	52605015
405	From cell phone	52605015
6	From work	52605015
21	From elsewhere	52605015
828	No access to internet	52605015
135	From home	52605016
801	From cell phone	52605016
63	From work	52605016
126	From elsewhere	52605016
2142	No access to internet	52605016
18	From home	52605017
180	From cell phone	52605017
12	From work	52605017
60	From elsewhere	52605017
1149	No access to internet	52605017
27	From home	52605018
408	From cell phone	52605018
12	From work	52605018
30	From elsewhere	52605018
1251	No access to internet	52605018
9	From home	52605019
48	From cell phone	52605019
9	From work	52605019
12	From elsewhere	52605019
99	No access to internet	52605019
51	From home	52605020
315	From cell phone	52605020
36	From work	52605020
45	From elsewhere	52605020
714	No access to internet	52605020
6	From home	52605021
150	From cell phone	52605021
12	From work	52605021
51	From elsewhere	52605021
987	No access to internet	52605021
0	From home	52606001
30	From cell phone	52606001
6	From work	52606001
6	From elsewhere	52606001
765	No access to internet	52606001
81	From home	52606002
534	From cell phone	52606002
15	From work	52606002
63	From elsewhere	52606002
867	No access to internet	52606002
18	From home	52606003
294	From cell phone	52606003
33	From work	52606003
33	From elsewhere	52606003
732	No access to internet	52606003
18	From home	52606004
180	From cell phone	52606004
24	From work	52606004
18	From elsewhere	52606004
1056	No access to internet	52606004
9	From home	52606005
237	From cell phone	52606005
42	From work	52606005
15	From elsewhere	52606005
1230	No access to internet	52606005
6	From home	52606006
228	From cell phone	52606006
9	From work	52606006
6	From elsewhere	52606006
894	No access to internet	52606006
21	From home	52606007
96	From cell phone	52606007
15	From work	52606007
6	From elsewhere	52606007
1041	No access to internet	52606007
51	From home	52606008
339	From cell phone	52606008
18	From work	52606008
135	From elsewhere	52606008
1212	No access to internet	52606008
15	From home	52606009
264	From cell phone	52606009
18	From work	52606009
45	From elsewhere	52606009
1290	No access to internet	52606009
12	From home	52606010
126	From cell phone	52606010
12	From work	52606010
27	From elsewhere	52606010
927	No access to internet	52606010
66	From home	52606011
651	From cell phone	52606011
57	From work	52606011
231	From elsewhere	52606011
861	No access to internet	52606011
228	From home	52606012
741	From cell phone	52606012
141	From work	52606012
69	From elsewhere	52606012
531	No access to internet	52606012
12	From home	52606013
321	From cell phone	52606013
15	From work	52606013
9	From elsewhere	52606013
1281	No access to internet	52606013
6	From home	52606014
270	From cell phone	52606014
30	From work	52606014
135	From elsewhere	52606014
1056	No access to internet	52606014
15	From home	52606015
189	From cell phone	52606015
18	From work	52606015
30	From elsewhere	52606015
1110	No access to internet	52606015
18	From home	52606016
234	From cell phone	52606016
51	From work	52606016
15	From elsewhere	52606016
1557	No access to internet	52606016
15	From home	52606017
111	From cell phone	52606017
9	From work	52606017
30	From elsewhere	52606017
1344	No access to internet	52606017
75	From home	52606018
636	From cell phone	52606018
114	From work	52606018
111	From elsewhere	52606018
1359	No access to internet	52606018
57	From home	52606019
372	From cell phone	52606019
36	From work	52606019
96	From elsewhere	52606019
462	No access to internet	52606019
33	From home	52606020
411	From cell phone	52606020
15	From work	52606020
18	From elsewhere	52606020
915	No access to internet	52606020
30	From home	52606021
429	From cell phone	52606021
21	From work	52606021
12	From elsewhere	52606021
759	No access to internet	52606021
195	From home	52606022
714	From cell phone	52606022
108	From work	52606022
81	From elsewhere	52606022
1188	No access to internet	52606022
9	From home	52606023
150	From cell phone	52606023
6	From work	52606023
15	From elsewhere	52606023
1056	No access to internet	52606023
9	From home	52606024
249	From cell phone	52606024
18	From work	52606024
6	From elsewhere	52606024
864	No access to internet	52606024
30	From home	52904001
432	From cell phone	52904001
21	From work	52904001
63	From elsewhere	52904001
1305	No access to internet	52904001
3	From home	52904002
135	From cell phone	52904002
15	From work	52904002
12	From elsewhere	52904002
1728	No access to internet	52904002
3	From home	52904003
147	From cell phone	52904003
24	From work	52904003
12	From elsewhere	52904003
1482	No access to internet	52904003
21	From home	52904004
117	From cell phone	52904004
15	From work	52904004
21	From elsewhere	52904004
1992	No access to internet	52904004
21	From home	52904005
399	From cell phone	52904005
39	From work	52904005
39	From elsewhere	52904005
1539	No access to internet	52904005
39	From home	52904006
105	From cell phone	52904006
24	From work	52904006
102	From elsewhere	52904006
1410	No access to internet	52904006
6	From home	52904007
159	From cell phone	52904007
18	From work	52904007
30	From elsewhere	52904007
1371	No access to internet	52904007
54	From home	52904008
168	From cell phone	52904008
30	From work	52904008
165	From elsewhere	52904008
1569	No access to internet	52904008
18	From home	52904009
327	From cell phone	52904009
33	From work	52904009
33	From elsewhere	52904009
1215	No access to internet	52904009
51	From home	52904010
417	From cell phone	52904010
24	From work	52904010
237	From elsewhere	52904010
1389	No access to internet	52904010
12	From home	52904011
93	From cell phone	52904011
12	From work	52904011
15	From elsewhere	52904011
1230	No access to internet	52904011
15	From home	52901001
303	From cell phone	52901001
12	From work	52901001
42	From elsewhere	52901001
975	No access to internet	52901001
9	From home	52901002
174	From cell phone	52901002
27	From work	52901002
15	From elsewhere	52901002
1389	No access to internet	52901002
330	From home	52901003
540	From cell phone	52901003
168	From work	52901003
36	From elsewhere	52901003
1254	No access to internet	52901003
96	From home	52901004
327	From cell phone	52901004
81	From work	52901004
60	From elsewhere	52901004
2739	No access to internet	52901004
24	From home	52901005
198	From cell phone	52901005
15	From work	52901005
75	From elsewhere	52901005
1056	No access to internet	52901005
18	From home	52901006
114	From cell phone	52901006
27	From work	52901006
198	From elsewhere	52901006
1035	No access to internet	52901006
72	From home	52901007
528	From cell phone	52901007
90	From work	52901007
294	From elsewhere	52901007
2298	No access to internet	52901007
30	From home	52901008
156	From cell phone	52901008
27	From work	52901008
18	From elsewhere	52901008
1827	No access to internet	52901008
33	From home	52901009
345	From cell phone	52901009
24	From work	52901009
33	From elsewhere	52901009
1380	No access to internet	52901009
36	From home	52901010
555	From cell phone	52901010
24	From work	52901010
66	From elsewhere	52901010
2040	No access to internet	52901010
63	From home	52901011
396	From cell phone	52901011
30	From work	52901011
12	From elsewhere	52901011
1509	No access to internet	52901011
39	From home	52901012
543	From cell phone	52901012
39	From work	52901012
84	From elsewhere	52901012
2898	No access to internet	52901012
24	From home	52901013
213	From cell phone	52901013
39	From work	52901013
66	From elsewhere	52901013
816	No access to internet	52901013
303	From home	52901014
1080	From cell phone	52901014
81	From work	52901014
312	From elsewhere	52901014
1116	No access to internet	52901014
48	From home	52901015
219	From cell phone	52901015
42	From work	52901015
213	From elsewhere	52901015
1023	No access to internet	52901015
45	From home	52901016
1134	From cell phone	52901016
39	From work	52901016
60	From elsewhere	52901016
1818	No access to internet	52901016
66	From home	52901017
564	From cell phone	52901017
42	From work	52901017
42	From elsewhere	52901017
1977	No access to internet	52901017
18	From home	52902001
171	From cell phone	52902001
9	From work	52902001
72	From elsewhere	52902001
1533	No access to internet	52902001
108	From home	52902002
369	From cell phone	52902002
60	From work	52902002
42	From elsewhere	52902002
2373	No access to internet	52902002
135	From home	52902003
183	From cell phone	52902003
51	From work	52902003
48	From elsewhere	52902003
1779	No access to internet	52902003
114	From home	52902004
717	From cell phone	52902004
114	From work	52902004
219	From elsewhere	52902004
2577	No access to internet	52902004
45	From home	52902005
684	From cell phone	52902005
18	From work	52902005
66	From elsewhere	52902005
1362	No access to internet	52902005
1464	From home	52902006
396	From cell phone	52902006
378	From work	52902006
90	From elsewhere	52902006
687	No access to internet	52902006
78	From home	52902007
525	From cell phone	52902007
78	From work	52902007
117	From elsewhere	52902007
2721	No access to internet	52902007
24	From home	52902008
474	From cell phone	52902008
39	From work	52902008
63	From elsewhere	52902008
1833	No access to internet	52902008
27	From home	52902009
693	From cell phone	52902009
63	From work	52902009
108	From elsewhere	52902009
918	No access to internet	52902009
75	From home	52902010
420	From cell phone	52902010
78	From work	52902010
237	From elsewhere	52902010
1902	No access to internet	52902010
204	From home	52902011
294	From cell phone	52902011
63	From work	52902011
33	From elsewhere	52902011
2172	No access to internet	52902011
114	From home	52902012
483	From cell phone	52902012
48	From work	52902012
258	From elsewhere	52902012
2232	No access to internet	52902012
108	From home	52902013
597	From cell phone	52902013
57	From work	52902013
162	From elsewhere	52902013
1527	No access to internet	52902013
36	From home	52902014
192	From cell phone	52902014
39	From work	52902014
114	From elsewhere	52902014
1866	No access to internet	52902014
63	From home	52902015
345	From cell phone	52902015
66	From work	52902015
90	From elsewhere	52902015
3261	No access to internet	52902015
435	From home	52902016
570	From cell phone	52902016
147	From work	52902016
90	From elsewhere	52902016
1506	No access to internet	52902016
480	From home	52902017
357	From cell phone	52902017
132	From work	52902017
165	From elsewhere	52902017
822	No access to internet	52902017
75	From home	52902018
591	From cell phone	52902018
39	From work	52902018
39	From elsewhere	52902018
1551	No access to internet	52902018
453	From home	52902019
534	From cell phone	52902019
180	From work	52902019
57	From elsewhere	52902019
1263	No access to internet	52902019
15	From home	52902020
120	From cell phone	52902020
18	From work	52902020
18	From elsewhere	52902020
1041	No access to internet	52902020
60	From home	52902021
189	From cell phone	52902021
42	From work	52902021
21	From elsewhere	52902021
2040	No access to internet	52902021
1413	From home	52902022
393	From cell phone	52902022
348	From work	52902022
84	From elsewhere	52902022
1851	No access to internet	52902022
66	From home	52902023
477	From cell phone	52902023
60	From work	52902023
141	From elsewhere	52902023
2505	No access to internet	52902023
75	From home	52902024
492	From cell phone	52902024
72	From work	52902024
54	From elsewhere	52902024
2541	No access to internet	52902024
27	From home	52902025
471	From cell phone	52902025
24	From work	52902025
24	From elsewhere	52902025
1254	No access to internet	52902025
48	From home	52902026
495	From cell phone	52902026
36	From work	52902026
72	From elsewhere	52902026
1755	No access to internet	52902026
33	From home	52902027
75	From cell phone	52902027
21	From work	52902027
18	From elsewhere	52902027
1545	No access to internet	52902027
60	From home	52903001
447	From cell phone	52903001
27	From work	52903001
33	From elsewhere	52903001
1428	No access to internet	52903001
12	From home	52903002
60	From cell phone	52903002
9	From work	52903002
36	From elsewhere	52903002
981	No access to internet	52903002
39	From home	52903003
129	From cell phone	52903003
48	From work	52903003
90	From elsewhere	52903003
2691	No access to internet	52903003
0	From home	52903004
30	From cell phone	52903004
15	From work	52903004
6	From elsewhere	52903004
1251	No access to internet	52903004
12	From home	52903005
201	From cell phone	52903005
15	From work	52903005
24	From elsewhere	52903005
1062	No access to internet	52903005
24	From home	52903006
360	From cell phone	52903006
30	From work	52903006
45	From elsewhere	52903006
1449	No access to internet	52903006
3	From home	52903007
54	From cell phone	52903007
3	From work	52903007
6	From elsewhere	52903007
915	No access to internet	52903007
15	From home	52903008
234	From cell phone	52903008
15	From work	52903008
12	From elsewhere	52903008
1197	No access to internet	52903008
12	From home	52903009
264	From cell phone	52903009
18	From work	52903009
63	From elsewhere	52903009
681	No access to internet	52903009
0	From home	52903010
186	From cell phone	52903010
12	From work	52903010
33	From elsewhere	52903010
1248	No access to internet	52903010
12	From home	52903011
501	From cell phone	52903011
9	From work	52903011
66	From elsewhere	52903011
909	No access to internet	52903011
48	From home	52903012
249	From cell phone	52903012
24	From work	52903012
231	From elsewhere	52903012
1623	No access to internet	52903012
33	From home	52903013
564	From cell phone	52903013
18	From work	52903013
75	From elsewhere	52903013
918	No access to internet	52903013
15	From home	52903014
444	From cell phone	52903014
30	From work	52903014
30	From elsewhere	52903014
603	No access to internet	52903014
99	From home	52903015
303	From cell phone	52903015
21	From work	52903015
267	From elsewhere	52903015
774	No access to internet	52903015
6	From home	52903016
123	From cell phone	52903016
21	From work	52903016
30	From elsewhere	52903016
1197	No access to internet	52903016
3	From home	52903017
222	From cell phone	52903017
15	From work	52903017
15	From elsewhere	52903017
1089	No access to internet	52903017
12	From home	52903018
288	From cell phone	52903018
18	From work	52903018
84	From elsewhere	52903018
981	No access to internet	52903018
12	From home	52903019
228	From cell phone	52903019
18	From work	52903019
21	From elsewhere	52903019
1368	No access to internet	52903019
153	From home	59500001
1299	From cell phone	59500001
96	From work	59500001
540	From elsewhere	59500001
3513	No access to internet	59500001
105	From home	59500002
768	From cell phone	59500002
87	From work	59500002
393	From elsewhere	59500002
4119	No access to internet	59500002
207	From home	59500003
1698	From cell phone	59500003
114	From work	59500003
210	From elsewhere	59500003
5835	No access to internet	59500003
327	From home	59500004
1617	From cell phone	59500004
198	From work	59500004
255	From elsewhere	59500004
6816	No access to internet	59500004
183	From home	59500005
1047	From cell phone	59500005
105	From work	59500005
429	From elsewhere	59500005
4125	No access to internet	59500005
327	From home	59500006
1380	From cell phone	59500006
141	From work	59500006
240	From elsewhere	59500006
4155	No access to internet	59500006
210	From home	59500007
1380	From cell phone	59500007
171	From work	59500007
237	From elsewhere	59500007
3834	No access to internet	59500007
2526	From home	59500008
1284	From cell phone	59500008
741	From work	59500008
885	From elsewhere	59500008
4731	No access to internet	59500008
2586	From home	59500009
1728	From cell phone	59500009
654	From work	59500009
294	From elsewhere	59500009
3915	No access to internet	59500009
4563	From home	59500010
699	From cell phone	59500010
1122	From work	59500010
153	From elsewhere	59500010
1770	No access to internet	59500010
1059	From home	59500011
3081	From cell phone	59500011
543	From work	59500011
810	From elsewhere	59500011
6939	No access to internet	59500011
294	From home	59500012
1380	From cell phone	59500012
183	From work	59500012
192	From elsewhere	59500012
3561	No access to internet	59500012
597	From home	59500013
1839	From cell phone	59500013
288	From work	59500013
501	From elsewhere	59500013
5721	No access to internet	59500013
168	From home	59500014
1335	From cell phone	59500014
117	From work	59500014
405	From elsewhere	59500014
5733	No access to internet	59500014
408	From home	59500015
2598	From cell phone	59500015
237	From work	59500015
387	From elsewhere	59500015
8262	No access to internet	59500015
2328	From home	59500016
2118	From cell phone	59500016
855	From work	59500016
579	From elsewhere	59500016
5529	No access to internet	59500016
888	From home	59500017
2397	From cell phone	59500017
327	From work	59500017
336	From elsewhere	59500017
6153	No access to internet	59500017
4116	From home	59500018
1452	From cell phone	59500018
1443	From work	59500018
372	From elsewhere	59500018
2598	No access to internet	59500018
627	From home	59500019
2286	From cell phone	59500019
402	From work	59500019
867	From elsewhere	59500019
9030	No access to internet	59500019
303	From home	59500020
918	From cell phone	59500020
138	From work	59500020
906	From elsewhere	59500020
4347	No access to internet	59500020
2130	From home	59500021
1821	From cell phone	59500021
747	From work	59500021
378	From elsewhere	59500021
4551	No access to internet	59500021
204	From home	59500022
984	From cell phone	59500022
144	From work	59500022
519	From elsewhere	59500022
8541	No access to internet	59500022
1548	From home	59500023
1668	From cell phone	59500023
648	From work	59500023
432	From elsewhere	59500023
6093	No access to internet	59500023
2580	From home	59500024
1497	From cell phone	59500024
795	From work	59500024
444	From elsewhere	59500024
4614	No access to internet	59500024
1557	From home	59500025
1914	From cell phone	59500025
753	From work	59500025
399	From elsewhere	59500025
9000	No access to internet	59500025
2070	From home	59500026
3810	From cell phone	59500026
912	From work	59500026
1590	From elsewhere	59500026
4359	No access to internet	59500026
3546	From home	59500027
1824	From cell phone	59500027
1569	From work	59500027
342	From elsewhere	59500027
2454	No access to internet	59500027
1248	From home	59500028
2589	From cell phone	59500028
621	From work	59500028
1710	From elsewhere	59500028
2571	No access to internet	59500028
531	From home	59500029
1752	From cell phone	59500029
354	From work	59500029
831	From elsewhere	59500029
7323	No access to internet	59500029
1275	From home	59500030
1938	From cell phone	59500030
675	From work	59500030
933	From elsewhere	59500030
7113	No access to internet	59500030
3549	From home	59500031
1827	From cell phone	59500031
1173	From work	59500031
369	From elsewhere	59500031
4518	No access to internet	59500031
570	From home	59500032
1725	From cell phone	59500032
372	From work	59500032
1080	From elsewhere	59500032
3525	No access to internet	59500032
3702	From home	59500033
2655	From cell phone	59500033
1455	From work	59500033
702	From elsewhere	59500033
3801	No access to internet	59500033
1668	From home	59500034
2037	From cell phone	59500034
783	From work	59500034
309	From elsewhere	59500034
7872	No access to internet	59500034
5946	From home	59500035
1224	From cell phone	59500035
1764	From work	59500035
291	From elsewhere	59500035
2253	No access to internet	59500035
4923	From home	59500036
1143	From cell phone	59500036
1416	From work	59500036
258	From elsewhere	59500036
3483	No access to internet	59500036
1443	From home	59500037
2601	From cell phone	59500037
672	From work	59500037
837	From elsewhere	59500037
4047	No access to internet	59500037
327	From home	59500038
1716	From cell phone	59500038
150	From work	59500038
537	From elsewhere	59500038
7011	No access to internet	59500038
327	From home	59500039
2133	From cell phone	59500039
168	From work	59500039
516	From elsewhere	59500039
10947	No access to internet	59500039
378	From home	59500040
1539	From cell phone	59500040
210	From work	59500040
420	From elsewhere	59500040
6222	No access to internet	59500040
333	From home	59500041
1542	From cell phone	59500041
165	From work	59500041
1191	From elsewhere	59500041
4878	No access to internet	59500041
336	From home	59500042
1890	From cell phone	59500042
228	From work	59500042
768	From elsewhere	59500042
5949	No access to internet	59500042
501	From home	59500043
1656	From cell phone	59500043
234	From work	59500043
447	From elsewhere	59500043
4920	No access to internet	59500043
432	From home	59500044
2376	From cell phone	59500044
213	From work	59500044
324	From elsewhere	59500044
6477	No access to internet	59500044
408	From home	59500045
1869	From cell phone	59500045
207	From work	59500045
627	From elsewhere	59500045
5559	No access to internet	59500045
378	From home	59500046
1554	From cell phone	59500046
180	From work	59500046
252	From elsewhere	59500046
4374	No access to internet	59500046
297	From home	59500047
2124	From cell phone	59500047
117	From work	59500047
378	From elsewhere	59500047
3927	No access to internet	59500047
639	From home	59500048
1533	From cell phone	59500048
420	From work	59500048
348	From elsewhere	59500048
4326	No access to internet	59500048
906	From home	59500049
2367	From cell phone	59500049
714	From work	59500049
279	From elsewhere	59500049
4980	No access to internet	59500049
900	From home	59500050
1962	From cell phone	59500050
603	From work	59500050
243	From elsewhere	59500050
3948	No access to internet	59500050
1038	From home	59500051
2115	From cell phone	59500051
570	From work	59500051
420	From elsewhere	59500051
6267	No access to internet	59500051
789	From home	59500052
1644	From cell phone	59500052
504	From work	59500052
399	From elsewhere	59500052
5325	No access to internet	59500052
252	From home	59500053
1554	From cell phone	59500053
279	From work	59500053
186	From elsewhere	59500053
8418	No access to internet	59500053
276	From home	59500054
1776	From cell phone	59500054
135	From work	59500054
612	From elsewhere	59500054
5271	No access to internet	59500054
648	From home	59500055
2718	From cell phone	59500055
171	From work	59500055
693	From elsewhere	59500055
6297	No access to internet	59500055
285	From home	59500056
2139	From cell phone	59500056
183	From work	59500056
402	From elsewhere	59500056
7122	No access to internet	59500056
180	From home	59500057
1530	From cell phone	59500057
144	From work	59500057
384	From elsewhere	59500057
7998	No access to internet	59500057
1695	From home	59500058
2247	From cell phone	59500058
600	From work	59500058
393	From elsewhere	59500058
6630	No access to internet	59500058
255	From home	59500059
1599	From cell phone	59500059
285	From work	59500059
330	From elsewhere	59500059
9396	No access to internet	59500059
1029	From home	59500060
1629	From cell phone	59500060
486	From work	59500060
240	From elsewhere	59500060
7800	No access to internet	59500060
975	From home	59500061
1854	From cell phone	59500061
513	From work	59500061
411	From elsewhere	59500061
7062	No access to internet	59500061
546	From home	59500062
2325	From cell phone	59500062
258	From work	59500062
303	From elsewhere	59500062
5535	No access to internet	59500062
3270	From home	59500063
1743	From cell phone	59500063
1356	From work	59500063
336	From elsewhere	59500063
3831	No access to internet	59500063
2865	From home	59500064
2712	From cell phone	59500064
867	From work	59500064
588	From elsewhere	59500064
3627	No access to internet	59500064
2778	From home	59500065
2532	From cell phone	59500065
1173	From work	59500065
468	From elsewhere	59500065
6000	No access to internet	59500065
2952	From home	59500066
1845	From cell phone	59500066
1053	From work	59500066
423	From elsewhere	59500066
2994	No access to internet	59500066
309	From home	59500067
2229	From cell phone	59500067
249	From work	59500067
603	From elsewhere	59500067
6552	No access to internet	59500067
1278	From home	59500068
2361	From cell phone	59500068
417	From work	59500068
372	From elsewhere	59500068
5337	No access to internet	59500068
1023	From home	59500069
1419	From cell phone	59500069
504	From work	59500069
615	From elsewhere	59500069
5211	No access to internet	59500069
987	From home	59500070
1629	From cell phone	59500070
579	From work	59500070
270	From elsewhere	59500070
4662	No access to internet	59500070
900	From home	59500071
2325	From cell phone	59500071
402	From work	59500071
288	From elsewhere	59500071
8316	No access to internet	59500071
531	From home	59500072
1509	From cell phone	59500072
249	From work	59500072
216	From elsewhere	59500072
8475	No access to internet	59500072
993	From home	59500073
1950	From cell phone	59500073
459	From work	59500073
282	From elsewhere	59500073
4161	No access to internet	59500073
192	From home	59500074
1671	From cell phone	59500074
99	From work	59500074
588	From elsewhere	59500074
3660	No access to internet	59500074
315	From home	59500075
1218	From cell phone	59500075
159	From work	59500075
246	From elsewhere	59500075
5316	No access to internet	59500075
162	From home	59500076
1374	From cell phone	59500076
132	From work	59500076
225	From elsewhere	59500076
5577	No access to internet	59500076
372	From home	59500077
1884	From cell phone	59500077
183	From work	59500077
1173	From elsewhere	59500077
8928	No access to internet	59500077
261	From home	59500078
1236	From cell phone	59500078
159	From work	59500078
750	From elsewhere	59500078
4170	No access to internet	59500078
285	From home	59500079
1710	From cell phone	59500079
210	From work	59500079
546	From elsewhere	59500079
7062	No access to internet	59500079
249	From home	59500080
1380	From cell phone	59500080
162	From work	59500080
867	From elsewhere	59500080
5130	No access to internet	59500080
228	From home	59500081
978	From cell phone	59500081
120	From work	59500081
339	From elsewhere	59500081
4251	No access to internet	59500081
378	From home	59500082
1626	From cell phone	59500082
228	From work	59500082
417	From elsewhere	59500082
4518	No access to internet	59500082
432	From home	59500083
1851	From cell phone	59500083
198	From work	59500083
1074	From elsewhere	59500083
4578	No access to internet	59500083
585	From home	59500084
1536	From cell phone	59500084
276	From work	59500084
1422	From elsewhere	59500084
5526	No access to internet	59500084
585	From home	59500085
1701	From cell phone	59500085
216	From work	59500085
1161	From elsewhere	59500085
3201	No access to internet	59500085
321	From home	59500086
1518	From cell phone	59500086
201	From work	59500086
831	From elsewhere	59500086
5442	No access to internet	59500086
288	From home	59500087
1761	From cell phone	59500087
120	From work	59500087
744	From elsewhere	59500087
3777	No access to internet	59500087
495	From home	59500088
2484	From cell phone	59500088
246	From work	59500088
1344	From elsewhere	59500088
5829	No access to internet	59500088
345	From home	59500089
1548	From cell phone	59500089
213	From work	59500089
429	From elsewhere	59500089
8520	No access to internet	59500089
768	From home	59500090
1608	From cell phone	59500090
525	From work	59500090
234	From elsewhere	59500090
4191	No access to internet	59500090
276	From home	59500091
1218	From cell phone	59500091
195	From work	59500091
360	From elsewhere	59500091
5697	No access to internet	59500091
1035	From home	59500092
1083	From cell phone	59500092
390	From work	59500092
540	From elsewhere	59500092
7029	No access to internet	59500092
1416	From home	59500093
1569	From cell phone	59500093
408	From work	59500093
297	From elsewhere	59500093
6894	No access to internet	59500093
294	From home	59500094
1566	From cell phone	59500094
189	From work	59500094
534	From elsewhere	59500094
3771	No access to internet	59500094
234	From home	59500095
1482	From cell phone	59500095
141	From work	59500095
960	From elsewhere	59500095
5121	No access to internet	59500095
336	From home	59500096
1815	From cell phone	59500096
141	From work	59500096
357	From elsewhere	59500096
4374	No access to internet	59500096
3132	From home	59500097
1326	From cell phone	59500097
1056	From work	59500097
231	From elsewhere	59500097
2463	No access to internet	59500097
627	From home	59500098
2289	From cell phone	59500098
315	From work	59500098
696	From elsewhere	59500098
7437	No access to internet	59500098
822	From home	59500099
1665	From cell phone	59500099
360	From work	59500099
465	From elsewhere	59500099
6837	No access to internet	59500099
78	From home	59500100
771	From cell phone	59500100
69	From work	59500100
201	From elsewhere	59500100
3528	No access to internet	59500100
1491	From home	59500101
1611	From cell phone	59500101
525	From work	59500101
531	From elsewhere	59500101
5781	No access to internet	59500101
2499	From home	59500102
2388	From cell phone	59500102
687	From work	59500102
426	From elsewhere	59500102
6660	No access to internet	59500102
696	From home	59500103
1503	From cell phone	59500103
294	From work	59500103
333	From elsewhere	59500103
4416	No access to internet	59500103
27	From home	93301001
123	From cell phone	93301001
12	From work	93301001
42	From elsewhere	93301001
1617	No access to internet	93301001
27	From home	93301002
147	From cell phone	93301002
3	From work	93301002
18	From elsewhere	93301002
1158	No access to internet	93301002
36	From home	93301003
474	From cell phone	93301003
24	From work	93301003
129	From elsewhere	93301003
1809	No access to internet	93301003
21	From home	93301004
537	From cell phone	93301004
15	From work	93301004
75	From elsewhere	93301004
1407	No access to internet	93301004
33	From home	93301005
249	From cell phone	93301005
21	From work	93301005
21	From elsewhere	93301005
1926	No access to internet	93301005
30	From home	93301006
288	From cell phone	93301006
27	From work	93301006
237	From elsewhere	93301006
1524	No access to internet	93301006
27	From home	93301007
282	From cell phone	93301007
30	From work	93301007
93	From elsewhere	93301007
2334	No access to internet	93301007
21	From home	93301008
174	From cell phone	93301008
9	From work	93301008
165	From elsewhere	93301008
1716	No access to internet	93301008
24	From home	93301009
180	From cell phone	93301009
9	From work	93301009
60	From elsewhere	93301009
1206	No access to internet	93301009
48	From home	93301010
297	From cell phone	93301010
36	From work	93301010
96	From elsewhere	93301010
1356	No access to internet	93301010
330	From home	93301011
711	From cell phone	93301011
159	From work	93301011
165	From elsewhere	93301011
1047	No access to internet	93301011
123	From home	93301012
465	From cell phone	93301012
102	From work	93301012
84	From elsewhere	93301012
2316	No access to internet	93301012
180	From home	93301013
675	From cell phone	93301013
183	From work	93301013
141	From elsewhere	93301013
2607	No access to internet	93301013
18	From home	93301014
471	From cell phone	93301014
12	From work	93301014
198	From elsewhere	93301014
1761	No access to internet	93301014
9	From home	93301015
207	From cell phone	93301015
15	From work	93301015
48	From elsewhere	93301015
1329	No access to internet	93301015
24	From home	93301016
315	From cell phone	93301016
6	From work	93301016
18	From elsewhere	93301016
1155	No access to internet	93301016
39	From home	93301017
222	From cell phone	93301017
21	From work	93301017
84	From elsewhere	93301017
1275	No access to internet	93301017
57	From home	93301018
192	From cell phone	93301018
9	From work	93301018
63	From elsewhere	93301018
1689	No access to internet	93301018
27	From home	93301019
570	From cell phone	93301019
27	From work	93301019
63	From elsewhere	93301019
1878	No access to internet	93301019
9	From home	93301020
198	From cell phone	93301020
9	From work	93301020
36	From elsewhere	93301020
1554	No access to internet	93301020
147	From home	93301021
450	From cell phone	93301021
93	From work	93301021
270	From elsewhere	93301021
1272	No access to internet	93301021
24	From home	93301022
240	From cell phone	93301022
21	From work	93301022
111	From elsewhere	93301022
1482	No access to internet	93301022
87	From home	93301023
255	From cell phone	93301023
12	From work	93301023
144	From elsewhere	93301023
1317	No access to internet	93301023
18	From home	93301024
408	From cell phone	93301024
6	From work	93301024
228	From elsewhere	93301024
1497	No access to internet	93301024
24	From home	93301025
891	From cell phone	93301025
21	From work	93301025
93	From elsewhere	93301025
1917	No access to internet	93301025
6	From home	93301026
363	From cell phone	93301026
18	From work	93301026
171	From elsewhere	93301026
1419	No access to internet	93301026
12	From home	93301027
363	From cell phone	93301027
9	From work	93301027
93	From elsewhere	93301027
1335	No access to internet	93301027
9	From home	93301028
141	From cell phone	93301028
15	From work	93301028
120	From elsewhere	93301028
1920	No access to internet	93301028
30	From home	93301029
135	From cell phone	93301029
12	From work	93301029
21	From elsewhere	93301029
1788	No access to internet	93301029
15	From home	93301030
318	From cell phone	93301030
18	From work	93301030
39	From elsewhere	93301030
1062	No access to internet	93301030
33	From home	93302001
258	From cell phone	93302001
15	From work	93302001
18	From elsewhere	93302001
1632	No access to internet	93302001
30	From home	93302002
324	From cell phone	93302002
9	From work	93302002
99	From elsewhere	93302002
780	No access to internet	93302002
129	From home	93302003
441	From cell phone	93302003
27	From work	93302003
54	From elsewhere	93302003
849	No access to internet	93302003
96	From home	93302004
378	From cell phone	93302004
60	From work	93302004
297	From elsewhere	93302004
1626	No access to internet	93302004
30	From home	93302005
153	From cell phone	93302005
12	From work	93302005
18	From elsewhere	93302005
1683	No access to internet	93302005
18	From home	93302006
438	From cell phone	93302006
18	From work	93302006
9	From elsewhere	93302006
1497	No access to internet	93302006
18	From home	93302007
180	From cell phone	93302007
21	From work	93302007
21	From elsewhere	93302007
1446	No access to internet	93302007
33	From home	93302008
447	From cell phone	93302008
33	From work	93302008
135	From elsewhere	93302008
1200	No access to internet	93302008
15	From home	93302009
330	From cell phone	93302009
18	From work	93302009
39	From elsewhere	93302009
1923	No access to internet	93302009
24	From home	93302010
324	From cell phone	93302010
21	From work	93302010
66	From elsewhere	93302010
1956	No access to internet	93302010
21	From home	93302011
255	From cell phone	93302011
15	From work	93302011
30	From elsewhere	93302011
1728	No access to internet	93302011
6	From home	93302012
105	From cell phone	93302012
18	From work	93302012
12	From elsewhere	93302012
1515	No access to internet	93302012
33	From home	93302013
264	From cell phone	93302013
24	From work	93302013
81	From elsewhere	93302013
1536	No access to internet	93302013
27	From home	93302014
270	From cell phone	93302014
39	From work	93302014
18	From elsewhere	93302014
1869	No access to internet	93302014
27	From home	93302015
474	From cell phone	93302015
15	From work	93302015
60	From elsewhere	93302015
1374	No access to internet	93302015
24	From home	93302016
315	From cell phone	93302016
9	From work	93302016
75	From elsewhere	93302016
1548	No access to internet	93302016
6	From home	93302017
270	From cell phone	93302017
12	From work	93302017
3	From elsewhere	93302017
1608	No access to internet	93302017
18	From home	93302018
231	From cell phone	93302018
9	From work	93302018
18	From elsewhere	93302018
1773	No access to internet	93302018
21	From home	93302019
147	From cell phone	93302019
12	From work	93302019
12	From elsewhere	93302019
1788	No access to internet	93302019
33	From home	93302020
249	From cell phone	93302020
12	From work	93302020
33	From elsewhere	93302020
1758	No access to internet	93302020
21	From home	93302021
117	From cell phone	93302021
3	From work	93302021
114	From elsewhere	93302021
1938	No access to internet	93302021
36	From home	93302022
1296	From cell phone	93302022
6	From work	93302022
90	From elsewhere	93302022
900	No access to internet	93302022
36	From home	93302023
1005	From cell phone	93302023
3	From work	93302023
42	From elsewhere	93302023
873	No access to internet	93302023
15	From home	93302024
306	From cell phone	93302024
3	From work	93302024
30	From elsewhere	93302024
900	No access to internet	93302024
15	From home	93302025
324	From cell phone	93302025
15	From work	93302025
84	From elsewhere	93302025
1458	No access to internet	93302025
12	From home	93302026
456	From cell phone	93302026
6	From work	93302026
36	From elsewhere	93302026
1371	No access to internet	93302026
15	From home	93302027
69	From cell phone	93302027
9	From work	93302027
201	From elsewhere	93302027
1293	No access to internet	93302027
21	From home	93302028
402	From cell phone	93302028
6	From work	93302028
15	From elsewhere	93302028
834	No access to internet	93302028
141	From home	93302029
480	From cell phone	93302029
99	From work	93302029
42	From elsewhere	93302029
4044	No access to internet	93302029
84	From home	93303001
429	From cell phone	93303001
21	From work	93303001
66	From elsewhere	93303001
2670	No access to internet	93303001
18	From home	93303002
351	From cell phone	93303002
12	From work	93303002
102	From elsewhere	93303002
2346	No access to internet	93303002
24	From home	93303003
546	From cell phone	93303003
21	From work	93303003
84	From elsewhere	93303003
2442	No access to internet	93303003
42	From home	93303004
204	From cell phone	93303004
36	From work	93303004
96	From elsewhere	93303004
2736	No access to internet	93303004
33	From home	93303005
426	From cell phone	93303005
18	From work	93303005
48	From elsewhere	93303005
2907	No access to internet	93303005
30	From home	93303006
513	From cell phone	93303006
15	From work	93303006
45	From elsewhere	93303006
2139	No access to internet	93303006
51	From home	93303007
474	From cell phone	93303007
18	From work	93303007
48	From elsewhere	93303007
2199	No access to internet	93303007
21	From home	93303008
282	From cell phone	93303008
21	From work	93303008
24	From elsewhere	93303008
1836	No access to internet	93303008
45	From home	93303009
327	From cell phone	93303009
39	From work	93303009
54	From elsewhere	93303009
3708	No access to internet	93303009
15	From home	93303010
300	From cell phone	93303010
9	From work	93303010
54	From elsewhere	93303010
1098	No access to internet	93303010
24	From home	93303011
201	From cell phone	93303011
15	From work	93303011
30	From elsewhere	93303011
1824	No access to internet	93303011
24	From home	93303012
600	From cell phone	93303012
51	From work	93303012
27	From elsewhere	93303012
2022	No access to internet	93303012
132	From home	93303013
888	From cell phone	93303013
96	From work	93303013
69	From elsewhere	93303013
3366	No access to internet	93303013
765	From home	93303014
576	From cell phone	93303014
513	From work	93303014
93	From elsewhere	93303014
3975	No access to internet	93303014
537	From home	93303015
270	From cell phone	93303015
255	From work	93303015
33	From elsewhere	93303015
888	No access to internet	93303015
315	From home	93303016
651	From cell phone	93303016
192	From work	93303016
90	From elsewhere	93303016
5139	No access to internet	93303016
102	From home	93303017
588	From cell phone	93303017
84	From work	93303017
75	From elsewhere	93303017
2829	No access to internet	93303017
39	From home	93303018
498	From cell phone	93303018
33	From work	93303018
48	From elsewhere	93303018
2763	No access to internet	93303018
276	From home	93303019
546	From cell phone	93303019
120	From work	93303019
306	From elsewhere	93303019
981	No access to internet	93303019
33	From home	93303020
435	From cell phone	93303020
36	From work	93303020
45	From elsewhere	93303020
2697	No access to internet	93303020
288	From home	93303021
885	From cell phone	93303021
117	From work	93303021
285	From elsewhere	93303021
2499	No access to internet	93303021
48	From home	93303022
252	From cell phone	93303022
24	From work	93303022
78	From elsewhere	93303022
2082	No access to internet	93303022
90	From home	93303023
351	From cell phone	93303023
51	From work	93303023
174	From elsewhere	93303023
2052	No access to internet	93303023
42	From home	93303024
525	From cell phone	93303024
30	From work	93303024
267	From elsewhere	93303024
1986	No access to internet	93303024
120	From home	93303025
558	From cell phone	93303025
54	From work	93303025
120	From elsewhere	93303025
2529	No access to internet	93303025
36	From home	93303026
264	From cell phone	93303026
24	From work	93303026
36	From elsewhere	93303026
2250	No access to internet	93303026
66	From home	93303027
363	From cell phone	93303027
24	From work	93303027
261	From elsewhere	93303027
2331	No access to internet	93303027
27	From home	93303028
567	From cell phone	93303028
9	From work	93303028
222	From elsewhere	93303028
2118	No access to internet	93303028
54	From home	93303029
594	From cell phone	93303029
45	From work	93303029
282	From elsewhere	93303029
3294	No access to internet	93303029
126	From home	93303030
333	From cell phone	93303030
6	From work	93303030
90	From elsewhere	93303030
1140	No access to internet	93303030
264	From home	93303031
975	From cell phone	93303031
102	From work	93303031
132	From elsewhere	93303031
1695	No access to internet	93303031
45	From home	93303032
387	From cell phone	93303032
27	From work	93303032
162	From elsewhere	93303032
2502	No access to internet	93303032
36	From home	93303033
486	From cell phone	93303033
27	From work	93303033
195	From elsewhere	93303033
3354	No access to internet	93303033
39	From home	93303034
162	From cell phone	93303034
12	From work	93303034
36	From elsewhere	93303034
2880	No access to internet	93303034
93	From home	93304001
1029	From cell phone	93304001
57	From work	93304001
174	From elsewhere	93304001
2664	No access to internet	93304001
33	From home	93304002
273	From cell phone	93304002
18	From work	93304002
54	From elsewhere	93304002
1470	No access to internet	93304002
48	From home	93304003
267	From cell phone	93304003
15	From work	93304003
27	From elsewhere	93304003
1365	No access to internet	93304003
141	From home	93304004
744	From cell phone	93304004
54	From work	93304004
66	From elsewhere	93304004
1038	No access to internet	93304004
111	From home	93304005
471	From cell phone	93304005
96	From work	93304005
78	From elsewhere	93304005
1083	No access to internet	93304005
114	From home	93304006
474	From cell phone	93304006
36	From work	93304006
207	From elsewhere	93304006
1257	No access to internet	93304006
81	From home	93304007
732	From cell phone	93304007
69	From work	93304007
72	From elsewhere	93304007
681	No access to internet	93304007
42	From home	93304008
306	From cell phone	93304008
27	From work	93304008
72	From elsewhere	93304008
1611	No access to internet	93304008
27	From home	93304009
183	From cell phone	93304009
15	From work	93304009
171	From elsewhere	93304009
1419	No access to internet	93304009
63	From home	93304010
198	From cell phone	93304010
33	From work	93304010
57	From elsewhere	93304010
1782	No access to internet	93304010
318	From home	93304011
483	From cell phone	93304011
165	From work	93304011
63	From elsewhere	93304011
600	No access to internet	93304011
594	From home	93304012
384	From cell phone	93304012
324	From work	93304012
90	From elsewhere	93304012
1005	No access to internet	93304012
33	From home	93304013
258	From cell phone	93304013
12	From work	93304013
105	From elsewhere	93304013
1752	No access to internet	93304013
42	From home	93304014
255	From cell phone	93304014
51	From work	93304014
42	From elsewhere	93304014
435	No access to internet	93304014
162	From home	93304015
570	From cell phone	93304015
93	From work	93304015
138	From elsewhere	93304015
1431	No access to internet	93304015
15	From home	93304016
183	From cell phone	93304016
9	From work	93304016
39	From elsewhere	93304016
2208	No access to internet	93304016
27	From home	93304017
285	From cell phone	93304017
21	From work	93304017
27	From elsewhere	93304017
3624	No access to internet	93304017
102	From home	93304018
327	From cell phone	93304018
63	From work	93304018
96	From elsewhere	93304018
3489	No access to internet	93304018
324	From home	93305001
414	From cell phone	93305001
177	From work	93305001
57	From elsewhere	93305001
1086	No access to internet	93305001
105	From home	93305002
150	From cell phone	93305002
63	From work	93305002
48	From elsewhere	93305002
2031	No access to internet	93305002
24	From home	93305003
84	From cell phone	93305003
27	From work	93305003
63	From elsewhere	93305003
1482	No access to internet	93305003
3	From home	93305004
72	From cell phone	93305004
9	From work	93305004
141	From elsewhere	93305004
1224	No access to internet	93305004
9	From home	93305005
231	From cell phone	93305005
6	From work	93305005
3	From elsewhere	93305005
1332	No access to internet	93305005
27	From home	93305006
264	From cell phone	93305006
42	From work	93305006
12	From elsewhere	93305006
1614	No access to internet	93305006
12	From home	93305007
93	From cell phone	93305007
6	From work	93305007
66	From elsewhere	93305007
1356	No access to internet	93305007
12	From home	93305008
192	From cell phone	93305008
9	From work	93305008
3	From elsewhere	93305008
1629	No access to internet	93305008
18	From home	93305009
195	From cell phone	93305009
15	From work	93305009
15	From elsewhere	93305009
1410	No access to internet	93305009
9	From home	93305010
165	From cell phone	93305010
15	From work	93305010
9	From elsewhere	93305010
1449	No access to internet	93305010
18	From home	93305011
195	From cell phone	93305011
18	From work	93305011
69	From elsewhere	93305011
1926	No access to internet	93305011
21	From home	93305012
204	From cell phone	93305012
21	From work	93305012
45	From elsewhere	93305012
1725	No access to internet	93305012
30	From home	93305013
117	From cell phone	93305013
9	From work	93305013
18	From elsewhere	93305013
1245	No access to internet	93305013
15	From home	93305014
93	From cell phone	93305014
9	From work	93305014
18	From elsewhere	93305014
882	No access to internet	93305014
21	From home	93402001
267	From cell phone	93402001
21	From work	93402001
36	From elsewhere	93402001
1368	No access to internet	93402001
12	From home	93402002
135	From cell phone	93402002
6	From work	93402002
30	From elsewhere	93402002
1623	No access to internet	93402002
99	From home	93402003
417	From cell phone	93402003
27	From work	93402003
69	From elsewhere	93402003
1209	No access to internet	93402003
33	From home	93402004
549	From cell phone	93402004
24	From work	93402004
102	From elsewhere	93402004
873	No access to internet	93402004
66	From home	93402005
411	From cell phone	93402005
54	From work	93402005
15	From elsewhere	93402005
1782	No access to internet	93402005
6	From home	93402006
231	From cell phone	93402006
12	From work	93402006
9	From elsewhere	93402006
1398	No access to internet	93402006
9	From home	93402007
231	From cell phone	93402007
6	From work	93402007
57	From elsewhere	93402007
1230	No access to internet	93402007
15	From home	93402008
498	From cell phone	93402008
3	From work	93402008
0	From elsewhere	93402008
897	No access to internet	93402008
9	From home	93402009
147	From cell phone	93402009
3	From work	93402009
81	From elsewhere	93402009
1815	No access to internet	93402009
12	From home	93402010
243	From cell phone	93402010
9	From work	93402010
39	From elsewhere	93402010
1458	No access to internet	93402010
6	From home	93402011
405	From cell phone	93402011
18	From work	93402011
18	From elsewhere	93402011
1644	No access to internet	93402011
15	From home	93402012
264	From cell phone	93402012
21	From work	93402012
21	From elsewhere	93402012
1872	No access to internet	93402012
48	From home	93402013
183	From cell phone	93402013
57	From work	93402013
12	From elsewhere	93402013
1506	No access to internet	93402013
27	From home	93403001
315	From cell phone	93403001
12	From work	93403001
39	From elsewhere	93403001
4059	No access to internet	93403001
36	From home	93403002
594	From cell phone	93403002
24	From work	93403002
63	From elsewhere	93403002
2460	No access to internet	93403002
183	From home	93403003
819	From cell phone	93403003
33	From work	93403003
288	From elsewhere	93403003
2457	No access to internet	93403003
102	From home	93403004
651	From cell phone	93403004
30	From work	93403004
237	From elsewhere	93403004
2892	No access to internet	93403004
63	From home	93403005
822	From cell phone	93403005
51	From work	93403005
174	From elsewhere	93403005
2901	No access to internet	93403005
42	From home	93403006
363	From cell phone	93403006
21	From work	93403006
174	From elsewhere	93403006
3309	No access to internet	93403006
48	From home	93403007
957	From cell phone	93403007
39	From work	93403007
30	From elsewhere	93403007
3774	No access to internet	93403007
30	From home	93403008
309	From cell phone	93403008
30	From work	93403008
18	From elsewhere	93403008
3159	No access to internet	93403008
48	From home	93403009
621	From cell phone	93403009
9	From work	93403009
45	From elsewhere	93403009
2949	No access to internet	93403009
27	From home	93403010
441	From cell phone	93403010
39	From work	93403010
186	From elsewhere	93403010
2643	No access to internet	93403010
45	From home	93403011
780	From cell phone	93403011
15	From work	93403011
36	From elsewhere	93403011
3432	No access to internet	93403011
33	From home	93403012
504	From cell phone	93403012
24	From work	93403012
42	From elsewhere	93403012
3288	No access to internet	93403012
255	From home	93403013
1146	From cell phone	93403013
144	From work	93403013
270	From elsewhere	93403013
2373	No access to internet	93403013
21	From home	93403014
378	From cell phone	93403014
24	From work	93403014
132	From elsewhere	93403014
3453	No access to internet	93403014
42	From home	93403015
309	From cell phone	93403015
24	From work	93403015
369	From elsewhere	93403015
3636	No access to internet	93403015
33	From home	93403016
465	From cell phone	93403016
27	From work	93403016
60	From elsewhere	93403016
2547	No access to internet	93403016
18	From home	93403017
207	From cell phone	93403017
24	From work	93403017
36	From elsewhere	93403017
2856	No access to internet	93403017
27	From home	93403018
513	From cell phone	93403018
24	From work	93403018
192	From elsewhere	93403018
3465	No access to internet	93403018
84	From home	93403019
519	From cell phone	93403019
48	From work	93403019
192	From elsewhere	93403019
3222	No access to internet	93403019
204	From home	93403020
1278	From cell phone	93403020
126	From work	93403020
168	From elsewhere	93403020
2355	No access to internet	93403020
273	From home	93403021
1413	From cell phone	93403021
198	From work	93403021
144	From elsewhere	93403021
2655	No access to internet	93403021
210	From home	93403022
1308	From cell phone	93403022
102	From work	93403022
378	From elsewhere	93403022
2544	No access to internet	93403022
255	From home	93403023
849	From cell phone	93403023
201	From work	93403023
414	From elsewhere	93403023
2490	No access to internet	93403023
105	From home	93403024
783	From cell phone	93403024
147	From work	93403024
336	From elsewhere	93403024
3378	No access to internet	93403024
75	From home	93403025
525	From cell phone	93403025
90	From work	93403025
252	From elsewhere	93403025
2889	No access to internet	93403025
51	From home	93403026
672	From cell phone	93403026
42	From work	93403026
375	From elsewhere	93403026
2637	No access to internet	93403026
69	From home	93403027
1038	From cell phone	93403027
42	From work	93403027
369	From elsewhere	93403027
2817	No access to internet	93403027
45	From home	93403028
225	From cell phone	93403028
39	From work	93403028
102	From elsewhere	93403028
2922	No access to internet	93403028
24	From home	93403029
801	From cell phone	93403029
33	From work	93403029
96	From elsewhere	93403029
3354	No access to internet	93403029
45	From home	93403030
765	From cell phone	93403030
21	From work	93403030
81	From elsewhere	93403030
2433	No access to internet	93403030
48	From home	93403031
477	From cell phone	93403031
45	From work	93403031
72	From elsewhere	93403031
2718	No access to internet	93403031
69	From home	93403032
882	From cell phone	93403032
30	From work	93403032
405	From elsewhere	93403032
2286	No access to internet	93403032
69	From home	93403033
537	From cell phone	93403033
84	From work	93403033
204	From elsewhere	93403033
3321	No access to internet	93403033
42	From home	93403034
699	From cell phone	93403034
66	From work	93403034
87	From elsewhere	93403034
2901	No access to internet	93403034
123	From home	93403035
891	From cell phone	93403035
66	From work	93403035
186	From elsewhere	93403035
3294	No access to internet	93403035
171	From home	93403036
1275	From cell phone	93403036
114	From work	93403036
384	From elsewhere	93403036
2475	No access to internet	93403036
150	From home	93403037
660	From cell phone	93403037
60	From work	93403037
324	From elsewhere	93403037
2202	No access to internet	93403037
66	From home	93403038
840	From cell phone	93403038
69	From work	93403038
123	From elsewhere	93403038
2283	No access to internet	93403038
27	From home	93403039
465	From cell phone	93403039
30	From work	93403039
150	From elsewhere	93403039
2691	No access to internet	93403039
27	From home	93403040
435	From cell phone	93403040
12	From work	93403040
222	From elsewhere	93403040
2496	No access to internet	93403040
21	From home	93401001
153	From cell phone	93401001
30	From work	93401001
9	From elsewhere	93401001
3906	No access to internet	93401001
111	From home	93401002
330	From cell phone	93401002
111	From work	93401002
36	From elsewhere	93401002
4890	No access to internet	93401002
261	From home	93401003
654	From cell phone	93401003
159	From work	93401003
156	From elsewhere	93401003
2289	No access to internet	93401003
54	From home	93401004
261	From cell phone	93401004
90	From work	93401004
33	From elsewhere	93401004
1230	No access to internet	93401004
84	From home	93401005
339	From cell phone	93401005
81	From work	93401005
111	From elsewhere	93401005
1962	No access to internet	93401005
384	From home	93401006
579	From cell phone	93401006
204	From work	93401006
42	From elsewhere	93401006
1467	No access to internet	93401006
39	From home	93404001
447	From cell phone	93404001
15	From work	93404001
48	From elsewhere	93404001
2577	No access to internet	93404001
12	From home	93404002
420	From cell phone	93404002
21	From work	93404002
96	From elsewhere	93404002
2442	No access to internet	93404002
60	From home	93404003
867	From cell phone	93404003
57	From work	93404003
57	From elsewhere	93404003
2637	No access to internet	93404003
93	From home	93404004
576	From cell phone	93404004
69	From work	93404004
243	From elsewhere	93404004
3528	No access to internet	93404004
33	From home	93404005
348	From cell phone	93404005
21	From work	93404005
45	From elsewhere	93404005
2787	No access to internet	93404005
36	From home	93404006
210	From cell phone	93404006
18	From work	93404006
153	From elsewhere	93404006
2742	No access to internet	93404006
33	From home	93404007
417	From cell phone	93404007
24	From work	93404007
123	From elsewhere	93404007
2406	No access to internet	93404007
42	From home	93404008
675	From cell phone	93404008
48	From work	93404008
237	From elsewhere	93404008
2763	No access to internet	93404008
39	From home	93404009
369	From cell phone	93404009
27	From work	93404009
18	From elsewhere	93404009
2781	No access to internet	93404009
36	From home	93404010
228	From cell phone	93404010
18	From work	93404010
84	From elsewhere	93404010
2058	No access to internet	93404010
36	From home	93404011
354	From cell phone	93404011
21	From work	93404011
126	From elsewhere	93404011
2337	No access to internet	93404011
24	From home	93404012
336	From cell phone	93404012
18	From work	93404012
90	From elsewhere	93404012
2082	No access to internet	93404012
27	From home	93404013
333	From cell phone	93404013
24	From work	93404013
57	From elsewhere	93404013
2979	No access to internet	93404013
33	From home	93404014
183	From cell phone	93404014
24	From work	93404014
24	From elsewhere	93404014
3099	No access to internet	93404014
180	From home	93404015
588	From cell phone	93404015
78	From work	93404015
306	From elsewhere	93404015
3291	No access to internet	93404015
156	From home	93404016
570	From cell phone	93404016
69	From work	93404016
234	From elsewhere	93404016
2685	No access to internet	93404016
78	From home	93404017
369	From cell phone	93404017
36	From work	93404017
231	From elsewhere	93404017
2619	No access to internet	93404017
18	From home	93404018
219	From cell phone	93404018
21	From work	93404018
15	From elsewhere	93404018
2595	No access to internet	93404018
18	From home	93404019
237	From cell phone	93404019
15	From work	93404019
300	From elsewhere	93404019
2784	No access to internet	93404019
768	From home	93404020
972	From cell phone	93404020
363	From work	93404020
147	From elsewhere	93404020
3009	No access to internet	93404020
540	From home	93404021
1050	From cell phone	93404021
363	From work	93404021
141	From elsewhere	93404021
5220	No access to internet	93404021
87	From home	93404022
519	From cell phone	93404022
54	From work	93404022
117	From elsewhere	93404022
2907	No access to internet	93404022
150	From home	93404023
486	From cell phone	93404023
30	From work	93404023
57	From elsewhere	93404023
2037	No access to internet	93404023
63	From home	93404024
888	From cell phone	93404024
39	From work	93404024
177	From elsewhere	93404024
3402	No access to internet	93404024
57	From home	93404025
525	From cell phone	93404025
39	From work	93404025
90	From elsewhere	93404025
3219	No access to internet	93404025
81	From home	93404026
387	From cell phone	93404026
42	From work	93404026
63	From elsewhere	93404026
3630	No access to internet	93404026
24	From home	93404027
315	From cell phone	93404027
15	From work	93404027
219	From elsewhere	93404027
2025	No access to internet	93404027
126	From home	93404028
720	From cell phone	93404028
90	From work	93404028
177	From elsewhere	93404028
3342	No access to internet	93404028
51	From home	93404029
363	From cell phone	93404029
21	From work	93404029
51	From elsewhere	93404029
2364	No access to internet	93404029
66	From home	93404030
447	From cell phone	93404030
51	From work	93404030
51	From elsewhere	93404030
2406	No access to internet	93404030
66	From home	93404031
528	From cell phone	93404031
27	From work	93404031
69	From elsewhere	93404031
2619	No access to internet	93404031
63	From home	93404032
444	From cell phone	93404032
42	From work	93404032
129	From elsewhere	93404032
3087	No access to internet	93404032
63	From home	93404033
735	From cell phone	93404033
36	From work	93404033
75	From elsewhere	93404033
2553	No access to internet	93404033
51	From home	93404034
639	From cell phone	93404034
54	From work	93404034
246	From elsewhere	93404034
2541	No access to internet	93404034
204	From home	93404035
774	From cell phone	93404035
51	From work	93404035
126	From elsewhere	93404035
2319	No access to internet	93404035
45	From home	93404036
621	From cell phone	93404036
24	From work	93404036
81	From elsewhere	93404036
3165	No access to internet	93404036
21	From home	93404037
387	From cell phone	93404037
6	From work	93404037
57	From elsewhere	93404037
2352	No access to internet	93404037
45	From home	93404038
588	From cell phone	93404038
39	From work	93404038
288	From elsewhere	93404038
1944	No access to internet	93404038
3	From home	93501001
183	From cell phone	93501001
9	From work	93501001
39	From elsewhere	93501001
1389	No access to internet	93501001
21	From home	93501002
126	From cell phone	93501002
12	From work	93501002
33	From elsewhere	93501002
1605	No access to internet	93501002
6	From home	93501003
105	From cell phone	93501003
3	From work	93501003
75	From elsewhere	93501003
1398	No access to internet	93501003
9	From home	93501004
180	From cell phone	93501004
9	From work	93501004
159	From elsewhere	93501004
1053	No access to internet	93501004
6	From home	93501005
57	From cell phone	93501005
6	From work	93501005
3	From elsewhere	93501005
1887	No access to internet	93501005
3	From home	93501006
54	From cell phone	93501006
6	From work	93501006
21	From elsewhere	93501006
1566	No access to internet	93501006
9	From home	93501007
132	From cell phone	93501007
9	From work	93501007
51	From elsewhere	93501007
1710	No access to internet	93501007
15	From home	93501008
105	From cell phone	93501008
9	From work	93501008
87	From elsewhere	93501008
1077	No access to internet	93501008
6	From home	93501009
123	From cell phone	93501009
15	From work	93501009
45	From elsewhere	93501009
2058	No access to internet	93501009
15	From home	93501010
432	From cell phone	93501010
12	From work	93501010
51	From elsewhere	93501010
1605	No access to internet	93501010
12	From home	93501011
399	From cell phone	93501011
12	From work	93501011
45	From elsewhere	93501011
1320	No access to internet	93501011
33	From home	93501012
321	From cell phone	93501012
24	From work	93501012
18	From elsewhere	93501012
1794	No access to internet	93501012
15	From home	93501013
93	From cell phone	93501013
15	From work	93501013
36	From elsewhere	93501013
1449	No access to internet	93501013
15	From home	93501014
63	From cell phone	93501014
12	From work	93501014
123	From elsewhere	93501014
1455	No access to internet	93501014
33	From home	93501015
99	From cell phone	93501015
12	From work	93501015
180	From elsewhere	93501015
1461	No access to internet	93501015
21	From home	93501016
99	From cell phone	93501016
18	From work	93501016
30	From elsewhere	93501016
1425	No access to internet	93501016
18	From home	93501017
291	From cell phone	93501017
15	From work	93501017
66	From elsewhere	93501017
1419	No access to internet	93501017
54	From home	93501018
228	From cell phone	93501018
33	From work	93501018
21	From elsewhere	93501018
1890	No access to internet	93501018
60	From home	93501019
873	From cell phone	93501019
132	From work	93501019
198	From elsewhere	93501019
3240	No access to internet	93501019
12	From home	93501020
63	From cell phone	93501020
6	From work	93501020
6	From elsewhere	93501020
1506	No access to internet	93501020
54	From home	93501021
159	From cell phone	93501021
24	From work	93501021
18	From elsewhere	93501021
2589	No access to internet	93501021
9	From home	93502001
75	From cell phone	93502001
9	From work	93502001
15	From elsewhere	93502001
1554	No access to internet	93502001
9	From home	93502002
243	From cell phone	93502002
9	From work	93502002
9	From elsewhere	93502002
1641	No access to internet	93502002
9	From home	93502003
294	From cell phone	93502003
12	From work	93502003
24	From elsewhere	93502003
1515	No access to internet	93502003
21	From home	93502004
198	From cell phone	93502004
9	From work	93502004
63	From elsewhere	93502004
1422	No access to internet	93502004
24	From home	93502005
159	From cell phone	93502005
18	From work	93502005
30	From elsewhere	93502005
1374	No access to internet	93502005
12	From home	93502006
129	From cell phone	93502006
9	From work	93502006
21	From elsewhere	93502006
1341	No access to internet	93502006
36	From home	93502007
153	From cell phone	93502007
12	From work	93502007
18	From elsewhere	93502007
1863	No access to internet	93502007
6	From home	93502008
135	From cell phone	93502008
15	From work	93502008
45	From elsewhere	93502008
1551	No access to internet	93502008
39	From home	93502009
126	From cell phone	93502009
39	From work	93502009
27	From elsewhere	93502009
1671	No access to internet	93502009
18	From home	93502010
108	From cell phone	93502010
9	From work	93502010
9	From elsewhere	93502010
1671	No access to internet	93502010
51	From home	93502011
195	From cell phone	93502011
24	From work	93502011
114	From elsewhere	93502011
1197	No access to internet	93502011
30	From home	93502012
243	From cell phone	93502012
9	From work	93502012
156	From elsewhere	93502012
1149	No access to internet	93502012
18	From home	93502013
198	From cell phone	93502013
18	From work	93502013
54	From elsewhere	93502013
1356	No access to internet	93502013
33	From home	93502014
312	From cell phone	93502014
12	From work	93502014
63	From elsewhere	93502014
1572	No access to internet	93502014
27	From home	93502015
177	From cell phone	93502015
6	From work	93502015
48	From elsewhere	93502015
1698	No access to internet	93502015
21	From home	93502016
150	From cell phone	93502016
12	From work	93502016
102	From elsewhere	93502016
1776	No access to internet	93502016
15	From home	93502017
156	From cell phone	93502017
9	From work	93502017
9	From elsewhere	93502017
1446	No access to internet	93502017
12	From home	93502018
165	From cell phone	93502018
12	From work	93502018
60	From elsewhere	93502018
1422	No access to internet	93502018
57	From home	93502019
207	From cell phone	93502019
24	From work	93502019
126	From elsewhere	93502019
1566	No access to internet	93502019
72	From home	93503001
381	From cell phone	93503001
60	From work	93503001
33	From elsewhere	93503001
3513	No access to internet	93503001
54	From home	93503002
366	From cell phone	93503002
21	From work	93503002
57	From elsewhere	93503002
1992	No access to internet	93503002
42	From home	93503003
261	From cell phone	93503003
42	From work	93503003
144	From elsewhere	93503003
1080	No access to internet	93503003
21	From home	93503004
249	From cell phone	93503004
39	From work	93503004
681	From elsewhere	93503004
876	No access to internet	93503004
6	From home	93503005
75	From cell phone	93503005
6	From work	93503005
117	From elsewhere	93503005
1005	No access to internet	93503005
51	From home	93503006
219	From cell phone	93503006
33	From work	93503006
108	From elsewhere	93503006
1851	No access to internet	93503006
78	From home	93503007
387	From cell phone	93503007
66	From work	93503007
87	From elsewhere	93503007
2202	No access to internet	93503007
135	From home	93503008
204	From cell phone	93503008
39	From work	93503008
288	From elsewhere	93503008
1998	No access to internet	93503008
111	From home	93503009
240	From cell phone	93503009
27	From work	93503009
261	From elsewhere	93503009
1443	No access to internet	93503009
75	From home	93503010
294	From cell phone	93503010
105	From work	93503010
519	From elsewhere	93503010
1140	No access to internet	93503010
30	From home	93503011
357	From cell phone	93503011
6	From work	93503011
63	From elsewhere	93503011
828	No access to internet	93503011
21	From home	93503012
309	From cell phone	93503012
27	From work	93503012
630	From elsewhere	93503012
1203	No access to internet	93503012
24	From home	93503013
120	From cell phone	93503013
9	From work	93503013
822	From elsewhere	93503013
753	No access to internet	93503013
21	From home	93503014
531	From cell phone	93503014
6	From work	93503014
57	From elsewhere	93503014
1077	No access to internet	93503014
216	From home	93504001
546	From cell phone	93504001
168	From work	93504001
273	From elsewhere	93504001
4878	No access to internet	93504001
27	From home	93504002
390	From cell phone	93504002
36	From work	93504002
60	From elsewhere	93504002
3336	No access to internet	93504002
51	From home	93504003
201	From cell phone	93504003
18	From work	93504003
36	From elsewhere	93504003
2961	No access to internet	93504003
57	From home	93504004
390	From cell phone	93504004
27	From work	93504004
84	From elsewhere	93504004
3783	No access to internet	93504004
66	From home	93504005
387	From cell phone	93504005
45	From work	93504005
93	From elsewhere	93504005
3771	No access to internet	93504005
486	From home	93504006
1386	From cell phone	93504006
423	From work	93504006
177	From elsewhere	93504006
3555	No access to internet	93504006
48	From home	93504007
714	From cell phone	93504007
36	From work	93504007
276	From elsewhere	93504007
2361	No access to internet	93504007
402	From home	93504008
2424	From cell phone	93504008
489	From work	93504008
597	From elsewhere	93504008
11640	No access to internet	93504008
48	From home	93504009
489	From cell phone	93504009
72	From work	93504009
456	From elsewhere	93504009
2250	No access to internet	93504009
135	From home	93504010
525	From cell phone	93504010
75	From work	93504010
135	From elsewhere	93504010
3402	No access to internet	93504010
372	From home	93504011
945	From cell phone	93504011
279	From work	93504011
660	From elsewhere	93504011
2538	No access to internet	93504011
339	From home	93504012
573	From cell phone	93504012
150	From work	93504012
249	From elsewhere	93504012
1239	No access to internet	93504012
210	From home	93504013
1059	From cell phone	93504013
198	From work	93504013
177	From elsewhere	93504013
1740	No access to internet	93504013
546	From home	93504014
1296	From cell phone	93504014
432	From work	93504014
306	From elsewhere	93504014
2769	No access to internet	93504014
36	From home	93504015
168	From cell phone	93504015
33	From work	93504015
42	From elsewhere	93504015
2655	No access to internet	93504015
99	From home	93504016
993	From cell phone	93504016
81	From work	93504016
198	From elsewhere	93504016
4146	No access to internet	93504016
222	From home	93504017
972	From cell phone	93504017
279	From work	93504017
360	From elsewhere	93504017
3012	No access to internet	93504017
102	From home	93504018
546	From cell phone	93504018
66	From work	93504018
81	From elsewhere	93504018
3195	No access to internet	93504018
624	From home	93504019
1119	From cell phone	93504019
528	From work	93504019
297	From elsewhere	93504019
2775	No access to internet	93504019
2394	From home	93504020
1737	From cell phone	93504020
1707	From work	93504020
330	From elsewhere	93504020
2205	No access to internet	93504020
897	From home	93504021
387	From cell phone	93504021
297	From work	93504021
78	From elsewhere	93504021
390	No access to internet	93504021
813	From home	93504022
1545	From cell phone	93504022
1053	From work	93504022
324	From elsewhere	93504022
1872	No access to internet	93504022
1281	From home	93504023
1905	From cell phone	93504023
1200	From work	93504023
276	From elsewhere	93504023
2091	No access to internet	93504023
66	From home	93504024
681	From cell phone	93504024
30	From work	93504024
129	From elsewhere	93504024
3135	No access to internet	93504024
363	From home	93504025
2226	From cell phone	93504025
378	From work	93504025
1038	From elsewhere	93504025
3771	No access to internet	93504025
150	From home	93504026
966	From cell phone	93504026
78	From work	93504026
678	From elsewhere	93504026
441	No access to internet	93504026
123	From home	93504027
942	From cell phone	93504027
123	From work	93504027
402	From elsewhere	93504027
4155	No access to internet	93504027
45	From home	93504028
696	From cell phone	93504028
18	From work	93504028
96	From elsewhere	93504028
2640	No access to internet	93504028
45	From home	93504029
291	From cell phone	93504029
9	From work	93504029
129	From elsewhere	93504029
1977	No access to internet	93504029
45	From home	93504030
348	From cell phone	93504030
27	From work	93504030
84	From elsewhere	93504030
2565	No access to internet	93504030
84	From home	93504031
1104	From cell phone	93504031
72	From work	93504031
762	From elsewhere	93504031
3480	No access to internet	93504031
60	From home	93504032
732	From cell phone	93504032
57	From work	93504032
99	From elsewhere	93504032
2883	No access to internet	93504032
93	From home	93504033
1074	From cell phone	93504033
33	From work	93504033
129	From elsewhere	93504033
2724	No access to internet	93504033
36	From home	93504034
459	From cell phone	93504034
33	From work	93504034
102	From elsewhere	93504034
3453	No access to internet	93504034
48	From home	93504035
252	From cell phone	93504035
30	From work	93504035
138	From elsewhere	93504035
2547	No access to internet	93504035
117	From home	93504036
489	From cell phone	93504036
114	From work	93504036
177	From elsewhere	93504036
3105	No access to internet	93504036
273	From home	93504037
1302	From cell phone	93504037
294	From work	93504037
276	From elsewhere	93504037
3234	No access to internet	93504037
48	From home	93504038
600	From cell phone	93504038
33	From work	93504038
39	From elsewhere	93504038
2550	No access to internet	93504038
15	From home	93505001
237	From cell phone	93505001
9	From work	93505001
69	From elsewhere	93505001
1686	No access to internet	93505001
21	From home	93505002
180	From cell phone	93505002
6	From work	93505002
30	From elsewhere	93505002
1830	No access to internet	93505002
12	From home	93505003
195	From cell phone	93505003
6	From work	93505003
18	From elsewhere	93505003
1689	No access to internet	93505003
24	From home	93505004
186	From cell phone	93505004
18	From work	93505004
132	From elsewhere	93505004
1458	No access to internet	93505004
9	From home	93505005
141	From cell phone	93505005
6	From work	93505005
126	From elsewhere	93505005
1446	No access to internet	93505005
18	From home	93505006
123	From cell phone	93505006
15	From work	93505006
15	From elsewhere	93505006
1788	No access to internet	93505006
42	From home	93505007
243	From cell phone	93505007
18	From work	93505007
303	From elsewhere	93505007
1551	No access to internet	93505007
75	From home	93505008
435	From cell phone	93505008
69	From work	93505008
207	From elsewhere	93505008
2097	No access to internet	93505008
51	From home	93505009
300	From cell phone	93505009
18	From work	93505009
54	From elsewhere	93505009
1836	No access to internet	93505009
24	From home	93505010
249	From cell phone	93505010
15	From work	93505010
27	From elsewhere	93505010
1278	No access to internet	93505010
12	From home	93505011
171	From cell phone	93505011
9	From work	93505011
33	From elsewhere	93505011
1596	No access to internet	93505011
24	From home	93505012
222	From cell phone	93505012
30	From work	93505012
15	From elsewhere	93505012
1509	No access to internet	93505012
33	From home	93505013
312	From cell phone	93505013
18	From work	93505013
273	From elsewhere	93505013
1242	No access to internet	93505013
18	From home	93505014
327	From cell phone	93505014
15	From work	93505014
177	From elsewhere	93505014
1677	No access to internet	93505014
384	From home	93505015
807	From cell phone	93505015
297	From work	93505015
333	From elsewhere	93505015
1764	No access to internet	93505015
135	From home	93505016
513	From cell phone	93505016
138	From work	93505016
183	From elsewhere	93505016
1473	No access to internet	93505016
138	From home	93505017
423	From cell phone	93505017
132	From work	93505017
174	From elsewhere	93505017
1755	No access to internet	93505017
207	From home	93505018
297	From cell phone	93505018
81	From work	93505018
138	From elsewhere	93505018
942	No access to internet	93505018
24	From home	93505019
147	From cell phone	93505019
12	From work	93505019
87	From elsewhere	93505019
1992	No access to internet	93505019
12	From home	93505020
210	From cell phone	93505020
15	From work	93505020
24	From elsewhere	93505020
1614	No access to internet	93505020
30	From home	93505021
318	From cell phone	93505021
9	From work	93505021
93	From elsewhere	93505021
1299	No access to internet	93505021
21	From home	93505022
237	From cell phone	93505022
33	From work	93505022
72	From elsewhere	93505022
2193	No access to internet	93505022
18	From home	93505023
225	From cell phone	93505023
9	From work	93505023
117	From elsewhere	93505023
1521	No access to internet	93505023
6	From home	93505024
147	From cell phone	93505024
6	From work	93505024
3	From elsewhere	93505024
1128	No access to internet	93505024
12	From home	93505025
144	From cell phone	93505025
6	From work	93505025
15	From elsewhere	93505025
1674	No access to internet	93505025
33	From home	93505026
411	From cell phone	93505026
39	From work	93505026
39	From elsewhere	93505026
1938	No access to internet	93505026
6	From home	93505027
243	From cell phone	93505027
9	From work	93505027
21	From elsewhere	93505027
1629	No access to internet	93505027
6	From home	93505028
387	From cell phone	93505028
3	From work	93505028
9	From elsewhere	93505028
1434	No access to internet	93505028
15	From home	93505029
189	From cell phone	93505029
3	From work	93505029
48	From elsewhere	93505029
1323	No access to internet	93505029
117	From home	93601001
186	From cell phone	93601001
93	From work	93601001
42	From elsewhere	93601001
1959	No access to internet	93601001
426	From home	93601002
654	From cell phone	93601002
312	From work	93601002
72	From elsewhere	93601002
1488	No access to internet	93601002
21	From home	93601003
642	From cell phone	93601003
81	From work	93601003
36	From elsewhere	93601003
3150	No access to internet	93601003
72	From home	93601004
123	From cell phone	93601004
45	From work	93601004
24	From elsewhere	93601004
1164	No access to internet	93601004
135	From home	93601005
285	From cell phone	93601005
126	From work	93601005
42	From elsewhere	93601005
606	No access to internet	93601005
123	From home	93601006
273	From cell phone	93601006
96	From work	93601006
18	From elsewhere	93601006
615	No access to internet	93601006
198	From home	93601007
711	From cell phone	93601007
99	From work	93601007
219	From elsewhere	93601007
2823	No access to internet	93601007
195	From home	93601008
357	From cell phone	93601008
156	From work	93601008
51	From elsewhere	93601008
789	No access to internet	93601008
252	From home	93601009
615	From cell phone	93601009
156	From work	93601009
111	From elsewhere	93601009
3285	No access to internet	93601009
51	From home	93601010
252	From cell phone	93601010
30	From work	93601010
6	From elsewhere	93601010
771	No access to internet	93601010
0	From home	93601011
0	From cell phone	93601011
0	From work	93601011
0	From elsewhere	93601011
0	No access to internet	93601011
87	From home	93601012
168	From cell phone	93601012
42	From work	93601012
24	From elsewhere	93601012
600	No access to internet	93601012
150	From home	93602001
816	From cell phone	93602001
180	From work	93602001
72	From elsewhere	93602001
3897	No access to internet	93602001
186	From home	93602002
657	From cell phone	93602002
177	From work	93602002
39	From elsewhere	93602002
1524	No access to internet	93602002
99	From home	93602003
330	From cell phone	93602003
90	From work	93602003
33	From elsewhere	93602003
2394	No access to internet	93602003
453	From home	93602004
663	From cell phone	93602004
390	From work	93602004
63	From elsewhere	93602004
1047	No access to internet	93602004
366	From home	93602005
648	From cell phone	93602005
426	From work	93602005
84	From elsewhere	93602005
1383	No access to internet	93602005
42	From home	93602006
159	From cell phone	93602006
3	From work	93602006
3	From elsewhere	93602006
1146	No access to internet	93602006
21	From home	93602007
186	From cell phone	93602007
15	From work	93602007
171	From elsewhere	93602007
1131	No access to internet	93602007
24	From home	93602008
189	From cell phone	93602008
15	From work	93602008
18	From elsewhere	93602008
1809	No access to internet	93602008
36	From home	93602009
198	From cell phone	93602009
81	From work	93602009
270	From elsewhere	93602009
1803	No access to internet	93602009
27	From home	93602010
333	From cell phone	93602010
21	From work	93602010
60	From elsewhere	93602010
1464	No access to internet	93602010
45	From home	93602011
501	From cell phone	93602011
27	From work	93602011
18	From elsewhere	93602011
2073	No access to internet	93602011
12	From home	93602012
504	From cell phone	93602012
3	From work	93602012
9	From elsewhere	93602012
1299	No access to internet	93602012
75	From home	93604001
792	From cell phone	93604001
54	From work	93604001
99	From elsewhere	93604001
2376	No access to internet	93604001
66	From home	93604002
570	From cell phone	93604002
27	From work	93604002
60	From elsewhere	93604002
846	No access to internet	93604002
60	From home	93604003
138	From cell phone	93604003
42	From work	93604003
36	From elsewhere	93604003
1515	No access to internet	93604003
258	From home	93604004
156	From cell phone	93604004
51	From work	93604004
39	From elsewhere	93604004
927	No access to internet	93604004
57	From home	93604005
240	From cell phone	93604005
30	From work	93604005
39	From elsewhere	93604005
1365	No access to internet	93604005
93	From home	93605001
357	From cell phone	93605001
27	From work	93605001
39	From elsewhere	93605001
1407	No access to internet	93605001
54	From home	93605002
168	From cell phone	93605002
54	From work	93605002
21	From elsewhere	93605002
1305	No access to internet	93605002
24	From home	93605003
174	From cell phone	93605003
27	From work	93605003
117	From elsewhere	93605003
1179	No access to internet	93605003
312	From home	93605004
126	From cell phone	93605004
87	From work	93605004
39	From elsewhere	93605004
1077	No access to internet	93605004
48	From home	93605005
429	From cell phone	93605005
51	From work	93605005
21	From elsewhere	93605005
2475	No access to internet	93605005
72	From home	93605006
186	From cell phone	93605006
75	From work	93605006
138	From elsewhere	93605006
1962	No access to internet	93605006
117	From home	93605007
243	From cell phone	93605007
141	From work	93605007
114	From elsewhere	93605007
1296	No access to internet	93605007
255	From home	93605008
396	From cell phone	93605008
207	From work	93605008
168	From elsewhere	93605008
1188	No access to internet	93605008
39	From home	93605009
171	From cell phone	93605009
66	From work	93605009
39	From elsewhere	93605009
939	No access to internet	93605009
639	From home	93606001
531	From cell phone	93606001
264	From work	93606001
105	From elsewhere	93606001
2472	No access to internet	93606001
51	From home	93606002
276	From cell phone	93606002
63	From work	93606002
69	From elsewhere	93606002
1755	No access to internet	93606002
75	From home	93606003
258	From cell phone	93606003
21	From work	93606003
54	From elsewhere	93606003
885	No access to internet	93606003
105	From home	93606004
348	From cell phone	93606004
78	From work	93606004
48	From elsewhere	93606004
2799	No access to internet	93606004
33	From home	93606005
297	From cell phone	93606005
27	From work	93606005
54	From elsewhere	93606005
804	No access to internet	93606005
42	From home	93606006
159	From cell phone	93606006
48	From work	93606006
87	From elsewhere	93606006
897	No access to internet	93606006
135	From home	93606007
234	From cell phone	93606007
72	From work	93606007
21	From elsewhere	93606007
1776	No access to internet	93606007
39	From home	93606008
300	From cell phone	93606008
57	From work	93606008
93	From elsewhere	93606008
1350	No access to internet	93606008
21	From home	93606009
84	From cell phone	93606009
12	From work	93606009
15	From elsewhere	93606009
513	No access to internet	93606009
15	From home	93607001
135	From cell phone	93607001
15	From work	93607001
30	From elsewhere	93607001
2184	No access to internet	93607001
24	From home	93607002
324	From cell phone	93607002
15	From work	93607002
36	From elsewhere	93607002
1881	No access to internet	93607002
33	From home	93607003
237	From cell phone	93607003
15	From work	93607003
90	From elsewhere	93607003
2022	No access to internet	93607003
30	From home	93607004
99	From cell phone	93607004
3	From work	93607004
33	From elsewhere	93607004
2202	No access to internet	93607004
12	From home	93607005
105	From cell phone	93607005
6	From work	93607005
15	From elsewhere	93607005
1890	No access to internet	93607005
54	From home	93607006
162	From cell phone	93607006
12	From work	93607006
60	From elsewhere	93607006
1935	No access to internet	93607006
27	From home	93607007
717	From cell phone	93607007
15	From work	93607007
198	From elsewhere	93607007
1581	No access to internet	93607007
12	From home	93607008
282	From cell phone	93607008
3	From work	93607008
84	From elsewhere	93607008
1620	No access to internet	93607008
15	From home	93607009
264	From cell phone	93607009
21	From work	93607009
18	From elsewhere	93607009
1929	No access to internet	93607009
18	From home	93607010
102	From cell phone	93607010
9	From work	93607010
12	From elsewhere	93607010
1923	No access to internet	93607010
24	From home	93607011
177	From cell phone	93607011
15	From work	93607011
45	From elsewhere	93607011
2448	No access to internet	93607011
129	From home	93607012
348	From cell phone	93607012
93	From work	93607012
138	From elsewhere	93607012
2481	No access to internet	93607012
18	From home	93607013
267	From cell phone	93607013
24	From work	93607013
36	From elsewhere	93607013
2310	No access to internet	93607013
39	From home	93607014
282	From cell phone	93607014
18	From work	93607014
213	From elsewhere	93607014
1773	No access to internet	93607014
12	From home	93607015
270	From cell phone	93607015
6	From work	93607015
84	From elsewhere	93607015
1512	No access to internet	93607015
84	From home	93607016
390	From cell phone	93607016
18	From work	93607016
132	From elsewhere	93607016
1926	No access to internet	93607016
18	From home	93607017
246	From cell phone	93607017
6	From work	93607017
60	From elsewhere	93607017
1899	No access to internet	93607017
54	From home	93607018
366	From cell phone	93607018
33	From work	93607018
60	From elsewhere	93607018
2433	No access to internet	93607018
15	From home	93607019
186	From cell phone	93607019
12	From work	93607019
18	From elsewhere	93607019
1812	No access to internet	93607019
48	From home	93607020
111	From cell phone	93607020
18	From work	93607020
408	From elsewhere	93607020
1767	No access to internet	93607020
12	From home	93607021
81	From cell phone	93607021
3	From work	93607021
147	From elsewhere	93607021
1113	No access to internet	93607021
57	From home	93607022
540	From cell phone	93607022
18	From work	93607022
54	From elsewhere	93607022
1671	No access to internet	93607022
33	From home	93607023
303	From cell phone	93607023
24	From work	93607023
63	From elsewhere	93607023
1608	No access to internet	93607023
111	From home	93607024
438	From cell phone	93607024
60	From work	93607024
108	From elsewhere	93607024
2163	No access to internet	93607024
57	From home	93607025
231	From cell phone	93607025
27	From work	93607025
81	From elsewhere	93607025
2136	No access to internet	93607025
81	From home	93607026
261	From cell phone	93607026
42	From work	93607026
87	From elsewhere	93607026
1221	No access to internet	93607026
168	From home	93607027
549	From cell phone	93607027
78	From work	93607027
207	From elsewhere	93607027
1668	No access to internet	93607027
114	From home	93607028
501	From cell phone	93607028
90	From work	93607028
177	From elsewhere	93607028
2187	No access to internet	93607028
54	From home	93607029
309	From cell phone	93607029
45	From work	93607029
111	From elsewhere	93607029
2523	No access to internet	93607029
45	From home	93607030
432	From cell phone	93607030
12	From work	93607030
150	From elsewhere	93607030
1290	No access to internet	93607030
633	From home	93607031
1161	From cell phone	93607031
399	From work	93607031
468	From elsewhere	93607031
3369	No access to internet	93607031
477	From home	93607032
498	From cell phone	93607032
291	From work	93607032
114	From elsewhere	93607032
1029	No access to internet	93607032
6	From home	94701001
90	From cell phone	94701001
3	From work	94701001
21	From elsewhere	94701001
1542	No access to internet	94701001
6	From home	94701002
81	From cell phone	94701002
12	From work	94701002
9	From elsewhere	94701002
1314	No access to internet	94701002
18	From home	94701003
177	From cell phone	94701003
33	From work	94701003
21	From elsewhere	94701003
2016	No access to internet	94701003
6	From home	94701004
150	From cell phone	94701004
3	From work	94701004
57	From elsewhere	94701004
1596	No access to internet	94701004
72	From home	94701005
204	From cell phone	94701005
42	From work	94701005
36	From elsewhere	94701005
3339	No access to internet	94701005
27	From home	94701006
207	From cell phone	94701006
12	From work	94701006
42	From elsewhere	94701006
1461	No access to internet	94701006
189	From home	94701007
228	From cell phone	94701007
99	From work	94701007
33	From elsewhere	94701007
1509	No access to internet	94701007
72	From home	94701008
348	From cell phone	94701008
42	From work	94701008
189	From elsewhere	94701008
1842	No access to internet	94701008
27	From home	94701009
264	From cell phone	94701009
18	From work	94701009
51	From elsewhere	94701009
1761	No access to internet	94701009
36	From home	94701010
129	From cell phone	94701010
12	From work	94701010
21	From elsewhere	94701010
1515	No access to internet	94701010
15	From home	94701011
240	From cell phone	94701011
15	From work	94701011
24	From elsewhere	94701011
1281	No access to internet	94701011
12	From home	94701012
156	From cell phone	94701012
6	From work	94701012
12	From elsewhere	94701012
1758	No access to internet	94701012
21	From home	94701013
99	From cell phone	94701013
69	From work	94701013
15	From elsewhere	94701013
1677	No access to internet	94701013
9	From home	94701014
213	From cell phone	94701014
18	From work	94701014
15	From elsewhere	94701014
1149	No access to internet	94701014
78	From home	94701015
402	From cell phone	94701015
15	From work	94701015
81	From elsewhere	94701015
1545	No access to internet	94701015
45	From home	94701016
309	From cell phone	94701016
78	From work	94701016
45	From elsewhere	94701016
1893	No access to internet	94701016
33	From home	94702001
363	From cell phone	94702001
24	From work	94702001
162	From elsewhere	94702001
2598	No access to internet	94702001
21	From home	94702002
141	From cell phone	94702002
21	From work	94702002
36	From elsewhere	94702002
1032	No access to internet	94702002
24	From home	94702003
228	From cell phone	94702003
3	From work	94702003
30	From elsewhere	94702003
1263	No access to internet	94702003
15	From home	94702004
192	From cell phone	94702004
18	From work	94702004
21	From elsewhere	94702004
1044	No access to internet	94702004
18	From home	94702005
150	From cell phone	94702005
9	From work	94702005
45	From elsewhere	94702005
1776	No access to internet	94702005
36	From home	94702006
291	From cell phone	94702006
12	From work	94702006
171	From elsewhere	94702006
1050	No access to internet	94702006
48	From home	94702007
366	From cell phone	94702007
21	From work	94702007
156	From elsewhere	94702007
2265	No access to internet	94702007
12	From home	94702008
186	From cell phone	94702008
6	From work	94702008
27	From elsewhere	94702008
1200	No access to internet	94702008
87	From home	94702009
348	From cell phone	94702009
51	From work	94702009
471	From elsewhere	94702009
2094	No access to internet	94702009
27	From home	94702010
117	From cell phone	94702010
18	From work	94702010
204	From elsewhere	94702010
1689	No access to internet	94702010
21	From home	94702011
276	From cell phone	94702011
24	From work	94702011
102	From elsewhere	94702011
795	No access to internet	94702011
51	From home	94702012
330	From cell phone	94702012
18	From work	94702012
162	From elsewhere	94702012
1410	No access to internet	94702012
264	From home	94702013
276	From cell phone	94702013
171	From work	94702013
78	From elsewhere	94702013
492	No access to internet	94702013
63	From home	94702014
207	From cell phone	94702014
75	From work	94702014
39	From elsewhere	94702014
3438	No access to internet	94702014
18	From home	94702015
330	From cell phone	94702015
6	From work	94702015
39	From elsewhere	94702015
1494	No access to internet	94702015
27	From home	94702016
324	From cell phone	94702016
27	From work	94702016
69	From elsewhere	94702016
1713	No access to internet	94702016
21	From home	94702017
111	From cell phone	94702017
9	From work	94702017
30	From elsewhere	94702017
1122	No access to internet	94702017
15	From home	94702018
186	From cell phone	94702018
9	From work	94702018
66	From elsewhere	94702018
1254	No access to internet	94702018
9	From home	94702019
399	From cell phone	94702019
9	From work	94702019
162	From elsewhere	94702019
1278	No access to internet	94702019
78	From home	94702020
495	From cell phone	94702020
39	From work	94702020
684	From elsewhere	94702020
1536	No access to internet	94702020
15	From home	94702021
168	From cell phone	94702021
15	From work	94702021
33	From elsewhere	94702021
2190	No access to internet	94702021
12	From home	94702022
63	From cell phone	94702022
15	From work	94702022
6	From elsewhere	94702022
1080	No access to internet	94702022
21	From home	94702023
222	From cell phone	94702023
3	From work	94702023
141	From elsewhere	94702023
1257	No access to internet	94702023
24	From home	94702024
165	From cell phone	94702024
18	From work	94702024
66	From elsewhere	94702024
2091	No access to internet	94702024
18	From home	94702025
201	From cell phone	94702025
12	From work	94702025
39	From elsewhere	94702025
1437	No access to internet	94702025
12	From home	94702026
144	From cell phone	94702026
12	From work	94702026
45	From elsewhere	94702026
1071	No access to internet	94702026
33	From home	94702027
342	From cell phone	94702027
21	From work	94702027
63	From elsewhere	94702027
2121	No access to internet	94702027
21	From home	94702028
210	From cell phone	94702028
36	From work	94702028
93	From elsewhere	94702028
1689	No access to internet	94702028
129	From home	94702029
495	From cell phone	94702029
96	From work	94702029
207	From elsewhere	94702029
1977	No access to internet	94702029
51	From home	94702030
399	From cell phone	94702030
39	From work	94702030
39	From elsewhere	94702030
1500	No access to internet	94702030
54	From home	94703001
240	From cell phone	94703001
33	From work	94703001
402	From elsewhere	94703001
1662	No access to internet	94703001
27	From home	94703002
198	From cell phone	94703002
6	From work	94703002
36	From elsewhere	94703002
1398	No access to internet	94703002
51	From home	94703003
309	From cell phone	94703003
48	From work	94703003
114	From elsewhere	94703003
2043	No access to internet	94703003
15	From home	94703004
408	From cell phone	94703004
3	From work	94703004
69	From elsewhere	94703004
1323	No access to internet	94703004
27	From home	94703005
303	From cell phone	94703005
30	From work	94703005
36	From elsewhere	94703005
1737	No access to internet	94703005
6	From home	94703006
99	From cell phone	94703006
9	From work	94703006
174	From elsewhere	94703006
1509	No access to internet	94703006
6	From home	94703007
54	From cell phone	94703007
3	From work	94703007
12	From elsewhere	94703007
1323	No access to internet	94703007
96	From home	94703008
651	From cell phone	94703008
45	From work	94703008
192	From elsewhere	94703008
2340	No access to internet	94703008
60	From home	94703009
279	From cell phone	94703009
24	From work	94703009
48	From elsewhere	94703009
2121	No access to internet	94703009
33	From home	94703010
153	From cell phone	94703010
12	From work	94703010
24	From elsewhere	94703010
1416	No access to internet	94703010
42	From home	94703011
150	From cell phone	94703011
33	From work	94703011
75	From elsewhere	94703011
1224	No access to internet	94703011
36	From home	94703012
213	From cell phone	94703012
12	From work	94703012
108	From elsewhere	94703012
1680	No access to internet	94703012
42	From home	94703013
114	From cell phone	94703013
21	From work	94703013
108	From elsewhere	94703013
2304	No access to internet	94703013
15	From home	94703014
102	From cell phone	94703014
27	From work	94703014
24	From elsewhere	94703014
1362	No access to internet	94703014
9	From home	94703015
189	From cell phone	94703015
3	From work	94703015
18	From elsewhere	94703015
1242	No access to internet	94703015
18	From home	94703016
90	From cell phone	94703016
21	From work	94703016
57	From elsewhere	94703016
1437	No access to internet	94703016
21	From home	94703017
84	From cell phone	94703017
24	From work	94703017
168	From elsewhere	94703017
1851	No access to internet	94703017
33	From home	94703018
387	From cell phone	94703018
66	From work	94703018
39	From elsewhere	94703018
2496	No access to internet	94703018
9	From home	94703019
369	From cell phone	94703019
18	From work	94703019
27	From elsewhere	94703019
1641	No access to internet	94703019
30	From home	94703020
249	From cell phone	94703020
21	From work	94703020
105	From elsewhere	94703020
1803	No access to internet	94703020
75	From home	94703021
831	From cell phone	94703021
27	From work	94703021
141	From elsewhere	94703021
1440	No access to internet	94703021
69	From home	94703022
225	From cell phone	94703022
12	From work	94703022
27	From elsewhere	94703022
1428	No access to internet	94703022
24	From home	94703023
240	From cell phone	94703023
24	From work	94703023
48	From elsewhere	94703023
2163	No access to internet	94703023
15	From home	94703024
258	From cell phone	94703024
6	From work	94703024
24	From elsewhere	94703024
1629	No access to internet	94703024
15	From home	94703025
144	From cell phone	94703025
27	From work	94703025
18	From elsewhere	94703025
2076	No access to internet	94703025
24	From home	94703026
96	From cell phone	94703026
30	From work	94703026
66	From elsewhere	94703026
2094	No access to internet	94703026
60	From home	94703027
249	From cell phone	94703027
3	From work	94703027
48	From elsewhere	94703027
1701	No access to internet	94703027
24	From home	94703028
237	From cell phone	94703028
9	From work	94703028
30	From elsewhere	94703028
2550	No access to internet	94703028
6	From home	94703029
267	From cell phone	94703029
6	From work	94703029
24	From elsewhere	94703029
1428	No access to internet	94703029
21	From home	94703030
333	From cell phone	94703030
12	From work	94703030
249	From elsewhere	94703030
1359	No access to internet	94703030
12	From home	94703031
342	From cell phone	94703031
3	From work	94703031
51	From elsewhere	94703031
1401	No access to internet	94703031
12	From home	94704001
87	From cell phone	94704001
15	From work	94704001
15	From elsewhere	94704001
1335	No access to internet	94704001
15	From home	94704002
69	From cell phone	94704002
15	From work	94704002
21	From elsewhere	94704002
1686	No access to internet	94704002
39	From home	94704003
180	From cell phone	94704003
9	From work	94704003
114	From elsewhere	94704003
1488	No access to internet	94704003
6	From home	94704004
42	From cell phone	94704004
6	From work	94704004
12	From elsewhere	94704004
1317	No access to internet	94704004
9	From home	94704005
51	From cell phone	94704005
21	From work	94704005
30	From elsewhere	94704005
1446	No access to internet	94704005
42	From home	94704006
186	From cell phone	94704006
69	From work	94704006
129	From elsewhere	94704006
1698	No access to internet	94704006
21	From home	94704007
207	From cell phone	94704007
21	From work	94704007
66	From elsewhere	94704007
1728	No access to internet	94704007
63	From home	94704008
306	From cell phone	94704008
42	From work	94704008
66	From elsewhere	94704008
1344	No access to internet	94704008
9	From home	94704009
183	From cell phone	94704009
15	From work	94704009
6	From elsewhere	94704009
1194	No access to internet	94704009
12	From home	94704010
81	From cell phone	94704010
18	From work	94704010
9	From elsewhere	94704010
927	No access to internet	94704010
21	From home	94704011
216	From cell phone	94704011
15	From work	94704011
24	From elsewhere	94704011
1923	No access to internet	94704011
66	From home	94704012
504	From cell phone	94704012
51	From work	94704012
201	From elsewhere	94704012
1656	No access to internet	94704012
21	From home	94704013
102	From cell phone	94704013
18	From work	94704013
120	From elsewhere	94704013
1440	No access to internet	94704013
57	From home	94705001
114	From cell phone	94705001
60	From work	94705001
18	From elsewhere	94705001
2469	No access to internet	94705001
201	From home	94705002
585	From cell phone	94705002
192	From work	94705002
177	From elsewhere	94705002
3552	No access to internet	94705002
27	From home	94705003
324	From cell phone	94705003
18	From work	94705003
18	From elsewhere	94705003
1938	No access to internet	94705003
24	From home	94705004
69	From cell phone	94705004
15	From work	94705004
129	From elsewhere	94705004
903	No access to internet	94705004
54	From home	94705005
654	From cell phone	94705005
30	From work	94705005
213	From elsewhere	94705005
2574	No access to internet	94705005
72	From home	94705006
396	From cell phone	94705006
27	From work	94705006
39	From elsewhere	94705006
1287	No access to internet	94705006
54	From home	94705007
552	From cell phone	94705007
63	From work	94705007
147	From elsewhere	94705007
2475	No access to internet	94705007
18	From home	94705008
66	From cell phone	94705008
12	From work	94705008
132	From elsewhere	94705008
2334	No access to internet	94705008
48	From home	94705009
198	From cell phone	94705009
36	From work	94705009
90	From elsewhere	94705009
2433	No access to internet	94705009
36	From home	94705010
399	From cell phone	94705010
123	From work	94705010
78	From elsewhere	94705010
2469	No access to internet	94705010
21	From home	94705011
99	From cell phone	94705011
45	From work	94705011
27	From elsewhere	94705011
1608	No access to internet	94705011
39	From home	94705012
309	From cell phone	94705012
24	From work	94705012
114	From elsewhere	94705012
1410	No access to internet	94705012
123	From home	94705013
864	From cell phone	94705013
93	From work	94705013
96	From elsewhere	94705013
3411	No access to internet	94705013
54	From home	94705014
324	From cell phone	94705014
60	From work	94705014
57	From elsewhere	94705014
2778	No access to internet	94705014
6	From home	94705015
75	From cell phone	94705015
27	From work	94705015
6	From elsewhere	94705015
1662	No access to internet	94705015
30	From home	94705016
180	From cell phone	94705016
18	From work	94705016
12	From elsewhere	94705016
1488	No access to internet	94705016
45	From home	94705017
543	From cell phone	94705017
36	From work	94705017
159	From elsewhere	94705017
1839	No access to internet	94705017
375	From home	94705018
1047	From cell phone	94705018
174	From work	94705018
78	From elsewhere	94705018
2082	No access to internet	94705018
60	From home	94705019
198	From cell phone	94705019
39	From work	94705019
93	From elsewhere	94705019
2394	No access to internet	94705019
54	From home	94705020
594	From cell phone	94705020
21	From work	94705020
102	From elsewhere	94705020
2043	No access to internet	94705020
15	From home	94705021
36	From cell phone	94705021
45	From work	94705021
96	From elsewhere	94705021
1269	No access to internet	94705021
33	From home	94705022
108	From cell phone	94705022
18	From work	94705022
18	From elsewhere	94705022
1734	No access to internet	94705022
27	From home	94705023
150	From cell phone	94705023
21	From work	94705023
30	From elsewhere	94705023
2019	No access to internet	94705023
12	From home	94705024
93	From cell phone	94705024
9	From work	94705024
15	From elsewhere	94705024
2199	No access to internet	94705024
66	From home	94705025
552	From cell phone	94705025
69	From work	94705025
102	From elsewhere	94705025
2718	No access to internet	94705025
12	From home	94705026
150	From cell phone	94705026
21	From work	94705026
15	From elsewhere	94705026
1872	No access to internet	94705026
36	From home	94705027
297	From cell phone	94705027
33	From work	94705027
24	From elsewhere	94705027
2328	No access to internet	94705027
54	From home	94705028
177	From cell phone	94705028
36	From work	94705028
126	From elsewhere	94705028
2082	No access to internet	94705028
24	From home	94705029
375	From cell phone	94705029
9	From work	94705029
141	From elsewhere	94705029
1776	No access to internet	94705029
78	From home	94705030
546	From cell phone	94705030
57	From work	94705030
168	From elsewhere	94705030
2496	No access to internet	94705030
273	From home	94705031
324	From cell phone	94705031
105	From work	94705031
87	From elsewhere	94705031
2976	No access to internet	94705031
6	From home	83001001
132	From cell phone	83001001
15	From work	83001001
18	From elsewhere	83001001
1842	No access to internet	83001001
9	From home	83001002
270	From cell phone	83001002
9	From work	83001002
99	From elsewhere	83001002
1479	No access to internet	83001002
30	From home	83001003
255	From cell phone	83001003
12	From work	83001003
75	From elsewhere	83001003
1512	No access to internet	83001003
60	From home	83001004
609	From cell phone	83001004
48	From work	83001004
24	From elsewhere	83001004
1419	No access to internet	83001004
24	From home	83001005
498	From cell phone	83001005
6	From work	83001005
18	From elsewhere	83001005
1107	No access to internet	83001005
36	From home	83001006
144	From cell phone	83001006
69	From work	83001006
24	From elsewhere	83001006
1563	No access to internet	83001006
0	From home	83001007
18	From cell phone	83001007
0	From work	83001007
18	From elsewhere	83001007
513	No access to internet	83001007
12	From home	83001008
192	From cell phone	83001008
6	From work	83001008
9	From elsewhere	83001008
687	No access to internet	83001008
72	From home	83001009
501	From cell phone	83001009
39	From work	83001009
72	From elsewhere	83001009
2367	No access to internet	83001009
57	From home	83001010
318	From cell phone	83001010
48	From work	83001010
84	From elsewhere	83001010
1161	No access to internet	83001010
6	From home	83001011
363	From cell phone	83001011
18	From work	83001011
30	From elsewhere	83001011
1449	No access to internet	83001011
24	From home	83001012
360	From cell phone	83001012
18	From work	83001012
168	From elsewhere	83001012
1434	No access to internet	83001012
21	From home	83001013
114	From cell phone	83001013
6	From work	83001013
27	From elsewhere	83001013
1077	No access to internet	83001013
183	From home	83001014
543	From cell phone	83001014
108	From work	83001014
204	From elsewhere	83001014
1896	No access to internet	83001014
168	From home	83001015
588	From cell phone	83001015
96	From work	83001015
60	From elsewhere	83001015
2529	No access to internet	83001015
18	From home	83001016
213	From cell phone	83001016
12	From work	83001016
144	From elsewhere	83001016
1842	No access to internet	83001016
45	From home	83001017
282	From cell phone	83001017
36	From work	83001017
87	From elsewhere	83001017
732	No access to internet	83001017
33	From home	83001018
513	From cell phone	83001018
27	From work	83001018
90	From elsewhere	83001018
1638	No access to internet	83001018
15	From home	83001019
240	From cell phone	83001019
6	From work	83001019
12	From elsewhere	83001019
1203	No access to internet	83001019
39	From home	83001020
108	From cell phone	83001020
21	From work	83001020
114	From elsewhere	83001020
987	No access to internet	83001020
123	From home	83001021
345	From cell phone	83001021
78	From work	83001021
45	From elsewhere	83001021
2037	No access to internet	83001021
15	From home	83001022
60	From cell phone	83001022
15	From work	83001022
6	From elsewhere	83001022
453	No access to internet	83001022
57	From home	83001023
318	From cell phone	83001023
57	From work	83001023
42	From elsewhere	83001023
2211	No access to internet	83001023
30	From home	83001024
489	From cell phone	83001024
33	From work	83001024
96	From elsewhere	83001024
1989	No access to internet	83001024
18	From home	83001025
285	From cell phone	83001025
12	From work	83001025
117	From elsewhere	83001025
1242	No access to internet	83001025
123	From home	83002001
339	From cell phone	83002001
51	From work	83002001
144	From elsewhere	83002001
1293	No access to internet	83002001
42	From home	83002002
513	From cell phone	83002002
42	From work	83002002
156	From elsewhere	83002002
1542	No access to internet	83002002
90	From home	83002003
345	From cell phone	83002003
87	From work	83002003
162	From elsewhere	83002003
1725	No access to internet	83002003
42	From home	83002004
579	From cell phone	83002004
84	From work	83002004
183	From elsewhere	83002004
765	No access to internet	83002004
48	From home	83002005
141	From cell phone	83002005
36	From work	83002005
84	From elsewhere	83002005
771	No access to internet	83002005
141	From home	83002006
339	From cell phone	83002006
87	From work	83002006
306	From elsewhere	83002006
987	No access to internet	83002006
231	From home	83002007
495	From cell phone	83002007
150	From work	83002007
54	From elsewhere	83002007
651	No access to internet	83002007
642	From home	83002008
627	From cell phone	83002008
354	From work	83002008
153	From elsewhere	83002008
1530	No access to internet	83002008
111	From home	83002009
747	From cell phone	83002009
75	From work	83002009
156	From elsewhere	83002009
1848	No access to internet	83002009
51	From home	83002010
372	From cell phone	83002010
33	From work	83002010
39	From elsewhere	83002010
1677	No access to internet	83002010
30	From home	83002011
252	From cell phone	83002011
24	From work	83002011
54	From elsewhere	83002011
1233	No access to internet	83002011
18	From home	83002012
72	From cell phone	83002012
12	From work	83002012
30	From elsewhere	83002012
717	No access to internet	83002012
177	From home	83002013
369	From cell phone	83002013
54	From work	83002013
201	From elsewhere	83002013
1581	No access to internet	83002013
72	From home	83002014
462	From cell phone	83002014
18	From work	83002014
192	From elsewhere	83002014
951	No access to internet	83002014
24	From home	83002015
258	From cell phone	83002015
30	From work	83002015
75	From elsewhere	83002015
2238	No access to internet	83002015
456	From home	83002016
681	From cell phone	83002016
243	From work	83002016
360	From elsewhere	83002016
2916	No access to internet	83002016
129	From home	83002017
537	From cell phone	83002017
39	From work	83002017
201	From elsewhere	83002017
1191	No access to internet	83002017
36	From home	83002018
90	From cell phone	83002018
18	From work	83002018
15	From elsewhere	83002018
1101	No access to internet	83002018
54	From home	83002019
351	From cell phone	83002019
42	From work	83002019
36	From elsewhere	83002019
2064	No access to internet	83002019
54	From home	83003001
333	From cell phone	83003001
12	From work	83003001
21	From elsewhere	83003001
1860	No access to internet	83003001
24	From home	83003002
411	From cell phone	83003002
15	From work	83003002
192	From elsewhere	83003002
2190	No access to internet	83003002
18	From home	83003003
195	From cell phone	83003003
15	From work	83003003
48	From elsewhere	83003003
1785	No access to internet	83003003
18	From home	83003004
150	From cell phone	83003004
21	From work	83003004
9	From elsewhere	83003004
1272	No access to internet	83003004
54	From home	83003005
234	From cell phone	83003005
39	From work	83003005
81	From elsewhere	83003005
2376	No access to internet	83003005
18	From home	83003006
39	From cell phone	83003006
18	From work	83003006
21	From elsewhere	83003006
1467	No access to internet	83003006
294	From home	83003007
321	From cell phone	83003007
129	From work	83003007
63	From elsewhere	83003007
516	No access to internet	83003007
30	From home	83003008
351	From cell phone	83003008
33	From work	83003008
18	From elsewhere	83003008
1353	No access to internet	83003008
42	From home	83003009
369	From cell phone	83003009
27	From work	83003009
147	From elsewhere	83003009
1686	No access to internet	83003009
87	From home	83003010
582	From cell phone	83003010
60	From work	83003010
36	From elsewhere	83003010
1338	No access to internet	83003010
135	From home	83003011
576	From cell phone	83003011
45	From work	83003011
477	From elsewhere	83003011
2136	No access to internet	83003011
111	From home	83003012
519	From cell phone	83003012
39	From work	83003012
204	From elsewhere	83003012
750	No access to internet	83003012
24	From home	83003013
321	From cell phone	83003013
12	From work	83003013
24	From elsewhere	83003013
1638	No access to internet	83003013
207	From home	83003014
549	From cell phone	83003014
141	From work	83003014
237	From elsewhere	83003014
1449	No access to internet	83003014
30	From home	83003015
105	From cell phone	83003015
24	From work	83003015
12	From elsewhere	83003015
1203	No access to internet	83003015
30	From home	83003016
261	From cell phone	83003016
24	From work	83003016
24	From elsewhere	83003016
1326	No access to internet	83003016
12	From home	83003017
261	From cell phone	83003017
24	From work	83003017
84	From elsewhere	83003017
1218	No access to internet	83003017
9	From home	83003018
168	From cell phone	83003018
3	From work	83003018
6	From elsewhere	83003018
501	No access to internet	83003018
84	From home	83003019
267	From cell phone	83003019
33	From work	83003019
33	From elsewhere	83003019
1617	No access to internet	83003019
48	From home	83004001
330	From cell phone	83004001
27	From work	83004001
81	From elsewhere	83004001
1476	No access to internet	83004001
24	From home	83004002
138	From cell phone	83004002
30	From work	83004002
87	From elsewhere	83004002
561	No access to internet	83004002
144	From home	83004003
645	From cell phone	83004003
93	From work	83004003
102	From elsewhere	83004003
1125	No access to internet	83004003
363	From home	83004004
375	From cell phone	83004004
123	From work	83004004
48	From elsewhere	83004004
855	No access to internet	83004004
117	From home	83004005
258	From cell phone	83004005
18	From work	83004005
96	From elsewhere	83004005
1104	No access to internet	83004005
63	From home	83004006
249	From cell phone	83004006
12	From work	83004006
30	From elsewhere	83004006
1710	No access to internet	83004006
60	From home	83004007
351	From cell phone	83004007
39	From work	83004007
27	From elsewhere	83004007
1584	No access to internet	83004007
42	From home	83004008
213	From cell phone	83004008
33	From work	83004008
57	From elsewhere	83004008
1545	No access to internet	83004008
18	From home	83004009
174	From cell phone	83004009
3	From work	83004009
96	From elsewhere	83004009
891	No access to internet	83004009
30	From home	83004010
426	From cell phone	83004010
18	From work	83004010
63	From elsewhere	83004010
1878	No access to internet	83004010
21	From home	83004011
267	From cell phone	83004011
15	From work	83004011
144	From elsewhere	83004011
1512	No access to internet	83004011
78	From home	83005001
267	From cell phone	83005001
57	From work	83005001
315	From elsewhere	83005001
1029	No access to internet	83005001
45	From home	83005002
423	From cell phone	83005002
36	From work	83005002
117	From elsewhere	83005002
591	No access to internet	83005002
102	From home	83005003
264	From cell phone	83005003
54	From work	83005003
207	From elsewhere	83005003
1389	No access to internet	83005003
240	From home	83005004
315	From cell phone	83005004
132	From work	83005004
66	From elsewhere	83005004
684	No access to internet	83005004
228	From home	83005005
492	From cell phone	83005005
75	From work	83005005
363	From elsewhere	83005005
1431	No access to internet	83005005
78	From home	83005006
294	From cell phone	83005006
30	From work	83005006
147	From elsewhere	83005006
1059	No access to internet	83005006
54	From home	83005007
465	From cell phone	83005007
30	From work	83005007
222	From elsewhere	83005007
963	No access to internet	83005007
423	From home	83005008
666	From cell phone	83005008
390	From work	83005008
78	From elsewhere	83005008
915	No access to internet	83005008
84	From home	83005009
168	From cell phone	83005009
27	From work	83005009
9	From elsewhere	83005009
1176	No access to internet	83005009
306	From home	83005010
303	From cell phone	83005010
213	From work	83005010
45	From elsewhere	83005010
561	No access to internet	83005010
78	From home	83005011
405	From cell phone	83005011
42	From work	83005011
273	From elsewhere	83005011
3009	No access to internet	83005011
126	From home	83005012
381	From cell phone	83005012
87	From work	83005012
78	From elsewhere	83005012
1734	No access to internet	83005012
69	From home	83005013
138	From cell phone	83005013
24	From work	83005013
6	From elsewhere	83005013
1017	No access to internet	83005013
78	From home	83005014
459	From cell phone	83005014
39	From work	83005014
21	From elsewhere	83005014
1500	No access to internet	83005014
57	From home	83005015
387	From cell phone	83005015
54	From work	83005015
117	From elsewhere	83005015
3180	No access to internet	83005015
51	From home	83006001
378	From cell phone	83006001
45	From work	83006001
45	From elsewhere	83006001
1668	No access to internet	83006001
33	From home	83006002
642	From cell phone	83006002
42	From work	83006002
39	From elsewhere	83006002
1551	No access to internet	83006002
129	From home	83006003
330	From cell phone	83006003
96	From work	83006003
57	From elsewhere	83006003
891	No access to internet	83006003
30	From home	83006004
261	From cell phone	83006004
27	From work	83006004
51	From elsewhere	83006004
1986	No access to internet	83006004
186	From home	83006005
372	From cell phone	83006005
126	From work	83006005
45	From elsewhere	83006005
1509	No access to internet	83006005
63	From home	83006006
330	From cell phone	83006006
18	From work	83006006
21	From elsewhere	83006006
1620	No access to internet	83006006
210	From home	83007001
552	From cell phone	83007001
102	From work	83007001
45	From elsewhere	83007001
2499	No access to internet	83007001
198	From home	83007002
333	From cell phone	83007002
42	From work	83007002
222	From elsewhere	83007002
2328	No access to internet	83007002
81	From home	83007003
390	From cell phone	83007003
39	From work	83007003
225	From elsewhere	83007003
1587	No access to internet	83007003
45	From home	83007004
279	From cell phone	83007004
51	From work	83007004
105	From elsewhere	83007004
1353	No access to internet	83007004
747	From home	83007005
294	From cell phone	83007005
360	From work	83007005
45	From elsewhere	83007005
642	No access to internet	83007005
33	From home	83007006
303	From cell phone	83007006
15	From work	83007006
93	From elsewhere	83007006
1047	No access to internet	83007006
234	From home	83007007
540	From cell phone	83007007
165	From work	83007007
78	From elsewhere	83007007
738	No access to internet	83007007
54	From home	83007008
558	From cell phone	83007008
21	From work	83007008
105	From elsewhere	83007008
1167	No access to internet	83007008
108	From home	83007009
555	From cell phone	83007009
87	From work	83007009
72	From elsewhere	83007009
1218	No access to internet	83007009
78	From home	83007010
522	From cell phone	83007010
63	From work	83007010
120	From elsewhere	83007010
2379	No access to internet	83007010
171	From home	83007011
468	From cell phone	83007011
156	From work	83007011
159	From elsewhere	83007011
1215	No access to internet	83007011
87	From home	83007012
648	From cell phone	83007012
42	From work	83007012
117	From elsewhere	83007012
2130	No access to internet	83007012
39	From home	83007013
348	From cell phone	83007013
18	From work	83007013
99	From elsewhere	83007013
1605	No access to internet	83007013
21	From home	83007014
168	From cell phone	83007014
12	From work	83007014
18	From elsewhere	83007014
1374	No access to internet	83007014
264	From home	83007015
636	From cell phone	83007015
171	From work	83007015
117	From elsewhere	83007015
2376	No access to internet	83007015
249	From home	83007016
648	From cell phone	83007016
222	From work	83007016
90	From elsewhere	83007016
2346	No access to internet	83007016
204	From home	83007017
483	From cell phone	83007017
171	From work	83007017
57	From elsewhere	83007017
780	No access to internet	83007017
675	From home	83007018
672	From cell phone	83007018
345	From work	83007018
78	From elsewhere	83007018
1188	No access to internet	83007018
129	From home	83007019
1011	From cell phone	83007019
75	From work	83007019
171	From elsewhere	83007019
4209	No access to internet	83007019
117	From home	83007020
711	From cell phone	83007020
87	From work	83007020
174	From elsewhere	83007020
3807	No access to internet	83007020
684	From home	83007021
459	From cell phone	83007021
477	From work	83007021
72	From elsewhere	83007021
549	No access to internet	83007021
96	From home	83007022
687	From cell phone	83007022
51	From work	83007022
219	From elsewhere	83007022
2010	No access to internet	83007022
48	From home	83007023
456	From cell phone	83007023
21	From work	83007023
21	From elsewhere	83007023
930	No access to internet	83007023
39	From home	83007024
174	From cell phone	83007024
75	From work	83007024
90	From elsewhere	83007024
1824	No access to internet	83007024
843	From home	83007025
633	From cell phone	83007025
495	From work	83007025
93	From elsewhere	83007025
984	No access to internet	83007025
63	From home	83007026
498	From cell phone	83007026
84	From work	83007026
375	From elsewhere	83007026
2598	No access to internet	83007026
66	From home	83007027
384	From cell phone	83007027
75	From work	83007027
111	From elsewhere	83007027
1215	No access to internet	83007027
459	From home	83007028
597	From cell phone	83007028
315	From work	83007028
96	From elsewhere	83007028
2076	No access to internet	83007028
87	From home	83007029
423	From cell phone	83007029
57	From work	83007029
123	From elsewhere	83007029
657	No access to internet	83007029
786	From home	83007030
432	From cell phone	83007030
318	From work	83007030
93	From elsewhere	83007030
633	No access to internet	83007030
93	From home	83007031
747	From cell phone	83007031
12	From work	83007031
105	From elsewhere	83007031
1581	No access to internet	83007031
180	From home	83007032
762	From cell phone	83007032
102	From work	83007032
150	From elsewhere	83007032
1197	No access to internet	83007032
66	From home	83101001
378	From cell phone	83101001
30	From work	83101001
144	From elsewhere	83101001
1029	No access to internet	83101001
54	From home	83101002
246	From cell phone	83101002
27	From work	83101002
60	From elsewhere	83101002
1239	No access to internet	83101002
96	From home	83101003
633	From cell phone	83101003
90	From work	83101003
123	From elsewhere	83101003
3429	No access to internet	83101003
24	From home	83101004
219	From cell phone	83101004
12	From work	83101004
15	From elsewhere	83101004
1284	No access to internet	83101004
42	From home	83101005
258	From cell phone	83101005
18	From work	83101005
15	From elsewhere	83101005
1506	No access to internet	83101005
87	From home	83101006
234	From cell phone	83101006
72	From work	83101006
171	From elsewhere	83101006
1212	No access to internet	83101006
174	From home	83101007
432	From cell phone	83101007
117	From work	83101007
66	From elsewhere	83101007
2226	No access to internet	83101007
192	From home	83101008
345	From cell phone	83101008
144	From work	83101008
87	From elsewhere	83101008
987	No access to internet	83101008
270	From home	83101009
498	From cell phone	83101009
204	From work	83101009
75	From elsewhere	83101009
1917	No access to internet	83101009
123	From home	83102001
858	From cell phone	83102001
90	From work	83102001
285	From elsewhere	83102001
3087	No access to internet	83102001
78	From home	83102002
537	From cell phone	83102002
39	From work	83102002
87	From elsewhere	83102002
1869	No access to internet	83102002
36	From home	83102003
189	From cell phone	83102003
30	From work	83102003
54	From elsewhere	83102003
1035	No access to internet	83102003
51	From home	83102004
435	From cell phone	83102004
42	From work	83102004
330	From elsewhere	83102004
2019	No access to internet	83102004
219	From home	83102005
666	From cell phone	83102005
168	From work	83102005
249	From elsewhere	83102005
1440	No access to internet	83102005
204	From home	83102006
657	From cell phone	83102006
72	From work	83102006
138	From elsewhere	83102006
2457	No access to internet	83102006
147	From home	83102007
426	From cell phone	83102007
93	From work	83102007
90	From elsewhere	83102007
1491	No access to internet	83102007
102	From home	83102008
630	From cell phone	83102008
66	From work	83102008
84	From elsewhere	83102008
3111	No access to internet	83102008
108	From home	83102009
564	From cell phone	83102009
72	From work	83102009
105	From elsewhere	83102009
2469	No access to internet	83102009
93	From home	83102010
507	From cell phone	83102010
30	From work	83102010
390	From elsewhere	83102010
1089	No access to internet	83102010
129	From home	83102011
300	From cell phone	83102011
96	From work	83102011
255	From elsewhere	83102011
819	No access to internet	83102011
180	From home	83102012
801	From cell phone	83102012
135	From work	83102012
891	From elsewhere	83102012
2982	No access to internet	83102012
114	From home	83102013
426	From cell phone	83102013
57	From work	83102013
588	From elsewhere	83102013
462	No access to internet	83102013
57	From home	83102014
741	From cell phone	83102014
81	From work	83102014
138	From elsewhere	83102014
4842	No access to internet	83102014
192	From home	83102015
1056	From cell phone	83102015
120	From work	83102015
681	From elsewhere	83102015
4281	No access to internet	83102015
105	From home	83102016
321	From cell phone	83102016
48	From work	83102016
222	From elsewhere	83102016
1386	No access to internet	83102016
174	From home	83102017
681	From cell phone	83102017
84	From work	83102017
408	From elsewhere	83102017
1431	No access to internet	83102017
1119	From home	83102018
723	From cell phone	83102018
519	From work	83102018
102	From elsewhere	83102018
948	No access to internet	83102018
336	From home	83102019
846	From cell phone	83102019
324	From work	83102019
171	From elsewhere	83102019
2835	No access to internet	83102019
654	From home	83102020
483	From cell phone	83102020
405	From work	83102020
132	From elsewhere	83102020
1092	No access to internet	83102020
1053	From home	83102021
1659	From cell phone	83102021
618	From work	83102021
306	From elsewhere	83102021
2337	No access to internet	83102021
321	From home	83102022
804	From cell phone	83102022
201	From work	83102022
159	From elsewhere	83102022
600	No access to internet	83102022
111	From home	83102023
621	From cell phone	83102023
84	From work	83102023
123	From elsewhere	83102023
2928	No access to internet	83102023
894	From home	83102024
504	From cell phone	83102024
477	From work	83102024
141	From elsewhere	83102024
735	No access to internet	83102024
72	From home	83102025
762	From cell phone	83102025
126	From work	83102025
117	From elsewhere	83102025
3780	No access to internet	83102025
462	From home	83102026
411	From cell phone	83102026
267	From work	83102026
216	From elsewhere	83102026
1428	No access to internet	83102026
315	From home	83102027
570	From cell phone	83102027
207	From work	83102027
96	From elsewhere	83102027
1449	No access to internet	83102027
72	From home	83102028
681	From cell phone	83102028
75	From work	83102028
303	From elsewhere	83102028
3654	No access to internet	83102028
186	From home	83102029
789	From cell phone	83102029
102	From work	83102029
255	From elsewhere	83102029
4893	No access to internet	83102029
102	From home	83102030
552	From cell phone	83102030
75	From work	83102030
159	From elsewhere	83102030
2070	No access to internet	83102030
81	From home	83102031
648	From cell phone	83102031
57	From work	83102031
183	From elsewhere	83102031
1605	No access to internet	83102031
141	From home	83102032
1101	From cell phone	83102032
78	From work	83102032
102	From elsewhere	83102032
3054	No access to internet	83102032
720	From home	83102033
696	From cell phone	83102033
327	From work	83102033
165	From elsewhere	83102033
1734	No access to internet	83102033
1236	From home	83102034
957	From cell phone	83102034
660	From work	83102034
93	From elsewhere	83102034
2142	No access to internet	83102034
39	From home	83103001
135	From cell phone	83103001
18	From work	83103001
0	From elsewhere	83103001
987	No access to internet	83103001
57	From home	83103002
489	From cell phone	83103002
54	From work	83103002
27	From elsewhere	83103002
3015	No access to internet	83103002
132	From home	83103003
480	From cell phone	83103003
69	From work	83103003
39	From elsewhere	83103003
1314	No access to internet	83103003
81	From home	83103004
249	From cell phone	83103004
69	From work	83103004
36	From elsewhere	83103004
1527	No access to internet	83103004
90	From home	83103005
228	From cell phone	83103005
99	From work	83103005
27	From elsewhere	83103005
909	No access to internet	83103005
102	From home	83103006
300	From cell phone	83103006
54	From work	83103006
24	From elsewhere	83103006
1629	No access to internet	83103006
180	From home	83103007
162	From cell phone	83103007
165	From work	83103007
15	From elsewhere	83103007
972	No access to internet	83103007
96	From home	83103008
507	From cell phone	83103008
75	From work	83103008
93	From elsewhere	83103008
2856	No access to internet	83103008
39	From home	83103009
111	From cell phone	83103009
18	From work	83103009
15	From elsewhere	83103009
1140	No access to internet	83103009
594	From home	83103010
753	From cell phone	83103010
300	From work	83103010
69	From elsewhere	83103010
1743	No access to internet	83103010
756	From home	83103011
846	From cell phone	83103011
525	From work	83103011
144	From elsewhere	83103011
993	No access to internet	83103011
1104	From home	83103012
696	From cell phone	83103012
672	From work	83103012
129	From elsewhere	83103012
1143	No access to internet	83103012
363	From home	83103013
540	From cell phone	83103013
279	From work	83103013
93	From elsewhere	83103013
762	No access to internet	83103013
615	From home	83103014
324	From cell phone	83103014
282	From work	83103014
60	From elsewhere	83103014
546	No access to internet	83103014
510	From home	83103015
276	From cell phone	83103015
243	From work	83103015
48	From elsewhere	83103015
597	No access to internet	83103015
315	From home	83103016
351	From cell phone	83103016
243	From work	83103016
114	From elsewhere	83103016
1008	No access to internet	83103016
144	From home	83103017
414	From cell phone	83103017
48	From work	83103017
45	From elsewhere	83103017
1725	No access to internet	83103017
66	From home	83103018
204	From cell phone	83103018
51	From work	83103018
114	From elsewhere	83103018
858	No access to internet	83103018
141	From home	83103019
384	From cell phone	83103019
66	From work	83103019
153	From elsewhere	83103019
999	No access to internet	83103019
132	From home	83103020
237	From cell phone	83103020
48	From work	83103020
78	From elsewhere	83103020
636	No access to internet	83103020
156	From home	83103021
420	From cell phone	83103021
81	From work	83103021
66	From elsewhere	83103021
894	No access to internet	83103021
33	From home	83103022
201	From cell phone	83103022
21	From work	83103022
21	From elsewhere	83103022
597	No access to internet	83103022
183	From home	83103023
555	From cell phone	83103023
129	From work	83103023
339	From elsewhere	83103023
2235	No access to internet	83103023
24	From home	83103024
162	From cell phone	83103024
0	From work	83103024
18	From elsewhere	83103024
237	No access to internet	83103024
105	From home	83103025
741	From cell phone	83103025
72	From work	83103025
189	From elsewhere	83103025
2814	No access to internet	83103025
6	From home	83103026
105	From cell phone	83103026
9	From work	83103026
27	From elsewhere	83103026
483	No access to internet	83103026
54	From home	83103027
453	From cell phone	83103027
48	From work	83103027
42	From elsewhere	83103027
1656	No access to internet	83103027
192	From home	83103028
1275	From cell phone	83103028
102	From work	83103028
246	From elsewhere	83103028
4893	No access to internet	83103028
39	From home	83103029
153	From cell phone	83103029
33	From work	83103029
18	From elsewhere	83103029
1569	No access to internet	83103029
42	From home	83104001
204	From cell phone	83104001
9	From work	83104001
30	From elsewhere	83104001
1314	No access to internet	83104001
24	From home	83104002
123	From cell phone	83104002
12	From work	83104002
45	From elsewhere	83104002
993	No access to internet	83104002
126	From home	83104003
321	From cell phone	83104003
27	From work	83104003
192	From elsewhere	83104003
1113	No access to internet	83104003
156	From home	83104004
558	From cell phone	83104004
63	From work	83104004
27	From elsewhere	83104004
987	No access to internet	83104004
57	From home	83104005
315	From cell phone	83104005
33	From work	83104005
24	From elsewhere	83104005
1518	No access to internet	83104005
159	From home	83104006
663	From cell phone	83104006
93	From work	83104006
33	From elsewhere	83104006
1320	No access to internet	83104006
111	From home	83104007
417	From cell phone	83104007
63	From work	83104007
78	From elsewhere	83104007
1143	No access to internet	83104007
174	From home	83104008
261	From cell phone	83104008
84	From work	83104008
36	From elsewhere	83104008
777	No access to internet	83104008
54	From home	83105001
621	From cell phone	83105001
42	From work	83105001
201	From elsewhere	83105001
1701	No access to internet	83105001
42	From home	83105002
411	From cell phone	83105002
42	From work	83105002
279	From elsewhere	83105002
2211	No access to internet	83105002
39	From home	83105003
405	From cell phone	83105003
27	From work	83105003
300	From elsewhere	83105003
1275	No access to internet	83105003
117	From home	83105004
870	From cell phone	83105004
168	From work	83105004
201	From elsewhere	83105004
3000	No access to internet	83105004
27	From home	83105005
396	From cell phone	83105005
18	From work	83105005
147	From elsewhere	83105005
1065	No access to internet	83105005
30	From home	83105006
414	From cell phone	83105006
57	From work	83105006
180	From elsewhere	83105006
2004	No access to internet	83105006
30	From home	83105007
369	From cell phone	83105007
24	From work	83105007
606	From elsewhere	83105007
1317	No access to internet	83105007
144	From home	83105008
342	From cell phone	83105008
18	From work	83105008
282	From elsewhere	83105008
2172	No access to internet	83105008
24	From home	83105009
321	From cell phone	83105009
12	From work	83105009
180	From elsewhere	83105009
1761	No access to internet	83105009
18	From home	83105010
459	From cell phone	83105010
9	From work	83105010
33	From elsewhere	83105010
1146	No access to internet	83105010
78	From home	83105011
462	From cell phone	83105011
15	From work	83105011
330	From elsewhere	83105011
1812	No access to internet	83105011
18	From home	83105012
276	From cell phone	83105012
12	From work	83105012
45	From elsewhere	83105012
1128	No access to internet	83105012
75	From home	83105013
474	From cell phone	83105013
42	From work	83105013
234	From elsewhere	83105013
1029	No access to internet	83105013
66	From home	83105014
762	From cell phone	83105014
144	From work	83105014
105	From elsewhere	83105014
2832	No access to internet	83105014
24	From home	83105015
384	From cell phone	83105015
12	From work	83105015
255	From elsewhere	83105015
1548	No access to internet	83105015
66	From home	83105016
330	From cell phone	83105016
36	From work	83105016
159	From elsewhere	83105016
1638	No access to internet	83105016
48	From home	83105017
420	From cell phone	83105017
36	From work	83105017
159	From elsewhere	83105017
1518	No access to internet	83105017
108	From home	83105018
396	From cell phone	83105018
39	From work	83105018
360	From elsewhere	83105018
1614	No access to internet	83105018
30	From home	83105019
588	From cell phone	83105019
33	From work	83105019
78	From elsewhere	83105019
2025	No access to internet	83105019
75	From home	83105020
648	From cell phone	83105020
30	From work	83105020
213	From elsewhere	83105020
2721	No access to internet	83105020
33	From home	83105021
291	From cell phone	83105021
18	From work	83105021
336	From elsewhere	83105021
1446	No access to internet	83105021
33	From home	83105022
591	From cell phone	83105022
48	From work	83105022
105	From elsewhere	83105022
1884	No access to internet	83105022
57	From home	83105023
417	From cell phone	83105023
21	From work	83105023
105	From elsewhere	83105023
1506	No access to internet	83105023
27	From home	83105024
282	From cell phone	83105024
21	From work	83105024
945	From elsewhere	83105024
1194	No access to internet	83105024
51	From home	83105025
426	From cell phone	83105025
51	From work	83105025
159	From elsewhere	83105025
1338	No access to internet	83105025
36	From home	83105026
216	From cell phone	83105026
27	From work	83105026
132	From elsewhere	83105026
1350	No access to internet	83105026
21	From home	83105027
267	From cell phone	83105027
15	From work	83105027
93	From elsewhere	83105027
1488	No access to internet	83105027
27	From home	83105028
303	From cell phone	83105028
30	From work	83105028
375	From elsewhere	83105028
930	No access to internet	83105028
48	From home	83105029
249	From cell phone	83105029
18	From work	83105029
192	From elsewhere	83105029
828	No access to internet	83105029
42	From home	83105030
375	From cell phone	83105030
15	From work	83105030
111	From elsewhere	83105030
2004	No access to internet	83105030
33	From home	83105031
318	From cell phone	83105031
24	From work	83105031
84	From elsewhere	83105031
1653	No access to internet	83105031
174	From home	83105032
525	From cell phone	83105032
153	From work	83105032
63	From elsewhere	83105032
885	No access to internet	83105032
45	From home	83106001
216	From cell phone	83106001
48	From work	83106001
150	From elsewhere	83106001
1590	No access to internet	83106001
51	From home	83106002
501	From cell phone	83106002
42	From work	83106002
366	From elsewhere	83106002
1614	No access to internet	83106002
36	From home	83106003
246	From cell phone	83106003
30	From work	83106003
309	From elsewhere	83106003
1209	No access to internet	83106003
45	From home	83106004
426	From cell phone	83106004
21	From work	83106004
297	From elsewhere	83106004
996	No access to internet	83106004
72	From home	83106005
432	From cell phone	83106005
87	From work	83106005
234	From elsewhere	83106005
1317	No access to internet	83106005
72	From home	83106006
291	From cell phone	83106006
57	From work	83106006
390	From elsewhere	83106006
1641	No access to internet	83106006
18	From home	83106007
153	From cell phone	83106007
12	From work	83106007
120	From elsewhere	83106007
1347	No access to internet	83106007
27	From home	83106008
297	From cell phone	83106008
18	From work	83106008
75	From elsewhere	83106008
1302	No access to internet	83106008
15	From home	83106009
180	From cell phone	83106009
24	From work	83106009
162	From elsewhere	83106009
798	No access to internet	83106009
15	From home	83106010
237	From cell phone	83106010
15	From work	83106010
174	From elsewhere	83106010
1389	No access to internet	83106010
21	From home	83106011
207	From cell phone	83106011
18	From work	83106011
84	From elsewhere	83106011
1530	No access to internet	83106011
24	From home	83106012
249	From cell phone	83106012
15	From work	83106012
36	From elsewhere	83106012
1854	No access to internet	83106012
48	From home	83106013
237	From cell phone	83106013
6	From work	83106013
192	From elsewhere	83106013
1275	No access to internet	83106013
12	From home	83106014
189	From cell phone	83106014
24	From work	83106014
171	From elsewhere	83106014
1203	No access to internet	83106014
21	From home	83106015
324	From cell phone	83106015
30	From work	83106015
111	From elsewhere	83106015
1827	No access to internet	83106015
33	From home	83106016
327	From cell phone	83106016
18	From work	83106016
81	From elsewhere	83106016
585	No access to internet	83106016
45	From home	83106017
459	From cell phone	83106017
45	From work	83106017
213	From elsewhere	83106017
1698	No access to internet	83106017
27	From home	83106018
573	From cell phone	83106018
24	From work	83106018
39	From elsewhere	83106018
1113	No access to internet	83106018
24	From home	83106019
240	From cell phone	83106019
24	From work	83106019
33	From elsewhere	83106019
2106	No access to internet	83106019
12	From home	83106020
312	From cell phone	83106020
12	From work	83106020
225	From elsewhere	83106020
1164	No access to internet	83106020
24	From home	83106021
453	From cell phone	83106021
18	From work	83106021
135	From elsewhere	83106021
1407	No access to internet	83106021
24	From home	83106022
216	From cell phone	83106022
6	From work	83106022
150	From elsewhere	83106022
2061	No access to internet	83106022
24	From home	83106023
321	From cell phone	83106023
21	From work	83106023
51	From elsewhere	83106023
1134	No access to internet	83106023
39	From home	83106024
270	From cell phone	83106024
33	From work	83106024
300	From elsewhere	83106024
2352	No access to internet	83106024
18	From home	83106025
387	From cell phone	83106025
15	From work	83106025
42	From elsewhere	83106025
1440	No access to internet	83106025
18	From home	83106026
306	From cell phone	83106026
30	From work	83106026
162	From elsewhere	83106026
1845	No access to internet	83106026
15	From home	83106027
255	From cell phone	83106027
15	From work	83106027
24	From elsewhere	83106027
1602	No access to internet	83106027
36	From home	83106028
300	From cell phone	83106028
33	From work	83106028
171	From elsewhere	83106028
1242	No access to internet	83106028
69	From home	83106029
438	From cell phone	83106029
45	From work	83106029
84	From elsewhere	83106029
1701	No access to internet	83106029
30	From home	83106030
297	From cell phone	83106030
18	From work	83106030
27	From elsewhere	83106030
1842	No access to internet	83106030
9	From home	83106031
402	From cell phone	83106031
33	From work	83106031
84	From elsewhere	83106031
1749	No access to internet	83106031
75	From home	83201001
267	From cell phone	83201001
42	From work	83201001
105	From elsewhere	83201001
558	No access to internet	83201001
123	From home	83201002
462	From cell phone	83201002
117	From work	83201002
96	From elsewhere	83201002
2121	No access to internet	83201002
177	From home	83201003
801	From cell phone	83201003
138	From work	83201003
30	From elsewhere	83201003
2118	No access to internet	83201003
141	From home	83201004
222	From cell phone	83201004
81	From work	83201004
138	From elsewhere	83201004
2106	No access to internet	83201004
114	From home	83201005
261	From cell phone	83201005
90	From work	83201005
84	From elsewhere	83201005
2001	No access to internet	83201005
36	From home	83201006
528	From cell phone	83201006
48	From work	83201006
42	From elsewhere	83201006
1653	No access to internet	83201006
294	From home	83201007
381	From cell phone	83201007
162	From work	83201007
42	From elsewhere	83201007
2610	No access to internet	83201007
27	From home	83201008
309	From cell phone	83201008
24	From work	83201008
27	From elsewhere	83201008
1806	No access to internet	83201008
36	From home	83201009
396	From cell phone	83201009
30	From work	83201009
48	From elsewhere	83201009
1872	No access to internet	83201009
162	From home	83201010
297	From cell phone	83201010
78	From work	83201010
45	From elsewhere	83201010
1704	No access to internet	83201010
54	From home	83201011
267	From cell phone	83201011
87	From work	83201011
42	From elsewhere	83201011
2295	No access to internet	83201011
279	From home	83201012
174	From cell phone	83201012
96	From work	83201012
30	From elsewhere	83201012
378	No access to internet	83201012
45	From home	83201013
144	From cell phone	83201013
81	From work	83201013
21	From elsewhere	83201013
888	No access to internet	83201013
483	From home	83201014
612	From cell phone	83201014
189	From work	83201014
153	From elsewhere	83201014
1917	No access to internet	83201014
447	From home	83202001
1563	From cell phone	83202001
225	From work	83202001
300	From elsewhere	83202001
3822	No access to internet	83202001
102	From home	83202002
1497	From cell phone	83202002
51	From work	83202002
180	From elsewhere	83202002
3471	No access to internet	83202002
105	From home	83202003
909	From cell phone	83202003
87	From work	83202003
102	From elsewhere	83202003
3843	No access to internet	83202003
72	From home	83202004
435	From cell phone	83202004
36	From work	83202004
255	From elsewhere	83202004
1566	No access to internet	83202004
66	From home	83202005
510	From cell phone	83202005
51	From work	83202005
117	From elsewhere	83202005
3474	No access to internet	83202005
96	From home	83202006
756	From cell phone	83202006
51	From work	83202006
63	From elsewhere	83202006
3216	No access to internet	83202006
45	From home	83202007
720	From cell phone	83202007
33	From work	83202007
42	From elsewhere	83202007
2475	No access to internet	83202007
309	From home	83202008
852	From cell phone	83202008
135	From work	83202008
123	From elsewhere	83202008
3567	No access to internet	83202008
45	From home	83202009
807	From cell phone	83202009
42	From work	83202009
96	From elsewhere	83202009
2841	No access to internet	83202009
39	From home	83202010
534	From cell phone	83202010
48	From work	83202010
342	From elsewhere	83202010
2610	No access to internet	83202010
57	From home	83202011
678	From cell phone	83202011
42	From work	83202011
117	From elsewhere	83202011
3231	No access to internet	83202011
354	From home	83202012
672	From cell phone	83202012
246	From work	83202012
60	From elsewhere	83202012
4470	No access to internet	83202012
147	From home	83202013
633	From cell phone	83202013
54	From work	83202013
33	From elsewhere	83202013
1893	No access to internet	83202013
789	From home	83202014
1140	From cell phone	83202014
648	From work	83202014
144	From elsewhere	83202014
2871	No access to internet	83202014
1137	From home	83202015
864	From cell phone	83202015
879	From work	83202015
138	From elsewhere	83202015
861	No access to internet	83202015
780	From home	83202016
675	From cell phone	83202016
615	From work	83202016
105	From elsewhere	83202016
1257	No access to internet	83202016
1464	From home	83202017
903	From cell phone	83202017
882	From work	83202017
99	From elsewhere	83202017
921	No access to internet	83202017
399	From home	83202018
1152	From cell phone	83202018
366	From work	83202018
108	From elsewhere	83202018
2796	No access to internet	83202018
273	From home	83202019
1335	From cell phone	83202019
258	From work	83202019
345	From elsewhere	83202019
2109	No access to internet	83202019
207	From home	83202020
864	From cell phone	83202020
255	From work	83202020
162	From elsewhere	83202020
2487	No access to internet	83202020
168	From home	83202021
1053	From cell phone	83202021
177	From work	83202021
264	From elsewhere	83202021
2709	No access to internet	83202021
45	From home	83202022
804	From cell phone	83202022
63	From work	83202022
189	From elsewhere	83202022
2580	No access to internet	83202022
60	From home	83202023
531	From cell phone	83202023
66	From work	83202023
60	From elsewhere	83202023
1773	No access to internet	83202023
54	From home	83202024
498	From cell phone	83202024
21	From work	83202024
174	From elsewhere	83202024
2097	No access to internet	83202024
90	From home	83202025
738	From cell phone	83202025
60	From work	83202025
54	From elsewhere	83202025
3054	No access to internet	83202025
165	From home	83202026
1185	From cell phone	83202026
123	From work	83202026
171	From elsewhere	83202026
3003	No access to internet	83202026
66	From home	83202027
963	From cell phone	83202027
84	From work	83202027
75	From elsewhere	83202027
3804	No access to internet	83202027
129	From home	83202028
957	From cell phone	83202028
87	From work	83202028
231	From elsewhere	83202028
2631	No access to internet	83202028
84	From home	83202029
1014	From cell phone	83202029
72	From work	83202029
111	From elsewhere	83202029
2715	No access to internet	83202029
1017	From home	83202030
642	From cell phone	83202030
555	From work	83202030
123	From elsewhere	83202030
999	No access to internet	83202030
48	From home	83202031
435	From cell phone	83202031
51	From work	83202031
96	From elsewhere	83202031
2034	No access to internet	83202031
171	From home	83202032
1155	From cell phone	83202032
180	From work	83202032
282	From elsewhere	83202032
3606	No access to internet	83202032
270	From home	83202033
888	From cell phone	83202033
222	From work	83202033
210	From elsewhere	83202033
2091	No access to internet	83202033
90	From home	83202034
525	From cell phone	83202034
51	From work	83202034
45	From elsewhere	83202034
2520	No access to internet	83202034
66	From home	83202035
726	From cell phone	83202035
66	From work	83202035
123	From elsewhere	83202035
3159	No access to internet	83202035
69	From home	83202036
714	From cell phone	83202036
39	From work	83202036
123	From elsewhere	83202036
2244	No access to internet	83202036
51	From home	83202037
726	From cell phone	83202037
57	From work	83202037
54	From elsewhere	83202037
2964	No access to internet	83202037
708	From home	83202038
1485	From cell phone	83202038
720	From work	83202038
204	From elsewhere	83202038
3684	No access to internet	83202038
153	From home	83202039
906	From cell phone	83202039
360	From work	83202039
237	From elsewhere	83202039
2640	No access to internet	83202039
81	From home	83203001
318	From cell phone	83203001
30	From work	83203001
18	From elsewhere	83203001
1389	No access to internet	83203001
48	From home	83203002
219	From cell phone	83203002
75	From work	83203002
27	From elsewhere	83203002
2547	No access to internet	83203002
108	From home	83203003
687	From cell phone	83203003
96	From work	83203003
63	From elsewhere	83203003
2202	No access to internet	83203003
57	From home	83203004
444	From cell phone	83203004
27	From work	83203004
48	From elsewhere	83203004
1800	No access to internet	83203004
99	From home	83203005
459	From cell phone	83203005
117	From work	83203005
69	From elsewhere	83203005
921	No access to internet	83203005
57	From home	83203006
552	From cell phone	83203006
72	From work	83203006
72	From elsewhere	83203006
912	No access to internet	83203006
33	From home	83203007
363	From cell phone	83203007
48	From work	83203007
21	From elsewhere	83203007
888	No access to internet	83203007
315	From home	83203008
402	From cell phone	83203008
153	From work	83203008
132	From elsewhere	83203008
1722	No access to internet	83203008
357	From home	83203009
588	From cell phone	83203009
180	From work	83203009
90	From elsewhere	83203009
648	No access to internet	83203009
78	From home	83204001
417	From cell phone	83204001
60	From work	83204001
75	From elsewhere	83204001
2511	No access to internet	83204001
36	From home	83204002
426	From cell phone	83204002
30	From work	83204002
75	From elsewhere	83204002
4566	No access to internet	83204002
66	From home	83204003
600	From cell phone	83204003
27	From work	83204003
201	From elsewhere	83204003
3297	No access to internet	83204003
159	From home	83204004
465	From cell phone	83204004
48	From work	83204004
87	From elsewhere	83204004
1362	No access to internet	83204004
48	From home	83204005
528	From cell phone	83204005
21	From work	83204005
39	From elsewhere	83204005
2097	No access to internet	83204005
174	From home	83204006
468	From cell phone	83204006
147	From work	83204006
177	From elsewhere	83204006
3903	No access to internet	83204006
177	From home	83204007
666	From cell phone	83204007
96	From work	83204007
81	From elsewhere	83204007
5175	No access to internet	83204007
24	From home	83204008
324	From cell phone	83204008
18	From work	83204008
222	From elsewhere	83204008
2502	No access to internet	83204008
210	From home	83204009
678	From cell phone	83204009
42	From work	83204009
57	From elsewhere	83204009
2535	No access to internet	83204009
42	From home	83204010
546	From cell phone	83204010
45	From work	83204010
153	From elsewhere	83204010
2319	No access to internet	83204010
45	From home	83204011
303	From cell phone	83204011
21	From work	83204011
36	From elsewhere	83204011
2508	No access to internet	83204011
39	From home	83204012
582	From cell phone	83204012
15	From work	83204012
75	From elsewhere	83204012
1446	No access to internet	83204012
57	From home	83204013
375	From cell phone	83204013
6	From work	83204013
345	From elsewhere	83204013
1101	No access to internet	83204013
30	From home	83204014
357	From cell phone	83204014
12	From work	83204014
21	From elsewhere	83204014
1878	No access to internet	83204014
27	From home	83204015
759	From cell phone	83204015
21	From work	83204015
21	From elsewhere	83204015
1821	No access to internet	83204015
30	From home	83204016
315	From cell phone	83204016
18	From work	83204016
6	From elsewhere	83204016
1863	No access to internet	83204016
42	From home	83204017
330	From cell phone	83204017
12	From work	83204017
63	From elsewhere	83204017
1212	No access to internet	83204017
54	From home	83204018
615	From cell phone	83204018
15	From work	83204018
18	From elsewhere	83204018
1356	No access to internet	83204018
33	From home	83204019
360	From cell phone	83204019
18	From work	83204019
30	From elsewhere	83204019
1479	No access to internet	83204019
111	From home	83204020
1059	From cell phone	83204020
66	From work	83204020
144	From elsewhere	83204020
2778	No access to internet	83204020
144	From home	83204021
723	From cell phone	83204021
87	From work	83204021
72	From elsewhere	83204021
3159	No access to internet	83204021
207	From home	83204022
696	From cell phone	83204022
72	From work	83204022
159	From elsewhere	83204022
1917	No access to internet	83204022
24	From home	83204023
351	From cell phone	83204023
9	From work	83204023
9	From elsewhere	83204023
1227	No access to internet	83204023
66	From home	83204024
381	From cell phone	83204024
42	From work	83204024
96	From elsewhere	83204024
2097	No access to internet	83204024
51	From home	83204025
456	From cell phone	83204025
18	From work	83204025
12	From elsewhere	83204025
1551	No access to internet	83204025
33	From home	83204026
285	From cell phone	83204026
21	From work	83204026
153	From elsewhere	83204026
936	No access to internet	83204026
114	From home	83204027
1146	From cell phone	83204027
48	From work	83204027
72	From elsewhere	83204027
1437	No access to internet	83204027
30	From home	83204028
261	From cell phone	83204028
27	From work	83204028
18	From elsewhere	83204028
894	No access to internet	83204028
141	From home	83204029
567	From cell phone	83204029
69	From work	83204029
69	From elsewhere	83204029
2232	No access to internet	83204029
345	From home	83204030
546	From cell phone	83204030
255	From work	83204030
93	From elsewhere	83204030
3825	No access to internet	83204030
30	From home	83204031
339	From cell phone	83204031
24	From work	83204031
6	From elsewhere	83204031
1365	No access to internet	83204031
30	From home	83204032
336	From cell phone	83204032
30	From work	83204032
72	From elsewhere	83204032
1809	No access to internet	83204032
60	From home	83204033
603	From cell phone	83204033
24	From work	83204033
93	From elsewhere	83204033
2088	No access to internet	83204033
192	From home	83205001
1200	From cell phone	83205001
177	From work	83205001
168	From elsewhere	83205001
3435	No access to internet	83205001
24	From home	83205002
207	From cell phone	83205002
12	From work	83205002
30	From elsewhere	83205002
2418	No access to internet	83205002
45	From home	83205003
471	From cell phone	83205003
30	From work	83205003
174	From elsewhere	83205003
2769	No access to internet	83205003
48	From home	83205004
333	From cell phone	83205004
24	From work	83205004
141	From elsewhere	83205004
2115	No access to internet	83205004
18	From home	83205005
276	From cell phone	83205005
12	From work	83205005
36	From elsewhere	83205005
2100	No access to internet	83205005
51	From home	83205006
633	From cell phone	83205006
21	From work	83205006
333	From elsewhere	83205006
3267	No access to internet	83205006
117	From home	83205007
525	From cell phone	83205007
33	From work	83205007
147	From elsewhere	83205007
3204	No access to internet	83205007
165	From home	83205008
1017	From cell phone	83205008
54	From work	83205008
216	From elsewhere	83205008
1908	No access to internet	83205008
198	From home	83205009
1185	From cell phone	83205009
111	From work	83205009
189	From elsewhere	83205009
3768	No access to internet	83205009
36	From home	83205010
450	From cell phone	83205010
33	From work	83205010
288	From elsewhere	83205010
2592	No access to internet	83205010
27	From home	83205011
213	From cell phone	83205011
18	From work	83205011
126	From elsewhere	83205011
3219	No access to internet	83205011
33	From home	83205012
417	From cell phone	83205012
36	From work	83205012
237	From elsewhere	83205012
2562	No access to internet	83205012
21	From home	83205013
390	From cell phone	83205013
15	From work	83205013
39	From elsewhere	83205013
2478	No access to internet	83205013
45	From home	83205014
525	From cell phone	83205014
12	From work	83205014
159	From elsewhere	83205014
2376	No access to internet	83205014
51	From home	83205015
372	From cell phone	83205015
33	From work	83205015
123	From elsewhere	83205015
3090	No access to internet	83205015
18	From home	83205016
321	From cell phone	83205016
24	From work	83205016
102	From elsewhere	83205016
2295	No access to internet	83205016
99	From home	83205017
540	From cell phone	83205017
57	From work	83205017
189	From elsewhere	83205017
3171	No access to internet	83205017
111	From home	83205018
906	From cell phone	83205018
75	From work	83205018
150	From elsewhere	83205018
3918	No access to internet	83205018
45	From home	83205019
651	From cell phone	83205019
33	From work	83205019
222	From elsewhere	83205019
3093	No access to internet	83205019
36	From home	83205020
486	From cell phone	83205020
42	From work	83205020
54	From elsewhere	83205020
2364	No access to internet	83205020
36	From home	83205021
483	From cell phone	83205021
27	From work	83205021
60	From elsewhere	83205021
2712	No access to internet	83205021
36	From home	83205022
345	From cell phone	83205022
21	From work	83205022
111	From elsewhere	83205022
2787	No access to internet	83205022
84	From home	83205023
732	From cell phone	83205023
36	From work	83205023
66	From elsewhere	83205023
2436	No access to internet	83205023
60	From home	83205024
1128	From cell phone	83205024
24	From work	83205024
129	From elsewhere	83205024
2523	No access to internet	83205024
48	From home	83205025
594	From cell phone	83205025
33	From work	83205025
96	From elsewhere	83205025
3219	No access to internet	83205025
60	From home	83205026
540	From cell phone	83205026
39	From work	83205026
180	From elsewhere	83205026
2352	No access to internet	83205026
48	From home	83205027
585	From cell phone	83205027
33	From work	83205027
87	From elsewhere	83205027
2859	No access to internet	83205027
42	From home	83205028
441	From cell phone	83205028
12	From work	83205028
237	From elsewhere	83205028
1695	No access to internet	83205028
48	From home	83205029
300	From cell phone	83205029
30	From work	83205029
63	From elsewhere	83205029
2415	No access to internet	83205029
57	From home	83205030
921	From cell phone	83205030
18	From work	83205030
480	From elsewhere	83205030
2589	No access to internet	83205030
270	From home	83205031
1119	From cell phone	83205031
159	From work	83205031
597	From elsewhere	83205031
2886	No access to internet	83205031
33	From home	83205032
354	From cell phone	83205032
30	From work	83205032
180	From elsewhere	83205032
2763	No access to internet	83205032
93	From home	83205033
681	From cell phone	83205033
42	From work	83205033
285	From elsewhere	83205033
3087	No access to internet	83205033
147	From home	83205034
798	From cell phone	83205034
336	From work	83205034
105	From elsewhere	83205034
3573	No access to internet	83205034
69	From home	83205035
564	From cell phone	83205035
114	From work	83205035
150	From elsewhere	83205035
2997	No access to internet	83205035
27	From home	83205036
663	From cell phone	83205036
18	From work	83205036
318	From elsewhere	83205036
2295	No access to internet	83205036
60	From home	83205037
690	From cell phone	83205037
27	From work	83205037
333	From elsewhere	83205037
1788	No access to internet	83205037
15	From home	63701001
132	From cell phone	63701001
15	From work	63701001
54	From elsewhere	63701001
1818	No access to internet	63701001
39	From home	63701002
318	From cell phone	63701002
15	From work	63701002
33	From elsewhere	63701002
1623	No access to internet	63701002
36	From home	63701003
231	From cell phone	63701003
18	From work	63701003
105	From elsewhere	63701003
2103	No access to internet	63701003
9	From home	63701004
147	From cell phone	63701004
30	From work	63701004
75	From elsewhere	63701004
1851	No access to internet	63701004
42	From home	63701005
267	From cell phone	63701005
15	From work	63701005
102	From elsewhere	63701005
1353	No access to internet	63701005
18	From home	63701006
231	From cell phone	63701006
9	From work	63701006
9	From elsewhere	63701006
1362	No access to internet	63701006
27	From home	63701007
186	From cell phone	63701007
36	From work	63701007
207	From elsewhere	63701007
1368	No access to internet	63701007
18	From home	63701008
132	From cell phone	63701008
15	From work	63701008
123	From elsewhere	63701008
1197	No access to internet	63701008
21	From home	63701009
216	From cell phone	63701009
15	From work	63701009
30	From elsewhere	63701009
924	No access to internet	63701009
33	From home	63701010
213	From cell phone	63701010
30	From work	63701010
36	From elsewhere	63701010
1539	No access to internet	63701010
15	From home	63701011
375	From cell phone	63701011
18	From work	63701011
57	From elsewhere	63701011
1356	No access to internet	63701011
57	From home	63701012
414	From cell phone	63701012
45	From work	63701012
156	From elsewhere	63701012
2136	No access to internet	63701012
33	From home	63701013
378	From cell phone	63701013
81	From work	63701013
219	From elsewhere	63701013
2781	No access to internet	63701013
24	From home	63701014
225	From cell phone	63701014
33	From work	63701014
72	From elsewhere	63701014
1617	No access to internet	63701014
12	From home	63701015
147	From cell phone	63701015
21	From work	63701015
18	From elsewhere	63701015
903	No access to internet	63701015
12	From home	63701016
240	From cell phone	63701016
24	From work	63701016
117	From elsewhere	63701016
1524	No access to internet	63701016
9	From home	63701017
129	From cell phone	63701017
6	From work	63701017
9	From elsewhere	63701017
1071	No access to internet	63701017
18	From home	63701018
183	From cell phone	63701018
15	From work	63701018
54	From elsewhere	63701018
990	No access to internet	63701018
42	From home	63701019
201	From cell phone	63701019
18	From work	63701019
204	From elsewhere	63701019
1320	No access to internet	63701019
48	From home	63701020
162	From cell phone	63701020
9	From work	63701020
144	From elsewhere	63701020
1332	No access to internet	63701020
18	From home	63701021
231	From cell phone	63701021
15	From work	63701021
36	From elsewhere	63701021
1350	No access to internet	63701021
33	From home	63701022
450	From cell phone	63701022
33	From work	63701022
198	From elsewhere	63701022
1500	No access to internet	63701022
21	From home	63701023
225	From cell phone	63701023
6	From work	63701023
228	From elsewhere	63701023
1458	No access to internet	63701023
24	From home	63701024
186	From cell phone	63701024
9	From work	63701024
51	From elsewhere	63701024
1095	No access to internet	63701024
27	From home	63701025
180	From cell phone	63701025
12	From work	63701025
96	From elsewhere	63701025
1416	No access to internet	63701025
9	From home	63701026
345	From cell phone	63701026
18	From work	63701026
117	From elsewhere	63701026
1326	No access to internet	63701026
21	From home	63701027
120	From cell phone	63701027
21	From work	63701027
57	From elsewhere	63701027
945	No access to internet	63701027
30	From home	63701028
363	From cell phone	63701028
48	From work	63701028
105	From elsewhere	63701028
2103	No access to internet	63701028
33	From home	63702001
390	From cell phone	63702001
45	From work	63702001
150	From elsewhere	63702001
2529	No access to internet	63702001
57	From home	63702002
240	From cell phone	63702002
27	From work	63702002
258	From elsewhere	63702002
1980	No access to internet	63702002
33	From home	63702003
738	From cell phone	63702003
69	From work	63702003
231	From elsewhere	63702003
2214	No access to internet	63702003
81	From home	63702004
618	From cell phone	63702004
24	From work	63702004
84	From elsewhere	63702004
1776	No access to internet	63702004
51	From home	63702005
561	From cell phone	63702005
45	From work	63702005
198	From elsewhere	63702005
2538	No access to internet	63702005
42	From home	63702006
507	From cell phone	63702006
27	From work	63702006
90	From elsewhere	63702006
1803	No access to internet	63702006
30	From home	63702007
585	From cell phone	63702007
24	From work	63702007
66	From elsewhere	63702007
2505	No access to internet	63702007
42	From home	63702008
333	From cell phone	63702008
45	From work	63702008
294	From elsewhere	63702008
2010	No access to internet	63702008
123	From home	63702009
810	From cell phone	63702009
114	From work	63702009
270	From elsewhere	63702009
2943	No access to internet	63702009
87	From home	63702010
942	From cell phone	63702010
168	From work	63702010
606	From elsewhere	63702010
5217	No access to internet	63702010
333	From home	63702011
1176	From cell phone	63702011
213	From work	63702011
465	From elsewhere	63702011
1536	No access to internet	63702011
117	From home	63702012
594	From cell phone	63702012
84	From work	63702012
267	From elsewhere	63702012
1665	No access to internet	63702012
57	From home	63702013
357	From cell phone	63702013
54	From work	63702013
30	From elsewhere	63702013
2457	No access to internet	63702013
306	From home	63702014
666	From cell phone	63702014
183	From work	63702014
189	From elsewhere	63702014
6816	No access to internet	63702014
126	From home	63702015
603	From cell phone	63702015
78	From work	63702015
246	From elsewhere	63702015
1659	No access to internet	63702015
84	From home	63702016
585	From cell phone	63702016
135	From work	63702016
360	From elsewhere	63702016
2493	No access to internet	63702016
51	From home	63702017
771	From cell phone	63702017
60	From work	63702017
423	From elsewhere	63702017
3342	No access to internet	63702017
39	From home	63702018
483	From cell phone	63702018
27	From work	63702018
105	From elsewhere	63702018
2529	No access to internet	63702018
39	From home	63702019
483	From cell phone	63702019
54	From work	63702019
75	From elsewhere	63702019
2922	No access to internet	63702019
129	From home	63702020
771	From cell phone	63702020
147	From work	63702020
267	From elsewhere	63702020
2184	No access to internet	63702020
399	From home	63702021
795	From cell phone	63702021
282	From work	63702021
132	From elsewhere	63702021
3342	No access to internet	63702021
588	From home	63702022
798	From cell phone	63702022
348	From work	63702022
87	From elsewhere	63702022
3312	No access to internet	63702022
303	From home	63702023
441	From cell phone	63702023
195	From work	63702023
63	From elsewhere	63702023
738	No access to internet	63702023
60	From home	63702024
528	From cell phone	63702024
120	From work	63702024
240	From elsewhere	63702024
3222	No access to internet	63702024
435	From home	63702025
2151	From cell phone	63702025
324	From work	63702025
255	From elsewhere	63702025
9243	No access to internet	63702025
111	From home	63702026
846	From cell phone	63702026
162	From work	63702026
105	From elsewhere	63702026
9546	No access to internet	63702026
354	From home	63702027
807	From cell phone	63702027
264	From work	63702027
129	From elsewhere	63702027
4794	No access to internet	63702027
66	From home	63702028
465	From cell phone	63702028
60	From work	63702028
90	From elsewhere	63702028
3075	No access to internet	63702028
972	From home	63702029
1428	From cell phone	63702029
366	From work	63702029
141	From elsewhere	63702029
6612	No access to internet	63702029
1017	From home	63702030
903	From cell phone	63702030
570	From work	63702030
111	From elsewhere	63702030
3507	No access to internet	63702030
45	From home	63702031
489	From cell phone	63702031
87	From work	63702031
51	From elsewhere	63702031
2406	No access to internet	63702031
51	From home	63702032
615	From cell phone	63702032
66	From work	63702032
30	From elsewhere	63702032
2577	No access to internet	63702032
642	From home	63702033
729	From cell phone	63702033
378	From work	63702033
102	From elsewhere	63702033
3540	No access to internet	63702033
39	From home	63702034
495	From cell phone	63702034
21	From work	63702034
39	From elsewhere	63702034
2562	No access to internet	63702034
78	From home	63702035
597	From cell phone	63702035
96	From work	63702035
162	From elsewhere	63702035
3789	No access to internet	63702035
60	From home	63702036
387	From cell phone	63702036
42	From work	63702036
198	From elsewhere	63702036
1971	No access to internet	63702036
144	From home	63703001
897	From cell phone	63703001
117	From work	63703001
111	From elsewhere	63703001
4032	No access to internet	63703001
120	From home	63703002
1131	From cell phone	63703002
99	From work	63703002
309	From elsewhere	63703002
3534	No access to internet	63703002
120	From home	63703003
420	From cell phone	63703003
75	From work	63703003
159	From elsewhere	63703003
3975	No access to internet	63703003
159	From home	63703004
1065	From cell phone	63703004
123	From work	63703004
183	From elsewhere	63703004
5565	No access to internet	63703004
96	From home	63703005
588	From cell phone	63703005
111	From work	63703005
318	From elsewhere	63703005
2271	No access to internet	63703005
174	From home	63703006
864	From cell phone	63703006
123	From work	63703006
348	From elsewhere	63703006
2925	No access to internet	63703006
147	From home	63703007
1494	From cell phone	63703007
129	From work	63703007
399	From elsewhere	63703007
4611	No access to internet	63703007
1107	From home	63703008
1650	From cell phone	63703008
915	From work	63703008
495	From elsewhere	63703008
2517	No access to internet	63703008
165	From home	63703009
516	From cell phone	63703009
111	From work	63703009
216	From elsewhere	63703009
2112	No access to internet	63703009
336	From home	63703010
1011	From cell phone	63703010
219	From work	63703010
321	From elsewhere	63703010
4455	No access to internet	63703010
204	From home	63703011
1038	From cell phone	63703011
162	From work	63703011
198	From elsewhere	63703011
5160	No access to internet	63703011
162	From home	63703012
1116	From cell phone	63703012
129	From work	63703012
132	From elsewhere	63703012
4116	No access to internet	63703012
231	From home	63703013
429	From cell phone	63703013
204	From work	63703013
243	From elsewhere	63703013
1392	No access to internet	63703013
840	From home	63703014
567	From cell phone	63703014
474	From work	63703014
63	From elsewhere	63703014
1050	No access to internet	63703014
1059	From home	63703015
678	From cell phone	63703015
642	From work	63703015
123	From elsewhere	63703015
1314	No access to internet	63703015
747	From home	63703016
717	From cell phone	63703016
417	From work	63703016
117	From elsewhere	63703016
1083	No access to internet	63703016
1629	From home	63703017
1791	From cell phone	63703017
1146	From work	63703017
231	From elsewhere	63703017
2142	No access to internet	63703017
585	From home	63703018
1179	From cell phone	63703018
393	From work	63703018
258	From elsewhere	63703018
6096	No access to internet	63703018
441	From home	63703019
2070	From cell phone	63703019
378	From work	63703019
279	From elsewhere	63703019
4956	No access to internet	63703019
69	From home	63703020
369	From cell phone	63703020
69	From work	63703020
171	From elsewhere	63703020
2343	No access to internet	63703020
105	From home	63703021
507	From cell phone	63703021
111	From work	63703021
234	From elsewhere	63703021
4962	No access to internet	63703021
225	From home	63703022
1224	From cell phone	63703022
162	From work	63703022
222	From elsewhere	63703022
4830	No access to internet	63703022
78	From home	63703023
942	From cell phone	63703023
102	From work	63703023
174	From elsewhere	63703023
3891	No access to internet	63703023
117	From home	63703024
2274	From cell phone	63703024
93	From work	63703024
60	From elsewhere	63703024
8391	No access to internet	63703024
93	From home	63703025
528	From cell phone	63703025
102	From work	63703025
138	From elsewhere	63703025
2505	No access to internet	63703025
90	From home	63703026
615	From cell phone	63703026
69	From work	63703026
72	From elsewhere	63703026
3258	No access to internet	63703026
66	From home	63703027
510	From cell phone	63703027
27	From work	63703027
84	From elsewhere	63703027
2982	No access to internet	63703027
78	From home	63703028
435	From cell phone	63703028
51	From work	63703028
30	From elsewhere	63703028
2163	No access to internet	63703028
93	From home	63703029
798	From cell phone	63703029
72	From work	63703029
126	From elsewhere	63703029
4593	No access to internet	63703029
120	From home	63703030
633	From cell phone	63703030
90	From work	63703030
156	From elsewhere	63703030
3768	No access to internet	63703030
63	From home	63703031
519	From cell phone	63703031
84	From work	63703031
57	From elsewhere	63703031
5196	No access to internet	63703031
300	From home	63703032
990	From cell phone	63703032
261	From work	63703032
144	From elsewhere	63703032
6981	No access to internet	63703032
6	From home	63703033
333	From cell phone	63703033
24	From work	63703033
15	From elsewhere	63703033
651	No access to internet	63703033
102	From home	63703034
636	From cell phone	63703034
42	From work	63703034
33	From elsewhere	63703034
4122	No access to internet	63703034
135	From home	63703035
453	From cell phone	63703035
147	From work	63703035
27	From elsewhere	63703035
1623	No access to internet	63703035
300	From home	63703036
960	From cell phone	63703036
273	From work	63703036
96	From elsewhere	63703036
4416	No access to internet	63703036
177	From home	63703037
1260	From cell phone	63703037
129	From work	63703037
123	From elsewhere	63703037
8361	No access to internet	63703037
6	From home	63703038
363	From cell phone	63703038
9	From work	63703038
3	From elsewhere	63703038
2100	No access to internet	63703038
48	From home	63704001
219	From cell phone	63704001
30	From work	63704001
36	From elsewhere	63704001
1521	No access to internet	63704001
258	From home	63704002
426	From cell phone	63704002
102	From work	63704002
69	From elsewhere	63704002
2424	No access to internet	63704002
195	From home	63704003
198	From cell phone	63704003
54	From work	63704003
45	From elsewhere	63704003
933	No access to internet	63704003
42	From home	63704004
195	From cell phone	63704004
30	From work	63704004
36	From elsewhere	63704004
984	No access to internet	63704004
168	From home	63704005
348	From cell phone	63704005
45	From work	63704005
120	From elsewhere	63704005
2532	No access to internet	63704005
180	From home	63704006
513	From cell phone	63704006
138	From work	63704006
135	From elsewhere	63704006
2652	No access to internet	63704006
9	From home	63705001
399	From cell phone	63705001
12	From work	63705001
12	From elsewhere	63705001
1623	No access to internet	63705001
15	From home	63705002
147	From cell phone	63705002
9	From work	63705002
72	From elsewhere	63705002
2187	No access to internet	63705002
42	From home	63705003
357	From cell phone	63705003
27	From work	63705003
15	From elsewhere	63705003
1797	No access to internet	63705003
54	From home	63705004
630	From cell phone	63705004
9	From work	63705004
51	From elsewhere	63705004
1734	No access to internet	63705004
45	From home	63705005
459	From cell phone	63705005
81	From work	63705005
66	From elsewhere	63705005
2646	No access to internet	63705005
42	From home	63705006
216	From cell phone	63705006
36	From work	63705006
24	From elsewhere	63705006
1923	No access to internet	63705006
30	From home	63705007
621	From cell phone	63705007
18	From work	63705007
30	From elsewhere	63705007
2142	No access to internet	63705007
45	From home	63705008
345	From cell phone	63705008
39	From work	63705008
90	From elsewhere	63705008
1926	No access to internet	63705008
54	From home	63705009
321	From cell phone	63705009
48	From work	63705009
51	From elsewhere	63705009
2418	No access to internet	63705009
126	From home	63705010
633	From cell phone	63705010
231	From work	63705010
222	From elsewhere	63705010
2844	No access to internet	63705010
15	From home	63705011
309	From cell phone	63705011
21	From work	63705011
9	From elsewhere	63705011
1173	No access to internet	63705011
15	From home	63705012
372	From cell phone	63705012
15	From work	63705012
45	From elsewhere	63705012
1254	No access to internet	63705012
216	From home	63705013
591	From cell phone	63705013
153	From work	63705013
162	From elsewhere	63705013
1803	No access to internet	63705013
237	From home	63705014
531	From cell phone	63705014
273	From work	63705014
321	From elsewhere	63705014
1047	No access to internet	63705014
120	From home	63705015
468	From cell phone	63705015
126	From work	63705015
162	From elsewhere	63705015
2013	No access to internet	63705015
111	From home	63705016
513	From cell phone	63705016
69	From work	63705016
54	From elsewhere	63705016
2190	No access to internet	63705016
66	From home	63705017
429	From cell phone	63705017
27	From work	63705017
78	From elsewhere	63705017
2118	No access to internet	63705017
12	From home	63705018
339	From cell phone	63705018
6	From work	63705018
30	From elsewhere	63705018
1623	No access to internet	63705018
57	From home	63705019
480	From cell phone	63705019
66	From work	63705019
213	From elsewhere	63705019
1527	No access to internet	63705019
51	From home	63705020
261	From cell phone	63705020
21	From work	63705020
99	From elsewhere	63705020
1641	No access to internet	63705020
24	From home	63705021
252	From cell phone	63705021
18	From work	63705021
87	From elsewhere	63705021
1962	No access to internet	63705021
39	From home	63705022
279	From cell phone	63705022
30	From work	63705022
18	From elsewhere	63705022
1494	No access to internet	63705022
27	From home	63705023
327	From cell phone	63705023
36	From work	63705023
9	From elsewhere	63705023
2088	No access to internet	63705023
33	From home	63705024
234	From cell phone	63705024
12	From work	63705024
24	From elsewhere	63705024
1083	No access to internet	63705024
27	From home	63705025
171	From cell phone	63705025
15	From work	63705025
30	From elsewhere	63705025
2013	No access to internet	63705025
30	From home	63705026
159	From cell phone	63705026
30	From work	63705026
18	From elsewhere	63705026
1857	No access to internet	63705026
132	From home	63705027
669	From cell phone	63705027
39	From work	63705027
54	From elsewhere	63705027
1650	No access to internet	63705027
90	From home	63705028
486	From cell phone	63705028
81	From work	63705028
177	From elsewhere	63705028
2124	No access to internet	63705028
36	From home	63705029
558	From cell phone	63705029
24	From work	63705029
45	From elsewhere	63705029
1779	No access to internet	63705029
60	From home	63705030
282	From cell phone	63705030
57	From work	63705030
45	From elsewhere	63705030
1821	No access to internet	63705030
24	From home	63705031
378	From cell phone	63705031
15	From work	63705031
24	From elsewhere	63705031
1626	No access to internet	63705031
3	From home	63801001
84	From cell phone	63801001
12	From work	63801001
15	From elsewhere	63801001
1767	No access to internet	63801001
12	From home	63801002
222	From cell phone	63801002
12	From work	63801002
78	From elsewhere	63801002
1668	No access to internet	63801002
12	From home	63801003
78	From cell phone	63801003
24	From work	63801003
81	From elsewhere	63801003
1581	No access to internet	63801003
36	From home	63801004
177	From cell phone	63801004
18	From work	63801004
18	From elsewhere	63801004
1725	No access to internet	63801004
12	From home	63801005
96	From cell phone	63801005
18	From work	63801005
18	From elsewhere	63801005
1077	No access to internet	63801005
21	From home	63801006
210	From cell phone	63801006
21	From work	63801006
9	From elsewhere	63801006
1293	No access to internet	63801006
3	From home	63801007
102	From cell phone	63801007
12	From work	63801007
0	From elsewhere	63801007
1752	No access to internet	63801007
18	From home	63801008
279	From cell phone	63801008
21	From work	63801008
30	From elsewhere	63801008
2589	No access to internet	63801008
33	From home	63801009
261	From cell phone	63801009
15	From work	63801009
27	From elsewhere	63801009
1809	No access to internet	63801009
3	From home	63801010
39	From cell phone	63801010
12	From work	63801010
12	From elsewhere	63801010
543	No access to internet	63801010
60	From home	63801011
210	From cell phone	63801011
12	From work	63801011
15	From elsewhere	63801011
1719	No access to internet	63801011
18	From home	63801012
333	From cell phone	63801012
9	From work	63801012
132	From elsewhere	63801012
1230	No access to internet	63801012
33	From home	63801013
279	From cell phone	63801013
18	From work	63801013
30	From elsewhere	63801013
2265	No access to internet	63801013
9	From home	63801014
213	From cell phone	63801014
27	From work	63801014
51	From elsewhere	63801014
2265	No access to internet	63801014
87	From home	63802001
303	From cell phone	63802001
15	From work	63802001
33	From elsewhere	63802001
2058	No access to internet	63802001
15	From home	63802002
198	From cell phone	63802002
9	From work	63802002
30	From elsewhere	63802002
1740	No access to internet	63802002
24	From home	63802003
231	From cell phone	63802003
27	From work	63802003
165	From elsewhere	63802003
1152	No access to internet	63802003
30	From home	63802004
234	From cell phone	63802004
15	From work	63802004
39	From elsewhere	63802004
1545	No access to internet	63802004
3	From home	63802005
354	From cell phone	63802005
9	From work	63802005
36	From elsewhere	63802005
1386	No access to internet	63802005
24	From home	63802006
135	From cell phone	63802006
9	From work	63802006
63	From elsewhere	63802006
1521	No access to internet	63802006
105	From home	63802007
363	From cell phone	63802007
75	From work	63802007
111	From elsewhere	63802007
1719	No access to internet	63802007
90	From home	63802008
153	From cell phone	63802008
57	From work	63802008
186	From elsewhere	63802008
873	No access to internet	63802008
105	From home	63802009
486	From cell phone	63802009
42	From work	63802009
63	From elsewhere	63802009
3450	No access to internet	63802009
69	From home	63802010
351	From cell phone	63802010
18	From work	63802010
21	From elsewhere	63802010
1908	No access to internet	63802010
33	From home	63802011
435	From cell phone	63802011
6	From work	63802011
6	From elsewhere	63802011
1185	No access to internet	63802011
138	From home	63802012
567	From cell phone	63802012
39	From work	63802012
111	From elsewhere	63802012
1557	No access to internet	63802012
21	From home	63802013
303	From cell phone	63802013
18	From work	63802013
6	From elsewhere	63802013
492	No access to internet	63802013
183	From home	63802014
285	From cell phone	63802014
102	From work	63802014
42	From elsewhere	63802014
1272	No access to internet	63802014
105	From home	63802015
207	From cell phone	63802015
18	From work	63802015
3	From elsewhere	63802015
1746	No access to internet	63802015
15	From home	63803001
321	From cell phone	63803001
54	From work	63803001
69	From elsewhere	63803001
2034	No access to internet	63803001
129	From home	63803002
273	From cell phone	63803002
150	From work	63803002
150	From elsewhere	63803002
1617	No access to internet	63803002
51	From home	63803003
483	From cell phone	63803003
69	From work	63803003
252	From elsewhere	63803003
1785	No access to internet	63803003
66	From home	63803004
264	From cell phone	63803004
42	From work	63803004
90	From elsewhere	63803004
2103	No access to internet	63803004
24	From home	63803005
186	From cell phone	63803005
27	From work	63803005
39	From elsewhere	63803005
609	No access to internet	63803005
396	From home	63803006
381	From cell phone	63803006
306	From work	63803006
108	From elsewhere	63803006
2013	No access to internet	63803006
390	From home	63803007
636	From cell phone	63803007
522	From work	63803007
165	From elsewhere	63803007
3150	No access to internet	63803007
201	From home	63803008
483	From cell phone	63803008
363	From work	63803008
276	From elsewhere	63803008
849	No access to internet	63803008
426	From home	63803009
723	From cell phone	63803009
336	From work	63803009
102	From elsewhere	63803009
1290	No access to internet	63803009
384	From home	63803010
693	From cell phone	63803010
627	From work	63803010
387	From elsewhere	63803010
645	No access to internet	63803010
45	From home	63803011
237	From cell phone	63803011
78	From work	63803011
60	From elsewhere	63803011
1095	No access to internet	63803011
195	From home	63803012
660	From cell phone	63803012
612	From work	63803012
267	From elsewhere	63803012
1428	No access to internet	63803012
336	From home	63803013
1122	From cell phone	63803013
771	From work	63803013
375	From elsewhere	63803013
2799	No access to internet	63803013
63	From home	63803014
483	From cell phone	63803014
78	From work	63803014
117	From elsewhere	63803014
2853	No access to internet	63803014
48	From home	63803015
426	From cell phone	63803015
63	From work	63803015
114	From elsewhere	63803015
2091	No access to internet	63803015
120	From home	63803016
963	From cell phone	63803016
129	From work	63803016
327	From elsewhere	63803016
2058	No access to internet	63803016
36	From home	63803017
357	From cell phone	63803017
93	From work	63803017
120	From elsewhere	63803017
1560	No access to internet	63803017
72	From home	63803018
396	From cell phone	63803018
105	From work	63803018
246	From elsewhere	63803018
1758	No access to internet	63803018
33	From home	63803019
213	From cell phone	63803019
39	From work	63803019
27	From elsewhere	63803019
1092	No access to internet	63803019
162	From home	63803020
333	From cell phone	63803020
210	From work	63803020
195	From elsewhere	63803020
1203	No access to internet	63803020
39	From home	63803021
369	From cell phone	63803021
48	From work	63803021
54	From elsewhere	63803021
1683	No access to internet	63803021
45	From home	63803022
471	From cell phone	63803022
87	From work	63803022
186	From elsewhere	63803022
2475	No access to internet	63803022
24	From home	63803023
201	From cell phone	63803023
36	From work	63803023
222	From elsewhere	63803023
1665	No access to internet	63803023
30	From home	63803024
201	From cell phone	63803024
36	From work	63803024
69	From elsewhere	63803024
2061	No access to internet	63803024
39	From home	63803025
174	From cell phone	63803025
27	From work	63803025
72	From elsewhere	63803025
1764	No access to internet	63803025
3	From home	63803026
105	From cell phone	63803026
3	From work	63803026
27	From elsewhere	63803026
1911	No access to internet	63803026
90	From home	63803027
348	From cell phone	63803027
48	From work	63803027
63	From elsewhere	63803027
2064	No access to internet	63803027
90	From home	63803028
582	From cell phone	63803028
105	From work	63803028
90	From elsewhere	63803028
1899	No access to internet	63803028
120	From home	63803029
408	From cell phone	63803029
177	From work	63803029
165	From elsewhere	63803029
2295	No access to internet	63803029
174	From home	63803030
1071	From cell phone	63803030
159	From work	63803030
543	From elsewhere	63803030
1506	No access to internet	63803030
39	From home	63803031
285	From cell phone	63803031
90	From work	63803031
153	From elsewhere	63803031
2508	No access to internet	63803031
15	From home	63804001
234	From cell phone	63804001
24	From work	63804001
78	From elsewhere	63804001
1539	No access to internet	63804001
48	From home	63804002
381	From cell phone	63804002
81	From work	63804002
42	From elsewhere	63804002
1152	No access to internet	63804002
72	From home	63804003
213	From cell phone	63804003
36	From work	63804003
15	From elsewhere	63804003
1809	No access to internet	63804003
24	From home	63804004
267	From cell phone	63804004
48	From work	63804004
48	From elsewhere	63804004
1965	No access to internet	63804004
441	From home	63804005
564	From cell phone	63804005
300	From work	63804005
87	From elsewhere	63804005
1224	No access to internet	63804005
330	From home	63804006
405	From cell phone	63804006
207	From work	63804006
69	From elsewhere	63804006
852	No access to internet	63804006
42	From home	63804007
219	From cell phone	63804007
42	From work	63804007
84	From elsewhere	63804007
1179	No access to internet	63804007
111	From home	63804008
348	From cell phone	63804008
69	From work	63804008
162	From elsewhere	63804008
1443	No access to internet	63804008
72	From home	63804009
384	From cell phone	63804009
51	From work	63804009
45	From elsewhere	63804009
843	No access to internet	63804009
42	From home	63804010
258	From cell phone	63804010
21	From work	63804010
114	From elsewhere	63804010
1788	No access to internet	63804010
12	From home	63804011
168	From cell phone	63804011
3	From work	63804011
15	From elsewhere	63804011
1239	No access to internet	63804011
39	From home	63804012
225	From cell phone	63804012
48	From work	63804012
21	From elsewhere	63804012
1284	No access to internet	63804012
87	From home	63804013
315	From cell phone	63804013
21	From work	63804013
45	From elsewhere	63804013
2544	No access to internet	63804013
81	From home	63804014
312	From cell phone	63804014
36	From work	63804014
39	From elsewhere	63804014
2877	No access to internet	63804014
42	From home	63804015
591	From cell phone	63804015
12	From work	63804015
48	From elsewhere	63804015
2058	No access to internet	63804015
135	From home	63804016
510	From cell phone	63804016
96	From work	63804016
93	From elsewhere	63804016
1833	No access to internet	63804016
18	From home	63804017
312	From cell phone	63804017
6	From work	63804017
60	From elsewhere	63804017
1239	No access to internet	63804017
9	From home	63804018
102	From cell phone	63804018
9	From work	63804018
9	From elsewhere	63804018
1176	No access to internet	63804018
21	From home	63804019
351	From cell phone	63804019
18	From work	63804019
39	From elsewhere	63804019
1440	No access to internet	63804019
117	From home	63804020
399	From cell phone	63804020
27	From work	63804020
57	From elsewhere	63804020
1428	No access to internet	63804020
117	From home	63804021
264	From cell phone	63804021
15	From work	63804021
27	From elsewhere	63804021
2514	No access to internet	63804021
15	From home	63805001
108	From cell phone	63805001
12	From work	63805001
3	From elsewhere	63805001
1479	No access to internet	63805001
6	From home	63805002
162	From cell phone	63805002
9	From work	63805002
9	From elsewhere	63805002
2022	No access to internet	63805002
12	From home	63805003
60	From cell phone	63805003
15	From work	63805003
12	From elsewhere	63805003
1218	No access to internet	63805003
30	From home	63805004
126	From cell phone	63805004
12	From work	63805004
12	From elsewhere	63805004
1593	No access to internet	63805004
12	From home	63805005
132	From cell phone	63805005
24	From work	63805005
36	From elsewhere	63805005
1416	No access to internet	63805005
21	From home	63805006
162	From cell phone	63805006
75	From work	63805006
18	From elsewhere	63805006
1347	No access to internet	63805006
21	From home	63805007
81	From cell phone	63805007
12	From work	63805007
48	From elsewhere	63805007
1509	No access to internet	63805007
111	From home	63805008
327	From cell phone	63805008
15	From work	63805008
117	From elsewhere	63805008
861	No access to internet	63805008
24	From home	63805009
255	From cell phone	63805009
12	From work	63805009
18	From elsewhere	63805009
1374	No access to internet	63805009
39	From home	63805010
294	From cell phone	63805010
6	From work	63805010
18	From elsewhere	63805010
891	No access to internet	63805010
12	From home	63805011
426	From cell phone	63805011
15	From work	63805011
27	From elsewhere	63805011
2055	No access to internet	63805011
144	From home	63805012
534	From cell phone	63805012
216	From work	63805012
141	From elsewhere	63805012
1512	No access to internet	63805012
18	From home	63805013
243	From cell phone	63805013
21	From work	63805013
60	From elsewhere	63805013
1968	No access to internet	63805013
27	From home	63805014
150	From cell phone	63805014
18	From work	63805014
12	From elsewhere	63805014
1707	No access to internet	63805014
207	From home	63805015
423	From cell phone	63805015
192	From work	63805015
63	From elsewhere	63805015
1041	No access to internet	63805015
105	From home	63805016
456	From cell phone	63805016
114	From work	63805016
51	From elsewhere	63805016
1725	No access to internet	63805016
96	From home	63805017
270	From cell phone	63805017
66	From work	63805017
66	From elsewhere	63805017
2157	No access to internet	63805017
12	From home	63805018
168	From cell phone	63805018
15	From work	63805018
3	From elsewhere	63805018
1434	No access to internet	63805018
165	From home	63805019
423	From cell phone	63805019
291	From work	63805019
51	From elsewhere	63805019
3564	No access to internet	63805019
24	From home	63805020
126	From cell phone	63805020
18	From work	63805020
9	From elsewhere	63805020
1902	No access to internet	63805020
69	From home	63902001
240	From cell phone	63902001
39	From work	63902001
33	From elsewhere	63902001
1893	No access to internet	63902001
123	From home	63902002
345	From cell phone	63902002
96	From work	63902002
129	From elsewhere	63902002
1140	No access to internet	63902002
45	From home	63902003
378	From cell phone	63902003
36	From work	63902003
24	From elsewhere	63902003
1413	No access to internet	63902003
39	From home	63902004
585	From cell phone	63902004
63	From work	63902004
183	From elsewhere	63902004
2358	No access to internet	63902004
102	From home	63902005
456	From cell phone	63902005
42	From work	63902005
81	From elsewhere	63902005
1788	No access to internet	63902005
27	From home	63902006
306	From cell phone	63902006
45	From work	63902006
168	From elsewhere	63902006
1074	No access to internet	63902006
396	From home	63902007
426	From cell phone	63902007
366	From work	63902007
54	From elsewhere	63902007
1008	No access to internet	63902007
51	From home	63902008
288	From cell phone	63902008
108	From work	63902008
144	From elsewhere	63902008
936	No access to internet	63902008
42	From home	63902009
228	From cell phone	63902009
75	From work	63902009
123	From elsewhere	63902009
1011	No access to internet	63902009
60	From home	63903001
276	From cell phone	63903001
27	From work	63903001
45	From elsewhere	63903001
1614	No access to internet	63903001
48	From home	63903002
180	From cell phone	63903002
45	From work	63903002
87	From elsewhere	63903002
930	No access to internet	63903002
66	From home	63903003
300	From cell phone	63903003
30	From work	63903003
48	From elsewhere	63903003
1551	No access to internet	63903003
24	From home	63903004
222	From cell phone	63903004
33	From work	63903004
36	From elsewhere	63903004
1260	No access to internet	63903004
15	From home	63903005
219	From cell phone	63903005
27	From work	63903005
144	From elsewhere	63903005
1779	No access to internet	63903005
27	From home	63903006
132	From cell phone	63903006
12	From work	63903006
231	From elsewhere	63903006
1371	No access to internet	63903006
216	From home	63903007
342	From cell phone	63903007
78	From work	63903007
192	From elsewhere	63903007
1575	No access to internet	63903007
12	From home	63903008
126	From cell phone	63903008
15	From work	63903008
33	From elsewhere	63903008
1212	No access to internet	63903008
36	From home	63904001
195	From cell phone	63904001
33	From work	63904001
30	From elsewhere	63904001
1653	No access to internet	63904001
18	From home	63904002
297	From cell phone	63904002
6	From work	63904002
84	From elsewhere	63904002
1980	No access to internet	63904002
9	From home	63904003
147	From cell phone	63904003
3	From work	63904003
39	From elsewhere	63904003
1677	No access to internet	63904003
3	From home	63904004
162	From cell phone	63904004
18	From work	63904004
21	From elsewhere	63904004
1242	No access to internet	63904004
174	From home	63904005
540	From cell phone	63904005
159	From work	63904005
168	From elsewhere	63904005
1338	No access to internet	63904005
12	From home	63904006
111	From cell phone	63904006
15	From work	63904006
72	From elsewhere	63904006
2118	No access to internet	63904006
18	From home	63904007
75	From cell phone	63904007
21	From work	63904007
39	From elsewhere	63904007
1308	No access to internet	63904007
21	From home	63904008
126	From cell phone	63904008
24	From work	63904008
87	From elsewhere	63904008
1602	No access to internet	63904008
12	From home	63904009
75	From cell phone	63904009
15	From work	63904009
69	From elsewhere	63904009
2163	No access to internet	63904009
21	From home	63904010
108	From cell phone	63904010
0	From work	63904010
36	From elsewhere	63904010
1491	No access to internet	63904010
90	From home	63904011
279	From cell phone	63904011
129	From work	63904011
108	From elsewhere	63904011
1251	No access to internet	63904011
9	From home	63904012
141	From cell phone	63904012
6	From work	63904012
165	From elsewhere	63904012
1680	No access to internet	63904012
51	From home	63904013
246	From cell phone	63904013
45	From work	63904013
114	From elsewhere	63904013
1158	No access to internet	63904013
12	From home	63904014
135	From cell phone	63904014
3	From work	63904014
12	From elsewhere	63904014
1752	No access to internet	63904014
3	From home	63904015
288	From cell phone	63904015
6	From work	63904015
6	From elsewhere	63904015
1632	No access to internet	63904015
9	From home	63904016
72	From cell phone	63904016
9	From work	63904016
6	From elsewhere	63904016
1377	No access to internet	63904016
30	From home	63904017
285	From cell phone	63904017
9	From work	63904017
60	From elsewhere	63904017
1362	No access to internet	63904017
12	From home	63904018
174	From cell phone	63904018
9	From work	63904018
12	From elsewhere	63904018
1950	No access to internet	63904018
18	From home	63904019
399	From cell phone	63904019
9	From work	63904019
72	From elsewhere	63904019
1224	No access to internet	63904019
15	From home	63904020
231	From cell phone	63904020
12	From work	63904020
24	From elsewhere	63904020
2052	No access to internet	63904020
21	From home	63904021
138	From cell phone	63904021
6	From work	63904021
171	From elsewhere	63904021
1689	No access to internet	63904021
9	From home	63904022
33	From cell phone	63904022
9	From work	63904022
6	From elsewhere	63904022
1593	No access to internet	63904022
6	From home	63904023
78	From cell phone	63904023
21	From work	63904023
12	From elsewhere	63904023
1230	No access to internet	63904023
21	From home	63904024
255	From cell phone	63904024
12	From work	63904024
105	From elsewhere	63904024
1341	No access to internet	63904024
36	From home	63904025
237	From cell phone	63904025
33	From work	63904025
75	From elsewhere	63904025
1467	No access to internet	63904025
6	From home	63904026
264	From cell phone	63904026
6	From work	63904026
48	From elsewhere	63904026
1248	No access to internet	63904026
48	From home	63906001
357	From cell phone	63906001
48	From work	63906001
105	From elsewhere	63906001
1782	No access to internet	63906001
21	From home	63906002
105	From cell phone	63906002
18	From work	63906002
36	From elsewhere	63906002
1119	No access to internet	63906002
15	From home	63906003
231	From cell phone	63906003
21	From work	63906003
24	From elsewhere	63906003
1965	No access to internet	63906003
120	From home	63906004
279	From cell phone	63906004
66	From work	63906004
30	From elsewhere	63906004
1230	No access to internet	63906004
51	From home	63906005
435	From cell phone	63906005
57	From work	63906005
15	From elsewhere	63906005
1872	No access to internet	63906005
180	From home	63906006
378	From cell phone	63906006
99	From work	63906006
48	From elsewhere	63906006
1830	No access to internet	63906006
51	From home	63906007
276	From cell phone	63906007
66	From work	63906007
27	From elsewhere	63906007
1923	No access to internet	63906007
48	From home	63907001
246	From cell phone	63907001
12	From work	63907001
147	From elsewhere	63907001
1656	No access to internet	63907001
66	From home	63907002
132	From cell phone	63907002
36	From work	63907002
9	From elsewhere	63907002
2019	No access to internet	63907002
111	From home	63907003
354	From cell phone	63907003
12	From work	63907003
51	From elsewhere	63907003
2661	No access to internet	63907003
30	From home	63907004
420	From cell phone	63907004
81	From work	63907004
72	From elsewhere	63907004
1392	No access to internet	63907004
27	From home	63907005
201	From cell phone	63907005
81	From work	63907005
147	From elsewhere	63907005
849	No access to internet	63907005
57	From home	63907006
159	From cell phone	63907006
9	From work	63907006
36	From elsewhere	63907006
1416	No access to internet	63907006
12	From home	63907007
102	From cell phone	63907007
9	From work	63907007
9	From elsewhere	63907007
1611	No access to internet	63907007
48	From home	63907008
237	From cell phone	63907008
18	From work	63907008
162	From elsewhere	63907008
1521	No access to internet	63907008
12	From home	63907009
57	From cell phone	63907009
12	From work	63907009
27	From elsewhere	63907009
1335	No access to internet	63907009
24	From home	63907010
216	From cell phone	63907010
39	From work	63907010
33	From elsewhere	63907010
1797	No access to internet	63907010
15	From home	63907011
45	From cell phone	63907011
18	From work	63907011
6	From elsewhere	63907011
1524	No access to internet	63907011
15	From home	63907012
87	From cell phone	63907012
3	From work	63907012
0	From elsewhere	63907012
1413	No access to internet	63907012
21	From home	63907013
321	From cell phone	63907013
27	From work	63907013
33	From elsewhere	63907013
1404	No access to internet	63907013
9	From home	63907014
258	From cell phone	63907014
21	From work	63907014
21	From elsewhere	63907014
1572	No access to internet	63907014
24	From home	63907015
270	From cell phone	63907015
24	From work	63907015
54	From elsewhere	63907015
1524	No access to internet	63907015
21	From home	64001001
258	From cell phone	64001001
12	From work	64001001
12	From elsewhere	64001001
909	No access to internet	64001001
45	From home	64001002
390	From cell phone	64001002
45	From work	64001002
84	From elsewhere	64001002
879	No access to internet	64001002
48	From home	64001003
660	From cell phone	64001003
30	From work	64001003
24	From elsewhere	64001003
2478	No access to internet	64001003
84	From home	64001004
195	From cell phone	64001004
21	From work	64001004
36	From elsewhere	64001004
1953	No access to internet	64001004
57	From home	64001005
216	From cell phone	64001005
30	From work	64001005
30	From elsewhere	64001005
2838	No access to internet	64001005
171	From home	64001006
387	From cell phone	64001006
84	From work	64001006
87	From elsewhere	64001006
2478	No access to internet	64001006
42	From home	64002001
309	From cell phone	64002001
33	From work	64002001
42	From elsewhere	64002001
1479	No access to internet	64002001
333	From home	64002002
510	From cell phone	64002002
249	From work	64002002
75	From elsewhere	64002002
3510	No access to internet	64002002
777	From home	64002003
393	From cell phone	64002003
477	From work	64002003
93	From elsewhere	64002003
1749	No access to internet	64002003
291	From home	64002004
501	From cell phone	64002004
207	From work	64002004
96	From elsewhere	64002004
1680	No access to internet	64002004
198	From home	64002005
228	From cell phone	64002005
156	From work	64002005
30	From elsewhere	64002005
378	No access to internet	64002005
330	From home	64002006
420	From cell phone	64002006
90	From work	64002006
153	From elsewhere	64002006
588	No access to internet	64002006
1038	From home	64002007
903	From cell phone	64002007
144	From work	64002007
654	From elsewhere	64002007
375	No access to internet	64002007
57	From home	64002008
312	From cell phone	64002008
75	From work	64002008
162	From elsewhere	64002008
648	No access to internet	64002008
120	From home	64002009
393	From cell phone	64002009
93	From work	64002009
36	From elsewhere	64002009
1593	No access to internet	64002009
54	From home	64002010
201	From cell phone	64002010
60	From work	64002010
54	From elsewhere	64002010
711	No access to internet	64002010
48	From home	64002011
120	From cell phone	64002011
18	From work	64002011
12	From elsewhere	64002011
531	No access to internet	64002011
87	From home	64002012
366	From cell phone	64002012
93	From work	64002012
84	From elsewhere	64002012
1074	No access to internet	64002012
105	From home	64002013
405	From cell phone	64002013
96	From work	64002013
51	From elsewhere	64002013
1809	No access to internet	64002013
45	From home	64002014
222	From cell phone	64002014
57	From work	64002014
24	From elsewhere	64002014
912	No access to internet	64002014
354	From home	64002015
261	From cell phone	64002015
204	From work	64002015
45	From elsewhere	64002015
708	No access to internet	64002015
231	From home	64002016
222	From cell phone	64002016
66	From work	64002016
27	From elsewhere	64002016
621	No access to internet	64002016
24	From home	64002017
141	From cell phone	64002017
15	From work	64002017
78	From elsewhere	64002017
1314	No access to internet	64002017
39	From home	64002018
273	From cell phone	64002018
24	From work	64002018
90	From elsewhere	64002018
1539	No access to internet	64002018
57	From home	64002019
390	From cell phone	64002019
39	From work	64002019
45	From elsewhere	64002019
2103	No access to internet	64002019
21	From home	64002020
246	From cell phone	64002020
39	From work	64002020
84	From elsewhere	64002020
1818	No access to internet	64002020
66	From home	64002021
615	From cell phone	64002021
66	From work	64002021
81	From elsewhere	64002021
2847	No access to internet	64002021
492	From home	64002022
471	From cell phone	64002022
51	From work	64002022
612	From elsewhere	64002022
171	No access to internet	64002022
558	From home	64002023
213	From cell phone	64002023
222	From work	64002023
69	From elsewhere	64002023
426	No access to internet	64002023
114	From home	64002024
153	From cell phone	64002024
72	From work	64002024
30	From elsewhere	64002024
180	No access to internet	64002024
387	From home	64002025
330	From cell phone	64002025
126	From work	64002025
216	From elsewhere	64002025
270	No access to internet	64002025
42	From home	64002026
501	From cell phone	64002026
33	From work	64002026
63	From elsewhere	64002026
2685	No access to internet	64002026
249	From home	64003001
273	From cell phone	64003001
81	From work	64003001
42	From elsewhere	64003001
3021	No access to internet	64003001
48	From home	64003002
441	From cell phone	64003002
57	From work	64003002
171	From elsewhere	64003002
3168	No access to internet	64003002
207	From home	64003003
393	From cell phone	64003003
132	From work	64003003
57	From elsewhere	64003003
1623	No access to internet	64003003
123	From home	64003004
645	From cell phone	64003004
108	From work	64003004
216	From elsewhere	64003004
4587	No access to internet	64003004
24	From home	64003005
240	From cell phone	64003005
36	From work	64003005
198	From elsewhere	64003005
2691	No access to internet	64003005
159	From home	64003006
363	From cell phone	64003006
120	From work	64003006
159	From elsewhere	64003006
2772	No access to internet	64003006
102	From home	64003007
447	From cell phone	64003007
84	From work	64003007
129	From elsewhere	64003007
2367	No access to internet	64003007
132	From home	64003008
465	From cell phone	64003008
132	From work	64003008
315	From elsewhere	64003008
1686	No access to internet	64003008
30	From home	64003009
333	From cell phone	64003009
27	From work	64003009
150	From elsewhere	64003009
2367	No access to internet	64003009
69	From home	64003010
306	From cell phone	64003010
117	From work	64003010
171	From elsewhere	64003010
1326	No access to internet	64003010
81	From home	64003011
519	From cell phone	64003011
72	From work	64003011
153	From elsewhere	64003011
1752	No access to internet	64003011
96	From home	64003012
621	From cell phone	64003012
66	From work	64003012
186	From elsewhere	64003012
3864	No access to internet	64003012
75	From home	64003013
327	From cell phone	64003013
69	From work	64003013
249	From elsewhere	64003013
2454	No access to internet	64003013
42	From home	64003014
240	From cell phone	64003014
21	From work	64003014
39	From elsewhere	64003014
2499	No access to internet	64003014
543	From home	64003015
564	From cell phone	64003015
249	From work	64003015
75	From elsewhere	64003015
1860	No access to internet	64003015
702	From home	64003016
564	From cell phone	64003016
369	From work	64003016
162	From elsewhere	64003016
1263	No access to internet	64003016
1176	From home	64003017
660	From cell phone	64003017
636	From work	64003017
120	From elsewhere	64003017
1599	No access to internet	64003017
786	From home	64003018
471	From cell phone	64003018
375	From work	64003018
108	From elsewhere	64003018
2385	No access to internet	64003018
519	From home	64003019
927	From cell phone	64003019
246	From work	64003019
192	From elsewhere	64003019
2346	No access to internet	64003019
60	From home	64003020
366	From cell phone	64003020
21	From work	64003020
126	From elsewhere	64003020
1410	No access to internet	64003020
120	From home	64003021
270	From cell phone	64003021
120	From work	64003021
120	From elsewhere	64003021
1536	No access to internet	64003021
111	From home	64003022
741	From cell phone	64003022
72	From work	64003022
141	From elsewhere	64003022
5994	No access to internet	64003022
45	From home	64003023
462	From cell phone	64003023
39	From work	64003023
48	From elsewhere	64003023
3531	No access to internet	64003023
42	From home	64003024
567	From cell phone	64003024
21	From work	64003024
63	From elsewhere	64003024
2367	No access to internet	64003024
159	From home	64003025
447	From cell phone	64003025
105	From work	64003025
228	From elsewhere	64003025
1845	No access to internet	64003025
33	From home	64003026
336	From cell phone	64003026
30	From work	64003026
225	From elsewhere	64003026
2001	No access to internet	64003026
33	From home	64003027
252	From cell phone	64003027
12	From work	64003027
45	From elsewhere	64003027
3075	No access to internet	64003027
477	From home	64003028
684	From cell phone	64003028
252	From work	64003028
66	From elsewhere	64003028
1914	No access to internet	64003028
342	From home	64003029
585	From cell phone	64003029
243	From work	64003029
171	From elsewhere	64003029
2109	No access to internet	64003029
429	From home	64003030
483	From cell phone	64003030
219	From work	64003030
81	From elsewhere	64003030
2616	No access to internet	64003030
252	From home	64003031
693	From cell phone	64003031
114	From work	64003031
111	From elsewhere	64003031
3057	No access to internet	64003031
60	From home	64003032
273	From cell phone	64003032
39	From work	64003032
135	From elsewhere	64003032
2868	No access to internet	64003032
63	From home	64003033
432	From cell phone	64003033
42	From work	64003033
90	From elsewhere	64003033
2895	No access to internet	64003033
69	From home	64003034
330	From cell phone	64003034
39	From work	64003034
60	From elsewhere	64003034
1944	No access to internet	64003034
81	From home	64003035
597	From cell phone	64003035
39	From work	64003035
201	From elsewhere	64003035
2607	No access to internet	64003035
27	From home	64004001
378	From cell phone	64004001
30	From work	64004001
48	From elsewhere	64004001
978	No access to internet	64004001
48	From home	64004002
117	From cell phone	64004002
27	From work	64004002
90	From elsewhere	64004002
1053	No access to internet	64004002
24	From home	64004003
75	From cell phone	64004003
39	From work	64004003
45	From elsewhere	64004003
1185	No access to internet	64004003
51	From home	64004004
159	From cell phone	64004004
24	From work	64004004
114	From elsewhere	64004004
1098	No access to internet	64004004
216	From home	64004005
204	From cell phone	64004005
96	From work	64004005
27	From elsewhere	64004005
1092	No access to internet	64004005
66	From home	64004006
399	From cell phone	64004006
87	From work	64004006
33	From elsewhere	64004006
1383	No access to internet	64004006
21	From home	64004007
171	From cell phone	64004007
33	From work	64004007
18	From elsewhere	64004007
747	No access to internet	64004007
156	From home	64004008
381	From cell phone	64004008
42	From work	64004008
117	From elsewhere	64004008
3606	No access to internet	64004008
45	From home	64004009
108	From cell phone	64004009
18	From work	64004009
39	From elsewhere	64004009
1122	No access to internet	64004009
57	From home	64004010
525	From cell phone	64004010
24	From work	64004010
45	From elsewhere	64004010
2289	No access to internet	64004010
99	From home	64004011
261	From cell phone	64004011
24	From work	64004011
30	From elsewhere	64004011
1332	No access to internet	64004011
18	From home	30601001
66	From cell phone	30601001
24	From work	30601001
3	From elsewhere	30601001
516	No access to internet	30601001
90	From home	30601002
156	From cell phone	30601002
69	From work	30601002
24	From elsewhere	30601002
717	No access to internet	30601002
84	From home	30601003
117	From cell phone	30601003
33	From work	30601003
6	From elsewhere	30601003
750	No access to internet	30601003
81	From home	30601004
177	From cell phone	30601004
27	From work	30601004
12	From elsewhere	30601004
573	No access to internet	30601004
51	From home	30602001
264	From cell phone	30602001
75	From work	30602001
141	From elsewhere	30602001
1161	No access to internet	30602001
39	From home	30602002
273	From cell phone	30602002
60	From work	30602002
21	From elsewhere	30602002
1242	No access to internet	30602002
33	From home	30602003
141	From cell phone	30602003
27	From work	30602003
3	From elsewhere	30602003
1011	No access to internet	30602003
279	From home	30602004
189	From cell phone	30602004
147	From work	30602004
24	From elsewhere	30602004
651	No access to internet	30602004
117	From home	30602005
183	From cell phone	30602005
75	From work	30602005
12	From elsewhere	30602005
918	No access to internet	30602005
75	From home	30602006
324	From cell phone	30602006
45	From work	30602006
6	From elsewhere	30602006
1218	No access to internet	30602006
15	From home	30602007
69	From cell phone	30602007
24	From work	30602007
9	From elsewhere	30602007
1188	No access to internet	30602007
75	From home	30602008
306	From cell phone	30602008
42	From work	30602008
21	From elsewhere	30602008
1221	No access to internet	30602008
36	From home	30602009
135	From cell phone	30602009
30	From work	30602009
12	From elsewhere	30602009
1194	No access to internet	30602009
9	From home	30604001
45	From cell phone	30604001
6	From work	30604001
6	From elsewhere	30604001
600	No access to internet	30604001
51	From home	30604002
48	From cell phone	30604002
24	From work	30604002
3	From elsewhere	30604002
891	No access to internet	30604002
21	From home	30604003
60	From cell phone	30604003
9	From work	30604003
21	From elsewhere	30604003
642	No access to internet	30604003
9	From home	30604004
3	From cell phone	30604004
12	From work	30604004
24	From elsewhere	30604004
663	No access to internet	30604004
57	From home	30605001
183	From cell phone	30605001
39	From work	30605001
18	From elsewhere	30605001
699	No access to internet	30605001
120	From home	30605002
417	From cell phone	30605002
60	From work	30605002
27	From elsewhere	30605002
852	No access to internet	30605002
54	From home	30605003
162	From cell phone	30605003
15	From work	30605003
15	From elsewhere	30605003
978	No access to internet	30605003
123	From home	30605004
159	From cell phone	30605004
42	From work	30605004
33	From elsewhere	30605004
1086	No access to internet	30605004
66	From home	30605005
99	From cell phone	30605005
18	From work	30605005
24	From elsewhere	30605005
987	No access to internet	30605005
57	From home	30606001
156	From cell phone	30606001
24	From work	30606001
9	From elsewhere	30606001
570	No access to internet	30606001
39	From home	30606002
108	From cell phone	30606002
21	From work	30606002
3	From elsewhere	30606002
681	No access to internet	30606002
102	From home	30606003
105	From cell phone	30606003
18	From work	30606003
24	From elsewhere	30606003
1101	No access to internet	30606003
51	From home	30606004
96	From cell phone	30606004
27	From work	30606004
6	From elsewhere	30606004
639	No access to internet	30606004
21	From home	30607001
45	From cell phone	30607001
21	From work	30607001
3	From elsewhere	30607001
1074	No access to internet	30607001
6	From home	30607002
45	From cell phone	30607002
21	From work	30607002
12	From elsewhere	30607002
609	No access to internet	30607002
0	From home	30607003
120	From cell phone	30607003
9	From work	30607003
0	From elsewhere	30607003
810	No access to internet	30607003
102	From home	30607004
285	From cell phone	30607004
99	From work	30607004
57	From elsewhere	30607004
465	No access to internet	30607004
42	From home	30701001
141	From cell phone	30701001
18	From work	30701001
33	From elsewhere	30701001
1017	No access to internet	30701001
27	From home	30701002
186	From cell phone	30701002
27	From work	30701002
12	From elsewhere	30701002
1008	No access to internet	30701002
90	From home	30701003
240	From cell phone	30701003
27	From work	30701003
21	From elsewhere	30701003
1221	No access to internet	30701003
75	From home	30701004
132	From cell phone	30701004
39	From work	30701004
6	From elsewhere	30701004
753	No access to internet	30701004
63	From home	30702001
144	From cell phone	30702001
21	From work	30702001
18	From elsewhere	30702001
1458	No access to internet	30702001
45	From home	30702002
147	From cell phone	30702002
33	From work	30702002
12	From elsewhere	30702002
1128	No access to internet	30702002
120	From home	30702003
492	From cell phone	30702003
81	From work	30702003
114	From elsewhere	30702003
1068	No access to internet	30702003
24	From home	30702004
153	From cell phone	30702004
69	From work	30702004
27	From elsewhere	30702004
1254	No access to internet	30702004
126	From home	30702005
219	From cell phone	30702005
93	From work	30702005
36	From elsewhere	30702005
903	No access to internet	30702005
42	From home	30703001
114	From cell phone	30703001
51	From work	30703001
24	From elsewhere	30703001
822	No access to internet	30703001
24	From home	30703002
126	From cell phone	30703002
33	From work	30703002
6	From elsewhere	30703002
1341	No access to internet	30703002
42	From home	30703003
132	From cell phone	30703003
51	From work	30703003
12	From elsewhere	30703003
1242	No access to internet	30703003
21	From home	30703004
150	From cell phone	30703004
21	From work	30703004
6	From elsewhere	30703004
1065	No access to internet	30703004
288	From home	30703005
291	From cell phone	30703005
192	From work	30703005
18	From elsewhere	30703005
891	No access to internet	30703005
87	From home	30703006
165	From cell phone	30703006
15	From work	30703006
21	From elsewhere	30703006
1470	No access to internet	30703006
78	From home	30703007
183	From cell phone	30703007
21	From work	30703007
9	From elsewhere	30703007
1404	No access to internet	30703007
96	From home	30704001
165	From cell phone	30704001
42	From work	30704001
6	From elsewhere	30704001
363	No access to internet	30704001
6	From home	30704002
63	From cell phone	30704002
15	From work	30704002
21	From elsewhere	30704002
771	No access to internet	30704002
51	From home	30704003
69	From cell phone	30704003
15	From work	30704003
12	From elsewhere	30704003
582	No access to internet	30704003
18	From home	30704004
123	From cell phone	30704004
12	From work	30704004
12	From elsewhere	30704004
777	No access to internet	30704004
36	From home	30705001
57	From cell phone	30705001
3	From work	30705001
9	From elsewhere	30705001
645	No access to internet	30705001
12	From home	30705002
93	From cell phone	30705002
30	From work	30705002
30	From elsewhere	30705002
906	No access to internet	30705002
69	From home	30705003
78	From cell phone	30705003
18	From work	30705003
9	From elsewhere	30705003
342	No access to internet	30705003
39	From home	30705004
90	From cell phone	30705004
27	From work	30705004
18	From elsewhere	30705004
480	No access to internet	30705004
21	From home	30706001
78	From cell phone	30706001
12	From work	30706001
12	From elsewhere	30706001
834	No access to internet	30706001
192	From home	30706002
201	From cell phone	30706002
48	From work	30706002
18	From elsewhere	30706002
1023	No access to internet	30706002
18	From home	30706003
111	From cell phone	30706003
21	From work	30706003
3	From elsewhere	30706003
558	No access to internet	30706003
9	From home	30706004
180	From cell phone	30706004
9	From work	30706004
66	From elsewhere	30706004
726	No access to internet	30706004
9	From home	30707001
231	From cell phone	30707001
21	From work	30707001
72	From elsewhere	30707001
1245	No access to internet	30707001
15	From home	30707002
141	From cell phone	30707002
9	From work	30707002
111	From elsewhere	30707002
483	No access to internet	30707002
153	From home	30707003
153	From cell phone	30707003
54	From work	30707003
15	From elsewhere	30707003
1482	No access to internet	30707003
117	From home	30707004
126	From cell phone	30707004
36	From work	30707004
21	From elsewhere	30707004
1329	No access to internet	30707004
45	From home	30708001
216	From cell phone	30708001
36	From work	30708001
24	From elsewhere	30708001
1257	No access to internet	30708001
60	From home	30708002
198	From cell phone	30708002
39	From work	30708002
21	From elsewhere	30708002
1233	No access to internet	30708002
30	From home	30708003
105	From cell phone	30708003
33	From work	30708003
12	From elsewhere	30708003
1467	No access to internet	30708003
42	From home	30708004
186	From cell phone	30708004
33	From work	30708004
9	From elsewhere	30708004
1551	No access to internet	30708004
108	From home	30708005
111	From cell phone	30708005
69	From work	30708005
18	From elsewhere	30708005
933	No access to internet	30708005
78	From home	30708006
168	From cell phone	30708006
66	From work	30708006
27	From elsewhere	30708006
1404	No access to internet	30708006
9	From home	30801001
21	From cell phone	30801001
3	From work	30801001
0	From elsewhere	30801001
183	No access to internet	30801001
9	From home	30801002
72	From cell phone	30801002
3	From work	30801002
3	From elsewhere	30801002
639	No access to internet	30801002
18	From home	30801003
66	From cell phone	30801003
24	From work	30801003
3	From elsewhere	30801003
360	No access to internet	30801003
15	From home	30801004
69	From cell phone	30801004
18	From work	30801004
0	From elsewhere	30801004
267	No access to internet	30801004
57	From home	30802001
219	From cell phone	30802001
57	From work	30802001
105	From elsewhere	30802001
2604	No access to internet	30802001
42	From home	30802002
162	From cell phone	30802002
33	From work	30802002
36	From elsewhere	30802002
1620	No access to internet	30802002
180	From home	30802003
312	From cell phone	30802003
126	From work	30802003
57	From elsewhere	30802003
1374	No access to internet	30802003
69	From home	30802004
135	From cell phone	30802004
48	From work	30802004
12	From elsewhere	30802004
1416	No access to internet	30802004
147	From home	30802005
111	From cell phone	30802005
60	From work	30802005
12	From elsewhere	30802005
1233	No access to internet	30802005
42	From home	30802006
105	From cell phone	30802006
24	From work	30802006
15	From elsewhere	30802006
1542	No access to internet	30802006
42	From home	30802007
213	From cell phone	30802007
12	From work	30802007
15	From elsewhere	30802007
1020	No access to internet	30802007
42	From home	30802008
216	From cell phone	30802008
24	From work	30802008
15	From elsewhere	30802008
1482	No access to internet	30802008
66	From home	30802009
219	From cell phone	30802009
39	From work	30802009
18	From elsewhere	30802009
1320	No access to internet	30802009
33	From home	30803001
156	From cell phone	30803001
39	From work	30803001
39	From elsewhere	30803001
1035	No access to internet	30803001
48	From home	30803002
156	From cell phone	30803002
24	From work	30803002
12	From elsewhere	30803002
1338	No access to internet	30803002
96	From home	30803003
141	From cell phone	30803003
57	From work	30803003
12	From elsewhere	30803003
849	No access to internet	30803003
45	From home	30803004
96	From cell phone	30803004
24	From work	30803004
3	From elsewhere	30803004
852	No access to internet	30803004
39	From home	30803005
153	From cell phone	30803005
27	From work	30803005
6	From elsewhere	30803005
1332	No access to internet	30803005
54	From home	30803006
273	From cell phone	30803006
45	From work	30803006
6	From elsewhere	30803006
1359	No access to internet	30803006
33	From home	30803007
108	From cell phone	30803007
39	From work	30803007
6	From elsewhere	30803007
765	No access to internet	30803007
507	From home	30803008
378	From cell phone	30803008
228	From work	30803008
39	From elsewhere	30803008
1128	No access to internet	30803008
510	From home	30803009
294	From cell phone	30803009
288	From work	30803009
45	From elsewhere	30803009
1068	No access to internet	30803009
57	From home	30803010
330	From cell phone	30803010
54	From work	30803010
12	From elsewhere	30803010
1890	No access to internet	30803010
180	From home	30803011
243	From cell phone	30803011
87	From work	30803011
30	From elsewhere	30803011
1674	No access to internet	30803011
66	From home	30803012
276	From cell phone	30803012
36	From work	30803012
66	From elsewhere	30803012
1224	No access to internet	30803012
48	From home	30803013
198	From cell phone	30803013
66	From work	30803013
198	From elsewhere	30803013
1299	No access to internet	30803013
45	From home	30803014
195	From cell phone	30803014
24	From work	30803014
24	From elsewhere	30803014
1128	No access to internet	30803014
30	From home	30804001
144	From cell phone	30804001
12	From work	30804001
3	From elsewhere	30804001
912	No access to internet	30804001
66	From home	30804002
195	From cell phone	30804002
9	From work	30804002
15	From elsewhere	30804002
975	No access to internet	30804002
54	From home	30804003
171	From cell phone	30804003
54	From work	30804003
3	From elsewhere	30804003
678	No access to internet	30804003
3	From home	30804004
114	From cell phone	30804004
12	From work	30804004
36	From elsewhere	30804004
657	No access to internet	30804004
60	From home	30805001
141	From cell phone	30805001
36	From work	30805001
12	From elsewhere	30805001
651	No access to internet	30805001
42	From home	30805002
249	From cell phone	30805002
18	From work	30805002
21	From elsewhere	30805002
1422	No access to internet	30805002
66	From home	30805003
258	From cell phone	30805003
39	From work	30805003
21	From elsewhere	30805003
1101	No access to internet	30805003
54	From home	30805004
255	From cell phone	30805004
33	From work	30805004
27	From elsewhere	30805004
927	No access to internet	30805004
297	From home	30805005
402	From cell phone	30805005
129	From work	30805005
30	From elsewhere	30805005
1758	No access to internet	30805005
90	From home	30805006
273	From cell phone	30805006
57	From work	30805006
123	From elsewhere	30805006
1242	No access to internet	30805006
24	From home	30806001
186	From cell phone	30806001
21	From work	30806001
39	From elsewhere	30806001
768	No access to internet	30806001
75	From home	30806002
216	From cell phone	30806002
18	From work	30806002
15	From elsewhere	30806002
507	No access to internet	30806002
96	From home	30806003
276	From cell phone	30806003
42	From work	30806003
18	From elsewhere	30806003
1263	No access to internet	30806003
210	From home	30806004
327	From cell phone	30806004
141	From work	30806004
162	From elsewhere	30806004
966	No access to internet	30806004
72	From home	30901001
225	From cell phone	30901001
63	From work	30901001
12	From elsewhere	30901001
975	No access to internet	30901001
90	From home	30901002
444	From cell phone	30901002
75	From work	30901002
63	From elsewhere	30901002
2040	No access to internet	30901002
87	From home	30901003
282	From cell phone	30901003
108	From work	30901003
48	From elsewhere	30901003
1395	No access to internet	30901003
51	From home	30901004
372	From cell phone	30901004
24	From work	30901004
21	From elsewhere	30901004
1086	No access to internet	30901004
51	From home	30901005
285	From cell phone	30901005
66	From work	30901005
129	From elsewhere	30901005
1038	No access to internet	30901005
33	From home	30901006
336	From cell phone	30901006
42	From work	30901006
30	From elsewhere	30901006
1038	No access to internet	30901006
126	From home	30901007
210	From cell phone	30901007
51	From work	30901007
384	From elsewhere	30901007
1077	No access to internet	30901007
264	From home	30901008
399	From cell phone	30901008
159	From work	30901008
30	From elsewhere	30901008
1413	No access to internet	30901008
120	From home	30901009
348	From cell phone	30901009
135	From work	30901009
72	From elsewhere	30901009
783	No access to internet	30901009
108	From home	30901010
381	From cell phone	30901010
57	From work	30901010
156	From elsewhere	30901010
693	No access to internet	30901010
69	From home	30901011
270	From cell phone	30901011
51	From work	30901011
69	From elsewhere	30901011
1197	No access to internet	30901011
33	From home	30901012
264	From cell phone	30901012
39	From work	30901012
81	From elsewhere	30901012
828	No access to internet	30901012
72	From home	30901013
231	From cell phone	30901013
66	From work	30901013
60	From elsewhere	30901013
1602	No access to internet	30901013
246	From home	30901014
465	From cell phone	30901014
138	From work	30901014
42	From elsewhere	30901014
762	No access to internet	30901014
81	From home	30901015
327	From cell phone	30901015
69	From work	30901015
63	From elsewhere	30901015
1086	No access to internet	30901015
54	From home	30901016
516	From cell phone	30901016
75	From work	30901016
84	From elsewhere	30901016
3321	No access to internet	30901016
96	From home	30901017
546	From cell phone	30901017
117	From work	30901017
72	From elsewhere	30901017
1632	No access to internet	30901017
15	From home	30901018
201	From cell phone	30901018
42	From work	30901018
30	From elsewhere	30901018
885	No access to internet	30901018
45	From home	30901019
216	From cell phone	30901019
69	From work	30901019
141	From elsewhere	30901019
1119	No access to internet	30901019
312	From home	30901020
546	From cell phone	30901020
270	From work	30901020
288	From elsewhere	30901020
828	No access to internet	30901020
591	From home	30901021
642	From cell phone	30901021
297	From work	30901021
51	From elsewhere	30901021
996	No access to internet	30901021
150	From home	30901022
171	From cell phone	30901022
105	From work	30901022
39	From elsewhere	30901022
1722	No access to internet	30901022
588	From home	30901023
333	From cell phone	30901023
249	From work	30901023
81	From elsewhere	30901023
543	No access to internet	30901023
597	From home	30901024
309	From cell phone	30901024
252	From work	30901024
36	From elsewhere	30901024
579	No access to internet	30901024
354	From home	30901025
360	From cell phone	30901025
129	From work	30901025
30	From elsewhere	30901025
954	No access to internet	30901025
180	From home	30901026
363	From cell phone	30901026
72	From work	30901026
30	From elsewhere	30901026
1848	No access to internet	30901026
66	From home	30901027
264	From cell phone	30901027
27	From work	30901027
6	From elsewhere	30901027
2190	No access to internet	30901027
177	From home	30901028
372	From cell phone	30901028
105	From work	30901028
144	From elsewhere	30901028
1242	No access to internet	30901028
18	From home	30901029
105	From cell phone	30901029
12	From work	30901029
3	From elsewhere	30901029
381	No access to internet	30901029
24	From home	30901030
282	From cell phone	30901030
48	From work	30901030
18	From elsewhere	30901030
2370	No access to internet	30901030
48	From home	30901031
438	From cell phone	30901031
45	From work	30901031
141	From elsewhere	30901031
1812	No access to internet	30901031
33	From home	30902001
282	From cell phone	30902001
12	From work	30902001
33	From elsewhere	30902001
924	No access to internet	30902001
156	From home	30902002
468	From cell phone	30902002
36	From work	30902002
15	From elsewhere	30902002
852	No access to internet	30902002
18	From home	30902003
315	From cell phone	30902003
21	From work	30902003
6	From elsewhere	30902003
1992	No access to internet	30902003
60	From home	30902004
213	From cell phone	30902004
15	From work	30902004
15	From elsewhere	30902004
1284	No access to internet	30902004
18	From home	30902005
378	From cell phone	30902005
18	From work	30902005
18	From elsewhere	30902005
1743	No access to internet	30902005
69	From home	30902006
387	From cell phone	30902006
39	From work	30902006
36	From elsewhere	30902006
912	No access to internet	30902006
24	From home	30902007
378	From cell phone	30902007
24	From work	30902007
33	From elsewhere	30902007
1152	No access to internet	30902007
21	From home	30903001
396	From cell phone	30903001
15	From work	30903001
66	From elsewhere	30903001
1278	No access to internet	30903001
24	From home	30903002
201	From cell phone	30903002
15	From work	30903002
12	From elsewhere	30903002
996	No access to internet	30903002
9	From home	30903003
96	From cell phone	30903003
12	From work	30903003
3	From elsewhere	30903003
477	No access to internet	30903003
48	From home	30903004
204	From cell phone	30903004
18	From work	30903004
9	From elsewhere	30903004
1200	No access to internet	30903004
72	From home	30903005
168	From cell phone	30903005
27	From work	30903005
9	From elsewhere	30903005
732	No access to internet	30903005
30	From home	30904001
330	From cell phone	30904001
12	From work	30904001
39	From elsewhere	30904001
2028	No access to internet	30904001
81	From home	30904002
255	From cell phone	30904002
39	From work	30904002
51	From elsewhere	30904002
993	No access to internet	30904002
48	From home	30904003
276	From cell phone	30904003
27	From work	30904003
39	From elsewhere	30904003
996	No access to internet	30904003
87	From home	30904004
243	From cell phone	30904004
36	From work	30904004
33	From elsewhere	30904004
1554	No access to internet	30904004
108	From home	30904005
306	From cell phone	30904005
132	From work	30904005
54	From elsewhere	30904005
1854	No access to internet	30904005
228	From home	30904006
276	From cell phone	30904006
105	From work	30904006
30	From elsewhere	30904006
492	No access to internet	30904006
21	From home	30904007
201	From cell phone	30904007
21	From work	30904007
30	From elsewhere	30904007
2127	No access to internet	30904007
45	From home	30904008
324	From cell phone	30904008
30	From work	30904008
24	From elsewhere	30904008
1884	No access to internet	30904008
87	From home	30904009
249	From cell phone	30904009
33	From work	30904009
96	From elsewhere	30904009
1590	No access to internet	30904009
6	From home	34501001
87	From cell phone	34501001
18	From work	34501001
3	From elsewhere	34501001
1488	No access to internet	34501001
6	From home	34501002
171	From cell phone	34501002
15	From work	34501002
15	From elsewhere	34501002
1368	No access to internet	34501002
6	From home	34501003
150	From cell phone	34501003
15	From work	34501003
3	From elsewhere	34501003
1353	No access to internet	34501003
198	From home	34501004
249	From cell phone	34501004
126	From work	34501004
33	From elsewhere	34501004
1722	No access to internet	34501004
15	From home	34501005
30	From cell phone	34501005
9	From work	34501005
3	From elsewhere	34501005
1512	No access to internet	34501005
6	From home	34501006
99	From cell phone	34501006
3	From work	34501006
6	From elsewhere	34501006
1434	No access to internet	34501006
9	From home	34501007
153	From cell phone	34501007
9	From work	34501007
27	From elsewhere	34501007
1149	No access to internet	34501007
6	From home	34501008
84	From cell phone	34501008
9	From work	34501008
3	From elsewhere	34501008
1284	No access to internet	34501008
18	From home	34501009
666	From cell phone	34501009
24	From work	34501009
18	From elsewhere	34501009
1095	No access to internet	34501009
9	From home	34501010
165	From cell phone	34501010
9	From work	34501010
12	From elsewhere	34501010
1401	No access to internet	34501010
15	From home	34501011
165	From cell phone	34501011
21	From work	34501011
12	From elsewhere	34501011
1173	No access to internet	34501011
24	From home	34501012
486	From cell phone	34501012
12	From work	34501012
24	From elsewhere	34501012
867	No access to internet	34501012
33	From home	34501013
273	From cell phone	34501013
12	From work	34501013
285	From elsewhere	34501013
1191	No access to internet	34501013
18	From home	34501014
231	From cell phone	34501014
12	From work	34501014
12	From elsewhere	34501014
1131	No access to internet	34501014
9	From home	34501015
99	From cell phone	34501015
6	From work	34501015
18	From elsewhere	34501015
1287	No access to internet	34501015
450	From home	34502001
294	From cell phone	34502001
228	From work	34502001
51	From elsewhere	34502001
645	No access to internet	34502001
51	From home	34502002
255	From cell phone	34502002
42	From work	34502002
27	From elsewhere	34502002
2301	No access to internet	34502002
150	From home	34502003
639	From cell phone	34502003
222	From work	34502003
114	From elsewhere	34502003
2373	No access to internet	34502003
84	From home	34502004
294	From cell phone	34502004
57	From work	34502004
33	From elsewhere	34502004
1164	No access to internet	34502004
15	From home	34502005
78	From cell phone	34502005
24	From work	34502005
15	From elsewhere	34502005
873	No access to internet	34502005
45	From home	34502006
339	From cell phone	34502006
96	From work	34502006
39	From elsewhere	34502006
2382	No access to internet	34502006
9	From home	34502007
57	From cell phone	34502007
3	From work	34502007
3	From elsewhere	34502007
1515	No access to internet	34502007
39	From home	34502008
249	From cell phone	34502008
36	From work	34502008
45	From elsewhere	34502008
1431	No access to internet	34502008
21	From home	34502009
84	From cell phone	34502009
18	From work	34502009
6	From elsewhere	34502009
834	No access to internet	34502009
57	From home	34502010
237	From cell phone	34502010
45	From work	34502010
51	From elsewhere	34502010
2523	No access to internet	34502010
39	From home	34502011
234	From cell phone	34502011
9	From work	34502011
6	From elsewhere	34502011
1617	No access to internet	34502011
60	From home	34502012
423	From cell phone	34502012
21	From work	34502012
45	From elsewhere	34502012
2250	No access to internet	34502012
96	From home	34502013
327	From cell phone	34502013
51	From work	34502013
27	From elsewhere	34502013
969	No access to internet	34502013
693	From home	34503001
738	From cell phone	34503001
603	From work	34503001
69	From elsewhere	34503001
1158	No access to internet	34503001
93	From home	34503002
579	From cell phone	34503002
33	From work	34503002
18	From elsewhere	34503002
744	No access to internet	34503002
90	From home	34503003
339	From cell phone	34503003
39	From work	34503003
15	From elsewhere	34503003
912	No access to internet	34503003
90	From home	34503004
276	From cell phone	34503004
54	From work	34503004
51	From elsewhere	34503004
1209	No access to internet	34503004
54	From home	34503005
417	From cell phone	34503005
96	From work	34503005
39	From elsewhere	34503005
2400	No access to internet	34503005
282	From home	10101001
345	From cell phone	10101001
81	From work	10101001
33	From elsewhere	10101001
1758	No access to internet	10101001
315	From home	10101002
261	From cell phone	10101002
87	From work	10101002
48	From elsewhere	10101002
1716	No access to internet	10101002
66	From home	10101003
204	From cell phone	10101003
69	From work	10101003
30	From elsewhere	10101003
1608	No access to internet	10101003
111	From home	10101004
393	From cell phone	10101004
69	From work	10101004
12	From elsewhere	10101004
1401	No access to internet	10101004
420	From home	10101005
168	From cell phone	10101005
150	From work	10101005
15	From elsewhere	10101005
1644	No access to internet	10101005
123	From home	10101006
162	From cell phone	10101006
72	From work	10101006
42	From elsewhere	10101006
1590	No access to internet	10101006
273	From home	10101007
252	From cell phone	10101007
75	From work	10101007
105	From elsewhere	10101007
2067	No access to internet	10101007
174	From home	10101008
192	From cell phone	10101008
72	From work	10101008
66	From elsewhere	10101008
2286	No access to internet	10101008
99	From home	10102001
93	From cell phone	10102001
57	From work	10102001
21	From elsewhere	10102001
2277	No access to internet	10102001
195	From home	10102002
162	From cell phone	10102002
72	From work	10102002
9	From elsewhere	10102002
1131	No access to internet	10102002
135	From home	10102003
267	From cell phone	10102003
87	From work	10102003
54	From elsewhere	10102003
1749	No access to internet	10102003
186	From home	10102004
138	From cell phone	10102004
75	From work	10102004
21	From elsewhere	10102004
2262	No access to internet	10102004
186	From home	10102005
204	From cell phone	10102005
81	From work	10102005
9	From elsewhere	10102005
1674	No access to internet	10102005
213	From home	10102006
93	From cell phone	10102006
105	From work	10102006
42	From elsewhere	10102006
1818	No access to internet	10102006
354	From home	10103001
180	From cell phone	10103001
141	From work	10103001
27	From elsewhere	10103001
1971	No access to internet	10103001
12	From home	10103002
111	From cell phone	10103002
21	From work	10103002
9	From elsewhere	10103002
1083	No access to internet	10103002
366	From home	10103003
228	From cell phone	10103003
147	From work	10103003
39	From elsewhere	10103003
1698	No access to internet	10103003
117	From home	10103004
297	From cell phone	10103004
48	From work	10103004
42	From elsewhere	10103004
1473	No access to internet	10103004
237	From home	10103005
330	From cell phone	10103005
78	From work	10103005
33	From elsewhere	10103005
2307	No access to internet	10103005
147	From home	10103006
69	From cell phone	10103006
24	From work	10103006
24	From elsewhere	10103006
945	No access to internet	10103006
513	From home	10103007
402	From cell phone	10103007
111	From work	10103007
84	From elsewhere	10103007
2595	No access to internet	10103007
48	From home	10104001
333	From cell phone	10104001
54	From work	10104001
27	From elsewhere	10104001
2259	No access to internet	10104001
66	From home	10104002
270	From cell phone	10104002
30	From work	10104002
114	From elsewhere	10104002
2436	No access to internet	10104002
192	From home	10104003
240	From cell phone	10104003
48	From work	10104003
33	From elsewhere	10104003
735	No access to internet	10104003
51	From home	10104004
189	From cell phone	10104004
21	From work	10104004
39	From elsewhere	10104004
1689	No access to internet	10104004
684	From home	10104005
417	From cell phone	10104005
222	From work	10104005
51	From elsewhere	10104005
729	No access to internet	10104005
1035	From home	10104006
408	From cell phone	10104006
186	From work	10104006
147	From elsewhere	10104006
1227	No access to internet	10104006
156	From home	10104007
246	From cell phone	10104007
48	From work	10104007
33	From elsewhere	10104007
1611	No access to internet	10104007
513	From home	10104008
426	From cell phone	10104008
150	From work	10104008
63	From elsewhere	10104008
771	No access to internet	10104008
72	From home	10104009
414	From cell phone	10104009
54	From work	10104009
423	From elsewhere	10104009
2571	No access to internet	10104009
504	From home	10104010
252	From cell phone	10104010
147	From work	10104010
57	From elsewhere	10104010
1260	No access to internet	10104010
300	From home	10104011
339	From cell phone	10104011
66	From work	10104011
21	From elsewhere	10104011
876	No access to internet	10104011
69	From home	10104012
435	From cell phone	10104012
39	From work	10104012
15	From elsewhere	10104012
1416	No access to internet	10104012
102	From home	10104013
465	From cell phone	10104013
105	From work	10104013
78	From elsewhere	10104013
759	No access to internet	10104013
360	From home	10105001
354	From cell phone	10105001
111	From work	10105001
27	From elsewhere	10105001
1239	No access to internet	10105001
207	From home	10105002
312	From cell phone	10105002
90	From work	10105002
24	From elsewhere	10105002
1935	No access to internet	10105002
294	From home	10105003
201	From cell phone	10105003
75	From work	10105003
21	From elsewhere	10105003
1770	No access to internet	10105003
315	From home	10105004
303	From cell phone	10105004
90	From work	10105004
63	From elsewhere	10105004
2190	No access to internet	10105004
606	From home	10105005
330	From cell phone	10105005
144	From work	10105005
45	From elsewhere	10105005
1320	No access to internet	10105005
162	From home	10105006
159	From cell phone	10105006
36	From work	10105006
39	From elsewhere	10105006
1746	No access to internet	10105006
237	From home	10105007
276	From cell phone	10105007
144	From work	10105007
102	From elsewhere	10105007
2313	No access to internet	10105007
387	From home	10105008
264	From cell phone	10105008
189	From work	10105008
39	From elsewhere	10105008
807	No access to internet	10105008
63	From home	10105009
291	From cell phone	10105009
45	From work	10105009
306	From elsewhere	10105009
2328	No access to internet	10105009
720	From home	10105010
363	From cell phone	10105010
213	From work	10105010
96	From elsewhere	10105010
1032	No access to internet	10105010
60	From home	10105011
222	From cell phone	10105011
24	From work	10105011
24	From elsewhere	10105011
1656	No access to internet	10105011
294	From home	10105012
120	From cell phone	10105012
51	From work	10105012
24	From elsewhere	10105012
2070	No access to internet	10105012
21	From home	10202001
204	From cell phone	10202001
27	From work	10202001
21	From elsewhere	10202001
2079	No access to internet	10202001
159	From home	10202002
201	From cell phone	10202002
60	From work	10202002
42	From elsewhere	10202002
1095	No access to internet	10202002
279	From home	10202003
306	From cell phone	10202003
159	From work	10202003
45	From elsewhere	10202003
1344	No access to internet	10202003
135	From home	10202004
213	From cell phone	10202004
93	From work	10202004
30	From elsewhere	10202004
1128	No access to internet	10202004
297	From home	10202005
282	From cell phone	10202005
186	From work	10202005
45	From elsewhere	10202005
1398	No access to internet	10202005
99	From home	10202006
303	From cell phone	10202006
48	From work	10202006
54	From elsewhere	10202006
1761	No access to internet	10202006
255	From home	10202007
528	From cell phone	10202007
120	From work	10202007
42	From elsewhere	10202007
2787	No access to internet	10202007
72	From home	10202008
162	From cell phone	10202008
93	From work	10202008
12	From elsewhere	10202008
1497	No access to internet	10202008
99	From home	10202009
198	From cell phone	10202009
120	From work	10202009
18	From elsewhere	10202009
1320	No access to internet	10202009
54	From home	10202010
264	From cell phone	10202010
39	From work	10202010
9	From elsewhere	10202010
1962	No access to internet	10202010
240	From home	10202011
261	From cell phone	10202011
96	From work	10202011
36	From elsewhere	10202011
2652	No access to internet	10202011
93	From home	10202012
228	From cell phone	10202012
69	From work	10202012
51	From elsewhere	10202012
1941	No access to internet	10202012
243	From home	10203001
258	From cell phone	10203001
165	From work	10203001
39	From elsewhere	10203001
1503	No access to internet	10203001
792	From home	10203002
261	From cell phone	10203002
261	From work	10203002
42	From elsewhere	10203002
492	No access to internet	10203002
213	From home	10203003
240	From cell phone	10203003
141	From work	10203003
51	From elsewhere	10203003
2016	No access to internet	10203003
858	From home	10203004
264	From cell phone	10203004
249	From work	10203004
30	From elsewhere	10203004
816	No access to internet	10203004
12	From home	10203005
114	From cell phone	10203005
6	From work	10203005
6	From elsewhere	10203005
1308	No access to internet	10203005
216	From home	10203006
390	From cell phone	10203006
24	From work	10203006
54	From elsewhere	10203006
915	No access to internet	10203006
90	From home	10203007
543	From cell phone	10203007
72	From work	10203007
21	From elsewhere	10203007
1299	No access to internet	10203007
15	From home	10203008
168	From cell phone	10203008
12	From work	10203008
24	From elsewhere	10203008
327	No access to internet	10203008
42	From home	10203009
351	From cell phone	10203009
33	From work	10203009
69	From elsewhere	10203009
1182	No access to internet	10203009
54	From home	10203010
453	From cell phone	10203010
54	From work	10203010
21	From elsewhere	10203010
1122	No access to internet	10203010
198	From home	10203011
627	From cell phone	10203011
114	From work	10203011
150	From elsewhere	10203011
1704	No access to internet	10203011
60	From home	10203012
183	From cell phone	10203012
24	From work	10203012
90	From elsewhere	10203012
1290	No access to internet	10203012
48	From home	10203013
486	From cell phone	10203013
90	From work	10203013
162	From elsewhere	10203013
1020	No access to internet	10203013
42	From home	10203014
771	From cell phone	10203014
27	From work	10203014
255	From elsewhere	10203014
1992	No access to internet	10203014
1134	From home	10203015
366	From cell phone	10203015
213	From work	10203015
66	From elsewhere	10203015
621	No access to internet	10203015
27	From home	10203016
309	From cell phone	10203016
39	From work	10203016
36	From elsewhere	10203016
1812	No access to internet	10203016
573	From home	10203017
417	From cell phone	10203017
219	From work	10203017
48	From elsewhere	10203017
1008	No access to internet	10203017
366	From home	10203018
336	From cell phone	10203018
135	From work	10203018
93	From elsewhere	10203018
1131	No access to internet	10203018
705	From home	10203019
378	From cell phone	10203019
306	From work	10203019
21	From elsewhere	10203019
849	No access to internet	10203019
87	From home	10203020
171	From cell phone	10203020
39	From work	10203020
12	From elsewhere	10203020
384	No access to internet	10203020
51	From home	10203021
441	From cell phone	10203021
18	From work	10203021
24	From elsewhere	10203021
1857	No access to internet	10203021
396	From home	10203022
480	From cell phone	10203022
204	From work	10203022
42	From elsewhere	10203022
1068	No access to internet	10203022
312	From home	10203023
324	From cell phone	10203023
120	From work	10203023
48	From elsewhere	10203023
981	No access to internet	10203023
87	From home	10203024
312	From cell phone	10203024
21	From work	10203024
6	From elsewhere	10203024
1050	No access to internet	10203024
135	From home	10203025
177	From cell phone	10203025
45	From work	10203025
36	From elsewhere	10203025
1287	No access to internet	10203025
111	From home	10203026
603	From cell phone	10203026
66	From work	10203026
15	From elsewhere	10203026
1515	No access to internet	10203026
42	From home	10203027
54	From cell phone	10203027
15	From work	10203027
156	From elsewhere	10203027
837	No access to internet	10203027
303	From home	10203028
183	From cell phone	10203028
93	From work	10203028
27	From elsewhere	10203028
600	No access to internet	10203028
531	From home	10203029
336	From cell phone	10203029
117	From work	10203029
36	From elsewhere	10203029
1152	No access to internet	10203029
63	From home	10203030
342	From cell phone	10203030
60	From work	10203030
12	From elsewhere	10203030
1986	No access to internet	10203030
96	From home	10203031
240	From cell phone	10203031
48	From work	10203031
36	From elsewhere	10203031
1416	No access to internet	10203031
414	From home	10204001
513	From cell phone	10204001
129	From work	10204001
54	From elsewhere	10204001
2304	No access to internet	10204001
39	From home	10204002
297	From cell phone	10204002
57	From work	10204002
33	From elsewhere	10204002
2364	No access to internet	10204002
213	From home	10204003
270	From cell phone	10204003
60	From work	10204003
33	From elsewhere	10204003
1503	No access to internet	10204003
219	From home	10204004
564	From cell phone	10204004
129	From work	10204004
33	From elsewhere	10204004
999	No access to internet	10204004
153	From home	10204005
285	From cell phone	10204005
66	From work	10204005
39	From elsewhere	10204005
738	No access to internet	10204005
186	From home	10204006
327	From cell phone	10204006
117	From work	10204006
24	From elsewhere	10204006
735	No access to internet	10204006
1068	From home	10204007
201	From cell phone	10204007
156	From work	10204007
123	From elsewhere	10204007
207	No access to internet	10204007
315	From home	10204008
141	From cell phone	10204008
33	From work	10204008
210	From elsewhere	10204008
114	No access to internet	10204008
111	From home	10204009
45	From cell phone	10204009
9	From work	10204009
24	From elsewhere	10204009
30	No access to internet	10204009
687	From home	10204010
450	From cell phone	10204010
111	From work	10204010
354	From elsewhere	10204010
462	No access to internet	10204010
729	From home	10204011
306	From cell phone	10204011
261	From work	10204011
225	From elsewhere	10204011
672	No access to internet	10204011
39	From home	10204012
453	From cell phone	10204012
33	From work	10204012
132	From elsewhere	10204012
2418	No access to internet	10204012
57	From home	10204013
165	From cell phone	10204013
48	From work	10204013
18	From elsewhere	10204013
315	No access to internet	10204013
45	From home	10204014
417	From cell phone	10204014
48	From work	10204014
102	From elsewhere	10204014
1104	No access to internet	10204014
72	From home	10204015
612	From cell phone	10204015
69	From work	10204015
213	From elsewhere	10204015
2517	No access to internet	10204015
81	From home	10204016
408	From cell phone	10204016
69	From work	10204016
114	From elsewhere	10204016
1059	No access to internet	10204016
564	From home	10204017
471	From cell phone	10204017
324	From work	10204017
186	From elsewhere	10204017
690	No access to internet	10204017
81	From home	10204018
456	From cell phone	10204018
54	From work	10204018
84	From elsewhere	10204018
1524	No access to internet	10204018
351	From home	10204019
246	From cell phone	10204019
126	From work	10204019
42	From elsewhere	10204019
1611	No access to internet	10204019
456	From home	10204020
228	From cell phone	10204020
150	From work	10204020
54	From elsewhere	10204020
1305	No access to internet	10204020
990	From home	10204021
243	From cell phone	10204021
234	From work	10204021
30	From elsewhere	10204021
804	No access to internet	10204021
924	From home	10204022
126	From cell phone	10204022
186	From work	10204022
60	From elsewhere	10204022
282	No access to internet	10204022
87	From home	10205001
279	From cell phone	10205001
42	From work	10205001
81	From elsewhere	10205001
1578	No access to internet	10205001
15	From home	10205002
165	From cell phone	10205002
18	From work	10205002
24	From elsewhere	10205002
3141	No access to internet	10205002
72	From home	10205003
165	From cell phone	10205003
36	From work	10205003
21	From elsewhere	10205003
1860	No access to internet	10205003
144	From home	10205004
159	From cell phone	10205004
66	From work	10205004
42	From elsewhere	10205004
1863	No access to internet	10205004
240	From home	10205005
387	From cell phone	10205005
144	From work	10205005
15	From elsewhere	10205005
1935	No access to internet	10205005
501	From home	10205006
222	From cell phone	10205006
153	From work	10205006
24	From elsewhere	10205006
753	No access to internet	10205006
516	From home	10205007
411	From cell phone	10205007
249	From work	10205007
42	From elsewhere	10205007
933	No access to internet	10205007
84	From home	10205008
405	From cell phone	10205008
72	From work	10205008
39	From elsewhere	10205008
1728	No access to internet	10205008
93	From home	10205009
162	From cell phone	10205009
36	From work	10205009
33	From elsewhere	10205009
1194	No access to internet	10205009
51	From home	10205010
264	From cell phone	10205010
60	From work	10205010
12	From elsewhere	10205010
1245	No access to internet	10205010
183	From home	10205011
474	From cell phone	10205011
69	From work	10205011
87	From elsewhere	10205011
948	No access to internet	10205011
132	From home	10205012
582	From cell phone	10205012
51	From work	10205012
15	From elsewhere	10205012
747	No access to internet	10205012
216	From home	10205013
387	From cell phone	10205013
51	From work	10205013
135	From elsewhere	10205013
960	No access to internet	10205013
90	From home	10205014
189	From cell phone	10205014
42	From work	10205014
18	From elsewhere	10205014
984	No access to internet	10205014
576	From home	10205015
264	From cell phone	10205015
174	From work	10205015
21	From elsewhere	10205015
1011	No access to internet	10205015
36	From home	10205016
513	From cell phone	10205016
21	From work	10205016
42	From elsewhere	10205016
2091	No access to internet	10205016
27	From home	10205017
129	From cell phone	10205017
36	From work	10205017
33	From elsewhere	10205017
705	No access to internet	10205017
108	From home	10205018
483	From cell phone	10205018
39	From work	10205018
21	From elsewhere	10205018
1410	No access to internet	10205018
75	From home	10205019
90	From cell phone	10205019
36	From work	10205019
3	From elsewhere	10205019
1194	No access to internet	10205019
120	From home	10205020
171	From cell phone	10205020
75	From work	10205020
15	From elsewhere	10205020
1446	No access to internet	10205020
72	From home	10205021
939	From cell phone	10205021
54	From work	10205021
81	From elsewhere	10205021
2205	No access to internet	10205021
282	From home	10206001
279	From cell phone	10206001
99	From work	10206001
87	From elsewhere	10206001
927	No access to internet	10206001
318	From home	10206002
294	From cell phone	10206002
141	From work	10206002
111	From elsewhere	10206002
2097	No access to internet	10206002
90	From home	10206003
333	From cell phone	10206003
63	From work	10206003
129	From elsewhere	10206003
1347	No access to internet	10206003
48	From home	10206004
195	From cell phone	10206004
33	From work	10206004
9	From elsewhere	10206004
1575	No access to internet	10206004
183	From home	10206005
96	From cell phone	10206005
33	From work	10206005
15	From elsewhere	10206005
972	No access to internet	10206005
174	From home	10206006
192	From cell phone	10206006
48	From work	10206006
204	From elsewhere	10206006
1500	No access to internet	10206006
417	From home	10206007
360	From cell phone	10206007
81	From work	10206007
78	From elsewhere	10206007
1764	No access to internet	10206007
357	From home	10206008
132	From cell phone	10206008
81	From work	10206008
24	From elsewhere	10206008
2094	No access to internet	10206008
141	From home	10206009
249	From cell phone	10206009
36	From work	10206009
195	From elsewhere	10206009
1104	No access to internet	10206009
42	From home	10206010
405	From cell phone	10206010
27	From work	10206010
51	From elsewhere	10206010
1050	No access to internet	10206010
222	From home	10206011
135	From cell phone	10206011
66	From work	10206011
21	From elsewhere	10206011
930	No access to internet	10206011
186	From home	10206012
216	From cell phone	10206012
27	From work	10206012
24	From elsewhere	10206012
2727	No access to internet	10206012
492	From home	10304001
435	From cell phone	10304001
162	From work	10304001
42	From elsewhere	10304001
1188	No access to internet	10304001
237	From home	10304002
243	From cell phone	10304002
117	From work	10304002
57	From elsewhere	10304002
1398	No access to internet	10304002
231	From home	10304003
291	From cell phone	10304003
36	From work	10304003
93	From elsewhere	10304003
1503	No access to internet	10304003
255	From home	10304004
147	From cell phone	10304004
72	From work	10304004
27	From elsewhere	10304004
615	No access to internet	10304004
54	From home	10304005
945	From cell phone	10304005
33	From work	10304005
27	From elsewhere	10304005
1452	No access to internet	10304005
342	From home	10301001
375	From cell phone	10301001
66	From work	10301001
27	From elsewhere	10301001
1905	No access to internet	10301001
354	From home	10301002
330	From cell phone	10301002
69	From work	10301002
198	From elsewhere	10301002
1629	No access to internet	10301002
120	From home	10301003
570	From cell phone	10301003
93	From work	10301003
33	From elsewhere	10301003
2022	No access to internet	10301003
489	From home	10301004
291	From cell phone	10301004
132	From work	10301004
12	From elsewhere	10301004
1377	No access to internet	10301004
384	From home	10301005
225	From cell phone	10301005
108	From work	10301005
30	From elsewhere	10301005
2139	No access to internet	10301005
51	From home	10301006
411	From cell phone	10301006
33	From work	10301006
186	From elsewhere	10301006
1563	No access to internet	10301006
129	From home	10301007
375	From cell phone	10301007
87	From work	10301007
93	From elsewhere	10301007
1410	No access to internet	10301007
36	From home	10301008
390	From cell phone	10301008
18	From work	10301008
54	From elsewhere	10301008
528	No access to internet	10301008
87	From home	10301009
303	From cell phone	10301009
60	From work	10301009
6	From elsewhere	10301009
1155	No access to internet	10301009
138	From home	10301010
171	From cell phone	10301010
39	From work	10301010
18	From elsewhere	10301010
1029	No access to internet	10301010
123	From home	10301011
129	From cell phone	10301011
30	From work	10301011
21	From elsewhere	10301011
1251	No access to internet	10301011
51	From home	10301012
237	From cell phone	10301012
48	From work	10301012
33	From elsewhere	10301012
1422	No access to internet	10301012
288	From home	10301013
867	From cell phone	10301013
156	From work	10301013
57	From elsewhere	10301013
2469	No access to internet	10301013
261	From home	10302001
198	From cell phone	10302001
24	From work	10302001
36	From elsewhere	10302001
1923	No access to internet	10302001
366	From home	10302002
249	From cell phone	10302002
66	From work	10302002
24	From elsewhere	10302002
1506	No access to internet	10302002
1008	From home	10302003
138	From cell phone	10302003
93	From work	10302003
45	From elsewhere	10302003
471	No access to internet	10302003
321	From home	10302004
207	From cell phone	10302004
60	From work	10302004
39	From elsewhere	10302004
1221	No access to internet	10302004
42	From home	10302005
330	From cell phone	10302005
30	From work	10302005
69	From elsewhere	10302005
1755	No access to internet	10302005
90	From home	10302006
288	From cell phone	10302006
63	From work	10302006
135	From elsewhere	10302006
1704	No access to internet	10302006
720	From home	10302007
150	From cell phone	10302007
126	From work	10302007
30	From elsewhere	10302007
612	No access to internet	10302007
261	From home	10302008
228	From cell phone	10302008
87	From work	10302008
228	From elsewhere	10302008
1602	No access to internet	10302008
462	From home	10302009
63	From cell phone	10302009
39	From work	10302009
39	From elsewhere	10302009
537	No access to internet	10302009
702	From home	10302010
249	From cell phone	10302010
60	From work	10302010
60	From elsewhere	10302010
1737	No access to internet	10302010
489	From home	10302011
204	From cell phone	10302011
78	From work	10302011
39	From elsewhere	10302011
2358	No access to internet	10302011
51	From home	10302012
315	From cell phone	10302012
24	From work	10302012
42	From elsewhere	10302012
1341	No access to internet	10302012
1113	From home	10302013
249	From cell phone	10302013
99	From work	10302013
81	From elsewhere	10302013
762	No access to internet	10302013
231	From home	10303001
351	From cell phone	10303001
54	From work	10303001
231	From elsewhere	10303001
969	No access to internet	10303001
243	From home	10303002
234	From cell phone	10303002
75	From work	10303002
24	From elsewhere	10303002
1542	No access to internet	10303002
18	From home	10303003
132	From cell phone	10303003
18	From work	10303003
6	From elsewhere	10303003
1545	No access to internet	10303003
573	From home	10303004
225	From cell phone	10303004
180	From work	10303004
21	From elsewhere	10303004
1026	No access to internet	10303004
438	From home	10303005
249	From cell phone	10303005
66	From work	10303005
48	From elsewhere	10303005
1656	No access to internet	10303005
84	From home	10401001
213	From cell phone	10401001
33	From work	10401001
39	From elsewhere	10401001
1278	No access to internet	10401001
117	From home	10401002
177	From cell phone	10401002
36	From work	10401002
33	From elsewhere	10401002
1233	No access to internet	10401002
42	From home	10401003
114	From cell phone	10401003
12	From work	10401003
18	From elsewhere	10401003
1137	No access to internet	10401003
210	From home	10401004
135	From cell phone	10401004
45	From work	10401004
30	From elsewhere	10401004
1212	No access to internet	10401004
510	From home	10402001
204	From cell phone	10402001
45	From work	10402001
45	From elsewhere	10402001
1620	No access to internet	10402001
192	From home	10402002
285	From cell phone	10402002
42	From work	10402002
90	From elsewhere	10402002
1914	No access to internet	10402002
495	From home	10402003
180	From cell phone	10402003
54	From work	10402003
39	From elsewhere	10402003
1077	No access to internet	10402003
213	From home	10402004
153	From cell phone	10402004
30	From work	10402004
18	From elsewhere	10402004
1746	No access to internet	10402004
204	From home	10402005
387	From cell phone	10402005
60	From work	10402005
27	From elsewhere	10402005
918	No access to internet	10402005
168	From home	10402006
216	From cell phone	10402006
75	From work	10402006
39	From elsewhere	10402006
1350	No access to internet	10402006
387	From home	10402007
129	From cell phone	10402007
117	From work	10402007
30	From elsewhere	10402007
1338	No access to internet	10402007
24	From home	10402008
324	From cell phone	10402008
12	From work	10402008
12	From elsewhere	10402008
1104	No access to internet	10402008
60	From home	10403001
276	From cell phone	10403001
54	From work	10403001
57	From elsewhere	10403001
1707	No access to internet	10403001
39	From home	10403002
195	From cell phone	10403002
45	From work	10403002
51	From elsewhere	10403002
1443	No access to internet	10403002
99	From home	10403003
294	From cell phone	10403003
84	From work	10403003
75	From elsewhere	10403003
3039	No access to internet	10403003
462	From home	10403004
186	From cell phone	10403004
75	From work	10403004
27	From elsewhere	10403004
1170	No access to internet	10403004
834	From home	10403005
267	From cell phone	10403005
111	From work	10403005
87	From elsewhere	10403005
1176	No access to internet	10403005
702	From home	10403006
309	From cell phone	10403006
198	From work	10403006
66	From elsewhere	10403006
1002	No access to internet	10403006
444	From home	10403007
168	From cell phone	10403007
69	From work	10403007
45	From elsewhere	10403007
987	No access to internet	10403007
573	From home	10403008
147	From cell phone	10403008
123	From work	10403008
54	From elsewhere	10403008
600	No access to internet	10403008
63	From home	10403009
117	From cell phone	10403009
36	From work	10403009
96	From elsewhere	10403009
1194	No access to internet	10403009
519	From home	10403010
240	From cell phone	10403010
90	From work	10403010
54	From elsewhere	10403010
816	No access to internet	10403010
585	From home	10403011
216	From cell phone	10403011
90	From work	10403011
33	From elsewhere	10403011
1497	No access to internet	10403011
39	From home	10403012
156	From cell phone	10403012
12	From work	10403012
42	From elsewhere	10403012
771	No access to internet	10403012
240	From home	10403013
246	From cell phone	10403013
78	From work	10403013
123	From elsewhere	10403013
897	No access to internet	10403013
108	From home	10403014
447	From cell phone	10403014
42	From work	10403014
54	From elsewhere	10403014
1728	No access to internet	10403014
384	From home	10404001
555	From cell phone	10404001
195	From work	10404001
54	From elsewhere	10404001
1374	No access to internet	10404001
546	From home	10404002
162	From cell phone	10404002
75	From work	10404002
18	From elsewhere	10404002
510	No access to internet	10404002
1203	From home	10404003
162	From cell phone	10404003
276	From work	10404003
48	From elsewhere	10404003
576	No access to internet	10404003
834	From home	10404004
273	From cell phone	10404004
126	From work	10404004
84	From elsewhere	10404004
1302	No access to internet	10404004
600	From home	10404005
393	From cell phone	10404005
249	From work	10404005
42	From elsewhere	10404005
948	No access to internet	10404005
87	From home	10404006
225	From cell phone	10404006
36	From work	10404006
87	From elsewhere	10404006
1794	No access to internet	10404006
54	From home	10404007
171	From cell phone	10404007
39	From work	10404007
18	From elsewhere	10404007
1992	No access to internet	10404007
33	From home	10404008
384	From cell phone	10404008
9	From work	10404008
12	From elsewhere	10404008
1191	No access to internet	10404008
48	From home	10404009
354	From cell phone	10404009
33	From work	10404009
63	From elsewhere	10404009
1368	No access to internet	10404009
30	From home	10404010
213	From cell phone	10404010
18	From work	10404010
168	From elsewhere	10404010
441	No access to internet	10404010
189	From home	10404011
345	From cell phone	10404011
57	From work	10404011
54	From elsewhere	10404011
1623	No access to internet	10404011
12	From home	10404012
150	From cell phone	10404012
21	From work	10404012
24	From elsewhere	10404012
1083	No access to internet	10404012
60	From home	10404013
276	From cell phone	10404013
84	From work	10404013
30	From elsewhere	10404013
1884	No access to internet	10404013
141	From home	10404014
246	From cell phone	10404014
111	From work	10404014
18	From elsewhere	10404014
1818	No access to internet	10404014
120	From home	10404015
549	From cell phone	10404015
48	From work	10404015
84	From elsewhere	10404015
1047	No access to internet	10404015
177	From home	10404016
429	From cell phone	10404016
69	From work	10404016
345	From elsewhere	10404016
1593	No access to internet	10404016
42	From home	10404017
360	From cell phone	10404017
45	From work	10404017
24	From elsewhere	10404017
1476	No access to internet	10404017
789	From home	10404018
210	From cell phone	10404018
183	From work	10404018
21	From elsewhere	10404018
663	No access to internet	10404018
909	From home	10404019
489	From cell phone	10404019
420	From work	10404019
75	From elsewhere	10404019
1401	No access to internet	10404019
12	From home	10404020
135	From cell phone	10404020
6	From work	10404020
12	From elsewhere	10404020
1545	No access to internet	10404020
57	From home	10404021
366	From cell phone	10404021
48	From work	10404021
306	From elsewhere	10404021
2427	No access to internet	10404021
549	From home	10404022
219	From cell phone	10404022
135	From work	10404022
42	From elsewhere	10404022
1455	No access to internet	10404022
570	From home	10404023
474	From cell phone	10404023
213	From work	10404023
51	From elsewhere	10404023
1167	No access to internet	10404023
102	From home	10404024
168	From cell phone	10404024
24	From work	10404024
45	From elsewhere	10404024
1578	No access to internet	10404024
159	From home	10404025
273	From cell phone	10404025
48	From work	10404025
174	From elsewhere	10404025
1539	No access to internet	10404025
306	From home	10405001
198	From cell phone	10405001
81	From work	10405001
42	From elsewhere	10405001
1077	No access to internet	10405001
453	From home	10405002
123	From cell phone	10405002
117	From work	10405002
24	From elsewhere	10405002
1188	No access to internet	10405002
447	From home	10405003
288	From cell phone	10405003
183	From work	10405003
42	From elsewhere	10405003
1542	No access to internet	10405003
21	From home	10405004
60	From cell phone	10405004
30	From work	10405004
6	From elsewhere	10405004
879	No access to internet	10405004
18	From home	10405005
45	From cell phone	10405005
12	From work	10405005
9	From elsewhere	10405005
1080	No access to internet	10405005
168	From home	10405006
468	From cell phone	10405006
42	From work	10405006
141	From elsewhere	10405006
1728	No access to internet	10405006
174	From home	10405007
240	From cell phone	10405007
63	From work	10405007
60	From elsewhere	10405007
1167	No access to internet	10405007
51	From home	10405008
276	From cell phone	10405008
84	From work	10405008
66	From elsewhere	10405008
1926	No access to internet	10405008
15	From home	10405009
81	From cell phone	10405009
9	From work	10405009
21	From elsewhere	10405009
891	No access to internet	10405009
21	From home	10405010
72	From cell phone	10405010
18	From work	10405010
3	From elsewhere	10405010
1161	No access to internet	10405010
204	From home	10405011
177	From cell phone	10405011
39	From work	10405011
24	From elsewhere	10405011
1752	No access to internet	10405011
90	From home	10405012
111	From cell phone	10405012
24	From work	10405012
0	From elsewhere	10405012
1221	No access to internet	10405012
66	From home	10405013
117	From cell phone	10405013
30	From work	10405013
45	From elsewhere	10405013
795	No access to internet	10405013
459	From home	10407001
426	From cell phone	10407001
132	From work	10407001
42	From elsewhere	10407001
1500	No access to internet	10407001
1317	From home	10407002
405	From cell phone	10407002
195	From work	10407002
237	From elsewhere	10407002
825	No access to internet	10407002
21	From home	10407003
171	From cell phone	10407003
45	From work	10407003
24	From elsewhere	10407003
1659	No access to internet	10407003
78	From home	10407004
363	From cell phone	10407004
72	From work	10407004
111	From elsewhere	10407004
1287	No access to internet	10407004
48	From home	10407005
483	From cell phone	10407005
57	From work	10407005
339	From elsewhere	10407005
1251	No access to internet	10407005
24	From home	10407006
150	From cell phone	10407006
57	From work	10407006
192	From elsewhere	10407006
1149	No access to internet	10407006
423	From home	10407007
408	From cell phone	10407007
162	From work	10407007
78	From elsewhere	10407007
2463	No access to internet	10407007
405	From home	10408001
363	From cell phone	10408001
57	From work	10408001
54	From elsewhere	10408001
1263	No access to internet	10408001
618	From home	10408002
159	From cell phone	10408002
81	From work	10408002
33	From elsewhere	10408002
1077	No access to internet	10408002
51	From home	10408003
309	From cell phone	10408003
33	From work	10408003
42	From elsewhere	10408003
1089	No access to internet	10408003
174	From home	10408004
198	From cell phone	10408004
66	From work	10408004
84	From elsewhere	10408004
1515	No access to internet	10408004
534	From home	10408005
192	From cell phone	10408005
69	From work	10408005
51	From elsewhere	10408005
1014	No access to internet	10408005
57	From home	10408006
153	From cell phone	10408006
81	From work	10408006
114	From elsewhere	10408006
1896	No access to internet	10408006
108	From home	10408007
330	From cell phone	10408007
87	From work	10408007
54	From elsewhere	10408007
3345	No access to internet	10408007
159	From home	10408008
249	From cell phone	10408008
90	From work	10408008
81	From elsewhere	10408008
1176	No access to internet	10408008
993	From home	10408009
240	From cell phone	10408009
105	From work	10408009
45	From elsewhere	10408009
1005	No access to internet	10408009
942	From home	10408010
258	From cell phone	10408010
195	From work	10408010
60	From elsewhere	10408010
543	No access to internet	10408010
18	From home	10501001
129	From cell phone	10501001
21	From work	10501001
105	From elsewhere	10501001
510	No access to internet	10501001
33	From home	10501002
51	From cell phone	10501002
27	From work	10501002
3	From elsewhere	10501002
180	No access to internet	10501002
24	From home	10501003
24	From cell phone	10501003
6	From work	10501003
0	From elsewhere	10501003
72	No access to internet	10501003
75	From home	10501004
69	From cell phone	10501004
12	From work	10501004
12	From elsewhere	10501004
1038	No access to internet	10501004
30	From home	10502001
189	From cell phone	10502001
18	From work	10502001
15	From elsewhere	10502001
693	No access to internet	10502001
198	From home	10502002
174	From cell phone	10502002
39	From work	10502002
30	From elsewhere	10502002
447	No access to internet	10502002
15	From home	10502003
102	From cell phone	10502003
0	From work	10502003
6	From elsewhere	10502003
447	No access to internet	10502003
78	From home	10502004
75	From cell phone	10502004
12	From work	10502004
18	From elsewhere	10502004
993	No access to internet	10502004
96	From home	10503001
165	From cell phone	10503001
24	From work	10503001
159	From elsewhere	10503001
1527	No access to internet	10503001
246	From home	10503002
192	From cell phone	10503002
81	From work	10503002
21	From elsewhere	10503002
1314	No access to internet	10503002
99	From home	10503003
159	From cell phone	10503003
39	From work	10503003
27	From elsewhere	10503003
1224	No access to internet	10503003
198	From home	10503004
312	From cell phone	10503004
108	From work	10503004
54	From elsewhere	10503004
1038	No access to internet	10503004
75	From home	10503005
312	From cell phone	10503005
42	From work	10503005
150	From elsewhere	10503005
1305	No access to internet	10503005
33	From home	10503006
165	From cell phone	10503006
6	From work	10503006
18	From elsewhere	10503006
942	No access to internet	10503006
60	From home	10503007
183	From cell phone	10503007
27	From work	10503007
12	From elsewhere	10503007
2676	No access to internet	10503007
4695	From home	19100001
825	From cell phone	19100001
1128	From work	19100001
216	From elsewhere	19100001
2223	No access to internet	19100001
3405	From home	19100002
1311	From cell phone	19100002
1239	From work	19100002
321	From elsewhere	19100002
2451	No access to internet	19100002
4173	From home	19100003
1590	From cell phone	19100003
1578	From work	19100003
354	From elsewhere	19100003
3291	No access to internet	19100003
4380	From home	19100004
2637	From cell phone	19100004
1920	From work	19100004
999	From elsewhere	19100004
5349	No access to internet	19100004
3486	From home	19100005
777	From cell phone	19100005
1218	From work	19100005
231	From elsewhere	19100005
1890	No access to internet	19100005
624	From home	19100006
1032	From cell phone	19100006
459	From work	19100006
303	From elsewhere	19100006
3897	No access to internet	19100006
1179	From home	19100007
1578	From cell phone	19100007
609	From work	19100007
387	From elsewhere	19100007
3045	No access to internet	19100007
4188	From home	19100008
2145	From cell phone	19100008
2136	From work	19100008
438	From elsewhere	19100008
4098	No access to internet	19100008
654	From home	19100009
909	From cell phone	19100009
396	From work	19100009
528	From elsewhere	19100009
3561	No access to internet	19100009
1380	From home	19100010
1920	From cell phone	19100010
753	From work	19100010
369	From elsewhere	19100010
3195	No access to internet	19100010
2097	From home	19100011
1917	From cell phone	19100011
972	From work	19100011
510	From elsewhere	19100011
5328	No access to internet	19100011
414	From home	19100012
1656	From cell phone	19100012
414	From work	19100012
405	From elsewhere	19100012
4704	No access to internet	19100012
252	From home	19100013
2034	From cell phone	19100013
312	From work	19100013
582	From elsewhere	19100013
7338	No access to internet	19100013
2424	From home	19100014
1935	From cell phone	19100014
1125	From work	19100014
381	From elsewhere	19100014
6240	No access to internet	19100014
4524	From home	19100015
657	From cell phone	19100015
816	From work	19100015
159	From elsewhere	19100015
2010	No access to internet	19100015
636	From home	19100016
2067	From cell phone	19100016
588	From work	19100016
1095	From elsewhere	19100016
5739	No access to internet	19100016
945	From home	19100017
2241	From cell phone	19100017
588	From work	19100017
864	From elsewhere	19100017
4365	No access to internet	19100017
171	From home	19100018
858	From cell phone	19100018
255	From work	19100018
933	From elsewhere	19100018
3816	No access to internet	19100018
1395	From home	19100019
2457	From cell phone	19100019
1032	From work	19100019
906	From elsewhere	19100019
7905	No access to internet	19100019
420	From home	19100020
1386	From cell phone	19100020
216	From work	19100020
1182	From elsewhere	19100020
7302	No access to internet	19100020
4416	From home	19100021
741	From cell phone	19100021
1020	From work	19100021
339	From elsewhere	19100021
1539	No access to internet	19100021
990	From home	19100022
1434	From cell phone	19100022
540	From work	19100022
324	From elsewhere	19100022
4167	No access to internet	19100022
6570	From home	19100023
1956	From cell phone	19100023
2055	From work	19100023
402	From elsewhere	19100023
2229	No access to internet	19100023
225	From home	19100024
1140	From cell phone	19100024
183	From work	19100024
279	From elsewhere	19100024
4257	No access to internet	19100024
555	From home	19100025
1083	From cell phone	19100025
342	From work	19100025
369	From elsewhere	19100025
6372	No access to internet	19100025
1293	From home	19100026
1458	From cell phone	19100026
597	From work	19100026
750	From elsewhere	19100026
3840	No access to internet	19100026
2496	From home	19100027
1761	From cell phone	19100027
1086	From work	19100027
576	From elsewhere	19100027
3132	No access to internet	19100027
363	From home	19100028
1158	From cell phone	19100028
204	From work	19100028
234	From elsewhere	19100028
4581	No access to internet	19100028
486	From home	19100029
1803	From cell phone	19100029
378	From work	19100029
831	From elsewhere	19100029
5760	No access to internet	19100029
684	From home	19100030
1632	From cell phone	19100030
483	From work	19100030
687	From elsewhere	19100030
4884	No access to internet	19100030
507	From home	19100031
1275	From cell phone	19100031
288	From work	19100031
288	From elsewhere	19100031
4551	No access to internet	19100031
486	From home	19100032
1944	From cell phone	19100032
330	From work	19100032
318	From elsewhere	19100032
6393	No access to internet	19100032
306	From home	19100033
1818	From cell phone	19100033
291	From work	19100033
1389	From elsewhere	19100033
11385	No access to internet	19100033
168	From home	19100034
1686	From cell phone	19100034
276	From work	19100034
987	From elsewhere	19100034
8766	No access to internet	19100034
243	From home	19100035
1191	From cell phone	19100035
336	From work	19100035
1134	From elsewhere	19100035
8895	No access to internet	19100035
258	From home	19100036
1242	From cell phone	19100036
261	From work	19100036
1473	From elsewhere	19100036
6537	No access to internet	19100036
87	From home	19100037
645	From cell phone	19100037
141	From work	19100037
975	From elsewhere	19100037
4134	No access to internet	19100037
225	From home	19100038
1242	From cell phone	19100038
153	From work	19100038
1026	From elsewhere	19100038
1935	No access to internet	19100038
132	From home	19100039
1008	From cell phone	19100039
168	From work	19100039
621	From elsewhere	19100039
6309	No access to internet	19100039
192	From home	19100040
891	From cell phone	19100040
216	From work	19100040
630	From elsewhere	19100040
6282	No access to internet	19100040
225	From home	19100041
1020	From cell phone	19100041
303	From work	19100041
924	From elsewhere	19100041
2601	No access to internet	19100041
195	From home	19100042
1497	From cell phone	19100042
273	From work	19100042
933	From elsewhere	19100042
6294	No access to internet	19100042
1617	From home	19100043
2727	From cell phone	19100043
1176	From work	19100043
372	From elsewhere	19100043
3927	No access to internet	19100043
501	From home	19100044
1584	From cell phone	19100044
354	From work	19100044
501	From elsewhere	19100044
5997	No access to internet	19100044
267	From home	19100045
1383	From cell phone	19100045
210	From work	19100045
978	From elsewhere	19100045
4776	No access to internet	19100045
987	From home	19100046
1365	From cell phone	19100046
381	From work	19100046
465	From elsewhere	19100046
3777	No access to internet	19100046
213	From home	19100047
876	From cell phone	19100047
135	From work	19100047
756	From elsewhere	19100047
4983	No access to internet	19100047
2112	From home	19100048
1281	From cell phone	19100048
654	From work	19100048
237	From elsewhere	19100048
3417	No access to internet	19100048
909	From home	19100049
2109	From cell phone	19100049
429	From work	19100049
315	From elsewhere	19100049
4887	No access to internet	19100049
282	From home	19100050
1467	From cell phone	19100050
291	From work	19100050
267	From elsewhere	19100050
4725	No access to internet	19100050
282	From home	19100051
1131	From cell phone	19100051
381	From work	19100051
1362	From elsewhere	19100051
4200	No access to internet	19100051
114	From home	19100052
972	From cell phone	19100052
213	From work	19100052
1077	From elsewhere	19100052
6282	No access to internet	19100052
3813	From home	19100053
1158	From cell phone	19100053
1143	From work	19100053
570	From elsewhere	19100053
2310	No access to internet	19100053
6378	From home	19100054
1656	From cell phone	19100054
1794	From work	19100054
594	From elsewhere	19100054
2907	No access to internet	19100054
3303	From home	19100055
2073	From cell phone	19100055
1188	From work	19100055
792	From elsewhere	19100055
4119	No access to internet	19100055
1425	From home	19100056
2478	From cell phone	19100056
798	From work	19100056
597	From elsewhere	19100056
3363	No access to internet	19100056
4200	From home	19100057
1785	From cell phone	19100057
1182	From work	19100057
972	From elsewhere	19100057
2064	No access to internet	19100057
6504	From home	19100058
1206	From cell phone	19100058
1371	From work	19100058
363	From elsewhere	19100058
1416	No access to internet	19100058
6174	From home	19100059
1242	From cell phone	19100059
1401	From work	19100059
477	From elsewhere	19100059
1596	No access to internet	19100059
3591	From home	19100060
1419	From cell phone	19100060
900	From work	19100060
339	From elsewhere	19100060
2067	No access to internet	19100060
2796	From home	19100061
1236	From cell phone	19100061
354	From work	19100061
258	From elsewhere	19100061
3153	No access to internet	19100061
5187	From home	19100062
960	From cell phone	19100062
882	From work	19100062
177	From elsewhere	19100062
1791	No access to internet	19100062
2871	From home	19100063
1404	From cell phone	19100063
891	From work	19100063
282	From elsewhere	19100063
2505	No access to internet	19100063
4887	From home	19100064
1164	From cell phone	19100064
1098	From work	19100064
414	From elsewhere	19100064
2145	No access to internet	19100064
843	From home	19100065
1602	From cell phone	19100065
471	From work	19100065
456	From elsewhere	19100065
3498	No access to internet	19100065
708	From home	19100066
1248	From cell phone	19100066
405	From work	19100066
420	From elsewhere	19100066
3609	No access to internet	19100066
1047	From home	19100067
2193	From cell phone	19100067
423	From work	19100067
1050	From elsewhere	19100067
7434	No access to internet	19100067
630	From home	19100068
1497	From cell phone	19100068
285	From work	19100068
666	From elsewhere	19100068
4059	No access to internet	19100068
3618	From home	19100069
1596	From cell phone	19100069
525	From work	19100069
1557	From elsewhere	19100069
5784	No access to internet	19100069
5373	From home	19100070
891	From cell phone	19100070
1359	From work	19100070
138	From elsewhere	19100070
1686	No access to internet	19100070
5166	From home	19100071
825	From cell phone	19100071
858	From work	19100071
183	From elsewhere	19100071
2250	No access to internet	19100071
1947	From home	19100072
1284	From cell phone	19100072
624	From work	19100072
351	From elsewhere	19100072
2571	No access to internet	19100072
4458	From home	19100073
810	From cell phone	19100073
984	From work	19100073
183	From elsewhere	19100073
2058	No access to internet	19100073
4311	From home	19100074
2013	From cell phone	19100074
774	From work	19100074
852	From elsewhere	19100074
5355	No access to internet	19100074
1014	From home	19100075
2277	From cell phone	19100075
675	From work	19100075
762	From elsewhere	19100075
5142	No access to internet	19100075
687	From home	19100076
1980	From cell phone	19100076
675	From work	19100076
1344	From elsewhere	19100076
4206	No access to internet	19100076
5409	From home	19100077
1713	From cell phone	19100077
1767	From work	19100077
561	From elsewhere	19100077
1707	No access to internet	19100077
978	From home	19100078
2895	From cell phone	19100078
693	From work	19100078
1188	From elsewhere	19100078
3294	No access to internet	19100078
345	From home	19100079
1740	From cell phone	19100079
279	From work	19100079
690	From elsewhere	19100079
4260	No access to internet	19100079
486	From home	19100080
2277	From cell phone	19100080
369	From work	19100080
1212	From elsewhere	19100080
11487	No access to internet	19100080
654	From home	19100081
1707	From cell phone	19100081
375	From work	19100081
231	From elsewhere	19100081
4227	No access to internet	19100081
309	From home	19100082
1584	From cell phone	19100082
246	From work	19100082
549	From elsewhere	19100082
5925	No access to internet	19100082
1833	From home	19100083
1293	From cell phone	19100083
438	From work	19100083
438	From elsewhere	19100083
4860	No access to internet	19100083
4299	From home	19100084
840	From cell phone	19100084
903	From work	19100084
252	From elsewhere	19100084
2475	No access to internet	19100084
1305	From home	19100085
1935	From cell phone	19100085
636	From work	19100085
528	From elsewhere	19100085
6162	No access to internet	19100085
597	From home	19100086
1719	From cell phone	19100086
333	From work	19100086
450	From elsewhere	19100086
8634	No access to internet	19100086
90	From home	19100087
885	From cell phone	19100087
150	From work	19100087
978	From elsewhere	19100087
6498	No access to internet	19100087
366	From home	19100088
1950	From cell phone	19100088
360	From work	19100088
873	From elsewhere	19100088
6264	No access to internet	19100088
75	From home	19100089
1596	From cell phone	19100089
162	From work	19100089
1092	From elsewhere	19100089
6651	No access to internet	19100089
144	From home	19100090
1251	From cell phone	19100090
210	From work	19100090
1059	From elsewhere	19100090
6666	No access to internet	19100090
186	From home	19100091
1653	From cell phone	19100091
234	From work	19100091
990	From elsewhere	19100091
5937	No access to internet	19100091
600	From home	19100092
2196	From cell phone	19100092
546	From work	19100092
1626	From elsewhere	19100092
4398	No access to internet	19100092
159	From home	19100093
1446	From cell phone	19100093
183	From work	19100093
1161	From elsewhere	19100093
6723	No access to internet	19100093
381	From home	19100094
1236	From cell phone	19100094
420	From work	19100094
912	From elsewhere	19100094
3456	No access to internet	19100094
405	From home	19100095
2553	From cell phone	19100095
543	From work	19100095
1905	From elsewhere	19100095
14946	No access to internet	19100095
222	From home	19100096
981	From cell phone	19100096
156	From work	19100096
1065	From elsewhere	19100096
5073	No access to internet	19100096
201	From home	19100097
1683	From cell phone	19100097
237	From work	19100097
1227	From elsewhere	19100097
4305	No access to internet	19100097
150	From home	19100098
1323	From cell phone	19100098
279	From work	19100098
999	From elsewhere	19100098
6075	No access to internet	19100098
339	From home	19100099
2157	From cell phone	19100099
351	From work	19100099
861	From elsewhere	19100099
8979	No access to internet	19100099
2913	From home	19100100
2082	From cell phone	19100100
1059	From work	19100100
651	From elsewhere	19100100
6474	No access to internet	19100100
234	From home	19100101
1119	From cell phone	19100101
183	From work	19100101
828	From elsewhere	19100101
6645	No access to internet	19100101
3567	From home	19100102
1623	From cell phone	19100102
1416	From work	19100102
237	From elsewhere	19100102
2433	No access to internet	19100102
6423	From home	19100103
2247	From cell phone	19100103
2703	From work	19100103
309	From elsewhere	19100103
3261	No access to internet	19100103
390	From home	19100104
3027	From cell phone	19100104
198	From work	19100104
1665	From elsewhere	19100104
9111	No access to internet	19100104
3903	From home	19100105
1788	From cell phone	19100105
1221	From work	19100105
462	From elsewhere	19100105
5490	No access to internet	19100105
465	From home	19100106
2766	From cell phone	19100106
486	From work	19100106
1740	From elsewhere	19100106
13086	No access to internet	19100106
7398	From home	19100107
2697	From cell phone	19100107
2520	From work	19100107
804	From elsewhere	19100107
2658	No access to internet	19100107
390	From home	19100108
2151	From cell phone	19100108
351	From work	19100108
3120	From elsewhere	19100108
11457	No access to internet	19100108
459	From home	19100109
1962	From cell phone	19100109
222	From work	19100109
660	From elsewhere	19100109
6159	No access to internet	19100109
684	From home	19100110
1389	From cell phone	19100110
327	From work	19100110
273	From elsewhere	19100110
3435	No access to internet	19100110
876	From home	19100111
1428	From cell phone	19100111
411	From work	19100111
759	From elsewhere	19100111
6276	No access to internet	19100111
\.


--
-- Name: accesstointernet_country_pkey; Type: CONSTRAINT; Schema: public; Owner: census; Tablespace: 
--

ALTER TABLE ONLY accesstointernet_country
    ADD CONSTRAINT accesstointernet_country_pkey PRIMARY KEY ("access to internet");


--
-- Name: accesstointernet_municipality_pkey; Type: CONSTRAINT; Schema: public; Owner: census; Tablespace: 
--

ALTER TABLE ONLY accesstointernet_municipality
    ADD CONSTRAINT accesstointernet_municipality_pkey PRIMARY KEY ("access to internet", municipality_code);


--
-- Name: accesstointernet_province_pkey; Type: CONSTRAINT; Schema: public; Owner: census; Tablespace: 
--

ALTER TABLE ONLY accesstointernet_province
    ADD CONSTRAINT accesstointernet_province_pkey PRIMARY KEY ("access to internet", province_code);


--
-- Name: accesstointernet_ward_pkey; Type: CONSTRAINT; Schema: public; Owner: census; Tablespace: 
--

ALTER TABLE ONLY accesstointernet_ward
    ADD CONSTRAINT accesstointernet_ward_pkey PRIMARY KEY ("access to internet", ward_code);


--
-- Name: accesstointernet_country_country_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: census
--

ALTER TABLE ONLY accesstointernet_country
    ADD CONSTRAINT accesstointernet_country_country_code_fkey FOREIGN KEY (country_code) REFERENCES country(code);


--
-- Name: accesstointernet_municipality_municipality_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: census
--

ALTER TABLE ONLY accesstointernet_municipality
    ADD CONSTRAINT accesstointernet_municipality_municipality_code_fkey FOREIGN KEY (municipality_code) REFERENCES municipality(code);


--
-- Name: accesstointernet_province_province_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: census
--

ALTER TABLE ONLY accesstointernet_province
    ADD CONSTRAINT accesstointernet_province_province_code_fkey FOREIGN KEY (province_code) REFERENCES province(code);


--
-- Name: accesstointernet_ward_ward_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: census
--

ALTER TABLE ONLY accesstointernet_ward
    ADD CONSTRAINT accesstointernet_ward_ward_code_fkey FOREIGN KEY (ward_code) REFERENCES ward(code);


--
-- PostgreSQL database dump complete
--

