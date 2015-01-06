using System;
using System.Collections.Generic;
//using System.Linq;
using System.Text;
using System.Web;
using System.Data;
using System.Data.Odbc;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace GHCPK_DAL
{
    public static class DAL
    {

        public static String connectionString;
        static DAL()
        {
            //ABIDIFTIKHAR\MYSQL  
          //  connectionString =(@"Data Source=ABIDIFTIKHAR\MYSQL;Initial Catalog=GHCPK;Integrated Security=True");
        }
        public static int ExecuteQuerysql(String query)
        {
            SqlConnection sqlConnection = null;
            SqlTransaction sqlTransaction = null;
            int retVal = -1;
            try
            {
                sqlConnection = new SqlConnection();
                sqlConnection.ConnectionString = connectionString;
                sqlConnection.Open();
                
                //sqlTransaction = SqlTransaction.BeginTransaction();
                SqlCommand sqlCommmand = new SqlCommand(query, sqlConnection);
                // odbcCommmand.Transaction = odbcTransaction;
                retVal = sqlCommmand.ExecuteNonQuery();
                //odbcTransaction.Commit();
                
            }
            catch (Exception ex)
            {
                throw new Exception( ex.Message);
            }
            finally
            {
                if (sqlConnection.State == ConnectionState.Open)
                    sqlConnection.Close();

            }
            return retVal;
        }

        

        public static DataTable GetData(String query)
        {

            SqlConnection sqlConnection = null;
            DataTable table = new DataTable();

            try
            {
                sqlConnection = new SqlConnection();
                sqlConnection.ConnectionString = connectionString;
                WriteLog(connectionString);
                SqlCommand sqlCommmand = new SqlCommand(query, sqlConnection);
                SqlDataAdapter sqlAdapter = new SqlDataAdapter(sqlCommmand);
                sqlAdapter.Fill(table);
                WriteLog(table.Rows.Count.ToString());
            }
            catch (Exception exception)
            {
                WriteLog(exception.Message);
                throw new Exception(exception.Message);
            }
            finally
            {
                sqlConnection.Close();
            }

            return table;
        }
        public static DataTable GetData(String query, int startRecord, int maxRecords)
        {
            SqlConnection sqlConnection = null;
            DataTable table = new DataTable();
            try
            {
                sqlConnection = new SqlConnection();
                sqlConnection.ConnectionString = connectionString;
                SqlCommand sqlCommmand = new SqlCommand(query, sqlConnection);
                SqlDataAdapter sqlAdapter = new SqlDataAdapter(sqlCommmand);
                sqlAdapter.Fill(startRecord, maxRecords, table);
            }
            catch (Exception ex)
            {
            }

            return table;
        }
        public static void WriteLog(String Log)
        {

            StreamWriter LogWriter = new StreamWriter(AppDomain.CurrentDomain.BaseDirectory + "\\Log.txt", true);
            LogWriter.WriteLine(System.DateTime.Now.ToString() + " --- " + Log);
            LogWriter.Close();
        }
    }

}