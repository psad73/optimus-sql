select count(*) as cnt, id from materialyKJ group by id order by cnt desc;
select * from materialyKJ WHERE id = 32863;
select * from materialyKJ where SSMA_TimeStamp = (select max(SSMA_TimeStamp) from materialyKJ where id = 32863);
delete from materialyKJ where SSMA_TimeStamp = (select max(SSMA_TimeStamp) from materialyKJ where id = 32863);