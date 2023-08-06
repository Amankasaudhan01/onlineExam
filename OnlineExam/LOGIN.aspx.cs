using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineExam
{
    public partial class LOGIN : System.Web.UI.Page
    {
        String uname = "Aman";
        String pwd = "123456789";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if(DropDownList1.SelectedItem.Text == "Admin")
            {
                if(TextBox1.Text == uname && TextBox2.Text == pwd)
                {
                    Session["username"] = uname;
                    Response.Redirect("ADMINDASH.aspx");
                }
                else
                {
                    Label4.Visible = true;
                }
            }
            else if(DropDownList1.SelectedItem.Text == "Student")
            {
                SqlConnection sqlcon = new SqlConnection("Trusted_Connection = Yes; database = onlineExam; server = AMAN");
                sqlcon.Open();
                SqlCommand cmd = new SqlCommand("select count(1) from userinfo where uname = @username and pwd = @password", sqlcon);
                cmd.Parameters.AddWithValue("@username", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@password",TextBox2.Text.Trim());
                int count = Convert.ToInt32(cmd.ExecuteScalar());
                if(count == 1)
                {
                    Session["username"] = TextBox1.Text;
                    Response.Redirect("STUDENTDASH.aspx");
                }
                else
                {
                    Label4.Visible = true;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e) 
        {
            
        }
    }
}