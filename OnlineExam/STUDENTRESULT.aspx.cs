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
    public partial class STUDENTRESULT : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int i=0;
            if (Session["username"] == null)
            {
                Response.Redirect("LOGIN.aspx");
            }
            String query = "select * from userinfo where uname = '" + Session["username"].ToString() + "'";
            SqlConnection con = new SqlConnection("Trusted_Connection = Yes; database = onlineExam; server = AMAN");
            con.Open();
            
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if ((i >= 0) && (i < ds.Tables[0].Rows.Count))
            {
                TextBox1.Text = ds.Tables[0].Rows[i][0].ToString();
                TextBox2.Text = ds.Tables[0].Rows[i][1].ToString();
                TextBox3.Text = ds.Tables[0].Rows[i][8].ToString();
                TextBox4.Text = ds.Tables[0].Rows[i][4].ToString();
                TextBox5.Text = "5";
                TextBox6.Text = "5";
                if (Session["_tMark"] == null)
                {
                    TextBox7.Text = "";
                }
                else
                {
                    TextBox7.Text = Session["_tMark"].ToString();
                }
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("LOGIN.aspx");
        }
    }
}