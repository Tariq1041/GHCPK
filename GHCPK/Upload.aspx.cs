using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;



public partial class Upload : System.Web.UI.Page
{
    public string sessionUser = null;
    public string sessinName = null;
    DateTime current_date = DateTime.Now;
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
        //        Load_News();
        //        Load_AllNews();
        //    }
        //    else
        //    {

        //        Load_News();
        //        Load_AllNews();
        //    }
        //}
        
        
        Load_AllNews();


        if (!IsPostBack)
            {
                string[] filePaths = Directory.GetFiles(Server.MapPath("~/Upload/"));
                List<ListItem> files = new List<ListItem>();
                foreach (string filePath in filePaths)
                {
                    files.Add(new ListItem(Path.GetFileName(filePath), filePath));
                }
                GridView1.DataSource = files;
                GridView1.DataBind();
            }
    }
    protected void UploadFile(object sender, EventArgs e)
    {
        string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Upload/") + fileName);
        Response.Redirect(Request.Url.AbsoluteUri);
    }
    protected void DownloadFile(object sender, EventArgs e)
    {
        string filePath = (sender as LinkButton).CommandArgument;
        Response.ContentType = ContentType;
        Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
        Response.WriteFile(filePath);
        Response.End();
    }
    protected void DeleteFile(object sender, EventArgs e)
    {
        string filePath = (sender as LinkButton).CommandArgument;
        File.Delete(filePath);
        Response.Redirect(Request.Url.AbsoluteUri);
    }

    private void Load_AllNews()
    {
        DataTable dt = new DataTable();
        dt = GHCPK_BAL.News.GetAllNews();
        ListView1.DataSource = dt;
        ListView1.DataBind();
    }
}