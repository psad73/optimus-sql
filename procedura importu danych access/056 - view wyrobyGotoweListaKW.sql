-- dbo.wyrobyGotoweListaKW source

CREATE view wyrobyGotoweListaKW as 
SELECT 
	dbo.materialy.matID, 
	dbo.sposobyPakowania.matID as sposPakMatId, 
	CONCAT(fm.tls, ' ', dbo.materialy.grupaMaterialu, REPLICATE('0', 4 - LEN(dbo.materialy.matID)), dbo.materialy.matID) AS kodProduktu, 
	dbo.materialy.firID, 
	dbo.materialy.nazwa, 
	dbo.materialy.rodzajMaterialu AS Wyr1, 
	dbo.materialy.jedn, 
	dbo.materialy.jKalk, 
	dbo.materialy.wJedn, 
	dbo.materialy.recSurowceID, 
	dbo.sposobyPakowania.sMatID
FROM            
	dbo.materialy RIGHT OUTER JOIN
	dbo.sposobyPakowaniaLista INNER JOIN
	dbo.sposobyPakowania ON dbo.sposobyPakowaniaLista.id = dbo.sposobyPakowania.sposobPakowania ON dbo.materialy.matID = dbo.sposobyPakowania.matID LEFT OUTER JOIN
	dbo.firmy AS fm ON dbo.materialy.firID = fm.firID
WHERE 
	(dbo.materialy.rodzajMaterialu LIKE '%Wyrób gotowy%') OR
    (dbo.materialy.rodzajMaterialu LIKE '%Pó³produkt%');