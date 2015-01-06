using System;
using System.Collections.Generic;
//using System.Linq;
using System.Text;
using System.Data;

using GHCPK_DAL;

namespace GHCPK_BAL
{
   public class News
    {
       public static DataTable GetAllNews()  /*Manage News*/
       {
           string qtext = string.Format(@"SELECT    *
                                            FROM         Tbl_News");
           return GHCPK_DAL.DAL.GetData(qtext);

       }

       public static bool Insert_News(int id, string subject, string description,string img_path, string creatd_name, DateTime created_date, string updated_name, DateTime updated_date) /* use at Add New news,*/
       {
           string qtext = string.Format(@"INSERT INTO Tbl_News
                                          (ID,News_Subject,News_Description,News_Image,Created_By,Created_Date,Updated_By,Updated_Date)
                                            VALUES     ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}')", id, subject, description,img_path, creatd_name, created_date, updated_name, updated_date);
           return GHCPK_DAL.DAL.ExecuteQuerysql(qtext) > 0;
       }

       public static DataTable GetMaxID()  /* use at Add New image,*/
       {
           string qtext = string.Format(@"SELECT   max (ID) as ID
                                            FROM         Tbl_News");
           return GHCPK_DAL.DAL.GetData(qtext);
       }

       public static DataTable GetNewsbyID(int newsid) //Add Role
       {
           string qtext = string.Format(@"SELECT    *
                                            FROM         Tbl_News where ID={0}", newsid);
           return GHCPK_DAL.DAL.GetData(qtext);

       }
       public static bool Update_News(int id, string subject, string description, string img,string updated_name, DateTime updated_date)  /* use Add new User(Update user)*/
       {
           string qtext = string.Format(@"UPDATE Tbl_News SET 
                                       ID='{0}', News_Subject = '{1}' ,News_Description = '{2}' ,News_Image = '{3}',Updated_By='{4}',  Updated_Date = '{5}' 
                        WHERE ID= {0}", id, subject, description, img,updated_name, updated_date);
           return GHCPK_DAL.DAL.ExecuteQuerysql(qtext) > 0;
       }


       public static bool DeleteNews(String id) /* Add User,*/
       {
           string qtext = string.Format(@"Delete    
                                            FROM         Tbl_News where ID='{0}'", id);
           return GHCPK_DAL.DAL.ExecuteQuerysql(qtext) > 0;
       }
    }
}
