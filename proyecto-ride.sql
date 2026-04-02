--
-- PostgreSQL database dump
--

\restrict lEPC36rpIu3jzzMXXEryd33J60AMOqiPF65GNurlFKHFfNgnQyfozzaQuYZJC2o

-- Dumped from database version 18.1
-- Dumped by pg_dump version 18.1

-- Started on 2026-04-01 18:31:01

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 234 (class 1259 OID 16784)
-- Name: calificaciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.calificaciones (
    id_calificacion integer NOT NULL,
    id_viaje integer,
    id_usuario_califica integer,
    id_usuario_calificado integer,
    estrellas integer,
    resena text
);


ALTER TABLE public.calificaciones OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 16783)
-- Name: calificaciones_id_calificacion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.calificaciones_id_calificacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.calificaciones_id_calificacion_seq OWNER TO postgres;

--
-- TOC entry 5108 (class 0 OID 0)
-- Dependencies: 233
-- Name: calificaciones_id_calificacion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.calificaciones_id_calificacion_seq OWNED BY public.calificaciones.id_calificacion;


--
-- TOC entry 222 (class 1259 OID 16686)
-- Name: conductor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.conductor (
    id_conductor integer NOT NULL,
    id_usuario integer,
    licencia_fecha_expiracion date
);


ALTER TABLE public.conductor OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16685)
-- Name: conductor_id_conductor_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.conductor_id_conductor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.conductor_id_conductor_seq OWNER TO postgres;

--
-- TOC entry 5109 (class 0 OID 0)
-- Dependencies: 221
-- Name: conductor_id_conductor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.conductor_id_conductor_seq OWNED BY public.conductor.id_conductor;


--
-- TOC entry 228 (class 1259 OID 16734)
-- Name: direccion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.direccion (
    id_direccion integer NOT NULL,
    id_pasajero integer,
    alias character varying(50),
    direccion text
);


ALTER TABLE public.direccion OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16733)
-- Name: direccion_id_direccion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.direccion_id_direccion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.direccion_id_direccion_seq OWNER TO postgres;

--
-- TOC entry 5110 (class 0 OID 0)
-- Dependencies: 227
-- Name: direccion_id_direccion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.direccion_id_direccion_seq OWNED BY public.direccion.id_direccion;


--
-- TOC entry 232 (class 1259 OID 16769)
-- Name: pago; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pago (
    id_pago integer NOT NULL,
    id_viaje integer,
    pago_metodo character varying(50),
    monto numeric
);


ALTER TABLE public.pago OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 16768)
-- Name: pago_id_pago_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pago_id_pago_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pago_id_pago_seq OWNER TO postgres;

--
-- TOC entry 5111 (class 0 OID 0)
-- Dependencies: 231
-- Name: pago_id_pago_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pago_id_pago_seq OWNED BY public.pago.id_pago;


--
-- TOC entry 224 (class 1259 OID 16707)
-- Name: pasajero; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pasajero (
    id_pasajero integer NOT NULL,
    id_usuario integer
);


ALTER TABLE public.pasajero OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16706)
-- Name: pasajero_id_pasajero_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pasajero_id_pasajero_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pasajero_id_pasajero_seq OWNER TO postgres;

--
-- TOC entry 5112 (class 0 OID 0)
-- Dependencies: 223
-- Name: pasajero_id_pasajero_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pasajero_id_pasajero_seq OWNED BY public.pasajero.id_pasajero;


--
-- TOC entry 236 (class 1259 OID 16809)
-- Name: reportes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reportes (
    id_reporte integer NOT NULL,
    id_viaje integer,
    id_usuario_reporta integer,
    id_usuario_reportado integer,
    descripcion text,
    fecha timestamp without time zone
);


ALTER TABLE public.reportes OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 16808)
-- Name: reportes_id_reporte_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reportes_id_reporte_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.reportes_id_reporte_seq OWNER TO postgres;

--
-- TOC entry 5113 (class 0 OID 0)
-- Dependencies: 235
-- Name: reportes_id_reporte_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reportes_id_reporte_seq OWNED BY public.reportes.id_reporte;


--
-- TOC entry 220 (class 1259 OID 16678)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    id_usuario integer NOT NULL,
    nomre_completo character varying(100),
    numero_celular character varying(20),
    correo_electronico character varying(100)
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16677)
-- Name: usuario_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuario_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuario_id_usuario_seq OWNER TO postgres;

