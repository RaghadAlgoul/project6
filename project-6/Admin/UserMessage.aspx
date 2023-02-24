<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="UserMessage.aspx.cs" Inherits="project6.Admin.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                         <h2 style="display:inline-block;color:#000443">User Message</h2><br /><br />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Project-6ConnectionString %>" DeleteCommand="DELETE FROM [Contact] WHERE [Id_contact] = @Id_contact" InsertCommand="INSERT INTO [Contact] ([Full_name], [Email], [Phone], [Message_contact]) VALUES (@Full_name, @Email, @Phone, @Message_contact)" SelectCommand="SELECT [Full_name], [Email], [Phone], [Message_contact], [Id_contact] FROM [Contact]" UpdateCommand="UPDATE [Contact] SET [Full_name] = @Full_name, [Email] = @Email, [Phone] = @Phone, [Message_contact] = @Message_contact WHERE [Id_contact] = @Id_contact">
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
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_contact" CssClass="table table-bordered"  DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound">
        <Columns>
            <asp:BoundField DataField="Id_contact" HeaderText="Id_contact" InsertVisible="False" ReadOnly="True" SortExpression="Id_contact" />
            <asp:BoundField DataField="Full_name" HeaderText="Full_name" SortExpression="Full_name" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="Message_contact" HeaderText="Message_contact" SortExpression="Message_contact" />
            <asp:CommandField HeaderText="Delete Message" ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
</asp:Content>
