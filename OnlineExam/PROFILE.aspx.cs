using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineExam
{
    public partial class PROFILE : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("LOGIN.aspx");
            }
            
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e) // update
        {
            String query = "update userinfo set pwd=@pwd,email=@email,address=@address,phone=@phone where userid = '" + TextBox8.Text + "'";
            SqlConnection sqlcon = new SqlConnection("Trusted_Connection = Yes; database = onlineExam ; server = AMAN");
            sqlcon.Open();
            SqlCommand cmd = new SqlCommand(query, sqlcon);
            cmd.Parameters.AddWithValue("@pwd", TextBox2.Text);
            cmd.Parameters.AddWithValue("@email", TextBox3.Text);
            cmd.Parameters.AddWithValue("@address", TextBox5.Text);
            cmd.Parameters.AddWithValue("@phone", TextBox6.Text);
            cmd.ExecuteNonQuery();
            sqlcon.Close();
            Label11.Visible = true;

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            int i = 0;
            String query = "select * from userinfo where uname = '" + Session["username"].ToString() + "'";
            SqlConnection sqlCon = new SqlConnection("Trusted_Connection = Yes; database = onlineExam; server = AMAN");
            sqlCon.Open();
            SqlDataAdapter da = new SqlDataAdapter(query, sqlCon);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if ((i >= 0) && (i < ds.Tables[0].Rows.Count))
            {
                TextBox1.Text = ds.Tables[0].Rows[i][1].ToString();
                TextBox2.Text = ds.Tables[0].Rows[i][2].ToString();
                TextBox3.Text = ds.Tables[0].Rows[i][3].ToString();
                TextBox4.Text = ds.Tables[0].Rows[i][4].ToString();
                TextBox5.Text = ds.Tables[0].Rows[i][5].ToString();
                TextBox6.Text = ds.Tables[0].Rows[i][6].ToString();
                TextBox7.Text = ds.Tables[0].Rows[i][7].ToString();
                TextBox8.Text = ds.Tables[0].Rows[i][0].ToString(); // userid
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("LOGIN.aspx");
        }
    }
}