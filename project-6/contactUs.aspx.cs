using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_6
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            if (TextArea.Text == "")
            {

                Label1.Visible = true;

            }
            else
            {
                SqlDataSource1.InsertParameters["Full_name"].DefaultValue = TextName.Text;
                SqlDataSource1.InsertParameters["Email"].DefaultValue = TextEmail.Text;
                SqlDataSource1.InsertParameters["Phone"].DefaultValue = TextPhone.Text;





                SqlDataSource1.InsertParameters["Message_contact"].DefaultValue = TextArea.Text;

                SqlDataSource1.Insert();
                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert",
                  "swal('Good job!', ' Thank you for contacting us')", true);
            }
        }
    }
}