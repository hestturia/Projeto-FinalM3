--Phelipe Cezario
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

-- júlia nascimento 
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

--joao miguel
--Média de tempo gasto por Matéria
SELECT materia, AVG(tempo_gasto) as media_tempo_gasto
FROM SessaoEstudos
GROUP BY materia;