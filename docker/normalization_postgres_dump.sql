SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;
SET search_path = public, pg_catalog;
SET default_tablespace = '';
SET default_with_oids = false;

CREATE TABLE fieldconfigs (
    id integer NOT NULL,
    field_id integer,
    value character varying(255),
    number_value integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    value_operator character varying(11)
);

ALTER TABLE fieldconfigs OWNER TO postgres;

CREATE TABLE fields (
    id integer NOT NULL,
    customer integer,
    name character varying(255),
    path character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    type character varying(11) NOT NULL,
    default_number_value integer DEFAULT 0 NOT NULL
);

ALTER TABLE fields OWNER TO postgres;

COPY fieldconfigs (id, field_id, value, number_value, "createdAt", "updatedAt", value_operator) FROM stdin;
1	1	Sócio/Proprietário	1	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
2	1	sócio/proprietário	1	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
3	1	Sócio-proprietário	1	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
4	1	Sócio Proprietário	1	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
5	1	ADM	2	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
6	1	adm	2	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
7	1	Aluno	3	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
8	1	Estudante	3	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
9	1	TI	4	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
10	1	ti	4	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
11	1	Gestor TI	4	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
12	1	Analista	5	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
13	1	analista	5	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
14	1	Assistente	6	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
15	1	assistente	6	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
16	1	Autônomo	7	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
17	1	autônomo	7	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
18	1	Consultor	8	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
19	1	consultor	8	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
20	1	Coordenador de obras	9	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
21	1	Diretor	10	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
22	1	diretor	10	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
23	1	Engeenheiro e proprietário	11	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
24	1	Departamento financeiro	12	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
25	1	Estagiário	13	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
26	1	estagiário	13	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
27	1	Gerente administrativo	14	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
28	1	Gerente financeiro	15	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
29	1	Gerente geral	16	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
30	1	Gestor de área	17	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
31	1	gestor_de_área	17	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
32	1	Gestor de Área	17	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
33	1	Gerente de planejamento	18	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
34	1	Outros	19	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
35	1	outros	19	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
36	1	Proprietário	20	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
37	1	Sócio	21	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
38	1	Sócio financeiro e administrativo	22	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
39	2	a	1	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
40	2	b	2	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
41	2	c	3	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
42	2	d	4	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
43	4	Arquitetura	1	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
44	4	Comercial	2	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
45	4	Diretoria	3	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
46	4	Engenharia	4	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
47	4	Financeiro e Administrativo	5	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
48	4	Incorporação	6	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
49	4	Orçamento	7	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
50	4	Planejamento	8	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
51	4	RH	9	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
52	4	rh	9	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
53	4	TI	10	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
54	4	ti	10	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
55	4	Suprimentos	11	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
56	4	Outros	12	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
57	4	outros	12	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
58	4	Contabilidade	13	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
59	5	0 a 4	1	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
60	5	5 a 9	2	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
61	5	10 a 19	3	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
62	5	20 a 29	4	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
63	5	30 a 49	5	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
64	5	50 a 99	6	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
65	5	100 a 249	7	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
66	5	250 a 499	8	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
67	5	500 ou mais	9	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
68	6	Construtora	1	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
69	6	Construtora e Incorporadora	2	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
70	6	Incorporadora	3	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
71	6	Instaladora	4	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
72	6	Loteadora	5	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
73	6	Obras Próprias	6	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
74	6	Reformas	7	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
75	6	Serviços	8	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
76	6	Serviços Especiais	9	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
77	6	Outros	10	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
78	7	Não, nenhuma	1	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
79	7	Sim, pequenas reformas	2	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
80	7	Sim, até 3 obras	3	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
81	7	Sim, de 4 a 10 obras	4	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
82	7	Sim, mais de 11 obras	5	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
83	8	Desconhecido	0	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
84	8	unknown	0	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
85	8	Orgânica	1	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	like
86	8	Google	1	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
87	8	google	1	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
88	8	Paga	2	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	like
89	8	Email	3	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	like
90	8	Outros	4	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	like
91	8	Referência	5	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	like
92	8	Social | Facebook	6	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	like
93	8	Facebook Ads	6	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	like
94	8	Facebook-Ads	6	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
95	8	Facebook-ads	6	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
96	8	Social	7	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	like
97	8	Tráfego Direto	8	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
98	8	direct	8	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	like
99	9	Desconhecido	0	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
100	9	unknown	0	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
101	9	Orgânica	1	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	like
102	9	Google	1	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
103	9	google	1	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
104	9	Paga	2	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	like
105	9	Email	3	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	like
106	9	Outros	4	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	like
107	9	Referência	5	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	like
108	9	Social | Facebook	6	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	like
109	9	Facebook Ads	6	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	like
110	9	Facebook-Ads	6	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
111	9	Facebook-ads	6	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
112	9	Social	7	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	like
113	9	Tráfego Direto	8	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
114	9	direct	8	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	like
115	10	Vender mais	1	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
116	10	Conseguir crédito para a empresa	2	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
117	10	Reduzir custos	3	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
118	10	Organizar a empresa para poder crescer	4	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
119	10	Saber onde perco dinheiro	5	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
120	11	Não	0	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
121	11	Sim	1	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
122	12	43.99-1-99	1	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
123	12	74.90-1-99	2	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
124	12	43.30-4-01	3	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
125	12	42.13-8-00	4	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
126	12	69.20-6-01	5	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
127	12	82.19-9-99	6	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
128	12	68.21-8-01	7	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
129	12	42.21-9-02	8	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
130	12	68.22-6-00	9	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
131	12	68.10-2-02	10	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
132	12	42.92-8-02	11	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
133	12	71.19-7-03	12	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
134	12	43.30-4-04	13	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
135	12	42.22-7-01	14	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
136	12	42.99-5-01	15	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
137	12	23.30-3-01	16	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
138	12	42.21-9-03	17	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
139	12	25.11-0-00	18	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
140	12	68.10-2-03	19	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
141	12	43.13-4-00	20	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
142	12	68.10-2-01	21	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
143	12	43.21-5-00	22	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
144	12	43.30-4-99	23	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
145	12	71.11-1-00	24	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
146	12	42.99-5-99	25	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
147	12	43.99-1-01	26	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
148	12	43.99-1-03	27	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
149	12	42.11-1-01	28	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
150	12	71.12-0-00	29	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
151	12	41.10-7-00	30	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
152	12	41.20-4-00	31	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	eq
\.

