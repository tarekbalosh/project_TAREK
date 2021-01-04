using project.classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace project
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            Data_Access das = new Data_Access();
           das.open_connection();
            //Check if Dept not inserted
            var depts = das.SelectData("SELECT * FROM tb_dept");
            if (depts.Rows.Count == 0)
            {
                das.EX_Non_Query("INSERT INTO tb_dept VALUES('SOFTWARE')");
                das.EX_Non_Query("INSERT INTO tb_dept VALUES('NETWORKS')");
                das.EX_Non_Query("INSERT INTO tb_dept VALUES('COMPUTERS')");
            }
            var Admin = das.SelectData("select admin_id FROM tb_admin");
            if (Admin.Rows.Count == 0)
            {
                das.EX_Non_Query("INSERT INTO tb_admin(admin_name,admin_nickname,admin_email,admin_password) VALUES('abd','aldaya','abd@tcc.com','12345678');");
            }
            var adid = das.SelectData("select admin_id FROM tb_admin");
            Application["adid"] = adid.Rows[0][0];

            var swId = das.SelectData("SELECT dept_id FROM tb_dept WHERE dept_name = 'SOFTWARE'");
            var swIdRows = swId.Rows[0][0];
            Application["swId"] = swIdRows;
            var nwId = das.SelectData("SELECT dept_id FROM tb_dept WHERE dept_name = 'NETWORKS'");
            var nwIdRows = nwId.Rows[0][0];
            Application["nwId"] = nwIdRows;
            var coId = das.SelectData("SELECT dept_id FROM tb_dept WHERE dept_name = 'COMPUTERS'");
            var coIdRows = coId.Rows[0][0];
            Application["haId"] = coIdRows;
            das.close_connection();
            
        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {
            Session["admin_id"] = null;
            Session["stu_id"] = null;
            Response.Redirect("Home.aspx");
            return;

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}