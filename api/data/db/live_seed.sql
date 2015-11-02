--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: adminrym6bvg; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO adminrym6bvg;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: adminrym6bvg
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO adminrym6bvg;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminrym6bvg
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: adminrym6bvg; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO adminrym6bvg;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: adminrym6bvg
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO adminrym6bvg;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminrym6bvg
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: adminrym6bvg; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO adminrym6bvg;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: adminrym6bvg
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO adminrym6bvg;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminrym6bvg
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: adminrym6bvg; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO adminrym6bvg;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: adminrym6bvg; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO adminrym6bvg;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: adminrym6bvg
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO adminrym6bvg;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminrym6bvg
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: adminrym6bvg
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO adminrym6bvg;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminrym6bvg
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: adminrym6bvg; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO adminrym6bvg;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: adminrym6bvg
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO adminrym6bvg;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminrym6bvg
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: adminrym6bvg; Tablespace: 
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO adminrym6bvg;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: adminrym6bvg
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO adminrym6bvg;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminrym6bvg
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: adminrym6bvg; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO adminrym6bvg;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: adminrym6bvg
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO adminrym6bvg;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminrym6bvg
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: adminrym6bvg; Tablespace: 
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO adminrym6bvg;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: adminrym6bvg
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO adminrym6bvg;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminrym6bvg
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: adminrym6bvg; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO adminrym6bvg;

--
-- Name: transport_line; Type: TABLE; Schema: public; Owner: adminrym6bvg; Tablespace: 
--

CREATE TABLE transport_line (
    id integer NOT NULL,
    name character varying(140) NOT NULL,
    category integer NOT NULL
);


ALTER TABLE public.transport_line OWNER TO adminrym6bvg;

--
-- Name: transport_line_id_seq; Type: SEQUENCE; Schema: public; Owner: adminrym6bvg
--

CREATE SEQUENCE transport_line_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.transport_line_id_seq OWNER TO adminrym6bvg;

--
-- Name: transport_line_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminrym6bvg
--

ALTER SEQUENCE transport_line_id_seq OWNED BY transport_line.id;


--
-- Name: transport_station; Type: TABLE; Schema: public; Owner: adminrym6bvg; Tablespace: 
--

CREATE TABLE transport_station (
    id integer NOT NULL,
    name character varying(120) NOT NULL,
    latitud character varying(120) NOT NULL,
    longitude character varying(120) NOT NULL,
    "order" integer NOT NULL,
    line_id integer NOT NULL
);


ALTER TABLE public.transport_station OWNER TO adminrym6bvg;

--
-- Name: transport_station_id_seq; Type: SEQUENCE; Schema: public; Owner: adminrym6bvg
--

CREATE SEQUENCE transport_station_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.transport_station_id_seq OWNER TO adminrym6bvg;

--
-- Name: transport_station_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminrym6bvg
--

ALTER SEQUENCE transport_station_id_seq OWNED BY transport_station.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: adminrym6bvg
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: adminrym6bvg
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: adminrym6bvg
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: adminrym6bvg
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: adminrym6bvg
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: adminrym6bvg
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: adminrym6bvg
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: adminrym6bvg
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: adminrym6bvg
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: adminrym6bvg
--

