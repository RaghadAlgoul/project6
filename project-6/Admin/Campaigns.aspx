<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Campaigns.aspx.cs" Inherits="project6.Admin.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <br />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Project-6ConnectionString %>" DeleteCommand="DELETE FROM [Campaigns] WHERE [Id_campaigns] = @Id_campaigns" InsertCommand="INSERT INTO [Campaigns] ([Image_campaigns], [Name_campaigns], [Details], [Target_campaigns]) VALUES (@Image_campaigns, @Name_campaigns, @Details, @Target_campaigns)" SelectCommand="SELECT [Image_campaigns], [Name_campaigns], [Details], [Target_campaigns], [Id_campaigns] FROM [Campaigns]" UpdateCommand="UPDATE [Campaigns] SET [Image_campaigns] = @Image_campaigns, [Name_campaigns] = @Name_campaigns, [Details] = @Details, [Target_campaigns] = @Target_campaigns WHERE [Id_campaigns] = @Id_campaigns">
        <DeleteParameters>
            <asp:Parameter Name="Id_campaigns" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Image_campaigns" Type="String" />
            <asp:Parameter Name="Name_campaigns" Type="String" />
            <asp:Parameter Name="Details" Type="String" />
            <asp:Parameter Name="Target_campaigns" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Image_campaigns" Type="String" />
            <asp:Parameter Name="Name_campaigns" Type="String" />
            <asp:Parameter Name="Details" Type="String" />
            <asp:Parameter Name="Target_campaigns" Type="Int32" />
            <asp:Parameter Name="Id_campaigns" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>
                     <h2 style="display:inline-block;color:#000443">Campaigns</h2>
    <asp:Button ID="Button1" runat="server" Text=" + Creat new Campaigns" style="background-color:#000443;width:190px;height:40px;color:white;font-weight:bold;border-radius:15px;float:right" OnClick="BtnAddCampaigns_Click"  />

          <br /><br />

        
<asp:GridView ID="GridView1" CssClass="table table-bordered" runat="server" AllowPaging="True" AutoGenerateColumns="False"  pagesize="4" DataKeyNames="Id_campaigns" DataSourceID="SqlDataSource1" OnRowUpdating="GridView1_RowUpdating1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
    <Columns>
        
        <asp:BoundField DataField="Id_campaigns" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="Id_campaigns" />
        
        <asp:TemplateField HeaderText="Image" SortExpression="Image_campaigns">
            <EditItemTemplate>
<asp:Label ID="Label1" style="display:none" runat="server" Text='<%# Eval("Image_campaigns") %>'></asp:Label>

   <asp:FileUpload ID="FileUpload1" runat="server" />

            </EditItemTemplate>
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Width="90px" height="70px" ImageUrl='<%# Bind("Image_campaigns") %>' />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="Name_campaigns" HeaderText="Name" SortExpression="Name_campaigns" />
        <asp:BoundField DataField="Details" HeaderText="Details" SortExpression="Details" />
        <asp:BoundField DataField="Target_campaigns" HeaderText="Target" SortExpression="Target_campaigns" />
        
        <asp:TemplateField ShowHeader="False" HeaderText="Edit">
            <EditItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
        
    </Columns>
            </asp:GridView>
  
    </asp:Content>
