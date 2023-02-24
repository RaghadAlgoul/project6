<%@ Page Language="C#"    AutoEventWireup="true" CodeBehind="aboutUs.aspx.cs" Inherits="project_6.aboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Agency - Start Bootstrap Theme</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="styles.css" rel="stylesheet" />

    
    
    <style>

 :root{
    --xxdarkblue: #21273D;
    --xxorange:#FFCA73;
    --xxlightblue: #F1F6F8;

 }
/*.nav {
  height: 50px;
  width: 100%;
  background-color: #000000;
  position: relative;
}

.nav > .nav-header {
  display: inline;
}

.nav > .nav-header > .nav-title {
  display: inline-block;
  font-size: 22px;
  color: #fff;
  padding: 10px 10px 10px 10px;
}

.nav > .nav-btn {
  display: none;
}

.nav > .nav-links {
  display: inline;
  float: right;
  font-size: 18px;
}

.nav > .nav-links > a {
  display: inline-block;
  padding: 13px 10px 13px 10px;
  text-decoration: none;
  color: #efefef;
}

.nav > .nav-links > a:hover {
  background-color: rgba(0, 0, 0, 0.3);
}

.nav > #nav-check {
  display: none;
}

@media (max-width:600px) {
  .nav > .nav-btn {
    display: inline-block;
    position: absolute;
    right: 0px;
    top: 0px;
  }
  .nav > .nav-btn > label {
    display: inline-block;
    width: 50px;
    height: 50px;
    padding: 13px;
  }
  .nav > .nav-btn > label:hover,.nav  #nav-check:checked ~ .nav-btn > label {
    background-color: rgba(0, 0, 0, 0.3);
  }
  .nav > .nav-btn > label > span {
    display: block;
    width: 25px;
    height: 10px;
    border-top: 2px solid #eee;
    cursor:pointer;
  }
  .nav > .nav-links {
    position: absolute;*/
/*     display: block; */
    /*width: 100%;
    background-color: #333;
    max-height: 0px;
    transition: all 0.5s ease-in;
    overflow-y: hidden;
    top: 50px;
    left: 0px;
  }
  .nav > .nav-links > a {
    display: block;
    width: 100%;
  }
  .nav > #nav-check:not(:checked) ~ .nav-links {
    max-height: 0px;
  }
  .nav > #nav-check:checked ~ .nav-links {
    height: calc(100vh - 50px); 
    max-height:200px;
    overflow-y: hiddin;
  }*/
}
.secf {
    display: flex;
    justify-content: center;
    margin-top: -20px;
        padding: 50px 0;
}

.secf h2 {
    display: block;
    align-items: center;
    text-align: center;
    font-size: 40px;
    font-weight: bolder;
    letter-spacing: 0.5px;
    border-bottom: solid var(--xxorange) 4px;
    padding: 10px 0;
    color: var(--xxdarkblue);
}


.secf h3 {
    display: block;
    align-items: center;
    text-align: center;
    font-size: 35px;
    font-weight: bolder;
    letter-spacing: 0.5px;
    padding: 10px 0;
    color: var(--xxlightblue);
}

details{
  background-color:  #F1F6F8;
  color: black;
  font-size: 1.5rem;
    padding: 5px 160px;

}

details[open] summary {
    margin-bottom: .5em;
}

details[open] summary:after{
  content: "\00D7";
}

details[open] div{
      padding: 10px 10px;
          border-bottom: 1px solid #aaa;


}

.summary_me{
    font-weight:700;
}

summary {
        border-bottom: 3px solid #aaa;
   padding: 10px 10px;
  list-style: none;
  display: flex;
  justify-content: space-between;  
  transition: height 1s ease;
}



summary:after{
  content: "\002B";
}

details[open] summary {
    margin-bottom: .5em;
}

