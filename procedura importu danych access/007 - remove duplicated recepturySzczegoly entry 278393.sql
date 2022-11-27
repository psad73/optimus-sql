select count(*) as cnt, rs.recSzczid from recepturySzczegoly rs group by rs.recSzczid order by cnt desc, recSzczid asc
select * FROM recepturySzczegoly WHERE recSzczid = 278393;
select * FROM recepturySzczegoly WHERE recSzczid = 299395;
select * FROM recepturySzczegoly WHERE recSzczid = 299396;
select * FROM recepturySzczegoly WHERE recSzczid = 299397;
select * FROM recepturySzczegoly WHERE recSzczid = 299398;
select * FROM recepturySzczegoly WHERE recSzczid = 299399;

DELETE FROM recepturySzczegoly WHERE recSzczid = 278393 and SSMA_TimeStamp = (select max(SSMA_TimeStamp) FROM recepturySzczegoly WHERE recSzczid = 278393);
DELETE FROM recepturySzczegoly WHERE recSzczid = 299395 and SSMA_TimeStamp = (select max(SSMA_TimeStamp) FROM recepturySzczegoly WHERE recSzczid = 299395);
DELETE FROM recepturySzczegoly WHERE recSzczid = 299396 and SSMA_TimeStamp = (select max(SSMA_TimeStamp) FROM recepturySzczegoly WHERE recSzczid = 299396);
DELETE FROM recepturySzczegoly WHERE recSzczid = 299397 and SSMA_TimeStamp = (select max(SSMA_TimeStamp) FROM recepturySzczegoly WHERE recSzczid = 299397);
DELETE FROM recepturySzczegoly WHERE recSzczid = 299398 and SSMA_TimeStamp = (select max(SSMA_TimeStamp) FROM recepturySzczegoly WHERE recSzczid = 299398);
DELETE FROM recepturySzczegoly WHERE recSzczid = 299399 and SSMA_TimeStamp = (select max(SSMA_TimeStamp) FROM recepturySzczegoly WHERE recSzczid = 299399);