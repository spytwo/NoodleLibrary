--
-- PostgreSQL database dump
--

\restrict YImcm0asJSJcxkeYhVE1ikri5pQGV3DmJyFynqDgIdOCPJOlEjkrXvLg9tbt7Xt

-- Dumped from database version 18.2 (Debian 18.2-1.pgdg13+1)
-- Dumped by pg_dump version 18.2 (Debian 18.2-1.pgdg13+1)

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
-- Name: alembic_version; Type: TABLE; Schema: public; Owner: valerii
--

CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);


ALTER TABLE public.alembic_version OWNER TO valerii;

--
-- Name: countries; Type: TABLE; Schema: public; Owner: valerii
--

CREATE TABLE public.countries (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.countries OWNER TO valerii;

--
-- Name: countries_id_seq; Type: SEQUENCE; Schema: public; Owner: valerii
--

CREATE SEQUENCE public.countries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.countries_id_seq OWNER TO valerii;

--
-- Name: countries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: valerii
--

ALTER SEQUENCE public.countries_id_seq OWNED BY public.countries.id;


--
-- Name: manufactures; Type: TABLE; Schema: public; Owner: valerii
--

CREATE TABLE public.manufactures (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.manufactures OWNER TO valerii;

--
-- Name: manufactures_id_seq; Type: SEQUENCE; Schema: public; Owner: valerii
--

CREATE SEQUENCE public.manufactures_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.manufactures_id_seq OWNER TO valerii;

--
-- Name: manufactures_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: valerii
--

ALTER SEQUENCE public.manufactures_id_seq OWNED BY public.manufactures.id;


--
-- Name: noodles; Type: TABLE; Schema: public; Owner: valerii
--

CREATE TABLE public.noodles (
    id integer NOT NULL,
    title character varying NOT NULL,
    description character varying,
    recommendation boolean NOT NULL,
    country_id integer NOT NULL,
    manufacture_id integer NOT NULL,
    image character varying NOT NULL,
    prep_type character varying(6) DEFAULT 'PACKET'::character varying NOT NULL,
    dish_base character varying(6) DEFAULT 'NOODLE'::character varying NOT NULL
);


ALTER TABLE public.noodles OWNER TO valerii;

--
-- Name: noodles_id_seq; Type: SEQUENCE; Schema: public; Owner: valerii
--

CREATE SEQUENCE public.noodles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.noodles_id_seq OWNER TO valerii;

--
-- Name: noodles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: valerii
--

ALTER SEQUENCE public.noodles_id_seq OWNED BY public.noodles.id;


--
-- Name: countries id; Type: DEFAULT; Schema: public; Owner: valerii
--

ALTER TABLE ONLY public.countries ALTER COLUMN id SET DEFAULT nextval('public.countries_id_seq'::regclass);


--
-- Name: manufactures id; Type: DEFAULT; Schema: public; Owner: valerii
--

ALTER TABLE ONLY public.manufactures ALTER COLUMN id SET DEFAULT nextval('public.manufactures_id_seq'::regclass);


--
-- Name: noodles id; Type: DEFAULT; Schema: public; Owner: valerii
--

ALTER TABLE ONLY public.noodles ALTER COLUMN id SET DEFAULT nextval('public.noodles_id_seq'::regclass);


--
-- Data for Name: alembic_version; Type: TABLE DATA; Schema: public; Owner: valerii
--

COPY public.alembic_version (version_num) FROM stdin;
f40111cb1d20
\.


--
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: valerii
--

COPY public.countries (id, name) FROM stdin;
1	Корея
2	Вьетнам
3	Тайланд
4	Китай
5	Япония
6	Сингапур
7	Казахстан
9	Малайзия
10	Великобритания
11	Россия
12	Кыргызстан
13	Турция
15	США
16	Индонезия
17	Польша
18	Литва
19	Италия
21	Узбекистан
\.


--
-- Data for Name: manufactures; Type: TABLE DATA; Schema: public; Owner: valerii
--

COPY public.manufactures (id, name) FROM stdin;
1	Nongshim
2	Samyang
3	Vifon
4	A-One
5	Ottogi
6	iMee
7	Mama
8	Baixiang
9	Paldo
10	Miliket
11	Cung Dinh
12	GauDo
13	Picnic
14	Ha Noi
15	Nissin
16	Koka
17	Master Kong
18	Ramen Yakuza
19	Haidilao
21	CarJEN
23	Pot Noodle
24	Doshirak
25	Роллтон
26	Siem Sam
27	Omachi
28	Yang Zhanggui
29	Hezhai⁠⁠
30	YOUPINWAY
31	BigBon
32	KingThai
33	Optima
34	Shangqiu
35	Sinomie
37	Reena
38	Reeva
39	Jinmailang
40	Алькони
41	Dudomi
42	Banetti
43	SuperMi
44	Hang Nga
46	QiaoDouMa
47	Berona
48	Oppa
49	Jaya
50	Cityeshka
51	Daebak
53	ZikZik
54	Thien Huong
56	Hanil Food Co
57	SMT
58	SANBONSAI
59	Anhui Yile
60	Henan Jia Food
61	Анаком
62	Okwok
63	KingPho
65	Sue Sat
66	Acecook
67	Sunaoshi
68	Master Kan
69	Ningbo
70	Luo Ba Wang
71	Migawon
72	Tangdaren
73	Tongbaifu
75	Tong Wan Fu
76	Dou Xiao Yu
77	Henan
74	Wang Zi Feng Fan Leiqia
78	JM
79	Xiang Yue Yu
81	Master Wok
82	Yummy! Yummy!
83	Биг Ланч
85	Meshi
86	Ajinomoto
87	Maggi
88	Saikebon
89	Yoodles
90	Yitian Yimian
80	Jin Ri Big
92	N'Medov
93	Wu shi
94	Hua Qing Jun
95	Xiangyijia
96	Voki Weiqi
\.


--
-- Data for Name: noodles; Type: TABLE DATA; Schema: public; Owner: valerii
--

COPY public.noodles (id, title, description, recommendation, country_id, manufacture_id, image, prep_type, dish_base) FROM stdin;
4	Pho	Вкусный суп.	t	2	3	Vifon_Pho.jpg	PACKET	NOODLE
6	Pho Bo	Вкусный суп.	t	2	3	Vifon_Pho_Bo.jpg	PACKET	NOODLE
10	Shrimp	Немного странный вкус, не похож на стандартный азиатский, чуть остренько, вроде не плохо.	f	3	6	iMee_Shrimp.jpg	PACKET	NOODLE
11	Chicken Abalone	Бульон непонятный какой-то, немного острый, лапша на вкус как нитки.	f	3	7	Mama_Chicken_Abalone.png	PACKET	NOODLE
105	Beef and Mushrooms	Рис хороший, суп-соус приятный, не остро, для походов подойдет	f	4	74	China_rice.jpg	CUP	RICE
20	Mi Xao	Бульон ни о чём, лапша приятная, не острая, но мало для обеда и сухо.	f	2	10	Miliket_Mi_Xao.jpg	PACKET	NOODLE
21	Chicken Flavor	Немного перченая лапша куриный бульон, есть можно.	t	2	3	Vifon_Chicken_Flavor.jpeg	PACKET	NOODLE
22	Bo Ham	Приятный бульон, лапша почти не острая.	f	2	11	Cung_Dinh_Bo_Ham.jpg	PACKET	NOODLE
24	Pho Ga	Вкусная, хорошая, можно брать.	t	2	3	Vifon_Pho_Ga.jpg	PACKET	NOODLE
25	Shrims Flavour	Ни о чем.	f	2	3	Vifon_Shrims_Flavour.png	PACKET	NOODLE
26	Pho Bo	Не острый, вкусный суп.	t	3	7	Mama_Pho_Bo.jpg	PACKET	NOODLE
27	Tom Yum	Пахнет вкусно, как Том Ям, есть небольшой вкус Том Яма, средняя острота.	f	2	13	Picnic_Tom_Yum.jpg	PACKET	NOODLE
212	Рис с курицей и грибами	Рис по специям простой, не острый	f	4	69	Ningbo_rice_chicken.webp	CUP	RICE
29	Beef Flavour	Обычная лапша, бульон приятный, но не насыщенный, не острый.	f	2	3	Vifon_Beef_Flavour.png	PACKET	NOODLE
30	Mi An Lien	Лапша приятная, бульон приятный, но не насыщенный, не острый.	f	2	10	Miliket_Mi_An_Lien.jpg	PACKET	NOODLE
239	Рис с мясом	Вкусный рис в приятном соусе, не остро	t	4	33	Optima_rice_meet.webp	CUP	RICE
33	Mi Goreng	Безвкусная.	f	6	16	Koka_Mi_Goreng.png	PACKET	NOODLE
35	С говядиной	Пахнет какими-то специями, лапша средняя, нормальная, остренькая.	f	7	18	Ramen_Yakuza.jpg	PACKET	NOODLE
247	Gomtang	не пробовал	f	1	9	Paldo_Gomtang.webp	COOK	NOODLE
40	Hakodate Shio	По вкусу как обычный куриный суп, не острый.	f	5	15	Nissin_Hakodate_Shio.jpg	PACKET	NOODLE
41	Hoang Gia	Вкусная лапша, бульон, внутри пакетик с тушенкой, чуть остренько.	t	2	3	Vifon_Hoang_Gia.jpg	PACKET	NOODLE
43	Artificial Roasted Beef Flavor Instant Noodle	Приятный неострый бульон, есть можно.	f	4	8	Baixiang_Artificial_Roasted_Beef_Flavor_Instant_Noodle.jpg	PACKET	NOODLE
248	Говядина	не пробовал	f	21	92	N'Medov_beef.webp	PACKET	NOODLE
49	Kim Chi Flavor Korean Style Instant Noodle	Приятная лапша, бульон	t	2	3	Vifon_Kim_Chi_Flavor_Korean_Style_Instant_Noodle.png	PACKET	NOODLE
249	Курица	не пробовал	f	21	92	N'Medov_chicken.webp	PACKET	NOODLE
245	Pho Rau	Приятный бульон и лапша, для поездки брать можно	f	2	63	KingPho_Pho_Rau.webp	CUP	NOODLE
31	Pad Thai	Ни о чем	f	3	7	Mama_Pad_Thai.jpg	PACKET	NOODLE
250	Со вкусом курицы и сычуаньского перца	Хороший вкусненький рис, далеко чувствуется чуть сычуаньский перец	t	4	93	Wu_shi_chicken.webp	CUP	RICE
53	Курица гриль	Лапшу лучше проварить, чтобы была ещё мягче, вкусный приятный бульон, не острый, можно брать	t	7	26	Siem_Sam_Chiken.jpg	PACKET	NOODLE
54	Tom Yam	Лапша нормальная, бульон немного острый, но кислит	f	2	27	Omachi_Tom.jpg	PACKET	NOODLE
5	Tom Ram	Приятная, с настоящими креветками, немного остренькая.	f	2	4	A-One_Tom_Ram.jpg	CUP	NOODLE
34	Kang Shi Fu	Неплохая, в меру острая, ароматная.	f	4	17	Master_Kong_Kang_Shi_Fu.jpg	CUP	NOODLE
3	Ramen	Пахнет копченой паприкой, остренькая, неплохой бульон и лапша.	f	1	2	Samyang_Ramen.jpg	COOK	NOODLE
7	Kimchi Ramyun	Пойдет, не очень остро, чуть кисло, типа щи.	t	1	1	Nongshim_Kimchi_Ramyun.jpg	COOK	NOODLE
8	Ramen Kimchi	Не острая, вкусная лапша, бульон.	t	1	2	Samyang_Ramen_Kimchi.jpg	COOK	NOODLE
9	Jin Ramen Mild	В меру острая, наваристый бульон, хорошая лапша.	t	1	5	Ottogi__Jin_Ramen_Mild.jpg	COOK	NOODLE
13	Neoguri Ramyun	Типа морская, не острая, на раз.	f	1	1	Nongshim_Neoguru_Ramyun.jpg	COOK	NOODLE
14	Seafood Party	Остренькая, неплохая.	f	1	2	Samyang_Seafood_Party.jpg	COOK	NOODLE
15	Namja Ramen	Невкусный бульон, остро и горько	f	1	9	Paldo_Namja_Ramen.jpg	COOK	NOODLE
16	Sogokimyun	Бульон остренький, но не насыщенный, лапша норм. Не дотягивает до лучших.	f	1	2	Samyang_Sogokimyun.jpg	COOK	NOODLE
17	Ansungtangmyun	Вкусная, острая.	t	1	1	Nongshim_Ansungtangmyun.jpg	COOK	NOODLE
244	Рис по-индийски	Рис по вкусу и структуре как пшенка, соус карри, остренький	f	11	31	BigBon_rice.webp	CUP	RICE
246	Pho Tom	Приятный бульон, рисовая лапша обычная	f	2	63	KingPho_Pho_Tom.webp	CUP	NOODLE
196	Рис с говядиной	Самовар. Неплохой рис с кусочками овощей и говядины, острота комфортная. В дорогу	f	4	74	Henan_Rise_Beef.webp	CUP	RICE
170	Рис с картофелем и говядиной	Самовар. Рис нормальный, соус остренький, порция большая	f	4	74	Risenoname.webp	CUP	RICE
62	Lau Thai	Приятная лапша и бульон, чуть остренько	t	2	3	Vifon_LAU_THAI.jpg	PACKET	NOODLE
252	Рис с курицей	не пробовал	f	4	94	Hua_Qing_Jun_rice_chicken.webp	CUP	RICE
58	Oriental Style Instant Noodle Tomyam Flavour	Обычная вьетнамская лапша, бульон ненасыщенный , чуть острый	f	2	3	Vifon_Oriental_Style_Instant_Noodle_Tomyam_Flavour.jpg	PACKET	NOODLE
253	Tom Yam	Лапша стандартная, бульон водянистый, не наваристый, лёгкая острота	f	2	31	BigBon_tom_yam_discovery.webp	PACKET	NOODLE
88	Tom Yam	Сделано во Вьетнаме, хоть и биг бон русская\r\nБульон приятный, но вкус том яма очень слабый, лапша не до конца мягкая, слабо остро	f	11	31	BigBonTomY.jpg	PACKET	NOODLE
61	Shrimp Flavor Thai Style	Приятная лапша	f	2	3	Vifon_Shrimp_Flavor_Thai_Style_Instant_Noodle.jpg	PACKET	NOODLE
73	Beef Pho	Лапша ни о чем, бульон приятный	f	11	32	KINGTHAI_PHO.jpg	PACKET	NOODLE
66	Сreamy Tom Yum	Обычная лапша, привкус том яма, остренькая	f	11	32	KingThai_Сreamy_Tom_Yum.jpg	PACKET	NOODLE
67	Со вкусом курицы	Лапша простая, бульон приятный, не острый	f	4	33	OptimaChiken.png	PACKET	NOODLE
74	Silk Seafood	Специфичный привкус, неплохой, лапша рисовая, не остро и не солёно	f	6	16	Koka_seafood.png	PACKET	NOODLE
77	С капустой	Приятный суп, лапша стандартная, бульон с типичными пряными китайскими специями, не сильно острый	f	4	8	BaiXiang_kimchi.jpg	PACKET	NOODLE
78	Ramen Soy Souce	Неплохой морской бульон, лапшу лучше проварить, чтобы была мягче	f	2	3	Vifon_ramen_soy_souce.jpg	PACKET	NOODLE
85	Shrimp Flavour	Вкусненький суп, чуть чуть острый, в меру, можно брать	t	4	17	Master_kong_shrimp.jpg	PACKET	NOODLE
86	Tom Yum	Вкусный бульон, грибы интересный сладкий вкус, макароны вьетнамские стандартные, чуть остро	t	2	37	Reena-Tom-Yum.jpg	PACKET	NOODLE
87	Crab Flavor	Лёгкий не супер насыщенный мисо бульон, лапша плоская, не остро	f	2	3	Vifon_crab_flavor.jpg	PACKET	NOODLE
95	Куриный	Приятный вкусненький бульон, лапша не самая лучшая, но пойдёт, есть можно	f	12	40	AlkoniChiken.jpg	PACKET	NOODLE
96	Pho bo	Есть можно, но другие фо бо, в бичпакетах намного вкуснее	f	2	12	GauDo_PhoB.jpg	PACKET	NOODLE
99	Taco	Сама лапша нормальная, но из-за приправы солёно слишком	f	13	42	Banetti_Taco.jpg	PACKET	NOODLE
63	Kimchi Ramen	Вкусная лапша, в меру острая	t	1	5	Ottogi_Kimchi_Ramen.jpg	COOK	NOODLE
64	Yeul Ramen	Лапша вкусная, но остро, много чили	f	1	5	Ottogi_Yeul_Ramen.jpg	COOK	NOODLE
69	Black pasta	Лапша в бобовом соусе, приятная, не острая.	t	11	24	ChanRamenBlack.jpg	COOK	NOODLE
70	Shin Light	Приятная лапша, но острота на грани	f	1	1	Nongshim-shin-light.jpg	COOK	NOODLE
71	Chapagetti	Плотная хорошая лапша в сладковатом соусе, не острая	t	1	1	Nongshim-chapagetti.jpg	COOK	NOODLE
72	Cheese Рамён	Лапша тонкая, хуже корейских, бульон немного сырный, не острый	f	11	24	Doshirak-Cheese.jpg	COOK	NOODLE
75	Shin Ramyun	Лапша стандартная, бульон за гранью остроты	f	1	1	nongshim_shin_ramyun.jpg	COOK	NOODLE
76	Neoguri Seafood Spicy	Лапша хорошая, бульон острый, на грани	f	1	1	nongshim_neoguri_ramyun.jpg	COOK	NOODLE
80	жареная лапша	Как макароны со шрирачей	f	4	34	Shangqiu.jpg	COOK	NOODLE
89	Чачжан Мён	Но соус из Китая. Приятная лапша. Сладковатый соус с кусочками чего-то, грибы или соевое мясо. Не остро	f	11	24	Doshirak_ChachGan.webp	COOK	NOODLE
94	Удон японская со вкусом говядины	Вкусный бульон, не острый, лапша как деревенская яичная.	t	4	39	Jinmailang_Beef.jpg	COOK	NOODLE
93	Чан Рамен Острый	Лапша хорошая, бульон Остренький, как корейская	t	11	24	ChanRamenHotBeef.webp	COOK	NOODLE
193	Pork bone	Вкусно, легкая остринка. Варю 3 минуты, в конце соус и выключаю.	t	4	72	Tangdaren_pork_bone.png	COOK	NOODLE
101	Curry	Средняя лапша и бульон, чили дозируется.	f	13	43	SuperMi.jpg	PACKET	NOODLE
251	Рис с говядиной	Вкусный рис и соус, острота приятная	t	4	94	Hua_Qing_Jun_rice_beef.webp	CUP	RICE
104	Crab	Вкусная, но острая	f	4	46	QiaoDouMaCrab.jpg	PACKET	NOODLE
107	Nazir	Обычная вермишель, бульон не пробовал	f	13	47	Berona_Nazir.jpg	PACKET	NOODLE
111	Говядина	Лапша обычная вьетнамская, бульон. Остренький, не сильно насыщенный.	f	2	48	oppa_beef.webp	PACKET	NOODLE
254	Рис со вкусом говядины с перцем Сянъицзя	Вкусный рис и соус, чуть перец Сянъицзя чувствуется	t	4	95	Xiangyijia_Braised_pepper_beef.webp	CUP	RICE
255	Рис со вкусом тушеной говядины с жареным перцем	Рис вкусный, но довольно остро\r\n	f	4	96	HenanLeiqiaFood_Rise_beef.webp	CUP	RICE
109	Tom Yam	Лапша средняя, бульон кисло-острый, не очень насыщенный	f	2	48	oppa_tom.webp	PACKET	NOODLE
155	Tom Yam	Бульон достаточно острый, лапша обычная	f	3	65	SueSat_TomYam.jpg	PACKET	NOODLE
129	Chicken Flavor	Простая лапша и бульон	f	4	57	SMT_chicken_flavor.webp	PACKET	NOODLE
133	Naruto	Бульон приятный, лапша нормальная, но немного странный запах	f	4	59	Naruto.webp	PACKET	NOODLE
136	Kimchi	Хорошая лапша, ароматный бульон, острота как надо.	t	2	3	Vifon_kimchi.webp	PACKET	NOODLE
140	Курица сальса	Приятный бульон и лапша	f	7	62	Okwok_chiken_salsa.webp	PACKET	NOODLE
119	Yellow Curry	Бульон соленоватый со вкусом карри, лапша обычная	f	3	7	mama_curry.webp	PACKET	NOODLE
108	Kimchi	Неплохой, остренький бульон (чили в пакетике), лапшу лучше проварить	f	3	7	mama_kimchi.webp	PACKET	NOODLE
143	Ягненок	Бульон приятный простой, лапша простая, не остро	f	7	62	Okwok_lamb.webp	PACKET	NOODLE
145	Говядина огурец	Пахнет как плов, бульон похож на зирвак, лапша обычная	f	7	62	Okwok_beef.webp	PACKET	NOODLE
159	Mi Lau Thai	Вкусненький бульон и лапша, в меру остро	t	2	66	Acecook_LauThai.webp	PACKET	NOODLE
90	Mi Tom	Лапша стандартная вьетнамская, бульон лёгкий, чуть остро, не супер	f	2	37	ReenaMiTomChua.webp	PACKET	NOODLE
110	С говядиной	Сама лапша хорошая, но бульон нет	f	3	49	jaya.webp	CUP	NOODLE
113	Spaghetti	Вкусная лапша, бульона нет, не острая, можно покупать	t	2	11	Cung_dinh_spaghetti.webp	CUP	NOODLE
100	Yakisoba	Приятная лапша с приятным соусом, не острая, порция маленькая	f	5	15	nissin_yakisoba.jpg	COOK	NOODLE
115	Clay Pot	Вкусная лапша и бульон, легкая острота	t	1	1	Nongshim_clay_pot.webp	COOK	NOODLE
117	Guk	Вкусная лапша, вкусный бульон, типа мисо суп, не остро. Варить лапшу, в конце пакетики	t	9	51	Daebak_guk.webp	COOK	NOODLE
118	Mushroom	Лапша вкусная, но острота на грани	f	9	51	Daebak_mushroom.webp	COOK	NOODLE
122	Cheese Ramen	Вкусный сырный бульон, острота комфортная, сама лапша хорошая	t	1	5	Ottogi_cheese_ramen.webp	COOK	NOODLE
123	Seafood Flavor Udon	Бульон хороший, острота средняя, лапша толстая	t	1	56	Hanil_Food_SeafoodFlavorUdon.webp	COOK	NOODLE
125	U-Zha	Обычный бобовый соус, толстая лапша	f	1	56	Hanil_Food_U-Zha.webp	COOK	NOODLE
128	Cheese Ramen	Стандартная корейская, острота средняя	f	1	1	Nongshim_cheese_ramen.webp	COOK	NOODLE
106	Суп	Бульон легкий приятный, лапша широкая как бешбармак, приятная, можно есть	f	4	39	China_unknown3.jpg	COOK	NOODLE
160	Удон со вкусом курицы	Вкусная лапша, бульон куриный	f	4	39	Jinmailang_udon_chiken.webp	COOK	NOODLE
146	Говядина сальса	Бульон чуть острый, похож на зирвак, лапша плотная, не очень	f	7	62	Okwok_beef_salsa.webp	PACKET	NOODLE
144	Курица сыр	Лапша простая, бульон соленый химозный	f	7	62	Okwok_chiken_cheese.webp	PACKET	NOODLE
169	Pho chiken flavour	Вкусный Фо	t	2	66	acecook_pho_chiken_flavour.webp	PACKET	NOODLE
141	Beef	Бульон хороший, сама лапша типичная китайская, не остро, можно брать	f	4	39	JinMaiLang_Beef.webp	PACKET	NOODLE
172	Kim Chi 	Приятный кисловатый островатый бульон, лапша нормальная	f	2	37	Reena_Kim_chi.webp	PACKET	NOODLE
189	Chicken mushrooms	По факту просто лапша, ни соли ни перца	f	4	17	Master_Kong_chicken_mushrooms.webp	PACKET	NOODLE
191	Spicy beef 	Средне-острая, на вкус немного похож на казахстанскую, то есть с кислинкой	f	4	17	Master_Kong_spicy_beef.webp	PACKET	NOODLE
192	Томаты и яйца	Неплохая лапша, не острая	f	4	17	Master_Kong_tomato_egg.webp	PACKET	NOODLE
195	Chicken	Невкусно	f	4	75	Tong_Wan_Fu_chicken.webp	PACKET	NOODLE
103	Crab	Вкусная лапша, крабовый соус, острая. В комплекте маршмелоу и горох в панировке	f	4	79	China_unknown.jpg	PACKET	NOODLE
194	Chicken	Слабый привкус куриного бульона, лапша простая	f	4	8	Baixiang_chicken.jpg	PACKET	NOODLE
200	Рамен с кимчи	Вкусный бульон, чуть острый, лапша плотная	f	12	81	Master_Wok_Ramen.webp	PACKET	NOODLE
199	Beef	Бульон приятный, не острый, лапша простая	f	4	80	JinRiBig_Beef.webp	PACKET	NOODLE
158	Bibimmen	Хорошая лапша, вкусный сладко-острый соус. Без бульона	t	1	9	Paldo_Bibimmen.webp	COOK	NOODLE
161	Мисо рамен	Лапша нормальная, мисо бульон слабый, не острый	f	5	67	Sunaoshi_miso_ramen.webp	COOK	NOODLE
163	Omelette	Вкусный бульон, приятная острота, лапша стандартная 	t	4	68	master_kan_omelette.webp	COOK	NOODLE
164	Карбонара 	Лапша без бульона, сливочно-сырная, приятная, не остро	f	4	69	ningbo_carbanara.webp	COOK	NOODLE
165	Сырная лапша	Лапша со сладковатым немного химическим сырным соусом, не остро	f	4	69	ningbo_cheese.webp	COOK	NOODLE
168	Snack Ramen	Хороший бульон и лапша, не остро почти	t	1	5	OTTOGI_SNACK_RAMEN.webp	COOK	NOODLE
167	Seaweed Ramen	Вкусный мисо бульон с морской капустой, не острый, лапша стандартная	t	4	39	Jinmailang_seaweed_ramen.webp	COOK	NOODLE
173	Рисовая лапша с улитками	Лапша скользкая, бульон приятный, куча допов, которые воняют дедовской мазью	f	4	70	Luo_Ba_Wang_Rise.webp	COOK	NOODLE
174	Сырный рамен	Густой сырно-молочный бульон, не остро	f	1	5	Ottogi_Real_Cheese.webp	COOK	NOODLE
175	С яблоками	Вкусный бульон и лапша	t	4	39	Jinmailang_apple.webp	COOK	NOODLE
176	Mep - Garlic & Clam	Лапша нормальная, бульон щиплет язык как сычуаньский Перец, остро, горько, за гранью	f	1	2	Samyang_Mep_Garlic&Clam_Ramyeon.webp	COOK	NOODLE
178	Seafood Ramen	Лапша стандартная, бульон средний, напоминает старый доширак, лёгкая комфортная острота	f	1	71	Migawon_seafood.webp	COOK	NOODLE
234	Говядина в томатном соусе	Бульон приятный, лапша так себе, и плохо заварилась	f	11	31	BigBon_tomatoes_beef.webp	PACKET	NOODLE
237	Creamy Tom Yum	Вкусненький кисло-остренький бульон, лапша стандартная	t	3	7	Mama_Creamy_Tom_Yum.webp	PACKET	NOODLE
236	Shrimp Flavor Tom Yum	Бульон не особо насыщенный,но остренький, лапша обычная	f	3	7	Mama_Shrimp Flavor_Tom Yum.webp	PACKET	NOODLE
206	Ким Чачжан	Лапша обычная, соус бобовый, но слабенький, не остро	f	2	48	oppa_chach.webp	PACKET	NOODLE
207	С морепродуктами	Лапша вьетнамская, соус остренький	f	2	48	oppa_seafood.webp	PACKET	NOODLE
209	Фрикасе с цыпленком	Приятный бульон и лапша	f	11	83	biglanch_chicken.webp	PACKET	NOODLE
217	Pho Ga	Лапша обычная рисовая, бульон сладковатый, ненасыщенный	f	2	85	Moshi_Halo_Pho_Ga.webp	PACKET	NOODLE
218	Pho Bo	Приятный бульон и лапша, поменьше воды, чтобы бульон насыщенный был	f	2	85	Meshi_Pho_Bo.webp	PACKET	NOODLE
229	Crab flavor	Приятная лапша, без бульона, сладковатый соус, не остро	f	2	11	Cung_dinh_crab.webp	PACKET	NOODLE
205	Pork	Вкусная лапша и бульон, в меру острый. Варю лапшу с овощами, потом соус и уксус	t	4	72	Tangdaren_pork.webp	COOK	NOODLE
210	Чан Рамен Cheese	Неплохая лапша с сырным соусом, не острая, можно использовать как основу для пасты	f	11	24	Chan_ramen_cheese.webp	COOK	NOODLE
28	Hao Hao Hot Sour Shrimp	Приятная, остренькая.	f	2	66	Hao_Hao_Hot_Sour_Shrimp.jpg	PACKET	NOODLE
102	Bun Gio Heo	Бульон приятный, чуть остро, лапша тонкая - не очень вкусно и соевые колобки безвкусные	f	2	66	BunGioHeo.jpg	PACKET	NOODLE
213	Чан Рамен со вкусом курицы	Сама лапша хорошая, но бульон нет, как куриный кубик	f	11	24	Chan_ramen_chicken.webp	COOK	NOODLE
216	С карри	Вкусный и бульон с карри и лапша, возможно есть лёгкая остринка	t	4	39	Jinmailang_beef_carry.webp	COOK	NOODLE
215	Tangle Creamy Bulgogi	Вкусная паста, сладковатая с остринкой. Варить лапшу 5.30, затем добавить по порядку все пакетики	t	1	2	samyang_tangle_creamy_bulgogi.webp	COOK	NOODLE
12	Spicy Beef Soup Flavor Instant Noodles	Приятная, немного остренькая, с какими-то специями.	t	4	8	Baixiang_Spicy_Beef_Soup_Flavor_Instant_Noodles.jpg	CUP	NOODLE
219	Лапша Чеддар	Неплохой сырный бульон, лапша стандартная корейская, острота легкая комфортная	f	1	5	Ottogi_cheddar.webp	COOK	NOODLE
220	Сырный рамен	Приятная лапша в сыром соусе, не остро, мало	f	1	5	Ottogi_cheese.webp	COOK	NOODLE
221	Buldak Carbonara	Вкусный соус, но остро на грани, половину не доел	f	1	2	Samyang_Carbanara.webp	COOK	NOODLE
222	Demae Ramen Duck Flavour	Лапша простая, приготовил без бульона (неправильно), специя остренькая и пряная	f	5	15	Nissin_DemaeRamenDuckFlavour.webp	COOK	NOODLE
223	Demae Ramen Beef Flavour	Приятный бульон и лапша, не остро	f	5	15	Nissin_DemaeRamenBeefFlavour.webp	COOK	NOODLE
228	Bibimmen Токпокки	Эта лапша сделана во Вьетнаме. Хорошая лапша, соус интересный, сладковатый, но с остринкой	t	1	9	Paldo_Tokbokki.webp	COOK	NOODLE
224	Demae Ramen Shrimp Flavour	Приятный бульон и лапша, не остро	f	5	15	Nissin_DemaeRamenShrimpFlavour.webp	COOK	NOODLE
233	Тушеная говядина	Приятная лапша и вкусный бульон, не остро	t	4	39	Jinmailang_hunshao.webp	COOK	NOODLE
32	Cup Noodles Seafood	Вкусный, в меру солёный бульон. Сама лапша тоже приятная нежная.	t	5	15	Nissin_Cup_Noodles_Seafood.png	CUP	NOODLE
36	Hot Pot Beef	Вкусный томатный неострый бульон с кусками тушенки, остальные ингредиенты безвкусные.	f	4	19	Haidilao_Hot_Pot.jpg	CUP	NOODLE
42	Shrimp Flavor	Неплохая лапша, бульон, чуть остро.	f	2	4	A-One_Shrimp_Flavor.jpg	CUP	NOODLE
48	Piri-Piri Chicken	Бульон похож на чечевичный суп, лапша обычная, острота регулируется из пакетика	f	10	23	Pot_Noodle_Piri_Piri_Chicken.jpg	CUP	NOODLE
51	Куриная Лапша	Приятная лапша, бульон, не острый	f	11	25	Rollton_Chiken_Spicy.jpg	CUP	NOODLE
55	Рамен с сычуаньским перцем	Лапша тонкая, бульон странный, острый	f	4	28	Yang_Zhanggui.jpg	CUP	NOODLE
56	Лапша с морепродуктами	Мисо суп, остренький, неплохой	f	4	29	Hezhai.jpg	CUP	NOODLE
59	Лапша с овощами и перцем Малакета	Лапша тонкая, бульон очень масляный и острый	f	4	29	Hezhai_Malaket.jpg	CUP	NOODLE
60	Лапша куриная с соусом сальса	Приятная лапша, бульон, не остро	f	11	31	BigBon_Chiken_Salsa.webp	CUP	NOODLE
65	Чан Рамен с говяжьим бульоном	Неплохая лапша, напоминает доширак из нулевых, не остро	f	11	24	Chan_Ramen_Beef_Сup.webp	CUP	NOODLE
68	Курица в соусе терияки	Приятная лапша и соус, есть приятная острота.	f	11	31	BigBonwokchiken.jpg	CUP	NOODLE
79	Beef flavor	Непонятный какой-то вкус, при этом довольно остро	f	2	4	A-One_beef_flavor.jpg	CUP	NOODLE
81	с морепродуктами	Простая лапша и солененький бульон, нет даже сушеного лука	f	11	35	SINOMIE.jpg	CUP	NOODLE
83	Max Chiken	Бульон не солёный, не перченный, лапша из-за этого пресная	f	11	31	BigBonMaxChicken.jpg	CUP	NOODLE
91	Con Caracter	Нормальная лапша, типа роллтона, бульон приятный, не остро	f	11	38	ReevaConCaracter.jpg	CUP	NOODLE
92	Fideos Con Carne	Лапша типа роллтона, не остро, бульон простой	f	11	38	ReevaFideos.jpg	CUP	NOODLE
97	Говяжий	Простой бульон и лапша, есть можно когда больше нечего	f	11	24	Doshirak_Beef.jpg	CUP	NOODLE
98	Curry Noodle	Обычная простая лапша и простой бульон.	f	13	41	Dudomi.jpg	CUP	NOODLE
114	Лапша	Внутри соус китайский, лапша как бешбармак, вполне приятный  бульон, не острый	f	11	50	Cityeshka.webp	CUP	NOODLE
116	Tom Yum	Рисовая лапша, паста заправка ароматная, но острота на грани	f	2	53	Zik_zik_Tom_Yum.webp	CUP	NOODLE
121	Ever Pho	Лапша рисовая, бульон не острый и не особо насыщенный.	f	2	54	Ever_pho.webp	CUP	NOODLE
126	Cantonese wonton	Бульон солёноватый, бешбармак и пельмени как обычные тесто	f	4	39	JM_Cantonese_wonton.webp	CUP	NOODLE
130	Дошань с курицей	Обычная лапша, простой перченый бульон	f	4	57	Doshan_chiken.webp	CUP	NOODLE
131	Дошань с говядиной	Остренький бульон, лапша простая	f	4	57	Doshan_beef.webp	CUP	NOODLE
132	С морепродуктами	Лапша простая, пресная, бульон слабый, не острый	f	4	57	SMT_seafood.webp	CUP	NOODLE
135	Lu`s Private Kitchen	Бульон норм, лапша тонкая, не очень	f	4	60	China_panda.webp	CUP	NOODLE
138	Кимчи	Лапша самая простая, бульон приятный, чуть острый, но его мало и суховато в итоге	f	11	61	Anakom_kimchi.webp	CUP	NOODLE
134	Tien Shan	Приятная лапша, приятный соус, приятная острота	t	7	31	BigBon_Tien.webp	CUP	NOODLE
142	Pho ga	Нормальная Фо, не лучшая, не худшая	f	2	63	KingPho_chicken.webp	CUP	NOODLE
156	Вантуккон Чампонг	Лапша как в дошираке, бульон хороший, но острота на грани	f	1	9	Paldo_Vantukon_Champong.webp	CUP	NOODLE
127	Chicken Mushrooms	Приятный бульон и лапша, не остро, большая порция	f	4	39	JML_chicken_mushrooms.webp	CUP	NOODLE
120	Chicken and mushrooms	Солоноватый бульон, лапша вермишель, не остро, ни о чем.	f	4	78	JM.webp	CUP	NOODLE
157	Вантуккон	Лапша как в дошираке, бульон хороший, острота выше среднего	f	1	9	Paldo_Vantukon.webp	CUP	NOODLE
137	Tom Yam	Бульон кисло-остренький, не очень, лапша обычная	f	3	49	Jaya_tom_yam.webp	CUP	NOODLE
162	Stir Fry	Американская версия японского бренда.\r\nНеплохая лапша, приятный сладковатый бульон	f	15	15	cup_noodle_stir_fry.webp	CUP	NOODLE
166	С курицей	Приятный куриный бульон, неплохая лапша, большая порция, не остро	f	4	69	ningbo_chicken.webp	CUP	NOODLE
171	Chicken Flavor	Приятный бульон и лапша, немного остренько	f	1	9	Paldo_chiken.webp	CUP	NOODLE
184	Lanzhou Ramen Beef Noodles	Приятная лапша и бульон, не остро, воды заливал чуть выше полстакана	f	4	73	Tongbaifu_Lanzhou_Ramen_Beef_Noodles.webp	CUP	NOODLE
57	Рис	Саморазогревающийся рис с овощами и мясным фаршем	f	4	30	Youpinway_TUXWsQT.jpg	CUP	RICE
124	Tom Yam	Кисловатый остренький немного кисельный  бульон, лапша рисовая	f	11	58	Sanbonsai.webp	CUP	NOODLE
188	Со вкусом свиных ребер	Бульон острый, но не насыщенный, лапша обычная, похоже на красный дошик	f	4	17	Master_Kong_pork_bones.webp	CUP	NOODLE
190	Квашеная капуста и говядина	Довольно остро, нет яркого насыщенного вкуса, пахнет чем-то пропаренным	f	4	17	Master_Kong_Sauerkraut_Beef.webp	CUP	NOODLE
201	Longxia Banmian	Острая из-за сычуаньского перца	f	4	46	QiaoDouMa_Xiao_Longxia_Banmian.webp	CUP	NOODLE
202	Black Garlic	Бульон неплохой, лапша обычная, порция маленькая, не остро	f	4	69	Ningbo_Garlic.webp	CUP	NOODLE
198	Dao Xian Mian Beef	Много ингредиентов, но вкус так себе, острота приемлемая	f	4	39	Jinmailang_DaoXianMian_Beef.webp	CUP	NOODLE
203	Seafood	Лапша простая, бульон приятный, но его очень мало	f	4	69	Ningbo_Seafood.webp	CUP	NOODLE
204	Beef	Лапша и бульон приятные, но не более	f	16	15	Nissin_Cup_Noodles_Beef.webp	CUP	NOODLE
208	Kim ramen со вкусом курицы⁠	Простой бульон и лапша, не остро	f	2	82	Kim_ramen⁠.webp	CUP	NOODLE
214	С мясным соусом	Невкусная лапша, пересоленный бульон	f	11	24	Doshirak_meet.webp	CUP	NOODLE
225	Oyakata Soy Sauce Ramen	Обычная лапша и бульон, приятно, но не более	f	17	86	Ajinomoto_OyakataSoySauceRamen.webp	CUP	NOODLE
226	Saucy Noodles Teriyaki	Лапша обычная, соус  терияки, есть можно	f	18	87	Maggi_SaucyNoodlesTeriyaki.webp	CUP	NOODLE
227	Manzo	Обычная лапша и простой бульон	f	19	88	Saikebon_Manzo.webp	CUP	NOODLE
231	Miso chicken	Простой бульон и лапша,не остро	f	2	11	Cung_Dinh_miso_chicken.jpg	CUP	NOODLE
52	Tom Yam	Приятный бульон и лапша, слабый том ям, как вариант не для дома брать можно	f	2	12	Goudo_Tom.jpg	CUP	NOODLE
240	Контонские пельмени	Приятный соленоватый бульон, лапша как бешбармак и пельмени с соевым мясом, неплохо, в поезд можно	f	4	33	Optima_beef.webp	CUP	NOODLE
18	Soon Veggie Ramen Noodle Soup	Вкусная, средняя острата.	t	1	1	Nongshim_Soon_Veggie_Ramen_Noodle_Soup.jpg	COOK	NOODLE
19	Sesame Ramen	Приятная корейская лапша, но острота на грани.	f	1	5	Ottogi_Sesame_Ramen.jpg	COOK	NOODLE
39	Nonya Karri Laksa	Невкусный бульон и лапша, плюс очень остро.	f	9	21	CarJEN_Nonya_Karri_Laksa.jpg	COOK	NOODLE
45	Chapaguri	Приятная толстая лапша в сладковатом бульоне.	f	1	1	Nongshim_chapaguri.jpg	COOK	NOODLE
46	Topokki Ramen	Остренькая.	f	1	2	Samyang_topokki_ramen.jpg	COOK	NOODLE
47	Jjajang Ramen	Приятная лапша в сладко-соевом соусе.	f	1	2	Samyang_Jjajang_ramen.jpg	COOK	NOODLE
50	Чан Рамен со вкусом говядины	Неплохая лапша ,похожа на корейские, не острая.	f	11	24	Doshirak_Chan_Ramen_Beef.jpg	COOK	NOODLE
179	Cheese Ramen	Очень остро, язык горит, есть невозможно	f	1	71	Migawon_cheese.webp	COOK	NOODLE
177	Chacharoni	Приятная лапша в бобовом соусе, не остро	f	1	2	Samyang_Chacharoni.webp	COOK	NOODLE
182	Shanxi Knife-Cut Noodles	Вкусная лапша и бульон, уксус добавить после варки	t	4	39	Jinmailang_Shanxi_Knife-Cut_Noodles.webp	COOK	NOODLE
187	Chicken	Солоноватый бульон, не остро	f	4	76	Dou_Xiao_Yu_chicken.webp	COOK	NOODLE
183	Seafood	Вкусный бульон, лапша, не остро	t	4	72	Tangdaren_seafood.webp	COOK	NOODLE
181	Pork Bones	Лапша и бульон приятные, но не лучшее, не остро	f	4	8	BAIXIANG_pork_bones.webp	COOK	NOODLE
238	Соевый соус и чеснок	Приятная лапша, сладковатый соус, не остро	t	1	9	Paldo_garlic.webp	COOK	NOODLE
241	Cheese Turkey Noodles	Без бульона, примерно как булдак, не доел	f	4	90	Yitian_Yimian_Cheese_Turkey_Noodles.webp	COOK	NOODLE
185	Pork and fish sauce	Залить воду к рису и немного к сухому бульону. Овощной мясной соус острый	f	4	74	Wang_Zi_Feng_Fan_pork_fish_sauce.webp	CUP	RICE
232	Me Pho Bo	Приятный бульон и лапша, как вариант не для дома брать можно	f	2	12	Gaudo_Fo.webp	CUP	NOODLE
235	Кимчи	Приятная лапша и бульон, острота комфортная	f	11	25	Rolton_kimchi.webp	CUP	NOODLE
230	Tom Yam	Бульон как настоящий том ям, довольно остро, есть мелкие креветки, лапша нормальная	t	3	89	Yoodles_tom_yum.webp	CUP	NOODLE
\.


--
-- Name: countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: valerii
--

SELECT pg_catalog.setval('public.countries_id_seq', 21, true);


--
-- Name: manufactures_id_seq; Type: SEQUENCE SET; Schema: public; Owner: valerii
--

SELECT pg_catalog.setval('public.manufactures_id_seq', 96, true);


--
-- Name: noodles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: valerii
--

SELECT pg_catalog.setval('public.noodles_id_seq', 255, true);


--
-- Name: alembic_version alembic_version_pkc; Type: CONSTRAINT; Schema: public; Owner: valerii
--

ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);


--
-- Name: countries countries_pkey; Type: CONSTRAINT; Schema: public; Owner: valerii
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);


--
-- Name: manufactures manufactures_pkey; Type: CONSTRAINT; Schema: public; Owner: valerii
--

ALTER TABLE ONLY public.manufactures
    ADD CONSTRAINT manufactures_pkey PRIMARY KEY (id);


--
-- Name: noodles noodles_pkey; Type: CONSTRAINT; Schema: public; Owner: valerii
--

ALTER TABLE ONLY public.noodles
    ADD CONSTRAINT noodles_pkey PRIMARY KEY (id);


--
-- Name: noodles noodles_country_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: valerii
--

ALTER TABLE ONLY public.noodles
    ADD CONSTRAINT noodles_country_id_fkey FOREIGN KEY (country_id) REFERENCES public.countries(id);


--
-- Name: noodles noodles_manufacture_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: valerii
--

ALTER TABLE ONLY public.noodles
    ADD CONSTRAINT noodles_manufacture_id_fkey FOREIGN KEY (manufacture_id) REFERENCES public.manufactures(id);


--
-- PostgreSQL database dump complete
--

\unrestrict YImcm0asJSJcxkeYhVE1ikri5pQGV3DmJyFynqDgIdOCPJOlEjkrXvLg9tbt7Xt

