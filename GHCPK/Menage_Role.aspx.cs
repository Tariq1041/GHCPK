using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using GHCPK_BAL;

public partial class Menage_Role : System.Web.UI.Page
{
    public string sessionUser = null;
    public string sessionName = null;

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
            //this.LoadOrgnizationDetail();
            this.LoadRoleDetail();
            //this.LoadSectionDetail();

        }

    }

    private void LoadRoleDetail()
    {

        DataTable dt = new DataTable();
        dt =GHCPK_BAL.Roles.GetRolesDetail();
        gvManageRoles.DataSource = dt;
        gvManageRoles.DataBind();
        gvManageRoles.Columns[0].ItemStyle.HorizontalAlign = HorizontalAlign.Left;
        gvManageRoles.Columns[1].ItemStyle.HorizontalAlign = HorizontalAlign.Left;
        gvManageRoles.Columns[2].ItemStyle.HorizontalAlign = HorizontalAlign.Left;
        gvManageRoles.Columns[3].ItemStyle.HorizontalAlign = HorizontalAlign.Left;

        //    pgrJCSearch.SetTotalCount(dt.Rows.Count);
        //    pgrJCSearch.ApplyPaging(gvManageLB2Servers.PageIndex);
    }

    protected void gvManageRoles_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        string ID = e.CommandArgument.ToString();

        switch (e.CommandName.Trim())
        {
            case "Edit Role":
                {
                    Response.Redirect("Add_Role.aspx?ID=" + ID);
                    break;
                }
            case "Delete Role":
                {
                   GHCPK_BAL.Roles.DeleteRole(ID);
                    Response.Redirect("Menage_Role.aspx");
                    break;
                }

        }
    }

    protected void gvManageRoles_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        //This condition is used to check RowType is Header
        if (e.Row.RowType == DataControlRowType.Header)
        {
            for (int i = 0; i < gvManageRoles.Columns.Count; i++)
            {
                e.Row.Cells[i].ToolTip = gvManageRoles.Columns[i].HeaderText;
            }
        }
    }
    protected void gvManageRoles_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvManageRoles.PageIndex = e.NewPageIndex;
        LoadRoleDetail();
    }




    protected void linkAddnewUser_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Add_Role.aspx");
    }
    protected void linkCancel_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Menage_Role.aspx");
    }
}