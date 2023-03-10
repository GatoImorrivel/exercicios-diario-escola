-- MySql

/*
2) Escreva uma consulta SQL para retornar dados únicos conforme tabela abaixo.
Caso o aluno tenha mais de dois responsáveis, traga apenas os dois primeiros
responsáveis encontrados na tabela.
*/

SELECT Aluno.nome as 'Aluno',
SUBSTRING_INDEX(GROUP_CONCAT(DISTINCT Responsavel.nome ORDER BY Parentesco.idaluno, Parentesco.idresponsavel SEPARATOR ','), ',', 1) as 'Responsavel 1',
SUBSTRING_INDEX(GROUP_CONCAT(DISTINCT Parentesco.parentesco ORDER BY Parentesco.idaluno, Parentesco.idresponsavel SEPARATOR ','), ',', 1) as 'Parentesco 1',
SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(DISTINCT Responsavel.nome ORDER BY Parentesco.idaluno, Parentesco.idresponsavel SEPARATOR ','), ',', 2), ',', -1) as 'Responsavel 2',
SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(DISTINCT Parentesco.parentesco ORDER BY Parentesco.idaluno, Parentesco.idresponsavel SEPARATOR ','), ',', 2), ',', -1) as 'Parentesco 2'
FROM Aluno
JOIN Parentesco ON Aluno.id = Parentesco.idaluno
JOIN Responsavel ON Parentesco.idresponsavel = Responsavel.id
GROUP BY Aluno.id;