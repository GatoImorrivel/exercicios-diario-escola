-- MySQL

/*
1) Escreva comandos SQL para inserir os dados abaixo conforme o diagrama
apresentado.
a) Pablo é Pai de Lucas
b) Brenda é Mãe de Lucas
*/

insert into Aluno
(Id, Nome)
VALUES (1, 'Lucas');

insert into Responsavel
(Id, Nome)
VALUES (1, 'Pablo');

insert into Responsavel
(Id, Nome)
VALUES (2, 'Brenda');

insert into Parentesco
(IdResponsavel, IdAluno, Parentesco)
VALUES (1, 1, 'Pai');

insert into Parentesco
(IdResponsavel, IdAluno, Parentesco)
VALUES (2, 1, 'Mãe');