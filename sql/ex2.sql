SELECT Aluno.nome AS "Aluno", 
       Responsavel1.nome AS "Responsavel1",
       Responsavel1.parentesco AS "Parentesco1",
       Responsavel2.nome AS "Responsavel2",
       Responsavel2.parentesco AS "Parentesco2"
FROM Aluno
LEFT JOIN (SELECT Parentesco.idAluno, Responsavel.nome, Parentesco.parentesco , ROWNUM rn FROM Parentesco JOIN Responsavel ON Parentesco.idResponsavel = Responsavel.id WHERE ROWNUM <= 2) Responsavel1 ON Aluno.id = Responsavel1.idAluno and Responsavel1.rn = 1
LEFT JOIN (SELECT Parentesco.idAluno, Responsavel.nome, Parentesco.parentesco , ROWNUM rn FROM Parentesco JOIN Responsavel ON Parentesco.idResponsavel = Responsavel.id WHERE ROWNUM <= 2) Responsavel2 ON Aluno.id = Responsavel2.idAluno and Responsavel2.rn = 2

-- Esse codigo sql ira mostrar um aluno e dois parentes sempre, sem repetir linhas para o mesmo aluno