COPY fields (id, customer, name, path, "createdAt", "updatedAt", type, default_number_value) FROM stdin;
1	1	role	lead.job_title	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	config	0
2	1	profile	lead.fit_score	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	config	0
3	1	conversion	lead.number_conversions	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	raw	0
4	1	lead_area	lead.custom_fields.Área	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	config	0
5	1	number_of_employees	lead.custom_fields.Quantos funcionários há na sua empresa nas áreas de Engenharia, Compras, Financeiro, Administrativo e Comercial?	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	config	0
6	1	company_segment	lead.custom_fields.Segmento	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	config	0
7	1	wip	lead.custom_fields.Sua empresa tem obras em andamento?	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	config	0
8	1	source_first_conv	lead.first_conversion.conversion_origin.source	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	config	0
9	1	source_last_conv	lead.last_conversion.conversion_origin.source	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	config	0
10	1	concern	lead.custom_fields.Qual sua maior preocupação hoje?	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	config	0
11	1	looking_for_a_software	lead.last_conversion.content.Estou a procura de um software de gestão para minha empresa!	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	config	9
12	1	main_activity	lead.main_activity_code	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	config	0
13	2	role	lead.job_title	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	config	1
14	2	profile	lead.fit_score	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	config	1
15	2	conversion	lead.number_conversions	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	config	1
16	2	lead_area	lead.custom_fields.Área	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	config	1
17	2	number_of_employees	lead.custom_fields.Quantos funcionários há na sua empresa nas áreas de Engenharia, Compras, Financeiro, Administrativo e Comercial?	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	config	1
18	2	company_segment	lead.custom_fields.Segmento	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	config	1
19	2	wip	lead.custom_fields.Sua empresa tem obras em andamento?	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	config	1
20	2	source_first_conv	lead.first_conversion.conversion_origin.source	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	config	1
21	2	source_last_conv	lead.last_conversion.conversion_origin.source	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	config	1
22	2	concern	lead.custom_fields.Qual sua maior preocupação hoje?	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	config	1
23	2	looking_for_a_software	lead.last_conversion.content.Estou a procura de um software de gestão para minha empresa!	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	config	1
24	2	main_activity	lead.main_activity_code	2018-03-15 00:00:00-07	2018-03-15 00:00:00-07	config	1
\.

ALTER TABLE ONLY fieldconfigs
    ADD CONSTRAINT fieldconfigs_pkey PRIMARY KEY (id);

ALTER TABLE ONLY fields
    ADD CONSTRAINT fields_pkey PRIMARY KEY (id);
