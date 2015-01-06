using System;
using System.Collections.Generic;
//using System.Linq;
using System.Text;
using System.Data;

using GHCPK_DAL;

namespace GHCPK_BAL
{

    public class Roles
    {

        public static DataTable GetFunctionsbyUserID(int Userid)   ///using at webcommon,
        {
            string qtext = string.Format(@"select f.Function_Id,f.Function_Description,f.Created_Date,r.Role_Name,r.Role_Id 
                                           from Tbl_Function f ,Tbl_Role_Functionality rf ,Tbl_Role r 
                                            where 
                                            f.Function_Id=rf.Function_Id and r.Role_Id=(select Role_Id from Tbl_Users  where ID={0})and r.Role_Id=rf.Role_Id", Userid);
            return GHCPK_DAL.DAL.GetData(qtext);
        }

        public static DataTable GetRolesDetail()   ///use at Add_User, Menage_Role
        {
            string qtext = string.Format(@"SELECT    *
                                            FROM         Tbl_Role");
            return GHCPK_DAL.DAL.GetData(qtext);
        }

        public static bool DeleteRole(String id)   //use and Manage Role,
        {
            string qtext = string.Format(@"Delete    
                                            FROM         Tbl_Role where Role_Id='{0}'", id);
            return GHCPK_DAL.DAL.ExecuteQuerysql(qtext) > 0;
        }

        public static DataTable GetFunctionByRolesbyID(int id) //Add Role,
        {
            string qtext = string.Format(@"SELECT    *
                                            FROM         Tbl_Function where Function_Id in(select Function_Id from Tbl_Role_Functionality where Role_Id={0})", id);
            return GHCPK_DAL.DAL.GetData(qtext);

        }

        public static DataTable GetAllFunction() //Add Role,
        {
            string qtext = string.Format(@"SELECT    *
                                            FROM         Tbl_Function ");
            return GHCPK_DAL.DAL.GetData(qtext);

        }

        public static DataTable GetRolebyID(int roleid) //Add Role
        {
            string qtext = string.Format(@"SELECT    *
                                            FROM         Tbl_Role where Role_Id={0}", roleid);
            return GHCPK_DAL.DAL.GetData(qtext);

        }

        public static DataTable GetRolesbyName(String name)  //Add Role
        {
            string qtext = string.Format(@"SELECT    *
                                            FROM         Tbl_Role where Role_Name={0}", name);
            return GHCPK_DAL.DAL.GetData(qtext);

        }

        public static DataTable GetMaxRole_Functionality_ID()  //Add Role
        {
            string qtext = string.Format(@"SELECT   max (Role_functionality_Id) as Role_functionality_Id
                                            FROM         Tbl_Role_functionality");
            return GHCPK_DAL.DAL.GetData(qtext);
        }

        public static bool UpdateRolesDetail(int id, string name, String updated_name, DateTime updated_date) //Add User
        {
            string qtext = string.Format(@"UPDATE Tbl_Role SET 
                                        Role_Name = '{1}',Updated_By='{2}',Updated_Date = '{3}'  
                        WHERE Role_Id = {0}", id, name, updated_name, updated_date);
            return GHCPK_DAL.DAL.ExecuteQuerysql(qtext) > 0;
        }

        public static bool DeletFunctionbyroleID(int roleid) //Add Role
        {
            string qtext = string.Format(@"delete    
                                            FROM         Tbl_Role_Functionality where Role_Id={0}", roleid);
            return GHCPK_DAL.DAL.ExecuteQuerysql(qtext) > 0;

        }

        public static bool InsertRolesFunctions(int max, int roleid, int functionID, string created_name, DateTime creatred_date, string updated_name, DateTime updated_date) // Add Role
        {
            string qtext = string.Format(@"INSERT INTO Tbl_Role_Functionality
                                          (Role_functionality_Id,Role_Id,Function_Id,Created_By,Created_Date,Updated_By,Updated_Date)
                                            VALUES     ('{0}','{1}','{2}','{3}','{4}','{5}','{6}')", max, roleid, functionID, created_name, creatred_date, updated_name, updated_date);
            return GHCPK_DAL.DAL.ExecuteQuerysql(qtext) > 0;
        }

        public static bool InsertRoles(string name, string created_name, DateTime creatred_date, string updated_name, DateTime updated_date) // Add Role
        {
            string qtext = string.Format(@"INSERT INTO Tbl_Role
                                          (Role_Name,Created_By,Created_Date,Updated_By,Updated_Date)
                                            VALUES     ('{0}','{1}','{2}','{3}','{4}')", name, created_name, creatred_date, updated_name, updated_date);
            return GHCPK_DAL.DAL.ExecuteQuerysql(qtext) > 0;
        }

        public static DataTable GetRolesbyNameANDUserID(String name) //Add Role
        {
            string qtext = string.Format(@"SELECT    *
                                            FROM         Tbl_Role where Role_Name='{0}'", name);
            return GHCPK_DAL.DAL.GetData(qtext);

        }





















       


        public static DataTable GetMaxRoleID()
        {
            string qtext = string.Format(@"SELECT   max (Role_Id) as Role_Id
                                            FROM         Tbl_Role");
            return GHCPK_DAL.DAL.GetData(qtext);
        }

        
       
      



       
       
        
       
        public static DataTable GetFunctionbyId(int id)
        {
            string qtext = string.Format(@"SELECT    *
                                            FROM         Tbl_Function where Function_Id={0}", id);
            return GHCPK_DAL.DAL.GetData(qtext);

        }
       
        public static DataTable GetRolesbyUserID(string UserID)
        {
            string qtext = string.Format(@"SELECT    *
                                            FROM         Tbl_Role where User_Id='{0}'", UserID);
            return GHCPK_DAL.DAL.GetData(qtext);

        }
       

    }
}