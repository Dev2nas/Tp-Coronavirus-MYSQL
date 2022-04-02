CREATE OR REPLACE VIEW STATISTIC AS 
SELECT COUNT(distinct idPersonne)nb, case 
WHEN round((to_date(sysdate) - to_date(dateNaissance))/365,0)BETWEEN 20 AND 34 THEN '[20-34]'
WHEN round((to_date(sysdate) - to_date(dateNaissance))/365,0)BETWEEN 35 AND 49 THEN '[35-49]'
WHEN round((to_date(sysdate) - to_date(dateNaissance))/365,0)BETWEEN 50 AND 74 THEN '[50-74]'
WHEN round((to_date(sysdate) - to_date(dateNaissance))/365,0)BETWEEN 75 AND 95 THEN '[75-95]'
end tranche
FROM TRAITEMENT WHERE etatsante='gueri'
GROUP BY
case 
WHEN round((to_date(sysdate) - to_date(dateNaissance))/365,0)BETWEEN 20 AND 34 THEN '[20-34]'
WHEN round((to_date(sysdate) - to_date(dateNaissance))/365,0)BETWEEN 35 AND 49 THEN '[35-49]'
WHEN round((to_date(sysdate) - to_date(dateNaissance))/365,0)BETWEEN 50 AND 74 THEN '[50-74]'
WHEN round((to_date(sysdate) - to_date(dateNaissance))/365,0)BETWEEN 75 AND 95 THEN '[75-95]'
end
ORDER BY 1 DESC;