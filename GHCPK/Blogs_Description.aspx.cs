using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Xml;

public partial class Blogs_Description : System.Web.UI.Page
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


        if (!IsPostBack)
        {
            BindGrid();
        }
    }

    protected void BindGrid()
    {
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();

        ds.ReadXml(Server.MapPath("comments.xml"));
        if (ds != null && ds.HasChanges())
        {
            gvEmployee.DataSource = ds;
            gvEmployee.DataBind();
        }
        else
        {
            gvEmployee.DataBind();
        }

    }

    protected void gvEmployee_OnRowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.Equals("Add"))
        {
            // TextBox txtAddEmpID = (TextBox)gvEmployee.FooterRow.FindControl("txtAddEmpID");
            TextBox txtAddName = (TextBox)gvEmployee.FooterRow.FindControl("txtAddName");
            TextBox txtAddtime = (TextBox)gvEmployee.FooterRow.FindControl("txtAddtime");
            TextBox txtAddtittle = (TextBox)gvEmployee.FooterRow.FindControl("txtAddtittle");
            TextBox txtAddCountry = (TextBox)gvEmployee.FooterRow.FindControl("txtAddCountry");
            TextBox txtAddblog = (TextBox)gvEmployee.FooterRow.FindControl("txtAddblog");

            // 
            XmlDocument xmldoc = new XmlDocument();
            xmldoc.Load(Server.MapPath("comments.xml"));
            XmlElement parentelement = xmldoc.CreateElement("Comments");

            XmlElement name = xmldoc.CreateElement("Name");
            XmlElement time = xmldoc.CreateElement("Time");
            XmlElement tittle = xmldoc.CreateElement("Title");
            XmlElement country = xmldoc.CreateElement("Country");
            XmlElement blog = xmldoc.CreateElement("Blog");

            name.InnerText = txtAddName.Text;
            time.InnerText = txtAddtime.Text;
            tittle.InnerText = txtAddtittle.Text;
            country.InnerText = txtAddCountry.Text;
            blog.InnerText = txtAddblog.Text;

            parentelement.AppendChild(name);
            parentelement.AppendChild(time);
            parentelement.AppendChild(tittle);
            parentelement.AppendChild(country);
            parentelement.AppendChild(blog);

            xmldoc.DocumentElement.AppendChild(parentelement);
            xmldoc.Save(Server.MapPath("comments.xml"));

            BindGrid();
        }
    }

    protected void gvEmployee_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gvEmployee.EditIndex = e.NewEditIndex;
        BindGrid();
    }
    protected void gvEmployee_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        BindGrid();
        DataSet ds = gvEmployee.DataSource as DataSet;
        ds.Tables[0].Rows[gvEmployee.Rows[e.RowIndex].DataItemIndex].Delete();
        ds.WriteXml(Server.MapPath("comments.xml"));
        BindGrid();
    }
    protected void gvEmployee_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

        int i = gvEmployee.Rows[e.RowIndex].DataItemIndex;
        string Name = (gvEmployee.Rows[e.RowIndex].FindControl("txtName") as TextBox).Text;
        string time = (gvEmployee.Rows[e.RowIndex].FindControl("txttime") as TextBox).Text;
        string tittle = (gvEmployee.Rows[e.RowIndex].FindControl("txttittle") as TextBox).Text;
        string country = (gvEmployee.Rows[e.RowIndex].FindControl("txtcountry") as TextBox).Text;

        string blog = (gvEmployee.Rows[e.RowIndex].FindControl("txtblog") as TextBox).Text;

        gvEmployee.EditIndex = -1;
        BindGrid();

        DataSet ds = (DataSet)gvEmployee.DataSource;
        ds.Tables[0].Rows[i]["name"] = Name;
        ds.Tables[0].Rows[i]["time"] = time;
        ds.Tables[0].Rows[i]["title"] = tittle;
        ds.Tables[0].Rows[i]["country"] = country;
        ds.Tables[0].Rows[i]["blog"] = blog;
        //
        ds.WriteXml(Server.MapPath("comments.xml"));
        BindGrid();
    }
    protected void gvEmployee_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gvEmployee.EditIndex = -1;
        BindGrid();
    }
    protected void gvEmployee_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvEmployee.PageIndex = e.NewPageIndex;
        BindGrid();
    }

}