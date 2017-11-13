use ksoa;

select * from spkfk where spid in (select spid from sphwph where hw = 'HWI00000007') and xsshlv=17 and spsx = 'ÖÐÒ©' order by denglrq desc

select * from spkfk where dw = 'kg' and xsshlv =13 and spmch not like '%°¢½º%' and beactive = 'ÊÇ'
 
select distinct(spmch) from spkfk where dw = 'kg' and xsshlv =13 and spmch not like '%°¢½º%' and beactive = 'ÊÇ'

update spkfk set xsshlv = 11 where dw = 'kg' and xsshlv =13 and spmch not like '%°¢½º%' and beactive = 'ÊÇ'