details[open] summary:after{
  content: "\00D7";
}



    @media only screen and (min-device-width: 481px) and (max-device-width:768px) {
        .secf h2{font-size: 40px;}
        .secf h3 {font-size: 28px;}
      details {font-size: 1.5rem;padding: 1px 85px;}

}

    @media only screen and (min-device-width: 0px) and (max-device-width:480px) {

        .secf h3 {font-size: 21px;}
        details{padding: 5px 0;}
        .secf{padding:0;}
        .secf{padding-top:5px;margin: 15px;}
        .secf h2 {font-size: 20px;}
        .row {margin-right: 0px;margin-left: 0px;}


}






    </style>


</head>
<body>
     
      <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark-lg  fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand" href="#page-top"> 
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:project-6ConnectionString12 %>" DeleteCommand="DELETE FROM [Contact] WHERE [Id_contact] = @Id_contact" InsertCommand="INSERT INTO [Contact] ([Full_name], [Email], [Phone], [Message_contact]) VALUES (@Full_name, @Email, @Phone, @Message_contact)" SelectCommand="SELECT * FROM [Contact]" UpdateCommand="UPDATE [Contact] SET [Full_name] = @Full_name, [Email] = @Email, [Phone] = @Phone, [Message_contact] = @Message_contact WHERE [Id_contact] = @Id_contact">
                    <DeleteParameters>
                        <asp:Parameter Name="Id_contact" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Full_name" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Phone" Type="Decimal" />
                        <asp:Parameter Name="Message_contact" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Full_name" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Phone" Type="Decimal" />
                        <asp:Parameter Name="Message_contact" Type="String" />
                        <asp:Parameter Name="Id_contact" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <img src="\img\Hope Logo copy.png" alt="..."  /></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars ms-1"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ">
                        <li class="nav-item"><a class="nav-link" href="Default.aspx">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="Campaign.aspx">Campaigns</a></li>
                        <li class="nav-item"><a class="nav-link" href="aboutUs.aspx">About</a></li>
                         <li  style="margin-right:550px;"  class="nav-item"><a class="nav-link" href="contactUs.aspx">Contact</a></li>
                        <li class="nav-item"><a class="nav-link" href="#team">Register</a></li>
                        <li class="nav-item"><a class="nav-link" href="#contact">Log In</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Masthead-->
        <header style="background-image: url('img/poorchild.jpg')" class="masthead">
            <div class="container">
                <div class="masthead-subheading">Hope Organization</div>
                <div class="masthead-heading text-uppercase">We seek a decent human life by providing clothes as an acquired human right</div>
                <a class="btn btn-primary btn-xl text-uppercase" href="contactUs.aspx">Connect Us</a>
            </div>
        </header>
     
        
