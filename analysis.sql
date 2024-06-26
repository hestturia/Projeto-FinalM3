-- Phelipe Cezario
-- Análise: Número de Distrações por Usuários
SELECT usuario_id, COUNT(*) as total_distracoes
FROM Distracoes
GROUP BY usuario_id;

-- Análise: Distrações mais frequentes
SELECT app_site, COUNT(*) as total_ocorrencias
FROM Distracoes
GROUP BY app_site
ORDER BY total_ocorrencias DESC;

-- Análise: Metas completas por Usuário
SELECT usuario_id, COUNT(*) as metas_completas
FROM Metas
WHERE status = 'completo'
GROUP BY usuario_id;

-- júlia nascimento 
-- Última Utilização de Ferramentas de Estudo
SELECT usuario_id, MAX(ultima_utilizacao) as ultima_utilizacao
FROM FerramentasEstudo
GROUP BY usuario_id;

-- Projetos Concluídos por Usuário
SELECT usuario_id, COUNT(*) as projetos_concluidos
FROM Projetos
WHERE status = 'concluído'
GROUP BY usuario_id;

-- Metas por status
SELECT status, COUNT(*) as total_metas
FROM Metas
GROUP BY status;

-- João Pedro
-- Média de tempo gasto por Matéria
SELECT materia, AVG(tempo_gasto) as media_tempo_gasto
FROM SessaoEstudos
GROUP BY materia;

-- Número de cronogramas por Usuário
SELECT usuario_id, COUNT(*) as total_cronogramas
FROM Cronogramas
GROUP BY usuario_id;

-- Anotações por usuário
SELECT usuario_id, COUNT(*) as total_anotacoes
FROM AnotacoesGerais
GROUP BY usuario_id;

-- Letícia Souza
-- Ferramentas de estudos mais usadas
SELECT app_site, COUNT(*) as total_uso
FROM FerramentasEstudo
GROUP BY app_site
ORDER BY total_uso DESC;

-- Total de Sessões de Estudos por Matéria
SELECT materia, COUNT(*) as total_sessoes
FROM SessaoEstudos
GROUP BY materia;

-- Tempo gasto com Estudos por Usuários
SELECT usuario_id, SUM(tempo_gasto) as total_tempo_gasto
FROM SessaoEstudos
GROUP BY usuario_id;

-- Gabriela Reis 
-- Quantidade de Distrações por Tipo (App ou Site) para Cada Usuário
SELECT usuario_id, app_site, COUNT(*) as total_distractions
FROM Distracoes
GROUP BY usuario_id, app_site;

-- Total de alertas enviados por Mês
SELECT DATE_FORMAT(data_alerta, '%Y-%m') as mes, COUNT(*) as total_alertas
FROM Alertas
GROUP BY DATE_FORMAT(data_alerta, '%Y-%m')
ORDER BY mes;

-- Usuários com o Maior Número de Ferramentas de Estudo Utilizadas
SELECT usuario_id, COUNT(DISTINCT app_site) as total_ferramentas
FROM FerramentasEstudo
GROUP BY usuario_id
ORDER BY total_ferramentas DESC;

-- Joao Miguel
-- Usuário com maior número de Sessão de Estudos
SELECT usuario_id, COUNT(*) AS total_sessoes
FROM SessaoEstudos
GROUP BY usuario_id
ORDER BY total_sessoes DESC;

-- Números de Metas concluídas por mês
SELECT MONTH(data_alvo) AS mes, COUNT(*) AS metas_concluidas
FROM Metas
WHERE status = 'completo'
GROUP BY mes
ORDER BY mes;

-- Ferramentas de Estudos mais usadas recentemente
SELECT usuario_id, app_site, MAX(ultima_utilizacao) AS ultima_utilizacao
FROM FerramentasEstudo
GROUP BY usuario_id, app_site
ORDER BY ultima_utilizacao DESC;
