-- MySQL

-- 1) Escreva uma consulta para trazer todos os dados
SELECT Aluno.id AS "Id Aluno", Aluno.nome AS "Nome Aluno", 
       Responsavel.id AS "Id Responsavel", Responsavel.nome AS "Nome Responsavel",
       Parentesco.parentesco AS "Parentesco"
FROM Aluno
JOIN Parentesco ON Aluno.id = Parentesco.idAluno
JOIN Responsavel ON Responsavel.id = Parentesco.idResponsavel
