using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_6
{
    public partial class WebUserControl9 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)

            {
                if (e.Row.Cells[2].Text == "1")
                {
                    e.Row.Cells[2].Text = "Amman";
                }

                else if (e.Row.Cells[2].Text == "2")
                {
                    e.Row.Cells[2].Text = "Irbid";
                }
                else if (e.Row.Cells[2].Text == "3")
                {
                    e.Row.Cells[2].Text = "Jarash";
                }
                else if (e.Row.Cells[2].Text == "4")
                {
                    e.Row.Cells[2].Text = "Ajloun";
                }
                else if (e.Row.Cells[2].Text == "5")
                {
                    e.Row.Cells[2].Text = "Al - Zarqaa";
                }
                else if (e.Row.Cells[2].Text == "6")
                {
                    e.Row.Cells[2].Text = "Madaba";
                }
                else if (e.Row.Cells[2].Text == "7")
                {
                    e.Row.Cells[2].Text = "Al - Salt";
                }
                else if (e.Row.Cells[2].Text == "8")
                {
                    e.Row.Cells[2].Text = "Aqaba";
                }
                else if (e.Row.Cells[2].Text == "9")
                {
                    e.Row.Cells[2].Text = "Ma &#39;an";
                }
                else if (e.Row.Cells[2].Text == "10")
                {
                    e.Row.Cells[2].Text = "Al - Karak ";
                }
                else if (e.Row.Cells[2].Text == "11")
                {
                    e.Row.Cells[2].Text = "Al - mafraq";
                }
                else if (e.Row.Cells[2].Text == "12")
                {
                    e.Row.Cells[2].Text = "Al - Tafila";
                }

            }
        }
    }
}