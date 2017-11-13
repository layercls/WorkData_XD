use liukaaaa
--select top 1 * from pf_ckmx

select b.spmch,b.shpgg,a.pihao,a.ml from 
pf_ckmx a,spkfk b
where a.spid = b.spid
and a.ml < 0 order by a.rq