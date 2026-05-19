-- -----------------------------------------------------
-- SCRIPT PARA POVOAMENTO DO BANCO DE DADOS
-- -----------------------------------------------------

-- TABELA: Pessoa_Desempregada
INSERT INTO Pessoa_Desempregada ( 
    cpf, nome, data_nascimento, telefone, endereco, escolaridade, area_interesse
)
VALUES
( '11111111111', 'Carlos Eduardo Silva', '1998-05-12', '11987654321', 'Rua das Flores, 120', 'SUPERIOR', 'Tecnologia da Informacao' ),
( '22222222222', 'Mariana Souza Lima', '1995-11-20', '11999998888', 'Av. Central, 455', 'MEDIO', 'Administracao' ),
( '33333333333', 'Joao Pedro Santos', '2000-03-08', '11977776666', 'Rua Azul, 89', 'TECNICO', 'Logistica' ),
( '44444444444', 'Fernanda Oliveira', '1992-07-15', '11966665555', 'Rua Primavera, 220', 'POS_GRADUACAO', 'Recursos Humanos' ),
( '55555555555', 'Lucas Martins', '1999-09-30', '11955554444', 'Rua Bela Vista, 77', 'SUPERIOR', 'Desenvolvimento Web' ),
( '66666666666', 'Patricia Gomes', '1997-04-11', '11933334444', 'Rua das Palmeiras, 40', 'SUPERIOR', 'Marketing' ),
( '77777777777', 'Renato Alves', '1994-12-02', '11922223333', 'Av. Brasil, 500', 'MEDIO', 'Vendas' ),
( '88888888888', 'Camila Ferreira', '2001-06-19', '11944445555', 'Rua Horizonte, 88', 'TECNICO', 'Design Grafico' ),
( '99999999999', 'Felipe Rocha', '1990-01-27', '11977778888', 'Rua Aurora, 301', 'SUPERIOR', 'Banco de Dados' ),
( '10101010101', 'Juliana Martins', '1998-09-14', '11988889999', 'Av. Liberdade, 1200', 'POS_GRADUACAO', 'Gestao de Pessoas' );

-- TABELA: Empresa
INSERT INTO Empresa (
    cnpj, nome, area_atuacao, endereco, telefone
)
VALUES
( '12345678000101', 'Tech Solutions', 'Tecnologia', 'Av. Paulista, 1000', '1133334444' ),
( '98765432000199', 'RH Brasil', 'Recursos Humanos', 'Rua Augusta, 500', '1144445555' ),
( '45678912000155', 'Logistica Express', 'Logistica', 'Av. Industrial, 800', '1155556666' ),
( '74185296000111', 'Digital Systems', 'Tecnologia', 'Rua Tecnologica, 100', '1132323232' ),
( '85274196000122', 'Mercado Central', 'Comercio', 'Av. Comercial, 700', '1145454545' ),
( '96385274000133', 'Finance Group', 'Financeiro', 'Rua do Mercado, 210', '1156565656' );

-- TABELA: Instituicao
INSERT INTO Instituicao (
    nome, endereco, telefone
)
VALUES
( 'Instituto Profissionalizante Alpha', 'Rua do Conhecimento, 50', '1166667777' ),
( 'Centro Tecnico Brasil', 'Av. Educacao, 900', '1177778888' ),
( 'Escola Profissional Master', 'Rua da Educacao, 250', '1189898989' ),
( 'Instituto Nacional de Cursos', 'Av. Paulista, 3000', '1178787878' );

-- TABELA: Atendente
INSERT INTO Atendente (
    nome, cargo, telefone
)
VALUES
( 'Ana Beatriz Costa', 'Assistente Social', '1188889999' ),
( 'Ricardo Mendes', 'Analista de Empregabilidade', '11911112222' ),
( 'Marcos Vinicius', 'Assistente Administrativo', '11945454545' ),
( 'Luciana Prado', 'Coordenadora Social', '11956565656' ),
( 'Pedro Henrique', 'Analista de Atendimento', '11967676767' );

