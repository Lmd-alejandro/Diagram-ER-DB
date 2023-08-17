CREATE TABLE IF NOT EXISTS fifadb_squema.equipo
(
    id integer NOT NULL DEFAULT nextval('fifadb_squema.equipo_id_seq'::regclass),
    name character varying(255) COLLATE pg_catalog."default" NOT NULL,
    puntos integer NOT NULL,
    goles integer NOT NULL,
    estadisticas_equipos integer NOT NULL,
    CONSTRAINT equipo_pkey PRIMARY KEY (id)
)

CREATE TABLE IF NOT EXISTS fifadb_squema.estadio
(
    id integer NOT NULL DEFAULT nextval('fifadb_squema.estadio_id_seq'::regclass),
    name character varying(255) COLLATE pg_catalog."default" NOT NULL,
    capacidad_sillas character varying(500) COLLATE pg_catalog."default" NOT NULL,
    clima character varying(400) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT estadio_pkey PRIMARY KEY (id)
)

CREATE TABLE IF NOT EXISTS fifadb_squema.liga
(
    id integer NOT NULL DEFAULT nextval('fifadb_squema.liga_id_seq'::regclass),
    name character varying(200) COLLATE pg_catalog."default" NOT NULL,
    pais character varying(150) COLLATE pg_catalog."default" NOT NULL,
    division character varying(100) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT liga_pkey PRIMARY KEY (id)
)

CREATE TABLE IF NOT EXISTS fifadb_squema.partido
(
    id integer NOT NULL DEFAULT nextval('fifadb_squema.partido_id_seq'::regclass),
    fecha timestamp with time zone NOT NULL,
    estadio character varying COLLATE pg_catalog."default",
    matchtime integer NOT NULL,
    formation character varying(150) COLLATE pg_catalog."default",
    dificultad integer NOT NULL,
    CONSTRAINT partido_pkey PRIMARY KEY (id)
)