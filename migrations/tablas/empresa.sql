CREATE TABLE empresa(
   id                   bigint NOT NULL DEFAULT NEXTVAL('empresa_sequence'),
   nombre               varchar NOT NULL,
   endpoint             varchar NOT NULL,
   activo               boolean NOT NULL,
   PRIMARY KEY (id)
);