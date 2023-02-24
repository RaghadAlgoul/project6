<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Recommandaions.ascx.cs" Inherits="project_6.WebUserControl7" %>


<link href="Styles/sweetalert.css" rel="stylesheet" />
    <script src="Scripts/sweetalert.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
     <script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js" ></script>
      <script type="text/javascript">
          function successalert(x) {
              swal({
                  title: 'Caution!',
                  text: `${x} has been deleted`,
                  type: 'Warning'
              });
          }
      </script>

    <style>
    /*    body{
            background-image:url("images/volunteer.jpg");
            background-size:cover;
        }*/
        .h2-title{text-align: center;color:#21273D;}

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
            background-image:url("images/poor.jpg");
            background-size:cover;
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
            align-items: center;
            background: rgba(255, 255, 255, 0.41);
            border-radius: 16px;
            box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
            backdrop-filter: blur(5.3px);
            -webkit-backdrop-filter: blur(5.3px);
            border: 1px solid rgba(255, 255, 255, 0.45);
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
            
            
             .pic_img{
                padding: 10px;
                width: 100%;
                }


             }

        @media only screen and (min-device-width: 481px) and (max-device-width:768px) {

         




            .txtBoxs {width: 100%;}

            .t{max-width: 100%!important;}

            .btnnn {width: 100%;}

            .con-boxs{width: 50%;}

            .all{padding:20px; margin: 0 20px;}

        }
        


    </style>



 <div>
 <div class="all col-md-12">
    <div class="txt-boxs col-md-5">
             <h3 class="h2-title">New Recommendation Request</h3>
    <asp:TextBox ID="txtName" runat="server" placeholder="Name*" CssClass="txtBoxs t" ></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Fill The Name" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:TextBox ID="txtPhone" runat="server" placeholder="Phone*" CssClass="txtBoxs t" TextMode="Phone"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Fill The Phone" ForeColor="Red" ControlToValidate="txtPhone"></asp:RequiredFieldValidator>
    <asp:DropDownList ID="DropCity" runat="server" placeholder="Select Your City:" CssClass="txtBoxs t">
        <asp:ListItem Text="Select Your City:"></asp:ListItem>
        <asp:ListItem Value="1">Amman</asp:ListItem>
        <asp:ListItem Value="2">Irbid</asp:ListItem>
        <asp:ListItem Value="3">Jarash</asp:ListItem>
        <asp:ListItem Value="4">Ajloun</asp:ListItem>
        <asp:ListItem Value="5">Al-Zarqaa</asp:ListItem>
        <asp:ListItem Value="6">Madaba</asp:ListItem>
        <asp:ListItem Value="7">Al-Salt</asp:ListItem>
        <asp:ListItem Value="8">Aqaba</asp:ListItem>
        <asp:ListItem Value="9">Ma&#39;an</asp:ListItem>
        <asp:ListItem Value="10">Al-Karak</asp:ListItem>
        <asp:ListItem Value="11">Al-mafraq</asp:ListItem>
        <asp:ListItem Value="12">Al-Tafila</asp:ListItem>
    </asp:DropDownList>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropCity" ErrorMessage="Select Yor City" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:TextBox ID="txtStreet" runat="server" placeholder="Street*"  CssClass="txtBoxs t"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtStreet" ErrorMessage="Fill The Street" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:TextBox ID="txtMember" runat="server" type="number" min="0" TextMode="Number" placeholder="Members*" CssClass="txtBoxs t"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtMember" ErrorMessage="Fill The Members" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:TextBox ID="txtWorker" runat="server" type="number" min="0" TextMode="Number" placeholder="Workers*" CssClass="txtBoxs t"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtWorker" ErrorMessage="Fill The Workers" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:TextBox ID="txtIncome" runat="server" type="number" min="0" TextMode="Number" placeholder="Fixed income*" CssClass="txtBoxs t"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtIncome" ErrorMessage="Fill The Fixef Income" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:TextBox ID="txtDetails" runat="server" Rows="5" TextMode="MultiLine" CssClass="txtBoxs" placeholder="Write Details..." MaxLength="300"></asp:TextBox>



             <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtDetails" ErrorMessage="Fill The Details" ForeColor="Red"></asp:RequiredFieldValidator>



    <asp:Button ID="Button1" runat="server" Text="Create request" CssClass="btnnn" OnClick="Button1_Click"/><br /><br />
    <asp:Label ID="Label1" runat="server" Text="Please Fill In All Fields" Visible="false" CssClass="lable"> </asp:Label>
</div>




    <div class="con-boxs col-md-6">
    </div>
    </div>
    </div> 

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:project-6ConnectionString %>" DeleteCommand="DELETE FROM [Recommendation] WHERE [Id_recommendation] = @Id_recommendation" InsertCommand="INSERT INTO [Recommendation] ([Address_recommendation], [Phone], [Details], [members], [workers], [fixed_income], [name], [city], [done_rec]) VALUES (@Address_recommendation, @Phone, @Details, @members, @workers, @fixed_income, @name, @city, @done_rec)" SelectCommand="SELECT * FROM [Recommendation]" UpdateCommand="UPDATE [Recommendation] SET [Address_recommendation] = @Address_recommendation, [Phone] = @Phone, [Details] = @Details, [members] = @members, [workers] = @workers, [fixed_income] = @fixed_income, [name] = @name, [city] = @city, [done_rec] = @done_rec WHERE [Id_recommendation] = @Id_recommendation">
        <DeleteParameters>
            <asp:Parameter Name="Id_recommendation" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Address_recommendation" Type="String" />
            <asp:Parameter Name="Phone" Type="Decimal" />
            <asp:Parameter Name="Details" Type="String" />
            <asp:Parameter Name="members" Type="Int32" />
            <asp:Parameter Name="workers" Type="Int32" />
            <asp:Parameter Name="fixed_income" Type="Int32" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="city" Type="Int32" />
            <asp:Parameter Name="done_rec" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Address_recommendation" Type="String" />
            <asp:Parameter Name="Phone" Type="Decimal" />
            <asp:Parameter Name="Details" Type="String" />
            <asp:Parameter Name="members" Type="Int32" />
            <asp:Parameter Name="workers" Type="Int32" />
            <asp:Parameter Name="fixed_income" Type="Int32" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="city" Type="Int32" />
            <asp:Parameter Name="done_rec" Type="Int32" />
            <asp:Parameter Name="Id_recommendation" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>