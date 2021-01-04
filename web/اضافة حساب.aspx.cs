using project.classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class اضافة_حساب : System.Web.UI.Page
    {
        Data_Access das;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin_id"] == null)
            {
                Response.Redirect("Home.aspx");
                return;
            }
            first_n_lab.Text = last_n_lab.Text = pass_lab.Text = email_lab.Text = "*";
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(FName.Value))
            {
                first_n_lab.Text = "the field is null";
                return;
            }
            if (string.IsNullOrEmpty(LName.Value))
            {
                last_n_lab.Text = "the field is null";
                return;
            }
            if (string.IsNullOrEmpty(gmil.Value))
            {
                email_lab.Text = "the field is null";
                return;
            }
            if (string.IsNullOrEmpty(pass.Value))
            {
                pass_lab.Text = "the field is null";
                return;
            }
            if (pass.Value.Length < 7)
            {
                pass_lab.Text = "the pass word lower from 7";
                return;
            }
            bool check_email = false;
            int t = 0;
            for (int i = 0; i < gmil.Value.Length; i++)
            {
                if (gmil.Value[i] == '@')
                {
                    if (gmil.Value[i + 1] == 't')
                    {
                        if (gmil.Value[i + 2] == 'c')
                        {
                            if (gmil.Value[i + 3] == 'c')
                            {
                                check_email = true;
                                t = i + 4;
                                break;
                            }
                        }
                    }

                }
            }
                if (check_email == true)
                {
                    for (int i = t; i < gmil.Value.Length; i++)
                    {
                        if (gmil.Value[i] == '@')
                        {
                            check_email = false;
                            break;
                        }
                    }
                }
            if (check_email == false)
            {

                email_lab.Text = "this field is email add \"@tcc\"";
                return;
            }

            das = new Data_Access();

            var dt_admin =das.SelectData("select admin_email from tb_admin");
         
            for (int i = 0; i < dt_admin.Rows.Count; i++)
            {
                
                if (dt_admin.Rows[i][0].ToString() == gmil.Value)
                {
                    Response.Write("<script>alert('the email alrady enter')</script>");
                    return;
                }
            }
            das.open_connection();
            das.EX_Non_Query("insert into tb_admin(admin_name,admin_nickname,admin_email,admin_password) values('"+ FName.Value + "','"+ LName.Value + "','"+ gmil.Value + "','"+ pass.Value +"');");
            das.close_connection();
            FName.Value = LName.Value = gmil.Value = pass.Value = "";
            Response.Write("<script>alert('added complet')</script>");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Control Admin.aspx");
            return;
        }
    }
}