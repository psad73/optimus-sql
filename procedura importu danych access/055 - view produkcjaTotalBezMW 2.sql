
create view [produkcjaTotalBezMW 2] AS
SELECT 
	produkcjaTotalBezMW.id AS tid, 
	Sum(produkcjaTotalBezMW.iloscKG) AS [Suma Of iloscKG]
FROM 
	produkcjaTotalBezMW
GROUP BY produkcjaTotalBezMW.id;