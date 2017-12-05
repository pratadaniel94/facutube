create table "curso"(
	id smallserial not null,
	nome varchar(100) not null,
	sigla varchar(5) not null,
	objetivo text,
	perfil_profissional text,
	mercado_trabalho text,
	constraint id_curso_pk primary key(id),
	constraint nome_unique unique (nome),
	constraint sigla_unique unique(sigla));