CREATE TABLE auth(
   id                   bigint NOT NULL DEFAULT NEXTVAL('auth_sequence'),
   identificacion       varchar NOT NULL,
   contrasena           varchar NOT NULL,
   activo               boolean NOT NULL,
   empresa_id           bigint,
   PRIMARY KEY (id)
);