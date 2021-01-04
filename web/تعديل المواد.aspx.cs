using project.classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class استعراض_المواد : System.Web.UI.Page
    {
        Data_Access das;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin_id"] == null)
            {
                Response.Redirect("Home.aspx");
                return;
            }
            das = new Data_Access();
            var dt_sub = das.SelectData("select * from tb_subject");
            
                var td = das.SelectData("select * from tb_dept");
                select_dept.DataSource = td;
                select_dept.DataTextField = "dept_name";
                select_dept.DataValueField = "dept_id";
                select_dept.DataBind();
                ddl_sud_name.DataSource = dt_sub;
                ddl_sud_name.DataTextField = "sub_name";
                ddl_sud_name.DataValueField = "sub_name";
                ddl_sud_name.DataBind();
            
            dt_sub.Columns.RemoveAt(0);
            GridView_subject.DataSource = dt_sub;
            GridView_subject.DataBind();
        }

        protected void btn_edite_Click(object sender, EventArgs e)
        {

            if (string.IsNullOrEmpty(n_techer.Value))
            {
                techer_n_lab.Text = "the field is null";
                return;
            }
                if (string.IsNullOrEmpty(describe.Value))
                {
                    discr_lab.Text = "the field is null";
                    return;
                }

                das = new Data_Access();
            das.open_connection();
            das.EX_Non_Query("update tb_subject set sub_name='" + ddl_sud_name.Text + "', teacher='" + n_techer.Value + "',dept_id=" + select_dept.Value + ",sub_year='" + select_year.Value + "',sub_describe='" + describe.Value + "'where sub_name='" + ddl_sud_name.Text + "'");
            das.close_connection();
            var dt_sub = das.SelectData("select * from tb_subject");
            GridView_subject.DataSource = dt_sub;
            GridView_subject.DataBind();
            describe.Value = "";
            n_techer.Value = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            das = new Data_Access();
            das.open_connection();
            das.EX_Non_Query("delete from tb_subject where sub_name='" + ddl_sud_name.Text + "'");
            das.close_connection();
            var dt_sub = das.SelectData("select * from tb_subject");
            GridView_subject.DataSource = dt_sub;
            GridView_subject.DataBind();
        }

        protected void ddl_sud_name_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void ddl_sud_name_TextChanged(object sender, EventArgs e)
        {
            das = new Data_Access();
            var dt_one_sub = das.SelectData("select * from tb_subject where sub_name='" + ddl_sud_name.Text + "'");
            GridView_subject.DataSource = dt_one_sub;
            GridView_subject.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Control Admin.aspx");
            return;
        }
    }
}