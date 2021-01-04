using project.classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class اضافة_مادة : System.Web.UI.Page
    {
        Data_Access das;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin_id"] == null)
            {
                Response.Redirect("Home.aspx");
                return;
            }
            if (!IsPostBack)
            {
                das = new Data_Access();
                var td = das.SelectData("select * from tb_dept");
                select_dept.DataSource = td;
                select_dept.DataTextField = "dept_name";
                select_dept.DataValueField = "dept_id";
                select_dept.DataBind();
            }
            sub_n_lab.Text = techer_n_lab.Text = desc_lab.Text = "*";
        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(n_techer.Value))
            {
                techer_n_lab.Text = "the field is null";
                return;
            }
            if (string.IsNullOrEmpty(n_subject.Value))
            {
                sub_n_lab.Text = "the field is null";
                return;
            }
            if (string.IsNullOrEmpty(describe.Value))
            {
                desc_lab.Text = "the field is null";
                return;
            }

            das = new Data_Access();
            das.open_connection();
            das.EX_Non_Query("insert into tb_subject (sub_name,teacher,dept_id,sub_year,sub_describe) values('" + n_subject.Value + "','" + n_techer.Value + "'," + select_dept.Value + ",'" + select_year.Value + "','" + describe.Value + "');");
            das.close_connection();
            Response.Write("<script>alert('added complet')</script>");
            n_techer.Value = "";
            describe.Value = "";
            n_subject.Value = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Control Admin.aspx");
            return;
        }
    }
}