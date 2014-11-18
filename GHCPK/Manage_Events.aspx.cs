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

public partial class Manage_Events : System.Web.UI.Page
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
            this.Load_Events();
            //this.LoadSectionDetail();

        }


    }

    private void Load_Events()
    {

        DataTable dt = new DataTable();

        dt = GHCPK_BAL.Events.GetAllEvents();
        gvManage_Events.DataSource = dt;
        gvManage_Events.DataBind();
        gvManage_Events.Columns[1].ItemStyle.HorizontalAlign = HorizontalAlign.Left;
        gvManage_Events.Columns[0].ItemStyle.HorizontalAlign = HorizontalAlign.Left;//    pgrJCSearch.SetTotalCount(dt.Rows.Count);
        gvManage_Events.Columns[2].ItemStyle.HorizontalAlign = HorizontalAlign.Left;//

        gvManage_Events.Columns[3].ItemStyle.HorizontalAlign = HorizontalAlign.Left;//
        gvManage_Events.Columns[4].ItemStyle.HorizontalAlign = HorizontalAlign.Left;//
        gvManage_Events.Columns[5].ItemStyle.HorizontalAlign = HorizontalAlign.Left;//

        //    pgrJCSearch.ApplyPaging(gvManageLB2Servers.PageIndex);
    }

    protected void gvManage_Events_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvManage_Events.PageIndex = e.NewPageIndex;
        Load_Events();
    }

    protected void gvManage_Events_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        string ID = e.CommandArgument.ToString();

        switch (e.CommandName.Trim())
        {
            case "Edit Events":
                {
                    Response.Redirect("Add_Event.aspx?ID=" + ID);
                    break;
                }
            case "Delete Events":
                {
                    GHCPK_BAL.Events.DeleteEvents(ID);
                    Response.Redirect("Manage_Events.aspx");
                    break;
                }

        }
    }

    protected void gvManage_Events_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        //This condition is used to check RowType is Header
        if (e.Row.RowType == DataControlRowType.Header)
        {
            for (int i = 0; i < gvManage_Events.Columns.Count; i++)
            {
                e.Row.Cells[i].ToolTip = gvManage_Events.Columns[i].HeaderText;
            }
        }
    }

    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Verifies that the control is rendered */
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Add_Event.aspx");
    }
}