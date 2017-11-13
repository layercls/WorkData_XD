use ksoa;
select dzyname,dzycode,rszht from zhiydoc order by dzyid

select dzycode,dzyname,rszht from zhiydoc where dzycode not like 'KF%' and dzycode not like 'XS%' and dzycode not like 'cwb%' and dzycode not like 'czb%' and dzycode not like 'cgb%' and dzycode not like 'zlb%' and dzycode not like 'zy%'
 and dzycode not like 'swb%' and dzycode not like 'zjb%' and dzycode not in ('¡¤','Z','aaa')


select * from zhiydoc where dzyname = '8'