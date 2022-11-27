select count(*) as cnt, id from produkcjaSzczegoly group by id order by cnt desc;
select * from produkcjaSzczegoly where id = 34373;
-- select max(id)+1 from produkcjaSzczegoly
select * from produkcjaSzczegoly where id = 34373 AND SSMA_TimeStamp = 0x000000000002CC8D;
insert into produkcjaSzczegoly (idProdukcji, recepturaID, ilosc, szarza) select ps2.idProdukcji, ps2.recepturaID, ps2.ilosc, ps2.szarza from produkcjaSzczegoly ps2 WHERE ps2.id = 34373 AND ps2.SSMA_TimeStamp = (select max(SSMA_TimeStamp) from produkcjaSzczegoly where id = 34373);
delete from produkcjaSzczegoly where id = 34373 AND SSMA_TimeStamp = (select max(SSMA_TimeStamp) from produkcjaSzczegoly where id = 34373);
