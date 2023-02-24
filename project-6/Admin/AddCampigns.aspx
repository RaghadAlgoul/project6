<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="AddCampigns.aspx.cs" Inherits="project6.Admin.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #cc{margin-right:750px;margin-top:470px;}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        td{color:#000443;font-weight:bold}
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
        .auto-style1 {
            height: 27px;
        }
        .auto-style2 {
            height: 27px;
            width: 225px;
        }
        .auto-style3 {
            width: 225px;
        }
    </style>
    <div id="marginDiv">
    <h2 style="color:#000443;font-weight:bold">Creat New Campaigns</h2><br />
    <div style="background-color:#000443;height:3px;width:40%"></div><br />
        <div id="ImageDiv"  runat="server" style="border: solid 3px #000443;background-image:url('div.png');background-size:contain;width:400px;height:230px;"></div>
        <asp:Image ID="Image1" runat="server" style="width:400px;height:230px;border: solid 3px #000443;display:none"/>
        <asp:FileUpload ID="FileUpload1" accept=".png,.jpg,.jpeg,.gif" style=";position:absolute;left:50%;top:440px"
 runat="server"   />
       
                  <asp:Button ID="upload" runat="server" Text="Upload"  style="background-color:#000443;color:white;font-weight:bold;border-radius:15px;position:absolute;left:50%;top:480px" OnClick="upload_Click"/>
        <div id="alertLabel" runat="server" style="margin-left:40%;color:red;"></div>
           
         <br /><br /><br />
        <table class="w-100">
            <tr>
                <td  class="auto-style2">Campaigns Name&nbsp;&nbsp; : </td>
                <td class="auto-style1">
       
        <asp:TextBox class="txtbox" ID="txtName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Target &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; :</td>
                <td>
       
        <asp:TextBox class="txtbox" ID="txtTarget" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Desciption &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td>
                   <textarea id="TextArea1" style=" border:solid 2px #000443;" cols="26" runat="server" rows="2" maxlength="200"></textarea></td>
            </tr>
            <t
                <td class="auto-style3"> </td>
                <td><asp:Button ID="Button1" runat="server" style="background-color:#000443;width:130px;height:40px;color:white;font-weight:bold;border-radius:15px;" Text="Save" OnClick="Button1_Click1"  /><br />
      <br />    <div id="alert2" runat="server" style="color:red;"></div></td>
            </tr>
        </table>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Project-6ConnectionString %>" SelectCommand="SELECT * FROM [Campaigns]" DeleteCommand="DELETE FROM [Campaigns] WHERE [Id_campaigns] = @Id_campaigns" InsertCommand="INSERT INTO [Campaigns] ([Name_campaigns], [Details], [Image_campaigns], [Target_campaigns]) VALUES (@Name_campaigns, @Details, @Image_campaigns, @Target_campaigns)" UpdateCommand="UPDATE [Campaigns] SET [Name_campaigns] = @Name_campaigns, [Details] = @Details, [Image_campaigns] = @Image_campaigns, [Target_campaigns] = @Target_campaigns WHERE [Id_campaigns] = @Id_campaigns">
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
        <br />

    
      
        
                
           

    </div>
</asp:Content>
