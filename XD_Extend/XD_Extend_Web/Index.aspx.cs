using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

using System.Data.SqlClient;

namespace XD_Extend_Web
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void Button_Click_Click(object sender, EventArgs e)
        {
            SqlConnection _con = new SqlConnection();
            _con.ConnectionString = "Data Source=192.168.0.90;Initial Catalog=ksoa;User ID=sa;Password=";
            SqlCommand _com = new SqlCommand();
            _com.Connection = _con;



            string sql = @"select a.rq,a.djbh,b.danwbh,b.dwmch,a.bm,a.ywy,a.username,a.is_ytb,case a.is_ytb when '是' then (select top 1 djbh FROM pf_ckhz (nolock) WHERE kpdh=a.djbh and djbh like 'xsA%')  
                            else '' end  as 财务复核, case a.is_ytb when '是' then (select top 1 djbh FROM pf_djmx (nolock) WHERE xgdjbh=a.djbh and djbh like 'xsv%')  else '' end  as 退补开票, case a.is_ytb when '是' then 
                            (select top 1 shenhe FROM jzorder_hz (nolock) WHERE kpdh =a.djbh and djbh like 'xsv%')  else '' end  as 退补审核,  case a.is_ytb when '是' then (select top 1 djbh FROM pf_ckhz (nolock) WHERE kpdh =a.djbh 
                            and djbh like 'xsb%')  else '' end  as 退补执行,case a.is_ytb when '是' then (SELECT top 1 lastmodifytime from sys_rptlog(nolock) WHERE id=(select top 1 djbh FROM pf_ckhz (nolock) WHERE kpdh=a.djbh 
                            and djbh like 'xsA%') and  faid='xsck_tbqdjz') else '' end  as 打印时间 from pf_djhz a(nolock),mchk b(nolock)  where a.dwbh= b.dwbh and a.is_ytb = '是' and a.djbs='XSG'  and a.rq>='2018-02-07' and a.rq<='2018-02-07' 
                            order by a.djbh";

            _com.CommandText = sql;

            SqlDataAdapter _sd = new SqlDataAdapter();
            _sd.SelectCommand = _com;
            DataSet ds = new DataSet();
            _sd.Fill(ds, "neirong");
            GridView1.DataSource = ds.Tables["neirong"].DefaultView;
            GridView1.DataBind();

        }
    }
}