<%--    <div id="hi" style="background-image: url('img/clothes-backgrpund.jpg');background-size:cover;     background-position: center center;"></div>--%>
        
        
       
        <!-- Portfolio Grid-->
      <%--  <section class="page-section bg-light" id="portfolio">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Portfolio</h2>
                    <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <!-- Portfolio item 1-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal1">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="group-indian-children-running.jpg" alt="..." />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Threads</div>
                                <div class="portfolio-caption-subheading text-muted">Illustration</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <!-- Portfolio item 2-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal2">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="assets/img/portfolio/2.jpg" alt="..." />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Explore</div>
                                <div class="portfolio-caption-subheading text-muted">Graphic Design</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <!-- Portfolio item 3-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal3">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="assets/img/portfolio/3.jpg" alt="..." />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Finish</div>
                                <div class="portfolio-caption-subheading text-muted">Identity</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4 mb-lg-0">
                        <!-- Portfolio item 4-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal4">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="assets/img/portfolio/4.jpg" alt="..." />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Lines</div>
                                <div class="portfolio-caption-subheading text-muted">Branding</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4 mb-sm-0">
                        <!-- Portfolio item 5-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal5">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="assets/img/portfolio/5.jpg" alt="..." />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Southwest</div>
                                <div class="portfolio-caption-subheading text-muted">Website Design</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <!-- Portfolio item 6-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal6">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="assets/img/portfolio/6.jpg" alt="..." />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Window</div>
                                <div class="portfolio-caption-subheading text-muted">Photography</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>--%>


        <!-- About-->
        <section class="page-section" id="about">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">About Hope</h2>
                    <h3 class="section-subheading text-muted">Learn more about Hope Organization</h3>
                </div>
                <ul class="timeline">
                    <li>
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="/img/everyone-is-important-jigsaw-work.jpg" alt="..." /></div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <h4>2009</h4>
                                <h4 style="direction: rtl" class="subheading">Our  Beginnings</h4>
                            </div>
                            <div class="timeline-body"><p class="text-muted">The organization was started by a group of energetic young people who love charitable work</p></div>
                        </div>
                    </li>
                    <li class="timeline-inverted">
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="/img/executive-touching-icon-social-network.jpg" alt="..." /></div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <h4>2011</h4>
                                <h4 class="subheading">The beginning of achievement</h4>
                            </div>
                            <div class="timeline-body"><p class="text-muted">After the difficult foundational beginnings and the completion of building the recruitment team, we obtained the first funding from the European Union, which helped the growth of the organization, reaching a larger category.</p></div>
                        </div>
                    </li>
                    <li>
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="/img/62e294c24.jpg" alt="..." /></div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <h4> 2012 - 2015</h4>
                                <h4 class="subheading">years of challenges</h4>
                            </div>
                            <div class="timeline-body"><p class="text-muted">Our organization has become the hope of the poor, especially after the events that took place after 2011 in Syria and the huge wave of refugees towards Jordan.!</p></div>
                        </div>
                    </li>
                    <li class="timeline-inverted">
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="/img/businessman-hand-holding-throwing-virtual-dart-target-board-black-wall-business-investment-target-concept.jpg" alt="..." /></div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <h4>2023</h4>
                                <h4 class="subheading">Our vision</h4>
                            </div>
                            <div class="timeline-body"><p class="text-muted">We strive to reach the home of every poor person so that we can be the helper and helper for them. While clothing is an acquired human right, it must be provided to all in a fair manner</p></div>
                        </div>
                    </li>
                    <li class="timeline-inverted">
                        <a href="Register.aspx" >
                        <div class="timeline-image">
                            <h4>
                                Be Part
                                <br />
                                Of Our
                                <br />
                                Story!
                            </h4>
                        </div>
                            </a>
                    </li>
                </ul>
            </div>
        </section>
        
        <%------ FAQ ------%>
    <div class="col-md-12">

<div class="row">
  <div class="secf">
      <h2>Frequently Asked Questions</h2>
    </div> 
    </div>
    <div class="container">
  <details>
  <summary class="summary_me">1. What Is Hope?</summary>
  <div>Hope is a recycling clothing project, that sorting garments for better use, in order to serve charities and help the less fortunate in Jordan.
</div>
</details>
</div>

        <div class="container">
  <details>
  <summary class="summary_me">2. What kinds of donations do you receive?</summary>
  <div>We receive all types of clothes with various qualities
</div>
</details>
</div>

        <div class="container">
  <details>
  <summary class="summary_me">3. What we do with the Old/Used Clothes?</summary>
  <div>The clothes are sorted according to their types and quality and handed over to the charities.</div>
</details>
</div>

        <div class="container">
  <details>
  <summary class="summary_me">4. Does Hope receive other donations beside the clothes?</summary>
  <div>Hope accepts Shoes, bags, belts, and everything that comes under the clothing list.</div>
</details>
</div>

        <div class="container">
  <details>
  <summary class="summary_me">5. What is the expected time to response?</summary>
  <div>Within maximum 24 hours</div>
</details>
</div>

        <div class="container">
  <details>
  <summary class="summary_me">6. What is the work process at Hope?</summary>
  <div>your donation requests will be accepted through our website<br />
      We will contact you to confirm the date of receipt<br />
      We will arrive on time to receive your donations<br />
      We sort and recycle your donations<br />
      Make sure the clothes are recycled and delivered to the needy<br />
      Delivery: The clothes will be delivered to the beneficiaries of charities</div>
</details>
</div>

        <div class="container">
  <details>
  <summary class="summary_me">7. What are the requirements for becoming a volunteer?</summary>
  <div>Volunteer opportunities are available to all young people interested in volunteering. Volunteers will be selected according to their skills and interests.</div>
