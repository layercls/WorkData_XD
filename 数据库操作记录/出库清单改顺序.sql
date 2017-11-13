use ksoa;


select b.spmch,a.* from pf_ckmx a,spkfk b where a.spid = b.spid and djbh = 'XSAZDA00548442'

-----------*空出第9-15位
--update pf_ckmx set dj_sn = 32,dj_sort = 32 where djbh = 'XSAZDA00548442' and spid = 'SPH00030093'
--update pf_ckmx set dj_sn = 33,dj_sort = 33 where djbh = 'XSAZDA00548442' and spid = 'SPH00029514'
--update pf_ckmx set dj_sn = 34,dj_sort = 34 where djbh = 'XSAZDA00548442' and spid = 'SPH00029268'
--update pf_ckmx set dj_sn = 35,dj_sort = 35 where djbh = 'XSAZDA00548442' and spid = 'SPH00029471'
--update pf_ckmx set dj_sn = 36,dj_sort = 36 where djbh = 'XSAZDA00548442' and spid = 'SPH00029870'
--update pf_ckmx set dj_sn = 37,dj_sort = 37 where djbh = 'XSAZDA00548442' and spid = 'SPH00028924'
--update pf_ckmx set dj_sn = 38,dj_sort = 38 where djbh = 'XSAZDA00548442' and spid = 'SPH00029547'

-----------*写入第9-15位
--update pf_ckmx set dj_sn = 9,dj_sort = 9 where djbh = 'XSAZDA00548442' and spid = 'SPH00029742'
--update pf_ckmx set dj_sn = 10,dj_sort = 10 where djbh = 'XSAZDA00548442' and spid = 'SPH00029684'
--update pf_ckmx set dj_sn = 11,dj_sort = 11 where djbh = 'XSAZDA00548442' and spid = 'SPH00029431'
--update pf_ckmx set dj_sn = 12,dj_sort = 12 where djbh = 'XSAZDA00548442' and spid = 'SPH00029400'
--update pf_ckmx set dj_sn = 13,dj_sort = 13 where djbh = 'XSAZDA00548442' and spid = 'SPH00029471'
--update pf_ckmx set dj_sn = 14,dj_sort = 14 where djbh = 'XSAZDA00548442' and spid = 'SPH00029870'
--update pf_ckmx set dj_sn = 15,dj_sort = 15 where djbh = 'XSAZDA00548442' and spid = 'SPH00029831'


-------------*还原空缺位
--update pf_ckmx set dj_sn = 25,dj_sort = 25 where djbh = 'XSAZDA00548442' and spid = 'SPH00030093'
--update pf_ckmx set dj_sn = 22,dj_sort = 22 where djbh = 'XSAZDA00548442' and spid = 'SPH00029514'
--update pf_ckmx set dj_sn = 29,dj_sort = 29 where djbh = 'XSAZDA00548442' and spid = 'SPH00029268'
--update pf_ckmx set dj_sn = 26,dj_sort = 26 where djbh = 'XSAZDA00548442' and spid = 'SPH00029471'

----update pf_ckmx set dj_sn = 36,dj_sort = 36 where djbh = 'XSAZDA00548442' and spid = 'SPH00029870'
----update pf_ckmx set dj_sn = 37,dj_sort = 37 where djbh = 'XSAZDA00548442' and spid = 'SPH00028924'

--update pf_ckmx set dj_sn = 17,dj_sort = 17 where djbh = 'XSAZDA00548442' and spid = 'SPH00029547'


--update pf_ckmx set dj_sn = 26,dj_sort = 26 where djbh = 'XSAZDA00548442' and spid = 'SPH00028924'