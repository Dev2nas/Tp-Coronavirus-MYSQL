SELECT COUNT(*)nbr ,
    when dateDep between '01/12/21' AND '07/12/21' then 'Semaine1'
        when dateDep between '08/12/21' AND '14/12/21' then 'Semaine2'
            when dateDep between '15/12/21' AND '21/12/21' then 'Semaine3'
                when dateDep between '22/12/21' AND '31/12/21' then 'Semaine4' end Semaine
                        FROM B ,Vayager V WHERE  B.idbus=V.idbus
                        GROUP BY B.idbus 
