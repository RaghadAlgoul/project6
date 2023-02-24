﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project6.Admin
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            
            
            try
            {
                MailMessage mail = new MailMessage();
                mail.To.Add(DetailsView1.Rows[2].Cells[1].Text.ToString().Trim());
                mail.From = new MailAddress("hopeorganization23@gmail.com");
                mail.Subject = "Follow up HOPE application requist";
                mail.Body = "<p>Congratulations! <br/> We accept your requist to join our family </p>";
                mail.IsBodyHtml = true;

                SmtpClient smtp = new SmtpClient();
                smtp.Port = 587; // 25 465
                smtp.EnableSsl = true;
                smtp.UseDefaultCredentials = false;
                smtp.Host = "smtp.gmail.com";
                smtp.Credentials = new System.Net.NetworkCredential("hopeorganization23@gmail.com", "zeuayqmgaqrwznvu");
                smtp.Send(mail);

                string connectionString1 = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                SqlConnection con = new SqlConnection(connectionString1);

                SqlCommand comm = new SqlCommand($"update Direct_Donation set state=@state WHERE  [Id_direct] = @Id_direct", con);

                con.Open();
                comm.Parameters.AddWithValue("@Id_direct", DetailsView1.Rows[0].Cells[1].Text);
                comm.Parameters.AddWithValue("@state", "1");
                comm.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Donations.aspx");

            }
            catch (SqlException x) { Response.Write(x.Message); }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                MailMessage mail = new MailMessage();
                mail.To.Add(DetailsView1.Rows[2].Cells[1].Text.ToString().Trim());
                mail.From = new MailAddress("hopeorganization23@gmail.com");
                mail.Subject = "Follow up HOPE application requist";
                mail.Body = "<p>Unfortunately! <br/> We are sorry Sorry you cannot join us at this time , Best of luck</p>";
                mail.IsBodyHtml = true;

                SmtpClient smtp = new SmtpClient();
                smtp.Port = 587; // 25 465
                smtp.EnableSsl = true;
                smtp.UseDefaultCredentials = false;
                smtp.Host = "smtp.gmail.com";
                smtp.Credentials = new System.Net.NetworkCredential("hopeorganization23@gmail.com", "zeuayqmgaqrwznvu");
                smtp.Send(mail);

                string connectionString1 = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                SqlConnection con = new SqlConnection(connectionString1);

                SqlCommand comm = new SqlCommand($"update Direct_Donation set state=@state WHERE  [Id_direct] = @Id_direct", con);

                con.Open();
                comm.Parameters.AddWithValue("@Id_direct", DetailsView1.Rows[0].Cells[1].Text);
                comm.Parameters.AddWithValue("@state", "0");
                comm.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Donations.aspx");



            }
            catch (SqlException x) { Response.Write(x.Message); }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {

            //try
            //{

            //    string connectionString1 = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            //    SqlConnection con = new SqlConnection(connectionString1);

            //    SqlCommand comm = new SqlCommand($"update Direct_Donation set state=@state WHERE  [Id_direct] = @Id_direct", con);

            //    con.Open();
            //    comm.Parameters.AddWithValue("@Id_direct", DetailsView1.Rows[0].Cells[1].Text);
            //    comm.Parameters.AddWithValue("@state", "0");
            //    comm.ExecuteNonQuery();
            //    con.Close();
            //    Response.Redirect("Donations.aspx");



            //}
            //catch (SqlException x) { Response.Write(x.Message); }
        }
    }
}