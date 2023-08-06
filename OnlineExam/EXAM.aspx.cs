using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineExam
{
    public partial class EXAM : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ET = "";
            SqlConnection sqlcon = new SqlConnection("Trusted_Connection = Yes; database = onlineExam; server = AMAN");
            sqlcon.Open();
            // for 1st question on screen
            String query = "select * from mcqdetails where qno = '" + "5" + "'";
            SqlCommand cmd = new SqlCommand(query, sqlcon);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                qs1.Text = (dr["ques"].ToString());
                RadioButtonList2.Items[0].Text = (dr["op1"].ToString());
                RadioButtonList2.Items[1].Text = (dr["op2"].ToString());
                RadioButtonList2.Items[2].Text = (dr["op3"].ToString());
                RadioButtonList2.Items[3].Text = (dr["op4"].ToString());
                Session["_qs1"] = (dr["ques"].ToString());
                Session["_ans1"] = (dr["ans"].ToString());
                Session["_tag1"] = (dr["qtag"].ToString());
            }
            sqlcon.Close();

            // for 2nd question on screen
            sqlcon.Open();
            query = "select * from mcqdetails where qno = '" + "6" + "'";
            cmd = new SqlCommand(query, sqlcon);
            dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                qs2.Text = (dr["ques"].ToString());
                RadioButtonList3.Items[0].Text = (dr["op1"].ToString());
                RadioButtonList3.Items[1].Text = (dr["op2"].ToString());
                RadioButtonList3.Items[2].Text = (dr["op3"].ToString());
                RadioButtonList3.Items[3].Text = (dr["op4"].ToString());
                Session["_qs2"] = (dr["ques"].ToString());
                Session["_ans2"] = (dr["ans"].ToString());
                Session["_tag2"] = (dr["qtag"].ToString());
            }
            sqlcon.Close();

            // for 3rd question on screen
            sqlcon.Open();
            query = "select * from mcqdetails where qno = '" + "7" + "'";
            cmd = new SqlCommand(query, sqlcon);
            dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                qs3.Text = (dr["ques"].ToString());
                RadioButtonList4.Items[0].Text = (dr["op1"].ToString());
                RadioButtonList4.Items[1].Text = (dr["op2"].ToString());
                RadioButtonList4.Items[2].Text = (dr["op3"].ToString());
                RadioButtonList4.Items[3].Text = (dr["op4"].ToString());
                Session["_qs3"] = (dr["ques"].ToString());
                Session["_ans3"] = (dr["ans"].ToString());
                Session["_tag3"] = (dr["qtag"].ToString());
            }
            sqlcon.Close();

            // for 4th question on screen
            sqlcon.Open();
            query = "select * from mcqdetails where qno = '" + "9" + "'";
            cmd = new SqlCommand(query, sqlcon);
            dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                qs4.Text = (dr["ques"].ToString());
                RadioButtonList5.Items[0].Text = (dr["op1"].ToString());
                RadioButtonList5.Items[1].Text = (dr["op2"].ToString());
                RadioButtonList5.Items[2].Text = (dr["op3"].ToString());
                RadioButtonList5.Items[3].Text = (dr["op4"].ToString());
                Session["_qs4"] = (dr["ques"].ToString());
                Session["_ans4"] = (dr["ans"].ToString());
                Session["_tag4"] = (dr["qtag"].ToString());
            }
            sqlcon.Close();

            // for 4th question on screen
            sqlcon.Open();
            query = "select * from mcqdetails where qno = '" + "10" + "'";
            cmd = new SqlCommand(query, sqlcon);
            dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                qs5.Text = (dr["ques"].ToString());
                RadioButtonList6.Items[0].Text = (dr["op1"].ToString());
                RadioButtonList6.Items[1].Text = (dr["op2"].ToString());
                RadioButtonList6.Items[2].Text = (dr["op3"].ToString());
                RadioButtonList6.Items[3].Text = (dr["op4"].ToString());
                Session["_qs5"] = (dr["ques"].ToString());
                Session["_ans5"] = (dr["ans"].ToString());
                Session["_tag5"] = (dr["qtag"].ToString());
                ET = "5";
            }
            sqlcon.Close();

            if (!IsPostBack)
            {
                int examTime = 1;

                int.TryParse(ET, out examTime);

                Session["Timer"] = DateTime.Now.AddMinutes(examTime).ToString();
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            string a1 = Session["_ans1"].ToString();
            string a2 = Session["_ans2"].ToString();
            string a3 = Session["_ans3"].ToString();
            string a4 = Session["_ans4"].ToString();
            string a5 = Session["_ans5"].ToString();
            int mark = 0;

            if (RadioButtonList2.SelectedIndex > -1)
            {
                if (RadioButtonList2.SelectedItem.Text == a1)
                {
                    mark++;
                }
            }
            if (RadioButtonList3.SelectedIndex > -1)
            {
                if (RadioButtonList3.SelectedItem.Text == a2)
                {
                    mark++;
                }
            }
            if (RadioButtonList4.SelectedIndex > -1)
            {
                if (RadioButtonList4.SelectedItem.Text == a3)
                {
                    mark++;
                }
            }
            if (RadioButtonList5.SelectedIndex > -1)
            {
                if (RadioButtonList5.SelectedItem.Text == a4)
                {
                    mark++;
                }
            }
            if (RadioButtonList6.SelectedIndex > -1)
            {
                if (RadioButtonList6.SelectedItem.Text == a5)
                {
                    mark++;
                }
            }
            Session["_tMark"] = mark;

            /*// for inserting marks in table
            SqlConnection sqlcon = new SqlConnection("Trusted_Connection = Yes; database = onlineExam; server = AMAN");
            sqlcon.Open();
            String query = "insert into userinfo(marks) values('" + mark + "')";
            SqlCommand cmd = new SqlCommand(query, sqlcon);
            cmd.ExecuteNonQuery();
            sqlcon.Close();*/

            Server.Transfer("STUDENTDASH.aspx", true);

        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            if (DateTime.Compare(DateTime.Now, DateTime.Parse(Session["Timer"].ToString())) < 0)
            {
                Label3.Text = "Time Left : " + ((Int32)DateTime.Parse(Session["Timer"].ToString()).Subtract(DateTime.Now).TotalMinutes).ToString() + " Minute " + (((Int32)DateTime.Parse(Session["Timer"].ToString()).Subtract(DateTime.Now).TotalSeconds) % 60).ToString() + " Seconds";
            }
            else
            {
                //Server.Transfer("LoginPage.aspx", true);
                
                Label3.Text = "Time Out!";
                
                
            }
        }
    }
}