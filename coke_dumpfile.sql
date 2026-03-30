--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5
-- Dumped by pg_dump version 17.5

-- Started on 2026-03-30 01:19:00

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 221 (class 1259 OID 16414)
-- Name: consumption; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.consumption (
    date date NOT NULL,
    ounces double precision DEFAULT 0,
    id integer NOT NULL
);


ALTER TABLE public.consumption OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16397)
-- Name: franchises; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.franchises (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    soda_id integer
);


ALTER TABLE public.franchises OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16396)
-- Name: franchises_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.franchises_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.franchises_id_seq OWNER TO postgres;

--
-- TOC entry 4916 (class 0 OID 0)
-- Dependencies: 219
-- Name: franchises_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.franchises_id_seq OWNED BY public.franchises.id;


--
-- TOC entry 218 (class 1259 OID 16390)
-- Name: sodas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sodas (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.sodas OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16389)
-- Name: sodas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sodas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sodas_id_seq OWNER TO postgres;

--
-- TOC entry 4917 (class 0 OID 0)
-- Dependencies: 217
-- Name: sodas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sodas_id_seq OWNED BY public.sodas.id;


--
-- TOC entry 4752 (class 2604 OID 16400)
-- Name: franchises id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.franchises ALTER COLUMN id SET DEFAULT nextval('public.franchises_id_seq'::regclass);


--
-- TOC entry 4751 (class 2604 OID 16393)
-- Name: sodas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sodas ALTER COLUMN id SET DEFAULT nextval('public.sodas_id_seq'::regclass);


