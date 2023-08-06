using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineExam
{
    public partial class VIEWSTUDENTS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("LOGIN.aspx");
            }
            SqlConnection sqlcon = new SqlConnection("Trusted_Connection = Yes; database = onlineExam; server = AMAN");
            sqlcon.Open();
            SqlDataAdapter da = new SqlDataAdapter("select * from userinfo", sqlcon);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection sqlcon = new SqlConnection("Trusted_Connection = Yes; database = onlineExam; server = AMAN");
            sqlcon.Open();
            String query = "update userinfo set pwd=@pass where uname = '" + TextBox1.Text + "'";
            SqlCommand cmd = new SqlCommand(query, sqlcon);
            cmd.Parameters.AddWithValue("@pass", TextBox2.Text);
            int i = cmd.ExecuteNonQuery();
            sqlcon.Close();
            TextBox1.Text = "";
            TextBox2.Text = "";
            Label5.Visible = true;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("LOGIN.aspx");
        }
    }
}