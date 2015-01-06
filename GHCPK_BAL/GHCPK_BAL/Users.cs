using System;
using System.Collections.Generic;
//using System.Linq;
using System.Text;
using System.Data;
using GHCPK_DAL;

namespace GHCPK_BAL
{
    public class Users
    {

        public static DataTable GetUserbyLoginID(string user_id)    ///using at webcommon,
        {
            string qtext = string.Format(@"SELECT    *
                                            FROM         Tbl_Users where User_Id='{0}'", user_id);
            return GHCPK_DAL.DAL.GetData(qtext);

        }

        public static DataTable GetUsersDetail_RoleName() ////test_mm,
        {
            string qtext = string.Format(@"SELECT    u.*, r.Role_Name
                                            FROM         Tbl_Users u ,Tbl_Role r Where u.Role_Id=r.Role_Id");
            return GHCPK_DAL.DAL.GetData(qtext);
        }

        public static bool DeleteUser(String id) /* Add User,*/
        {
            string qtext = string.Format(@"Delete    
                                            FROM         Tbl_Users where ID='{0}'", id);
            return GHCPK_DAL.DAL.ExecuteQuerysql(qtext) > 0;
        }


        public static DataTable GetUserRoleIdbyLoginID(string user_id)  /* use at login page,*/
        {
            string qtext = string.Format(@"SELECT    Role_Id
                                            FROM         Tbl_Users where User_Id='{0}'", user_id);
            return GHCPK_DAL.DAL.GetData(qtext);

        }

        public static DataTable GetMaxUserID()  /* use at Add New User,*/
        {
            string qtext = string.Format(@"SELECT   max (ID) as ID
                                            FROM         Tbl_Users");
            return GHCPK_DAL.DAL.GetData(qtext);
        }

        public static bool UpdateUsersDetail(int id, string user_Id, string name, string password, int roleid,string city, string country, string phone, string email ,string updated_name, DateTime updated_date)  /* use Add new User(Update user)*/
        {
            string qtext = string.Format(@"UPDATE Tbl_Users SET 
                                       ID='{0}', User_Id = '{1}' ,Name = '{2}' ,Password = '{3}',Role_Id='{4}',  City = '{5}' ,Country = '{6}' ,[Phone No] = '{7}',Email='{8}', Updated_By='{9}',Updated_Date = '{10}' 
                        WHERE ID= {0}", id, user_Id, name, password, roleid,city,country,phone,email, updated_name, updated_date);
            return GHCPK_DAL.DAL.ExecuteQuerysql(qtext) > 0;
        }


        public static bool InserUsers(int id, string user_id, string name, string password, int roleId, string city, string country, string phone, string email, string creatd_name, DateTime created_date, string updated_name, DateTime updated_date)
        {
            string qtext = string.Format(@"INSERT INTO Tbl_Users
                                          (ID,User_Id,Name,Password,Role_Id,City,Country,[Phone No],Email,Created_By,Created_Date,Updated_By,Updated_Date)
                                            VALUES     ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}')", id, user_id, name, password, roleId, city, country, phone, email, creatd_name, created_date, updated_name, updated_date);
            return GHCPK_DAL.DAL.ExecuteQuerysql(qtext) > 0;
        }


        public static DataTable GetUserbyID(int id)  /* add user*/
        {
            string qtext = string.Format(@"SELECT    *
                                            FROM         Tbl_Users where ID={0}", id);
            return GHCPK_DAL.DAL.GetData(qtext);

        }
        















        
        public static DataTable GetUsersDetail()
        {
            string qtext = string.Format(@"SELECT    *
                                            FROM         Tbl_Users");
            return GHCPK_DAL.DAL.GetData(qtext);
        }
        
       
       
       
       
       
        
        public static bool InserUsers(string p, string p_2, string p_3, int p_4, DateTime current_date)
        {
            throw new NotImplementedException();
        }
    }
}
