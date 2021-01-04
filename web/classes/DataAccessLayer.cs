﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace alaa.sql2
{
    public class DataAccessLayer
    {
        string conStr;
        SqlConnection SqlConnection;
        public DataAccessLayer()
        {
            conStr = ConfigurationManager.ConnectionStrings["tcc_con"].ConnectionString;
            SqlConnection = new SqlConnection(conStr);
        }

        public void Open()
        {
            if (SqlConnection.State == ConnectionState.Closed)
            {
                SqlConnection.Open();
            }
        }

        public void Close()
        {
            if (SqlConnection.State == ConnectionState.Open)
            {
                SqlConnection.Close();
            }
        }

        public DataTable SelectData(string Query)
        {
            SqlCommand sqlcmd = new SqlCommand(Query, SqlConnection);
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlcmd);
            DataTable dataTable = new DataTable();
            sqlDataAdapter.Fill(dataTable);
            return dataTable;
        }

        public int ExecuteCommand(string Query)
        {
            SqlCommand sqlcmd = new SqlCommand(Query, SqlConnection);
            return sqlcmd.ExecuteNonQuery();
        }
    }
}
