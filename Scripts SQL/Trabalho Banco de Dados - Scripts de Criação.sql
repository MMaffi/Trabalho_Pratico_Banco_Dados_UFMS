-- Trabalho Bando de Dados

-- ---------------------------------------------------------
-- Script para criação do banco
-- ---------------------------------------------------------

CREATE DATABASE gestao_desempregados;

-- ---------------------------------------------------------
-- Script para criação das tabelas do banco
-- ---------------------------------------------------------

-- Tabela: Pessoa_Desempregada
CREATE TABLE Pessoa_Desempregada (
    cpf CHAR(11) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    telefone VARCHAR(15),
    endereco VARCHAR(150),
    escolaridade VARCHAR(50),
    area_interesse VARCHAR(100)
);

-- Tabela: Empresa
CREATE TABLE Empresa (
    cnpj CHAR(14) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    area_atuacao VARCHAR(100),
    endereco VARCHAR(150),
    telefone VARCHAR(15)
);

-- Tabela: Vaga
CREATE TABLE Vaga (
    codigo_vaga SERIAL PRIMARY KEY,
    cargo VARCHAR(100) NOT NULL,
    salario DECIMAL(10,2),
    carga_horaria VARCHAR(50),
    requisitos TEXT,
    situacao VARCHAR(20) NOT NULL,
    cnpj_empresa CHAR(14) NOT NULL
);

-- Tabela: Instituicao
CREATE TABLE Instituicao (
    codigo_instituicao SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(150),
    telefone VARCHAR(15)
);

-- Tabela: Curso
CREATE TABLE Curso (
    codigo_curso SERIAL PRIMARY KEY,
    nome_curso VARCHAR(100) NOT NULL,
    carga_horaria INT,
    area_formacao VARCHAR(100),
    codigo_instituicao INT NOT NULL
);

-- Tabela: Atendente
CREATE TABLE Atendente (
    codigo_atendente SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50),
    telefone VARCHAR(15)
);

-- Tabela: Encaminhamento
CREATE TABLE Encaminhamento (
    codigo_encaminhamento SERIAL PRIMARY KEY,
    data_encaminhamento DATE NOT NULL,
    status_encaminhamento VARCHAR(30),
    observacao TEXT,
    cpf_pessoa CHAR(11) NOT NULL,
    codigo_atendente INT NOT NULL
);

-- Tabela Associativa: Candidatura
CREATE TABLE Candidatura (
    cpf_pessoa CHAR(11) NOT NULL,
    codigo_vaga INT NOT NULL,
    data_candidatura DATE,
    status_candidatura VARCHAR(30),

    PRIMARY KEY (cpf_pessoa, codigo_vaga)
);

-- Tabela Associativa: Participacao_Curso
CREATE TABLE Participacao_Curso (
    cpf_pessoa CHAR(11) NOT NULL,
    codigo_curso INT NOT NULL,
    data_inicio DATE,
    situacao_curso VARCHAR(30),

    PRIMARY KEY (cpf_pessoa, codigo_curso)
);

-- ---------------------------------------------------------
-- Scripts para Constraints
-- ---------------------------------------------------------

-- Foreign Keys
ALTER TABLE Vaga
ADD CONSTRAINT fk_vaga_empresa
FOREIGN KEY (cnpj_empresa)
REFERENCES Empresa(cnpj);

ALTER TABLE Curso
ADD CONSTRAINT fk_curso_instituicao
FOREIGN KEY (codigo_instituicao)
REFERENCES Instituicao(codigo_instituicao);

ALTER TABLE Encaminhamento
ADD CONSTRAINT fk_encaminhamento_pessoa
FOREIGN KEY (cpf_pessoa)
REFERENCES Pessoa_Desempregada(cpf);

ALTER TABLE Encaminhamento
ADD CONSTRAINT fk_encaminhamento_atendente
FOREIGN KEY (codigo_atendente)
REFERENCES Atendente(codigo_atendente);

ALTER TABLE Candidatura
ADD CONSTRAINT fk_candidatura_pessoa
FOREIGN KEY (cpf_pessoa)
REFERENCES Pessoa_Desempregada(cpf);

ALTER TABLE Candidatura
ADD CONSTRAINT fk_candidatura_vaga
FOREIGN KEY (codigo_vaga)
REFERENCES Vaga(codigo_vaga);

ALTER TABLE Participacao_Curso
ADD CONSTRAINT fk_participacao_pessoa
FOREIGN KEY (cpf_pessoa)
REFERENCES Pessoa_Desempregada(cpf);

ALTER TABLE Participacao_Curso
ADD CONSTRAINT fk_participacao_curso
FOREIGN KEY (codigo_curso)
REFERENCES Curso(codigo_curso);

-- Check Constraints

ALTER TABLE Vaga
ADD CONSTRAINT chk_situacao_vaga
CHECK (situacao IN ('ABERTA', 'ENCERRADA'));

ALTER TABLE Candidatura
ADD CONSTRAINT chk_status_candidatura
CHECK (
    status_candidatura IN (
        'EM_ANALISE',
        'APROVADO',
        'REJEITADO'
    )
);

ALTER TABLE Participacao_Curso
ADD CONSTRAINT chk_situacao_curso
CHECK (
    situacao_curso IN (
        'CURSANDO',
        'CONCLUIDO',
        'CANCELADO'
    )
);

ALTER TABLE Encaminhamento
ADD CONSTRAINT chk_status_encaminhamento
CHECK (
    status_encaminhamento IN (
        'PENDENTE',
        'REALIZADO',
        'CANCELADO'
    )
);

ALTER TABLE Pessoa_Desempregada
ADD CONSTRAINT chk_escolaridade
CHECK (
    escolaridade IN (
        'FUNDAMENTAL',
        'MEDIO',
        'TECNICO',
        'SUPERIOR',
        'POS_GRADUACAO'
    )
);