using project.classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class add_post : System.Web.UI.Page
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
                ddl_dept.DataSource = td;
                ddl_dept.DataTextField = "dept_name";
                ddl_dept.DataValueField = "dept_id";
                ddl_dept.DataBind();
            }
        }

        protected void btn_add_post_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(post_tit.Value))
            {
                title_lab.Text = "the field is null";
                return;
            }
            if (string.IsNullOrEmpty(post.Value))
            {
                post_lab.Text = "the field is null";
                return;
            }
            das = new Data_Access();
            string y = DateTime.Now.Year.ToString();
            string d = DateTime.Now.Day.ToString();
            string m = DateTime.Now.Month.ToString();
            try
            {
                das.open_connection();
                das.EX_Non_Query("insert into tb_post(post_title,posts,dept_id,post_date) values('" + post_tit.Value + "','" + post.Value + "','" + ddl_dept.Text + "','" + y + "/" + m + "/" + d + "');");
                post_tit.Value = post.Value = "";
              
            }
            catch
            {
                Response.Write("<script>alert('error')</script>");
                Response.Redirect("add_post.aspx");
                return;
            }
            finally
            {
                das.close_connection();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Control Admin.aspx");
            return;
        }
    }
}


