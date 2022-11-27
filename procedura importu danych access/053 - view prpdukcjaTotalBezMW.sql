create view prpdukcjaTotalBezMW AS
SELECT 
	distinct produkcja.id, 
	produkcjaSzczegoly.ilosc, 
	produkcjaSzczegoly.szarza, 
	Round([produkcjaSzczegoly].[ilosc]*[produkcjaSzczegoly].[szarza],2) AS iloscKG, 
	receptury.nazwaReceptury
FROM (produkcja INNER JOIN produkcjaSzczegoly ON produkcja.[id] = produkcjaSzczegoly.[idProdukcji]) INNER JOIN receptury ON produkcjaSzczegoly.recepturaID = receptury.recID
WHERE (receptury.nazwaReceptury Not Like 'MW%');