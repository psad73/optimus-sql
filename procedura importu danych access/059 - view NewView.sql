CREATE VIEW dbo.NewView AS
SELECT kjSurowce1.id, concat(kjSurowce1.id,  '/', Year([dataBadania])) AS nrKJ, firmy.nazwaFirmySkrocona AS holding, 
kjSurowce1.nazwaSurowca, kjSurowce1.nazwaDostawcy, kjSurowce1.wielkoscOpakowania, kjSurowce1.nrSerii, kjSurowce1.dataProdukcji, 
kjSurowce1.dataWaznosci, kjSurowce1.certyfikatJakosci, kjSurowce1.zgodCertZeSpec, kjSurowce1.stanHigOpak, kjSurowce1.oznakowanie, 
kjSurowce1.pobranoProbe, kjSurowce1.granulacja, kjSurowce1.zbrylenie, kjSurowce1.wilgotnosc, kjSurowce1.rozpuszczalnoscH2O, 
kjSurowce1.dopuszczonoDoProdukcji, kjSurowce1.dataBadania, kjSurowce1.uwagi, kjSurowce1.iloscRzeczywista, 
kjSurowce1.cert, kjSurowce1.nrDokumentuPZ
FROM firmy INNER JOIN kjSurowce1 ON firmy.firID = kjSurowce1.holdingID;