--
-- TOC entry 5114 (class 0 OID 0)
-- Dependencies: 219
-- Name: usuario_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuario_id_usuario_seq OWNED BY public.usuario.id_usuario;


--
-- TOC entry 226 (class 1259 OID 16721)
-- Name: vehiculo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vehiculo (
    id_vehiculo integer NOT NULL,
    id_conductor integer,
    marca character varying(50),
    modelo character varying(50),
    anio integer,
    seguro_vehiculo character varying(100),
    numero_placas character varying(20)
);


ALTER TABLE public.vehiculo OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16720)
-- Name: vehiculo_id_vehiculo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vehiculo_id_vehiculo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.vehiculo_id_vehiculo_seq OWNER TO postgres;

--
-- TOC entry 5115 (class 0 OID 0)
-- Dependencies: 225
-- Name: vehiculo_id_vehiculo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vehiculo_id_vehiculo_seq OWNED BY public.vehiculo.id_vehiculo;


--
-- TOC entry 230 (class 1259 OID 16749)
-- Name: viajes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.viajes (
    id_viaje integer NOT NULL,
    id_pasajero integer,
    id_conductor integer,
    punto_partida text,
    destino text,
    fecha_hora_inicio timestamp without time zone,
    fecha_hora_finalizacion timestamp without time zone,
    distancia numeric,
    precio_total numeric
);


ALTER TABLE public.viajes OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16748)
-- Name: viajes_id_viaje_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.viajes_id_viaje_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.viajes_id_viaje_seq OWNER TO postgres;

--
-- TOC entry 5116 (class 0 OID 0)
-- Dependencies: 229
-- Name: viajes_id_viaje_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.viajes_id_viaje_seq OWNED BY public.viajes.id_viaje;


--
-- TOC entry 4903 (class 2604 OID 16787)
-- Name: calificaciones id_calificacion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.calificaciones ALTER COLUMN id_calificacion SET DEFAULT nextval('public.calificaciones_id_calificacion_seq'::regclass);


--
-- TOC entry 4897 (class 2604 OID 16689)
-- Name: conductor id_conductor; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conductor ALTER COLUMN id_conductor SET DEFAULT nextval('public.conductor_id_conductor_seq'::regclass);


--
-- TOC entry 4900 (class 2604 OID 16737)
-- Name: direccion id_direccion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.direccion ALTER COLUMN id_direccion SET DEFAULT nextval('public.direccion_id_direccion_seq'::regclass);


--
-- TOC entry 4902 (class 2604 OID 16772)
-- Name: pago id_pago; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pago ALTER COLUMN id_pago SET DEFAULT nextval('public.pago_id_pago_seq'::regclass);


--
-- TOC entry 4898 (class 2604 OID 16710)
-- Name: pasajero id_pasajero; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pasajero ALTER COLUMN id_pasajero SET DEFAULT nextval('public.pasajero_id_pasajero_seq'::regclass);


--
-- TOC entry 4904 (class 2604 OID 16812)
-- Name: reportes id_reporte; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reportes ALTER COLUMN id_reporte SET DEFAULT nextval('public.reportes_id_reporte_seq'::regclass);


--
-- TOC entry 4896 (class 2604 OID 16681)
-- Name: usuario id_usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuario_id_usuario_seq'::regclass);


--
-- TOC entry 4899 (class 2604 OID 16724)
-- Name: vehiculo id_vehiculo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vehiculo ALTER COLUMN id_vehiculo SET DEFAULT nextval('public.vehiculo_id_vehiculo_seq'::regclass);


--
-- TOC entry 4901 (class 2604 OID 16752)
-- Name: viajes id_viaje; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.viajes ALTER COLUMN id_viaje SET DEFAULT nextval('public.viajes_id_viaje_seq'::regclass);


--
-- TOC entry 5100 (class 0 OID 16784)
-- Dependencies: 234
-- Data for Name: calificaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.calificaciones (id_calificacion, id_viaje, id_usuario_califica, id_usuario_calificado, estrellas, resena) FROM stdin;
\.


--
-- TOC entry 5088 (class 0 OID 16686)
-- Dependencies: 222
-- Data for Name: conductor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.conductor (id_conductor, id_usuario, licencia_fecha_expiracion) FROM stdin;
\.


--
-- TOC entry 5094 (class 0 OID 16734)
-- Dependencies: 228
-- Data for Name: direccion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.direccion (id_direccion, id_pasajero, alias, direccion) FROM stdin;
\.


