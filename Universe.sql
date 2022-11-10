--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    cantidad_estrellas integer,
    cantidad_planetas integer,
    num_1 numeric(5,2),
    text_1 text,
    bool_1 boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    num_asignado integer,
    masa integer,
    num_1 numeric(5,2),
    text_1 text,
    bool_1 boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: more_planet_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_planet_info (
    more_planet_info_id integer NOT NULL,
    name character varying(20) NOT NULL,
    b integer,
    c integer,
    planet_id integer
);


ALTER TABLE public.more_planet_info OWNER TO freecodecamp;

--
-- Name: more_planet_info_more_planet_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_planet_info_more_planet_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_planet_info_more_planet_info_id_seq OWNER TO freecodecamp;

--
-- Name: more_planet_info_more_planet_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_planet_info_more_planet_info_id_seq OWNED BY public.more_planet_info.more_planet_info_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    num_asignado integer,
    cant_lunas integer,
    num_1 numeric(5,2),
    text_1 text,
    bool_1 boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    luminosidad_en_w integer,
    masa_en_m integer,
    radio_en_m integer,
    num_1 numeric(5,2),
    constelacion text,
    bool_1 boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: more_planet_info more_planet_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_planet_info ALTER COLUMN more_planet_info_id SET DEFAULT nextval('public.more_planet_info_more_planet_info_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda I', 1000000, 10, 123.10, 'Andromeda I', true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda II', 10000000, 9, 124.10, 'Andromeda II', true);
INSERT INTO public.galaxy VALUES (3, 'Andromeda VI', 10000000, 10, 125.20, 'Andromeda VI', true);
INSERT INTO public.galaxy VALUES (4, 'Centaurus A', 20000000, 8, 126.60, 'Centaurus A', true);
INSERT INTO public.galaxy VALUES (5, 'ARP 299', 20102000, 5, 120.10, 'ARP 299', true);
INSERT INTO public.galaxy VALUES (6, 'M32', 20102000, 5, 111.10, 'M32', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 20, 2000, 123.10, 'Tierra', true, 3);
INSERT INTO public.moon VALUES (2, 'Deimos', 19, 2500, 124.10, 'Marte', false, 4);
INSERT INTO public.moon VALUES (3, 'Fobos', 18, 2600, 125.20, 'Marte', true, 4);
INSERT INTO public.moon VALUES (4, 'Adrastea', 17, 9000, 126.60, 'Jupiter', true, 5);
INSERT INTO public.moon VALUES (5, 'Aitne', 16, 3000, 120.10, 'Jupiter', true, 5);
INSERT INTO public.moon VALUES (6, 'Amaltea', 15, 2500, 111.10, 'Jupiter', true, 5);
INSERT INTO public.moon VALUES (7, 'Ananke', 14, 2000, 123.10, 'Jupiter', true, 5);
INSERT INTO public.moon VALUES (8, 'Aedea', 13, 2500, 124.10, 'Jupiter', false, 5);
INSERT INTO public.moon VALUES (9, 'Aegir', 12, 2600, 125.20, 'Saturno', true, 6);
INSERT INTO public.moon VALUES (10, 'Albiorix', 11, 9000, 126.60, 'Saturno', true, 6);
INSERT INTO public.moon VALUES (11, 'Anthe', 10, 3000, 120.10, 'Saturno', true, 6);
INSERT INTO public.moon VALUES (12, 'Atlas', 9, 2500, 111.10, 'Saturno', true, 6);
INSERT INTO public.moon VALUES (13, 'Bebhionn', 8, 2000, 123.10, 'Saturno', true, 6);
INSERT INTO public.moon VALUES (14, 'Ariel', 7, 2500, 124.10, 'Urano', false, 7);
INSERT INTO public.moon VALUES (15, 'Belinda', 6, 2600, 125.20, 'Urano', true, 7);
INSERT INTO public.moon VALUES (16, 'Bianca', 5, 9000, 126.60, 'Urano', true, 7);
INSERT INTO public.moon VALUES (17, 'Despina', 4, 3000, 120.10, 'Neptuno', true, 8);
INSERT INTO public.moon VALUES (18, 'Caronte', 3, 2500, 111.10, 'Pluton', true, 8);
INSERT INTO public.moon VALUES (19, 'Disnomia', 2, 2000, 123.10, 'Haumea', true, 11);
INSERT INTO public.moon VALUES (20, 'Namaka', 1, 2500, 124.10, 'Haumea', false, 11);


--
-- Data for Name: more_planet_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_planet_info VALUES (1, 'a', 1, 1, 3);
INSERT INTO public.more_planet_info VALUES (2, 'b', 2, 2, 2);
INSERT INTO public.more_planet_info VALUES (3, 'c', 3, 3, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercurio', 1, 0, 123.10, 'Hermes', true, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 2, 0, 124.10, 'Afrodita', false, 2);
INSERT INTO public.planet VALUES (3, 'Tierra', 3, 1, 125.20, 'NULL', true, 1);
INSERT INTO public.planet VALUES (4, 'Marte', 4, 2, 126.60, 'Ares', true, 2);
INSERT INTO public.planet VALUES (5, 'Jupiter', 5, 79, 120.10, 'Zeus', true, 1);
INSERT INTO public.planet VALUES (6, 'Saturno', 6, 82, 111.10, 'Crono', true, 2);
INSERT INTO public.planet VALUES (7, 'Urano', 7, 27, 123.10, 'NULL', true, 3);
INSERT INTO public.planet VALUES (8, 'Neptuno', 8, 14, 124.10, 'NULL', false, 3);
INSERT INTO public.planet VALUES (9, 'Ceres', 10, 0, 125.20, 'NULL', true, 4);
INSERT INTO public.planet VALUES (10, 'Pluton', 9, 5, 126.60, 'NULL', true, 4);
INSERT INTO public.planet VALUES (11, 'Haumea', 11, 2, 120.10, 'NULL', true, 4);
INSERT INTO public.planet VALUES (12, 'Eris', 12, 1, 111.10, 'NULL', true, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Absolutno', 100, 2000, 2500, 123.10, 'Lynx', true, 1);
INSERT INTO public.star VALUES (2, 'Acamar', 200, 2500, 3000, 124.10, 'Eridanus', false, 1);
INSERT INTO public.star VALUES (3, 'Achird', 300, 2600, 9000, 125.20, 'Casiopeia', true, 6);
INSERT INTO public.star VALUES (4, 'Acrab', 400, 9000, 2600, 126.60, 'Scorpius', true, 5);
INSERT INTO public.star VALUES (5, 'Alasia', 500, 3000, 2500, 120.10, 'Serpens', true, 5);
INSERT INTO public.star VALUES (6, 'Algol', 600, 2500, 2000, 111.10, 'Perseus', true, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: more_planet_info_more_planet_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_planet_info_more_planet_info_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: more_planet_info more_planet_info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_planet_info
    ADD CONSTRAINT more_planet_info_name_key UNIQUE (name);


--
-- Name: more_planet_info more_planet_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_planet_info
    ADD CONSTRAINT more_planet_info_pkey PRIMARY KEY (more_planet_info_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: more_planet_info more_planet_info_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_planet_info
    ADD CONSTRAINT more_planet_info_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

