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
    public partial class SETMCQ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("LOGIN.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)  // Insert Buuton
        {
            String query = "insert into mcqdetails values (@ques,@op1,@op2,@op3,@op4,@ans,@qtag);";
            SqlConnection sqlcon = new SqlConnection("Trusted_Connection = Yes; database = onlineExam; server = AMAN");
            sqlcon.Open();
            SqlCommand cmd = new SqlCommand(query, sqlcon);
            cmd.Parameters.AddWithValue("@ques", TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("@op1", TextBox2.Text.Trim());
            cmd.Parameters.AddWithValue("@op2", TextBox3.Text.Trim());
            cmd.Parameters.AddWithValue("@op3", TextBox4.Text.Trim());
            cmd.Parameters.AddWithValue("@op4", TextBox5.Text.Trim());
            cmd.Parameters.AddWithValue("@ans", TextBox6.Text.Trim());
            cmd.Parameters.AddWithValue("@qtag", TextBox7.Text.Trim());
            
            int i = cmd.ExecuteNonQuery();
            sqlcon.Close();

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)  // select Button
        {
           
            int i = 0;
            String query = "select * from mcqdetails where qno = '" + TextBox8.Text + "'";
            SqlConnection sqlCon = new SqlConnection("Trusted_Connection = Yes;database = onlineExam;server = AMAN");
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
            }
        }

        protected void Button3_Click(object sender, EventArgs e) // update Button
        {
            String query = "update mcqdetails set ques=@ques,op1=@op1,op2=@op2,op3=@op3,op4=@op4,ans=@ans,qtag=@qtag where qno = '" + TextBox8.Text + "'";
            SqlConnection sqlcon = new SqlConnection("Trusted_Connection = Yes; database = onlineExam; server = AMAN");
            sqlcon.Open();
            SqlCommand cmd = new SqlCommand(query, sqlcon);
            cmd.Parameters.AddWithValue("@ques", TextBox1.Text);
            cmd.Parameters.AddWithValue("@op1", TextBox2.Text);
            cmd.Parameters.AddWithValue("@op2", TextBox3.Text);
            cmd.Parameters.AddWithValue("@op3", TextBox4.Text);
            cmd.Parameters.AddWithValue("@op4", TextBox5.Text);
            cmd.Parameters.AddWithValue("@ans", TextBox6.Text);
            cmd.Parameters.AddWithValue("@qtag", TextBox7.Text);
            int i = cmd.ExecuteNonQuery();
            sqlcon.Close();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
        }

        protected void Button4_Click(object sender, EventArgs e) // clear Button
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("ADMINDASH.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("LOGIN.aspx");
        }
    }
}