

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
    
INSERT INTO Cronogramas (usuario_id, data_inicio, data_fim) 
    VALUES (4, '2024-04-01', '2024-04-30');

INSERT INTO Cronogramas (usuario_id, data_inicio, data_fim) 
    VALUES (5, '2024-05-01', '2024-05-31');

INSERT INTO Cronogramas (usuario_id, data_inicio, data_fim) 
    VALUES (6, '2024-06-01', '2024-06-30');


--  Inserções na tabela Sessão de Estudos
INSERT INTO SessaoEstudos (usuario_id, cronograma_id, materia, tempo_gasto, notas) 
	VALUES (1, 1, 'Matemática', 120, 'Estudo sobre álgebra linear');

INSERT INTO SessaoEstudos (usuario_id, cronograma_id, materia, tempo_gasto, notas) 
	VALUES (2, 2, 'Física', 90, 'Estudo sobre mecânica clássica');

INSERT INTO SessaoEstudos (usuario_id, cronograma_id, materia, tempo_gasto, notas) 
	VALUES (3, 3, 'Química', 60, 'Estudo sobre reações químicas');

  INSERT INTO SessaoEstudos (usuario_id, cronograma_id, materia, tempo_gasto, notas) 
    VALUES (4, 4, 'História', 45, 'Estudo sobre a Revolução Francesa');

INSERT INTO SessaoEstudos (usuario_id, cronograma_id, materia, tempo_gasto, notas) 
    VALUES (5, 5, 'Geografia', 30, 'Estudo sobre formação de relevo');

INSERT INTO SessaoEstudos (usuario_id, cronograma_id, materia, tempo_gasto, notas) 
    VALUES (6, 6, 'Biologia', 75, 'Estudo sobre genética');


-- inserções da tabela de distrações 
INSERT INTO Distracoes (usuario_id, app_site, data_bloqueio)
  VALUES (1, 'Facebook', '2024-05-01 10:00:00');
 
INSERT INTO Distracoes (usuario_id, app_site, data_bloqueio) 
  VALUES (2, 'Instagram', '2024-05-02 11:00:00');

INSERT INTO Distracoes (usuario_id, app_site, data_bloqueio) 
  VALUES (3, 'YouTube', '2024-05-03 12:00:00');

INSERT INTO Distracoes (usuario_id, app_site, data_bloqueio) 
    VALUES (4, 'Twitter', '2024-05-04 13:00:00');

INSERT INTO Distracoes (usuario_id, app_site, data_bloqueio) 
    VALUES (5, 'Reddit', '2024-05-05 14:00:00');

INSERT INTO Distracoes (usuario_id, app_site, data_bloqueio) 
    VALUES (6, 'Netflix', '2024-05-06 15:00:00');


  -- Inserções na tabela Metas
  INSERT INTO Metas (usuario_id, descricao, data_alvo, status) 
        VALUES (1, 'Completar o curso de álgebra', '2024-06-01', 'em progresso');

INSERT INTO Metas (usuario_id, descricao, data_alvo, status) 
        VALUES (2, 'Ler o livro de física', '2024-07-01', 'incompleto');

INSERT INTO Metas (usuario_id, descricao, data_alvo, status) 
        VALUES (3, 'Terminar o projeto de química', '2024-08-01', 'completo');

INSERT INTO Metas (usuario_id, descricao, data_alvo, status) 
    VALUES (4, 'Ler 5 livros de história', '2024-06-15', 'em progresso');

INSERT INTO Metas (usuario_id, descricao, data_alvo, status) 
    VALUES (5, 'Completar curso de geografia online', '2024-07-20', 'incompleto');

INSERT INTO Metas (usuario_id, descricao, data_alvo, status) 
    VALUES (6, 'Realizar experimento de biologia', '2024-08-10', 'completo');


--Inserções na tabela Alertas
INSERT INTO Alertas (usuario_id, mensagem, data_alerta) 
        VALUES (1, 'Estudar para a prova de matemática', '2024-05-10 08:00:00');

INSERT INTO Alertas (usuario_id, mensagem, data_alerta) 
        VALUES (2, 'Entrega do trabalho de física', '2024-05-11 09:00:00');

INSERT INTO Alertas (usuario_id, mensagem, data_alerta) 
        VALUES (3, 'Reunião do grupo de química', '2024-05-12 10:00:00');

