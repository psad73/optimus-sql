CREATE VIEW dbo.kjSurowce1 AS
SELECT 
	materialyKJ.id, 
	materialyKJ.holdingID, 
	materialy.nazwa AS nazwaSurowca, 
	materialy.rodzajMaterialu AS Wyr1, 
	firmy.nazwaFirmySkrocona AS nazwaDostawcy, 
	materialyKJ.wielkoscOpakowania, 
	materialyKJ.nrSerii, 
	materialyKJ.dataProdukcji, 
	materialyKJ.dataWaznosci, 
	materialyKJ.certyfikatJakosci, 
	materialyKJ.zgodCertZeSpec, 
	materialyKJ.stanHigOpak, 
	materialyKJ.oznakowanie, 
	materialyKJ.pobranoProbe, 
	materialyKJ.granulacja, 
	materialyKJ.zbrylenie, 
	materialyKJ.wilgotnosc, 
	materialyKJ.rozpuszczalnoscH2O, 
	materialyKJ.dopuszczonoDoProdukcji, 
	materialyKJ.dataBadania, 
	materialyKJ.uwagi, 
	materialyKJ.iloscRzeczywista, 
	IIf([certyfikatJakosci] = '0','TAK','NIE') AS cert, 
	materialyKJ.nrDokumentuPZ, 
	materialyKJ.iloscRzeczywista/materialyKJ.wielkoscOpakowania AS liczbaEtykiet
FROM 
	firmy RIGHT JOIN (materialyKJ INNER JOIN materialy ON materialyKJ.matID = materialy.matID) ON firmy.firID = materialyKJ.dostawcaID
WHERE (
	(materialyKJ.iloscRzeczywista>0) AND (materialy.rodzajMaterialu LIKE '%Surowiec%')
	);