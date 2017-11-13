use ksoa;

--select top 10 * from spkfk where spbh = 'zy002386'

--update zhiydoc set rszht = '¿Í»§' where dzycode like 'KF%'

update zhiydoc set rszht = '·ñ' where dzyname = '³ÂÒ¶ºì1'



select dzyname,rszht from zhiydoc where dzycode like 'zjb%' order by dzyid
