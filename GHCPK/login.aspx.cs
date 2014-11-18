using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GHCPK_BAL;
using System.Data;


public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Btn_OK_Click(object sender, EventArgs e)
    {
        if (txt_user.Text.ToString() == "")
        {
            lbl_error1.Text = "Please Enter Login ID";
            lbl_error1.Visible = true;
            return;
        }
        if (txt_pwd.Text.ToString() == "")
        {
            lbl_error2.Text= "Please Enter Password";
            lbl_error2.Visible = true;
            return;
        }
        int result = TryLogin();
        if (result == 1)
        {
            string id = txt_user.Text.ToString();
            DataTable dt1 = new DataTable();
            dt1 =GHCPK_BAL.Users.GetUserRoleIdbyLoginID(id);
            int value = Convert.ToInt16(dt1.Rows[0]["Role_Id"].ToString());
            // int value = Convert.ToInt16(dt1.Rows.ToString());

            if (value == 1)
                Response.Redirect("Admin_Home.aspx");
            else
                Response.Redirect("login.aspx");
        }

    }

    private int TryLogin()
    {
        //User userObj = null;
        try
        {
            DataTable dt = new DataTable();
            dt = GHCPK_BAL.Users.GetUserbyLoginID(txt_user.Text.ToString());
            if (dt.Rows.Count != 0)
            {
                if ((dt.Rows[0]["User_Id"].ToString() == txt_user.Text.ToString()) && (Cryptography.Decrypt(dt.Rows[0]["Password"].ToString()) == txt_pwd.Text.ToString()))
               // if ((dt.Rows[0]["User_Id"].ToString() == txt_user.Text.ToString()) && ((dt.Rows[0]["Password"].ToString()) == txt_pwd.Text.ToString()))
                {
                    HttpContext.Current.Session["User"] = dt.Rows[0]["User_Id"].ToString();
                    HttpContext.Current.Session["Name"] = dt.Rows[0]["Name"].ToString();
                    return 1;
                }
            }
            else
            {
               lbl_error1.Text = "Unable to Connect  DataBase.";
               lbl_error1.Visible = true;

            }

        }
        catch (Exception exception)
        {
            lbl_error2.Text = "Invalid Login Id or Password! Please Try Again .";
            lbl_error2.Visible = true;

        }

        return 0;
    }
}