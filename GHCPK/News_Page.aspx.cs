using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;

public partial class News_Page : System.Web.UI.Page
{
    // static string ConStr = "Data Source=Tariq-nb;Initial Catalog=OCFS;Integrated Security=True";
    protected void Page_Load(object sender, EventArgs e)
    {

        //For News
        DataTable dt = new DataTable();
        dt = GHCPK_BAL.News.GetAllNews();
        ListView1.DataSource = dt;
        ListView1.DataBind();


        //For Event
        DataTable dt2 = new DataTable();
        dt2 = GHCPK_BAL.Events.GetAllEvents();
        ListView2.DataSource = dt2;
        ListView2.DataBind();

        //For Gallary
        //DataTable dt3 = new DataTable();
        //dt3 = GHCPK_BAL.Porfolio.GetImage();
        //ListView3.DataSource = dt3;
        //ListView3.DataBind();

       // DataTable dt_Copy = new DataTable();
       // int i = 0;
       // foreach (DataRow dr in dt3.Rows)
       // {
       //     if (i == 0)
       //     { }
       //     else
       //     {
       //        // dt_Copy.Rows.Add(dr.ItemArray);
       //         dt_Copy.Rows.Add(dt3.Rows[i]);
       //       //  dt_Copy.ImportRow(dr);
       //     }
       //     i++;
       // }
       //// ListView4
       // ListView4.DataSource = dt_Copy;
       // ListView4.DataBind();

    }

}