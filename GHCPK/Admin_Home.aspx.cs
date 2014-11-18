using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using GHCPK_BAL;
using System.Collections;
using System.IO;

public partial class Admin_Home : System.Web.UI.Page
{
    public string sessionUser = null;
    public string sessinName = null;
    DateTime current_date = DateTime.Now;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["user"] == null)
        {
            Response.Redirect("~/login.aspx");
        }
        else
        {
            sessionUser = Session["user"].ToString();
            sessinName = Session["Name"].ToString();
        }

        lbl_login.Text = sessinName;
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


        DataTable dt_images = new DataTable();
        dt_images = GHCPK_BAL.Porfolio.GetImage();
        ListView3.DataSource = dt_images;
        ListView3.DataBind();


    }
}