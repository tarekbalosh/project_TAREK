using project.classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class حذف_حسابات : System.Web.UI.Page
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
            var td_display = das.SelectData("select * from tb_admin");
            ddl_email.DataSource = td_display;
            ddl_email.DataTextField = "admin_email";
            ddl_email.DataValueField = "admin_email";
            ddl_email.DataBind();
        }

        protected void btn_del_Click(object sender, EventArgs e)
        {
            try
            {
                das = new Data_Access();
                das.open_connection();
                das.EX_Non_Query("delete from tb_admin where admin_email='" + ddl_email.Text + "'");
                das.close_connection();
                //Response.Write("<script>alert('deleted complet')</script>");
                var td_display = das.SelectData("select * from tb_admin");
                ddl_email.DataSource = td_display;
                ddl_email.DataTextField = "admin_email";
                ddl_email.DataValueField = "admin_email";
                ddl_email.DataBind();
            }
            catch
            {
                Response.Redirect("حذف حسابات.aspx");
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