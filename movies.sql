--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

-- Started on 2021-10-19 21:31:01 UTC

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
-- TOC entry 207 (class 1259 OID 58402)
-- Name: actors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.actors (
    actor_id integer NOT NULL,
    first_name text NOT NULL,
    last_name text NOT NULL,
    gender text,
    birth_date date,
    picture text
);


ALTER TABLE public.actors OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 58400)
-- Name: actors_actor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.actors_actor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.actors_actor_id_seq OWNER TO postgres;

--
-- TOC entry 3163 (class 0 OID 0)
-- Dependencies: 206
-- Name: actors_actor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.actors_actor_id_seq OWNED BY public.actors.actor_id;


--
-- TOC entry 211 (class 1259 OID 58424)
-- Name: awards; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.awards (
    award_id integer NOT NULL,
    award text NOT NULL
);


ALTER TABLE public.awards OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 58422)
-- Name: awards_award_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.awards_award_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.awards_award_id_seq OWNER TO postgres;

--
-- TOC entry 3164 (class 0 OID 0)
-- Dependencies: 210
-- Name: awards_award_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.awards_award_id_seq OWNED BY public.awards.award_id;


--
-- TOC entry 213 (class 1259 OID 58435)
-- Name: directors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.directors (
    director_id integer NOT NULL,
    first_name text NOT NULL,
    last_name text NOT NULL,
    gender text,
    birth_date date,
    picture text
);


ALTER TABLE public.directors OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 58433)
-- Name: directors_director_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.directors_director_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.directors_director_id_seq OWNER TO postgres;

--
-- TOC entry 3165 (class 0 OID 0)
-- Dependencies: 212
-- Name: directors_director_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.directors_director_id_seq OWNED BY public.directors.director_id;


--
-- TOC entry 203 (class 1259 OID 58380)
-- Name: formats; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.formats (
    format_id integer NOT NULL,
    extension text NOT NULL
);


ALTER TABLE public.formats OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 58378)
-- Name: formats_format_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.formats_format_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.formats_format_id_seq OWNER TO postgres;

--
-- TOC entry 3166 (class 0 OID 0)
-- Dependencies: 202
-- Name: formats_format_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.formats_format_id_seq OWNED BY public.formats.format_id;


--
-- TOC entry 209 (class 1259 OID 58413)
-- Name: genres; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.genres (
    genre_id integer NOT NULL,
    genre text NOT NULL,
    subgenre text,
    description text
);


ALTER TABLE public.genres OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 58411)
-- Name: genres_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.genres_genre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.genres_genre_id_seq OWNER TO postgres;

--
-- TOC entry 3167 (class 0 OID 0)
-- Dependencies: 208
-- Name: genres_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.genres_genre_id_seq OWNED BY public.genres.genre_id;


--
-- TOC entry 225 (class 1259 OID 58573)
-- Name: movie_ratings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movie_ratings (
    user_id integer NOT NULL,
    movie_id integer NOT NULL,
    rating numeric NOT NULL,
    rating_date timestamp without time zone
);


ALTER TABLE public.movie_ratings OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 58474)
-- Name: movies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movies (
    movie_id integer NOT NULL,
    title text NOT NULL,
    year integer NOT NULL,
    length_min text NOT NULL,
    studio text,
    format_id integer NOT NULL,
    resolution_id integer NOT NULL,
    rating_id integer,
    cover text,
    movie text NOT NULL,
    movie_subtitles text,
    summary text
);


ALTER TABLE public.movies OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 58513)
-- Name: movies_actors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movies_actors (
    actor_id integer NOT NULL,
    movie_id integer NOT NULL
);


ALTER TABLE public.movies_actors OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 58543)
-- Name: movies_awards; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movies_awards (
    award_id integer NOT NULL,
    movie_id integer NOT NULL
);


ALTER TABLE public.movies_awards OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 58558)
-- Name: movies_directors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movies_directors (
    director_id integer NOT NULL,
    movie_id integer NOT NULL
);


ALTER TABLE public.movies_directors OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 58528)
-- Name: movies_genres; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movies_genres (
    genre_id integer NOT NULL,
    movie_id integer NOT NULL
);


ALTER TABLE public.movies_genres OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 58472)
-- Name: movies_movie_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.movies_movie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.movies_movie_id_seq OWNER TO postgres;

--
-- TOC entry 3168 (class 0 OID 0)
-- Dependencies: 218
-- Name: movies_movie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.movies_movie_id_seq OWNED BY public.movies.movie_id;


--
-- TOC entry 220 (class 1259 OID 58498)
-- Name: movies_trailers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movies_trailers (
    trailer_id integer NOT NULL,
    movie_id integer NOT NULL
);


ALTER TABLE public.movies_trailers OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 58463)
-- Name: mpa_ratings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mpa_ratings (
    rating_id integer NOT NULL,
    rating text NOT NULL,
    description_short text NOT NULL,
    description_detailed text NOT NULL
);


ALTER TABLE public.mpa_ratings OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 58461)
-- Name: mpa_ratings_rating_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mpa_ratings_rating_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mpa_ratings_rating_id_seq OWNER TO postgres;

--
-- TOC entry 3169 (class 0 OID 0)
-- Dependencies: 216
-- Name: mpa_ratings_rating_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mpa_ratings_rating_id_seq OWNED BY public.mpa_ratings.rating_id;


--
-- TOC entry 205 (class 1259 OID 58391)
-- Name: resolutions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.resolutions (
    resolution_id integer NOT NULL,
    resolution text NOT NULL,
    pixel_size text NOT NULL,
    aspect_ratio text NOT NULL,
    num_p text
);


ALTER TABLE public.resolutions OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 58389)
-- Name: resolutions_resolution_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.resolutions_resolution_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.resolutions_resolution_id_seq OWNER TO postgres;

