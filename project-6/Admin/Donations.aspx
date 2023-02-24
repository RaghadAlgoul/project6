<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Donations.aspx.cs" Inherits="project6.Admin.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br />


    <script src="../Scripts/sweetalert.min.js"></script>




    <h2 style="color:#000443;display:inline-block;" >Donations</h2>
    <asp:DropDownList ID="DropDownList1" class="dropdown" runat="server" style="width:200px;height:50px;border-radius:15px;color:#000443;font-weight:bold;float:right" AutoPostBack="True">
        <asp:ListItem>New Request</asp:ListItem>
        <asp:ListItem>Accepted</asp:ListItem>
        <asp:ListItem>Rejected</asp:ListItem>
    </asp:DropDownList>
    <br /><br />
    <asp:PlaceHolder ID="PlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:project-6ConnectionString %>" DeleteCommand="DELETE FROM [Direct_Donation] WHERE [Id_direct] = @Id_direct" InsertCommand="INSERT INTO [Direct_Donation] ([Full_name], [Email], [City], [Quantity]) VALUES (@Full_name, @Email, @City, @Quantity)" SelectCommand="SELECT [Id_direct], [Full_name], [Email], [City], [Quantity] FROM [Direct_Donation] WHERE ([state] = @state)" UpdateCommand="UPDATE [Direct_Donation] SET [Full_name] = @Full_name, [Email] = @Email, [City] = @City, [Quantity] = @Quantity WHERE [Id_direct] = @Id_direct">
        <DeleteParameters>
            <asp:Parameter Name="Id_direct" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Full_name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="Quantity" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="2" Name="state" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Full_name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="Quantity" Type="Int32" />
            <asp:Parameter Name="Id_direct" Type="Int32" />
        </UpdateParameters>
     </asp:SqlDataSource>
     <asp:GridView ID="GridView1" CssClass="table table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_direct" DataSourceID="SqlDataSource1">
         <Columns>
             <asp:BoundField DataField="Id_direct" HeaderText="ID"  InsertVisible="False" ReadOnly="True" SortExpression="Id_direct" />
             <asp:BoundField DataField="Full_name" HeaderText="Name" SortExpression="Full_name" />
             <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
             <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
             <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
             <asp:HyperLinkField DataNavigateUrlFields="Id_direct" DataNavigateUrlFormatString="donationDetails?id={0}" HeaderText="More Details" Text="Click here" />
         </Columns>
     </asp:GridView>
        </asp:PlaceHolder>
    <asp:PlaceHolder ID="PlaceHolder2" runat="server">
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Project-6ConnectionString %>" SelectCommand="SELECT [Id_direct], [Full_name], [Email], [Phone], [City], [Street] FROM [Direct_Donation] WHERE ([state] = @state)">
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="state" Type="Int32" />
        </SelectParameters>
     </asp:SqlDataSource>
    <asp:GridView ID="GridView2"  CssClass="table table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_direct" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="Id_direct" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="Id_direct" />
            <asp:BoundField DataField="Full_name" HeaderText="Name" SortExpression="Full_name" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="Street" HeaderText="Street" SortExpression="Street" />
        </Columns>
     </asp:GridView></asp:PlaceHolder>
  <asp:PlaceHolder ID="PlaceHolder3" runat="server">

    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Project-6ConnectionString %>" DeleteCommand="DELETE FROM [Direct_Donation] WHERE [Id_direct] = @Id_direct" InsertCommand="INSERT INTO [Direct_Donation] ([Full_name], [Phone], [Details]) VALUES (@Full_name, @Phone, @Details)" SelectCommand="SELECT [Id_direct], [Full_name], [Phone], [Details] FROM [Direct_Donation] WHERE ([state] = @state)" UpdateCommand="UPDATE [Direct_Donation] SET [Full_name] = @Full_name, [Phone] = @Phone, [Details] = @Details WHERE [Id_direct] = @Id_direct">
        <DeleteParameters>
            <asp:Parameter Name="Id_direct" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Full_name" Type="String" />
            <asp:Parameter Name="Phone" Type="Decimal" />
            <asp:Parameter Name="Details" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="state" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Full_name" Type="String" />
            <asp:Parameter Name="Phone" Type="Decimal" />
            <asp:Parameter Name="Details" Type="String" />
            <asp:Parameter Name="Id_direct" Type="Int32" />
        </UpdateParameters>
     </asp:SqlDataSource>
    <asp:GridView ID="GridView3" CssClass="table table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_direct" DataSourceID="SqlDataSource3">
        <Columns>
            <asp:BoundField DataField="Id_direct" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="Id_direct" />
            <asp:BoundField DataField="Full_name" HeaderText="Name" SortExpression="Full_name" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="Details" HeaderText="Details" SortExpression="Details" />
        </Columns>
     </asp:GridView>
          </asp:PlaceHolder>


</asp:Content>
