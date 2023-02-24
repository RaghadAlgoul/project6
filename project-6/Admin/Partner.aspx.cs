using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project6.Admin
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string x = DropDownList1.SelectedValue.ToString();
            if(x== "New Request") { PlaceHoler1.Visible = true; PlaceHolder2.Visible = false; PlaceHolder3.Visible = false; }
            if (x == "Accepted") { PlaceHoler1.Visible = false; PlaceHolder2.Visible = true; PlaceHolder3.Visible = false; }
            if (x == "Rejected") { PlaceHoler1.Visible = false; PlaceHolder2.Visible = false; PlaceHolder3.Visible = true; }
        }
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                e.Row.Cells[0].Text = "ID";
                e.Row.Cells[1].Text = "Name";
                e.Row.Cells[2].Text = "National Number";
                e.Row.Cells[3].Text = "Year Founded";
                e.Row.Cells[4].Text = "Description";


            }
        }
        protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                e.Row.Cells[0].Text = "ID";
                e.Row.Cells[1].Text = "Name";
                e.Row.Cells[2].Text = "National Number";
                e.Row.Cells[3].Text = "Year Founded";
                e.Row.Cells[4].Text = "Description";


            }
        }
        protected void GridView3_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                e.Row.Cells[0].Text = "ID";
                e.Row.Cells[1].Text = "Name";
                e.Row.Cells[2].Text = "National Number";
                e.Row.Cells[3].Text = "Year Founded";
                e.Row.Cells[4].Text = "Description";


            }
        }
    }
}