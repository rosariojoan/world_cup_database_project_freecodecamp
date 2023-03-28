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
    round character varying(20) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
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

INSERT INTO public.games VALUES (33, 2018, 'Final', 4, 2, 89, 90);
INSERT INTO public.games VALUES (34, 2018, 'Third Place', 2, 0, 91, 92);
INSERT INTO public.games VALUES (35, 2018, 'Semi-Final', 2, 1, 90, 92);
INSERT INTO public.games VALUES (36, 2018, 'Semi-Final', 1, 0, 89, 91);
INSERT INTO public.games VALUES (37, 2018, 'Quarter-Final', 3, 2, 90, 93);
INSERT INTO public.games VALUES (38, 2018, 'Quarter-Final', 2, 0, 92, 94);
INSERT INTO public.games VALUES (39, 2018, 'Quarter-Final', 2, 1, 91, 95);
INSERT INTO public.games VALUES (40, 2018, 'Quarter-Final', 2, 0, 89, 96);
INSERT INTO public.games VALUES (41, 2018, 'Eighth-Final', 2, 1, 92, 97);
INSERT INTO public.games VALUES (42, 2018, 'Eighth-Final', 1, 0, 94, 98);
INSERT INTO public.games VALUES (43, 2018, 'Eighth-Final', 3, 2, 91, 99);
INSERT INTO public.games VALUES (44, 2018, 'Eighth-Final', 2, 0, 95, 100);
INSERT INTO public.games VALUES (45, 2018, 'Eighth-Final', 2, 1, 90, 101);
INSERT INTO public.games VALUES (46, 2018, 'Eighth-Final', 2, 1, 93, 102);
INSERT INTO public.games VALUES (47, 2018, 'Eighth-Final', 2, 1, 96, 103);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 4, 3, 89, 104);
INSERT INTO public.games VALUES (49, 2014, 'Final', 1, 0, 105, 104);
INSERT INTO public.games VALUES (50, 2014, 'Third Place', 3, 0, 106, 95);
INSERT INTO public.games VALUES (51, 2014, 'Semi-Final', 1, 0, 104, 106);
INSERT INTO public.games VALUES (52, 2014, 'Semi-Final', 7, 1, 105, 95);
INSERT INTO public.games VALUES (53, 2014, 'Quarter-Final', 1, 0, 106, 107);
INSERT INTO public.games VALUES (54, 2014, 'Quarter-Final', 1, 0, 104, 91);
INSERT INTO public.games VALUES (55, 2014, 'Quarter-Final', 2, 1, 95, 97);
INSERT INTO public.games VALUES (56, 2014, 'Quarter-Final', 1, 0, 105, 89);
INSERT INTO public.games VALUES (57, 2014, 'Eighth-Final', 2, 1, 95, 108);
INSERT INTO public.games VALUES (58, 2014, 'Eighth-Final', 2, 0, 97, 96);
INSERT INTO public.games VALUES (59, 2014, 'Eighth-Final', 2, 0, 89, 109);
INSERT INTO public.games VALUES (60, 2014, 'Eighth-Final', 2, 1, 105, 110);
INSERT INTO public.games VALUES (61, 2014, 'Eighth-Final', 2, 1, 106, 100);
INSERT INTO public.games VALUES (62, 2014, 'Eighth-Final', 2, 1, 107, 111);
INSERT INTO public.games VALUES (63, 2014, 'Eighth-Final', 1, 0, 104, 98);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 2, 1, 91, 112);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (89, 'France');
INSERT INTO public.teams VALUES (90, 'Croatia');
INSERT INTO public.teams VALUES (91, 'Belgium');
INSERT INTO public.teams VALUES (92, 'England');
INSERT INTO public.teams VALUES (93, 'Russia');
INSERT INTO public.teams VALUES (94, 'Sweden');
INSERT INTO public.teams VALUES (95, 'Brazil');
INSERT INTO public.teams VALUES (96, 'Uruguay');
INSERT INTO public.teams VALUES (97, 'Colombia');
INSERT INTO public.teams VALUES (98, 'Switzerland');
INSERT INTO public.teams VALUES (99, 'Japan');
INSERT INTO public.teams VALUES (100, 'Mexico');
INSERT INTO public.teams VALUES (101, 'Denmark');
INSERT INTO public.teams VALUES (102, 'Spain');
INSERT INTO public.teams VALUES (103, 'Portugal');
INSERT INTO public.teams VALUES (104, 'Argentina');
INSERT INTO public.teams VALUES (105, 'Germany');
INSERT INTO public.teams VALUES (106, 'Netherlands');
INSERT INTO public.teams VALUES (107, 'Costa Rica');
INSERT INTO public.teams VALUES (108, 'Chile');
INSERT INTO public.teams VALUES (109, 'Nigeria');
INSERT INTO public.teams VALUES (110, 'Algeria');
INSERT INTO public.teams VALUES (111, 'Greece');
INSERT INTO public.teams VALUES (112, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 112, true);


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

