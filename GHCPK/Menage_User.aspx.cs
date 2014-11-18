using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class Menage_User : System.Web.UI.Page
{
    public string sessionUser = null;
    public string sessinName = null;

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

        //linkAddnewUser.Enabled = WebCommon.ContainsTask(WebCommon.TaskAddUser, sessionUser);

        if (!IsPostBack)
        {
            //this.LoadOrgnizationDetail();
            this.LoadUsersDetail();
            //this.LoadSectionDetail();

        }
    }
    private void LoadUsersDetail()
    {

        DataTable dt = new DataTable();

        dt = GHCPK_BAL.Users.GetUsersDetail_RoleName();
        gvManageUsers.DataSource = dt;
        gvManageUsers.DataBind();
        gvManageUsers.Columns[1].ItemStyle.HorizontalAlign = HorizontalAlign.Left;
        gvManageUsers.Columns[0].ItemStyle.HorizontalAlign = HorizontalAlign.Left;//    pgrJCSearch.SetTotalCount(dt.Rows.Count);
        gvManageUsers.Columns[2].ItemStyle.HorizontalAlign = HorizontalAlign.Left;//

        gvManageUsers.Columns[3].ItemStyle.HorizontalAlign = HorizontalAlign.Left;//
        gvManageUsers.Columns[4].ItemStyle.HorizontalAlign = HorizontalAlign.Left;//
        gvManageUsers.Columns[5].ItemStyle.HorizontalAlign = HorizontalAlign.Left;//
        //    pgrJCSearch.ApplyPaging(gvManageLB2Servers.PageIndex);
    }

    protected void gvManageUsers_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvManageUsers.PageIndex = e.NewPageIndex;
        LoadUsersDetail();
    }

    protected void gvManageUsers_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        string ID = e.CommandArgument.ToString();

        switch (e.CommandName.Trim())
        {
            case "Edituser":
                {
                    Response.Redirect("Add_User.aspx?ID=" + ID);
                    break;
                }
            case "Delete User":
                {
                    GHCPK_BAL.Users.DeleteUser(ID);
                    Response.Redirect("Menage_User.aspx");
                    break;
                }

        }
    }

    protected void gvManageUsers_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        //This condition is used to check RowType is Header
        if (e.Row.RowType == DataControlRowType.Header)
        {
            for (int i = 0; i < gvManageUsers.Columns.Count; i++)
            {
                e.Row.Cells[i].ToolTip = gvManageUsers.Columns[i].HeaderText;
            }
        }
    }

    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Verifies that the control is rendered */
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Add_User.aspx");
    }
   
}