</details>
</div>

        <div class="container">
  <details>
  <summary class="summary_me">8. Is there a dress code for volunteering?</summary>
  <div>The dress code depends on the entity you will volunteer for and the type of volunteering activity. When you apply for a volunteering opportunity, you must read all of the information related to the activity, including any approved dress code. Dress code policies usually ask volunteers to dress modestly, in line with the region where the opportunity is based.</div>
</details>
</div>
        
        
         <div class="container">
  <details>
  <summary class="summary_me">8.How are the administrative and operational expenses of Hope Organization financed from salaries and others?</summary>
  <div>Funding is provided through external donors such as the European Union, in addition to projects that operate under the umbrella of the organization, to reach 100% of the amount donated to the poor.</div>
</details>
</div>
        
        
        <br /><br />
</div>

    <hr />
        <!-- Contact-->
        <section class="page-section" id="contact">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Contact Us</h2>
                    <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
                </div>
                <!-- * * * * * * * * * * * * * * *-->
                <!-- * * SB Forms Contact Form * *-->
                <!-- * * * * * * * * * * * * * * *-->
                <!-- This form is pre-integrated with SB Forms.-->
                <!-- To make this form functional, sign up at-->
                <!-- https://startbootstrap.com/solution/contact-forms-->
                <!-- to get an API token!-->
                <form id="contactForm" data-sb-form-api-token="API_TOKEN">
                    <div class="row align-items-stretch mb-5">
                        <div class="col-md-6">
                            <div class="form-group">
                                <!-- Name input-->
                                <input class="form-control" runat="server" id="name" type="text" placeholder="Your Name *" data-sb-validations="required" />
                                <div class="invalid-feedback" data-sb-feedback="name:required">A name is required.</div>
                            </div>
                            <div class="form-group">
                                <!-- Email address input-->
                                <input class="form-control" id="email" runat="server" type="email" placeholder="Your Email *" data-sb-validations="required,email" />
                                <div class="invalid-feedback" data-sb-feedback="email:required">An email is required.</div>
                                <div class="invalid-feedback" data-sb-feedback="email:email">Email is not valid.</div>
                            </div>
                            <div class="form-group mb-md-0">
                                <!-- Phone number input-->
                                <input class="form-control" id="phone" runat="server" type="tel" placeholder="Your Phone *" data-sb-validations="required" />
                                <div class="invalid-feedback" data-sb-feedback="phone:required">A phone number is required.</div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group form-group-textarea mb-md-0">
                                <!-- Message input-->
                                <textarea class="form-control" id="message" runat="server" placeholder="Your Message *" data-sb-validations="required"></textarea>
                                <div class="invalid-feedback" data-sb-feedback="message:required">A message is required.</div>
                            </div>
                        </div>
                    </div>
                    <!-- Submit success message-->
                    <!---->
                    <!-- This is what your users will see when the form-->
                    <!-- has successfully submitted-->
                    <div class="d-none" id="submitSuccessMessage">
                        <div class="text-center text-white mb-3">
                            <div class="fw-bolder">Form submission successful!</div>
                            To activate this form, sign up at
                            <br />
                            <a href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
                        </div>
                    </div>
                    <!-- Submit error message-->
                    <!---->
                    <!-- This is what your users will see when there is-->
                    <!-- an error submitting the form-->
                    <div class="d-none" id="submitErrorMessage"><div class="text-center text-danger mb-3">Error sending message!</div></div>
                    <!-- Submit Button-->
                    <div class="text-center" runat="server">
                        



