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

public partial class Add_Event : System.Web.UI.Page
{
    public string sessionUser = null;
    public string sessinName = null;
    DateTime current_date = DateTime.Now;

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
                lblCaption.Text = "Edit Event";

                Load_Events();

            }
            else
            {

                lblCaption.Text = "Add New Event";
                ddl_day.Items.Insert(0, "---Select Day---");
                int index = 1;
                for (int i = 1; i <= 31; i++)
                {
                    ddl_day.Items.Insert(index, new ListItem(i.ToString(), i.ToString()));
                    index++;
                }
                /////////////////////////////////////////////////////////////////
                ddl_month.Items.Insert(0, "---Select Month---");
                index = 1;
                for (int i = 1; i <= 12; i++)
                {
                    // ddl_month.Items.Insert(index, new ListItem(i.ToString(), i.ToString()));
                    DateTime date = new DateTime(2000, i, 1);
                    ddl_month.Items.Add(new ListItem(date.ToString("MMMM"), i.ToString()));
                    //      index++;
                }

                ///////////////////////////////////////////////


                ddl_year.Items.Insert(0, "---Select Year---");
                index = 1;
                for (int i = 2014; i <= 2050; i++)
                {
                    ddl_year.Items.Insert(index, new ListItem(i.ToString(), i.ToString()));
                    index++;
                }
                //PopulateAvailableElements();
            }
        }
        //var months = System.Globalization.DateTimeFormatInfo.InvariantInfo.MonthNames;
        //ddl_day.DataSource = months;

       

    }

    private void Load_Events()
    {
        string id = Request.QueryString["ID"];
        DataTable dt = new DataTable();
        dt = GHCPK_BAL.Events.GetEventbyID(Convert.ToInt16(id));

        txtevent_subject.Text = dt.Rows[0]["Event_Subject"].ToString();
        txtevent_Des.Text = dt.Rows[0]["Event_Description"].ToString();
        txt_country.Text = dt.Rows[0]["Event_Country"].ToString();
        txt_city.Text = dt.Rows[0]["Event_City"].ToString();
        txt_org.Text = dt.Rows[0]["Event_Organize"].ToString();

        //datepick.Text = dt.Rows[0]["Event_full_Date"].ToString();
        
    }

    protected void linkSave_Click(object sender, ImageClickEventArgs e)
    {
        DataTable dt_max = new DataTable();
        dt_max = GHCPK_BAL.Events.GetMaxID();
        int max_id;
        if (dt_max.Rows.Count > 0)
        {
            max_id = Convert.ToInt32(dt_max.Rows[0]["ID"].ToString());
            max_id = max_id + 1;

        }
        else
        {
            max_id = 1;
        }



        if (!string.IsNullOrEmpty(Request.QueryString["ID"]))
        {
            int ID = Convert.ToInt32(Request.QueryString["ID"]);
            
            if (txtevent_subject.Text == "")
            {
                lblError2.Visible = true;
                lblError2.Text = "* Please Insert text first then save";
                return;
            }
            if (txtevent_Des.Text == "")
            {
                lblError2.Visible = true;
                lblError2.Text = "* Please Insert text first then save";
                return;
            }
            if (txt_country.Text == "")
            {
                lblError2.Visible = true;
                lblError2.Text = "* Please Insert Country first then save";
                return;
            }

            if (txt_city.Text == "")
            {
                lblError2.Visible = true;
                lblError2.Text = "* Please Insert City name then save";
                return;
            }

            if (txt_org.Text == "")
            {
                lblError2.Visible = true;
                lblError2.Text = "* Please Insert organization first then save";
                return;
            }

            if (ddl_day.SelectedIndex == 0)
            {
                lblError2.Visible = true;
                lblError2.Text = "* Please Select Day then save";
                return;
            }
            if (ddl_month.SelectedIndex == 0)
            {
                lblError2.Visible = true;
                lblError2.Text = "* Please Select Month then save";
                return;
            }
            if (ddl_year.SelectedIndex == 0)
            {
                lblError2.Visible = true;
                lblError2.Text = "* Please Select Year then save";
                return;
            }




            DataTable dt_date = new DataTable();
            dt_date = GHCPK_BAL.Events.GetEventbyID(Convert.ToInt16(Request.QueryString["ID"]));
            string db_date = dt_date.Rows[0]["Event_full_Date"].ToString();
            string day_db, month_db,year_db;
            string[] database_date= db_date.Split('/');
            if (dt_date.Rows.Count > 0)
            {
                year_db = database_date[0];
                month_db = database_date[1];
                day_db = database_date[2];
                

            }
            else
            {
                lblError2.Visible = true;
                lblError2.Text = "* Unabale to get Date form database";
                return;
            
            }


            //get month, date , and full date.... form txt_orgdate.text
            

          if (GHCPK_BAL.Events.Update_Tbl_Event(ID, txtevent_subject.Text, txtevent_Des.Text, txt_country.Text,txt_city.Text,txt_org.Text,ddl_month.SelectedItem.ToString(),ddl_day.SelectedValue.ToString(),ddl_day.SelectedValue.ToString()+"/"+ddl_month.SelectedValue.ToString()+"/"+ddl_year.SelectedValue.ToString(), sessinName, current_date))
            {
                Response.Redirect("Manage_Events.aspx");
            }
         else
            {
                lblError2.Visible = true;
                lblError2.Text = "*Unable to Insert Record";
                return;

            }
        }
        else
        {
            if (txtevent_subject.Text == "")
            {
                lblError2.Visible = true;
                lblError2.Text = "* Please Insert text first then save";
                return;
            }
            if (txtevent_Des.Text == "")
            {
                lblError2.Visible = true;
                lblError2.Text = "* Please Insert text first then save";
                return;
            }
            if (txt_country.Text == "")
            {
                lblError2.Visible = true;
                lblError2.Text = "* Please Insert Country first then save";
                return;
            }

            if (txt_city.Text == "")
            {
                lblError2.Visible = true;
                lblError2.Text = "* Please Insert City name then save";
                return;
            }

            if (txt_org.Text == "")
            {
                lblError2.Visible = true;
                lblError2.Text = "* Please Insert organization first then save";
                return;
            }
            if (ddl_day.SelectedIndex == 0)
            {
                lblError2.Visible = true;
                lblError2.Text = "* Please Select Day then save";
                return;
            }
            if (ddl_month.SelectedIndex == 0)
            {
                lblError2.Visible = true;
                lblError2.Text = "* Please Select Month then save";
                return;
            }
            if (ddl_year.SelectedIndex == 0)
            {
                lblError2.Visible = true;
                lblError2.Text = "* Please Select Year then save";
                return;
            }


            if (GHCPK_BAL.Events.Insert_Events(max_id, txtevent_subject.Text, txtevent_Des.Text, txt_country.Text, txt_city.Text, txt_org.Text, ddl_month.SelectedItem.ToString(), ddl_day.SelectedValue.ToString(), ddl_day.SelectedValue.ToString() + "/" + ddl_month.SelectedValue.ToString() + "/" + ddl_year.SelectedValue.ToString(), sessinName, current_date, sessinName, current_date))
                { }
                else
                {
                    lblError2.Visible = true;
                    lblError2.Text = "*Unable to Insert Record";
                    return;

                }

           

        }


    }
}