--
-- TOC entry 3170 (class 0 OID 0)
-- Dependencies: 204
-- Name: resolutions_resolution_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.resolutions_resolution_id_seq OWNED BY public.resolutions.resolution_id;


--
-- TOC entry 201 (class 1259 OID 58369)
-- Name: trailers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trailers (
    trailer_id integer NOT NULL,
    trailer_url text NOT NULL,
    trailer_name text NOT NULL
);


ALTER TABLE public.trailers OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 58367)
-- Name: trailers_trailer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.trailers_trailer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.trailers_trailer_id_seq OWNER TO postgres;

--
-- TOC entry 3171 (class 0 OID 0)
-- Dependencies: 200
-- Name: trailers_trailer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.trailers_trailer_id_seq OWNED BY public.trailers.trailer_id;


--
-- TOC entry 215 (class 1259 OID 58446)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username text NOT NULL,
    password text NOT NULL,
    email character varying(320) NOT NULL,
    cell_phone character varying(24),
    first_name text,
    last_name text,
    gender text,
    birth_date date,
    profile_pic text,
    age integer NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 58444)
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO postgres;

--
-- TOC entry 3172 (class 0 OID 0)
-- Dependencies: 214
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- TOC entry 2942 (class 2604 OID 58405)
-- Name: actors actor_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.actors ALTER COLUMN actor_id SET DEFAULT nextval('public.actors_actor_id_seq'::regclass);


--
-- TOC entry 2944 (class 2604 OID 58427)
-- Name: awards award_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.awards ALTER COLUMN award_id SET DEFAULT nextval('public.awards_award_id_seq'::regclass);


--
-- TOC entry 2945 (class 2604 OID 58438)
-- Name: directors director_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.directors ALTER COLUMN director_id SET DEFAULT nextval('public.directors_director_id_seq'::regclass);


--
-- TOC entry 2940 (class 2604 OID 58383)
-- Name: formats format_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.formats ALTER COLUMN format_id SET DEFAULT nextval('public.formats_format_id_seq'::regclass);


--
-- TOC entry 2943 (class 2604 OID 58416)
-- Name: genres genre_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genres ALTER COLUMN genre_id SET DEFAULT nextval('public.genres_genre_id_seq'::regclass);


--
-- TOC entry 2948 (class 2604 OID 58477)
-- Name: movies movie_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies ALTER COLUMN movie_id SET DEFAULT nextval('public.movies_movie_id_seq'::regclass);


--
-- TOC entry 2947 (class 2604 OID 58466)
-- Name: mpa_ratings rating_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mpa_ratings ALTER COLUMN rating_id SET DEFAULT nextval('public.mpa_ratings_rating_id_seq'::regclass);


--
-- TOC entry 2941 (class 2604 OID 58394)
-- Name: resolutions resolution_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resolutions ALTER COLUMN resolution_id SET DEFAULT nextval('public.resolutions_resolution_id_seq'::regclass);


--
-- TOC entry 2939 (class 2604 OID 58372)
-- Name: trailers trailer_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trailers ALTER COLUMN trailer_id SET DEFAULT nextval('public.trailers_trailer_id_seq'::regclass);


--
-- TOC entry 2946 (class 2604 OID 58449)
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- TOC entry 3139 (class 0 OID 58402)
-- Dependencies: 207
-- Data for Name: actors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.actors (actor_id, first_name, last_name, gender, birth_date, picture) FROM stdin;
1	Tom	Hanks	\N	\N	\N
2	Tim	Allen	\N	\N	\N
3	Don	Rickles	\N	\N	\N
4	Jim	Varney	\N	\N	\N
5	Wallace	Shawn	\N	\N	\N
6	John	Ratzenberger	\N	\N	\N
7	Annie	Potts	\N	\N	\N
8	John	Morris	\N	\N	\N
9	Eric	von Detten	\N	\N	\N
10	Dave	Foley	\N	\N	\N
11	Kevin	Spacey	\N	\N	\N
12	Julia	Louis-Dreyfus	\N	\N	\N
13	Joan	Cusack	\N	\N	\N
14	Kelsey	Grammer	\N	\N	\N
15	Billy	Crystal	\N	\N	\N
16	John	Goodman	\N	\N	\N
17	Mary	Gibbs	\N	\N	\N
18	Steve	Buscemi	\N	\N	\N
19	Albert	Brooks	\N	\N	\N
20	Ellen	DeGeneres	\N	\N	\N
21	Alexander	Gould	\N	\N	\N
22	William	DaFoe	\N	\N	\N
23	Craig	Nelson	\N	\N	\N
24	Samuel	Jackson	\N	\N	\N
25	Holly	Hunter	\N	\N	\N
26	Jason	Lee	\N	\N	\N
27	Owen	Wilson	\N	\N	\N
28	Bonnie	Hunt	\N	\N	\N
29	Paul	Newman	\N	\N	\N
30	Larry	Cable Guy, the	\N	\N	\N
31	Brad	Garrett	\N	\N	\N
32	Lou	Romano	\N	\N	\N
33	Patton	Oswalt	\N	\N	\N
34	Ian	Holm	\N	\N	\N
35	Ben	Burtt	\N	\N	\N
36	Elissa	Knight	\N	\N	\N
37	Jeff	Garlin	\N	\N	\N
38	Fred	Willard	\N	\N	\N
39	Ed	Asner	\N	\N	\N
40	Jordan	Nagai	\N	\N	\N
41	John	Ratzenberger	\N	\N	\N
42	Christopher	Plummer	\N	\N	\N
43	Ned	Beatty	\N	\N	\N
44	Michael	Caine	\N	\N	\N
45	Emily	Mortimer	\N	\N	\N
46	Kelly	Macdonald	\N	\N	\N
47	Billy	Connolly	\N	\N	\N
48	Emma	Thompson	\N	\N	\N
49	Julie	Walters	\N	\N	\N
50	Helen	Mirren	\N	\N	\N
51	Amy	Poehler	\N	\N	\N
52	Bill	Hader	\N	\N	\N
53	Lewis	Black	\N	\N	\N
54	Mindy	Kaling	\N	\N	\N
55	Jeffrey	Wright	\N	\N	\N
56	Frances	McDormand	\N	\N	\N
57	Maleah	Nipay-Padilla	\N	\N	\N
58	Ryan	Teeple	\N	\N	\N
59	Ed	O'Neill	\N	\N	\N
60	Kaitlin	Olson	\N	\N	\N
61	Cristela	Alonzo	\N	\N	\N
62	Chris	Cooper	\N	\N	\N
63	Nathan	Fillion	\N	\N	\N
64	Anthony	Gonzalez	\N	\N	\N
65	Gael	Garcia Bernal	\N	\N	\N
66	Benjamin	Bratt	\N	\N	\N
67	Alanna	Ubach	\N	\N	\N
68	Sarah	Vowell	\N	\N	\N
69	Huck	Milner	\N	\N	\N
70	Tony	Hale	\N	\N	\N
71	Tom	Holland	\N	\N	\N
72	Chris	Pratt	\N	\N	\N
73	Julia	Louis-Dreyfus	\N	\N	\N
74	Octavia	Spencer	\N	\N	\N
75	Jamie	Foxx	\N	\N	\N
76	Tina	Fey	\N	\N	\N
77	Graham	Norton	\N	\N	\N
78	Rachel	House	\N	\N	\N
79	Jacob	Tremblay	\N	\N	\N
80	Jack	Dylan Grazer	\N	\N	\N
81	Emma	Berman	\N	\N	\N
82	Saverio	Raimondo	\N	\N	\N
\.


