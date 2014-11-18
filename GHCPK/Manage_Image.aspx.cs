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

public partial class Manage_Image : System.Web.UI.Page
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
            this.Load_Image();
            //this.LoadSectionDetail();

        }
    }

    private void Load_Image()
    {

        DataTable dt = new DataTable();

        dt = GHCPK_BAL.Porfolio.GetImage();
        gvManage_Image.DataSource = dt;
        gvManage_Image.DataBind();
        gvManage_Image.Columns[1].ItemStyle.HorizontalAlign = HorizontalAlign.Left;
        gvManage_Image.Columns[0].ItemStyle.HorizontalAlign = HorizontalAlign.Left;//    pgrJCSearch.SetTotalCount(dt.Rows.Count);
        gvManage_Image.Columns[2].ItemStyle.HorizontalAlign = HorizontalAlign.Left;//

        gvManage_Image.Columns[3].ItemStyle.HorizontalAlign = HorizontalAlign.Left;//
        //gvManageUsers.Columns[4].ItemStyle.HorizontalAlign = HorizontalAlign.Left;//
        //gvManageUsers.Columns[5].ItemStyle.HorizontalAlign = HorizontalAlign.Left;//
        
        //    pgrJCSearch.ApplyPaging(gvManageLB2Servers.PageIndex);
    }
    protected void gvManage_Image_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvManage_Image.PageIndex = e.NewPageIndex;
        Load_Image();
    }

    protected void gvManage_Image_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        string ID = e.CommandArgument.ToString();

        switch (e.CommandName.Trim())
        {
            case "Edit Picture":
                {
                    Response.Redirect("Add_Image.aspx?ID=" + ID);
                    break;
                }
            case "Delete Picture":
                {
                    GHCPK_BAL.Porfolio.DeleteImg(ID);
                    Response.Redirect("Manage_Image.aspx");
                    break;
                }

        }
    }

    protected void gvManage_Image_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        //This condition is used to check RowType is Header
        if (e.Row.RowType == DataControlRowType.Header)
        {
            for (int i = 0; i < gvManage_Image.Columns.Count; i++)
            {
                e.Row.Cells[i].ToolTip = gvManage_Image.Columns[i].HeaderText;
            }
        }
    }

    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Verifies that the control is rendered */
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Add_Image.aspx");
    }
   
}