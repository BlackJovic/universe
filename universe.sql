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
-- Name: description; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.description (
    not_empty boolean,
    brief text,
    is_relevant boolean,
    name character varying(60) NOT NULL,
    description_id integer NOT NULL
);


ALTER TABLE public.description OWNER TO freecodecamp;

--
-- Name: description_description_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.description_description_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.description_description_id_seq OWNER TO freecodecamp;

--
-- Name: description_description_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.description_description_id_seq OWNED BY public.description.description_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    has_earth boolean,
    galaxy_type text,
    age_in_million_years integer,
    name character varying(60) NOT NULL
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
    moon_size character varying(60),
    colour character varying(60),
    name character varying(60) NOT NULL,
    planet_id integer NOT NULL
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
    planet_type text,
    is_earth boolean,
    day_length_in_min numeric(4,1),
    name character varying(60) NOT NULL,
    star_id integer NOT NULL
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
    star_type text,
    planet_count integer,
    name character varying(60) NOT NULL,
    galaxy_id integer NOT NULL
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
-- Name: description description_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description ALTER COLUMN description_id SET DEFAULT nextval('public.description_description_id_seq'::regclass);


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
-- Data for Name: description; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.description VALUES (true, 'The third planet from the Sun, home to humans.', true, 'Earth', 1);
INSERT INTO public.description VALUES (true, 'The gas giant with a massive storm known as the Great Red Spot.', true, 'Jupiter', 2);
INSERT INTO public.description VALUES (false, 'A dwarf planet that is no longer classified as a planet.', false, 'Pluto', 3);
INSERT INTO public.description VALUES (true, 'The second-largest planet in the solar system, famous for its rings.', true, 'Saturn', 4);
INSERT INTO public.description VALUES (true, 'A terrestrial planet that is similar in size to Earth, with a thick atmosphere.', true, 'Venus', 5);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, true, 'spiral', 200, 'Milky Way');
INSERT INTO public.galaxy VALUES (2, false, 'spiral', 300, 'Andromeda');
INSERT INTO public.galaxy VALUES (3, false, 'elliptical', 245, 'Linnea');
INSERT INTO public.galaxy VALUES (4, false, 'oblong', 233, 'Asdreand');
INSERT INTO public.galaxy VALUES (5, false, 'stringy', 500, 'Old Mac');
INSERT INTO public.galaxy VALUES (6, false, 'oblong', 498, 'Longeddo');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (39, '3474.8', 'Gray', 'Luna', 1);
INSERT INTO public.moon VALUES (40, '1221.0', 'Ice White', 'Europa', 2);
INSERT INTO public.moon VALUES (41, '3130.0', 'Red', 'Phobos', 3);
INSERT INTO public.moon VALUES (42, '2210.0', 'Yellow', 'Io', 14);
INSERT INTO public.moon VALUES (43, '4800.0', 'Light Grey', 'Titan', 15);
INSERT INTO public.moon VALUES (44, '2521.5', 'Grey', 'Callisto', 16);
INSERT INTO public.moon VALUES (45, '1120.0', 'Bright White', 'Mimas', 17);
INSERT INTO public.moon VALUES (46, '2092.0', 'Dark Brown', 'Ganymede', 16);
INSERT INTO public.moon VALUES (47, '1050.0', 'Silver', 'Rhea', 15);
INSERT INTO public.moon VALUES (48, '2700.0', 'Pale Yellow', 'Enceladus', 15);
INSERT INTO public.moon VALUES (49, '1600.0', 'White', 'Triton', 18);
INSERT INTO public.moon VALUES (50, '4000.0', 'Grayish Blue', 'Miranda', 18);
INSERT INTO public.moon VALUES (51, '1650.0', 'Dark Grey', 'Deimos', 13);
INSERT INTO public.moon VALUES (52, '5000.0', 'White', 'Titania', 17);
INSERT INTO public.moon VALUES (53, '1200.0', 'Frosted White', 'Oberon', 17);
INSERT INTO public.moon VALUES (54, '4500.0', 'Dark Grey', 'Iapetus', 15);
INSERT INTO public.moon VALUES (55, '3000.0', 'White', 'Hyperion', 14);
INSERT INTO public.moon VALUES (56, '800.0', 'Bright Yellow', 'Phoebe', 14);
INSERT INTO public.moon VALUES (57, '3600.0', 'Dark Red', 'Leda', 13);
INSERT INTO public.moon VALUES (58, '2000.0', 'Purple', 'Ariel', 17);
INSERT INTO public.moon VALUES (59, '3300.0', 'Black', 'Nereid', 18);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'solid', true, 141.0, 'earth', 3);
INSERT INTO public.planet VALUES (2, 'solid', false, 113.0, 'Ang', 2);
INSERT INTO public.planet VALUES (3, 'solid', false, 100.0, 'Pajma', 4);
INSERT INTO public.planet VALUES (4, 'liquid', false, 200.0, 'Laringo', 6);
INSERT INTO public.planet VALUES (13, 'Terrestrial', true, 140.0, 'Arth', 2);
INSERT INTO public.planet VALUES (14, 'Gas Giant', false, 104.5, 'Jupiter', 5);
INSERT INTO public.planet VALUES (15, 'Ice Giant', false, 523.0, 'Uranus', 3);
INSERT INTO public.planet VALUES (16, 'Dwarf', false, 143.9, 'Pluto', 4);
INSERT INTO public.planet VALUES (17, 'Terrestrial', false, 198.6, 'Mars', 3);
INSERT INTO public.planet VALUES (18, 'Gas Giant', false, 873.1, 'Saturn', 2);
INSERT INTO public.planet VALUES (19, 'Terrestrial', false, 100.1, 'Venus', 2);
INSERT INTO public.planet VALUES (20, 'Exoplanet', false, 121.4, 'Kepler-452b', 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'dwarf', 23, 'Langa', 2);
INSERT INTO public.star VALUES (3, 'dwarf', 1, 'Rivada', 2);
INSERT INTO public.star VALUES (7, 'whitehole', 13, 'Twinkler', 4);
INSERT INTO public.star VALUES (4, 'supernova', 5, 'Ole Jole', 3);
INSERT INTO public.star VALUES (5, 'blackhole', 0, 'Nada', 1);
INSERT INTO public.star VALUES (6, 'pulsar', 2, 'Ticker', 1);


--
-- Name: description_description_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.description_description_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 59, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: description description_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_name_key UNIQUE (name);


--
-- Name: description description_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_pkey PRIMARY KEY (description_id);


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