INSERT INTO Alertas (usuario_id, mensagem, data_alerta) 
        VALUES (4, 'Estudar para a prova de história', '2024-05-14 11:00:00');

INSERT INTO Alertas (usuario_id, mensagem, data_alerta) 
        VALUES (5, 'Entrega do trabalho de geografia', '2024-05-15 12:00:00');

INSERT INTO Alertas (usuario_id, mensagem, data_alerta) 
        VALUES (6, 'Reunião do grupo de biologia', '2024-05-16 13:00:00');

-- Inserções na tabela FerramentasEstudo
INSERT INTO FerramentasEstudo (usuario_id, app_site, biblioteca, tipo, ultima_utilizacao) 
        VALUES (1, 'Khan Academy', 'Matemática Avançada','site','2024-05-01 15:00:00');

INSERT INTO FerramentasEstudo (usuario_id, app_site, biblioteca, tipo, ultima_utilizacao) 
        VALUES (2, 'Coursera', 'Física Teórica', 'app','2024-05-02 16:00:00');

INSERT INTO FerramentasEstudo (usuario_id, app_site, biblioteca, tipo, ultima_utilizacao) 
        VALUES (3, 'edX', 'Química Orgânica', 'site', '2024-05-03 17:00:00');

INSERT INTO FerramentasEstudo (usuario_id, app_site, biblioteca, tipo, ultima_utilizacao) 
        VALUES (4, 'Duolingo', 'Aprendizado de idiomas', 'app', '2024-05-04 14:00:00');

INSERT INTO FerramentasEstudo (usuario_id, app_site, biblioteca, tipo, ultima_utilizacao) 
        VALUES (5, 'Quizlet', 'Flashcards de geografia', 'site', '2024-05-05 15:00:00');

INSERT INTO FerramentasEstudo (usuario_id, app_site, biblioteca, tipo, ultima_utilizacao) 
        VALUES (6, 'Wolfram Alpha', 'Ferramenta de biologia', 'site', '2024-05-06 16:00:00');


-- Inserções na tabela Projetos
INSERT INTO Projetos (usuario_id, data_fim, descricao, status) 
        VALUES (1, '2024-09-01', 'Projeto de pesquisa em matemática', 'em andamento');

INSERT INTO Projetos (usuario_id, data_fim, descricao, status) 
        VALUES (2, '2024-10-01', 'Projeto de física aplicada', 'concluído');

INSERT INTO Projetos (usuario_id, data_fim, descricao, status) 
        VALUES (3, '2024-11-01', 'Projeto de química experimental', 'em andamento');

INSERT INTO Projetos (usuario_id, data_fim, descricao, status) 
        VALUES (4, '2024-12-01', 'Projeto de história moderna', 'em andamento');

INSERT INTO Projetos (usuario_id, data_fim, descricao, status) 
        VALUES (5, '2024-11-01', 'Projeto de cartografia', 'concluído');

INSERT INTO Projetos (usuario_id, data_fim, descricao, status) 
        VALUES (6, '2024-10-01', 'Projeto de biotecnologia', 'em andamento');


-- Inserções na tabela Anotações Gerais
INSERT INTO AnotacoesGerais (usuario_id, anotacao, data_criacao) 
        VALUES (1, 'Nota sobre teoria dos conjuntos', '2024-11-01');

INSERT INTO AnotacoesGerais (usuario_id, anotacao, data_criacao) 
        VALUES (2, 'Nota sobre leis de Newton', '2024-05-02');

INSERT INTO AnotacoesGerais (usuario_id, anotacao, data_criacao) 
        VALUES (3, 'Nota sobre estequiometria', '2024-05-03');

INSERT INTO AnotacoesGerais (usuario_id, anotacao, data_criacao, ultima_modificacao) 
        VALUES (4, 'Nota sobre Guerra Fria', '2024-05-01', '2024-05-01 14:00:00');

INSERT INTO AnotacoesGerais (usuario_id, anotacao, data_criacao, ultima_modificacao) 
        VALUES (5, 'Nota sobre tectônica de placas', '2024-05-02', '2024-05-02 15:00:00');

INSERT INTO AnotacoesGerais (usuario_id, anotacao, data_criacao, ultima_modificacao) 
        VALUES (6, 'Nota sobre evolução das espécies', '2024-05-03', '2024-05-03 16:00:00');
