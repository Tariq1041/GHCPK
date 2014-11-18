using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Manage_Image : System.Web.UI.Page
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
        gvManage_images.DataSource = dt;
        gvManage_images.DataBind();
        if (dt.Rows.Count > 0)
        {
            gvManage_images.Columns[1].ItemStyle.HorizontalAlign = HorizontalAlign.Left;
            gvManage_images.Columns[0].ItemStyle.HorizontalAlign = HorizontalAlign.Left;//    pgrJCSearch.SetTotalCount(dt.Rows.Count);
            gvManage_images.Columns[2].ItemStyle.HorizontalAlign = HorizontalAlign.Left;//

            gvManage_images.Columns[3].ItemStyle.HorizontalAlign = HorizontalAlign.Left;//
            gvManage_images.Columns[4].ItemStyle.HorizontalAlign = HorizontalAlign.Left;//
            gvManage_images.Columns[5].ItemStyle.HorizontalAlign = HorizontalAlign.Left;//
        }
        else
        {
            lbl_msg.Visible = true;
            lbl_msg.Text = "There is no any Record ";
        
        }
        //    pgrJCSearch.ApplyPaging(gvManageLB2Servers.PageIndex);
    }

    protected void gvManage_images_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvManage_images.PageIndex = e.NewPageIndex;
        LoadUsersDetail();
    }

    protected void gvManage_images_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        string ID = e.CommandArgument.ToString();

        switch (e.CommandName.Trim())
        {
            case "EditImage":
                {
                    Response.Redirect("Add_Image.aspx?ID=" + ID);
                    break;
                }
            case "Delete Image":
                {
                    GHCPK_BAL.Users.DeleteUser(ID);
                    Response.Redirect("Manage_Image.aspx");
                    break;
                }

        }
    }

    protected void gvManage_images_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        //This condition is used to check RowType is Header
        if (e.Row.RowType == DataControlRowType.Header)
        {
            for (int i = 0; i < gvManage_images.Columns.Count; i++)
            {
                e.Row.Cells[i].ToolTip = gvManage_images.Columns[i].HeaderText;
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