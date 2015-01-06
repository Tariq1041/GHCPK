using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

using GHCPK_DAL;

namespace GHCPK_BAL
{
    public class Porfolio
    {

        public static DataTable GetMaxUserID()  /* use at Add New image,*/
        {
            string qtext = string.Format(@"SELECT   max (ID) as ID
                                            FROM         Tbl_Picture");
            return GHCPK_DAL.DAL.GetData(qtext);
        }

        public static bool Insert_Img(int id, string name, string path,string img_sub, string creatd_name, DateTime created_date, string updated_name, DateTime updated_date) /* use at Add New image,*/
        {
            string qtext = string.Format(@"INSERT INTO Tbl_Picture
                                          (ID,Picture_Name,Picture_Path,Picture_Text,Created_By,Created_Date,Updated_By,Updated_Date)
                                            VALUES     ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}')", id, name, path, img_sub, creatd_name, created_date, updated_name, updated_date);
            return GHCPK_DAL.DAL.ExecuteQuerysql(qtext) > 0;
        }


        public static DataTable GetImage()  /* Manage Image*/
        {
            string qtext = string.Format(@"SELECT    *
                                            FROM         Tbl_Picture");
            return GHCPK_DAL.DAL.GetData(qtext);

        }

        public static bool Update_Tbl_Image(int id, string name, string path,string img_sub, string updated_name, DateTime updated_date) /* use at Add New image,*/
        {
            string qtext = string.Format(@"UPDATE Tbl_Picture SET
                                          ID='{0}',Picture_Name='{1}',Picture_Path='{2}',Picture_Text='{3}',Updated_By='{4}',Updated_Date='{5}'
                                        WHERE ID='{0}'", id, name, path,img_sub, updated_name, updated_date);
            return GHCPK_DAL.DAL.ExecuteQuerysql(qtext) > 0;
        }


        public static bool DeleteImg(String id) /* Add User,*/
        {
            string qtext = string.Format(@"Delete    
                                            FROM         Tbl_Picture where ID='{0}'", id);
            return GHCPK_DAL.DAL.ExecuteQuerysql(qtext) > 0;
        }
        

    }
}
