using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project6.Admin
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowUpdating1(object sender, GridViewUpdateEventArgs e)
        {

            FileUpload obj = GridView1.Rows[e.RowIndex].FindControl("FileUpload1") as FileUpload;
            if (Path.GetFileName(obj.FileName) != null && Path.GetFileName(obj.FileName) != "")
            {

                obj.SaveAs(System.IO.Path.Combine(Server.MapPath("AdminImage"), obj.FileName));

                SqlDataSource1.UpdateParameters["Image_campaigns"].DefaultValue = "AdminImage/" + obj.FileName;
                SqlDataSource1.Update();
            }
            else
            {
                System.Web.UI.WebControls.Label filename = GridView1.Rows[e.RowIndex].FindControl("Label1") as System.Web.UI.WebControls.Label;

                SqlDataSource1.UpdateParameters["Image_campaigns"].DefaultValue = filename.Text;

                SqlDataSource1.Update();






            }
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void BtnAddCampaigns_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddCampigns.aspx");
        }
    }
}
    
