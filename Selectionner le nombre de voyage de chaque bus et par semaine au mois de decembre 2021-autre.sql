SELECT COUNT(idbus)nbr,idbus Semaine FROM (
    SELECT idbus, 'semaine1' as semaine1
    FROM Vayager WHERE dateDep between '01/12/21' AND '07/12/21'
    UNION
    SELECT idbus, 'semaine2' as semaine2
    FROM Vayager WHERE dateDep between '08/12/21' AND '14/12/21'
    UNION
    SELECT idbus, 'semaine3' as semaine3
    FROM Vayager WHERE dateDep between '15/12/21' AND '21/12/21'
    UNION
    SELECT idbus, 'semaine4' as semaine4
    FROM Vayager WHERE dateDep between '22/12/21' AND '31/12/21'
    between '22/12/21' AND '31/12/21'
    GROUP BY idbus,semaine;
)