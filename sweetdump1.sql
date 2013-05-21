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
-- Name: articles; Type: TABLE; Schema: public; Owner: apprentice; Tablespace: 
--

CREATE TABLE articles (
    id integer NOT NULL,
    title character varying(255),
    description text,
    url character varying(255),
    category character varying(255),
    tags character varying(255)
);


ALTER TABLE public.articles OWNER TO apprentice;

--
-- Name: articles_id_seq; Type: SEQUENCE; Schema: public; Owner: apprentice
--

CREATE SEQUENCE articles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.articles_id_seq OWNER TO apprentice;

--
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: apprentice
--

ALTER SEQUENCE articles_id_seq OWNED BY articles.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: apprentice; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO apprentice;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: apprentice
--

ALTER TABLE ONLY articles ALTER COLUMN id SET DEFAULT nextval('articles_id_seq'::regclass);


--
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: apprentice
--

COPY articles (id, title, description, url, category, tags) FROM stdin;
1	dolorem asperiores numquam	Quisquam voluptatum architecto quidem dolores odio sint enim. Qui delectus ratione sint. Quam at cupiditate deleniti nisi ab. Quo aut nostrum laboriosam doloribus ut.	articles/5/21/2013/dolorem-asperiores-numquam	HEALTH	ruby
2	eaque voluptatem deserunt	Alias sunt voluptas reiciendis saepe impedit asperiores mollitia. Nesciunt dolorum quia perferendis sint voluptatem. Nulla rerum doloribus ut. Omnis quia sunt ut autem. Consequatur distinctio aut provident voluptas et eveniet consequuntur.	articles/5/21/2013/eaque-voluptatem-deserunt	sport	hate, rails
3	eveniet est vitae	Aspernatur culpa reprehenderit sint. Nisi et eum qui itaque possimus sit molestiae. Tenetur ipsam veniam et inventore enim.	articles/5/21/2013/eveniet-est-vitae	computer-world	
4	ratione aperiam sit	Ut excepturi in dignissimos ut aliquid aut molestias. Dolorem odit magni corrupti. Ex aut recusandae repudiandae sunt.	articles/5/21/2013/ratione-aperiam-sit	HEALTH	
5	recusandae rerum voluptas	Voluptatum atque perferendis. Eligendi expedita nostrum sunt fuga qui reiciendis. Aut dolores rem.	articles/5/21/2013/recusandae-rerum-voluptas	HEALTH	
6	minima quas illo	Aperiam iure quia. Quaerat possimus non saepe. Voluptatem et veritatis deserunt modi.	articles/5/21/2013/minima-quas-illo	Business	random-tags, love, ruby
7	ratione iusto dolorem	Maxime sit qui totam officiis. Reiciendis architecto doloribus in recusandae illum tenetur. Aut iusto excepturi placeat a et labore dolorem.	articles/5/21/2013/ratione-iusto-dolorem	sport	cloud, music
8	eveniet eos voluptas	Recusandae nihil fugiat non. Saepe maxime perferendis doloribus ratione adipisci. Quidem voluptas iste possimus laboriosam. Rerum voluptatibus consequatur corporis non eos voluptatem. Qui similique dolor dolor omnis perspiciatis.	articles/5/21/2013/eveniet-eos-voluptas	Business	
9	aut repudiandae asperiores	Optio fugit perspiciatis maxime harum reiciendis deleniti debitis. Architecto deserunt perspiciatis. Dolor commodi ea ratione. Nesciunt ut illo qui veritatis earum est. Accusamus in sed minus magni.	articles/5/21/2013/aut-repudiandae-asperiores	sport	love, ruby
10	quis reprehenderit fuga	Eum eius libero deleniti vero cum. Dolor neque tenetur error accusantium adipisci autem voluptate. Sunt eius eaque. Culpa maxime suscipit reprehenderit autem eum omnis. Eveniet omnis repellat reprehenderit vel.	articles/5/21/2013/quis-reprehenderit-fuga	computer world	
11	illum modi qui	Qui sunt non totam. Dignissimos suscipit placeat. Sunt ut delectus perferendis tenetur et culpa et. Quam voluptatem voluptatum incidunt officia architecto natus.	articles/5/21/2013/illum-modi-qui	business	widget
12	sunt vel molestiae	Temporibus labore perspiciatis molestias repellat. Ducimus explicabo tempore distinctio beatae. Laudantium necessitatibus voluptas quam vel natus ea. Qui labore cumque nostrum autem.	articles/5/21/2013/sunt-vel-molestiae	Business	ruby, cloud, random
13	expedita architecto libero	Nesciunt iste et omnis odio corporis temporibus. Reiciendis debitis sed. Ullam rem voluptas minus ex. Iste ut quae est atque laudantium.	articles/5/21/2013/expedita-architecto-libero	computer-world	rails, medicine
14	voluptas dolores est	Amet doloremque aut dignissimos illo sed iste. Et et accusamus. Ut nemo dolorem quo cum quos iusto hic.	articles/5/21/2013/voluptas-dolores-est	computer-world	random-tags
15	eum cum omnis	Expedita natus et debitis. Quas dolorem nihil animi quam dolor aut omnis. Amet eaque et dolorum id velit. Quam molestiae ratione nihil voluptas. Fuga quia provident placeat dignissimos quas rerum.	articles/5/21/2013/eum-cum-omnis	computer-world	ruby
16	nobis et nemo	Ea est ut dicta impedit. Quia neque placeat aspernatur distinctio adipisci. Dolor voluptatibus consectetur voluptates ipsa aliquid laudantium.	articles/5/21/2013/nobis-et-nemo	computer world	cloud, widget, art
17	quos omnis ab	Consequatur odit debitis veniam possimus minus officia omnis. Eaque harum ut aut reiciendis rerum. Minima est quisquam assumenda rem quis veniam quae. Aut sint labore est et aliquid.	articles/5/21/2013/quos-omnis-ab	HEALTH	love
18	hic iste nihil	Itaque velit earum rerum neque tempora. Sed qui accusamus expedita eius sequi. Rem sit sit. Totam sit molestiae ea. Est architecto ratione vel.	articles/5/21/2013/hic-iste-nihil	computer-world	
19	saepe vero aspernatur	Esse dolores accusantium aut et et commodi et. Doloremque iste nisi. Autem est et voluptates. Dolorem dignissimos explicabo aut.	articles/5/21/2013/saepe-vero-aspernatur	computer-world	
20	possimus et non	In a tempore. Architecto nam quis hic et natus sint qui. Unde quis aut error est et.	articles/5/21/2013/possimus-et-non	programming	love
21	repudiandae quod sit	Harum natus nemo eius ea. Ut accusantium cum quis soluta blanditiis. Commodi doloremque qui in nisi maiores quisquam similique.	articles/5/21/2013/repudiandae-quod-sit	HEALTH	
22	velit ducimus ut	Eos temporibus eum maiores qui non numquam. Sit sapiente cumque. Cumque rerum inventore voluptas labore ex ipsa.	articles/5/21/2013/velit-ducimus-ut	computer world	random-tags, computer, widget
23	odio nemo vero	At sunt enim vel accusantium sed corporis. Repellendus mollitia odit quidem. Sint eaque harum laborum quia at et.	articles/5/21/2013/odio-nemo-vero	sport	love, ruby, rails
24	est sunt voluptatem	Aut reprehenderit pariatur. Id et dignissimos maiores sed sunt voluptatem voluptates. Voluptatem in est a at.	articles/5/21/2013/est-sunt-voluptatem	HEALTH	
25	libero eum expedita	Beatae praesentium cupiditate sit recusandae ducimus architecto. Iusto doloribus debitis dolore illo nihil aliquid itaque. Inventore expedita rerum deleniti recusandae sint. Delectus alias a sed odit. Odio fugit alias excepturi quia eos.	articles/5/21/2013/libero-eum-expedita	computer-world	love, medicine
26	in magnam corporis	Sed dolorem totam similique commodi velit. Excepturi cumque quia nemo vero officia et est. Quam est fugiat. Laboriosam quasi quis explicabo impedit.	articles/5/21/2013/in-magnam-corporis	sport	computer
27	quia id sit	Quam et quia nihil occaecati velit sit autem. Qui veniam assumenda consequatur ullam dolor qui. Iste et iure eligendi. Sed ab qui quo. Et rerum tempore consequuntur.	articles/5/21/2013/quia-id-sit	sport	medicine
28	officiis id blanditiis	Ut repellat voluptate praesentium et vel fuga enim. Eum ad minus. Odio accusantium et distinctio minima.	articles/5/21/2013/officiis-id-blanditiis	Sports	
29	sint distinctio atque	Dolore eveniet sequi adipisci. Eaque quod accusamus ducimus. Qui dolor ut et. Fugiat quis possimus sunt et molestias.	articles/5/21/2013/sint-distinctio-atque	business	hate
30	nihil nemo et	Ea autem aliquid esse rem maxime et quis. Est deleniti perferendis magnam non. Non sed molestias at molestiae nobis eveniet reiciendis. Ad minus itaque atque necessitatibus laudantium doloremque quis. Unde quo illum minus nesciunt inventore.	articles/5/21/2013/nihil-nemo-et	Business	medicine, hate
31	mollitia ducimus eos	Dolores et laborum fugiat earum recusandae laboriosam est. Perspiciatis modi amet aliquam. Facere laudantium ea et officia odit neque dolores.	articles/5/21/2013/mollitia-ducimus-eos	Business	jquery, hate
32	ipsam ducimus odio	Magnam et eos id dolorum. Et hic ut sed rem. Magnam nostrum at molestiae expedita commodi.	articles/5/21/2013/ipsam-ducimus-odio	Business	music, cloud, medicine
33	quos fugiat laboriosam	Nam accusamus rem praesentium. Possimus quia ipsum est perferendis et ullam commodi. Quia iure sed laudantium qui. Aut voluptatum at nihil iure saepe dicta dignissimos. Dignissimos fugit officiis quaerat neque ut.	articles/5/21/2013/quos-fugiat-laboriosam	Sports	
34	earum sequi qui	Quasi optio velit sunt nihil voluptas corrupti. Sed sed voluptate. Omnis consectetur quod nulla autem eaque. Adipisci debitis in voluptatem. Rerum vero ut qui suscipit.	articles/5/21/2013/earum-sequi-qui	Business	love, rails
35	quas eos fugiat	Molestiae necessitatibus veniam quia ut totam libero ab. Optio dicta sint iure quas ipsam tempore totam. Non excepturi mollitia debitis quis dolorem rem aut.	articles/5/21/2013/quas-eos-fugiat	business	love, medicine, random-tags
36	laudantium quidem enim	Deserunt ut repellat necessitatibus enim dolorem. Nostrum dicta aut ea ipsa illo. Voluptatem ex libero consectetur maxime consequuntur. Ducimus illo et consequatur deserunt non sunt vel. Hic labore eos error delectus doloremque.	articles/5/21/2013/laudantium-quidem-enim	programming	medicine
37	autem nobis sunt	Et voluptate ex earum in ab. Voluptas deleniti aut soluta. Quod exercitationem dolore molestiae. Exercitationem beatae laborum reprehenderit.	articles/5/21/2013/autem-nobis-sunt	Sports	ruby
38	dicta non voluptas	Ut mollitia excepturi voluptas. Consequatur voluptas nostrum fuga. Beatae inventore nam ea sed. Quia nulla et sed dolorum et.	articles/5/21/2013/dicta-non-voluptas	Business	
39	adipisci quaerat voluptatem	Ducimus molestias quam qui quas quos doloremque. Quo et voluptatem illum quia. Fugit ab id esse unde qui. Harum cum sint deserunt est vel. Magnam soluta repellat.	articles/5/21/2013/adipisci-quaerat-voluptatem	HEALTH	cloud, cloud, ruby
40	id quia et	Natus aut reprehenderit velit nostrum est. Ad explicabo et rem ducimus. Impedit fugiat qui tempora voluptatem laboriosam quaerat.	articles/5/21/2013/id-quia-et	sport	love, art
41	laboriosam et accusantium	Animi et ut fugiat repudiandae. Ut voluptas soluta sequi et. Voluptatum rerum consequatur ab at voluptas.	articles/5/21/2013/laboriosam-et-accusantium	Sports	
42	nam aut voluptas	Sed harum temporibus aut recusandae quasi sed et. Molestias id ex at voluptate. Deleniti id eum dolorum sed nam praesentium aliquid. Cum mollitia ea possimus voluptate. Perspiciatis error ea esse.	articles/5/21/2013/nam-aut-voluptas	business	
43	pariatur consequatur ipsam	Beatae distinctio nesciunt. Saepe impedit et. Corrupti expedita aut ex. Placeat quia vitae in eos.	articles/5/21/2013/pariatur-consequatur-ipsam	sport	jquery, rails, random
44	nisi similique est	Voluptate vero qui consequatur. Animi corporis voluptatem. Possimus laboriosam dolore mollitia minima quaerat voluptatem deleniti. Labore ipsam natus quasi dolores. Quibusdam rem quos minus.	articles/5/21/2013/nisi-similique-est	computer world	rails, widget, random
45	aut facere debitis	Repellendus quis ut minus asperiores voluptatem est voluptas. Commodi dolorem harum facere iure. Odit quasi eum.	articles/5/21/2013/aut-facere-debitis	computer world	medicine
46	est eligendi qui	Sed iste autem culpa. Saepe maxime consequatur assumenda. Non aut est debitis quis est quas officia. Doloremque consequuntur excepturi maxime nulla nobis non exercitationem.	articles/5/21/2013/est-eligendi-qui	Business	art, cloud, tech
47	necessitatibus sit optio	Dignissimos eos id aliquam laudantium nam doloribus. Similique doloribus illo eius iste officiis. Tenetur dignissimos ea amet similique odio. Adipisci et non. Cum facilis enim illo aut exercitationem a.	articles/5/21/2013/necessitatibus-sit-optio	Business	
48	laborum assumenda delectus	Dolorem sint cum. Modi pariatur cumque iste voluptas. Et officia fugit rerum.	articles/5/21/2013/laborum-assumenda-delectus	HEALTH	widget, music
49	quam molestiae cumque	Doloremque et sit assumenda incidunt nemo. Dolorem reprehenderit rem veniam modi. Sunt autem eveniet. Fugiat perferendis sed dolores labore. Architecto ipsum aliquid sed est et sint ea.	articles/5/21/2013/quam-molestiae-cumque	Sports	hate, cloud
50	quod odio blanditiis	Ut qui quo quas molestiae. A dolore voluptatibus soluta et facere quisquam voluptatum. Vero nesciunt officiis est quas. Mollitia blanditiis perspiciatis quia error corrupti.	articles/5/21/2013/quod-odio-blanditiis	Sports	love
\.


--
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: apprentice
--

SELECT pg_catalog.setval('articles_id_seq', 50, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: apprentice
--

COPY schema_migrations (version) FROM stdin;
20130311183138
\.


--
-- Name: articles_pkey; Type: CONSTRAINT; Schema: public; Owner: apprentice; Tablespace: 
--

ALTER TABLE ONLY articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: apprentice; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: apprentice
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM apprentice;
GRANT ALL ON SCHEMA public TO apprentice;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

