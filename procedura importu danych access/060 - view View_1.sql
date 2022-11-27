CREATE VIEW dbo.View_1
AS
SELECT        dbo.produkcja.id AS produkcja_id, dbo.produkcja.wyrobID, dbo.produkcja.ilosc AS produkcja_ilosc, dbo.produkcja.iloscWyprodukowano, dbo.produkcja.dataZlecenia, dbo.produkcja.dataProdukcji, 
                         dbo.produkcja.holdingID, dbo.produkcja.klientID, dbo.produkcja.wprowadzil, dbo.produkcja.nadzorProdukcyjny, dbo.produkcja.realizacjaStatus, dbo.produkcja.uwagi, dbo.produkcja.typProdukcji, 
                         dbo.produkcja.seria, dbo.firmy.nazwaFirmySkrocona, dbo.produkcja.nrPZP
FROM            dbo.produkcja INNER JOIN
                         dbo.firmy ON dbo.produkcja.holdingID = dbo.firmy.firID