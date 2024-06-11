CREATE DATABASE projeto_finalm3;

USE projeto_finalm3;

CREATE TABLE Usuarios (
  ID INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(255),
  email VARCHAR(255),
  senha VARCHAR(255)
);

CREATE TABLE Cronogramas (
  ID INT PRIMARY KEY AUTO_INCREMENT,
  usuario_id INT,
  data_inicio DATE,
  data_fim DATE,
  FOREIGN KEY (usuario_id) REFERENCES Usuarios(ID)
);

CREATE TABLE SessaoEstudos (
  ID INT PRIMARY KEY AUTO_INCREMENT,
  usuario_id INT,
  cronograma_id INT,
  materia VARCHAR(255),
  tempo_gasto INT,
  notas TEXT,
  FOREIGN KEY (usuario_id) REFERENCES Usuarios(ID),
  FOREIGN KEY (cronograma_id) REFERENCES Cronogramas(ID)
);

CREATE TABLE Distracoes (
  ID INT PRIMARY KEY AUTO_INCREMENT,
  usuario_id INT,
  app_site VARCHAR(255),
  data_bloqueio DATETIME,
  FOREIGN KEY (usuario_id) REFERENCES Usuarios(ID)
);

CREATE TABLE Metas (
  ID INT PRIMARY KEY AUTO_INCREMENT,
  usuario_id INT,
  descricao TEXT,
  data_alvo DATE,
  status VARCHAR (50),
  FOREIGN KEY (usuario_id) REFERENCES Usuarios(ID)
);

CREATE TABLE Alertas (
  ID INT PRIMARY KEY AUTO_INCREMENT,
  usuario_id INT,
  mensagem TEXT,
  data_alerta DATETIME,
  FOREIGN KEY (usuario_id) REFERENCES Usuarios(ID)
);

CREATE TABLE FerramentasEstudo (
  ID INT PRIMARY KEY AUTO_INCREMENT,
  usuario_id INT,
  app_site VARCHAR(255),
  biblioteca TEXT,
  tipo VARCHAR(255),
  ultima_utilizacao DATETIME,
  FOREIGN KEY (usuario_id) REFERENCES Usuarios(ID)
);

CREATE TABLE Projetos (
  ID INT PRIMARY KEY AUTO_INCREMENT,
  usuario_id INT,
  data_fim DATE,
  descricao VARCHAR(255),
  status VARCHAR(50),
  FOREIGN KEY (usuario_id) REFERENCES Usuarios(ID)
);

CREATE TABLE AnotacoesGerais (
  ID INT PRIMARY KEY AUTO_INCREMENT,
  usuario_id INT,
  anotacao TEXT,
  data_criacao DATE,
  ultima_modificacao DATETIME,
  FOREIGN KEY (usuario_id) REFERENCES Usuarios(ID)
);

-- Inserções da tabela Usuários
INSERT INTO Usuarios (nome, email, senha) 
    VALUES ('João Pedro', 'joao.pedro@example.com', 'senha123');

INSERT INTO Usuarios (nome, email, senha) 
    VALUES ('Gabriela', 'gabriela@example.com', 'senha123');

INSERT INTO Usuarios (nome, email, senha) 
    VALUES ('Phelipe Cezario', 'phelipe.cezario@example.com', 'senha123');

INSERT INTO Usuarios (nome, email, senha) 
    VALUES ('Letícia Souza', 'leticia.souza@example.com', 'senha123');

INSERT INTO Usuarios (nome, email, senha) 
    VALUES ('João Miguel', 'joao.miguel@example.com', 'senha123');

INSERT INTO Usuarios (nome, email, senha) 
    VALUES ('Julia Nascimento', 'julia.nascimento@example.com', 'senha123');

-- Inserções da tabela cronogramas
INSERT INTO Cronogramas (usuario_id, data_inicio, data_fim) 
    VALUES (1, '2024-01-01', '2024-01-31');

INSERT INTO Cronogramas (usuario_id, data_inicio, data_fim) 
    VALUES (2, '2024-02-01', '2024-02-28');

INSERT INTO Cronogramas (usuario_id, data_inicio, data_fim) 
    VALUES (3, '2024-03-01', '2024-03-31');

--  Inserções na tabela Sessão de Estudos
INSERT INTO SessaoEstudos (usuario_id, cronograma_id, materia, tempo_gasto, notas) 
	VALUES (1, 1, 'Matemática', 120, 'Estudo sobre álgebra linear');

INSERT INTO SessaoEstudos (usuario_id, cronograma_id, materia, tempo_gasto, notas) 
	VALUES (2, 2, 'Física', 90, 'Estudo sobre mecânica clássica');

INSERT INTO SessaoEstudos (usuario_id, cronograma_id, materia, tempo_gasto, notas) 
	VALUES (3, 3, 'Química', 60, 'Estudo sobre reações químicas');

    
-- inserções da tabela de distrações 
INSERT INTO Distracoes (usuario_id, app_site, data_bloqueio)
  VALUES (1, 'Facebook', '2024-05-01 10:00:00');
 
INSERT INTO Distracoes (usuario_id, app_site, data_bloqueio) 
  VALUES (2, 'Instagram', '2024-05-02 11:00:00');

INSERT INTO Distracoes (usuario_id, app_site, data_bloqueio) 
  VALUES (3, 'YouTube', '2024-05-03 12:00:00');

  -- Inserções na tabela Metas
  INSERT INTO Metas (usuario_id, descricao, data_alvo, status) 
        VALUES (1, 'Completar o curso de álgebra', '2024-06-01', 'em progresso');

