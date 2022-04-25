CREATE TABLE mensaje(
   id                   bigint NOT NULL DEFAULT NEXTVAL('mensajesequence'),
   nombre               varchar NOT NULL,
   celular              varchar NOT NULL,
   correo               varchar NOT NULL,
   observacion          varchar NOT NULL,
   fecha_creacion       timestamp without time zone NOT NULL,
   activo               boolean NOT NULL,
   PRIMARY KEY (id)
);