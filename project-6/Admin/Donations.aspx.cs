using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project6.Admin
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string x = DropDownList1.SelectedValue.ToString();
            if (x == "New Request") { PlaceHolder1.Visible = true; PlaceHolder2.Visible = false; PlaceHolder3.Visible = false; }
            if (x == "Accepted") { PlaceHolder1.Visible = false; PlaceHolder2.Visible = true; PlaceHolder3.Visible = false; }
            if (x == "Rejected") { PlaceHolder1.Visible = false; PlaceHolder2.Visible = false; PlaceHolder3.Visible = true; }
        }
    }
}