-- TABELA: Vaga
INSERT INTO Vaga (
    cargo, salario, carga_horaria, requisitos, situacao, cnpj_empresa
)
VALUES
( 'Desenvolvedor Front-End', 3500.00, '40 horas semanais', 'Conhecimento em React', 'ABERTA', '12345678000101' ),
( 'Assistente Administrativo', 2200.00, '44 horas semanais', 'Pacote Office', 'ABERTA', '98765432000199' ),
( 'Auxiliar de Logistica', 2000.00, '44 horas semanais', 'Experiencia em estoque', 'ENCERRADA', '45678912000155' ),
( 'Analista de Sistemas', 5000.00, '40 horas semanais', 'Conhecimento em PostgreSQL', 'ABERTA', '74185296000111' ),
( 'Operador de Caixa', 1800.00, '44 horas semanais', 'Atendimento ao cliente', 'ABERTA', '85274196000122' ),
( 'Assistente Financeiro', 2800.00, '40 horas semanais', 'Conhecimento em Excel', 'ABERTA', '96385274000133' ),
( 'Designer Grafico', 3200.00, '40 horas semanais', 'Conhecimento em Photoshop', 'ENCERRADA', '74185296000111' ),
( 'Vendedor Interno', 2100.00, '44 horas semanais', 'Experiencia com vendas', 'ABERTA', '85274196000122' );

-- TABELA: Curso
INSERT INTO Curso (
    nome_curso, carga_horaria, area_formacao, codigo_instituicao
)
VALUES
( 'Curso de Desenvolvimento Web', 120, 'Tecnologia', 1 ),
( 'Curso de Excel Avancado', 60, 'Administracao', 1 ),
( 'Curso de Logistica Empresarial', 80, 'Logistica', 2 ),
( 'Curso de Banco de Dados', 100, 'Tecnologia', 3 ),
( 'Curso de Atendimento ao Cliente', 40, 'Comercio', 4 ),
( 'Curso de Marketing Digital', 70, 'Marketing', 3 ),
( 'Curso de Recursos Humanos', 90, 'Gestao', 4 );

-- TABELA: Encaminhamento
INSERT INTO Encaminhamento (
    data_encaminhamento, status_encaminhamento, observacao, cpf_pessoa, codigo_atendente
)
VALUES
( '2026-05-10', 'REALIZADO', 'Encaminhado para entrevista', '11111111111', 1 ),
( '2026-05-11', 'PENDENTE', 'Aguardando retorno da empresa', '22222222222', 2 ),
( '2026-05-12', 'CANCELADO', 'Candidato desistiu da vaga', '33333333333', 1 ),
( '2026-05-13', 'REALIZADO', 'Candidato compareceu a entrevista', '66666666666', 3 ),
( '2026-05-14', 'PENDENTE', 'Aguardando documentacao', '77777777777', 4 ),
( '2026-05-15', 'REALIZADO', 'Encaminhado para vaga de TI', '99999999999', 5 ),
( '2026-05-16', 'CANCELADO', 'Empresa cancelou processo seletivo', '88888888888', 2 );

-- TABELA: Candidatura
INSERT INTO Candidatura (
    cpf_pessoa, codigo_vaga, data_candidatura, status_candidatura
)
VALUES
( '11111111111', 1, '2026-05-05', 'EM_ANALISE' ),
( '22222222222', 2, '2026-05-06', 'APROVADO' ),
( '33333333333', 3, '2026-05-07', 'REJEITADO' ),
( '55555555555', 1, '2026-05-08', 'EM_ANALISE' ),
( '66666666666', 4, '2026-05-10', 'EM_ANALISE' ),
( '77777777777', 5, '2026-05-11', 'APROVADO' ),
( '88888888888', 7, '2026-05-12', 'REJEITADO' ),
( '99999999999', 4, '2026-05-13', 'APROVADO' ),
( '10101010101', 8, '2026-05-14', 'EM_ANALISE' );

-- TABELA: Participacao_Curso
INSERT INTO Participacao_Curso (
    cpf_pessoa, codigo_curso, data_inicio, situacao_curso
)
VALUES
( '11111111111', 1, '2026-04-01', 'CURSANDO' ),
( '22222222222', 2, '2026-03-15', 'CONCLUIDO' ),
( '33333333333', 3, '2026-02-10', 'CANCELADO' ),
( '44444444444', 1, '2026-04-20', 'CURSANDO' ),
( '66666666666', 4, '2026-04-10', 'CURSANDO' ),
( '77777777777', 5, '2026-03-20', 'CONCLUIDO' ),
( '88888888888', 6, '2026-02-15', 'CURSANDO' ),
( '99999999999', 4, '2026-04-01', 'CONCLUIDO' ),
( '10101010101', 7, '2026-03-05', 'CURSANDO' );