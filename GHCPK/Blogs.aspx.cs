using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Blogs : System.Web.UI.Page
{

        protected void Page_Load(object sender, EventArgs e)
        {
			    // Put user code to initialize the page here
	    }

		#region Web Form Designer generated code
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: This call is required by the ASP.NET Web Form Designer.
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{    

		}
		#endregion

		protected void btnSubmit_Click(object sender, System.EventArgs e)
		{
			
		}

		
        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            this.txtTitle.Text = "";
            this.txtBlog.Text = "";
            this.txtName.Text = "";
            this.Txtcountry.Text = "";
        }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            // record the blog data in the Session State
            Session["Title"] = this.txtTitle.Text;
            Session["Blog"] = this.txtBlog.Text;
            Session["Name"] = this.txtName.Text;
            Session["Country"] = this.Txtcountry.Text;
            Session["Changed"] = true;

            // redirect backt to the main blog page

            this.Response.Redirect("BlogList.aspx?ID=" + "1");
            // Response.Redirect("Add_User.aspx?ID=" + ID);
        }
}