--
-- TOC entry 3143 (class 0 OID 58424)
-- Dependencies: 211
-- Data for Name: awards; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.awards (award_id, award) FROM stdin;
1	Best Original Screenplay
2	Best Original Song
3	Best Original Score
4	Best Instrumental Composition
5	Best Animated Film
\.


--
-- TOC entry 3145 (class 0 OID 58435)
-- Dependencies: 213
-- Data for Name: directors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.directors (director_id, first_name, last_name, gender, birth_date, picture) FROM stdin;
1	John	Lasseter	\N	\N	\N
2	Pete	Docter	\N	\N	\N
3	Andrew	Stanton	\N	\N	\N
4	Brad	Bird	\N	\N	\N
5	Lee	Unkrich	\N	\N	\N
6	Mark	Andrews	\N	\N	\N
7	Brenda	Chapman	\N	\N	\N
8	Dan	Scanlon	\N	\N	\N
9	Peter	Sohn	\N	\N	\N
10	Brian	Fee	\N	\N	\N
11	Josh	Cooley	\N	\N	\N
12	Enrico	Casarosa	\N	\N	\N
13	Ash	Brannon	\N	\N	\N
14	David	Silverman	\N	\N	\N
15	Joe	Ranft	\N	\N	\N
16	Bob	Peterson	\N	\N	\N
17	Brad	Lewis	\N	\N	\N
18	Steve	Purcell	\N	\N	\N
19	Ronnie	del Carmen	\N	\N	\N
20	Angus	MacLane	\N	\N	\N
21	Kemp	Powers	\N	\N	\N
22	Jan	Pinkava	\N	\N	\N
23	Adrian	Molina	\N	\N	\N
\.


--
-- TOC entry 3135 (class 0 OID 58380)
-- Dependencies: 203
-- Data for Name: formats; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.formats (format_id, extension) FROM stdin;
1	MP4
2	MOV
3	WMV
4	AVI
5	FLV
6	F4V
7	SWF
8	MKV
9	WEBM
10	HTML5
11	MPEG-2
\.


--
-- TOC entry 3141 (class 0 OID 58413)
-- Dependencies: 209
-- Data for Name: genres; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.genres (genre_id, genre, subgenre, description) FROM stdin;
1	Action	\N	\N
2	Action	Epic Movies	\N
3	Action	Spy Movies	\N
4	Action	Disaster Movies	\N
5	Action	Superhero Movies	\N
6	Action	Thriller Movies	\N
7	Action	Martial Arts Movies	\N
8	Action	Video Game Movies	\N
9	Animation	\N	\N
10	Animation	Traditional	\N
11	Animation	Rotoscoping	\N
12	Animation	Puppet	\N
13	Animation	Claymation	\N
14	Animation	Live/Animation	\N
15	Animation	2D CGI	\N
16	Animation	3D CGI	\N
17	Crime	\N	\N
18	Crime	Detective Movies	\N
19	Crime	Gangster Movies	\N
20	Crime	Legal Thrillers	\N
21	Comedy	\N	\N
22	Comedy	Anarchic	\N
23	Comedy	Bathroom	\N
24	Comedy	Parody	\N
25	Comedy	Sex	\N
26	Comedy	Straight	\N
27	Drama	\N	\N
28	Drama	Docudrama	\N
29	Drama	Comedy Drama	\N
30	Drama	Light Drama	\N
31	Drama	Satire	\N
32	Fantasy	\N	\N
33	Fantasy	Urban Fantasy	\N
34	Fantasy	Dark Fantasy	\N
35	Fantasy	Fairy Tale	\N
36	Fantasy	Epic Fantasy	\N
37	Fantasy	Heroic Fantasy	\N
38	Fantasy	Sword/Sorcery	\N
39	Historical	\N	\N
40	Historical	Biopic	\N
41	Historical	Historical Drama	\N
42	Historical	Biblical	\N
43	Historical	Period	\N
44	Historical	Alternate History	\N
45	Horror	\N	\N
46	Horror	Slasher	\N
47	Horror	Splatter	\N
48	Horror	Pyschological Horror	\N
49	Horror	Survival	\N
50	Horror	Found Footage	\N
51	Horror	Paranormal/Occult	\N
52	Horror	Monster	\N
53	Romance	\N	\N
54	Romance	Romantic comedy	\N
55	Romance	Historical Romance	\N
56	Romance	Romantic Action	\N
57	Romance	Romantic Thriller	\N
58	Romance	Chick flick	\N
59	Romance	Romantic Drama	\N
60	Sci-Fi	\N	\N
61	Sci-Fi	Hard	\N
62	Sci-Fi	Apocalyptic	\N
63	Sci-Fi	Future Noir	\N
64	Sci-Fi	Space Opera	\N
65	Sci-Fi	Military	\N
66	Sci-Fi	Punk	\N
67	Sci-Fi	Speculative	\N
68	Thriller	\N	\N
69	Thriller	Action Thriller	\N
70	Thriller	Comedy Thriller	\N
71	Thriller	Conspiracy	\N
72	Thriller	Crime Thriller	\N
73	Thriller	Erotic	\N
74	Thriller	Pandemic	\N
75	Western	\N	\N
76	Western	Epic Western	\N
77	Western	Outlaw Western	\N
78	Western	Marshall Western	\N
79	Western	Revisionist Western	\N
80	Western	Revenge Western	\N
81	Western	Empire Western	\N
82	Adventure	\N	\N
83	Adventure	Swashbuckler films	\N
84	Adventure	Pirate films	\N
85	Adventure	Survival films	\N
\.


