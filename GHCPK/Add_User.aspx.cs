using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Data;
using System.Collections;
using GHCPK_BAL;

public partial class Add_User : System.Web.UI.Page
{
    public string sessionUser = null;
    public string sessionName = null;

    string Registration_No = "";


    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("~/Login.aspx");
        }
        else
        {
            sessionUser = Session["user"].ToString();
            sessionName = Session["Name"].ToString();
        }


        if (!IsPostBack)
        {

            loadRoles();
            if (!string.IsNullOrEmpty(Request.QueryString["ID"]))
            {
                int ID = Convert.ToInt32(Request.QueryString["ID"]);
                lblCaption.Text = "Edit User";

                DataTable dt_edit = new DataTable();
                dt_edit = GHCPK_BAL.Users.GetUserbyID(ID);

                string role_Id = dt_edit.Rows[0]["Role_Id"].ToString();
                            
                drpRolesList.SelectedIndex = Convert.ToInt16(role_Id);
                txtname.Text=dt_edit.Rows[0]["Name"].ToString();
                 
                txtPasword.Text =Cryptography.Decrypt(dt_edit.Rows[0]["Password"].ToString());
                txtPasword.Attributes["value"] = txtPasword.Text;  

                txt_city.Text = dt_edit.Rows[0]["City"].ToString();
                txt_country.Text = dt_edit.Rows[0]["Country"].ToString();
                txt_phone.Text = dt_edit.Rows[0]["Phone No"].ToString();
                txt_mail.Text = dt_edit.Rows[0]["Email"].ToString();
        

            }
            else
            {
                lblCaption.Text = "Add New User";
                linkreset.Visible = false;

            }

          
           
        
        }
    }

    private void loadRoles()
    {
        //int ID = Convert.ToInt32(Request.QueryString["ID"]);
        DataTable dt = new DataTable();
        dt =GHCPK_BAL.Roles.GetRolesDetail();
        drpRolesList.Items.Insert(0, new ListItem("-- Select Role --", "0"));
        drpRolesList.DataSource = dt;

        drpRolesList.DataTextField = "Role_Name";
        drpRolesList.DataValueField = "Role_Id";
        drpRolesList.DataBind();
        drpRolesList.SelectedIndex = 0;
    }



    protected void linkSave_Click(object sender, ImageClickEventArgs e)
    {
        if(txt_idplus.Text=="")
        {
            lblError2.Text="* please Enter any value at TextBox!";
            lblError2.Visible=true;
            txt_idplus.Focus();
            return;
        
        }
        else
        {
            Registration_No = lbl_id.Text + txt_idplus.Text;
        
             DateTime current_date = DateTime.Now;
            DataTable dt = new DataTable();
            dt =GHCPK_BAL.Users.GetMaxUserID();
            int max = Convert.ToInt32(dt.Rows[0]["ID"].ToString());
            max = max + 1;

            if (!string.IsNullOrEmpty(Request.QueryString["ID"]))
            {
                int ID = Convert.ToInt32(Request.QueryString["ID"]);

                if (IsUserAlreadyExist())
                {
                    lblError.Text = "User Already Exist please try Another ID!";
                    return;
                }

                if (txtPasword.Text.Equals(string.Empty))
                {
                    lblError.Text = "Please Enter Password";
                    return;
                }
                if (txtname.Text.Equals(string.Empty))
                {
                    lblError.Text = "Please Enter Name";
                    return;
                }


                if (GHCPK_BAL.Users.UpdateUsersDetail(ID, Registration_No, txtname.Text.ToString(), Cryptography.Encrypt(txtPasword.Text), Convert.ToInt32(drpRolesList.SelectedItem.Value), txt_city.Text, txt_country.Text, txt_phone.Text, txt_mail.Text, sessionName, current_date))
                {
                    Response.Redirect("Menage_User.aspx?ID " + ID);
                }
                else
                {
                    lblError.Text = "Unable to Add User";
                }
            }
            else
            {
                if (IsUserAlreadyExist())
                {
                    lblError.Text = "Login ID Already Exist Please try another!";
                    return;
                }

                if (GHCPK_BAL.Users.InserUsers(max, Registration_No, txtname.Text.ToString(), Cryptography.Encrypt(txtPasword.Text), Convert.ToInt32(drpRolesList.SelectedItem.Value),txt_city.Text,txt_country.Text,txt_phone.Text,txt_mail.Text, sessionName.ToString(), current_date, sessionName.ToString(), current_date))
                {

                    Response.Redirect("Menage_User.aspx");
                }
                else
                {
                    lblError.Text = "Unable to Add User";
                }



            }








        }
        
    }
    protected void img_next_Click(object sender, ImageClickEventArgs e)
    {
        txtPasword.Attributes["value"] = txtPasword.Text;

        if (drpRolesList.SelectedIndex==0)
        {
            lblError.Text = "* Please Select Role ";
            return;
        }

        if (txtname.Text.Equals(string.Empty))
        {
            lblError.Text = "* Please Enter Name";
            return;
        }


        if (txtPasword.Text.Equals(string.Empty))
        {
            lblError.Text = "* Please Enter Password";
            return;
        }
        if (txt_city.Text.Equals(string.Empty))
        {
            lblError.Text = "* Please Enter City";
            return;
        }
        if (txt_country.Text.Equals(string.Empty))
        {
            lblError.Text = "* Please Enter Country";
            return;
        }
        
            lbl_id_name.Visible = true;
            lbl_id_role.Visible = true;
            lbl_id_nametxt.Visible = true;
            lbl_id_namerole.Visible = true;
            lbl_id_roletxt.Visible = true;
            lbl_id.Visible = true;
            lbl_bar.Visible = true;
            txt_idplus.Visible = true;


            lbl_id_nametxt.Text = txtname.Text;
            lbl_id_roletxt.Text = drpRolesList.SelectedValue.ToString();
            lbl_id.Text = lbl_id_nametxt.Text + lbl_id_roletxt.Text;

         

            linkSave.Visible = true;
           // img_next.ToolTip = "Back";
            img_next.Visible = false;
            img_back.Visible = true;
            img_back.ToolTip = "Back";
        
    }

    bool IsUserAlreadyExist()
    {
        DataTable dt = new DataTable();
        dt =GHCPK_BAL.Users.GetUserbyLoginID(Registration_No);
        if (dt.Rows.Count > 0)
            return true;
        else
            return false;
    }

    protected void linkreset_Click(object sender, ImageClickEventArgs e)
    {
        drpRolesList.SelectedIndex = 0;
        txtname.Text = "";
        txtPasword.Text = "";
        txt_city.Text = "";
        txt_country.Text = "";
        txt_phone.Text = "";
        txt_mail.Text = "";
       // Response.Redirect("Add_User.aspx");
    }
    protected void img_back_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Add_User.aspx");
    }
}