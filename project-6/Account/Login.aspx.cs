using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using Microsoft.Ajax.Utilities;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using project_6.Models;

namespace project_6.Account
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

          
            if (IsPostBack)
            {
                //if (Request.QueryString["state"] != null)
                //{
                //    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",

                //  "swal('Sorry!   We regret not accepting you as a volunteer, we hope to see you later ', '', 'info')", true);
                //}
            }
            RegisterHyperLink.NavigateUrl = "Register";
            // Enable this once you have account confirmation enabled for password reset functionality


            //ForgotPasswordHyperLink.NavigateUrl = "Forgot";

            //OpenAuthLogin.ReturnUrl = Request.QueryString["ReturnUrl"];
            //var returnUrl = HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
            //if (!String.IsNullOrEmpty(returnUrl))
            //{
            //    RegisterHyperLink.NavigateUrl += "?ReturnUrl=" + returnUrl;

            //}
        }

            protected void LogIn(object sender, EventArgs e)
            {
            //string id2 = "";
            //SqlConnection con = new SqlConnection("Data Source=DESKTOP-0FKG21B\\SQLEXPRESS;Initial Catalog=project-6;Integrated Security=True");
            //SqlCommand com = new SqlCommand($"select Id from AspNetUsers where Email = '{Email.Text}' ", con);

            //con.Open();
            //SqlDataReader rdr = com.ExecuteReader();

            //if (rdr.Read())
            //{
            //    id2 = rdr[0].ToString();
            //    con.Close();
            //    SqlCommand com2 = new SqlCommand($"select State_volunteer from Volunteer where Id = '{id2}'", con);

            //    con.Open();
            //    SqlDataReader sdr = com2.ExecuteReader();
            //    sdr.Read();
            //    if (sdr[0].ToString() == "3")
            //    {
                   
            //        //return;
            //        Response.Redirect("~/Account/Login.aspx?state=notapproved");
            //    }

            //}


            if (IsValid)
                {

                    // Validate the user password
                    var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
                    var signinManager = Context.GetOwinContext().GetUserManager<ApplicationSignInManager>();

                    // This doen't count login failures towards account lockout
                    // To enable password failures to trigger lockout, change to shouldLockout: true
                    var result = signinManager.PasswordSignIn(Email.Text, Password.Text, RememberMe.Checked, shouldLockout: false);

                    switch (result)
                    {


                        case SignInStatus.Success:
                            //IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
                            var connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                            SqlConnection Con = new SqlConnection(connectionString);
                            Con.Open();
                            SqlCommand getId = new SqlCommand($"Select id from AspNetUsers where Email='{Email.Text}'", Con);
                            string id = getId.ExecuteScalar().ToString();
                            Session["userId"] = id;


                            SqlCommand getstatus = new SqlCommand($"Select State_volunteer from Volunteer where Id='{id}'", Con);
                        SqlCommand getstatus1 = new SqlCommand($"Select State from Partners where Id='{id}'", Con);
                        SqlCommand rolecheck = new SqlCommand($"Select roleid from AspNetUserRoles where userid='{id}'",Con);
                        int role = Convert.ToInt32(rolecheck.ExecuteScalar());
                        if (role == 2) { Response.Redirect("\\Admin/Donations.aspx"); break; }
                      
                        else if (role == 0 || role == 1) { 

                        int status =Convert.ToInt32( getstatus.ExecuteScalar());
                         int status1 = Convert.ToInt32(getstatus1.ExecuteScalar());


                            if (role == 0 && status == 0)

                            {
                                Session.Abandon();
                                Context.GetOwinContext().Authentication.SignOut(DefaultAuthenticationTypes.ApplicationCookie);
                                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                                 "swal('Sorry! We have enough Staff nowadays , please check your mail', '', 'info')", true);

                            }
                            else if (role== 0 && status == 1)
                            {
                                Response.Redirect("\\Volunteer.aspx");

                            }

                            else if(role == 1 && status1== 0)
                            {
                                Session.Abandon();
                                Context.GetOwinContext().Authentication.SignOut(DefaultAuthenticationTypes.ApplicationCookie);
                                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                                 "swal('Sorry! We have enough Staff nowadays , please check your mail', '', 'info')", true);

                            }



                            else if (role==1 && status1 == 1 )
                            {
                                Response.Redirect("\\partnersProfile.aspx");
                            }


                           
                         

                            //else if (status == 2)
                            //{

                            //    //Response.Redirect("\\dashCampaigns.aspx");
                            //}

                            else if (status == 3 || status1==3)
                            {
                                Session.Abandon();
                                Context.GetOwinContext().Authentication.SignOut(DefaultAuthenticationTypes.ApplicationCookie);
                                //Response.Redirect("\\Default.aspx");
                                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                             "swal('Sorry!  Your account is still under review when the process is completed we will contact you via email ', '', 'info')", true);
                            }
                        }






                        break;

                        case SignInStatus.LockedOut:
                            Response.Redirect("/Account/Lockout");
                            break;
                        case SignInStatus.RequiresVerification:
                            Response.Redirect(String.Format("/Account/TwoFactorAuthenticationSignIn?ReturnUrl={0}&RememberMe={1}",
                                                            Request.QueryString["ReturnUrl"],
                                                            RememberMe.Checked),
                                              true);
                            break;
                        case SignInStatus.Failure:
                        default:
                            FailureText.Text = "Invalid login attempt";
                            ErrorMessage.Visible = true;
                            break;


                    }
                }
            }



            protected void LinkButton1_Click(object sender, EventArgs e)
            {

                MailMessage mail = new MailMessage();
                mail.To.Add(Email.Text.ToString().Trim());
                mail.From = new MailAddress("hopeorganization23@gmail.com");
                mail.Subject = "Hello test email";
                mail.Body = "<p>You Can Change Your Password From This Link  https://localhost:44354/Account/ResetPassword </p> " +
                    "<p>If You Receive This Massege By Mistake,Please Ignore it......  </p>";
                mail.IsBodyHtml = true;

                SmtpClient smtp = new SmtpClient();
                smtp.Port = 587; // 25 465
                smtp.EnableSsl = true;
                smtp.UseDefaultCredentials = false;
                smtp.Host = "smtp.gmail.com";
                smtp.Credentials = new System.Net.NetworkCredential("hopeorganization23@gmail.com", "fbivjjieunkvdphs");
                smtp.Send(mail);
                if (Page.IsValid)
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                       "swal('We are Sending Email With Link to Rest Your Password ! Please Check it ', '', 'info')", true);
                }
            }
        }
    }
