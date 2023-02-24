using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_6
{
    public partial class WebUserControl5 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            EditPanel.Visible = false;

            if (!Page.IsPostBack)
            {
                RepeaterBind();
            }

        }


        private void RepeaterBind()
        {


            string connectionString = "data source=DESKTOP-0FKG21B\\SQLEXPRESS; database=Project-6 ;integrated security=SSPI";
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            string id = Session["userId"].ToString();
            SqlCommand cmd = new SqlCommand($"Select Volunteer.Full_name,Volunteer.Phone,Volunteer.City,Volunteer.Academic_degree,Volunteer.Details,AspNetUsers.Email from Volunteer inner join AspNetUsers on Volunteer.Id=AspNetUsers.Id  WHERE Volunteer.Id='{id}'", con);
            IDataReader dr = cmd.ExecuteReader();

            DataTable dt = new DataTable();
            dt.Load(dr);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();

        }

        protected void Edit(object sender, EventArgs e)
        {

            EditPanel.Visible = true;


            string connectionString = "data source=DESKTOP-0FKG21B\\SQLEXPRESS; database=Project-6 ;integrated security=SSPI";
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            string id = Session["userId"].ToString();
            SqlCommand cmd = new SqlCommand($"Select Volunteer.Full_name,Volunteer.Phone,Volunteer.City,Volunteer.Academic_degree,Volunteer.Details,AspNetUsers.Email from Volunteer inner join AspNetUsers on Volunteer.Id=AspNetUsers.Id  WHERE Volunteer.Id='{id}'", con);
            SqlDataReader sdr = cmd.ExecuteReader();
            sdr.Read();
            txt_Edit_Full_NAme.Text = sdr[0].ToString();

            txt_Edit_Phone.Text = sdr[1].ToString();
            UserDropDown.SelectedValue = sdr[2].ToString();

            txt_Edit_Degree.Text = sdr[3].ToString();


            txt_Desc2.Text = sdr[4].ToString();
        }


        protected void submit(object sender, EventArgs e)
        {

            string connectionString = "data source=DESKTOP-0FKG21B\\SQLEXPRESS; database=Project-6 ;integrated security=SSPI";
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            string id = Session["userId"].ToString();


            SqlCommand com1 = new SqlCommand($"update Volunteer set  Full_name=@txt_Edit_Full_name,Academic_degree=@txt_Edit_Degree,Phone=@txt_Edit_Phone,City=@UserDropDown,Details=@txt_Desc2 WHERE Volunteer.Id='{id}' ", con);
            com1.Parameters.AddWithValue("@txt_Edit_Full_name", (txt_Edit_Full_NAme.Text));
            com1.Parameters.AddWithValue("@txt_Edit_Degree", (txt_Edit_Degree.Text));

            com1.Parameters.AddWithValue("@txt_Edit_Phone", int.Parse(txt_Edit_Phone.Text));
            com1.Parameters.AddWithValue("@UserDropDown", (UserDropDown.SelectedValue));
            com1.Parameters.AddWithValue("@txt_Desc2 ", (txt_Desc2.Text));

            com1.ExecuteNonQuery();

            Response.Redirect("UserProfile.aspx");




            //    IDataReader dr = cmd.ExecuteReader();

            //    DataTable dt = new DataTable();
            //    dt.Load(dr);
            //    Repeater1.DataSource = dt;
            //    Repeater1.DataBind();


        }
    }
}