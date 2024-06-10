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
