using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_6
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",

            //     "swal('Sorry!   We regret not accepting you as a volunteer, we hope to see you later ', '', 'info')", true);
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Donation-Request.aspx");

        }
    }
}