
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