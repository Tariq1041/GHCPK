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


public partial class Event_view : System.Web.UI.Page
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
        //if (!IsPostBack)
        //{
        //    if (!string.IsNullOrEmpty(Request.QueryString["ID"]))
        //    {
        //        // lblCaption.Text = "Edit Role";
        //        Load_AllEvent();
        //        Load_Event();

        //    }
        //    else
        //    {
        //        Load_AllEvent();
        //        Load_Event();
        //    }
        //}

        Load_AllEvent();
        Load_Event();
    }


    private void Load_AllEvent()
    {
        DataTable dt = new DataTable();
        dt = GHCPK_BAL.Events.GetAllEvents();
        ListView1.DataSource = dt;
        ListView1.DataBind();
    }
    private void Load_Event()
    {
        string id = Request.QueryString["ID"];
        DataTable dt = new DataTable();
        dt = GHCPK_BAL.Events.GetAllEvents();
        ListView2.DataSource = dt;
        ListView2.DataBind();

        //string img_path = dt.Rows[0]["News_Image"].ToString();

        //img_news_Desc.ImageUrl = "~/" + img_path;
        //img_news_Desc.Visible = true;

        //P_subject.InnerText = dt.Rows[0]["News_Subject"].ToString();
        //date.InnerText = dt.Rows[0]["Updated_Date"].ToString();
        //p_def.InnerText = dt.Rows[0]["News_Description"].ToString();
    }
}