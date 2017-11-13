use ksoa;


--select * from huoweizl

--select * from sphwph where hw = 'HWI00000007'



--SELECT b.xsshlv,zsshlv,b.spbh,b.spmch,a.shl,*  from jh_rkhz c,jh_rkmx a,spkfk b WHERE a.spid=b.spid  and c.djbh=a.djbh and a.hw = 'HWI00000007' and b.xsshlv = '13.00' and b.zsshlv = '13.00'


select b.spmch,b.xsshlv,b.zsshlv,a.* from sphwph a,spkfk b where a.spid=b.spid and a.hw = 'HWI00000007' and b.xsshlv = '11.00' and b.zsshlv = '11.00' order by baozhiqi desc



--update spkfk set xsshlv = '11.00',zsshlv = '11.00' from sphwph a,spkfk b where a.spid=b.spid and a.hw = 'HWI00000007' and b.xsshlv = '13.00' and b.zsshlv = '13.00'
