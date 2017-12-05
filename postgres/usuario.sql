
/* Não é necessario criar está tabela*/
CREATE TABLE usuario(
	id smallserial not null,
	ra	integer not null,
	nome  varchar(150) not null,
	email varchar(50) not null,
	password varchar(255) not null,
	status boolean default True,
	perfil char(1) not null,
	celular char(11),
    CONSTRAINT id_usuario_pk primary key (id),
    CONSTRAINT ra_unique UNIQUE (ra)
);