--
-- TOC entry 5098 (class 0 OID 16769)
-- Dependencies: 232
-- Data for Name: pago; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pago (id_pago, id_viaje, pago_metodo, monto) FROM stdin;
\.


--
-- TOC entry 5090 (class 0 OID 16707)
-- Dependencies: 224
-- Data for Name: pasajero; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pasajero (id_pasajero, id_usuario) FROM stdin;
\.


--
-- TOC entry 5102 (class 0 OID 16809)
-- Dependencies: 236
-- Data for Name: reportes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reportes (id_reporte, id_viaje, id_usuario_reporta, id_usuario_reportado, descripcion, fecha) FROM stdin;
\.


--
-- TOC entry 5086 (class 0 OID 16678)
-- Dependencies: 220
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario (id_usuario, nomre_completo, numero_celular, correo_electronico) FROM stdin;
\.


--
-- TOC entry 5092 (class 0 OID 16721)
-- Dependencies: 226
-- Data for Name: vehiculo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vehiculo (id_vehiculo, id_conductor, marca, modelo, anio, seguro_vehiculo, numero_placas) FROM stdin;
\.


--
-- TOC entry 5096 (class 0 OID 16749)
-- Dependencies: 230
-- Data for Name: viajes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.viajes (id_viaje, id_pasajero, id_conductor, punto_partida, destino, fecha_hora_inicio, fecha_hora_finalizacion, distancia, precio_total) FROM stdin;
\.


--
-- TOC entry 5117 (class 0 OID 0)
-- Dependencies: 233
-- Name: calificaciones_id_calificacion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.calificaciones_id_calificacion_seq', 1, false);


--
-- TOC entry 5118 (class 0 OID 0)
-- Dependencies: 221
-- Name: conductor_id_conductor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.conductor_id_conductor_seq', 1, false);


--
-- TOC entry 5119 (class 0 OID 0)
-- Dependencies: 227
-- Name: direccion_id_direccion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.direccion_id_direccion_seq', 1, false);


--
-- TOC entry 5120 (class 0 OID 0)
-- Dependencies: 231
-- Name: pago_id_pago_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pago_id_pago_seq', 1, false);


--
-- TOC entry 5121 (class 0 OID 0)
-- Dependencies: 223
-- Name: pasajero_id_pasajero_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pasajero_id_pasajero_seq', 1, false);


--
-- TOC entry 5122 (class 0 OID 0)
-- Dependencies: 235
-- Name: reportes_id_reporte_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reportes_id_reporte_seq', 1, false);


--
-- TOC entry 5123 (class 0 OID 0)
-- Dependencies: 219
-- Name: usuario_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_id_usuario_seq', 1, false);


--
-- TOC entry 5124 (class 0 OID 0)
-- Dependencies: 225
-- Name: vehiculo_id_vehiculo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vehiculo_id_vehiculo_seq', 1, false);


--
-- TOC entry 5125 (class 0 OID 0)
-- Dependencies: 229
-- Name: viajes_id_viaje_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.viajes_id_viaje_seq', 1, false);


--
-- TOC entry 4920 (class 2606 OID 16792)
-- Name: calificaciones calificaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.calificaciones
    ADD CONSTRAINT calificaciones_pkey PRIMARY KEY (id_calificacion);


--
-- TOC entry 4908 (class 2606 OID 16692)
-- Name: conductor conductor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conductor
    ADD CONSTRAINT conductor_pkey PRIMARY KEY (id_conductor);


--
-- TOC entry 4914 (class 2606 OID 16742)
-- Name: direccion direccion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.direccion
    ADD CONSTRAINT direccion_pkey PRIMARY KEY (id_direccion);


--
-- TOC entry 4918 (class 2606 OID 16777)
-- Name: pago pago_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pago
    ADD CONSTRAINT pago_pkey PRIMARY KEY (id_pago);


--
-- TOC entry 4910 (class 2606 OID 16713)
-- Name: pasajero pasajero_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pasajero
    ADD CONSTRAINT pasajero_pkey PRIMARY KEY (id_pasajero);


--
-- TOC entry 4922 (class 2606 OID 16817)
-- Name: reportes reportes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reportes
    ADD CONSTRAINT reportes_pkey PRIMARY KEY (id_reporte);


--
-- TOC entry 4906 (class 2606 OID 16684)
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);


