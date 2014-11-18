using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;
using System.Configuration;
using System.IO;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            GHCPK_DAL.DAL.connectionString = ConfigurationManager.AppSettings["GHCPKConnectionString"];

            //For News
            DataTable dt = new DataTable();
            dt = GHCPK_BAL.News.GetAllNews();
            WriteLog("1");
            ListView1.DataSource = dt;
            ListView1.DataBind();
            WriteLog(dt.Rows.Count.ToString());

            //For Event
            DataTable dt2 = new DataTable();
            dt2 = GHCPK_BAL.Events.GetAllEvents();
            ListView2.DataSource = dt2;
            ListView2.DataBind();

            DataTable dt_images = new DataTable();
            dt_images = GHCPK_BAL.Porfolio.GetImage();
            ListView3.DataSource = dt_images;
            ListView3.DataBind();



            HttpContext.Current.Session.Abandon();

            Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetNoStore();
        }
        catch (Exception ex)
        {
            WriteLog(ex.Message);
        }

        //  HttpContext.Current.Response.Redirect("Home.aspx");
    }

    public void WriteLog(String Log)
    {

        StreamWriter LogWriter = new StreamWriter(HttpContext.Current.Server.MapPath("~/") + "Log.txt", true);
        LogWriter.WriteLine(System.DateTime.Now.ToString() + " --- " + Log);
        LogWriter.Close();
    }
}