--
-- TOC entry 4910 (class 0 OID 16414)
-- Dependencies: 221
-- Data for Name: consumption; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.consumption (date, ounces, id) FROM stdin;
2025-06-24	40	2
2025-06-26	30	4
2025-06-27	20	5
2025-06-28	32	6
2025-06-29	12	7
2025-06-30	0	8
2025-06-23	0	1
2025-06-25	0	3
2025-07-01	20	9
2025-07-02	12	10
2025-07-03	36	11
2025-07-04	33	12
2025-07-05	0	13
2025-07-06	40	14
2025-07-07	12	15
2025-07-08	0	16
2025-07-09	0	17
2025-07-10	0	18
2025-07-11	0	19
2025-07-12	0	20
2025-07-13	0	21
2025-07-15	0	23
2025-07-16	0	24
2025-07-17	0	25
2025-07-18	0	26
2025-07-20	0	28
2025-07-14	17	22
2025-07-19	20	27
2025-07-21	0	29
2025-07-22	0	30
2025-07-24	0	32
2025-07-23	25	31
2025-07-25	12	33
2025-07-26	0	34
2025-07-27	15	35
2025-07-28	24	36
2025-07-29	16	37
2025-07-30	12	38
2025-07-31	0	39
2025-08-01	0	40
2025-08-02	0	41
2025-08-03	24	42
2025-08-04	0	43
2025-08-05	0	44
2025-08-06	0	45
2025-08-07	20	46
2025-08-08	12	47
2025-08-09	0	48
2025-08-10	14	49
2025-08-11	0	50
2025-08-12	24	51
2025-08-13	0	52
2025-08-14	0	53
2025-08-15	0	54
2025-08-16	0	55
2025-08-17	10	56
2025-08-18	0	57
2025-08-20	0	59
2025-08-21	35	60
2025-08-19	40	58
2025-08-22	12	61
2025-08-23	12	62
2025-08-24	12	63
2025-08-25	0	64
2025-08-26	20	65
2025-08-27	20	66
2025-08-28	10	67
2025-08-29	25	68
2025-08-30	25	69
2025-08-31	25	70
2025-09-01	20	71
2025-09-02	12	72
2025-09-03	15	73
2025-09-04	12	74
2025-09-05	40	75
2025-09-06	0	76
2025-09-07	0	77
2025-09-08	0	78
2025-09-09	30	79
2025-09-10	15	80
2025-09-11	12	81
2025-09-12	0	82
2025-09-13	42	83
2025-09-14	12	84
2025-09-15	0	85
2025-09-16	30	86
2025-09-17	0	87
2025-09-18	0	88
2025-09-19	0	89
2025-09-20	12	90
2025-09-21	30	91
2025-09-22	0	92
2025-09-23	20	93
2025-09-24	0	94
2025-09-25	12	95
2025-09-26	12	96
2025-09-27	0	97
2025-09-28	20	98
2025-09-29	12	99
2025-09-30	0	100
2025-10-01	30	101
2025-10-02	12	102
2025-10-03	0	103
2025-10-04	0	104
2025-10-05	30	105
2025-10-06	0	106
2025-10-07	15	107
2025-10-08	0	108
2025-10-09	24	109
2025-10-10	12	110
2025-10-11	0	111
2025-10-12	0	112
2025-10-13	25	113
2025-10-14	25	114
2025-10-15	12	115
2025-10-16	30	116
2025-10-17	0	117
2025-10-18	25	118
2025-10-19	40	119
2025-10-20	0	120
2025-10-21	0	121
2025-10-22	25	122
2025-10-23	25	123
2025-10-24	12	124
2025-10-25	0	125
2025-10-26	12	126
2025-10-27	0	127
2025-10-28	0	128
2025-10-29	12	129
2025-10-30	0	130
2025-10-31	12	131
2025-11-01	0	132
2025-11-02	24	133
2025-11-03	20	134
2025-11-04	0	135
2025-11-05	0	136
2025-11-06	0	137
2025-11-07	24	138
2025-11-08	0	139
2025-11-09	20	140
2025-11-10	0	141
2025-11-11	12	142
2025-11-12	0	143
2025-11-13	20	144
2025-11-14	0	145
2025-11-15	12	146
2025-11-16	0	147
2025-11-17	12	148
2025-11-18	25	149
2025-11-19	0	150
2025-11-20	0	151
2025-11-21	0	152
2025-11-22	12	153
2025-11-23	12	154
2025-11-24	0	155
2025-11-25	0	156
2025-11-26	24	157
2025-11-27	0	158
2025-11-28	0	159
2025-11-29	0	160
2025-11-30	0	161
2025-12-01	0	162
2025-12-02	0	163
2025-12-03	0	164
2025-12-04	0	165
2025-12-05	0	166
2025-12-06	20	167
2025-12-07	0	168
2025-12-08	0	169
2025-12-09	0	170
2025-12-10	25	171
2025-12-11	0	172
2025-12-12	0	173
2025-12-13	24	174
2025-12-14	25	175
2025-12-15	0	176
2025-12-16	0	177
2025-12-21	0	182
2025-12-22	12	183
2025-12-23	0	184
2025-12-24	0	185
2025-12-25	15	186
2025-12-26	0	187
2025-12-27	0	188
2025-12-28	0	189
2025-12-29	0	190
2025-12-18	0	179
2025-12-19	12	180
2025-12-20	20	181
2025-12-17	12	178
2025-12-30	24	191
2025-12-31	0	192
2026-01-01	0	193
2026-01-02	12	194
2026-01-03	0	195
2026-01-04	0	196
2026-01-05	0	197
2026-01-06	0	198
2026-01-07	12	199
2026-01-08	0	200
2026-01-09	0	201
2026-01-10	40	202
2026-01-11	0	203
2026-01-12	0	204
2026-01-13	12	205
2026-01-14	0	206
2026-01-15	0	207
2026-01-16	30	208
2026-01-17	0	209
2026-01-18	45	210
2026-01-19	0	211
2026-01-20	0	212
2026-01-21	0	213
2026-01-22	0	214
2026-01-23	30	215
2026-01-24	0	216
2026-01-25	0	217
2026-01-26	20	218
2026-01-27	25	219
2026-01-28	0	220
2026-01-29	0	221
2026-01-30	0	222
2026-01-31	40	223
2026-02-01	15	224
2026-02-02	12	225
2026-02-03	25	226
2026-02-04	0	227
2026-02-05	24	228
2026-02-06	30	229
2026-02-07	0	230
2026-02-08	0	231
2026-02-09	12	232
2026-02-10	20	233
2026-02-11	20	234
2026-02-12	12	235
2026-02-13	0	236
2026-02-14	15	237
2026-02-15	0	238
2026-02-16	0	239
2026-02-17	12	240
2026-02-18	0	241
2026-02-19	0	242
2026-02-20	12	243
2026-02-21	13	244
2026-02-22	40	245
2026-02-23	0	246
2026-02-24	0	247
2026-02-25	0	248
2026-02-26	0	249
2026-02-27	10	250
2026-02-28	0	251
2026-03-01	12	252
2026-03-02	0	253
2026-03-03	0	254
2026-03-04	0	255
2026-03-05	0	256
2026-03-06	0	257
2026-03-07	30	258
2026-03-08	36	259
2026-03-09	0	260
2026-03-10	20	261
2026-03-11	20	262
2026-03-12	0	263
2026-03-13	12	264
2026-03-14	45	265
2026-03-15	0	266
2026-03-16	0	267
2026-03-17	0	268
2026-03-18	0	269
2026-03-19	0	270
2026-03-20	0	271
2026-03-21	30	272
2026-03-22	12	273
2026-03-23	0	274
2026-03-24	25	275
2026-03-25	40	276
2026-03-26	0	277
2026-03-27	12	278
2026-03-28	25	279
\.


