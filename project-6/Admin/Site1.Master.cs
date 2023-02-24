using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project6
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            e1.Style.Add("color", "yellow");
            e2.Style.Add("color", "yellow");

            Response.Redirect("Partner.aspx");
        }
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            LinkButton1.Style.Add("color", "white");
            LinkButton2.Style.Add("color", "yellow");
            Response.Redirect("Volunteers.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Campaigns.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserMessage.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Recommendation.aspx");
        }
        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Donations.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("\\Account/Login.aspx");
        }
    }
}