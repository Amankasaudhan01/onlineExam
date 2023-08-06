using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace OnlineExam
{
    public partial class STUDENTSIGNUP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("LOGIN.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String query = "insert into userinfo values (@username,@pass,@email,@class,@address,@phone,@blood,@fname);";
            SqlConnection sqlcon = new SqlConnection("Trusted_Connection = Yes; database = onlineExam; server = AMAN");
            sqlcon.Open();
            SqlCommand cmd = new SqlCommand(query, sqlcon);
            cmd.Parameters.AddWithValue("@username",TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("@pass", TextBox2.Text.Trim());
            cmd.Parameters.AddWithValue("@email", TextBox3.Text.Trim());
            cmd.Parameters.AddWithValue("@class", TextBox4.Text.Trim());
            cmd.Parameters.AddWithValue("@address", TextBox5.Text.Trim());
            cmd.Parameters.AddWithValue("@phone", TextBox6.Text.Trim());
            cmd.Parameters.AddWithValue("@blood", TextBox7.Text.Trim());
            cmd.Parameters.AddWithValue("@fname", TextBox8.Text.Trim());
            int i = cmd.ExecuteNonQuery();
            sqlcon.Close();
            Response.Redirect("LOGIN.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("LOGIN.aspx");
        }
    }
}