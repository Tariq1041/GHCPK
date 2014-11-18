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


public partial class Portfolio : System.Web.UI.Page
{
    //public string sessionUser = null;
    //public string sessinName = null;
    //DateTime current_date = DateTime.Now;
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["user"] == null)
        //{
        //    Response.Redirect("~/login.aspx");
        //}
        //else
        //{
        //    sessionUser = Session["user"].ToString();
        //    sessinName = Session["Name"].ToString();
        //}
        //if (!IsPostBack)
        {
            if (!string.IsNullOrEmpty(Request.QueryString["ID"]))
            {
                Load_Images();
                Load_AllNews();
            }
            else
            {

                Load_Images();
                Load_AllNews(); //new ticker....
            }
        }


    }

    public void Load_Images()
    {
        string id = Request.QueryString["ID"];
        DataTable dt = new DataTable();
        dt = GHCPK_BAL.Porfolio.GetImage();

        ListView2.DataSource = dt;
        ListView2.DataBind();
                
    }
    private void Load_AllNews()
    {
        DataTable dt = new DataTable();
        dt = GHCPK_BAL.News.GetAllNews();
        ListView1.DataSource = dt;
        ListView1.DataBind();
    }
}