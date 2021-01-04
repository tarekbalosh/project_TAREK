using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using alaa.sql2;

namespace Project_Alaa
{
    public partial class Student : System.Web.UI.Page
    {
        DataAccessLayer ds;

        protected void Page_Load(object sender, EventArgs e)
        {

            int dept_id_nw = Convert.ToInt32(Application["nwId"]);
            int dept_id_sw = Convert.ToInt32(Application["swId"]);
            int dept_id_ha = Convert.ToInt32(Application["haId"]);
            int? student_dept_id = Convert.ToInt32(Session["dept_id"]);
            int? sessionyear = Convert.ToInt32(Session["stu_year"]);
            if (Session["stu_id"] == null)
            {
                Response.Redirect("Home.aspx");
                return;
            }
            else
            {

                //subject hardware
                if (dept_id_ha == student_dept_id)
                {
                    if (sessionyear == 1)
                    {
                        ds = new DataAccessLayer();
                        var computer = ds.SelectData("select sub_name subject,teacher,sub_describe describtion from tb_subject where dept_id='" + student_dept_id + "' and sub_year=1");
                        gridcomputer.DataSource = computer;
                        gridcomputer.DataBind();

                        network.Visible = false;
                        program.Visible = false;
                    }
                    else
                    {
                        ds = new DataAccessLayer();
                        var computer = ds.SelectData("select sub_name subject,teacher,sub_describe describtion from tb_subject where dept_id='" + student_dept_id + "' and sub_year=2");
                        gridcomputer.DataSource = computer;
                        gridcomputer.DataBind();

                        network.Visible = false;
                        program.Visible = false;

                    }

                }

                //subject software
                if (dept_id_sw == student_dept_id)
                {
                    if (sessionyear == 1)
                    {
                        ds = new DataAccessLayer();
                        var software = ds.SelectData("select sub_name subject,teacher,sub_describe describtion from tb_subject where dept_id='" + student_dept_id + "' and sub_year=1");
                        gridprograme.DataSource = software;
                        gridprograme.DataBind();

                        network.Visible = false;
                        computer.Visible = false;
                    }
                    else
                    {
                        ds = new DataAccessLayer();
                        var software = ds.SelectData("select sub_name subject,teacher,sub_describe describtion from tb_subject where dept_id='" + student_dept_id + "' and sub_year=2");
                        gridprograme.DataSource = software;
                        gridprograme.DataBind();

                        network.Visible = false;
                        computer.Visible = false;

                    }

                }

                //subject network
                if (dept_id_nw == student_dept_id)
                {
                    if (sessionyear == 1)
                    {
                        ds = new DataAccessLayer();
                        var network = ds.SelectData("select sub_name subject,teacher,sub_describe describtion from tb_subject where dept_id='" + student_dept_id + "' and sub_year=1");
                        gridnetworke.DataSource = network;
                        gridnetworke.DataBind();

                        computer.Visible = false;
                        program.Visible = false;
                    }
                    else
                    {
                        ds = new DataAccessLayer();
                        var network = ds.SelectData("select sub_name subject,teacher,sub_describe describtion from tb_subject where dept_id='" + student_dept_id + "' and sub_year=2");
                        gridnetworke.DataSource = network;
                        gridnetworke.DataBind();

                        computer.Visible = false;
                        program.Visible = false;

                    }

                }
            }
        }

        protected void btn_yes_Click(object sender, EventArgs e)
        {
            Session["stu_id"] = null;
            Response.Redirect("Home.aspx");
            return;
        }
    }
}