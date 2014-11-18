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

public partial class Add_Image : System.Web.UI.Page
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
                lblCaption.Text = "Edit Image";

                //Load_Image();

            }
            else
            { }
           
            
        }
    }


    //private void Load_Image()
    //{
    //    string id = Request.QueryString["ID"];
    //    DataTable dt = new DataTable();
    //    dt = GHCPK_BAL.Porfolio..GetMaxUserID(Convert.ToInt16(id));

    //    txtevent_subject.Text = dt.Rows[0]["Event_Subject"].ToString();
    //    txtevent_Des.Text = dt.Rows[0]["Event_Description"].ToString();
    //    txt_country.Text = dt.Rows[0]["Event_Country"].ToString();
    //    txt_city.Text = dt.Rows[0]["Event_City"].ToString();
    //    txt_org.Text = dt.Rows[0]["Event_Organize"].ToString();

    //    //datepick.Text = dt.Rows[0]["Event_full_Date"].ToString();

    //}
   /* protected void linkSave_Click(object sender, ImageClickEventArgs e)
    {
        //Get Filename from fileupload control

        //Save images into Images folder

        //Getting dbconnection from web.config connectionstring
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
        //Open the database connection
        con.Open();
        //Query to insert images path and name into database
        SqlCommand cmd = new SqlCommand("Insert into ImagesPath(ImageName,ImagePath) values(@ImageName,@ImagePath)", con);
        //Passing parameters to query
        cmd.Parameters.AddWithValue("@ImageName", filename);
        cmd.Parameters.AddWithValue("@ImagePath", "Images/" + filename);
        cmd.ExecuteNonQuery();
        //Close dbconnection
        con.Close();
        Response.Redirect("~/Default.aspx");
    }*/
   
    protected void linkSave_Click(object sender, ImageClickEventArgs e)
    {
        if (!string.IsNullOrEmpty(Request.QueryString["ID"]))
        {
            int ID = Convert.ToInt32(Request.QueryString["ID"]);
            if (imgPath == "")
            {
                lblError2.Visible = true;
                lblError2.Text = "* Please Insert image first then save";
                return;
            }
            else
            { }
            if (txt_picSub.Text == "")
            {
                lblError2.Visible = true;
                lblError2.Text = "* Please Enter Picture Subject";
                return;
            }
            else
            { }
           // 
                if (GHCPK_BAL.Porfolio.Update_Tbl_Image(ID, txtname.Text, imgPath_Db,txt_picSub.Text.ToString(), sessinName, current_date))
                {
                    Response.Redirect("Manage_Image.aspx");
                }
                else
                {
                    lblError2.Visible = true;
                    lblError2.Text = "*Unable to Update Record";
                    return;

                }
            
            

        }
        else
        {
        
                DataTable dt_max=new DataTable();
                dt_max = GHCPK_BAL.Porfolio.GetMaxUserID();
                int max_id;

           // if (table.rows[0].IsNull(0))
                
                //string value = ;
                if (dt_max.Rows[0].IsNull(0))
                { 
                   
                    max_id = 1;
                   
                }
                else
                {
                    max_id = Convert.ToInt32(dt_max.Rows[0]["ID"].ToString());
                    max_id = max_id + 1;
                   
                }

                
      
                if (imgPath == "")
                {
                    lblError2.Visible = true;
                    lblError2.Text = "* Please Insert image first then save";
                    return;
                }
                else 
                {}

                    if (txt_picSub.Text == "")
                    {
                        lblError2.Visible = true;
                        lblError2.Text = "* Please Enter Picture Subject";
                        return;
                    }
                    else
                    { }
                    if (GHCPK_BAL.Porfolio.Insert_Img(max_id, txtname.Text, imgPath_Db,txt_picSub.Text.ToString(), sessinName, current_date, sessinName, current_date))
                    {
                        Response.Redirect("Manage_Image.aspx");
                    }
                    else
                    {
                        lblError2.Visible = true;
                        lblError2.Text = "*Unable to Insert Record";
                        return;
            
                    }
        
                }
            
    
       
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        filename = Path.GetFileName(fileuploadimages.PostedFile.FileName);
        fileuploadimages.SaveAs(Server.MapPath("~/Portfolio/" + filename));
        lbl_img_Name.Visible = true;
        txtname.Visible = true;
        img.Visible = true;
        lbl_picsubject.Visible = true;
        txt_picSub.Visible = true;

        txtname.Text = filename.ToString();
        imgPath = "~/Portfolio/" + filename.ToString();
        img.ImageUrl = imgPath;
        imgPath_Db = "Portfolio/" + filename.ToString();
        submit.Visible = false;
        linkSave.Visible = true;
        linkreset.Visible = true;
        //  TextBox1.Text = (Server.MapPath("~/Portfolio/" + filename));
    }
    protected void linkreset_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Manage_Image.aspx");
    }
}