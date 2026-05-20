-- -----------------------------------------------------
-- SCRIPTS DE INSERCAO DE DADOS
-- -----------------------------------------------------

-- Inserir nova pessoa desempregada
INSERT INTO Pessoa_Desempregada (
    cpf, nome, data_nascimento, telefone, endereco, escolaridade, area_interesse
)
VALUES ( '12121212121', 'Gabriel Fernandes', '1996-08-21', '11912121212', 'Rua Nova Esperanca, 45', 'SUPERIOR', 'Analise de Sistemas' );

-- Inserir nova empresa
INSERT INTO Empresa (
    cnpj, nome, area_atuacao, endereco, telefone
)
VALUES ( '11223344000155', 'Inova Tech', 'Tecnologia', 'Av. Faria Lima, 2000', '1130303030' );

-- Inserir nova vaga
INSERT INTO Vaga (
    cargo, salario, carga_horaria, requisitos, situacao, cnpj_empresa
)
VALUES ( 'Desenvolvedor Back-End', 4500.00, '40 horas semanais', 'Conhecimento em PostgreSQL e Java', 'ABERTA', '11223344000155' );

-- Inserir candidatura
INSERT INTO Candidatura (
    cpf_pessoa, codigo_vaga, data_candidatura, status_candidatura
)
VALUES ( '12121212121', 9, '2026-05-19', 'EM_ANALISE' );

-- -----------------------------------------------------
-- SCRIPTS DE ATUALIZACAO DE DADOS
-- -----------------------------------------------------

-- Atualizar telefone de uma pessoa
UPDATE Pessoa_Desempregada
SET telefone = '11999990000'
WHERE cpf = '11111111111';

-- Atualizar status de candidatura
UPDATE Candidatura
SET status_candidatura = 'APROVADO'
WHERE cpf_pessoa = '22222222222'
AND codigo_vaga = 2;

-- Atualizar salario da vaga
UPDATE Vaga
SET salario = 5500.00
WHERE codigo_vaga = 4;

-- Atualizar situacao da vaga
UPDATE Vaga
SET situacao = 'ENCERRADA'
WHERE codigo_vaga = 1;

-- Atualizar area de interesse da pessoa
UPDATE Pessoa_Desempregada
SET area_interesse = 'Engenharia de Software'
WHERE cpf = '55555555555';

-- -----------------------------------------------------
-- SCRIPTS DE REMOCAO DE DADOS
-- -----------------------------------------------------

-- Remover candidatura
DELETE FROM Candidatura
WHERE cpf_pessoa = '33333333333'
AND codigo_vaga = 3;

-- Remover participacao em curso
DELETE FROM Participacao_Curso
WHERE cpf_pessoa = '33333333333'
AND codigo_curso = 3;

-- Remover encaminhamento
DELETE FROM Encaminhamento
WHERE codigo_encaminhamento = 3;

-- Remover candidatura vinculada a vaga
DELETE FROM Candidatura
WHERE codigo_vaga = 7;

-- Remover vaga encerrada
DELETE FROM Vaga
WHERE codigo_vaga = 7;

-- Remover candidatura da pessoa
DELETE FROM Candidatura
WHERE cpf_pessoa = '12121212121';

-- Remover pessoa desempregada
DELETE FROM Pessoa_Desempregada
WHERE cpf = '12121212121';