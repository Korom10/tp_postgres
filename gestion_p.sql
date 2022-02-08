--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)

-- Started on 2022-02-08 11:39:04 WAT

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
-- TOC entry 202 (class 1259 OID 16691)
-- Name: commune; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.commune (
    id_commune integer NOT NULL,
    nom_commune text,
    population integer,
    id_ville integer
);


ALTER TABLE public.commune OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16697)
-- Name: entreprise; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.entreprise (
    id_entreprise integer NOT NULL,
    nom_entreprise text
);


ALTER TABLE public.entreprise OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16703)
-- Name: projet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.projet (
    id_projet integer NOT NULL,
    intitule_projet text,
    montant character varying(150),
    datedebut date,
    datefin date,
    id_commune integer,
    idsecteur integer,
    id_entreprise integer
);


ALTER TABLE public.projet OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16709)
-- Name: secteur; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.secteur (
    idsecteur integer NOT NULL,
    nom_secteur text
);


ALTER TABLE public.secteur OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16715)
-- Name: ville; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ville (
    id_ville integer NOT NULL,
    nom_ville text
);


ALTER TABLE public.ville OWNER TO postgres;

--
-- TOC entry 2999 (class 0 OID 16691)
-- Dependencies: 202
-- Data for Name: commune; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.commune (id_commune, nom_commune, population, id_ville) FROM stdin;
1	Caithness	834	1
2	Oyo	661	2
3	Bến Tre	947	3
4	Niger	550	4
5	Kano	630	5
6	Lambayeque	260	6
7	Rio de Janeiro	255	7
8	Oost-Vlaanderen	385	8
9	Nunavut	581	9
10	Euskadi	621	10
\.


--
-- TOC entry 3000 (class 0 OID 16697)
-- Dependencies: 203
-- Data for Name: entreprise; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.entreprise (id_entreprise, nom_entreprise) FROM stdin;
1	Mi Tempor Company
2	Curabitur Sed Tortor Corp.
3	In Dolor Corp.
4	Nisi Company
5	Ipsum Institute
6	Adipiscing Consulting
7	Id Foundation
8	Risus Inc.
9	Sed Ltd
10	Nascetur LLP
\.


--
-- TOC entry 3001 (class 0 OID 16703)
-- Dependencies: 204
-- Data for Name: projet; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.projet (id_projet, intitule_projet, montant, datedebut, datefin, id_commune, idsecteur, id_entreprise) FROM stdin;
1	quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse	$9.61	2021-09-08	2021-03-14	10	7	10
2	quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse	$6.54	2021-09-30	2021-03-31	3	9	1
3	molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et	$1.92	2021-11-08	2021-08-13	5	4	5
4	eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris	$7.85	2021-06-02	2021-03-13	7	3	5
5	rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio	$5.77	2021-10-08	2021-10-14	6	4	4
6	etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut	$5.47	2021-09-23	2021-04-03	3	3	10
7	a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque	$1.73	2021-07-14	2021-11-19	8	3	6
8	sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis	$7.21	2021-07-23	2021-12-17	4	2	4
9	nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed	$0.55	2021-07-28	2021-09-01	6	6	2
10	malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet	$1.17	2021-06-12	2021-11-29	4	10	2
\.


--
-- TOC entry 3002 (class 0 OID 16709)
-- Dependencies: 205
-- Data for Name: secteur; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.secteur (idsecteur, nom_secteur) FROM stdin;
1	844-702 Purus Rd.
2	388 Auctor Rd.
3	Ap #878-2769 Primis Rd.
4	7386 Sapien, St.
5	693-8363 Iaculis St.
6	Ap #311-4068 Nulla Av.
7	Ap #715-1259 Molestie Rd.
8	P.O. Box 211, 1397 Sit Road
9	P.O. Box 760, 3205 Sit St.
10	219-5442 Ipsum Rd.
\.


--
-- TOC entry 3003 (class 0 OID 16715)
-- Dependencies: 206
-- Data for Name: ville; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ville (id_ville, nom_ville) FROM stdin;
1	Terneuzen
2	Raichur
3	Malambo
4	Zhejiang
5	Vancouver
6	Cañas
7	Zamora de Hidalgo
8	Roveredo in Piano
9	Cabo de Santo Agostinho
10	Concón
\.


--
-- TOC entry 2860 (class 2606 OID 16722)
-- Name: commune commune_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commune
    ADD CONSTRAINT commune_pkey PRIMARY KEY (id_commune);


--
-- TOC entry 2862 (class 2606 OID 16724)
-- Name: entreprise entreprise_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.entreprise
    ADD CONSTRAINT entreprise_pkey PRIMARY KEY (id_entreprise);


--
-- TOC entry 2864 (class 2606 OID 16726)
-- Name: projet projet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projet
    ADD CONSTRAINT projet_pkey PRIMARY KEY (id_projet);


--
-- TOC entry 2866 (class 2606 OID 16728)
-- Name: secteur secteur_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.secteur
    ADD CONSTRAINT secteur_pkey PRIMARY KEY (idsecteur);


--
-- TOC entry 2868 (class 2606 OID 16730)
-- Name: ville ville_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ville
    ADD CONSTRAINT ville_pkey PRIMARY KEY (id_ville);


--
-- TOC entry 2869 (class 2606 OID 16731)
-- Name: commune composer; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commune
    ADD CONSTRAINT composer FOREIGN KEY (id_ville) REFERENCES public.ville(id_ville);


--
-- TOC entry 2870 (class 2606 OID 16736)
-- Name: projet lancer; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projet
    ADD CONSTRAINT lancer FOREIGN KEY (id_commune) REFERENCES public.commune(id_commune);


--
-- TOC entry 2871 (class 2606 OID 16741)
-- Name: projet lier; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projet
    ADD CONSTRAINT lier FOREIGN KEY (idsecteur) REFERENCES public.secteur(idsecteur);


--
-- TOC entry 2872 (class 2606 OID 16746)
-- Name: projet realiser; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projet
    ADD CONSTRAINT realiser FOREIGN KEY (id_entreprise) REFERENCES public.entreprise(id_entreprise);


-- Completed on 2022-02-08 11:39:04 WAT

--
-- PostgreSQL database dump complete
--

