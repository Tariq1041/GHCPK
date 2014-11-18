using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using GHCPK_BAL;
using System.Collections;

public partial class Add_Role : System.Web.UI.Page
{
    public string sessionUser = null;
    public string sessionName = null;
    DateTime current_date = DateTime.Now;

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
            lstAvailableServerList.BorderWidth=2;
            lstSelectedServerList.BorderWidth = 2;

            if (!string.IsNullOrEmpty(Request.QueryString["ID"]))
            {
                lblCaption.Text = "Edit Role";

                LoadRoles();
                PopulateSelectedElements();
                PopulateAvailableElements();
            }
            else
            {

                lblCaption.Text = "Add New Role";
                PopulateAvailableElements();
            }
        }
    }

    private void PopulateSelectedElements()
    {
        int ID = Convert.ToInt32(Request.QueryString["ID"]);
        DataTable dt = new DataTable();
        dt =GHCPK_BAL.Roles.GetFunctionByRolesbyID(ID);

        lstSelectedServerList.DataSource = dt;
        lstSelectedServerList.DataTextField = "Function_Description";
        lstSelectedServerList.DataValueField = "Function_Id";
        lstSelectedServerList.DataBind();
    }
    private void PopulateAvailableElements()
    {
        DataTable dt = new DataTable();
        dt =GHCPK_BAL.Roles.GetAllFunction();

        lstAvailableServerList.DataSource = dt;
        lstAvailableServerList.DataTextField = "Function_Description";
        lstAvailableServerList.DataValueField = "Function_Id";
        lstAvailableServerList.DataBind();

        // Copy the all items in the ListItemCollection to an array before 
        ListItem[] myListAllItemArray = new ListItem[lstAvailableServerList.Items.Count];
        lstAvailableServerList.Items.CopyTo(myListAllItemArray, 0);


        // Copy the selected items in the ListItemCollection to an array before 
        ListItem[] myListSelectedItemArray = new ListItem[lstSelectedServerList.Items.Count];
        lstSelectedServerList.Items.CopyTo(myListSelectedItemArray, 0);
        foreach (ListItem selectedItem in myListSelectedItemArray)
        {
            foreach (ListItem myItem in myListAllItemArray)
            {
                if (selectedItem.Text.Equals(myItem.Text))
                {
                    lstAvailableServerList.Items.Remove(myItem);
                }

            }
        }

    }
    private void LoadRoles()
    {
        int ID = Convert.ToInt32(Request.QueryString["ID"]);
        DataTable dt = new DataTable();
        dt =GHCPK_BAL.Roles.GetRolebyID(ID);
        txtName.Text = dt.Rows[0]["Role_Name"].ToString();
        //txtDescription.Text = dt.Rows[0]["Description"].ToString();

        //txtWingIncharge.Text = dt.Rows[0]["wingincharge"].ToString();
        //txtWingDescription.Text = dt.Rows[0]["wingdescription"].ToString();
        //    pgrJCSearch.SetTotalCount(dt.Rows.Count);
        //    pgrJCSearch.ApplyPaging(gvManageLB2Servers.PageIndex);
    }
    bool IsRoleAlreadyExist()
    {
        DataTable dt = new DataTable();
        dt =GHCPK_BAL.Roles.GetRolesbyName(txtName.Text.ToString());
        if (dt.Rows.Count > 0)
            return true;
        else
            return false;

    }
    //protected void linkCancel_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("Menage_Role.aspx");
    //}
    //protected void linkSave_Click(object sender, System.EventArgs e)
    //{
       
    //}
    private void Updaterole()
    {
        int userid = WebCommon.GetuseridByLoginID(Session["user"].ToString());

        int ID = Convert.ToInt32(Request.QueryString["ID"]);


        DataTable dt5 = new DataTable();
        dt5 =GHCPK_BAL.Roles.GetMaxRole_Functionality_ID();
        int max_functionality = Convert.ToInt32(dt5.Rows[0]["Role_functionality_Id"].ToString());
        max_functionality = max_functionality + 1;
        //if (IsUserAlreadyExist())
        //{
        //    lblError.Text = "Login ID Already Exist Please try another!";
        //    return;
        //}

        if (txtName.Text.Equals(string.Empty))
        {
            lblError.Text = "Please Enter Name";
            return;
        }

        if (GHCPK_BAL.Roles.UpdateRolesDetail(ID, txtName.Text.ToUpper(), sessionName, Convert.ToDateTime(current_date)))
        {
            if (GHCPK_BAL.Roles.DeletFunctionbyroleID(ID))
            { }


            for (int i = 0; i < lstSelectedServerList.Items.Count; i++)
            {
                if (GHCPK_BAL.Roles.InsertRolesFunctions(max_functionality, ID, int.Parse(lstSelectedServerList.Items[i].Value), sessionName, current_date, sessionName, current_date))
                {
                    max_functionality++;
                }
            }

            Response.Redirect("Menage_Role.aspx");
        }
        else
        {
            lblError.Text = "Unable to Add Role";
        }
    }
    private void saverole()
    {//DataTable dt = HrmsBAL.Cities.GetMaxCitiesID();
        int userid = WebCommon.GetuseridByLoginID(Session["user"].ToString());
        DataTable dt5 = new DataTable();
        dt5 =GHCPK_BAL.Roles.GetMaxRole_Functionality_ID();
        int max_functionality = Convert.ToInt32(dt5.Rows[0]["Role_functionality_Id"].ToString());
        max_functionality = max_functionality + 1;

        if (IsRoleAlreadyExist())
        {
            lblError.Text = "Role Already Exist Please try another!";
            return;
        }
        if (txtName.Text.Equals(string.Empty))
        {
            lblError.Text = "Please Enter Name";
            return;
        }
        //int code = Convert.ToInt32(dt.Rows[0]["wingcode"].ToString());

        if (GHCPK_BAL.Roles.InsertRoles(txtName.Text.ToUpper(), sessionName, current_date, sessionName, current_date))
        {
            DataTable dt = new DataTable();
            dt =GHCPK_BAL.Roles.GetRolesbyNameANDUserID(txtName.Text.ToUpper().ToString());

            if (dt.Rows.Count > 0)
            {
                // Add selected

                for (int i = 0; i < lstSelectedServerList.Items.Count; i++)
                {
                    if (GHCPK_BAL.Roles.InsertRolesFunctions(max_functionality, int.Parse(dt.Rows[0]["Role_Id"].ToString()), int.Parse(lstSelectedServerList.Items[i].Value), sessionName, current_date, sessionName, current_date))
                    {
                        max_functionality++;

                    }
                    else
                    {
                        lblError.Text = "* Unable to Save Record Role Functionality table";

                    }
                }

            }
            else
            {
                lblError.Text = "* Unable to get record of current role";
            }

            Response.Redirect("Menage_Role.aspx");
            //lblError.Text = "Unable to Add Role";  
        }
        else
        {
            lblError.Text = "Unable to Add Role";
        }
    }
    protected void btnMoveRight_Click(object sender, ImageClickEventArgs e)
    {
        MoveItems(lstAvailableServerList, lstSelectedServerList, true);
    }


    protected void btnMoveAllRight_Click(object sender, ImageClickEventArgs e)
    {
        MoveItems(lstAvailableServerList, lstSelectedServerList, false);
    }
    protected void btnMoveAllLeft_Click(object sender, ImageClickEventArgs e)
    {
        MoveItems(lstSelectedServerList, lstAvailableServerList, false);
    }
    private void MoveItems(ListBox sourceList, ListBox destinationList, bool single)
    {
        ListItem[] sourceItems = new ListItem[sourceList.Items.Count];
        sourceList.Items.CopyTo(sourceItems, 0);
        if (single) // To Move selected items 
        {
            foreach (ListItem item in sourceItems)
            {
                if (item.Selected)
                {
                    destinationList.Items.Add(item);
                    sourceList.Items.Remove(item);
                }
            }
        }
        else // To Move all items
        {
            foreach (ListItem item in sourceItems)
            {
                destinationList.Items.Add(item);
                sourceList.Items.Remove(item);
            }
        }
    }
    protected void linkSave_Click(object sender, ImageClickEventArgs e)
    {
        if (!string.IsNullOrEmpty(Request.QueryString["ID"]))
        {
            Updaterole();
        }
        else
        {

            saverole();
        }
    }
    protected void linkCancel_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Menage_Role.aspx");
    }
    protected void btnMoveLeft_Click1(object sender, ImageClickEventArgs e)
    {
        
        MoveItems(lstSelectedServerList, lstAvailableServerList, true);
    
    }
}