<%--                        <button runat="server" class="btn btn-primary btn-xl text-uppercase disabled" id="submitButto1" onclick="submitButton1_click"  type="submit">Send</button>--%>


                       <%-- <button runat="server" class="btn btn-primary btn-xl text-uppercase disabled" id="send" onclick="send_click"  type="submit" >
                   Send
                   
                </button>--%>

                        <form runat="server">
                             <asp:Button ID="Button1" type="Post" class=" btn-primary btn-xl text-uppercase disabled" runat="server" Text="Send" OnClick="send_click" />

                        </form>

                       


                    </div>
                </form>
            </div>
        </section>
        <!-- Footer-->
        <footer class="footer py-4">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-4 text-lg-start">Copyright &copy; Your Website 2022</div>
                    <div class="col-lg-4 my-3 my-lg-0">
                        <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
                        <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="LinkedIn"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                    <div class="col-lg-4 text-lg-end">
                        <a class="link-dark text-decoration-none me-3" href="#!">Privacy Policy</a>
                        <a class="link-dark text-decoration-none" href="#!">Terms of Use</a>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Portfolio Modals-->
        <!-- Portfolio item 1 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <h2 class="text-uppercase">Project Name</h2>
                                    <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>
                                    <img class="img-fluid d-block mx-auto" src="poorchild.jpg" alt="..." />
                                    <p>Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita beatae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!</p>
                                    <ul class="list-inline">
                                        <li>
                                            <strong>Client:</strong>
                                            Threads
                                        </li>
                                        <li>
                                            <strong>Category:</strong>
                                            Illustration
                                        </li>
                                    </ul>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-xmark me-1"></i>
                                        Close Project
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio item 2 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <h2 class="text-uppercase">Project Name</h2>
                                    <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>
                                    <img class="img-fluid d-block mx-auto" src="assets/img/portfolio/2.jpg" alt="..." />
                                    <p>Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita beatae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!</p>
                                    <ul class="list-inline">
                                        <li>
                                            <strong>Client:</strong>
                                            Explore
                                        </li>
                                        <li>
                                            <strong>Category:</strong>
                                            Graphic Design
                                        </li>
                                    </ul>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-xmark me-1"></i>
                                        Close Project
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio item 3 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <h2 class="text-uppercase">Project Name</h2>
                                    <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>
                                    <img class="img-fluid d-block mx-auto" src="assets/img/portfolio/3.jpg" alt="..." />
                                    <p>Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita beatae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!</p>
                                    <ul class="list-inline">
                                        <li>
                                            <strong>Client:</strong>
                                            Finish
                                        </li>
                                        <li>
                                            <strong>Category:</strong>
                                            Identity
                                        </li>
                                    </ul>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-xmark me-1"></i>
                                        Close Project
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio item 4 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <h2 class="text-uppercase">Project Name</h2>
                                    <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>
                                    <img class="img-fluid d-block mx-auto" src="assets/img/portfolio/4.jpg" alt="..." />
                                    <p>Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita beatae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!</p>
                                    <ul class="list-inline">
                                        <li>
                                            <strong>Client:</strong>
                                            Lines
                                        </li>
                                        <li>
                                            <strong>Category:</strong>
                                            Branding
                                        </li>
                                    </ul>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-xmark me-1"></i>
                                        Close Project
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio item 5 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <h2 class="text-uppercase">Project Name</h2>
                                    <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>
                                    <img class="img-fluid d-block mx-auto" src="assets/img/portfolio/5.jpg" alt="..." />
                                    <p>Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita beatae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!</p>
                                    <ul class="list-inline">
                                        <li>
                                            <strong>Client:</strong>
                                            Southwest
                                        </li>
                                        <li>
                                            <strong>Category:</strong>
                                            Website Design
                                        </li>
                                    </ul>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-xmark me-1"></i>
                                        Close Project
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio item 6 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <h2 class="text-uppercase">Project Name</h2>
                                    <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>
                                    <img class="img-fluid d-block mx-auto" src="assets/img/portfolio/6.jpg" alt="..." />
                                    <p>Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita beatae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!</p>
                                    <ul class="list-inline">
                                        <li>
                                            <strong>Client:</strong>
                                            Window
                                        </li>
                                        <li>
                                            <strong>Category:</strong>
                                            Photography
                                        </li>
                                    </ul>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-xmark me-1"></i>
                                        Close Project
                                    </button>
                                </div>
                            </div>

                                        <iframe width="100vh" height="100vh" src="https://app.crisp.chat/website/9331f54f-9335-4ef0-92e6-a7ddd6e6f0dd/inbox/" title="Chat" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

                        </div>
                    </div>
                </div>
            </div>



            <iframe width="1000px" height="1000px" src="https://app.crisp.chat/website/9331f54f-9335-4ef0-92e6-a7ddd6e6f0dd/inbox/" title="Chat" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>



        </div>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    --%>


      <!-- Footer -->