--
-- TOC entry 3157 (class 0 OID 58573)
-- Dependencies: 225
-- Data for Name: movie_ratings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movie_ratings (user_id, movie_id, rating, rating_date) FROM stdin;
1	1	7	\N
2	1	8	\N
\.


--
-- TOC entry 3151 (class 0 OID 58474)
-- Dependencies: 219
-- Data for Name: movies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movies (movie_id, title, year, length_min, studio, format_id, resolution_id, rating_id, cover, movie, movie_subtitles, summary) FROM stdin;
1	Toy Story	1995	81	Disney Pixar	1	3	1	https://upload.wikimedia.org/wikipedia/en/1/13/Toy_Story.jpg	movie link	sub link	A cowboy doll is profoundly threatened and jealous when a new spaceman figure supplants him as top toy in a boy's room.
2	A Bug's Life	1998	95	Disney Pixar	1	3	1	https://upload.wikimedia.org/wikipedia/en/c/cc/A_Bug%27s_Life.jpg	movie link	sub link	A misfit ant, looking for "warriors" to save his colony from greedy grasshoppers, recruits a group of bugs that turn out to be an inept circus troupe.
3	Toy Story 2	1999	92	Disney Pixar	1	3	1	https://m.media-amazon.com/images/M/MV5BMWM5ZDcxMTYtNTEyNS00MDRkLWI3YTItNThmMGExMWY4NDIwXkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_UY209_CR1,0,140,209_AL_.jpg	movie link	sub link	When Woody is stolen by a toy collector, Buzz and his friends set out on a rescue mission to save Woody before he becomes a museum toy property with his roundup gang Jessie, Prospector, and Bullseye.
4	Monsters, Inc.	2001	92	Disney Pixar	1	3	1	https://m.media-amazon.com/images/M/MV5BMTY1NTI0ODUyOF5BMl5BanBnXkFtZTgwNTEyNjQ0MDE@._V1_UY209_CR0,0,140,209_AL_.jpg	movie link	sub link	In order to power the city, monsters have to scare children so that they scream. However, the children are toxic to the monsters, and after a child gets through, two monsters realize things may not be what they think.
5	Finding Nemo	2003	100	Disney Pixar	1	3	1	https://m.media-amazon.com/images/M/MV5BZTAzNWZlNmUtZDEzYi00ZjA5LWIwYjEtZGM1NWE1MjE4YWRhXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UY209_CR0,0,140,209_AL_.jpg	movie link	sub link	After his son is captured in the Great Barrier Reef and taken to Sydney, a timid clownfish sets out on a journey to bring him home.
6	The Incredibles	2004	115	Disney Pixar	1	3	2	https://m.media-amazon.com/images/M/MV5BMTY5OTU0OTc2NV5BMl5BanBnXkFtZTcwMzU4MDcyMQ@@._V1_UY209_CR0,0,140,209_AL_.jpg	movie link	sub link	A family of undercover superheroes, while trying to live the quiet suburban life, are forced into action to save the world.
7	Cars	2006	117	Disney Pixar	1	3	1	https://m.media-amazon.com/images/M/MV5BMTg5NzY0MzA2MV5BMl5BanBnXkFtZTYwNDc3NTc2._V1_UY209_CR0,0,140,209_AL_.jpg	movie link	sub link	A hot-shot race-car named Lightning McQueen gets waylaid in Radiator Springs, where he finds the true meaning of friendship and family.
8	Ratatouille	2007	111	Disney Pixar	1	3	1	https://m.media-amazon.com/images/M/MV5BMTMzODU0NTkxMF5BMl5BanBnXkFtZTcwMjQ4MzMzMw@@._V1_UY209_CR0,0,140,209_AL_.jpg	movie link	sub link	A rat who can cook makes an unusual alliance with a young kitchen worker at a famous restaurant.
9	WALL-E	2008	98	Disney Pixar	1	3	1	https://m.media-amazon.com/images/M/MV5BMjExMTg5OTU0NF5BMl5BanBnXkFtZTcwMjMxMzMzMw@@._V1_UY209_CR0,0,140,209_AL_.jpg	movie link	sub link	In the distant future, a small waste-collecting robot inadvertently embarks on a space journey that will ultimately decide the fate of mankind.
10	Up	2009	96	Disney Pixar	1	3	2	https://m.media-amazon.com/images/M/MV5BMTk3NDE2NzI4NF5BMl5BanBnXkFtZTgwNzE1MzEyMTE@._V1_UX140_CR0,0,140,209_AL_.jpg	movie link	sub link	78-year-old Carl Fredricksen travels to Paradise Falls in his house equipped with balloons, inadvertently taking a young stowaway.
11	Toy Story 3	2010	103	Disney Pixar	1	3	1	https://m.media-amazon.com/images/M/MV5BMTgxOTY4Mjc0MF5BMl5BanBnXkFtZTcwNTA4MDQyMw@@._V1_UY209_CR4,0,140,209_AL_.jpg	movie link	sub link	The toys are mistakenly delivered to a day-care center instead of the attic right before Andy leaves for college, and it's up to Woody to convince the other toys that they weren't abandoned and to return home.
12	Cars 2	2011	106	Disney Pixar	1	3	1	https://m.media-amazon.com/images/M/MV5BMTUzNTc3MTU3M15BMl5BanBnXkFtZTcwMzIxNTc3NA@@._V1_UY209_CR0,0,140,209_AL_.jpg	movie link	sub link	Star race car Lightning McQueen and his pal Mater head overseas to compete in the World Grand Prix race. But the road to the championship becomes rocky as Mater gets caught up in an intriguing adventure of his own: international espionage.
13	Brave	2012	93	Disney Pixar	1	3	2	https://m.media-amazon.com/images/M/MV5BMzgwODk3ODA1NF5BMl5BanBnXkFtZTcwNjU3NjQ0Nw@@._V1_UY209_CR0,0,140,209_AL_.jpg	movie link	sub link	Determined to make her own path in life, Princess Merida (Kelly Macdonald) defies a custom that brings chaos to her kingdom. Granted one wish, Merida must rely on her bravery and her archery skills to undo a beastly curse.
14	Monsters University	2013	104	Disney Pixar	1	3	1	https://m.media-amazon.com/images/M/MV5BMTUyODgwMDU3M15BMl5BanBnXkFtZTcwOTM4MjcxOQ@@._V1_UY209_CR0,0,140,209_AL_.jpg	movie link	sub link	A look at the relationship between Mike Wazowski (Billy Crystal) and James P. "Sully" Sullivan (John Goodman) during their days at Monsters University, when they weren't necessarily the best of friends.
15	Inside Out	2015	95	Disney Pixar	1	3	2	https://m.media-amazon.com/images/M/MV5BOTgxMDQwMDk0OF5BMl5BanBnXkFtZTgwNjU5OTg2NDE@._V1_UY209_CR0,0,140,209_AL_.jpg	movie link	sub link	After young Riley is uprooted from her Midwest life and moved to San Francisco, her emotions - Joy, Fear, Anger, Disgust and Sadness - conflict on how best to navigate a new city, house, and school.
16	The Good Dinosaur	2015	93	Disney Pixar	1	3	2	https://m.media-amazon.com/images/M/MV5BMTc5MTg2NjQ4MV5BMl5BanBnXkFtZTgwNzcxOTY5NjE@._V1_UY209_CR0,0,140,209_AL_.jpg	movie link	sub link	In a world where dinosaurs and humans live side-by-side, an Apatosaurus named Arlo makes an unlikely human friend.
17	Finding Dory	2016	97	Disney Pixar	1	3	2	https://m.media-amazon.com/images/M/MV5BNzg4MjM2NDQ4MV5BMl5BanBnXkFtZTgwMzk3MTgyODE@._V1_UY209_CR0,0,140,209_AL_.jpg	movie link	sub link	Friendly but forgetful blue tang Dory begins a search for her long-lost parents, and everyone learns a few things about the real meaning of family along the way.
18	Cars 3	2017	102	Disney Pixar	1	3	1	https://upload.wikimedia.org/wikipedia/en/9/94/Cars_3_poster.jpg	movie link	sub link	Blindsided by a new generation of blazing-fast cars, the legendary Lighting McQueen finds himself pushed out of the sport that he loves. Hoping to get back in the game, he turns to Cruz Ramirez, an eager young technician who has her own plans for winning. With inspiration from the Fabulous Hudson Hornet and a few unexpected turns, No. 95 prepares to compete on Piston Cup Racing's biggest stage.
19	Coco	2017	105	Disney Pixar	1	3	2	https://m.media-amazon.com/images/M/MV5BYjQ5NjM0Y2YtNjZkNC00ZDhkLWJjMWItN2QyNzFkMDE3ZjAxXkEyXkFqcGdeQXVyODIxMzk5NjA@._V1_UY209_CR3,0,140,209_AL_.jpg	movie link	sub link	Aspiring musician Miguel, confronted with his family's ancestral ban on music, enters the Land of the Dead to find his great-great-grandfather, a legendary singer.
20	Incredibles 2	2018	118	Disney Pixar	1	3	2	https://upload.wikimedia.org/wikipedia/en/2/27/The_Incredibles_2.jpg	movie link	sub link	The Incredibles family takes on a new mission which involves a change in family roles: Bob Parr (Mr. Incredible) must manage the house while his wife Helen (Elastigirl) goes out to save the world.
21	Toy Story 4	2019	100	Disney Pixar	1	3	1	https://upload.wikimedia.org/wikipedia/en/4/4c/Toy_Story_4_poster.jpg	movie link	sub link	When a new toy called "Forky" joins Woody and the gang, a road trip alongside old and new friends reveals how big the world can be for a toy.
22	Onward	2020	102	Disney Pixar	1	3	2	https://upload.wikimedia.org/wikipedia/en/0/03/Onward_poster.jpg	movie link	sub link	Two elven brothers embark on a quest to bring their father back for one day.
23	Soul	2020	100	Disney Pixar	1	3	2	https://upload.wikimedia.org/wikipedia/en/9/95/Soul_Poster.jpeg	movie link	sub link	After landing the gig of a lifetime, a New York jazz pianist suddenly finds himself trapped in a strange land between Earth and the afterlife.
24	Luca	2021	95	Disney Pixar	1	3	2	https://upload.wikimedia.org/wikipedia/en/3/33/Luca_%282021_film%29.png	movie link	sub link	On the Italian Riviera, an unlikely but strong friendship grows between a human being and a sea monster disguised as a human.
\.


