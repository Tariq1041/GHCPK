using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using System.Configuration;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
//using eWorld.UI;

using GHCPK_BAL;

public static class WebCommon
{

    //Administration Pannel Start Here......................1.....................
   // public const string TaskAdmin_Home = "Admin Home";
    public const string TaskAdmin_Edit_User = "Admin Edit User";
    public const string TaskAdmin_Delete_User = "Admin Delete User";


    public const string TaskAdmin_Edit_Role = "Admin Edit Role";
    public const string TaskAdmin_Delete_Role = "Admin Delete Role";

    public const string TaskAdmin_Edit_Picture = "Admin Edit Picture";
    public const string TaskAdmin_Delete_Picture = "Admin Delete Picture";

    public const string TaskAdmin_Edit_News = "Admin Edit News";
    public const string TaskAdmin_Delete_News = "Admin Delete News";

    public const string TaskAdmin_Edit_Events = "Admin Edit Events";
    public const string TaskAdmin_Delete_Events = "Admin Delete Events";

   

    /*   public const string TaskAdmin_Menage_User = "Admin Menage User";
      public const string TaskAdmin_Menage_User = "Admin Menage User";     */
                         
    
    //Student Pannel Start Here.............................3.....................
  //  public const string TaskStudent_Home = "Student Home";
    


    //.....................................///............................//.......................//.......................


    public static int GetuseridByLoginID(string loginid)
    {
        DataTable dt = new DataTable();
        
        dt = GHCPK_BAL.Users.GetUserbyLoginID(loginid);
        int result = Convert.ToInt32(dt.Rows[0]["ID"].ToString());
        //int result = Convert.ToInt32(dt.Rows[0]["User_Id"].ToString());
        return result;
    }


    public static bool ContainsTask(string TaskName, string loginid)
    {
       int userid = WebCommon.GetuseridByLoginID(loginid.ToString());
       // int userid = WebCommon.GetuseridByLoginID("1");
    
        DataTable dt = new DataTable();
        dt =GHCPK_BAL.Roles.GetFunctionsbyUserID(userid);

        foreach (DataRow dr in dt.Rows)
        {
            for (int rowid = 0; rowid < dt.Rows.Count; rowid++)
            {
                if (dt.Rows[rowid]["Function_Description"].ToString().ToLower() == TaskName.ToLower())
                    return true;
            }
        }

        return false;
    }
}
