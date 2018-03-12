SELECT  	
				ywz.ywzu,
				a.spid AS g_in_sn,
        a.spbh AS g_sn,
        a.sptm AS g_bar_code,
        a.spmch AS g_name,
        a.zjm AS g_name_code,
        a.tongym AS g_alias,
        a.pizhwh AS g_license_no,
        a.shpgg AS g_specifications,
        a.dw AS g_unit,
        a.jlgg AS g_big_package,
        a.shengccj AS g_manufacture,
        '' AS g_manufacture_code,
        0 AS g_price,
        b.shja AS g_base_price,
        0 AS g_cost_price,
        a.leibie AS g_purview,
        '' AS g_can_split,
        '' AS g_order_cate,
        0 AS g_area,
        0 AS g_control,
        1 AS g_status
FROM    dbo.spkfk a 
LEFT JOIN (select DISTINCT c.spbh,b.spid,b.shja
from xsjgtzhz a,xsjgtzmx b,spkfk c,
(select b.spid, max(a.djbh)djbh from xsjgtzhz a,xsjgtzmx b 
where a.djbh=b.djbh and a.djlx like 'X06%'
group by spid)f
where a.djbh=b.djbh and b.spid=c.spid and f.spid=b.spid and f.djbh=b.djbh
and c.beactive='是' and a.djlx like 'X06%') b on a.spbh =b.spbh
LEFT JOIN (select spid,sum(shl) as shl from sphwph where shl>0 GROUP BY spid) c on a.spid=c.spid
LEFT JOIN (select sum(sphwph.shl) as kcshl,sphwph.spid,ncsk_pici.ywzu 
				from sphwph (nolock),huoweizl (nolock),ncsk_pici (nolock)
				where sphwph.hw = huoweizl.hw and huoweizl.duifbsh = 'ZDA' and huoweizl.is_bxiaos<>'是' and huoweizl.hw not in ('HWI00000002','HWI00000005','HWI00000006','HWI00000007','HWI00000018','HWI00000032','HWI00000034','HWI00000038','HWI00000044','HWI00000046','HWI00000052','HWI00000056')
                  and ncsk_pici.pici = substring(sphwph.pihao,1,charindex('☆',sphwph.pihao)-1) and ncsk_pici.ywzu = '业务一部'
                group by sphwph.spid,ncsk_pici.ywzu) ywz on a.spid=ywz.spid
WHERE   beactive='是' and leibie not like '含麻黄碱制剂' and b.shja >0 and a.shengccj not like  '' and  a.dw not like  ''
and c.shl>0 and a.pizhwh not like '' and ywz.ywzu ='业务一部'