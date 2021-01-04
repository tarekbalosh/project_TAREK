using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using alaa.sql2;

namespace Project_Alaa
{
    public partial class Home : System.Web.UI.Page
    {
        DataAccessLayer ds;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

            ds = new DataAccessLayer();

            int coapp = Convert.ToInt32(Application["haId"]);
            int swapp = Convert.ToInt32(Application["swId"]);
            int nwapp = Convert.ToInt32(Application["nwId"]);
            if (DropDownList1.SelectedValue == "1")
            {
                var programmer1 = ds.SelectData("select sub_name subject, teacher, sub_describe describtion from tb_subject where dept_id = '"+ swapp +"' and sub_year = 1");
                programmer2.DataSource = programmer1;
                programmer2.DataBind();
                var network1 = ds.SelectData("select sub_name subject,teacher,sub_describe describtion from tb_subject where dept_id='" + nwapp +"' and sub_year=1 ");
                networkes2.DataSource = network1;
                networkes2.DataBind();
                var computer = ds.SelectData("select sub_name subject,teacher,sub_describe describtion from tb_subject where dept_id='" + coapp +"' and sub_year=1");
                computers2.DataSource = computer;
                computers2.DataBind();

            }
            if (DropDownList1.SelectedValue == "2")
            {
                ds = new DataAccessLayer();
                var programmer1 = ds.SelectData("select sub_name subject,teacher,sub_describe describtion from tb_subject where dept_id='" + swapp + "' and sub_year=2");
                programmer2.DataSource = programmer1;
                programmer2.DataBind();
                var network1 = ds.SelectData("select sub_name subject,teacher,sub_describe describtion from tb_subject where dept_id='" + nwapp + "' and sub_year=2 ");
                networkes2.DataSource = network1;
                networkes2.DataBind();
                var computer = ds.SelectData("select sub_name subject,teacher,sub_describe describtion from tb_subject where dept_id='" + coapp + "' and sub_year=2");
                computers2.DataSource = computer;
                computers2.DataBind();
            }
        }
        //تسجيل الدخول
        protected void Submit_Click(object sender, EventArgs e)
        {

            bool check_email = true;
            for (int i = 0; i < usr1.Value.Length; i++)
            {
                if (usr1.Value[i] == '-'|| usr1.Value[i]=='*')
                {
                    check_email = false;
                    break;
                }
            }

            if (check_email == false)
            {
                Response.Write("<script>alert('you wtite \"*\" or  \"-\"')</script>");
                return;
            }
            DataAccessLayer dataAccessLayer = new DataAccessLayer();
            dataAccessLayer.Open();
            string email = usr1.Value;
            string password = pwd1.Value;
            var demail = dataAccessLayer.SelectData("select stu_email from tb_student");
            var ademail = dataAccessLayer.SelectData("select admin_email from tb_admin");
            for (int i = 0; i < demail.Rows.Count; i++)
            {
                if (demail.Rows[i][0].ToString() == email)
                {
                    Session["stu_email"] = demail.Rows[i][0];
                    var dpwd = dataAccessLayer.SelectData("select stu_password,dept_id,stu_year,stu_id from tb_student");
                    if (dpwd.Rows[i][0].ToString() == password)
                    {
                        Session["stu_year"] = dpwd.Rows[i][2];
                        Session["dept_id"] = dpwd.Rows[i][1];
                        Session["stu_password"] = dpwd.Rows[i][0];
                        Session["stu_id"] = dpwd.Rows[i][3];
                        Response.Redirect("student.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Username or password is incorrect')</script>");
                        return;
                    }
                }
            }
            for (int i = 0; i < ademail.Rows.Count; i++)
            {
                if (ademail.Rows[i][0].ToString() == email)
                {
                    Session["admin_email"] = ademail.Rows[i][0];
                    var adpwd = dataAccessLayer.SelectData("select admin_password,admin_id from tb_admin");
                    if (adpwd.Rows[i][0].ToString() == password)
                    {
                        Session["admin_id"] = adpwd.Rows[i][1];
                        Session["admin_password"] = adpwd.Rows[i][0];
                        Response.Redirect("Control Admin.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Username or password is incorrect')</script>");
                        return;
                    }
                }
            }
            dataAccessLayer.Close();
        }

    }

}
    
