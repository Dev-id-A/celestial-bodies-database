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
-- Name: continent; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.continent (
    continent_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    three_example_countries text
);


ALTER TABLE public.continent OWNER TO freecodecamp;

--
-- Name: continents_continent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.continents_continent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.continents_continent_id_seq OWNER TO freecodecamp;

--
-- Name: continents_continent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.continents_continent_id_seq OWNED BY public.continent.continent_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_stars boolean NOT NULL,
    number_of_stars text,
    mass text
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
    name character varying(30) NOT NULL,
    mass text,
    planet_id integer,
    km_from_planet integer
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
    mass text,
    has_life boolean NOT NULL,
    population numeric,
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
    name character varying(30) NOT NULL,
    mass text,
    galaxy_id integer,
    number_of_planets integer
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
-- Name: continent continent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent ALTER COLUMN continent_id SET DEFAULT nextval('public.continents_continent_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


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
-- Data for Name: continent; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.continent VALUES (1, 'Asia', 3, 'China, India and Japan');
INSERT INTO public.continent VALUES (2, 'Africa', 3, 'Nigeria, Egypt and South Africa');
INSERT INTO public.continent VALUES (3, 'North America', 3, 'United States, Canada and Mexico');
INSERT INTO public.continent VALUES (4, 'South America', 3, 'Brazil, Argentina and Colombia');
INSERT INTO public.continent VALUES (5, 'Antartic', 3, NULL);
INSERT INTO public.continent VALUES (7, 'Oceania', 3, 'Australia, New Zealand and Fiji');
INSERT INTO public.continent VALUES (6, 'Europe', 3, 'Spain, Italy and Germany');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', true, '400 billion', '1.5 trillion solar masses');
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', true, '1 trillion', '1.2 trillion solar masses');
INSERT INTO public.galaxy VALUES (3, 'Triangulum Galaxy', true, '40 billion', '50 billion solar masses');
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', true, '10 billion', '10 billion solar masses');
INSERT INTO public.galaxy VALUES (5, 'Small Magellanic Cloud', true, '3 billion', '7 billion solar masses');
INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy', true, '800 billion', '800 billion solar masses');
INSERT INTO public.galaxy VALUES (7, 'Whirlpool Galaxy', true, '1600 billion', '100 billion solar masses');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', '7.35*10^22', 3, 384400);
INSERT INTO public.moon VALUES (2, 'Phobos', '1.07*10^16', 4, 9376);
INSERT INTO public.moon VALUES (3, 'Deimos', '1.48*10^15', 4, 23460);
INSERT INTO public.moon VALUES (4, 'Io', '8.93*10^22', 5, 421700);
INSERT INTO public.moon VALUES (5, 'Europa', '4.80*10^22', 5, 670900);
INSERT INTO public.moon VALUES (6, 'Ganymede', '1.48*10^23', 5, 1070400);
INSERT INTO public.moon VALUES (7, 'Callisto', '1.08*10^23', 5, 1882700);
INSERT INTO public.moon VALUES (8, 'Titan', '1.35*10^23', 6, 1221870);
INSERT INTO public.moon VALUES (9, 'Rhea', '2.31*10^21', 6, 527040);
INSERT INTO public.moon VALUES (10, 'Oberon', '3.01*10^21', 7, 583520);
INSERT INTO public.moon VALUES (11, 'Titania', '3.53*10^21', 7, 436300);
INSERT INTO public.moon VALUES (12, 'Triton', '2.14*10^22', 8, 354800);
INSERT INTO public.moon VALUES (13, 'Enceladus', '1.08*10^20', 6, 237950);
INSERT INTO public.moon VALUES (14, 'Mimas', '3.75*10^19', 6, 185520);
INSERT INTO public.moon VALUES (15, 'Tethys', '6.18*10^20', 6, 294670);
INSERT INTO public.moon VALUES (16, 'Dione', '6.18*10^21', 6, 377400);
INSERT INTO public.moon VALUES (17, 'Miranda', '6.59*10^19', 7, 129390);
INSERT INTO public.moon VALUES (18, 'Ariel', '1.35*10^21', 7, 190900);
INSERT INTO public.moon VALUES (19, 'Nereid', '3.10*10^19', 8, 5513400);
INSERT INTO public.moon VALUES (20, 'Proteus', '4.40*10^19', 8, 117600);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', '3.30*10^23kg', false, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Venus', '4.87*10^24kg', false, NULL, 1);
INSERT INTO public.planet VALUES (3, 'Earth', '5.97*10^24kg', true, 8000000000, 1);
INSERT INTO public.planet VALUES (4, 'Mars', '6.42*10^23kg', false, NULL, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', '1.90*10^27kg', false, NULL, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', '5.68*10^26kg', false, NULL, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', '8.68*10^25kg', false, NULL, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', '1.02*10^26kg', false, NULL, 1);
INSERT INTO public.planet VALUES (9, 'TRAPPIST-1b', '1.02*10^24kg', false, NULL, 2);
INSERT INTO public.planet VALUES (10, 'TRAPPIST-1c', '1.16*10^24kg', false, NULL, 2);
INSERT INTO public.planet VALUES (11, 'TRAPPIST-1d', '0.29*10^24kg', false, NULL, 2);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1e', '0.62*10^24kg', false, NULL, 2);
INSERT INTO public.planet VALUES (13, 'TRAPPIST-1f', '0.68*10^24kg', false, NULL, 2);
INSERT INTO public.planet VALUES (14, 'TRAPPIST-1g', '1.34*10^24kg', false, NULL, 2);
INSERT INTO public.planet VALUES (15, 'TRAPPIST-1h', '0.33*10^24kg', false, NULL, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', '1 solar mass', 1, 8);
INSERT INTO public.star VALUES (2, 'TRAPPIST-1', '0.089 solar mass', 1, 7);
INSERT INTO public.star VALUES (3, 'J00443799+4129236', '40 solar masses', 2, NULL);
INSERT INTO public.star VALUES (4, 'M33 Var A', '60 solar masses', 3, NULL);
INSERT INTO public.star VALUES (5, 'SN 2003B', '20 solar masses', 6, NULL);
INSERT INTO public.star VALUES (6, 'M104-1', '40 solar masses', 6, NULL);
INSERT INTO public.star VALUES (7, 'SN 2005cs', '7 solar masses', 7, NULL);


--
-- Name: continents_continent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.continents_continent_id_seq', 7, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: continent continent_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent
    ADD CONSTRAINT continent_name_key UNIQUE (name);


--
-- Name: continent continents_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent
    ADD CONSTRAINT continents_pkey PRIMARY KEY (continent_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: continent continents_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent
    ADD CONSTRAINT continents_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