ALTER TABLE ONLY transport_line ALTER COLUMN id SET DEFAULT nextval('transport_line_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: adminrym6bvg
--

ALTER TABLE ONLY transport_station ALTER COLUMN id SET DEFAULT nextval('transport_station_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: adminrym6bvg
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminrym6bvg
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: adminrym6bvg
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminrym6bvg
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: adminrym6bvg
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add line	7	add_line
20	Can change line	7	change_line
21	Can delete line	7	delete_line
22	Can add station	8	add_station
23	Can change station	8	change_station
24	Can delete station	8	delete_station
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminrym6bvg
--

SELECT pg_catalog.setval('auth_permission_id_seq', 24, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: adminrym6bvg
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$20000$IXPLifimkFxB$2cFsjlTA1fTHgipNzJmqp59ZtHqLWRIKLZsPQpY8XaU=	2015-10-31 18:03:19.191276+00	t	admint			info@mintitmedia.com	t	t	2015-10-21 19:00:22.704935+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: adminrym6bvg
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminrym6bvg
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminrym6bvg
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: adminrym6bvg
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminrym6bvg
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: adminrym6bvg
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2015-10-22 15:50:08.604419+00	5	centro-playas	1		7	1
2	2015-10-22 15:50:31.544769+00	5	centro-playas	2	No fields changed.	7	1
3	2015-10-22 16:03:08.724197+00	5	Centro-Playas	2	Changed name.	7	1
4	2015-10-22 16:03:13.632117+00	5	Centro-Playas	2	No fields changed.	7	1
5	2015-10-22 16:03:32.997784+00	5	Centro - Playas	2	Changed name.	7	1
6	2015-10-22 16:08:26.305642+00	6	Centro - Playas	1		7	1
7	2015-10-22 16:20:45.40491+00	5	Centro	1		8	1
8	2015-10-22 16:25:46.836757+00	7	Centro - Altos	1		7	1
9	2015-10-22 16:26:20.993462+00	6	Centro	1		8	1
10	2015-10-22 16:32:48.055101+00	6	Centro - Playas R1	2	Changed name.	7	1
11	2015-10-22 16:32:53.018721+00	5	Centro	2	No fields changed.	8	1
12	2015-10-22 16:33:10.229886+00	8	Centro - Playas R2	1		7	1
13	2015-10-22 16:33:33.628846+00	7	Centro	1		8	1
14	2015-10-22 16:34:56.330303+00	9	Centro - Cruces	1		7	1
15	2015-10-22 16:35:20.314542+00	8	Centro	1		8	1
16	2015-10-22 16:35:43.338269+00	8	Centro	2	No fields changed.	8	1
17	2015-10-22 16:37:04.815328+00	10	Vallesteros	1		7	1
18	2015-10-22 16:37:25.849774+00	9	Centro	1		8	1
19	2015-10-22 16:38:06.889234+00	9	Centro	2	Changed longitude.	8	1
20	2015-10-22 16:38:25.965354+00	10	Centro - Vallesteros	2	Changed name.	7	1
21	2015-10-22 16:38:28.147907+00	9	Centro	2	No fields changed.	8	1
22	2015-10-22 16:39:40.917602+00	11	Centro - Jhonson	1		7	1
23	2015-10-22 16:40:30.258478+00	10	Centro	1		8	1
24	2015-10-22 16:42:08.999993+00	12	Centro - Ejido	1		7	1
25	2015-10-22 16:42:27.161674+00	11	Centro	1		8	1
26	2015-10-22 16:43:05.88194+00	13	Centro - Pana	1		7	1
27	2015-10-22 16:43:26.044557+00	12	Centro	1		8	1
28	2015-10-22 16:43:44.963858+00	12	Centro - Ejido	2	Changed category.	7	1
29	2015-10-22 16:43:47.067969+00	11	Centro	2	No fields changed.	8	1
30	2015-10-22 16:44:05.313392+00	11	Centro - Jhonson	2	Changed category.	7	1
31	2015-10-22 16:44:09.497744+00	10	Centro	2	No fields changed.	8	1
32	2015-10-22 16:44:20.569947+00	12	Centro - Ejido	2	No fields changed.	7	1
33	2015-10-22 16:44:21.749288+00	11	Centro	2	No fields changed.	8	1
34	2015-10-22 16:44:35.246561+00	10	Centro - Vallesteros	2	No fields changed.	7	1
35	2015-10-22 16:44:39.781928+00	9	Centro	2	No fields changed.	8	1
36	2015-10-22 16:44:53.26556+00	8	Centro	2	No fields changed.	8	1
37	2015-10-22 16:45:33.540374+00	14	Centro - Sanchez Diaz	1		7	1
38	2015-10-22 16:46:01.413751+00	13	Centro	1		8	1
39	2015-10-22 16:46:21.982956+00	14	Centro - Sanchez Diaz	2	No fields changed.	7	1
40	2015-10-22 16:46:23.190911+00	13	Centro	2	No fields changed.	8	1
41	2015-10-22 16:49:46.452806+00	15	Centro - Obrera 3ra Seccion	1		7	1
42	2015-10-22 16:50:02.337875+00	14	Centro	1		8	1
43	2015-10-22 16:51:21.189031+00	16	Cañon Pato	1		7	1
44	2015-10-22 16:51:33.244123+00	16	Centro - Cañon Pato	2	Changed name.	7	1
45	2015-10-22 16:51:53.452237+00	15	Centro	1		8	1
46	2015-10-22 16:53:09.203091+00	17	Centro - Jardin	1		7	1
47	2015-10-22 16:53:40.652681+00	16	Centro	1		8	1
48	2015-10-22 16:55:42.11044+00	18	Centro - Herrera	1		7	1
49	2015-10-22 16:56:05.225557+00	17	Centro	1		8	1
50	2015-10-22 17:00:36.815962+00	19	Centro - Delicias	1		7	1
51	2015-10-22 17:00:56.019637+00	18	Centro	1		8	1
52	2015-10-22 17:08:50.590945+00	20	Centro - Blvd 2000	1		7	1
53	2015-10-22 17:09:24.521812+00	19	Centro	1		8	1
54	2015-10-22 17:19:13.058796+00	21	Centro - Libertad	1		7	1
55	2015-10-22 17:19:47.350166+00	20	Centro	1		8	1
56	2015-10-22 17:20:14.538716+00	22	Centro - 70/76	1		7	1
57	2015-10-22 17:20:32.686141+00	21	Centro	1		8	1
58	2015-10-22 17:21:03.230689+00	23	Centro - Aeropuerto	1		7	1
59	2015-10-22 17:21:26.596407+00	22	Centro	1		8	1
60	2015-10-22 17:21:56.165818+00	24	Centro - Villa Fontana	1		7	1
61	2015-10-22 17:22:18.60176+00	23	Centro	1		8	1
62	2015-10-22 17:23:10.750692+00	25	Centro - Mira Flores	1		7	1
63	2015-10-22 17:23:46.698123+00	24	Centro	1		8	1
64	2015-10-22 17:26:49.207494+00	26	Centro - Cuartel Soldados	1		7	1
65	2015-10-22 17:27:21.013599+00	25	Centro	1		8	1
66	2015-10-22 17:34:17.723252+00	27	Centro - Tecate	1		7	1
67	2015-10-22 17:34:34.535216+00	26	Centro	1		8	1
68	2015-10-22 17:35:29.144231+00	28	Centro - Refugio	1		7	1
69	2015-10-22 17:35:44.056848+00	27	Centro	1		8	1
70	2015-10-22 17:36:02.942034+00	29	Centro - Hongo	1		7	1
71	2015-10-22 17:36:26.765629+00	28	Centro	1		8	1
72	2015-10-22 17:36:55.228303+00	30	Centro - Villa del sol	1		7	1
73	2015-10-22 17:37:18.483735+00	29	Centro	1		8	1
74	2015-10-22 17:39:28.397345+00	31	Centro - Natura	1		7	1
75	2015-10-22 17:39:47.42485+00	30	Centro	1		8	1
76	2015-10-22 17:40:20.33742+00	32	Centro - Refugio	1		7	1
77	2015-10-22 17:40:40.828955+00	31	Centro	1		8	1
78	2015-10-22 17:41:18.121843+00	33	Centro - Libertad parte alta	1		7	1
79	2015-10-22 17:41:40.803323+00	32	Centro	1		8	1
80	2015-10-22 17:42:09.522276+00	34	Centro - Otay modulos	1		7	1
81	2015-10-22 17:42:37.021243+00	33	Centro	1		8	1
82	2015-10-22 17:42:57.27618+00	35	Centro - Rio vista	1		7	1
83	2015-10-22 17:43:20.296507+00	34	Centro	1		8	1
84	2015-10-22 17:45:31.440074+00	36	Centro - Rinconada	1		7	1
85	2015-10-22 17:45:53.148656+00	35	Centro	1		8	1
86	2015-10-22 17:46:20.189317+00	37	Centro - Postal Anexa	1		7	1
87	2015-10-22 17:46:34.908265+00	36	Centro	1		8	1
88	2015-10-22 17:48:36.937764+00	38	Centro - Lomas parte baja	1		7	1
89	2015-10-22 17:48:57.44301+00	37	Centro	1		8	1
90	2015-10-22 17:49:39.412953+00	39	Centro - 5 y 10	1		7	1
91	2015-10-22 17:50:02.421419+00	38	Centro	1		8	1
92	2015-10-22 17:51:00.777588+00	40	Centro - Otay modulos	1		7	1
93	2015-10-22 17:51:17.611948+00	39	Centro	1		8	1
94	2015-10-22 17:51:43.455326+00	41	Centro - Otay Fabricas	1		7	1
95	2015-10-22 17:52:08.495758+00	40	Centro	1		8	1
96	2015-10-22 17:52:32.859255+00	42	Centro - Roberto de la Madrid	1		7	1
97	2015-10-22 17:52:50.524662+00	41	Centro	1		8	1
98	2015-10-22 17:53:11.969074+00	43	Centro - Pedregal	1		7	1
99	2015-10-22 17:53:32.843364+00	42	Centro	1		8	1
100	2015-10-22 17:54:27.282699+00	44	Centro - Rincon Dorado	1		7	1
101	2015-10-22 17:54:46.991908+00	43	Centro	1		8	1
102	2015-10-22 17:55:18.302914+00	45	Centro - Riveras del bosque	1		7	1
103	2015-10-22 17:55:41.199991+00	44	Centro	1		8	1
104	2015-10-22 17:56:25.588283+00	46	Centro - 10 de Mayo	1		7	1
105	2015-10-22 17:56:43.635872+00	45	Centro	1		8	1
106	2015-10-22 17:57:09.609879+00	47	Centro - Insurgentes	1		7	1
107	2015-10-22 17:57:24.57394+00	46	Centro	1		8	1
108	2015-10-22 18:02:09.032423+00	48	Centro - Granjas	1		7	1
109	2015-10-22 18:02:31.70706+00	47	Centro	1		8	1
110	2015-10-22 18:02:56.769138+00	49	Centro - Margaritas	1		7	1
111	2015-10-22 18:03:12.396259+00	48	Centro	1		8	1
112	2015-10-22 18:03:46.866944+00	50	Centro - Sta Julia	1		7	1
113	2015-10-22 18:04:05.900607+00	49	Centro	1		8	1
114	2015-10-22 18:04:24.434172+00	51	Centro - Mirador	1		7	1
115	2015-10-22 18:04:49.808583+00	50	Centro	1		8	1
116	2015-10-22 18:05:24.015523+00	52	Centro - Miramar	1		7	1
117	2015-10-22 18:05:46.81341+00	51	Centro	1		8	1
118	2015-10-22 18:05:55.149402+00	51	Centro - Mirador	2	No fields changed.	7	1
119	2015-10-22 18:05:56.402832+00	50	Centro	2	No fields changed.	8	1
120	2015-10-22 18:06:32.543816+00	53	Centro - Cumbres	1		7	1
121	2015-10-22 18:06:55.48147+00	52	Centro	1		8	1
122	2015-10-22 18:13:43.328928+00	54	Centro - Villa	1		7	1
123	2015-10-22 18:14:03.515439+00	53	Centro	1		8	1
124	2015-10-22 18:14:52.580089+00	55	Centro - Panamericano	1		7	1
125	2015-10-22 18:15:23.017803+00	54	Centro	1		8	1
126	2015-10-22 18:17:04.855315+00	56	Centro - Castillo	1		7	1
127	2015-10-22 18:17:28.892435+00	55	Centro	1		8	1
128	2015-10-22 18:18:35.858919+00	57	Centro - Cista Encantada	1		7	1
129	2015-10-22 18:18:53.910126+00	57	Centro - Vista Encantada	2	Changed name.	7	1
130	2015-10-22 18:19:45.286752+00	56	Centro	1		8	1
131	2015-10-22 18:20:15.037203+00	58	Centro - Cardenas	1		7	1
132	2015-10-22 18:20:43.774427+00	58	Centro - Cardenas	2	Changed category.	7	1
133	2015-10-22 18:20:52.412588+00	57	Centro	1		8	1
134	2015-10-22 18:21:31.708136+00	59	Centro - Cañada	1		7	1
135	2015-10-22 18:23:36.17842+00	60	Centro - Cañada	1		7	1
136	2015-10-22 18:24:12.42116+00	58	Centro	1		8	1
137	2015-10-22 18:26:08.40125+00	61	Centro - Zapata Reforma	1		7	1
138	2015-10-22 18:26:53.328709+00	59	Camion	1		8	1
139	2015-10-22 18:27:35.173441+00	62	Centro - Libertad	1		7	1
140	2015-10-22 18:27:55.291501+00	60	Centro	1		8	1
141	2015-10-22 18:28:16.285941+00	63	Centro - Chilpansingo	1		7	1
142	2015-10-22 18:28:30.411672+00	61	Centro	1		8	1
143	2015-10-22 18:29:10.195975+00	64	Centro - Infonavit Soler	1		7	1
144	2015-10-22 18:29:35.716508+00	62	Centro	1		8	1
145	2015-10-22 18:29:57.871806+00	65	Centro - La presa	1		7	1
146	2015-10-22 18:30:17.880748+00	63	Centro	1		8	1
147	2015-10-22 18:30:46.458838+00	66	Centro - Pinos	1		7	1
148	2015-10-22 18:31:05.792253+00	64	Centro	1		8	1
149	2015-10-22 18:33:13.575477+00	67	Centro - Merida	1		7	1
150	2015-10-22 18:33:41.194062+00	65	Centro	1		8	1
151	2015-10-22 18:34:05.393023+00	68	Centro - Colinas	1		7	1
152	2015-10-22 18:34:22.805293+00	66	Centro	1		8	1
153	2015-10-22 18:34:40.016078+00	69	Centro - Azteca	1		7	1
154	2015-10-22 18:34:52.797477+00	67	Centro	1		8	1
155	2015-10-22 18:35:03.708087+00	70	Centro - Cumbres	1		7	1
156	2015-10-22 18:35:16.184692+00	68	Centro	1		8	1
157	2015-10-22 18:35:38.101321+00	71	Centro - Presidentes	1		7	1
158	2015-10-22 18:36:00.189695+00	69	Centro	1		8	1
159	2015-10-22 18:36:19.251909+00	72	Capistrano	1		7	1
160	2015-10-22 18:38:08.937676+00	70	Centro	1		8	1
161	2015-10-22 18:38:23.278227+00	72	Centro - Capistrano	2	Changed name.	7	1
162	2015-10-22 18:38:27.131446+00	70	Centro	2	No fields changed.	8	1
163	2015-10-22 18:38:38.056466+00	73	Centro - Guaycura	1		7	1
164	2015-10-22 18:38:59.216631+00	71	Centro	1		8	1
165	2015-10-22 18:39:25.793798+00	74	Centro - Rosarito	1		7	1
166	2015-10-22 18:39:48.191696+00	72	Centro	1		8	1
167	2015-10-22 18:40:54.269491+00	75	Centro - Valle de Palmas	1		7	1
168	2015-10-22 18:41:21.539082+00	73	Centro	1		8	1
169	2015-10-22 18:41:51.905932+00	76	Centro - Playas R1	1		7	1
170	2015-10-22 18:42:08.173885+00	74	Centro	1		8	1
171	2015-10-22 18:42:25.424949+00	77	Centro - Playas R2	1		7	1
172	2015-10-22 18:42:39.517225+00	75	Centro	1		8	1
173	2015-10-22 18:43:16.337037+00	78	Centro - Otay	1		7	1
174	2015-10-22 18:43:39.806466+00	76	Centro	1		8	1
175	2015-10-22 18:43:56.682695+00	79	Centro - 70/76	1		7	1
176	2015-10-22 18:44:29.427993+00	77	Centro	1		8	1
177	2015-10-22 18:44:53.945856+00	80	Centro - Clinica 27	1		7	1
178	2015-10-22 18:45:24.269438+00	78	Centro	1		8	1
179	2015-10-22 18:45:45.166974+00	81	Centro - Lomas Verdes	1		7	1
180	2015-10-22 18:46:02.552329+00	79	Centro	1		8	1
181	2015-10-22 18:46:43.811287+00	82	Centro - Libertad parte alta	1		7	1
182	2015-10-22 18:47:08.721258+00	80	Centro	1		8	1
183	2015-10-22 18:47:31.645192+00	83	Centro - Libertad parte baja	1		7	1
184	2015-10-22 18:47:58.590924+00	81	Centro	1		8	1
185	2015-10-22 18:48:23.519609+00	84	Centro - Reforma	1		7	1
186	2015-10-22 18:48:37.58187+00	82	Centro	1		8	1
187	2015-10-22 18:49:04.78676+00	85	Centro - Presidentes	1		7	1
188	2015-10-22 18:49:20.043575+00	83	Centro	1		8	1
189	2015-10-22 18:49:37.037836+00	86	Centro - Villa Fontana	1		7	1
190	2015-10-22 18:50:04.497983+00	84	Centro	1		8	1
191	2015-10-22 18:50:32.202784+00	87	Centro - Murua	1		7	1
192	2015-10-22 18:50:59.400918+00	85	Centro	1		8	1
193	2015-10-22 18:51:15.522613+00	87	Centro - Murua	2	No fields changed.	7	1
194	2015-10-22 18:51:17.093425+00	85	Centro	2	No fields changed.	8	1
195	2015-10-22 18:52:51.591245+00	88	Centro - Herrera	1		7	1
196	2015-10-22 18:53:20.393746+00	86	Centro	1		8	1
197	2015-10-22 18:53:42.902843+00	89	Centro  - Cruces	1		7	1
198	2015-10-22 18:54:20.260746+00	87	Centro	1		8	1
199	2015-10-22 18:54:39.374367+00	90	Centro - Anabel	1		7	1
200	2015-10-22 18:55:12.41973+00	88	Centro	1		8	1
201	2015-10-22 18:55:34.396841+00	91	Centro - Niños Heroes	1		7	1
202	2015-10-22 18:56:16.781062+00	89	Centro	1		8	1
203	2015-10-22 18:56:57.599808+00	92	Centro - La Reforma	1		7	1
204	2015-10-22 18:57:23.353875+00	90	Centro	1		8	1
205	2015-10-22 18:57:54.4489+00	90	Centro	2	Changed latitud and longitude.	8	1
206	2015-10-22 19:00:13.289744+00	93	Centro - Casas Geo	1		7	1
207	2015-10-22 19:00:55.521365+00	91	Centro	1		8	1
208	2015-10-22 19:01:19.701902+00	94	Centro - Libertad parte alta	1		7	1
209	2015-10-22 19:01:49.079694+00	92	Centro	1		8	1
210	2015-10-22 19:02:19.841772+00	95	Centro - Colonia Guadalajara	1		7	1
211	2015-10-22 19:02:43.128634+00	93	Centro	1		8	1
212	2015-10-22 19:02:59.410055+00	96	Centro - Tepic	1		7	1
213	2015-10-22 19:03:13.078643+00	94	Centro	1		8	1
214	2015-10-22 19:03:38.722835+00	97	Centro - Sonora	1		7	1
215	2015-10-22 19:04:02.61377+00	95	Centro	1		8	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminrym6bvg
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 215, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: adminrym6bvg
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	transport	line
8	transport	station
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminrym6bvg
--

SELECT pg_catalog.setval('django_content_type_id_seq', 8, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: adminrym6bvg
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2015-10-21 18:59:33.984273+00
2	auth	0001_initial	2015-10-21 18:59:34.122559+00
3	admin	0001_initial	2015-10-21 18:59:34.207604+00
4	contenttypes	0002_remove_content_type_name	2015-10-21 18:59:34.264323+00
5	auth	0002_alter_permission_name_max_length	2015-10-21 18:59:34.283374+00
6	auth	0003_alter_user_email_max_length	2015-10-21 18:59:34.30213+00
7	auth	0004_alter_user_username_opts	2015-10-21 18:59:34.318811+00
8	auth	0005_alter_user_last_login_null	2015-10-21 18:59:34.345078+00
9	auth	0006_require_contenttypes_0002	2015-10-21 18:59:34.348+00
10	sessions	0001_initial	2015-10-21 18:59:34.374007+00
11	transport	0001_initial	2015-10-21 18:59:34.406609+00
12	transport	0002_line_category	2015-10-21 18:59:34.423326+00
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminrym6bvg
--

SELECT pg_catalog.setval('django_migrations_id_seq', 12, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: adminrym6bvg
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
zfm2n048v4oyutw4g79llzi7lu3w6iqt	YTI0MjcwNzhjNjkwN2ViZGRkNjBkNjgwODE0ZmQ1NmJkYmYyZTNiMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjdmMjhhNjJlOTVlMjBiNTNlMDY5NjUxZTZlNGZhOGFiOWVmOTRhZjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2015-11-04 19:09:19.120088+00
pophoms6zkce0p42y4aignk4vdnni39a	YTI0MjcwNzhjNjkwN2ViZGRkNjBkNjgwODE0ZmQ1NmJkYmYyZTNiMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjdmMjhhNjJlOTVlMjBiNTNlMDY5NjUxZTZlNGZhOGFiOWVmOTRhZjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2015-11-05 15:34:15.007838+00
ks8oetyh6azx8h2pk5kmr1znb6835iu0	YTI0MjcwNzhjNjkwN2ViZGRkNjBkNjgwODE0ZmQ1NmJkYmYyZTNiMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjdmMjhhNjJlOTVlMjBiNTNlMDY5NjUxZTZlNGZhOGFiOWVmOTRhZjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2015-11-05 15:52:29.495522+00
ybn8rw64uz3dpxhsvolvjr9rkrcd0bhr	YTI0MjcwNzhjNjkwN2ViZGRkNjBkNjgwODE0ZmQ1NmJkYmYyZTNiMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjdmMjhhNjJlOTVlMjBiNTNlMDY5NjUxZTZlNGZhOGFiOWVmOTRhZjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2015-11-14 18:03:19.198457+00
\.


--
-- Data for Name: transport_line; Type: TABLE DATA; Schema: public; Owner: adminrym6bvg
--

COPY transport_line (id, name, category) FROM stdin;
1	Centro - Laureles	1
2	Centro - Xico	1
3	Centro - Flores	1
4	Centro - Cumbres	1
5	Centro - Playas	1
7	Centro - Altos	1
6	Centro - Playas R1	1
8	Centro - Playas R2	1
9	Centro - Cruces	3
13	Centro - Pana	3
11	Centro - Jhonson	3
12	Centro - Ejido	3
10	Centro - Vallesteros	3
14	Centro - Sanchez Diaz	3
15	Centro - Obrera 3ra Seccion	1
16	Centro - Cañon Pato	1
17	Centro - Jardin	1
18	Centro - Herrera	1
19	Centro - Delicias	2
20	Centro - Blvd 2000	2
21	Centro - Libertad	2
22	Centro - 70/76	2
23	Centro - Aeropuerto	2
24	Centro - Villa Fontana	2
25	Centro - Mira Flores	1
26	Centro - Cuartel Soldados	1
27	Centro - Tecate	2
28	Centro - Refugio	2
29	Centro - Hongo	2
30	Centro - Villa del sol	1
31	Centro - Natura	1
32	Centro - Refugio	1
33	Centro - Libertad parte alta	1
34	Centro - Otay modulos	1
35	Centro - Rio vista	1
36	Centro - Rinconada	1
37	Centro - Postal Anexa	1
38	Centro - Lomas parte baja	1
39	Centro - 5 y 10	1
40	Centro - Otay modulos	1
41	Centro - Otay Fabricas	1
42	Centro - Roberto de la Madrid	1
43	Centro - Pedregal	1
44	Centro - Rincon Dorado	1
45	Centro - Riveras del bosque	1
46	Centro - 10 de Mayo	1
47	Centro - Insurgentes	1
48	Centro - Granjas	1
49	Centro - Margaritas	1
50	Centro - Sta Julia	2
52	Centro - Miramar	2
51	Centro - Mirador	2
53	Centro - Cumbres	2
54	Centro - Villa	1
55	Centro - Panamericano	1
56	Centro - Castillo	1
57	Centro - Vista Encantada	2
58	Centro - Cardenas	2
59	Centro - Cañada	2
60	Centro - Cañada	2
61	Centro - Zapata Reforma	1
62	Centro - Libertad	1
63	Centro - Chilpansingo	1
64	Centro - Infonavit Soler	1
65	Centro - La presa	1
66	Centro - Pinos	1
67	Centro - Merida	1
68	Centro - Colinas	1
69	Centro - Azteca	1
70	Centro - Cumbres	1
71	Centro - Presidentes	1
72	Centro - Capistrano	1
73	Centro - Guaycura	1
74	Centro - Rosarito	1
75	Centro - Valle de Palmas	2
76	Centro - Playas R1	2
77	Centro - Playas R2	2
78	Centro - Otay	1
79	Centro - 70/76	1
80	Centro - Clinica 27	1
81	Centro - Lomas Verdes	1
82	Centro - Libertad parte alta	1
83	Centro - Libertad parte baja	1
84	Centro - Reforma	1
85	Centro - Presidentes	2
86	Centro - Villa Fontana	2
87	Centro - Murua	2
88	Centro - Herrera	1
89	Centro  - Cruces	1
90	Centro - Anabel	1
91	Centro - Niños Heroes	1
92	Centro - La Reforma	1
93	Centro - Casas Geo	2
94	Centro - Libertad parte alta	1
95	Centro - Colonia Guadalajara	1
96	Centro - Tepic	2
97	Centro - Sonora	2
\.


--
-- Name: transport_line_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminrym6bvg
--

SELECT pg_catalog.setval('transport_line_id_seq', 97, true);


--
-- Data for Name: transport_station; Type: TABLE DATA; Schema: public; Owner: adminrym6bvg
--

COPY transport_station (id, name, latitud, longitude, "order", line_id) FROM stdin;
1	Centro	32.534967	-117.041819	0	1
2	Centro	32.534967	-117.041819	0	2
3	Centro	32.535141	-117.041811	0	3
4	Centro	32.535141	-117.041811	0	4
6	Centro	32.535079	-117.040326	0	7
5	Centro	32.533743	-117.04117	0	6
7	Centro	32.533743	-117.04117	0	8
87	Centro	32.531816	-117.037867	0	89
88	Centro	32.532364	-117.033167	0	90
89	Centro	32.532466	-117.032399	0	91
12	Centro	32.535447	-117.041809	0	13
10	Centro	32.535447	-117.041809	0	11
11	Centro	32.535447	-117.041809	0	12
9	Centro	32.535447	-117.041809	0	10
8	Centro	32.535447	-117.041809	0	9
13	Centro	32.535447	-117.041809	0	14
14	Centro	32.534771	-117.041732	0	15
15	Centro	32.534771	-117.041732	0	16
16	Centro	32.535138	-117.041139	0	17
17	Centro	32.535138	-117.041139	0	18
18	Centro	32.535209	-117.039653	0	19
19	Centro	32.535209	-117.039653	0	20
20	Centro	32.535428	-117.037936	0	21
21	Centro	32.535428	-117.037936	0	22
22	Centro	32.535428	-117.037936	0	23
23	Centro	32.535428	-117.037936	0	24
24	Centro	32.535424	-117.037313	0	25
25	Centro	32.535424	-117.037313	0	26
26	Centro	32.535461	-117.03556	0	27
27	Centro	32.535461	-117.03556	0	28
28	Centro	32.535461	-117.03556	0	29
29	Centro	32.535226	-117.033672	0	30
30	Centro	32.535226	-117.033672	0	31
31	Centro	32.535226	-117.033672	0	32
32	Centro	32.53368	-117.038279	0	33
33	Centro	32.534066	-117.03802	0	34
34	Centro	32.534672	-117.039411	0	35
35	Centro	32.534672	-117.039411	0	36
36	Centro	32.534672	-117.039411	0	37
37	Centro	32.534672	-117.039411	0	38
38	Centro	32.534672	-117.039411	0	39
39	Centro	32.534672	-117.039411	0	40
40	Centro	32.534672	-117.039411	0	41
41	Centro	32.534672	-117.039411	0	42
42	Centro	32.534672	-117.039411	0	43
43	Centro	32.534672	-117.039411	0	44
44	Centro	32.534672	-117.039411	0	45
45	Centro	32.534672	-117.039411	0	46
46	Centro	32.534672	-117.039411	0	47
47	Centro	32.534672	-117.039411	0	48
48	Centro	32.534672	-117.039411	0	49
49	Centro	32.533907	-117.039269	0	50
51	Centro	32.533907	-117.039269	0	52
50	Centro	32.533907	-117.039269	0	51
52	Centro	32.533756	-117.040373	0	53
53	Centro	32.533718	-117.040794	0	54
54	Centro	32.533718	-117.040794	0	55
55	Centro	32.533982	-117.041599	0	56
56	Centro	32.534079	-117.041716	0	57
57	Centro	32.534079	-117.041716	0	58
58	Centro	32.531978	-117.043007	0	60
59	Camion	32.531978	-117.043007	0	61
60	Centro	32.532428	-117.041686	0	62
61	Centro	32.532454	-117.040321	0	63
62	Centro	32.532573	-117.03929	0	64
63	Centro	32.532582	-117.038593	0	65
64	Centro	32.532582	-117.038593	0	66
65	Centro	32.53281	-117.037932	0	67
66	Centro	32.532794	-117.03487	0	68
67	Centro	32.533515	-117.035216	0	69
68	Centro	32.533515	-117.035216	0	70
69	Centro	32.533515	-117.035216	0	71
70	Centro	32.533515	-117.035216	0	72
71	Centro	32.533515	-117.035216	0	73
72	Centro	32.533569	-117.03512	0	74
73	Centro	32.532896	-117.03512	0	75
74	Centro	32.533729	-117.040541	0	76
75	Centro	32.533729	-117.040541	0	77
76	Centro	32.531536	-117.039572	0	78
77	Centro	32.531536	-117.039572	0	79
78	Centro	32.532126	-117.038098	0	80
79	Centro	32.532126	-117.038098	0	81
80	Centro	32.532452	-117.038111	0	82
81	Centro	32.532452	-117.038111	0	83
82	Centro	32.531304	-117.038037	0	84
83	Centro	32.531301	-117.038042	0	85
84	Centro	32.531301	-117.038042	0	86
85	Centro	32.531301	-117.038042	0	87
86	Centro	32.531816	-117.037867	0	88
90	Centro	32.531222	-117.038352	0	92
91	Centro	32.529733	-117.038177	0	93
92	Centro	32.530413	-117.038201	0	94
93	Centro	32.530413	-117.038201	0	95
94	Centro	32.528964	-117.029874	0	96
95	Centro	32.528964	-117.029874	0	97
\.


--
-- Name: transport_station_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminrym6bvg
--

SELECT pg_catalog.setval('transport_station_id_seq', 95, true);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: adminrym6bvg; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: adminrym6bvg; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: adminrym6bvg; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: adminrym6bvg; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: adminrym6bvg; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: adminrym6bvg; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: adminrym6bvg; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: adminrym6bvg; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: adminrym6bvg; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: adminrym6bvg; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: adminrym6bvg; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: adminrym6bvg; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: adminrym6bvg; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_45f3b1d93ec8c61c_uniq; Type: CONSTRAINT; Schema: public; Owner: adminrym6bvg; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_45f3b1d93ec8c61c_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: adminrym6bvg; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: adminrym6bvg; Tablespace: 
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: adminrym6bvg; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: transport_line_pkey; Type: CONSTRAINT; Schema: public; Owner: adminrym6bvg; Tablespace: 
--

ALTER TABLE ONLY transport_line
    ADD CONSTRAINT transport_line_pkey PRIMARY KEY (id);


--
-- Name: transport_station_pkey; Type: CONSTRAINT; Schema: public; Owner: adminrym6bvg; Tablespace: 
--

ALTER TABLE ONLY transport_station
    ADD CONSTRAINT transport_station_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_253ae2a6331666e8_like; Type: INDEX; Schema: public; Owner: adminrym6bvg; Tablespace: 
--

CREATE INDEX auth_group_name_253ae2a6331666e8_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: adminrym6bvg; Tablespace: 
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: adminrym6bvg; Tablespace: 
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: adminrym6bvg; Tablespace: 
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: adminrym6bvg; Tablespace: 
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: adminrym6bvg; Tablespace: 
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: adminrym6bvg; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: adminrym6bvg; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_51b3b110094b8aae_like; Type: INDEX; Schema: public; Owner: adminrym6bvg; Tablespace: 
--

CREATE INDEX auth_user_username_51b3b110094b8aae_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: adminrym6bvg; Tablespace: 
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: adminrym6bvg; Tablespace: 
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: adminrym6bvg; Tablespace: 
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_461cfeaa630ca218_like; Type: INDEX; Schema: public; Owner: adminrym6bvg; Tablespace: 
--

CREATE INDEX django_session_session_key_461cfeaa630ca218_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: transport_station_b3ae486a; Type: INDEX; Schema: public; Owner: adminrym6bvg; Tablespace: 
--

CREATE INDEX transport_station_b3ae486a ON transport_station USING btree (line_id);


--
-- Name: auth_content_type_id_508cf46651277a81_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: adminrym6bvg
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_content_type_id_508cf46651277a81_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: adminrym6bvg
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: adminrym6bvg
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: adminrym6bvg
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: adminrym6bvg
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: adminrym6bvg
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: adminrym6bvg
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djan_content_type_id_697914295151027a_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: adminrym6bvg
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT djan_content_type_id_697914295151027a_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: adminrym6bvg
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: transport_station_line_id_ded032436580917_fk_transport_line_id; Type: FK CONSTRAINT; Schema: public; Owner: adminrym6bvg
--

ALTER TABLE ONLY transport_station
    ADD CONSTRAINT transport_station_line_id_ded032436580917_fk_transport_line_id FOREIGN KEY (line_id) REFERENCES transport_line(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

