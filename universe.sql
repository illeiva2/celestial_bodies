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
    name character varying(20) NOT NULL,
    type character varying(20),
    color character varying(15) NOT NULL,
    distance_in_km integer NOT NULL
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
-- Name: habitants; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.habitants (
    name character varying(20) NOT NULL,
    habitants_id integer NOT NULL,
    planet_id integer NOT NULL,
    weight numeric(4,1) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.habitants OWNER TO freecodecamp;

--
-- Name: habitants_habitants_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.habitants_habitants_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.habitants_habitants_id_seq OWNER TO freecodecamp;

--
-- Name: habitants_habitants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.habitants_habitants_id_seq OWNED BY public.habitants.habitants_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    have_base boolean NOT NULL,
    diameter integer NOT NULL
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
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    is_habitable boolean NOT NULL,
    diameter_in_km integer NOT NULL
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
    name character varying(255) NOT NULL,
    galaxy_id integer NOT NULL,
    type character varying(20) NOT NULL,
    color character varying(20) NOT NULL
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
-- Name: habitants habitants_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.habitants ALTER COLUMN habitants_id SET DEFAULT nextval('public.habitants_habitants_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'M49', 'Eliptic', 'Blue', 60000000);
INSERT INTO public.galaxy VALUES (2, 'M59', 'Eliptic', 'Blue', 60000000);
INSERT INTO public.galaxy VALUES (3, 'M60', 'Eliptic', 'Blue', 60000000);
INSERT INTO public.galaxy VALUES (4, 'NGC1300', 'Spiral', 'White', 61000000);
INSERT INTO public.galaxy VALUES (5, 'NGC1345', 'Spiral', 'White', 69800000);
INSERT INTO public.galaxy VALUES (6, 'Milky Way', 'Spiral', 'Yellow', 0);
INSERT INTO public.galaxy VALUES (7, 'Andromeda', 'Spiral', 'Yellow', 2500000);


--
-- Data for Name: habitants; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.habitants VALUES ('Habitante1', 1, 3, 75.0, 'Habitante del planeta 3, de complexión media y muy amigable');
INSERT INTO public.habitants VALUES ('Habitante2', 2, 4, 80.5, 'Habitante del planeta 4, de complexión fuerte y muy inteligente');
INSERT INTO public.habitants VALUES ('Habitante3', 3, 5, 65.3, 'Habitante del planeta 5, de complexión delgada y muy rápido');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 3, 'Luna', false, 3474);
INSERT INTO public.moon VALUES (2, 4, 'Fobos', false, 22);
INSERT INTO public.moon VALUES (3, 4, 'Deimos', false, 12);
INSERT INTO public.moon VALUES (4, 5, 'Io', false, 3643);
INSERT INTO public.moon VALUES (5, 5, 'Europa', false, 3122);
INSERT INTO public.moon VALUES (6, 5, 'Ganímedes', false, 5262);
INSERT INTO public.moon VALUES (7, 5, 'Calisto', false, 4821);
INSERT INTO public.moon VALUES (8, 6, 'Titán', false, 5150);
INSERT INTO public.moon VALUES (9, 6, 'Rea', false, 1528);
INSERT INTO public.moon VALUES (10, 6, 'Jápeto', false, 1469);
INSERT INTO public.moon VALUES (11, 7, 'Titania', false, 1577);
INSERT INTO public.moon VALUES (12, 8, 'Tritón', false, 2707);
INSERT INTO public.moon VALUES (13, 3, 'Luna2', false, 3474);
INSERT INTO public.moon VALUES (14, 4, 'Fobos2', false, 22);
INSERT INTO public.moon VALUES (15, 4, 'Deimos2', false, 12);
INSERT INTO public.moon VALUES (16, 5, 'Io2', false, 3643);
INSERT INTO public.moon VALUES (17, 5, 'Europa2', false, 3122);
INSERT INTO public.moon VALUES (18, 5, 'Ganímedes2', false, 5262);
INSERT INTO public.moon VALUES (19, 5, 'Calisto2', false, 4821);
INSERT INTO public.moon VALUES (20, 6, 'Titán2', false, 5150);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 7, 'Mercurio', false, 4879);
INSERT INTO public.planet VALUES (2, 7, 'Venus', false, 12104);
INSERT INTO public.planet VALUES (3, 7, 'Tierra', true, 12742);
INSERT INTO public.planet VALUES (4, 7, 'Marte', false, 6779);
INSERT INTO public.planet VALUES (5, 7, 'Jupiter', false, 139820);
INSERT INTO public.planet VALUES (6, 7, 'Saturno', false, 116460);
INSERT INTO public.planet VALUES (7, 7, 'Urano', false, 50724);
INSERT INTO public.planet VALUES (8, 7, 'Neptuno', false, 49244);
INSERT INTO public.planet VALUES (9, 7, 'Plutón', false, 2370);
INSERT INTO public.planet VALUES (10, 7, 'Ceres', false, 946);
INSERT INTO public.planet VALUES (11, 7, 'Haumea', false, 1960);
INSERT INTO public.planet VALUES (12, 7, 'Makemake', false, 1430);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Eta Carinae', 6, 'Binaria', 'Red');
INSERT INTO public.star VALUES (2, 'Pistol', 6, 'Binaria', 'Red');
INSERT INTO public.star VALUES (3, 'VY Canis Majoris', 6, 'Red Hipergiant', 'Red');
INSERT INTO public.star VALUES (4, 'Sirrah', 7, 'Binaria', 'Blue');
INSERT INTO public.star VALUES (5, 'Mirach', 7, 'Red Giant', 'Red');
INSERT INTO public.star VALUES (6, 'Alamak', 7, 'Binaria', 'Red');
INSERT INTO public.star VALUES (7, 'Sun', 6, 'Star', 'Red');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: habitants_habitants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.habitants_habitants_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


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
-- Name: habitants habitants_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.habitants
    ADD CONSTRAINT habitants_name_key UNIQUE (name);


--
-- Name: habitants habitants_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.habitants
    ADD CONSTRAINT habitants_pkey PRIMARY KEY (habitants_id);


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
-- Name: habitants habitants_fk1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.habitants
    ADD CONSTRAINT habitants_fk1 FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_fk1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_fk1 FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_fk1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_fk1 FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_fk2; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_fk2 FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

