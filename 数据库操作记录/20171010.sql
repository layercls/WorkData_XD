use ksoa;

--select top 10 * from spkfk where spbh = 'zy002386'

--update zhiydoc set rszht = '�ͻ�' where dzycode like 'KF%'

update zhiydoc set rszht = '��' where dzyname = '��Ҷ��1'



select dzyname,rszht from zhiydoc where dzycode like 'zjb%' order by dzyid