--
-- TOC entry 4912 (class 2606 OID 16727)
-- Name: vehiculo vehiculo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vehiculo
    ADD CONSTRAINT vehiculo_pkey PRIMARY KEY (id_vehiculo);


--
-- TOC entry 4916 (class 2606 OID 16757)
-- Name: viajes viajes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.viajes
    ADD CONSTRAINT viajes_pkey PRIMARY KEY (id_viaje);


--
-- TOC entry 4932 (class 2606 OID 16798)
-- Name: calificaciones calificaciones_id_usuario_califica_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.calificaciones
    ADD CONSTRAINT calificaciones_id_usuario_califica_fkey FOREIGN KEY (id_usuario_califica) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 4933 (class 2606 OID 16803)
-- Name: calificaciones calificaciones_id_usuario_calificado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.calificaciones
    ADD CONSTRAINT calificaciones_id_usuario_calificado_fkey FOREIGN KEY (id_usuario_calificado) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 4934 (class 2606 OID 16793)
-- Name: calificaciones calificaciones_id_viaje_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.calificaciones
    ADD CONSTRAINT calificaciones_id_viaje_fkey FOREIGN KEY (id_viaje) REFERENCES public.viajes(id_viaje);


--
-- TOC entry 4923 (class 2606 OID 16693)
-- Name: conductor conductor_id_usuario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conductor
    ADD CONSTRAINT conductor_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 4927 (class 2606 OID 16743)
-- Name: direccion direccion_id_pasajero_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.direccion
    ADD CONSTRAINT direccion_id_pasajero_fkey FOREIGN KEY (id_pasajero) REFERENCES public.pasajero(id_pasajero);


--
-- TOC entry 4931 (class 2606 OID 16778)
-- Name: pago pago_id_viaje_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pago
    ADD CONSTRAINT pago_id_viaje_fkey FOREIGN KEY (id_viaje) REFERENCES public.viajes(id_viaje);


--
-- TOC entry 4924 (class 2606 OID 16714)
-- Name: pasajero pasajero_id_usuario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pasajero
    ADD CONSTRAINT pasajero_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 4925 (class 2606 OID 16838)
-- Name: pasajero pasajero_id_usuario_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pasajero
    ADD CONSTRAINT pasajero_id_usuario_fkey1 FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario) NOT VALID;


--
-- TOC entry 4935 (class 2606 OID 16823)
-- Name: reportes reportes_id_usuario_reporta_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reportes
    ADD CONSTRAINT reportes_id_usuario_reporta_fkey FOREIGN KEY (id_usuario_reporta) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 4936 (class 2606 OID 16828)
-- Name: reportes reportes_id_usuario_reportado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reportes
    ADD CONSTRAINT reportes_id_usuario_reportado_fkey FOREIGN KEY (id_usuario_reportado) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 4937 (class 2606 OID 16818)
-- Name: reportes reportes_id_viaje_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reportes
    ADD CONSTRAINT reportes_id_viaje_fkey FOREIGN KEY (id_viaje) REFERENCES public.viajes(id_viaje);


--
-- TOC entry 4926 (class 2606 OID 16728)
-- Name: vehiculo vehiculo_id_conductor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vehiculo
    ADD CONSTRAINT vehiculo_id_conductor_fkey FOREIGN KEY (id_conductor) REFERENCES public.conductor(id_conductor);


--
-- TOC entry 4928 (class 2606 OID 16763)
-- Name: viajes viajes_id_conductor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.viajes
    ADD CONSTRAINT viajes_id_conductor_fkey FOREIGN KEY (id_conductor) REFERENCES public.conductor(id_conductor);


--
-- TOC entry 4929 (class 2606 OID 16833)
-- Name: viajes viajes_id_conductor_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.viajes
    ADD CONSTRAINT viajes_id_conductor_fkey1 FOREIGN KEY (id_conductor) REFERENCES public.conductor(id_conductor) NOT VALID;


--
-- TOC entry 4930 (class 2606 OID 16758)
-- Name: viajes viajes_id_pasajero_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.viajes
    ADD CONSTRAINT viajes_id_pasajero_fkey FOREIGN KEY (id_pasajero) REFERENCES public.pasajero(id_pasajero);


-- Completed on 2026-04-01 18:31:01

--
-- PostgreSQL database dump complete
--

\unrestrict lEPC36rpIu3jzzMXXEryd33J60AMOqiPF65GNurlFKHFfNgnQyfozzaQuYZJC2o

