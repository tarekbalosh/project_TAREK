using project.classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web
{
    public partial class display_student : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin_id"] == null)
            {
                Response.Redirect("Home.aspx");
                return;
            }
            Data_Access das;
            das = new Data_Access();
            var dt_sub = das.SelectData("select * from tb_student");
            dt_sub.Columns.RemoveAt(0);
            GridView_D_stu.DataSource = dt_sub;
            GridView_D_stu.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Control Admin.aspx");
            return;
        }

        protected void add_stu_Click(object sender, EventArgs e)
        {
            Response.Redirect("اضافة طالب.aspx");
            return;
        }

        protected void GridView_D_stu_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "manage")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridView_D_stu.Rows[rowIndex];
                var student_email = row.Cells[9].Text;
               
                Response.Redirect($"edite_stu.aspx?Email={student_email}");
                return;


            }
        }
    }
}