--
-- TOC entry 3153 (class 0 OID 58513)
-- Dependencies: 221
-- Data for Name: movies_actors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movies_actors (actor_id, movie_id) FROM stdin;
1	1
2	1
3	1
4	1
5	1
6	1
7	1
8	1
9	1
10	2
11	2
12	2
1	3
2	3
13	3
14	3
15	4
16	4
17	4
18	4
19	5
20	5
21	5
22	5
23	6
24	6
25	6
26	6
27	7
28	7
29	7
30	7
31	8
32	8
33	8
34	8
35	9
36	9
37	9
38	9
39	10
40	10
41	10
42	10
1	11
2	11
13	11
43	11
27	12
30	12
44	12
45	12
46	13
47	13
48	13
49	13
15	14
16	14
18	14
50	14
51	15
52	15
53	15
54	15
55	16
56	16
57	16
58	16
20	17
19	17
59	17
60	17
27	18
61	18
62	18
63	18
30	18
64	19
65	19
66	19
67	19
23	20
25	20
68	20
69	20
1	21
2	21
7	21
70	21
71	22
72	22
73	22
74	22
75	23
76	23
77	23
78	23
79	24
80	24
81	24
82	24
\.


--
-- TOC entry 3155 (class 0 OID 58543)
-- Dependencies: 223
-- Data for Name: movies_awards; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movies_awards (award_id, movie_id) FROM stdin;
1	1
2	1
3	1
4	2
5	2
\.


