﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace project.classes
{
    public class Data_Access
    {

        string constring;
        SqlConnection connection;
        SqlCommand sqlcmd;
        public Data_Access()
        {
            constring = ConfigurationManager.ConnectionStrings["tcc_con"].ConnectionString;
            connection = new SqlConnection(constring);
        }
        public void open_connection()
        {
            if (connection.State == ConnectionState.Closed)
            {
                connection.Open();
            }
        }
        public DataTable SelectData(string Query)
        {
            sqlcmd = new SqlCommand(Query, connection);
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlcmd);
            DataTable dataTable = new DataTable();
            sqlDataAdapter.Fill(dataTable);
            return dataTable;
        }
        public int EX_Non_Query(string Query)
        {
            sqlcmd = new SqlCommand(Query, connection);
            return sqlcmd.ExecuteNonQuery();
        }
        public void close_connection()
        {
            if (connection.State == ConnectionState.Open)
            {
                connection.Close();
            }
        }
        public void param(string param_name, object value)
        {
            sqlcmd.Parameters.AddWithValue(param_name, value);
        }
    }
}