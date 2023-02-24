using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace project_6
{
    public partial class aboutUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void send_click(object sender, EventArgs e)
        {
            //SqlConnection conn = new SqlConnection("data source=DESKTOP-0FKG21B\\SQLEXPRESS ; database=project-6 ; integrated security=SSPI");
            //SqlCommand com = new SqlCommand($"insert into Contact values '{name.Value}' , '{email.Value}' , '{phone.Value}' , '{message.Value}'");
            //conn.Open();
            //com.ExecuteNonQuery();
            //conn.Close();
            //Response.Redirect("Default.aspx");

            SqlDataSource1.InsertParameters["Full_name"].DefaultValue = name.Value;
            SqlDataSource1.InsertParameters["Email"].DefaultValue = email.Value;
            SqlDataSource1.InsertParameters["Phone"].DefaultValue = phone.Value;
            SqlDataSource1.InsertParameters["Message_contact"].DefaultValue = message.Value;

            SqlDataSource1.Insert();

        }

    }
}