--
-- TOC entry 4909 (class 0 OID 16397)
-- Dependencies: 220
-- Data for Name: franchises; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.franchises (id, name, soda_id) FROM stdin;
1	McDonald's	1
3	Wendy's	1
2	Emiliano's	2
4	Jersey Mike's	2
5	Patron	2
6	Mad Mex	2
7	Hello Bistro	2
8	Piada	2
9	Red Robin	1
10	La Calera	1
11	Hokkaido	1
12	Katana	1
13	Sushi Bomb	2
14	Applebee's	2
15	Buffalo Wild Wings	2
16	Chipotle	1
17	Moe's	1
18	Penn Station	2
19	Primanti's	1
20	Sidelines	2
21	Jimmy John's	1
22	Texas Roadhouse	1
23	Mission BBQ	2
24	Smokey Bones	1
25	Chili's	1
26	Aladdin's	1
27	Cheesecake Factory	1
28	Big Jim's	2
29	Asahi	1
30	Firehouse Subs	1
31	Eat N Park	2
32	Denny's	1
33	Rowdy BBQ	2
34	Olive Garden	1
35	PF Chang's	1
\.


--
-- TOC entry 4907 (class 0 OID 16390)
-- Dependencies: 218
-- Data for Name: sodas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sodas (id, name) FROM stdin;
1	Coke
2	Pepsi
5	Dr Pepper
6	RC Cola
\.


--
-- TOC entry 4918 (class 0 OID 0)
-- Dependencies: 219
-- Name: franchises_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.franchises_id_seq', 35, true);


--
-- TOC entry 4919 (class 0 OID 0)
-- Dependencies: 217
-- Name: sodas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sodas_id_seq', 6, true);


--
-- TOC entry 4759 (class 2606 OID 16419)
-- Name: consumption consumption_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consumption
    ADD CONSTRAINT consumption_pk PRIMARY KEY (id);


--
-- TOC entry 4757 (class 2606 OID 16402)
-- Name: franchises franchises_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.franchises
    ADD CONSTRAINT franchises_pkey PRIMARY KEY (id);


--
-- TOC entry 4755 (class 2606 OID 16395)
-- Name: sodas sodas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sodas
    ADD CONSTRAINT sodas_pkey PRIMARY KEY (id);


--
-- TOC entry 4760 (class 2606 OID 16403)
-- Name: franchises fk_soda; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.franchises
    ADD CONSTRAINT fk_soda FOREIGN KEY (soda_id) REFERENCES public.sodas(id);


-- Completed on 2026-03-30 01:19:00

--
-- PostgreSQL database dump complete
--

