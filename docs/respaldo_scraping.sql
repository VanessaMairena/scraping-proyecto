--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4
-- Dumped by pg_dump version 16.4

-- Started on 2025-07-07 13:47:25

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
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
-- TOC entry 216 (class 1259 OID 16529)
-- Name: productos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.productos (
    id integer NOT NULL,
    titulo text NOT NULL,
    precio text NOT NULL,
    origen text NOT NULL,
    fecha timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.productos OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16528)
-- Name: productos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.productos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.productos_id_seq OWNER TO postgres;

--
-- TOC entry 4889 (class 0 OID 0)
-- Dependencies: 215
-- Name: productos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.productos_id_seq OWNED BY public.productos.id;


--
-- TOC entry 4735 (class 2604 OID 16532)
-- Name: productos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos ALTER COLUMN id SET DEFAULT nextval('public.productos_id_seq'::regclass);


--
-- TOC entry 4883 (class 0 OID 16529)
-- Dependencies: 216
-- Data for Name: productos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.productos (id, titulo, precio, origen, fecha) FROM stdin;
1	A Light in the Attic	Â£51.77	scraper_static	2025-06-24 18:05:18.747838
2	Tipping the Velvet	Â£53.74	scraper_static	2025-06-24 18:05:18.747838
3	Soumission	Â£50.10	scraper_static	2025-06-24 18:05:18.747838
4	Sharp Objects	Â£47.82	scraper_static	2025-06-24 18:05:18.747838
5	Sapiens: A Brief History of Humankind	Â£54.23	scraper_static	2025-06-24 18:05:18.747838
6	The Requiem Red	Â£22.65	scraper_static	2025-06-24 18:05:18.747838
7	The Dirty Little Secrets of Getting Your Dream Job	Â£33.34	scraper_static	2025-06-24 18:05:18.747838
8	The Coming Woman: A Novel Based on the Life of the Infamous Feminist, Victoria Woodhull	Â£17.93	scraper_static	2025-06-24 18:05:18.747838
9	The Boys in the Boat: Nine Americans and Their Epic Quest for Gold at the 1936 Berlin Olympics	Â£22.60	scraper_static	2025-06-24 18:05:18.747838
10	The Black Maria	Â£52.15	scraper_static	2025-06-24 18:05:18.747838
11	Starving Hearts (Triangular Trade Trilogy, #1)	Â£13.99	scraper_static	2025-06-24 18:05:18.747838
12	Shakespeare's Sonnets	Â£20.66	scraper_static	2025-06-24 18:05:18.747838
13	Set Me Free	Â£17.46	scraper_static	2025-06-24 18:05:18.747838
14	Scott Pilgrim's Precious Little Life (Scott Pilgrim #1)	Â£52.29	scraper_static	2025-06-24 18:05:18.747838
15	Rip it Up and Start Again	Â£35.02	scraper_static	2025-06-24 18:05:18.747838
16	Our Band Could Be Your Life: Scenes from the American Indie Underground, 1981-1991	Â£57.25	scraper_static	2025-06-24 18:05:18.747838
17	Olio	Â£23.88	scraper_static	2025-06-24 18:05:18.747838
18	Mesaerion: The Best Science Fiction Stories 1800-1849	Â£37.59	scraper_static	2025-06-24 18:05:18.747838
19	Libertarianism for Beginners	Â£51.33	scraper_static	2025-06-24 18:05:18.747838
20	It's Only the Himalayas	Â£45.17	scraper_static	2025-06-24 18:05:18.747838
21	A Light in the Attic	£51.77	books.toscrape.com	2025-06-24 20:00:37.513895
22	Tipping the Velvet	£53.74	books.toscrape.com	2025-06-24 20:00:37.530623
23	Soumission	£50.10	books.toscrape.com	2025-06-24 20:00:37.531507
24	Sharp Objects	£47.82	books.toscrape.com	2025-06-24 20:00:37.532138
25	Sapiens: A Brief History of Humankind	£54.23	books.toscrape.com	2025-06-24 20:00:37.532702
26	The Requiem Red	£22.65	books.toscrape.com	2025-06-24 20:00:37.533193
27	The Dirty Little Secrets of Getting Your Dream Job	£33.34	books.toscrape.com	2025-06-24 20:00:37.533742
28	The Coming Woman: A Novel Based on the Life of the Infamous Feminist, Victoria Woodhull	£17.93	books.toscrape.com	2025-06-24 20:00:37.534228
29	The Boys in the Boat: Nine Americans and Their Epic Quest for Gold at the 1936 Berlin Olympics	£22.60	books.toscrape.com	2025-06-24 20:00:37.534628
30	The Black Maria	£52.15	books.toscrape.com	2025-06-24 20:00:37.535113
31	Starving Hearts (Triangular Trade Trilogy, #1)	£13.99	books.toscrape.com	2025-06-24 20:00:37.535574
32	Shakespeare's Sonnets	£20.66	books.toscrape.com	2025-06-24 20:00:37.536032
33	Set Me Free	£17.46	books.toscrape.com	2025-06-24 20:00:37.536391
34	Scott Pilgrim's Precious Little Life (Scott Pilgrim #1)	£52.29	books.toscrape.com	2025-06-24 20:00:37.536698
35	Rip it Up and Start Again	£35.02	books.toscrape.com	2025-06-24 20:00:37.53698
36	Our Band Could Be Your Life: Scenes from the American Indie Underground, 1981-1991	£57.25	books.toscrape.com	2025-06-24 20:00:37.537264
37	Olio	£23.88	books.toscrape.com	2025-06-24 20:00:37.537551
38	Mesaerion: The Best Science Fiction Stories 1800-1849	£37.59	books.toscrape.com	2025-06-24 20:00:37.537829
39	Libertarianism for Beginners	£51.33	books.toscrape.com	2025-06-24 20:00:37.538106
40	It's Only the Himalayas	£45.17	books.toscrape.com	2025-06-24 20:00:37.538376
\.


--
-- TOC entry 4890 (class 0 OID 0)
-- Dependencies: 215
-- Name: productos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.productos_id_seq', 40, true);


--
-- TOC entry 4738 (class 2606 OID 16537)
-- Name: productos productos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id);


-- Completed on 2025-07-07 13:47:25

--
-- PostgreSQL database dump complete
--

