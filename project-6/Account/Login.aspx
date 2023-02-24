<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="project_6.Account.Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">




    <script src="../Scripts/sweetalert.min.js"></script>
    <link href="../Styles/sweetalert.css" rel="stylesheet" />



    <style>
        hr {
            display:none
        }

        .row {
            background-color : white ;
            padding:60px;
            box-shadow: rgb(255 255 255) 0px 5px 15px;


        }

       
          body {
              
              background-image: url('../img/clothes-backgrpund.jpg');
              background-size:cover;
              background-position: center center;
          }

          
        #socialLoginList  button {

            width:150px;    
            background-color:#587bc2;
            color:white;
            text-align:center;

        }

        #socialLoginList h4{
            color:black!important;
            text-align:center;
        }


        h4 {
            text-align:center;
            font-size:15px;
        }
    </style>

    <h2 style="text-align:center; color: white"><%: Title %>.</h2>
    <link href="../Styles/sweetalert.css" rel="stylesheet" />
    <script src="../Scripts/sweetalert.min.js"></script>
    <div class="row">
        <div class="col-md-6 ">
            <section id="loginForm">
                <div class="form-horizontal">
                    <div class="mb-5">
                    <h4 style="margin-bottom:40px;" >Use your account to log in.</h4>
                    </div>
                    <hr />
                    <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                CssClass="text-danger" ErrorMessage="The email field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <div class="checkbox">
                                <asp:CheckBox runat="server" ID="RememberMe" />
                                <asp:Label runat="server" AssociatedControlID="RememberMe">Remember me?</asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <asp:Button runat="server" OnClick="LogIn" Text="Log in" CssClass="btn btn-default" />
                        </div>
                    </div>
                </div>
                <p Style="text-align:center ; margin-right:110px">
                    <asp:HyperLink runat="server"  ID="RegisterHyperLink" ViewStateMode="Disabled">Register as a new user</asp:HyperLink>
                </p>
                <p>
                    <%-- Enable this once you have account confirmation enabled for password reset functionality
                    <asp:HyperLink runat="server" ID="ForgotPasswordHyperLink" ViewStateMode="Disabled">Forgot your password?</asp:HyperLink>
                    --%>
                </p>
            </section>
        </div>

          <div class="col-md-6">
            
                
                <img src="\img\Login.png"/ style="width:450px ; height:400px;">
            
        </div>

         <div class="col-md-4">
            <section id="socialLoginForm">
                <uc:OpenAuthProviders runat="server" ID="OpenAuthLogin" />
               
            </section>
        </div>

        
        </div>

    
        

   
    
</asp:Content>
