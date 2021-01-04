using project.classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class اضافة_طالب : System.Web.UI.Page
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
            if (!IsPostBack)
            {
               
                var td = das.SelectData("select * from tb_dept");
                select_dept.DataSource = td;
                select_dept.DataTextField = "dept_name";
                select_dept.DataValueField = "dept_id";
                select_dept.DataBind();
            }
            stu_n_lab.Text = fastu_n_lab.Text = mastu_n_lab.Text = nickname_lab.Text = email_lab.Text = pas_lab.Text = phone_lab.Text = born_lab.Text = "*";
        }

        protected void button_add_stu_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(NAME.Value))
            {
                stu_n_lab.Text = "the field is null";
                return;
            }
            if (string.IsNullOrEmpty(NF.Value))
            {
                fastu_n_lab.Text = "the field is null";
                return;
            }
            if (string.IsNullOrEmpty(nicke_name.Value))
            {
                nickname_lab.Text = "the field is null";
                return;
            }
            if (string.IsNullOrEmpty(NM.Value))
            {
                mastu_n_lab.Text = "the field is null";
                return;
            }
            if (string.IsNullOrEmpty(born.Value))
            {
                born_lab.Text = "the field is null";
                return;
            }
            if (string.IsNullOrEmpty(PHONE.Value))
            {
                phone_lab.Text = "the field is null";
                return;
            }
            if (string.IsNullOrEmpty(GMAIL.Value))
            {
                email_lab.Text = "the field is null";
                return;
            }
            if (string.IsNullOrEmpty(PASSWORD.Value))
            {
                pas_lab.Text = "the field is null";
                return;
            }
            if (PASSWORD.Value.Length < 7)
            {
                pas_lab.Text = "the pass word lower from 7";
                return;
            }

            bool check_date = false;
          
            for (int i = 0; i < born.Value.Length; i++)
            {
                if (born.Value[i] == '/')
                {
                    check_date = true;
                    break;
                }
            }
            if (check_date == false)
            {
                born_lab.Text = "this feild is date add \' / \' ";
                return;
            }
         
            bool ckeck_email = false;
            int t=0;
            for (int i = 0; i < GMAIL.Value.Length; i++)
            {
                if (GMAIL.Value[i] == '@')
                {
                    ckeck_email = true;
                    t = i+1;
                    break;
                }
            }
            if (ckeck_email == true)
            {
                for (int i = t; i < GMAIL.Value.Length; i++)
                {
                    if (GMAIL.Value[i] == '@')
                    {
                        ckeck_email = false;
                        break;
                    }
                }
            }
            if (ckeck_email == false)
            {
                email_lab.Text = "this field is email add \"@ \"";
                return;
            }
            var dt_stu = das.SelectData("select stu_email from tb_student");
            for (int i = 0; i < dt_stu.Rows.Count; i++)
            {
                if (dt_stu.Rows[i][0].ToString() == GMAIL.Value)
                {
                    Response.Write("<script>alert('the email alrady enter')</script>");
                    email_lab.Text = "the email  alrady enter";

                    return;
                }
            }
            bool check_number = false;
            if (PHONE.Value.Length == 10)
            {
                check_number = true;
            }
         
            if (check_number == false)
            {
                phone_lab.Text = "this field is phone length is 10";
                return;
            }
          
            das = new Data_Access();
            try
            {
                das.open_connection();
                das.EX_Non_Query("insert into tb_student( stu_name,stu_nickname,f_stu_name,m_sut_name,dept_id,stu_year,birthy_date,phone_number,stu_email,stu_password) values('" + NAME.Value + "','" + nicke_name.Value + "','" + NF.Value + "','" + NM.Value + "','" + select_dept.Value + "','" + YEAR.Value + "','" + born.Value + "','" + PHONE.Value + "','" + GMAIL.Value + "','" + PASSWORD.Value + "');");
                NAME.Value = nicke_name.Value = born.Value = GMAIL.Value = PASSWORD.Value = NM.Value = NF.Value = "";
                Response.Write("<script>alert('added complet')</script>");
               
            }
            catch
            {
               Response.Write("<script>alert('error')</script>");
                Response.Redirect("اضافة طالب.aspx");
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