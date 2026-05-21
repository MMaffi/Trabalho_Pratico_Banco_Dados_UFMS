-- -----------------------------------------------------
-- CONSULTAS SQL
-- -----------------------------------------------------

-- 1. SELECT SIMPLES
SELECT *
FROM Pessoa_Desempregada;

SELECT *
FROM Empresa;

-- 2. SELECT COM WHERE
SELECT nome, escolaridade
FROM Pessoa_Desempregada
WHERE escolaridade = 'SUPERIOR';

SELECT cargo, salario
FROM Vaga
WHERE salario > 3000;

SELECT cargo, situacao
FROM Vaga
WHERE situacao = 'ABERTA';

-- 3. SELECT COM ORDER BY
SELECT nome, escolaridade
FROM Pessoa_Desempregada
ORDER BY nome ASC;

SELECT cargo, salario
FROM Vaga
ORDER BY salario DESC;

-- 4. CONSULTAS COM COUNT
SELECT COUNT(*) AS total_pessoas
FROM Pessoa_Desempregada;

SELECT COUNT(*) AS vagas_abertas
FROM Vaga
WHERE situacao = 'ABERTA';

SELECT COUNT(*) AS total_empresas
FROM Empresa;

-- 5. CONSULTAS COM GROUP BY
SELECT escolaridade, COUNT(*) AS quantidade
FROM Pessoa_Desempregada
GROUP BY escolaridade;

SELECT situacao, COUNT(*) AS quantidade
FROM Vaga
GROUP BY situacao;

SELECT area_formacao, COUNT(*) AS quantidade
FROM Curso
GROUP BY area_formacao;

-- 6. CONSULTAS COM JOIN
SELECT
    Vaga.cargo,
    Vaga.salario,
    Empresa.nome AS empresa
FROM Vaga
INNER JOIN Empresa
ON Vaga.cnpj_empresa = Empresa.cnpj;

SELECT
    Curso.nome_curso,
    Curso.area_formacao,
    Instituicao.nome AS instituicao
FROM Curso
INNER JOIN Instituicao
ON Curso.codigo_instituicao = Instituicao.codigo_instituicao;

SELECT
    Pessoa_Desempregada.nome,
    Candidatura.codigo_vaga,
    Candidatura.status_candidatura
FROM Candidatura
INNER JOIN Pessoa_Desempregada
ON Candidatura.cpf_pessoa = Pessoa_Desempregada.cpf;

-- 7. CONSULTAS COM JOIN E WHERE
SELECT
    Vaga.cargo,
    Empresa.nome AS empresa,
    Vaga.salario
FROM Vaga
INNER JOIN Empresa
ON Vaga.cnpj_empresa = Empresa.cnpj
WHERE Vaga.situacao = 'ABERTA';

SELECT
    Pessoa_Desempregada.nome,
    Candidatura.status_candidatura
FROM Candidatura
INNER JOIN Pessoa_Desempregada
ON Candidatura.cpf_pessoa = Pessoa_Desempregada.cpf
WHERE Candidatura.status_candidatura = 'APROVADO';

-- 8. CONSULTAS COM GROUP BY E COUNT
SELECT
    Empresa.nome,
    COUNT(Vaga.codigo_vaga) AS total_vagas
FROM Empresa
INNER JOIN Vaga
ON Empresa.cnpj = Vaga.cnpj_empresa
GROUP BY Empresa.nome;

SELECT
    status_candidatura,
    COUNT(*) AS quantidade
FROM Candidatura
GROUP BY status_candidatura;

-- 9. CONSULTAS COM FUNCOES DE AGREGACAO
SELECT MAX(salario) AS maior_salario
FROM Vaga;

SELECT MIN(salario) AS menor_salario
FROM Vaga;

SELECT AVG(salario) AS media_salarial
FROM Vaga;

SELECT SUM(salario) AS soma_salarios
FROM Vaga;

-- 10. CONSULTAS COM LIKE
SELECT nome
FROM Pessoa_Desempregada
WHERE nome LIKE 'C%';

SELECT nome
FROM Empresa
WHERE nome LIKE '%Tech%';

-- 11. CONSULTAS COM BETWEEN
SELECT cargo, salario
FROM Vaga
WHERE salario BETWEEN 2000 AND 4000;

-- 12. CONSULTAS COM IN
SELECT nome, escolaridade
FROM Pessoa_Desempregada
WHERE escolaridade IN ('MEDIO', 'SUPERIOR');

-- 13. CONSULTAS COM HAVING
SELECT
    Empresa.nome,
    COUNT(Vaga.codigo_vaga) AS total_vagas
FROM Empresa
INNER JOIN Vaga
ON Empresa.cnpj = Vaga.cnpj_empresa
GROUP BY Empresa.nome
HAVING COUNT(Vaga.codigo_vaga) > 1;

-- 14. CONSULTA MAIS COMPLETA
SELECT
    Pessoa_Desempregada.nome AS pessoa,
    Vaga.cargo,
    Empresa.nome AS empresa,
    Candidatura.status_candidatura
FROM Candidatura
INNER JOIN Pessoa_Desempregada
ON Candidatura.cpf_pessoa = Pessoa_Desempregada.cpf
INNER JOIN Vaga
ON Candidatura.codigo_vaga = Vaga.codigo_vaga
INNER JOIN Empresa
ON Vaga.cnpj_empresa = Empresa.cnpj;

-- 15. CONSULTA COM DISTINCT
SELECT DISTINCT escolaridade
FROM Pessoa_Desempregada;

-- 16. CONSULTA COM UNION
SELECT nome
FROM Pessoa_Desempregada

UNION

SELECT nome
FROM Empresa;

-- 17. CONSULTA COM UNION ALL
SELECT nome
FROM Pessoa_Desempregada

UNION ALL

SELECT nome
FROM Empresa;

-- 18. CONSULTA COM LEFT JOIN
SELECT
    Empresa.nome,
    Vaga.cargo
FROM Empresa
LEFT JOIN Vaga
ON Empresa.cnpj = Vaga.cnpj_empresa;

-- 19. CONSULTA COM SUBSELECT
SELECT cargo, salario
FROM Vaga
WHERE salario > (
    SELECT AVG(salario)
    FROM Vaga
);

-- 20. CONSULTA COM EXISTS
SELECT nome
FROM Empresa E
WHERE EXISTS (
    SELECT 1
    FROM Vaga V
    WHERE V.cnpj_empresa = E.cnpj
);