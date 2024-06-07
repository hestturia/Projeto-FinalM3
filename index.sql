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

INSERT INTO Usuarios (nome, email, senha) VALUES ('João Pedro', 'joao.pedro@example.com', 'senha123');
INSERT INTO Usuarios (nome, email, senha) VALUES ('Gabriela', 'gabriela@example.com', 'senha123');
INSERT INTO Usuarios (nome, email, senha) VALUES ('Phelipe Cezario', 'phelipe.cezario@example.com', 'senha123');
INSERT INTO Usuarios (nome, email, senha) VALUES ('Letícia Souza', 'leticia.souza@example.com', 'senha123');
INSERT INTO Usuarios (nome, email, senha) VALUES ('João Miguel', 'joao.miguel@example.com', 'senha123');
INSERT INTO Usuarios (nome, email, senha) VALUES ('Julia Nascimento', 'julia.nascimento@example.com', 'senha123');
