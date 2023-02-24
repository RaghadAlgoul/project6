<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="contactUs.aspx.cs" Inherits="project_6.WebForm3" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <script src="Scripts/sweetalert.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>
      
    
   
            <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <link href="Styles/sweetalert.css" rel="stylesheet" />


<script type="text/javascript">
    function successalert() {
        swal({
            title: 'Congratulations!',
            text: 'Your message has been succesfully sent',
            type: 'success'
        });
    }
    </script>

<style>
        .text2_{font-size:20px;}

        .text_contact_us{padding:0 30px;}

        td {height: 50px;}

        .t{max-width: 80%!important;}
        
   
        .btnnn{
            width:80%;
            text-align:center;
            background-color:#21273D;
            color:white;
            font-size:large;  
            border-radius: 5px;
            margin: 5px;
            border: 1px solid gray;
            padding: 10px;
        }
      
        .txtBoxs{
             width:80%;
             border-radius: 5px;
             border: 1px solid gray;
             margin: 5px;
             padding: 10px;
             }


        .all {
            display: flex;
            justify-content: center;
            justify-content: space-around;
            background-image:url("\images\22.png");
            background-size:contain;
            background-repeat:no-repeat;
            padding: 5%;
            border-radius: 16px;
            box-shadow: 0 6px 40px rgba(0, 0, 0, 0.1);
            backdrop-filter: blur(6.3px);
            -webkit-backdrop-filter: blur(6.3px);
            border: 1px solid rgba(241, 246, 248, 0.44);
            }
        

        .txt-boxs{
            display:flex;
            flex-direction:column;
            align-items: stretch;
            }

        .con-boxs{
            display:flex;
            flex-direction:column;
        }

        .icons_con{
             display:flex; 
             align-items: center;
             padding:10px;
        }
          .auto-style1 {width: 35px;}
      


        @media only screen and (min-device-width: 0px) and (max-device-width:480px) {
             .text2_{font-size:15px;}

            .all {
                background-image: none;
            }

             .all{
                 flex-wrap:wrap;
                 justify-content: space-around;
                 }

             .txt-boxs{flex-wrap:wrap; align-items: center;}

             .con-boxs{flex-wrap:wrap; align-items: center;}

             .txtBoxs {width: 100%;}

             .t{max-width: 100%!important;}

             .btnnn {width: 100%;}
            
            }


        @media only screen and (min-device-width: 481px) and (max-device-width:768px) {

            .all{background-image:url("\images\223.png");}
         
            .h2-title{text-align: center;}

            .txtBoxs {width: 100%;}

            .t{max-width: 100%!important;}

            .btnnn {width: 100%;}

        }
    </style>
    

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


     
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:project-6ConnectionString7 %>" DeleteCommand="DELETE FROM [Contact] WHERE [Id_contact] = @Id_contact" InsertCommand="INSERT INTO [Contact] ([Full_name], [Email], [Phone], [Message_contact]) VALUES (@Full_name, @Email, @Phone, @Message_contact)" SelectCommand="SELECT * FROM [Contact]" UpdateCommand="UPDATE [Contact] SET [Full_name] = @Full_name, [Email] = @Email, [Phone] = @Phone, [Message_contact] = @Message_contact WHERE [Id_contact] = @Id_contact">
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
            

      
       <div>
    <div class="row"  style="background-color:white !important">
        <div class="text_contact_us">
        <h1 >Contact Us</h1>
        <p class="text2_">We always look forward to hearing from you. Got a question? Just reach out using the contact form below and send us your inquiry.We’ll respond to your message as soon as possible.</p>
        </div>
        <hr />
    </div>
        
 <div class="all col-md-12">  
    <div class="txt-boxs col-md-6">
    <h3 class="h2-title">Write Us</h3>
    <asp:TextBox ID="TextName" runat="server" placeholder="First Name*" CssClass="txtBoxs t" ></asp:TextBox>
    <asp:TextBox ID="TextPhone" runat="server" placeholder="Phone*" CssClass="txtBoxs t"></asp:TextBox>
    <asp:TextBox ID="TextEmail" runat="server" type="email" placeholder="Email*" CssClass="txtBoxs t"></asp:TextBox>
    <asp:TextBox ID="TextArea" runat="server" Rows="5" TextMode="MultiLine" CssClass="txtBoxs" placeholder="Write your message..."></asp:TextBox>
    <asp:Button  ID="Button1" runat="server" Text="Submit" CssClass="btnnn" OnClick="Button1_Click" />
        <asp:Label ID="Label1" runat="server" Text="Please Enter Your Message at least" Visible="false" CssClass="lable"> </asp:Label>
</div>




    <div id="one" class="con-boxs col-md-6">
                  <h3 class="h2-title">Follow Us</h3>
                  <table class="nav-justified">
                      <tr>
                          <td class="auto-style1"><span class="material-icons"> location_on </span></td>
                          <td><span>Irbid, Jordan</span></td>
                      </tr>
                      <tr>
                          <td class="auto-style1"><span class="material-icons"> local_phone </span></td>
                          <td><span>0797383346</span></td>
                      </tr>
                      <tr>
                          <td class="auto-style1"><span class="material-icons"> alternate_email </span></td>
                          <td><span>hopeorganization23@gmail.com</span></td>
                      </tr>
                      <tr>
                          <td class="auto-style1"><span class="material-icons"> public </span></td>
                          <td> <span>www.hope.com</span></td>
                      </tr>
                  </table>
    </div>
    </div>
    </div> 
    <br /><br /><br />


</asp:Content>
