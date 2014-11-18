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

public partial class News_view : System.Web.UI.Page
{
    public string sessionUser = null;
    public string sessinName = null;
    DateTime current_date = DateTime.Now;
    protected void Page_Load(object sender, EventArgs e)
    {
        //lbl_login.Text = sessinName;
        if (Session["user"] == null)
        {
            Response.Redirect("~/login.aspx");
        }
        else
        {
            sessionUser = Session["user"].ToString();
            sessinName = Session["Name"].ToString();
        }
        if (!IsPostBack)
        {
            Load_AllNews();
            Load_News();
            //if (!string.IsNullOrEmpty(Request.QueryString["ID"]))
            //{
            //    // lblCaption.Text = "Edit Role";
            //    Load_AllNews();
            //    Load_News();

            //}
            //else
            //{
            //    Load_AllNews();
            //    //  lblCaption.Text = "Add New Role";
            //    //PopulateAvailableElements();
            //    Load_News();
            //}
        }
    }


    private void Load_AllNews()
    {
        DataTable dt = new DataTable();
        dt = GHCPK_BAL.News.GetAllNews();
        ListView1.DataSource = dt;
        ListView1.DataBind();
    }
    private void Load_News()
    {
        string id = Request.QueryString["ID"];
        DataTable dt = new DataTable();
        dt = GHCPK_BAL.News.GetAllNews();
        ListView2.DataSource = dt;
        ListView2.DataBind();

        string img_path = dt.Rows[0]["News_Image"].ToString();

        //img_news_Desc.ImageUrl = "~/" + img_path;
        //img_news_Desc.Visible = true;

        //P_subject.InnerText = dt.Rows[0]["News_Subject"].ToString();
        //date.InnerText = dt.Rows[0]["Updated_Date"].ToString();
        //p_def.InnerText = dt.Rows[0]["News_Description"].ToString();
    }
}