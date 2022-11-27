CREATE VIEW dbo.produkcjaTotal
AS
SELECT DISTINCT dbo.produkcja.id, dbo.produkcjaSzczegoly.ilosc, dbo.produkcjaSzczegoly.szarza, ROUND(dbo.produkcjaSzczegoly.ilosc * dbo.produkcjaSzczegoly.szarza, 2) AS iloscKG
FROM            dbo.produkcja INNER JOIN
                         dbo.produkcjaSzczegoly ON dbo.produkcja.id = dbo.produkcjaSzczegoly.idProdukcji;