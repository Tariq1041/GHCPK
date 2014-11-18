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

public partial class Add_News : System.Web.UI.Page
{
    public string sessionUser = null;
    public string sessinName = null;
    DateTime current_date = DateTime.Now;
    static string filename;
    static string imgPath, imgPath_Db;

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
            if (!string.IsNullOrEmpty(Request.QueryString["ID"]))
            {
                lblCaption.Text = "Edit Role";

                Load_News();

            }
            else
            {

                lblCaption.Text = "Add New Role";
                //PopulateAvailableElements();
            }
        }

    }

    private void Load_News()
    {
        string id=Request.QueryString["ID"];
        DataTable dt = new DataTable();
        dt = GHCPK_BAL.News.GetNewsbyID(Convert.ToInt16(id));

        txtnews_subject.Text = dt.Rows[0]["News_Subject"].ToString();
        txtnews_Des.Text = dt.Rows[0]["News_Description"].ToString();
        string imgpath = dt.Rows[0]["News_Image"].ToString();
        img.ImageUrl = imgpath;
        img.Visible = true;
        linkSave.Visible = true;
    }
    protected void rd_default_CheckedChanged(object sender, EventArgs e)
    {
        RadioButton radioButton = (RadioButton)sender;
        if (radioButton.Checked)
        {
            fileuploadimages.Visible = false;
            submit.Visible = false;

            txtname.Visible = true;
            lbl_img_Name.Visible = true;
            img.Visible = true;

            filename = "default.jpg";
            txtname.Text = filename;
            imgPath = "~/Portfolio/News Images/" + filename.ToString();
            imgPath_Db = "Portfolio/News Images/" + filename.ToString();
            img.ImageUrl = imgPath;
            linkSave.Visible = true;
        }
        else { }
    }
    protected void rd_upload_CheckedChanged(object sender, EventArgs e)
    {
        RadioButton radioButton = (RadioButton)sender;
        if (radioButton.Checked)
        {
            fileuploadimages.Visible = true;
            submit.Visible = true;

            txtname.Visible = false;
            lbl_img_Name.Visible = false;
            img.Visible = false;
            
        }
        else
        { }

    }
    
    protected void linkSave_Click(object sender, ImageClickEventArgs e)
    {//24545
        DataTable dt_max = new DataTable();
        dt_max = GHCPK_BAL.News.GetMaxID();
        int max_id;
        if (dt_max.Rows.Count>0)
        {
            max_id = Convert.ToInt32(dt_max.Rows[0]["ID"].ToString());
            max_id = max_id + 1;
           
        }
        else
        {
            max_id = 1;
        }


        if (!string.IsNullOrEmpty(Request.QueryString["ID"]))
        {
            int ID = Convert.ToInt32(Request.QueryString["ID"]);
            if (imgPath == "")
            {
                lblError2.Visible = true;
                lblError2.Text = "* Please Insert image first then save";
                return;
            }
            if (txtnews_subject.Text == "")
            {
                lblError2.Visible = true;
                lblError2.Text = "* Please Insert text first then save";
                return;
            }
            if (txtnews_Des.Text == "")
            {
                lblError2.Visible = true;
                lblError2.Text = "* Please Insert text first then save";
                return;
            }

            if (GHCPK_BAL.News.Update_News(ID, txtnews_subject.Text, txtnews_Des.Text, imgPath_Db, sessinName, current_date))
            {
                Response.Redirect("Manage_News.aspx");
            }
            else
            {
                lblError2.Visible = true;
                lblError2.Text = "*Unable to Insert Record";
                return;
               
            }
        }
        else
        {

            if (imgPath == "")
            {
                lblError2.Visible = true;
                lblError2.Text = "* Please Insert image first then save";
                return;
            }
            else
            {}



            {
                if (GHCPK_BAL.News.Insert_News(max_id, txtnews_subject.Text, txtnews_Des.Text, imgPath_Db, sessinName, current_date, sessinName, current_date))
                { }
                else
                {
                    lblError2.Visible = true;
                    lblError2.Text = "*Unable to Insert Record";
                    return;

                }

            }

        }


    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        filename = Path.GetFileName(fileuploadimages.PostedFile.FileName);
        fileuploadimages.SaveAs(Server.MapPath("~/Portfolio/News Images/" + filename));
        lbl_img_Name.Visible = true;
        txtname.Visible = true;
        img.Visible = true;

        txtname.Text = filename.ToString();
        imgPath = "~/Portfolio/News Images/" + filename.ToString();
        img.ImageUrl = imgPath;
        imgPath_Db = "Portfolio/News Images/" + filename.ToString();
        linkSave.Visible = true;
    }

    protected void linkCancel_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("News_view.aspx");

    }
}