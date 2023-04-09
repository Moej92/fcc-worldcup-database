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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(13) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(20) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (173, 2018, 'Final', 883, 884, 4, 2);
INSERT INTO public.games VALUES (174, 2018, 'Third Place', 885, 886, 2, 0);
INSERT INTO public.games VALUES (175, 2018, 'Semi-Final', 884, 886, 2, 1);
INSERT INTO public.games VALUES (176, 2018, 'Semi-Final', 883, 885, 1, 0);
INSERT INTO public.games VALUES (177, 2018, 'Quarter-Final', 884, 887, 3, 2);
INSERT INTO public.games VALUES (178, 2018, 'Quarter-Final', 886, 888, 2, 0);
INSERT INTO public.games VALUES (179, 2018, 'Quarter-Final', 885, 889, 2, 1);
INSERT INTO public.games VALUES (180, 2018, 'Quarter-Final', 883, 890, 2, 0);
INSERT INTO public.games VALUES (181, 2018, 'Eighth-Final', 886, 891, 2, 1);
INSERT INTO public.games VALUES (182, 2018, 'Eighth-Final', 888, 892, 1, 0);
INSERT INTO public.games VALUES (183, 2018, 'Eighth-Final', 885, 893, 3, 2);
INSERT INTO public.games VALUES (184, 2018, 'Eighth-Final', 889, 894, 2, 0);
INSERT INTO public.games VALUES (185, 2018, 'Eighth-Final', 884, 895, 2, 1);
INSERT INTO public.games VALUES (186, 2018, 'Eighth-Final', 887, 896, 2, 1);
INSERT INTO public.games VALUES (187, 2018, 'Eighth-Final', 890, 897, 2, 1);
INSERT INTO public.games VALUES (188, 2018, 'Eighth-Final', 883, 898, 4, 3);
INSERT INTO public.games VALUES (189, 2014, 'Final', 899, 898, 1, 0);
INSERT INTO public.games VALUES (190, 2014, 'Third Place', 900, 889, 3, 0);
INSERT INTO public.games VALUES (191, 2014, 'Semi-Final', 898, 900, 1, 0);
INSERT INTO public.games VALUES (192, 2014, 'Semi-Final', 899, 889, 7, 1);
INSERT INTO public.games VALUES (193, 2014, 'Quarter-Final', 900, 901, 1, 0);
INSERT INTO public.games VALUES (194, 2014, 'Quarter-Final', 898, 885, 1, 0);
INSERT INTO public.games VALUES (195, 2014, 'Quarter-Final', 889, 891, 2, 1);
INSERT INTO public.games VALUES (196, 2014, 'Quarter-Final', 899, 883, 1, 0);
INSERT INTO public.games VALUES (197, 2014, 'Eighth-Final', 889, 902, 2, 1);
INSERT INTO public.games VALUES (198, 2014, 'Eighth-Final', 891, 890, 2, 0);
INSERT INTO public.games VALUES (199, 2014, 'Eighth-Final', 883, 903, 2, 0);
INSERT INTO public.games VALUES (200, 2014, 'Eighth-Final', 899, 904, 2, 1);
INSERT INTO public.games VALUES (201, 2014, 'Eighth-Final', 900, 894, 2, 1);
INSERT INTO public.games VALUES (202, 2014, 'Eighth-Final', 901, 905, 2, 1);
INSERT INTO public.games VALUES (203, 2014, 'Eighth-Final', 898, 892, 1, 0);
INSERT INTO public.games VALUES (204, 2014, 'Eighth-Final', 885, 906, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (883, 'France');
INSERT INTO public.teams VALUES (884, 'Croatia');
INSERT INTO public.teams VALUES (885, 'Belgium');
INSERT INTO public.teams VALUES (886, 'England');
INSERT INTO public.teams VALUES (887, 'Russia');
INSERT INTO public.teams VALUES (888, 'Sweden');
INSERT INTO public.teams VALUES (889, 'Brazil');
INSERT INTO public.teams VALUES (890, 'Uruguay');
INSERT INTO public.teams VALUES (891, 'Colombia');
INSERT INTO public.teams VALUES (892, 'Switzerland');
INSERT INTO public.teams VALUES (893, 'Japan');
INSERT INTO public.teams VALUES (894, 'Mexico');
INSERT INTO public.teams VALUES (895, 'Denmark');
INSERT INTO public.teams VALUES (896, 'Spain');
INSERT INTO public.teams VALUES (897, 'Portugal');
INSERT INTO public.teams VALUES (898, 'Argentina');
INSERT INTO public.teams VALUES (899, 'Germany');
INSERT INTO public.teams VALUES (900, 'Netherlands');
INSERT INTO public.teams VALUES (901, 'Costa Rica');
INSERT INTO public.teams VALUES (902, 'Chile');
INSERT INTO public.teams VALUES (903, 'Nigeria');
INSERT INTO public.teams VALUES (904, 'Algeria');
INSERT INTO public.teams VALUES (905, 'Greece');
INSERT INTO public.teams VALUES (906, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 204, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 906, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

