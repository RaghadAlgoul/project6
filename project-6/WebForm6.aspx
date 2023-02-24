<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs" Inherits="project_6.WebForm6" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    
<!--Contact us favicon HAITHAM ADD VALUE-->
    <link rel="shortcut icon" href="/Contact_us_logo.ico" type="image/x-icon">
   
    <!--Google font link-->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <!--Overpass font from google-->
    <link href="https://fonts.googleapis.com/css2?family=Overpass:wght@100&display=swap" rel="stylesheet">
    <!--style.css-->
    <link rel="stylesheet" href="style.css">
    <!--reCAPTCHA v2 -->
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>

    
   

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   <div class="container">
        <div class="row">
            <div class="col">
                <p class="mt-4">How we can help you Today?</p>
                <hr>
                <form action="?" method="post">
                    <label for="email" class="form-label my-2">Enter your email</label>
                    <input class="form-control" type="email" name="email" id="email" autocomplete="off"
                        placeholder="example@example.com" required>

                    <label for="fname" class="form-label my-2">Full name</label>
                    <input class="form-control" type="text" name="fname" id="fname" autocomplete="off"
                        placeholder="Mark dan mark" required>

                    <label for="message" class="form-label my-2">How we can help you?</label>
                    <textarea class="form-control" name="message" id="message" row="4" cols="30" rows="10"
                        placeholder="I have a problem in ..." required></textarea>
                    <!--Please register as a developer and add "your_site_key" you will find it on https://www.google.com/recaptcha/admin/create-->
                    <div class="g-recaptcha mt-4" data-sitekey="your_site_key"></div>
                    <button type="submit" name="submit" class="btn btn-primary form-control my-4">Submit</button>
                </form>
            </div>
        </div>
        <!--jsdelivr from bootstrap 5.0.0-beta3-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
            crossorigin="anonymous"></script>

</asp:Content>
