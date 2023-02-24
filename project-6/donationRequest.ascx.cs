using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_6
{
    public partial class WebUserControl6 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkAccept_Click(object sender, EventArgs e)
        {
            SqlConnection c1 = new SqlConnection("data source=DESKTOP-0FKG21B\\SQLEXPRESS; database=Project-6; integrated security=SSPI");
            c1.Open();
            int rowIndex = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            int donationId = Convert.ToInt32(GridView1.Rows[rowIndex].Cells[0].Text);
            int x = 1;
            SqlCommand cmd = new SqlCommand("Update Direct_Donation set taken = '" + x + "' Where Id_direct = '" + donationId + "' ", c1);

            cmd.ExecuteNonQuery();
            c1.Close();

            GridView1.Rows[rowIndex].Visible = false;
        }


    }
}