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
  status VARCHAR(50),
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
  FOREIGN KEY (usuario_id) REFERENCES Usuarios(ID)
);

CREATE TABLE Projetos (
  ID INT PRIMARY KEY AUTO_INCREMENT,
  usuario_id INT,
  data_fim DATE,
  FOREIGN KEY (usuario_id) REFERENCES Usuarios(ID)
);

CREATE TABLE AnotacoesGerais (
  ID INT PRIMARY KEY AUTO_INCREMENT,
  usuario_id INT,
  anotacao TEXT,
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