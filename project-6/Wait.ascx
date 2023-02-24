<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Wait.ascx.cs" Inherits="project_6.WebUserControl9" %>


<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_recommendation" DataSourceID="SqlDataSource1" Width="800px" class="table table-bordered table-condensed table-responsive table-hover" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDataBound="GridView1_RowDataBound">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="Id_recommendation" HeaderText="Id_recommendation" InsertVisible="False" ReadOnly="True" SortExpression="Id_recommendation" />
        <asp:BoundField DataField="Address_recommendation" HeaderText="Address_recommendation" SortExpression="Address_recommendation" />
        <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
        <asp:BoundField DataField="Details" HeaderText="Details" SortExpression="Details" />
        <asp:BoundField DataField="members" HeaderText="members" SortExpression="members" />
        <asp:BoundField DataField="workers" HeaderText="workers" SortExpression="workers" />
        <asp:BoundField DataField="fixed_income" HeaderText="fixed_income" SortExpression="fixed_income" />
        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
        <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
        <asp:BoundField DataField="done_rec" HeaderText="done_rec" SortExpression="done_rec" />
    </Columns>
    <EditRowStyle BackColor="#2461BF" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:project-6ConnectionString %>" DeleteCommand="DELETE FROM [Recommendation] WHERE [Id_recommendation] = @Id_recommendation" InsertCommand="INSERT INTO [Recommendation] ([Address_recommendation], [Phone], [Details], [members], [workers], [fixed_income], [name], [city], [done_rec]) VALUES (@Address_recommendation, @Phone, @Details, @members, @workers, @fixed_income, @name, @city, @done_rec)" SelectCommand="SELECT * FROM [Recommendation] WHERE ([done_rec] = @done_rec)" UpdateCommand="UPDATE [Recommendation] SET [Address_recommendation] = @Address_recommendation, [Phone] = @Phone, [Details] = @Details, [members] = @members, [workers] = @workers, [fixed_income] = @fixed_income, [name] = @name, [city] = @city, [done_rec] = @done_rec WHERE [Id_recommendation] = @Id_recommendation">
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
    <SelectParameters>
        <asp:Parameter Name="done_rec" Type="Int32" DefaultValue="2" />
    </SelectParameters>
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