<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="AddCampaigns.aspx.cs" Inherits="project_6.WebForm8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js" ></script>
    <%--<script>
        function myFunction() {
            alert("Hello World!");
        }
    </script>--%>
    <style>
        #marginDiv{margin-left:100px;}
        #MainContent_ImageDiv{width:400px;height:230px}
        #MainContent_upload {right:670px;top:440px;width:130px;height:40px;margin-top:-20px;}
        #MainContent_FileUpload1{top:53%;right:35%;}
        .txtbox{width:200px;height:40px;border: solid 3px #000443;}
        @media only screen and (min-device-width:481px)and (max-device-width:768px) {
            #marginDiv{ margin-left:220px }
            .p{font-size:17px}
            h2{margin-left:0px;font-size:20px}
            #MainContent_ImageDiv{width:260px;height:180px;}
             #MainContent_upload {right:145px;top:418px;width:111px;margin-top:-65px;height:30px}
             #MainContent_FileUpload1{top:51%;right:-2%;}
             .txtbox{width:175px;height:30px;border: solid 2px #000443;}
        }

         #marginDiv{
            margin-left:20%;
        }
       
    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div id="marginDiv">
    <h2 style="color:#000443;font-weight:bold">Creat New Campaigns</h2><br />
    <div style="background-color:#000443;height:3px;width:40%"></div><br />
        <div id="ImageDiv"  runat="server" style="border: solid 3px #000443;width:400px;height:230px;background-image:url('div.png');background-size:contain"></div>
        <br />
        <asp:Image ID="Image1" runat="server" style="width:400px;height:230px;border: solid 3px #000443;display:none"/>
      <br />
        <asp:FileUpload ID="FileUpload1" accept=".png,.jpg,.jpeg,.gif"
 runat="server"  style="position:absolute" />
      <br /> <br /> <br />
                  <asp:Button ID="upload" runat="server" Text="Upload"  style="background-color:#000443;color:white;font-weight:bold;border-radius:15px;position:absolute;" OnClick="upload_Click"/>
        <div id="alertLabel" runat="server" style="margin-left:55%;color:red;"></div>
           
        <br /><br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:project-6ConnectionString8 %>" SelectCommand="SELECT * FROM [Campaigns]" DeleteCommand="DELETE FROM [Campaigns] WHERE [Id_campaigns] = @Id_campaigns" InsertCommand="INSERT INTO [Campaigns] ([Name_campaigns], [Details], [Image_campaigns], [Target_campaigns]) VALUES (@Name_campaigns, @Details, @Image_campaigns, @Target_campaigns)" UpdateCommand="UPDATE [Campaigns] SET [Name_campaigns] = @Name_campaigns, [Details] = @Details, [Image_campaigns] = @Image_campaigns, [Target_campaigns] = @Target_campaigns WHERE [Id_campaigns] = @Id_campaigns">
            <DeleteParameters>
                <asp:Parameter Name="Id_campaigns" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name_campaigns" Type="String" />
                <asp:Parameter Name="Details" Type="String" />
                <asp:Parameter Name="Image_campaigns" Type="String" />
                <asp:Parameter Name="Target_campaigns" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name_campaigns" Type="String" />
                <asp:Parameter Name="Details" Type="String" />
                <asp:Parameter Name="Image_campaigns" Type="String" />
                <asp:Parameter Name="Target_campaigns" Type="Int32" />
                <asp:Parameter Name="Id_campaigns" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <div class="row" style="width:fit-content">
    <div class="col">
        
    
       <p class="p"  style="color:#000443;">Campaigns Name : </p>
    </div>
    <div class="col">
       
        <asp:TextBox class="txtbox" ID="txtName" runat="server"></asp:TextBox>
    </div></div>
        <br />

    <div class="row" style="width:fit-content">
    <div class="col">
    
       <p class="p"   style="color:#000443;">Target  &nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;   :  </p>
    </div>
    <div class="col">
      
        <asp:TextBox  class="txtbox"  ID="txtTarget" runat="server"  style="margin-left:4px"></asp:TextBox>
    </div></div>  
        <br />
     <div class="row" style="width:fit-content">
    <div class="col">
    
       <p class="p" style="color:#000443;">Desciption &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :     </p>
        
    </div>
    
         <div class="row" style="width:fit-content">
              <div class="col">
             <textarea class="col" id="txtDesciption" runat="server" style="margin-left:30px" cols="20" rows="2"></textarea></div>
             
    </div>
          

             </div>
      
        <%--<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>--%>
                 <asp:Button ID="Button1" runat="server" style="background-color:#000443;width:130px;height:40px;color:white;font-weight:bold;border-radius:15px;margin-left:15%" Text="Save" OnClick="Button1_Click1"  />
      <br />    <div id="alert2" runat="server" style="margin-left:15%;color:red;"></div>
            <%--</ContentTemplate>
            
        </asp:UpdatePanel>--%>

    </div>
</asp:Content>
