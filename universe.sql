--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    name character varying(40) NOT NULL,
    description text,
    has_life boolean,
    galaxy_size integer,
    age_in_millions_of_years integer
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
    name character varying(40) NOT NULL,
    description text,
    is_spherical boolean,
    distance_from_earth numeric,
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    is_spherical boolean,
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
-- Name: species; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.species (
    species_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    planet_id integer
);


ALTER TABLE public.species OWNER TO freecodecamp;

--
-- Name: species_species_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.species_species_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.species_species_id_seq OWNER TO freecodecamp;

--
-- Name: species_species_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.species_species_id_seq OWNED BY public.species.species_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    is_spherical boolean,
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
-- Name: species species_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species ALTER COLUMN species_id SET DEFAULT nextval('public.species_species_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral galaxy containing Earth and Solar System', true, 105700, 13600);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Nearest major spiral galaxy to Milky Way', false, 220000, 10000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Small spiral galaxy in Local Group', false, 60000, 9000);
INSERT INTO public.galaxy VALUES (4, 'Sombrero Galaxy', 'Bright nucleus with large central bulge', false, 50000, 12000);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool Galaxy', 'Interacting spiral galaxy with companion galaxy', false, 76000, 8000);
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic Cloud', 'Irregular satellite galaxy of Milky Way', true, 14000, 13000);
INSERT INTO public.galaxy VALUES (7, 'Small Magellanic Cloud', 'Dwarf irregular galaxy near Milky Way', true, 7000, 12500);
INSERT INTO public.galaxy VALUES (8, 'Orion Expanse', 'Fictional dense star-forming galaxy region', true, 85000, 5400);
INSERT INTO public.galaxy VALUES (9, 'Nexus Prime', 'Advanced fictional galaxy with multiple civilizations', true, 120000, 6200);
INSERT INTO public.galaxy VALUES (10, 'Abyssal Rift', 'Dark matter-rich galaxy with unstable regions', false, 98000, 11000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Natural satellite of Earth', true, 384400, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Small irregular moon orbiting Mars', true, 225000000, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Outer moon of Mars', true, 225000000, 2);
INSERT INTO public.moon VALUES (4, 'Io', 'Volcanically active moon of Jupiter', true, 628000000, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 'Ice-covered moon with possible underground ocean', true, 628000000, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Largest moon in the Solar System', true, 628000000, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Crater-filled moon orbiting Jupiter', true, 628000000, 5);
INSERT INTO public.moon VALUES (8, 'Titan', 'Largest moon of Saturn with dense atmosphere', true, 1200000000, 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', 'Ice moon with water geysers', true, 1200000000, 6);
INSERT INTO public.moon VALUES (10, 'Mimas', 'Small icy moon with giant crater', true, 1200000000, 6);
INSERT INTO public.moon VALUES (11, 'Triton', 'Largest moon of Neptune', true, 4300000000, 8);
INSERT INTO public.moon VALUES (12, 'Oberon', 'Outer moon of Uranus', true, 2700000000, 7);
INSERT INTO public.moon VALUES (13, 'Titania', 'Largest moon of Uranus', true, 2700000000, 7);
INSERT INTO public.moon VALUES (14, 'Miranda', 'Moon with extreme cliff formations', true, 2700000000, 7);
INSERT INTO public.moon VALUES (15, 'Aqualis', 'Water-rich fictional moon', true, 950000000, 9);
INSERT INTO public.moon VALUES (16, 'Dustfall', 'Rocky moon with dusty surface', true, 870000000, 10);
INSERT INTO public.moon VALUES (17, 'Luna-X', 'Artificially modified futuristic moon', true, 900000000, 13);
INSERT INTO public.moon VALUES (18, 'Void Echo', 'Dark moon with unstable magnetic field', true, 1500000000, 14);
INSERT INTO public.moon VALUES (19, 'Nova Minor', 'Molten volcanic moon', true, 1700000000, 15);
INSERT INTO public.moon VALUES (20, 'Cryon', 'Frozen moon with underground caverns', true, 2000000000, 11);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Habitable rocky planet with oceans and life', true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 'Cold desert planet with iron-rich surface', true, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 'Hot planet with thick toxic atmosphere', true, 1);
INSERT INTO public.planet VALUES (4, 'Mercury', 'Small rocky planet close to its star', true, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Gas giant with massive storm systems', true, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Gas giant with prominent ring system', true, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Ice giant with extreme axial tilt', true, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Cold ice giant with strong winds', true, 1);
INSERT INTO public.planet VALUES (9, 'Aqua Prime', 'Ocean world with deep global seas', true, 6);
INSERT INTO public.planet VALUES (10, 'Desertia', 'Dry barren desert planet', true, 7);
INSERT INTO public.planet VALUES (11, 'Ferron', 'Metal-rich planet with heavy core activity', true, 8);
INSERT INTO public.planet VALUES (12, 'Lunaris', 'Grey rocky planet with cratered surface', true, 8);
INSERT INTO public.planet VALUES (13, 'Nexus-9', 'Fictional high-tech civilization hub', true, 9);
INSERT INTO public.planet VALUES (14, 'Voidrock', 'Dark unstable gravity field planet', true, 10);
INSERT INTO public.planet VALUES (15, 'Orion Nova', 'Young volcanic planet with frequent eruptions', true, 10);


--
-- Data for Name: species; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.species VALUES (1, 'Human', 'Intelligent species from Earth', 1);
INSERT INTO public.species VALUES (2, 'Martian', 'Species adapted to harsh desert climate', 2);
INSERT INTO public.species VALUES (3, 'Synthoid', 'Artificial cybernetic lifeform', 13);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'G-type main-sequence star', true, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 'Bright binary star system', true, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'Red supergiant star nearing supernova', true, 1);
INSERT INTO public.star VALUES (4, 'Rigel', 'Blue supergiant star', true, 1);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 'Closest known star to Solar System', true, 1);
INSERT INTO public.star VALUES (6, 'Andromeda Alpha', 'Primary star in Andromeda core region', true, 2);
INSERT INTO public.star VALUES (7, 'Triangulum Prime', 'Central star of Triangulum system', true, 3);
INSERT INTO public.star VALUES (8, 'Nexus Flame', 'High-energy fictional star', true, 9);
INSERT INTO public.star VALUES (9, 'Void Ember', 'Dark energy unstable star', true, 10);
INSERT INTO public.star VALUES (10, 'Orion Lightspire', 'Massive star in Orion Expanse', true, 8);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: species_species_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.species_species_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


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
-- Name: species species_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_name_key UNIQUE (name);


--
-- Name: species species_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_pkey PRIMARY KEY (species_id);


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
-- Name: species species_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

