using Microsoft.AspNet.Identity.Owin;
using Microsoft.AspNet.Identity;
using project_6.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace project_6
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        public string idd;


       
            //Guid G = Guid.NewGuid();//Genreat increbted ID 
            //string date = DateTime.Now.ToString();
            
            protected void CreateUser_Click(object sender, EventArgs e)
            {
                var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
                var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();

                var user = new ApplicationUser() { UserName = Email.Text, Email = Email.Text };
                idd = user.Id;
                IdentityResult result = manager.Create(user, Password.Text);
                if (result.Succeeded)
                {

                    var M = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                    SqlConnection conn = new SqlConnection(M);
                    conn.Open();
                    SqlCommand com = new SqlCommand($"select Id from AspNetUsers where Email = '{Email.Text}'", conn);
                    string Id = com.ExecuteScalar().ToString();
                    SqlCommand com1 = new SqlCommand($"insert into AspNetUserRoles values('{Id}',{RadioButtonList1.SelectedValue})", conn);

                    com1.ExecuteNonQuery();
                    conn.Close();

                    if (RadioButtonList1.SelectedValue == "0")
                    {
                        Panel1.Visible = true;
                        Panel2.Visible = false;
                        Panel3.Visible = false;

                        reg.Visible = false;



                    }
                    else if (RadioButtonList1.SelectedValue == "1")
                    {
                        Panel1.Visible = false;
                        Panel2.Visible = true;
                        Label1.Visible = false;
                        Panel3.Visible = false;
                        reg.Visible = false;



                    }

                    // For more information on how to enable account confirmation and password reset please visit https://go.microsoft.com/fwlink/?LinkID=320771
                    //string code = manager.GenerateEmailConfirmationToken(user.Id);
                    //string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);
                    //manager.SendEmail(user.Id, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.");

                    //signInManager.SignIn(user, isPersistent: false, rememberBrowser: false);
                    //IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
                }
                else
                {
                    ErrorMessage.Text = result.Errors.FirstOrDefault();
                }




                //SqlCommand comm = new SqlCommand($"insert into AspNetUsers values('{G}','{Email.Text}',0,'AKGwNuAAbaHljPyhvKmOcO66D9XeDprDQ60e7CxtDPyAfdzDTlfF2xEDCpyA0nAB9A==','AIa5VYrpJy2KqO29U','',0,0,1,1,0,'{Email.Text}')", conn);
                //comm.ExecuteNonQuery();
                //SqlCommand coom2 = new SqlCommand($"insert into AspNetUserRoles values ('{G}',{RadioButtonList1.SelectedValue} )", conn);
                //coom2.ExecuteNonQuery();
                //conn.Close();

                //______________________ Email send


                MailMessage mail = new MailMessage();
                mail.To.Add(Email.Text.ToString().Trim());
                mail.From = new MailAddress("hopeorganization23@gmail.com");
                mail.Subject = "Hello test email";
                mail.Body = " <p>Thank you for confirming your account. Click <asp:HyperLink ID=\"login\" runat=\"server\" NavigateUrl=\"~/Account/Login\">here</asp:HyperLink>  to login   </p>";
                mail.IsBodyHtml = true;

                SmtpClient smtp = new SmtpClient();
                smtp.Port = 587; // 25 465
                smtp.EnableSsl = true;
                smtp.UseDefaultCredentials = false;
                smtp.Host = "smtp.gmail.com";
                smtp.Credentials = new System.Net.NetworkCredential("hopeorganization23@gmail.com", "zeuayqmgaqrwznvu");
                smtp.Send(mail);








                //_________________________
                //if (Page.IsValid)
                //{
                //    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                //       "swal('Register Completed!', 'You clicked Success button!', 'success')", true);
                //}





            }



            protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
            {
                //if (RadioButtonList1.SelectedValue == "0")
                //{
                //    Panel1.Visible = true;
                //    Panel2.Visible = false;
                //    Panel3.Visible = false;
                //}
                //else if (RadioButtonList1.SelectedValue == "1")
                //{
                //    Panel1.Visible = false;
                //    Panel2.Visible = true;
                //    Panel3.Visible = false;

                //}




            }






        protected void Page_Load(object sender, EventArgs e)
        {


            Panel1.Visible = false;
            Panel2.Visible = false;



            //hi.Style["background-image"] = "url(\"/img/clothes-backgrpund.jpg\")";

        }

        protected void btn_vol_Click(object sender, EventArgs e)
        {


            //SqlConnection conn1 = new SqlConnection("data source= DESKTOP-SAVUMCP\\SQLEXPRESS ; database=Project-6; integrated security=SSPI");
            //SqlCommand com1 = new SqlCommand("select  from Volunteer ", conn1);
            //conn1.Open();
            //SqlDataReader sdr=com1.ExecuteReader();
            //bool q=false;
            //while (sdr.Read())
            //{
            //    if (sdr[0].ToString()==)

            //}
            string idTest = "";
            SqlConnection con21 = null;
            try
            {
                // Creating Connection  
                con21 = new SqlConnection("data source=DESKTOP-0FKG21B\\SQLEXPRESS; database=Project-6; integrated security=SSPI");
                // writing sql query  
                SqlCommand cm = new SqlCommand($"Select Id from AspNetUsers where UserName=@email", con21);
                cm.Parameters.AddWithValue("@email", Email.Text);
                // Opening Connection  
                con21.Open();
                // Executing the SQL query  
                SqlDataReader sdr = cm.ExecuteReader();
                // Iterating Data  
                sdr.Read();
                idTest = sdr[0].ToString();

            }
            catch (Exception S)
            {
                Console.WriteLine("OOPs, something went wrong.\n" + S);
                //Label1.Text = "OOPs, something went wrong.\n" + S;
            }
            // Closing the connection  
            finally
            {
                con21.Close();
            }
            string testt = Email.Text;
            SqlConnection conn = new SqlConnection("data source=DESKTOP-0FKG21B\\SQLEXPRESS; database=Project-6; integrated security=SSPI");
            SqlCommand command = new SqlCommand($"insert into Volunteer (Full_name,Phone,City,Street,Academic_degree,Details, Id,Email ) values('{txt_Name.Text}','{txtPhone.Text}', '{DropDownList1.SelectedValue}','{txt_street.Text}' ,'{txt_Degree.Text}','{txtDetalis.Text}', '{idTest}','{testt}')", conn);
            conn.Open();
            command.ExecuteNonQuery();
            conn.Close();

            if (Page.IsValid)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                   "swal('Thank You  " +
                   "We will Review your Request and we will send a Request state by your Email  !', '', 'success')", true);
                Response.Redirect("Default.aspx");
            }

            





        }

        protected void btn_Par_Click(object sender, EventArgs e)
        {
            string idTest = "";
            SqlConnection con21 = null;
            try
            {
                // Creating Connection  
                con21 = new SqlConnection("data source=DESKTOP-0FKG21B\\SQLEXPRESS; database=Project-6; integrated security=SSPI");
                // writing sql query  
                SqlCommand cm = new SqlCommand($"Select Id from AspNetUsers where UserName=@email", con21);
                cm.Parameters.AddWithValue("@email", Email.Text);
                // Opening Connection  
                con21.Open();
                // Executing the SQL query  
                SqlDataReader sdr = cm.ExecuteReader();
                // Iterating Data  
                sdr.Read();
                idTest = sdr[0].ToString();

            }
            catch (Exception S)
            {
                Console.WriteLine("OOPs, something went wrong.\n" + S);
                //Label1.Text = "OOPs, something went wrong.\n" + S;
            }
            // Closing the connection  
            finally
            {
                con21.Close();
            }
            string testt = Email.Text;

            SqlConnection conn = new SqlConnection("data source=DESKTOP-0FKG21B\\SQLEXPRESS; database=Project-6; integrated security=SSPI");
            SqlCommand command = new SqlCommand($"insert into Partners(Name_partners, National_number, Year_partners, Description_partners, Email, Id) values('{txtName2.Text}', '{txt_NationalNumber.Text}', '{txtYear.Text}', '{txtDescrption2.Text}', '{testt}', '{idTest}')", conn);
            conn.Open(); 
            command.ExecuteNonQuery();
            conn.Close();

            //if (Page.IsValid)
            //{
            //    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
            //       "swal('Thank You !', 'You clicked Success button!', 'success')", true);
            //}
            Response.Redirect("Default.aspx");
        }
    }
}








        //////////////////////////////////////////////////////////////////////////////////


        //    protected void Page_Load(object sender, EventArgs e)
        //{
        //    Panel1.Visible = false;
        //    Panel2.Visible = false;
        //}

        //protected void CreateUser_Click(object sender, EventArgs e)
        //{
        //    var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
        //    var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();

        //    var user = new ApplicationUser() { UserName = Email.Text, Email = Email.Text };
        //    idd = user.Id;
        //    IdentityResult result = manager.Create(user, Password.Text);
        //    if (result.Succeeded)
        //    {

        //        var M = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        //        SqlConnection conn = new SqlConnection(M);
        //        conn.Open();
        //        SqlCommand com = new SqlCommand($"select Id from AspNetUsers where Email = '{Email.Text}'", conn);
        //        string Id = com.ExecuteScalar().ToString();
        //        SqlCommand com1 = new SqlCommand($"insert into AspNetUserRoles values('{Id}',{RadioButtonList1.SelectedValue})", conn);

        //        com1.ExecuteNonQuery();
        //        conn.Close();

        //        if (RadioButtonList1.SelectedValue == "0")
        //        {
        //            Panel1.Visible = true;
        //            Panel2.Visible = false;
        //            Panel3.Visible = false;

        //            reg.Visible = false;



        //        }
        //        else if (RadioButtonList1.SelectedValue == "1")
        //        {
        //            Panel1.Visible = false;
        //            Panel2.Visible = true;
        //            Panel3.Visible = false;
        //            reg.Visible = false;


        //        }

        //        // For more information on how to enable account confirmation and password reset please visit https://go.microsoft.com/fwlink/?LinkID=320771
        //        //string code = manager.GenerateEmailConfirmationToken(user.Id);
        //        //string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);
        //        //manager.SendEmail(user.Id, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.");

        //        //signInManager.SignIn(user, isPersistent: false, rememberBrowser: false);
        //        //IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
        //    }
        //    else
        //    {
        //        ErrorMessage.Text = result.Errors.FirstOrDefault();
        //    }




        //    //SqlCommand comm = new SqlCommand($"insert into AspNetUsers values('{G}','{Email.Text}',0,'AKGwNuAAbaHljPyhvKmOcO66D9XeDprDQ60e7CxtDPyAfdzDTlfF2xEDCpyA0nAB9A==','AIa5VYrpJy2KqO29U','',0,0,1,1,0,'{Email.Text}')", conn);
        //    //comm.ExecuteNonQuery();
        //    //SqlCommand coom2 = new SqlCommand($"insert into AspNetUserRoles values ('{G}',{RadioButtonList1.SelectedValue} )", conn);
        //    //coom2.ExecuteNonQuery();
        //    //conn.Close();

        //    //________________________________________________________________ Email send


        //    MailMessage mail = new MailMessage();
        //    mail.To.Add(Email.Text.ToString().Trim());
        //    mail.From = new MailAddress("hopeorganization23@gmail.com");
        //    mail.Subject = "Hello test email";
        //    mail.Body = " <p>Thank you for Register </p>";
        //    mail.IsBodyHtml = true;

        //    SmtpClient smtp = new SmtpClient();
        //    smtp.Port = 587; // 25 465
        //    smtp.EnableSsl = true;
        //    smtp.UseDefaultCredentials = false;
        //    smtp.Host = "smtp.gmail.com";
        //    smtp.Credentials = new System.Net.NetworkCredential("hopeorganization23@gmail.com", "fbivjjieunkvdphs");
        //    smtp.Send(mail);








        //    //_______________________________________________________________________
        //    //if (Page.IsValid)
        //    //{
        //    //    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
        //    //       "swal('Register Completed!', 'You clicked Success button!', 'success')", true);
        //    //}





        //}



        //protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    //if (RadioButtonList1.SelectedValue == "0")
        //    //{
        //    //    Panel1.Visible = true;
        //    //    Panel2.Visible = false;
        //    //    Panel3.Visible = false;
        //    //}
        //    //else if (RadioButtonList1.SelectedValue == "1")
        //    //{
        //    //    Panel1.Visible = false;
        //    //    Panel2.Visible = true;
        //    //    Panel3.Visible = false;

        //    //}




        //}

        //protected void btn_vol_Click(object sender, EventArgs e)
        //{


        //    //SqlConnection conn1 = new SqlConnection("data source= DESKTOP-SAVUMCP\\SQLEXPRESS ; database=Project-6; integrated security=SSPI");
        //    //SqlCommand com1 = new SqlCommand("select  from Volunteer ", conn1);
        //    //conn1.Open();
        //    //SqlDataReader sdr=com1.ExecuteReader();
        //    //bool q=false;
        //    //while (sdr.Read())
        //    //{
        //    //    if (sdr[0].ToString()==)

        //    //}
        //    string idTest = "";
        //    SqlConnection con21 = null;
        //    try
        //    {
        //        // Creating Connection  
        //        con21 = new SqlConnection("data source=DESKTOP-0FKG21B\\SQLEXPRESS; database=Project-6; integrated security=SSPI");
        //        // writing sql query  
        //        SqlCommand cm = new SqlCommand($"Select Id from AspNetUsers where UserName=@email", con21);
        //        cm.Parameters.AddWithValue("@email", Email.Text);
        //        // Opening Connection  
        //        con21.Open();
        //        // Executing the SQL query  
        //        SqlDataReader sdr = cm.ExecuteReader();
        //        // Iterating Data  
        //        sdr.Read();
        //        idTest = sdr[0].ToString();

        //    }
        //    catch (Exception S)
        //    {
        //        Console.WriteLine("OOPs, something went wrong.\n" + S);
        //        //Label1.Text = "OOPs, something went wrong.\n" + S;
        //    }
        //    // Closing the connection  
        //    finally
        //    {
        //        con21.Close();
        //    }
        //    string testt = Email.Text;
        //    SqlConnection conn = new SqlConnection("data source=DESKTOP-0FKG21B\\SQLEXPRESS; database=Project-6; integrated security=SSPI");
        //    SqlCommand command = new SqlCommand($"insert into Volunteer (Phone,Full_name,City,Details, Id) values('{txtPhone.Text}','{txtName.Text}', '{DropDownList1.SelectedValue}','{txtDetalis.Text}', '{idTest}')", conn);
        //    conn.Open();
        //    command.ExecuteNonQuery();
        //    conn.Close();

        //    if (Page.IsValid)
        //    {
        //        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
        //           "swal('Thank You  " +
        //           "We will Review your Request and we will send a Request state by your Email  !', '', 'success')", true);
        //    }







        //}

        //protected void btn_Par_Click(object sender, EventArgs e)
        //{
        //    string idTest = "";
        //    SqlConnection con21 = null;
        //    try
        //    {
        //        // Creating Connection  
        //        con21 = new SqlConnection("data source= DESKTOP-0FKG21B\\SQLEXPRESS; database=Project-6; integrated security=SSPI");
        //        // writing sql query  
        //        SqlCommand cm = new SqlCommand($"Select Id from AspNetUsers where UserName=@email", con21);
        //        cm.Parameters.AddWithValue("@email", Email.Text);
        //        // Opening Connection  
        //        con21.Open();
        //        // Executing the SQL query  
        //        SqlDataReader sdr = cm.ExecuteReader();
        //        // Iterating Data  
        //        sdr.Read();
        //        idTest = sdr[0].ToString();

        //    }
        //    catch (Exception S)
        //    {
        //        Console.WriteLine("OOPs, something went wrong.\n" + S);
        //        //Label1.Text = "OOPs, something went wrong.\n" + S;
        //    }
        //    // Closing the connection  
        //    finally
        //    {
        //        con21.Close();
        //    }
        //    SqlConnection conn = new SqlConnection("data source=DESKTOP-0FKG21B\\SQLEXPRESS; database=Project-6; integrated security=SSPI");
        //    SqlCommand command = new SqlCommand($"insert into Partners values('{txtName2.Text}','{txtNumber.Text}','{txtYear.Text}','{txtdesc.Text}','{idTest}')", conn);
        //    conn.Open();
        //    command.ExecuteNonQuery();
        //    conn.Close();

        //    //if (Page.IsValid)
        //    //{
        //    //    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
        //    //       "swal('Thank You !', 'You clicked Success button!', 'success')", true);
        //    //}

        //}

