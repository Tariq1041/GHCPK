using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

using GHCPK_DAL;

namespace GHCPK_BAL
{
    public class Events
    {
        public static DataTable GetAllEvents()  /*Manage EVent*/
        {
            string qtext = string.Format(@"SELECT    *
                                            FROM         Tbl_Event");
            return GHCPK_DAL.DAL.GetData(qtext);

        }

        public static bool Insert_Events(int id, string subject, string description, string country,string city,string org,string month,string date, string fulldate, string creatd_name, DateTime created_date, string updated_name, DateTime updated_date) /* use at Add New news,*/
        {
            string qtext = string.Format(@"INSERT INTO Tbl_Event
                                          (ID,Event_Subject,Event_Description,Event_Country,Event_City,Event_Organize,Event_Month,Event_Date,Event_full_Date,Created_By,Created_Date,Updated_By,Updated_Date)
                                            VALUES     ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}')", id, subject, description, country, city,  org, month, date, fulldate,creatd_name, created_date, updated_name, updated_date);
            return GHCPK_DAL.DAL.ExecuteQuerysql(qtext) > 0;
        }

        public static DataTable GetMaxID()  /* use at Add EVent,*/
        {
            string qtext = string.Format(@"SELECT   max (ID) as ID
                                            FROM         Tbl_Event");
            return GHCPK_DAL.DAL.GetData(qtext);
        }

        public static DataTable GetEventbyID(int newsid) //Add EVent
        {
            string qtext = string.Format(@"SELECT    *
                                            FROM         Tbl_Event where ID={0}", newsid);
            return GHCPK_DAL.DAL.GetData(qtext);

        }
        public static bool Update_Tbl_Event(int id, string subject, string description, string country, string city, string org, string month, string date, string fulldate, string updated_name, DateTime updated_date)  /* use Add new User(Update user)*/
        {
            string qtext = string.Format(@"UPDATE Tbl_Event SET 
                                       ID='{0}', Event_Subject = '{1}' ,Event_Description = '{2}' ,Event_Country = '{3}',Event_City = '{4}',Event_Organize = '{5}',Event_Month='{6}',Event_Date='{7}',Event_full_Date='{8}',Updated_By='{9}',  Updated_Date = '{10}' 
                        WHERE ID= {0}", id, subject, description, country, city, org, month, date, fulldate, updated_name, updated_date);
            return GHCPK_DAL.DAL.ExecuteQuerysql(qtext) > 0;
        }

        public static bool DeleteEvents(String id) /* Add User,*/
        {
            string qtext = string.Format(@"Delete    
                                            FROM         Tbl_Event where ID='{0}'", id);
            return GHCPK_DAL.DAL.ExecuteQuerysql(qtext) > 0;
        }
    }
}
