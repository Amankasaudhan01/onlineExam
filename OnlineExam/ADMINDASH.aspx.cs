using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineExam
{
    public partial class ADMINDASH : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("LOGIN.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e) // signup page (add student)
        {
            Response.Redirect("STUDENTSIGNUP.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e) // Log Out
        {
            Session.Abandon();
            Response.Redirect("LOGIN.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e) // View Students 
        {
            Response.Redirect("VIEWSTUDENTS.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("SETMCQ.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("VIEWQUESTIONS.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("LOGIN.aspx");
        }
    }
}