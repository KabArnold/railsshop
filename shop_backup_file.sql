--
-- PostgreSQL database dump
--

-- Dumped from database version 12.12 (Ubuntu 12.12-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.12 (Ubuntu 12.12-0ubuntu0.20.04.1)

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
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: arnold
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO arnold;

--
-- Name: products; Type: TABLE; Schema: public; Owner: arnold
--

CREATE TABLE public.products (
    id bigint NOT NULL,
    product_name character varying,
    product_description text,
    price numeric,
    quantity_in_stock integer,
    image_url character varying,
    rating double precision,
    brand character varying,
    reviews integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.products OWNER TO arnold;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: arnold
--

CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO arnold;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: arnold
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: arnold
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO arnold;

--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: arnold
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: arnold
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2023-01-05 06:28:39.579276	2023-01-05 06:28:39.579276
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: arnold
--

COPY public.products (id, product_name, product_description, price, quantity_in_stock, image_url, rating, brand, reviews, created_at, updated_at) FROM stdin;
1	Google Pixel	Google Pixel 4 official / unofficial price in Uganda. Google Pixel 4 is a Smartphone of google. The Google Pixel 4 Android Smartphone. Announced Oct 2019. Features 5.7″ Display, Snapdragon 855 Chipset, 2800 MAh Battery, 64 GB Storage, 6 GB RAM, Corning Gorilla Glass 5.	455.6	1		\N	Google Pixel	\N	2023-01-05 13:05:36.33345	2023-01-06 13:03:33.689771
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: arnold
--

COPY public.schema_migrations (version) FROM stdin;
20230105062418
\.


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: arnold
--

SELECT pg_catalog.setval('public.products_id_seq', 1, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: arnold
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: arnold
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: arnold
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- PostgreSQL database dump complete
--

