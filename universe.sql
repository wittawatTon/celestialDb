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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(25) NOT NULL,
    width integer NOT NULL,
    height integer,
    weight numeric(6,2),
    description text,
    isexplore boolean,
    isdistance boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(25) NOT NULL,
    width integer,
    height integer,
    weight numeric(6,2),
    description text,
    isexplore boolean,
    isdistance boolean,
    planet_id integer NOT NULL,
    moon_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(25) NOT NULL,
    width integer,
    height integer,
    weight numeric(6,2),
    description text,
    isexplore boolean,
    isdistance boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(25) NOT NULL,
    width integer,
    height integer,
    weight numeric(6,2),
    description text,
    isexplore boolean,
    isdistance boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: temp; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.temp (
    noteid integer NOT NULL,
    temp_id integer NOT NULL,
    name character varying(20)
);


ALTER TABLE public.temp OWNER TO freecodecamp;

--
-- Name: temp_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.temp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.temp_id_seq OWNER TO freecodecamp;

--
-- Name: temp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.temp_id_seq OWNED BY public.temp.temp_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Name: temp temp_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.temp ALTER COLUMN temp_id SET DEFAULT nextval('public.temp_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.galaxy (galaxy_id, name, width, height, weight, description, isexplore, isdistance) FROM stdin;
1	Andromeda	220000	110000	1.20	The nearest spiral galaxy to the Milky Way.	t	t
2	Milky Way	100000	100000	1.50	The galaxy that contains our solar system.	t	t
3	Triangulum	60000	30000	0.70	A member of the Local Group of galaxies.	t	t
4	Whirlpool	150000	100000	1.80	A spiral galaxy in the constellation Ursa Major.	t	f
5	Pinwheel	200000	150000	2.00	A grand spiral galaxy in the constellation Ursa Major.	t	f
6	Sombrero	80000	50000	1.70	A spiral galaxy with a bright central bulge.	t	t
\.


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.moon (name, width, height, weight, description, isexplore, isdistance, planet_id, moon_id) FROM stdin;
Luna	3474	3474	7.35	Earths only natural satellite.	t	t	1	1
Phobos	22	22	0.10	The larger and closer of Mars two moons.	t	f	2	2
Deimos	12	12	0.06	The smaller and more distant of Mars two moons.	f	f	2	3
Io	3643	3643	4.00	One of Jupiters largest moons and the most geologically active body in the Solar System.	t	t	3	4
Europa	3121	3121	4.80	One of Jupiters moons with a smooth ice-covered surface.	t	t	3	5
Ganymede	5268	5268	14.80	The largest moon in the Solar System, orbiting Jupiter.	t	t	3	6
Callisto	4800	4800	10.00	A heavily cratered moon of Jupiter.	f	t	3	7
Titan	5150	5150	1.35	Saturns largest moon, known for its dense atmosphere.	t	t	4	8
Rhea	1528	1528	0.23	A medium-sized moon of Saturn.	f	t	4	9
Iapetus	1469	1469	0.19	A moon of Saturn with a unique two-tone coloration.	f	f	4	10
Enceladus	504	504	0.11	A small moon of Saturn with cryovolcanism.	t	t	4	11
Mimas	396	396	0.07	A moon of Saturn known for its large impact crater.	f	f	4	12
Triton	2706	2706	0.21	Neptunes largest moon, noted for its retrograde orbit.	t	t	5	13
Charon	1212	1212	0.10	Plutos largest moon, nearly half its size.	t	f	6	14
Haumea	1632	1632	0.05	A dwarf planet in the Kuiper Belt with two known moons.	f	t	7	15
Makemake	1430	1430	0.03	A dwarf planet in the Kuiper Belt with one known moon.	f	f	7	16
Eris	2326	2326	0.08	A dwarf planet in the scattered disk with one moon.	t	t	7	17
Ceres	940	940	0.01	A dwarf planet located in the asteroid belt.	f	f	7	18
Pallas	512	512	0.02	An asteroid in the asteroid belt with one known moon.	t	f	7	19
Juno	234	234	0.01	An asteroid with one known moon, located in the asteroid belt.	f	t	7	20
\.


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.planet (planet_id, name, width, height, weight, description, isexplore, isdistance, star_id) FROM stdin;
1	Earth	12742	12742	5972.00	The third planet from the Sun and the only known planet to support life.	t	t	1
2	Mars	6779	6779	641.00	The fourth planet from the Sun, known as the Red Planet.	t	t	1
3	Jupiter	139820	139820	1898.00	The largest planet in the Solar System.	t	f	2
4	Saturn	116460	116460	5688.00	Famous for its extensive ring system.	t	t	2
5	Uranus	50000	50000	868.00	The ice giant with a tilted axis of rotation.	f	t	3
6	Neptune	49528	49528	1024.00	The farthest planet from the Sun in our Solar System.	t	t	3
7	Venus	12104	12104	486.00	The second planet from the Sun, known for its thick atmosphere.	t	f	4
8	Mercury	4879	4879	330.00	The smallest and closest planet to the Sun.	t	f	4
9	Pluto	2376	2376	14.00	A dwarf planet in the Kuiper Belt.	f	f	5
10	Eris	2326	2326	27.00	A dwarf planet located in the scattered disk.	f	f	5
11	Haumea	1960	1960	4.00	An elongated dwarf planet in the Kuiper Belt.	f	f	6
12	Makemake	1430	1430	8.00	A dwarf planet in the Kuiper Belt with a bright surface.	f	f	6
\.


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.star (star_id, name, width, height, weight, description, isexplore, isdistance, galaxy_id) FROM stdin;
1	Sirius	100	80	2.10	The brightest star in the night sky.	t	t	1
2	Betelgeuse	150	120	18.00	A red supergiant star in the constellation Orion.	t	f	1
3	Polaris	50	50	1.40	The North Star, located close to the celestial pole.	t	t	2
4	Vega	80	60	2.70	A bright star in the constellation Lyra.	t	t	3
5	Altair	70	70	1.90	A bright star in the constellation Aquila.	t	f	4
6	Antares	120	100	12.00	A red supergiant star in the constellation Scorpius.	t	t	5
\.


--
-- Data for Name: temp; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.temp (noteid, temp_id, name) FROM stdin;
1	1	\N
2	2	\N
3	3	\N
\.


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 1, false);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 1, false);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 1, false);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 1, false);


--
-- Name: temp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.temp_id_seq', 3, true);


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
-- Name: moon moon_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id UNIQUE (moon_id);


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
-- Name: temp temp__planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.temp
    ADD CONSTRAINT temp__planet_id UNIQUE (temp_id);


--
-- Name: temp temp_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.temp
    ADD CONSTRAINT temp_pkey PRIMARY KEY (temp_id);


--
-- Name: galaxy unique_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_id UNIQUE (galaxy_id);


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
-- Name: planet unique_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_id UNIQUE (planet_id);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_id UNIQUE (star_id);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

