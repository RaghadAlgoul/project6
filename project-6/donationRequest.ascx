<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="donationRequest.ascx.cs" Inherits="project_6.WebUserControl6" %>


<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_direct" DataSourceID="SqlDataSource1" Width="800px" class="table table-bordered table-condensed table-responsive table-hover" CellPadding="4" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="Id_direct" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="Id_direct" >
        </asp:BoundField>
        <asp:BoundField DataField="Full_name" HeaderText="Name" SortExpression="Full_name" >
        </asp:BoundField>
        <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" >
        </asp:BoundField>
        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" >
        </asp:BoundField>
        <asp:BoundField DataField="Street" HeaderText="Street" SortExpression="Street" >
        </asp:BoundField>
        <asp:BoundField DataField="Donation_date" HeaderText="Donation Date" SortExpression="Donation_date" >
        </asp:BoundField>
        <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" >
        </asp:BoundField>
        <asp:BoundField DataField="Details" HeaderText="Details" SortExpression="Details" />
        <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="taken" HeaderText="Taken" SortExpression="taken" />
        <asp:BoundField DataField="Id_campaigns" HeaderText="Id Campaigns" SortExpression="Id_campaigns" />



        <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton ID="LinkAccept" runat="server" OnClick="LinkAccept_Click" OnClientClick="return confirm('Are You Sure To Accept This Task?')">Accept</asp:LinkButton>
            </ItemTemplate>
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:TemplateField>
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


<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:project-6ConnectionString %>" DeleteCommand="DELETE FROM [Direct_Donation] WHERE [Id_direct] = @Id_direct" InsertCommand="INSERT INTO [Direct_Donation] ([Full_name], [Phone], [City], [Street], [Donation_date], [Quantity], [Details], [state], [Email], [taken], [Id_campaigns]) VALUES (@Full_name, @Phone, @City, @Street, @Donation_date, @Quantity, @Details, @state, @Email, @taken, @Id_campaigns)" SelectCommand="SELECT * FROM [Direct_Donation] WHERE (([state] = @state) AND ([taken] = @taken))" UpdateCommand="UPDATE [Direct_Donation] SET [Full_name] = @Full_name, [Phone] = @Phone, [City] = @City, [Street] = @Street, [Donation_date] = @Donation_date, [Quantity] = @Quantity, [Details] = @Details, [state] = @state, [Email] = @Email, [taken] = @taken, [Id_campaigns] = @Id_campaigns WHERE [Id_direct] = @Id_direct">
    <DeleteParameters>
        <asp:Parameter Name="Id_direct" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Full_name" Type="String" />
        <asp:Parameter Name="Phone" Type="Decimal" />
        <asp:Parameter Name="City" Type="String" />
        <asp:Parameter Name="Street" Type="String" />
        <asp:Parameter DbType="Date" Name="Donation_date" />
        <asp:Parameter Name="Quantity" Type="Int32" />
        <asp:Parameter Name="Details" Type="String" />
        <asp:Parameter Name="state" Type="Int32" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="taken" Type="Int32" />
        <asp:Parameter Name="Id_campaigns" Type="Int32" />
    </InsertParameters>
    <SelectParameters>
        <asp:Parameter DefaultValue="1" Name="state" Type="Int32" />
        <asp:Parameter DefaultValue="0" Name="taken" Type="Int32" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="Full_name" Type="String" />
        <asp:Parameter Name="Phone" Type="Decimal" />
        <asp:Parameter Name="City" Type="String" />
        <asp:Parameter Name="Street" Type="String" />
        <asp:Parameter DbType="Date" Name="Donation_date" />
        <asp:Parameter Name="Quantity" Type="Int32" />
        <asp:Parameter Name="Details" Type="String" />
        <asp:Parameter Name="state" Type="Int32" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="taken" Type="Int32" />
        <asp:Parameter Name="Id_campaigns" Type="Int32" />
        <asp:Parameter Name="Id_direct" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>