--
-- TOC entry 3156 (class 0 OID 58558)
-- Dependencies: 224
-- Data for Name: movies_directors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movies_directors (director_id, movie_id) FROM stdin;
1	1
2	1
2	3
3	1
3	13
4	2
4	5
4	14
5	3
5	5
6	4
7	1
7	15
8	4
8	22
9	3
10	2
10	16
11	5
12	1
12	17
13	6
13	7
13	18
14	8
15	2
15	19
16	9
17	3
17	20
18	10
19	5
19	23
20	4
21	11
22	8
23	2
23	21
23	12
\.


--
-- TOC entry 3154 (class 0 OID 58528)
-- Dependencies: 222
-- Data for Name: movies_genres; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movies_genres (genre_id, movie_id) FROM stdin;
16	1
21	1
32	1
82	1
16	2
21	2
32	2
85	2
16	3
21	3
32	3
82	3
16	4
21	4
32	4
82	4
16	5
21	5
32	5
85	5
16	6
21	6
37	6
82	6
5	6
16	7
21	7
32	7
82	7
16	8
21	8
32	8
82	8
16	9
21	9
32	9
82	9
63	9
16	10
21	10
32	10
82	10
16	11
21	11
32	11
82	11
16	12
21	12
32	12
82	12
16	13
21	13
32	13
82	13
16	14
21	14
32	14
82	14
16	15
21	15
32	15
82	15
16	16
21	16
32	16
85	16
16	17
21	17
32	17
82	17
16	18
21	18
32	18
82	18
16	19
21	19
32	19
82	19
16	20
21	20
37	20
82	20
5	20
16	21
21	21
32	21
82	21
16	22
21	22
32	22
82	22
16	23
21	23
32	23
85	23
16	24
21	24
32	24
82	24
\.


--
-- TOC entry 3152 (class 0 OID 58498)
-- Dependencies: 220
-- Data for Name: movies_trailers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movies_trailers (trailer_id, movie_id) FROM stdin;
1	1
2	2
3	3
4	4
5	5
6	6
7	7
8	8
9	9
10	10
11	11
12	12
13	13
14	14
15	15
16	16
17	17
18	18
19	19
20	20
21	21
22	22
23	23
24	24
\.


--
-- TOC entry 3149 (class 0 OID 58463)
-- Dependencies: 217
-- Data for Name: mpa_ratings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mpa_ratings (rating_id, rating, description_short, description_detailed) FROM stdin;
1	G	General Audiences	All ages admitted. Nothing that would offend parents for viewing by children.
2	PG	Parental Guidance Suggested	Some material may not be suitable for children. Parents urged to give "parental guidance". May contain some material parents might not like for their young children.
3	PG-13	Parents Strongly Cautioned	Some material may be inappropriate for children under 13. Parents are urged to be cautious. Some material may be inappropriate for pre-teenagers.
4	R	Restricted	Under 17 requires accompanying parent or adult guardian. Contains some adult material. Parents are urged to learn more about the film before taking their young children with them.
5	NC-17	Adults Only	No One 17 and Under Admitted. Clearly adult. Children are not admitted.
6	X	Adult Content	Contains an accumulation of brutal or sexually connotative language or explicit sex, or excessive and sadistic violence
\.


