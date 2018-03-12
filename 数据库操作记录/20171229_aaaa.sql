use aaaa


select * from pf_ckhz where djbh = 'XSAZDA00931658'

select * from pf_ckmx where djbh = 'XSAZDA00931658'


select * from mchk where dwbh = 'DWI00023511'

select * from zhiydoc where dzyid = 'ZIY00001038'


select * from sphwph where hw = 'HWI00000027' and pihao = 'JHAZDA00097464_2¡î1708079'

select * from spkfk where spid = 'SPH00037440'


insert into aaaa.dbo.sphwph select * from ksoa.dbo.sphwph a where a.hw = 'HWI00000027' and pihao = 'JHAZDA00097464_2¡î1708079'

update mchk set province = '½­Î÷Ê¡' where dwbh = 'DWI00023511'
