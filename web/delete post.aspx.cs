using project.classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class delete_post : System.Web.UI.Page
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
            var td_display = das.SelectData("select * from tb_post");
            ddl_t_delet.DataSource = td_display;
            ddl_t_delet.DataTextField = "post_title";
            ddl_t_delet.DataValueField = "post_title";
            ddl_t_delet.DataBind();
        }

        protected void btn_delet_post_Click(object sender, EventArgs e)
        {
            das = new Data_Access();
            das.open_connection();
            das.EX_Non_Query("delete from tb_post where post_title='" + ddl_t_delet.Text + "'");
            das.close_connection();
           // Response.Write("<script>alert('deleted complet')</script>");
            var td_display = das.SelectData("select * from tb_post");
            ddl_t_delet.DataSource = td_display;
            ddl_t_delet.DataTextField = "post_title";
            ddl_t_delet.DataValueField = "post_title";
            ddl_t_delet.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Control Admin.aspx");
            return;
        }
    }
}