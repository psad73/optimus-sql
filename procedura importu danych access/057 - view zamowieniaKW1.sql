-- dbo.zamowieniaKW1 source

CREATE VIEW zamowieniaKW1 AS
SELECT 
	zamowienia.id, 
	zamowienia.holdingID, 
	zamowienia.dostawcaID, 
	zamowienia.dataZamowienia, 
	zamowienia.status, 
	zamowienia.uwagi, 
	zamowienia.wprowadzil, 
	zamowienia.dataRealizacji, 
	firmy.nazwaFirmySkrocona AS holdingNazwa, 
	zamowienia.media, 
	zamowienia.wyeksportowano
FROM 
	firmy 
	INNER JOIN zamowienia ON firmy.firID = zamowienia.holdingID;