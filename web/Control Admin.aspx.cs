using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class Control_Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin_id"] == null)
            {
                Response.Redirect("Home.aspx");
                return;
            }

        }

        protected void add_stu_Click(object sender, EventArgs e)
        {
            Response.Redirect("اضافة طالب.aspx");
            return;
        }

        protected void del_stu_Click(object sender, EventArgs e)
        {
            Response.Redirect("delet_student.aspx");
            return;
        }

        protected void des_stu_Click(object sender, EventArgs e)
        {
            Response.Redirect("display student.aspx");
            return;
        }

        protected void sub_add_Click(object sender, EventArgs e)
        {
            Response.Redirect("اضافة مادة.aspx");
            return;
        }

        protected void sub_edite_Click(object sender, EventArgs e)
        {
            Response.Redirect("تعديل المواد.aspx");
            return;
        }

        protected void sub_dis_Click(object sender, EventArgs e)
        {
            Response.Redirect("display_subject.aspx");
            return;
        }

        protected void post_add_Click(object sender, EventArgs e)
        {
            Response.Redirect("add_post.aspx");
            return;
        }

        protected void post_del_Click(object sender, EventArgs e)
        {
            Response.Redirect("delete post.aspx");
            return;
        }

        protected void post_dis_Click(object sender, EventArgs e)
        {
            Response.Redirect("display posts.aspx");
            return;
        }

        protected void ac_add_Click(object sender, EventArgs e)
        {
            Response.Redirect("اضافة حساب.aspx");
            return;
        }

        protected void ac_del_Click(object sender, EventArgs e)
        {
            Response.Redirect("حذف حسابات.aspx");
            return;
        }

        protected void ac_dis_Click(object sender, EventArgs e)
        {
            Response.Redirect("display_account.aspx");
            return;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["admin_id"] = null;
            Response.Redirect("Home.aspx");
            return;
        }
    }
}