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

public partial class Event : System.Web.UI.Page
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
        //{
        //    if (!string.IsNullOrEmpty(Request.QueryString["ID"]))
        //    {
        //        Load_Event();
        //        Load_AllEvent();
        //    }
        //    else
        //    {

        //        Load_Event();
        //        Load_AllEvent();
        //    }
        //}

        Load_Event();
        Load_AllEvent();


    }

    private void Load_Event()
    {
        string id = Request.QueryString["ID"];
        DataTable dt = new DataTable();
        dt = GHCPK_BAL.Events.GetEventbyID(Convert.ToInt16(id));

        string month = dt.Rows[0]["Event_Month"].ToString();
        string date = dt.Rows[0]["Event_Date"].ToString();

        lbl_month.Text = dt.Rows[0]["Event_Month"].ToString();
        lbl_date.Text = dt.Rows[0]["Event_Date"].ToString();
        subject.InnerText = dt.Rows[0]["Event_Subject"].ToString();
        detail.InnerText = dt.Rows[0]["Event_Description"].ToString();
        date_item.InnerText = dt.Rows[0]["Event_full_Date"].ToString();


        //P_subject.InnerText = dt.Rows[0]["News_Subject"].ToString();
        //month.InnerText = dt.Rows[0]["Updated_Date"].ToString();
        //p_def.InnerText = dt.Rows[0]["News_Description"].ToString();
    }
    private void Load_AllEvent()
    {
        DataTable dt = new DataTable();
        dt = GHCPK_BAL.Events.GetAllEvents();
        ListView1.DataSource = dt;
        ListView1.DataBind();
    }
}