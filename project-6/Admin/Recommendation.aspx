<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Recommendation.aspx.cs" Inherits="project6.Admin.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h2 style="display:inline-block;color:#000443">Partner Recommendattion</h2><br /><br />

   <%-- <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:project-6ConnectionString %>" SelectCommand="SELECT [Id_recommendation], [name], [Phone], [city], [members], [workers], [Address_recommendation], [fixed_income], [Details] FROM [Recommendation]">
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_recommendation" CssClass="table table-bordered"  DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound" >
        <Columns>
            <asp:BoundField DataField="Id_recommendation" HeaderText="Id_recommendation" InsertVisible="False" ReadOnly="True" SortExpression="Id_recommendation" />
            <asp:BoundField DataField="Address_recommendation" HeaderText="Address_recommendation" SortExpression="Address_recommendation" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="Details" HeaderText="Details" SortExpression="Details" />
            <asp:BoundField DataField="members" HeaderText="members" SortExpression="members" />
            <asp:BoundField DataField="workers" HeaderText="workers" SortExpression="workers" />
            <asp:BoundField DataField="fixed_income" HeaderText="fixed_income" SortExpression="fixed_income" />
            <asp:CommandField ShowDeleteButton="True" HeaderText="Delete" />
        </Columns>
    </asp:GridView>--%>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:project-6ConnectionString %>" DeleteCommand="DELETE FROM [Recommendation] WHERE [Id_recommendation] = @Id_recommendation" InsertCommand="INSERT INTO [Recommendation] ([name], [city], [Address_recommendation], [Phone], [members], [workers], [fixed_income], [Details]) VALUES (@name, @city, @Address_recommendation, @Phone, @members, @workers, @fixed_income, @Details)" SelectCommand="SELECT [Id_recommendation], [name], [city], [Address_recommendation], [Phone], [members], [workers], [fixed_income], [Details] FROM [Recommendation]" UpdateCommand="UPDATE [Recommendation] SET [name] = @name, [city] = @city, [Address_recommendation] = @Address_recommendation, [Phone] = @Phone, [members] = @members, [workers] = @workers, [fixed_income] = @fixed_income, [Details] = @Details WHERE [Id_recommendation] = @Id_recommendation">
        <DeleteParameters>
            <asp:Parameter Name="Id_recommendation" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="city" Type="Int32" />
            <asp:Parameter Name="Address_recommendation" Type="String" />
            <asp:Parameter Name="Phone" Type="Decimal" />
            <asp:Parameter Name="members" Type="Int32" />
            <asp:Parameter Name="workers" Type="Int32" />
            <asp:Parameter Name="fixed_income" Type="Int32" />
            <asp:Parameter Name="Details" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="city" Type="Int32" />
            <asp:Parameter Name="Address_recommendation" Type="String" />
            <asp:Parameter Name="Phone" Type="Decimal" />
            <asp:Parameter Name="members" Type="Int32" />
            <asp:Parameter Name="workers" Type="Int32" />
            <asp:Parameter Name="fixed_income" Type="Int32" />
            <asp:Parameter Name="Details" Type="String" />
            <asp:Parameter Name="Id_recommendation" Type="Int32" />
        </UpdateParameters>
     </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered" DataKeyNames="Id_recommendation" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Id_recommendation" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="Id_recommendation" />
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
            <asp:BoundField DataField="Address_recommendation" HeaderText="Address" SortExpression="Address_recommendation" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="members" HeaderText="Members" SortExpression="members" />
            <asp:BoundField DataField="workers" HeaderText="Workers" SortExpression="workers" />
            <asp:BoundField DataField="fixed_income" HeaderText="Fixed Income" SortExpression="fixed_income" />
            <asp:BoundField DataField="Details" HeaderText="Details" SortExpression="Details" />
            <asp:CommandField ShowDeleteButton="True" HeaderText="Delete" />
        </Columns>
     </asp:GridView>
</asp:Content>
