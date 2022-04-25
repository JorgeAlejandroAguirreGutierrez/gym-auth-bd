CREATE TABLE parametro(
   id          bigint NOT NULL DEFAULT NEXTVAL('parametrosequence'),
   titulo      varchar,
   valor       varchar  NOT NULL,
   tipo        varchar  NOT NULL,
   activo      boolean,
   PRIMARY KEY (id)
);