INSERT INTO Metas (usuario_id, descricao, data_alvo, status) 
        VALUES (2, 'Ler o livro de física', '2024-07-01', 'incompleto');

INSERT INTO Metas (usuario_id, descricao, data_alvo, status) 
        VALUES (3, 'Terminar o projeto de química', '2024-08-01', 'completo');

--Inserções na tabela Alertas
INSERT INTO Alertas (usuario_id, mensagem, data_alerta) 
	  VALUES (1, 'Estudar para a prova de matemática', '2024-05-10 08:00:00');
    
INSERT INTO Alertas (usuario_id, mensagem, data_alerta) 
	  VALUES (2, 'Entrega do trabalho de física', '2024-05-11 09:00:00');
    
INSERT INTO Alertas (usuario_id, mensagem, data_alerta) 
	  VALUES (3, 'Reunião do grupo de química', '2024-05-12 10:00:00');


--Inserções na tabela Alertas
INSERT INTO Alertas (usuario_id, mensagem, data_alerta) 
VALUES (1, 'Estudar para a prova de matemática', '2024-05-10 08:00:00');

INSERT INTO Alertas (usuario_id, mensagem, data_alerta) 
VALUES (2, 'Entrega do trabalho de física', '2024-05-11 09:00:00');

INSERT INTO Alertas (usuario_id, mensagem, data_alerta) 
VALUES (3, 'Reunião do grupo de química', '2024-05-12 10:00:00');

-- Inserções na tabela FerramentasEstudo
INSERT INTO FerramentasEstudo (usuario_id, app_site, biblioteca, tipo, ultima_utilizacao) 
        VALUES (1, 'Khan Academy', 'Matemática Avançada','site','2024-05-01 15:00:00');

INSERT INTO FerramentasEstudo (usuario_id, app_site, biblioteca, tipo, ultima_utilizacao) 
        VALUES (2, 'Coursera', 'Física Teórica', 'app','2024-05-02 16:00:00');

INSERT INTO FerramentasEstudo (usuario_id, app_site, biblioteca, tipo, ultima_utilizacao) 
        VALUES (3, 'edX', 'Química Orgânica', 'site', '2024-05-03 17:00:00');

-- Inserções na tabela Projetos
INSERT INTO Projetos (usuario_id, data_fim, descricao, status) 
        VALUES (1, '2024-09-01', 'Projeto de pesquisa em matemática', 'em andamento');

INSERT INTO Projetos (usuario_id, data_fim, descricao, status) 
        VALUES (2, '2024-10-01', 'Projeto de física aplicada', 'concluído');

INSERT INTO Projetos (usuario_id, data_fim, descricao, status) 
        VALUES (3, '2024-11-01', 'Projeto de química experimental', 'em andamento');


-- Inserções na tabela Anotações Gerais
INSERT INTO AnotacoesGerais (usuario_id, anotacao, data_criacao) 
        VALUES (1, 'Nota sobre teoria dos conjuntos', '2024-11-01');

INSERT INTO AnotacoesGerais (usuario_id, anotacao, data_criacao) 
        VALUES (2, 'Nota sobre leis de Newton', '2024-05-02');

INSERT INTO AnotacoesGerais (usuario_id, anotacao, data_criacao) 
        VALUES (3, 'Nota sobre estequiometria', '2024-05-03');

--Análise: Número de Distrações por Usuários
SELECT usuario_id, COUNT(*) as total_distracoes
FROM Distracoes
GROUP BY usuario_id;

--Análise: Distrações mais frequentes
SELECT app_site, COUNT(*) as total_ocorrencias
FROM Distracoes
GROUP BY app_site
ORDER BY total_ocorrencias DESC;

--Análise: Metas completas por Usuário
SELECT usuario_id, COUNT(*) as metas_completas
FROM Metas
WHERE status = 'completo'
GROUP BY usuario_id;

--Última Utilização de Ferramentas de Estudo
SELECT usuario_id, MAX(ultima_utilizacao) as ultima_utilizacao
FROM FerramentasEstudo
GROUP BY usuario_id;

--Projetos Concluídos por Usuário
SELECT usuario_id, COUNT(*) as projetos_concluidos
FROM Projetos
WHERE status = 'concluído'
GROUP BY usuario_id;

--Metas por status
SELECT status, COUNT(*) as total_metas
FROM Metas
GROUP BY status;

--Média de tempo gasto por Matéria
SELECT materia, AVG(tempo_gasto) as media_tempo_gasto
FROM SessaoEstudos
GROUP BY materia;

--Número de cronogramas por Usuário
SELECT usuario_id, COUNT(*) as total_cronogramas
FROM Cronogramas
GROUP BY usuario_id;

--Anotações por usuário
SELECT usuario_id, COUNT(*) as total_anotacoes
FROM AnotacoesGerais
GROUP BY usuario_id;

--Ferramentas de estudos mais usadas
SELECT app_site, COUNT(*) as total_uso
FROM FerramentasEstudo
GROUP BY app_site
ORDER BY total_uso DESC;

--Total de Sessões de Estudos por Matéria
SELECT materia, COUNT(*) as total_sessoes
FROM SessaoEstudos
GROUP BY materia;

--Tempo gasto com Estudos por Usuários
SELECT usuario_id, SUM(tempo_gasto) as total_tempo_gasto
FROM SessaoEstudos
GROUP BY usuario_id;