use ksoa;

select * from spkfk where spid in (select spid from sphwph where hw = 'HWI00000007') and xsshlv=17 and spsx = '��ҩ' order by denglrq desc

select * from spkfk where dw = 'kg' and xsshlv =13 and spmch not like '%����%' and beactive = '��'
 
select distinct(spmch) from spkfk where dw = 'kg' and xsshlv =13 and spmch not like '%����%' and beactive = '��'

update spkfk set xsshlv = 11 where dw = 'kg' and xsshlv =13 and spmch not like '%����%' and beactive = '��'