--
-- TOC entry 3137 (class 0 OID 58391)
-- Dependencies: 205
-- Data for Name: resolutions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.resolutions (resolution_id, resolution, pixel_size, aspect_ratio, num_p) FROM stdin;
1	SD (Standard Definition)	640 x 480	4:3	480p
2	HD (High Definition)	1280 x 720	16:9	720p
3	Full HD (FHD)	1920 x 1080	16:9	1080p
4	QHD (Quad HD)	2560 x 1440	16:9	1440p
5	2K	2048 x 1080	1:1.77	1080p
6	4K (Ultra HD)	3840 x 2160	1:1.9	2160p
7	8K (Full Ultra HD)	7680 x 4320	16:9	4320p
\.


--
-- TOC entry 3133 (class 0 OID 58369)
-- Dependencies: 201
-- Data for Name: trailers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.trailers (trailer_id, trailer_url, trailer_name) FROM stdin;
1	https://youtu.be/v-PjgYDrg70	Toy Story
2	https://youtu.be/mE35XQFxbeo	A Bug's Life
3	https://youtu.be/xNWSGRD5CzU	Toy Story 2
4	https://youtu.be/CGbgaHoapFM	Monsters, Inc.
5	https://youtu.be/9oQ628Seb9w	Finding Nemo
6	https://youtu.be/-UaGUdNJdRQ	The Incredibles
7	https://youtu.be/W_H7_tDHFE8	Cars
8	https://youtu.be/NgsQ8mVkN8w	Ratatouille
9	https://youtu.be/CZ1CATNbXg0	WALL-E
10	https://youtu.be/AkdXuDAP2Ts	Up
11	https://youtu.be/ZZv1vki4ou4	Toy Story 3
12	https://youtu.be/lg5hj2c5Nkk	Cars 2
13	https://youtu.be/TEHWDA_6e3M	Brave
14	https://youtu.be/QxrQ6BaijAY	Monsters University
15	https://youtu.be/WIDYqBMFzfg	Inside Out
16	https://youtu.be/7BrH72aFXfI	The Good Dinosaur
17	https://youtu.be/oP0WR2Ql9yI	Finding Dory
18	https://youtu.be/xGGM5Sy5PJs	Cars 3
19	https://youtu.be/Dh2szjud4I4	Coco
20	https://youtu.be/D9joM600LKA	Incredibles 2
21	https://youtu.be/lZHUmQ-dCXM	Toy Story 4
22	https://youtu.be/Alv1znZA6Es	Onward
23	https://youtu.be/aP5C1OSSEOo	Soul
24	https://youtu.be/fDGe7ozamj0	Luca
\.


--
-- TOC entry 3147 (class 0 OID 58446)
-- Dependencies: 215
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (user_id, username, password, email, cell_phone, first_name, last_name, gender, birth_date, profile_pic, age) FROM stdin;
1	user1	passwordHappy	ed@gmail.com	\N	\N	\N	\N	\N	\N	34
2	user2	superPassword	bob@gmail.com	\N	\N	\N	\N	\N	\N	38
\.


--
-- TOC entry 3173 (class 0 OID 0)
-- Dependencies: 206
-- Name: actors_actor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.actors_actor_id_seq', 1, false);


--
-- TOC entry 3174 (class 0 OID 0)
-- Dependencies: 210
-- Name: awards_award_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.awards_award_id_seq', 1, false);


--
-- TOC entry 3175 (class 0 OID 0)
-- Dependencies: 212
-- Name: directors_director_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.directors_director_id_seq', 1, false);


--
-- TOC entry 3176 (class 0 OID 0)
-- Dependencies: 202
-- Name: formats_format_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.formats_format_id_seq', 1, false);


--
-- TOC entry 3177 (class 0 OID 0)
-- Dependencies: 208
-- Name: genres_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.genres_genre_id_seq', 1, false);


--
-- TOC entry 3178 (class 0 OID 0)
-- Dependencies: 218
-- Name: movies_movie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.movies_movie_id_seq', 1, false);


--
-- TOC entry 3179 (class 0 OID 0)
-- Dependencies: 216
-- Name: mpa_ratings_rating_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mpa_ratings_rating_id_seq', 1, false);


--
-- TOC entry 3180 (class 0 OID 0)
-- Dependencies: 204
-- Name: resolutions_resolution_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.resolutions_resolution_id_seq', 1, false);


--
-- TOC entry 3181 (class 0 OID 0)
-- Dependencies: 200
-- Name: trailers_trailer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.trailers_trailer_id_seq', 1, false);


--
-- TOC entry 3182 (class 0 OID 0)
-- Dependencies: 214
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_user_id_seq', 1, false);


--
-- TOC entry 2956 (class 2606 OID 58410)
-- Name: actors actors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.actors
    ADD CONSTRAINT actors_pkey PRIMARY KEY (actor_id);


--
-- TOC entry 2960 (class 2606 OID 58432)
-- Name: awards awards_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.awards
    ADD CONSTRAINT awards_pkey PRIMARY KEY (award_id);


--
-- TOC entry 2962 (class 2606 OID 58443)
-- Name: directors directors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.directors
    ADD CONSTRAINT directors_pkey PRIMARY KEY (director_id);


--
-- TOC entry 2952 (class 2606 OID 58388)
-- Name: formats formats_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.formats
    ADD CONSTRAINT formats_pkey PRIMARY KEY (format_id);


--
-- TOC entry 2958 (class 2606 OID 58421)
-- Name: genres genres_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_pkey PRIMARY KEY (genre_id);


--
-- TOC entry 2986 (class 2606 OID 58580)
-- Name: movie_ratings movie_ratings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie_ratings
    ADD CONSTRAINT movie_ratings_pkey PRIMARY KEY (user_id, movie_id);


--
-- TOC entry 2978 (class 2606 OID 58517)
-- Name: movies_actors movies_actors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies_actors
    ADD CONSTRAINT movies_actors_pkey PRIMARY KEY (actor_id, movie_id);


