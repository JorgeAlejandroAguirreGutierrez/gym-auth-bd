CREATE TABLE auth(
   id                   bigint NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
   identificacion       varchar NOT NULL,
   contrasena           varchar NOT NULL,
   empresa              varchar NOT NULL,
   activo               boolean NOT NULL,
   PRIMARY KEY (id)
);