<footer class="text-center text-lg-start  text-muted" style="background-color:#21273D !important ; padding:20px ">
 
  <!-- Section: Social media -->

  <!-- Section: Links  -->
  <section class="">
    <div class="container text-center text-md-start mt-5">
      <!-- Grid row -->
      <div class="row mt-4">
        <!-- Grid column -->
        <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
          <!-- Content -->
          <h4 class="text-uppercase fw-bold mb-4">
            <i class="fas fa-gem me-3"></i>Hope
          </h4>
          <p class="footer-text">
            Hope is a project to recycle used clothes, sort them, clean them and repurpose them
            to be usable again and benefit the poor and needy from its proceeds. It is a project approved by charities in the Kingdom of Jordan.
          </p>
        </div>
        <!-- Grid column -->

        <!-- Grid column -->
          
        <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
          <!-- Links -->
          <h6 class="text-uppercase fw-bold mb-4">
            About Us
          </h6>
          <p class="info">
            <a href="#!" class="text-reset">Home</a>
          </p>
          <p class="info">
            <a href="#!" class="text-reset">Our work</a>
          </p>
          <p class="info">
            <a href="#!" class="text-reset">Sponsors</a>
          </p>
          <p class="info">
            <a href="#!" class="text-reset">FAQ</a>
          </p>
        </div>
        <!-- Grid column -->

        <!-- Grid column -->
        <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
          <!-- Links -->
          <h6 class="text-uppercase fw-bold mb-4">
            Useful links
          </h6>
          <p class="info">
            <a href="https://www.tua.jo/ar" class="text-reset">Takyt om Ali</a>
          </p>
          <p class="info">
            <a href="https://bit.ly/3n7kGqR" class="text-reset">Zakhat Al-khayr</a>
          </p>
          <p class="info">
            <a href="https://bit.ly/3ssVqiu" class="text-reset">Riad Al-jannah</a>
          </p>
          <p class="info">
            <a href="#!" class="text-reset">Help</a>
          </p>
        </div>
        <!-- Grid column -->

        <!-- Grid column -->
        <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
          <!-- Links -->
          <h6 class="text-uppercase fw-bold mb-4">Contact</h6>
          <p class="info"><i class="fas fa-home me-3"></i> Amman,Jordan</p>
          <p class="info">
            <i class="fas fa-envelope me-3"></i>
            Hope.info@gmail.com
          </p>
          <p class="info"><i class="fas fa-phone me-3"></i> + 962 77 957 55 444</p>
          <p class="info"><i class="fas fa-print me-3"></i> + 962 79 859 75 961</p>
        </div>
        <!-- Grid column -->
      
      <!-- Grid row -->
        
    </div>
      </div>
  </section>
  <!-- Section: Links  -->



     <!-- Section: Social media -->
  <section class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom">
    <!-- Left -->
    <div class="me-5 d-none d-lg-block">
      <span>Get connected with us on social networks:</span>
    </div>
    <!-- Left -->

    <!-- Right -->
    <div>
      <a href="" class="me-4 text-reset">
        <i class="fab fa-facebook-f"></i>
      </a>
      <a href="" class="me-4 text-reset">
        <i class="fab fa-twitter"></i>
      </a>
      <a href="" class="me-4 text-reset">
        <i class="fab fa-google"></i>
      </a>
      <a href="" class="me-4 text-reset">
        <i class="fab fa-instagram"></i>
      </a>
      <a href="" class="me-4 text-reset">
        <i class="fab fa-linkedin"></i>
      </a>
      <a href="" class="me-4 text-reset">
        <i class="fab fa-github"></i>
      </a>
    </div>
    <!-- Right -->
  </section>

  
</footer>
<!-- Footer -->

    <script src="Script.js">

    </script>

</body>
</html>
