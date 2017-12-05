CREATE TABLE "aluno" (
    id  integer not null,
    curso integer not null,
    CONSTRAINT id_aluno_pk primary key (id),
    CONSTRAINT id_aluno_usuario_fk
    FOREIGN KEY (id)
    REFERENCES public."Usuario" (id),
    CONSTRAINT curso_fk
    FOREIGN KEY (curso)
    REFERENCES public.curso (id)
);