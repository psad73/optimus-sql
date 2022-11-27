CREATE VIEW dbo.[produkcjaTotal 2]
AS
SELECT        dbo.produkcja.id AS tid, SUM(ROUND(dbo.produkcjaSzczegoly.ilosc * dbo.produkcjaSzczegoly.szarza, 2)) AS [Suma Of iloscKG]
FROM            dbo.produkcja INNER JOIN
                         dbo.produkcjaSzczegoly ON dbo.produkcja.id = dbo.produkcjaSzczegoly.idProdukcji
GROUP BY dbo.produkcja.id;