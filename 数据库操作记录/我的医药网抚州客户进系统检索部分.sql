select * from zhiydoc where dzycode like 'KF%' order by dzycode desc


select z.dzycode,z.dwmqch,m.city,m.* from zhiydoc z left join mchk m on z.dwmqch=m.dwmch where m.city like 'ИЇжн%'




select * from zhiydoc where dzyid = 'ZIY00007959'