<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="donateClothes.ascx.cs" Inherits="project_6.WebUserControl3" %>


<link href="Styles/sweetalert.css" rel="stylesheet" />
<script src="Scripts/sweetalert.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js" ></script>
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
        
   
        .pic_img{padding:35px;}

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
            align-items: center;
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
           .pic_img{
                padding: 10px;
                width: 100%;
                }
           .choose-way{

               background-color:#FFCA73;
               color:#0E111E;
               height:70px;
               width:15%;
               border-radius:10px;
               margin:10px;
               font-size:x-large;
               margin-left:20%;
               margin-top:25px;
           }


      


        @media only screen and (min-device-width: 0px) and (max-device-width:480px) {
             .text2_{font-size:15px;}


             .all{
                 flex-wrap:wrap;
                 justify-content: space-around;
                 }

             .txt-boxs{flex-wrap:wrap; align-items: center;}

             .con-boxs{flex-wrap:wrap; align-items: center;}

             .txtBoxs {width: 100%;}

             .t{max-width: 100%!important;}

             .btnnn {width: 100%;}
            
            .choose-way{

              
               height:40px;
               width:15%;
               border-radius:5px;
               margin:10px;
               font-size:small;
               margin-left:20%;
               margin-top:20px;
           }
             .pic_img{
                padding: 10px;
                width: 100%;
                }
             }
        

        @media only screen and (min-device-width: 481px) and (max-device-width:768px) {

        

          .choose-way{

              
               height:50px;
               width:15%;
               border-radius:7px;
               margin:10px;
               font-size:small;
               margin-left:20%;
               margin-top:40px;
           }


            .h2-title{text-align: center;}

            .txtBoxs {width: 100%;}

            .t{max-width: 100%!important;}

            .btnnn {width: 100%;}

            .con-boxs{width: 50%;}

            .all{padding:0; margin: 0 20px;}

        }
        


    </style>






    
    
     

   
            

         
       
    
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:project-6ConnectionString2 %>" SelectCommand="SELECT [Id_direct], [Full_name], [Phone], [City], [Street], [Donation_date], [Quantity], [Details], [Id_campaigns], [Email] FROM [Direct_Donation]" DeleteCommand="DELETE FROM [Direct_Donation] WHERE [Id_direct] = @Id_direct" InsertCommand="INSERT INTO [Direct_Donation] ([Full_name], [Phone], [City], [Street], [Donation_date], [Quantity], [Details], [Id_campaigns], [Email]) VALUES (@Full_name, @Phone, @City, @Street, @Donation_date, @Quantity, @Details, @Id_campaigns, @Email)" UpdateCommand="UPDATE [Direct_Donation] SET [Full_name] = @Full_name, [Phone] = @Phone, [City] = @City, [Street] = @Street, [Donation_date] = @Donation_date, [Quantity] = @Quantity, [Details] = @Details, [Id_campaigns] = @Id_campaigns, [Email] = @Email WHERE [Id_direct] = @Id_direct">
                    <DeleteParameters>
                        <asp:Parameter Name="Id_direct" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Full_name" Type="String" />
                        <asp:Parameter Name="Phone" Type="Decimal" />
                        <asp:Parameter Name="City" Type="Int32" />
                        <asp:Parameter Name="Street" Type="String" />
                        <asp:Parameter DbType="Date" Name="Donation_date" />
                        <asp:Parameter Name="Quantity" Type="Int32" />
                        <asp:Parameter Name="Details" Type="String" />
                        <asp:Parameter Name="Id_campaigns" Type="Int32" />
                        <asp:Parameter Name="Email" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Full_name" Type="String" />
                        <asp:Parameter Name="Phone" Type="Decimal" />
                        <asp:Parameter Name="City" Type="Int32" />
                        <asp:Parameter Name="Street" Type="String" />
                        <asp:Parameter DbType="Date" Name="Donation_date" />
                        <asp:Parameter Name="Quantity" Type="Int32" />
                        <asp:Parameter Name="Details" Type="String" />
                        <asp:Parameter Name="Id_campaigns" Type="Int32" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Id_direct" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:project-6ConnectionString3 %>" SelectCommand="SELECT * FROM [City]"></asp:SqlDataSource>
             
    <div id="clothes" runat="server">
    <div class="row">
        <div class="text_contact_us">
        <h1 >Donation Request</h1>
        </div>
        <hr />
    </div>
        
 <div class="all col-md-12">  
    <div class="txt-boxs col-md-6">
    <h3 class="h2-title">New Donation Request</h3>
    <asp:TextBox ID="TextName" runat="server" placeholder="Name*" CssClass="txtBoxs t" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextName" ForeColor="Red" ErrorMessage="Required Name"></asp:RequiredFieldValidator>

   
    <asp:TextBox ID="TextEmail" runat="server" type="email" placeholder="Email*" CssClass="txtBoxs t"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextEmail" ForeColor="Red" ErrorMessage="Required mail"></asp:RequiredFieldValidator>
        
        
        
         <asp:TextBox ID="TextPhone" runat="server" placeholder="Phone*" CssClass="txtBoxs t"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Textphone" ForeColor="Red" ErrorMessage="Required phone"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="Textphone" runat="server" ValidationExpression="^(07)[7-9]{1}[0-9]{7}$" ForeColor="Red" ErrorMessage="Required a Valid Number"></asp:RegularExpressionValidator>


    <asp:DropDownList ID="DropDownCity" runat="server" placeholder="City" CssClass="txtBoxs t">
                <asp:ListItem Value="0">Select Your City:</asp:ListItem>
            </asp:DropDownList>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownCity" ForeColor="Red" ErrorMessage="Required city"></asp:RequiredFieldValidator>


    <asp:TextBox ID="TextStreet" runat="server" placeholder="Street*"  CssClass="txtBoxs t"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextStreet" ForeColor="Red" ErrorMessage="Required Address"></asp:RequiredFieldValidator>


    <asp:TextBox ID="TextDate" runat="server" type="date" placeholder="Date to hand the donation" CssClass="txtBoxs t"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextDate" ForeColor="Red" ErrorMessage="Required Date"></asp:RequiredFieldValidator>




    <asp:TextBox ID="TextQuant" runat="server" type="number" placeholder="Quantity of pieces" min="0" CssClass="txtBoxs t"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextQuant" ForeColor="Red" ErrorMessage="Required Number of pieces"></asp:RequiredFieldValidator>




    <asp:TextBox ID="TextArea" runat="server" Rows="5" TextMode="MultiLine" CssClass="txtBoxs" placeholder="Write your message (only 200 character)" MaxLength="200"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Create request" CssClass="btnnn" OnClick="Button1_Click1"/><br /><br />
            <asp:Label ID="Label1" runat="server" Text="Please Fill In All Fields" Visible="false" CssClass="lable"> </asp:Label>
</div>




    <div class="con-boxs col-md-6">
                  <img src="img/pic.png" class="pic_img" />
    </div>
    </div>
    </div> 



    

           <hr />