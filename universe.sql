--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(30) NOT NULL,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    galaxy_type integer,
    planet_type integer
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
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_id_seq OWNED BY public.galaxy_types.galaxy_types_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    planet_id integer NOT NULL,
    galaxy_type integer,
    planet_type integer
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    star_id integer NOT NULL,
    galaxy_type integer,
    planet_type integer
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
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_types_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: planet_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_id_seq OWNER TO freecodecamp;

--
-- Name: planet_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_id_seq OWNED BY public.planet_types.planet_types_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    galaxy_id integer NOT NULL,
    galaxy_type integer,
    planet_type integer
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
-- Name: galaxy_types galaxy_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_types planet_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types ALTER COLUMN planet_types_id SET DEFAULT nextval('public.planet_types_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'andromeda', 'is a barred spiral galaxy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'cigar', 'appears similar in shape to a cigar', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'cartwheel', 'lenticular ring galaxy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'lmc', 'large magellanic cloud', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'comet', 'named after its unusual appearance', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'cosmos', 'name based on a redshift...', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, 'small', NULL);
INSERT INTO public.galaxy_types VALUES (2, 'medium', NULL);
INSERT INTO public.galaxy_types VALUES (3, 'great', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'andromeda2', 'is a barred spiral galaxy2', NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'cigar2', 'appears similar in shape to a cigar2', NULL, NULL, NULL, 2, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'cartwheel2', 'lenticular ring galaxy2', NULL, NULL, NULL, 3, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'lmc2', 'large magellanic cloud2', NULL, NULL, NULL, 4, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'comet2', 'named after its unusual appearance2', NULL, NULL, NULL, 5, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'cosmos2', 'name based on a redshift...2', NULL, NULL, NULL, 6, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'andromhheda2', 'is a barred hhhspiral galaxy2', NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'cihhgar2', 'appears similar in shapehhh to a cigar2', NULL, NULL, NULL, 2, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'cartwhgggeel2', 'lenticular rihgng galaxy2', NULL, NULL, NULL, 3, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'lmch2', 'large magellanic clouggd2', NULL, NULL, NULL, 4, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'comeggt2', 'named after its unusual appearancegh2', NULL, NULL, NULL, 5, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'cosmos2g', 'name based on a redshift...23', NULL, NULL, NULL, 6, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'andromgghheda2', 'is a barred hhhsjhgjpiral galaxy2', NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'cihhhhgar2', 'appears similar hhhin shapehhh to a cigar2', NULL, NULL, NULL, 2, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'cahhhrtwhgggeel2', 'lenticular rihhhhgng galaxy2', NULL, NULL, NULL, 3, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'lmhhhch2', 'large magellanic clohhjhjuggd2', NULL, NULL, NULL, 4, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'cohjmeggt2', 'named after its unushgjhgual appearancegh2', NULL, NULL, NULL, 5, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'cosmohghs2g', 'name based on a rjghjedshift...23', NULL, NULL, NULL, 6, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'andromgghhhheda2', 'is a barred hhhsjhgjpirjjal galaxy2', NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'cihhhjjhgar2', 'appears similar hhhin shapehhhhhh to a cigar2', NULL, NULL, NULL, 2, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'cahhhrtwhgghhgeel2', 'lenticular rihhhhgng gahjjlaxy2', NULL, NULL, NULL, 3, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'lmhhjjjhch2', 'large magellanic clohhjjjjhjuggd2', NULL, NULL, NULL, 4, NULL, NULL);
INSERT INTO public.moon VALUES (23, 'chhohjmeggt2', 'named after its unushgjhgual ahhppearancegh2', NULL, NULL, NULL, 5, NULL, NULL);
INSERT INTO public.moon VALUES (24, 'cosmohgjjhs2g', 'name based on ahh rjghjedshift...23', NULL, NULL, NULL, 6, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'andromeda', 'is a barred spiral galaxy', NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'cigar', 'appears similar in shape to a cigar', NULL, NULL, NULL, 2, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'cartwheel', 'lenticular ring galaxy', NULL, NULL, NULL, 3, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'lmc', 'large magellanic cloud', NULL, NULL, NULL, 4, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'comet', 'named after its unusual appearance', NULL, NULL, NULL, 5, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'cosmos', 'name based on a redshift...', NULL, NULL, NULL, 6, NULL, NULL);
INSERT INTO public.planet VALUES (20, 'andromeda2', 'is a barred spiral galaxy2', NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (21, 'cigar2', 'appears similar in shape to a cigar2', NULL, NULL, NULL, 2, NULL, NULL);
INSERT INTO public.planet VALUES (22, 'cartwheel2', 'lenticular ring galaxy2', NULL, NULL, NULL, 3, NULL, NULL);
INSERT INTO public.planet VALUES (23, 'lmc2', 'large magellanic cloud2', NULL, NULL, NULL, 4, NULL, NULL);
INSERT INTO public.planet VALUES (24, 'comet2', 'named after its unusual appearance2', NULL, NULL, NULL, 5, NULL, NULL);
INSERT INTO public.planet VALUES (25, 'cosmos2', 'name based on a redshift...2', NULL, NULL, NULL, 6, NULL, NULL);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, 'stone', NULL);
INSERT INTO public.planet_types VALUES (2, 'gas', NULL);
INSERT INTO public.planet_types VALUES (3, 'earth-like', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'andromeda', 'is a barred spiral galaxy', NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'cigar', 'appears similar in shape to a cigar', NULL, NULL, NULL, 2, NULL, NULL);
INSERT INTO public.star VALUES (3, 'cartwheel', 'lenticular ring galaxy', NULL, NULL, NULL, 3, NULL, NULL);
INSERT INTO public.star VALUES (4, 'lmc', 'large magellanic cloud', NULL, NULL, NULL, 4, NULL, NULL);
INSERT INTO public.star VALUES (5, 'comet', 'named after its unusual appearance', NULL, NULL, NULL, 5, NULL, NULL);
INSERT INTO public.star VALUES (6, 'cosmos', 'name based on a redshift...', NULL, NULL, NULL, 6, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 25, true);


--
-- Name: planet_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_id_seq', 3, true);


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
-- Name: galaxy_types galaxy_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_name_key UNIQUE (name);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


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
-- Name: planet_types planet_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_name_key UNIQUE (name);


--
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


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

