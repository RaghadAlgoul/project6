using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project6.Admin
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                e.Row.Cells[0].Text = "ID";
                e.Row.Cells[1].Text = "Address";
                e.Row.Cells[2].Text = "Phone";
                e.Row.Cells[3].Text = "Details";
                e.Row.Cells[4].Text = "Members";
                e.Row.Cells[5].Text = "Workers";
                e.Row.Cells[6].Text = "Fixed Income";

            }
        }
    }
}