--
-- TOC entry 2982 (class 2606 OID 58547)
-- Name: movies_awards movies_awards_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies_awards
    ADD CONSTRAINT movies_awards_pkey PRIMARY KEY (award_id, movie_id);


--
-- TOC entry 2984 (class 2606 OID 58562)
-- Name: movies_directors movies_directors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies_directors
    ADD CONSTRAINT movies_directors_pkey PRIMARY KEY (director_id, movie_id);


--
-- TOC entry 2980 (class 2606 OID 58532)
-- Name: movies_genres movies_genres_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies_genres
    ADD CONSTRAINT movies_genres_pkey PRIMARY KEY (genre_id, movie_id);


--
-- TOC entry 2974 (class 2606 OID 58482)
-- Name: movies movies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_pkey PRIMARY KEY (movie_id);


--
-- TOC entry 2976 (class 2606 OID 58502)
-- Name: movies_trailers movies_trailers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies_trailers
    ADD CONSTRAINT movies_trailers_pkey PRIMARY KEY (trailer_id, movie_id);


--
-- TOC entry 2972 (class 2606 OID 58471)
-- Name: mpa_ratings mpa_ratings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mpa_ratings
    ADD CONSTRAINT mpa_ratings_pkey PRIMARY KEY (rating_id);


--
-- TOC entry 2954 (class 2606 OID 58399)
-- Name: resolutions resolutions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resolutions
    ADD CONSTRAINT resolutions_pkey PRIMARY KEY (resolution_id);


--
-- TOC entry 2950 (class 2606 OID 58377)
-- Name: trailers trailers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trailers
    ADD CONSTRAINT trailers_pkey PRIMARY KEY (trailer_id);


--
-- TOC entry 2964 (class 2606 OID 58460)
-- Name: users users_cell_phone_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_cell_phone_key UNIQUE (cell_phone);


--
-- TOC entry 2966 (class 2606 OID 58458)
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- TOC entry 2968 (class 2606 OID 58454)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- TOC entry 2970 (class 2606 OID 58456)
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- TOC entry 2992 (class 2606 OID 58518)
-- Name: movies_actors fk_actor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies_actors
    ADD CONSTRAINT fk_actor FOREIGN KEY (actor_id) REFERENCES public.actors(actor_id);


--
-- TOC entry 2996 (class 2606 OID 58548)
-- Name: movies_awards fk_award; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies_awards
    ADD CONSTRAINT fk_award FOREIGN KEY (award_id) REFERENCES public.awards(award_id);


--
-- TOC entry 2998 (class 2606 OID 58563)
-- Name: movies_directors fk_director; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies_directors
    ADD CONSTRAINT fk_director FOREIGN KEY (director_id) REFERENCES public.directors(director_id);


--
-- TOC entry 2994 (class 2606 OID 58533)
-- Name: movies_genres fk_genre; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies_genres
    ADD CONSTRAINT fk_genre FOREIGN KEY (genre_id) REFERENCES public.genres(genre_id);


--
-- TOC entry 2991 (class 2606 OID 58508)
-- Name: movies_trailers fk_movie; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies_trailers
    ADD CONSTRAINT fk_movie FOREIGN KEY (movie_id) REFERENCES public.movies(movie_id);


--
-- TOC entry 2993 (class 2606 OID 58523)
-- Name: movies_actors fk_movie; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies_actors
    ADD CONSTRAINT fk_movie FOREIGN KEY (movie_id) REFERENCES public.movies(movie_id);


--
-- TOC entry 2995 (class 2606 OID 58538)
-- Name: movies_genres fk_movie; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies_genres
    ADD CONSTRAINT fk_movie FOREIGN KEY (movie_id) REFERENCES public.movies(movie_id);


--
-- TOC entry 2997 (class 2606 OID 58553)
-- Name: movies_awards fk_movie; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies_awards
    ADD CONSTRAINT fk_movie FOREIGN KEY (movie_id) REFERENCES public.movies(movie_id);


--
-- TOC entry 2999 (class 2606 OID 58568)
-- Name: movies_directors fk_movie; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies_directors
    ADD CONSTRAINT fk_movie FOREIGN KEY (movie_id) REFERENCES public.movies(movie_id);


--
-- TOC entry 3001 (class 2606 OID 58586)
-- Name: movie_ratings fk_movie; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie_ratings
    ADD CONSTRAINT fk_movie FOREIGN KEY (movie_id) REFERENCES public.movies(movie_id);


--
-- TOC entry 2987 (class 2606 OID 58483)
-- Name: movies fk_movie_format; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies
    ADD CONSTRAINT fk_movie_format FOREIGN KEY (format_id) REFERENCES public.formats(format_id);


--
-- TOC entry 2989 (class 2606 OID 58493)
-- Name: movies fk_movie_rating; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies
    ADD CONSTRAINT fk_movie_rating FOREIGN KEY (rating_id) REFERENCES public.mpa_ratings(rating_id);


--
-- TOC entry 2988 (class 2606 OID 58488)
-- Name: movies fk_movie_resolution; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies
    ADD CONSTRAINT fk_movie_resolution FOREIGN KEY (resolution_id) REFERENCES public.resolutions(resolution_id);


--
-- TOC entry 2990 (class 2606 OID 58503)
-- Name: movies_trailers fk_trailer; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies_trailers
    ADD CONSTRAINT fk_trailer FOREIGN KEY (trailer_id) REFERENCES public.trailers(trailer_id);


--
-- TOC entry 3000 (class 2606 OID 58581)
-- Name: movie_ratings fk_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie_ratings
    ADD CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES public.users(user_id);


-- Completed on 2021-10-19 21:31:01 UTC

--
-- PostgreSQL database dump complete
--

