-- dbo.zamowieniaKW2 source

CREATE VIEW zamowieniaKW2 AS
SELECT zamowieniaKW1.id, zamowieniaKW1.holdingID, zamowieniaKW1.dostawcaID, zamowieniaKW1.dataZamowienia, zamowieniaKW1.status, zamowieniaKW1.uwagi, zamowieniaKW1.wprowadzil, zamowieniaKW1.dataRealizacji, zamowieniaKW1.holdingNazwa, firmy.nazwaFirmySkrocona AS dostawcaNazwa, zamowieniaKW1.media, zamowieniaKW1.wyeksportowano
FROM zamowieniaKW1 INNER JOIN firmy ON zamowieniaKW1.dostawcaID = firmy.firID;