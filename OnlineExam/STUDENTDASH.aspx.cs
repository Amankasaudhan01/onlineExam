using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineExam
{
    public partial class STUDENTDASH : System.Web.UI.Page
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
            Response.Redirect("EXAM.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e) // view result
        {
            Response.Redirect("STUDENTRESULT.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("PROFILE.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e) // Log Out
        {
            Session.Abandon();
            Response.Redirect("LOGIN.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("LOGIN.aspx");
        }
    }
}