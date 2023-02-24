using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_6
{
    public partial class WebUserControl7 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            int x = 2;
            SqlDataSource1.InsertParameters["name"].DefaultValue = txtName.Text;
            SqlDataSource1.InsertParameters["Phone"].DefaultValue = txtPhone.Text;
            SqlDataSource1.InsertParameters["city"].DefaultValue = DropCity.Text;
            SqlDataSource1.InsertParameters["Address_recommendation"].DefaultValue = txtStreet.Text;
            SqlDataSource1.InsertParameters["members"].DefaultValue = txtMember.Text;
            SqlDataSource1.InsertParameters["workers"].DefaultValue = txtWorker.Text;
            SqlDataSource1.InsertParameters["fixed_income"].DefaultValue = txtIncome.Text;
            SqlDataSource1.InsertParameters["Details"].DefaultValue = txtDetails.Text;
            SqlDataSource1.InsertParameters["done_rec"].DefaultValue =Convert.ToString(x);
            SqlDataSource1.Insert();

            ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert",
            "swal('Good job!', 'Sent Successfully, Thank You')", true);
        }
    }
}