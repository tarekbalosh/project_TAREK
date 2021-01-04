using project.classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class delet_student : System.Web.UI.Page
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
                var td = das.SelectData("select * from tb_student");
                ddl_admin.DataSource = td;
                ddl_admin.DataTextField = "stu_email";
                ddl_admin.DataValueField = "stu_email";
                ddl_admin.DataBind();
            }
        }

        protected void btn_delet_Click(object sender, EventArgs e)
        {
            
            try
            {
                das = new Data_Access();
                das.open_connection();
                das.EX_Non_Query("delete from tb_student where stu_email='" + ddl_admin.Text + "'");
                das.close_connection();    
               // Response.Write("<script>alert('deleted complet')</script>");
                var td = das.SelectData("select * from tb_student");
                ddl_admin.DataSource = td;
                ddl_admin.DataTextField = "stu_email";
                ddl_admin.DataValueField = "stu_email";
                ddl_admin.DataBind();
            }
            catch
            {
                Response.Redirect("delet_student.aspx");
                return;
            }
           

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Control Admin.aspx");
            return;
        }
    }
}