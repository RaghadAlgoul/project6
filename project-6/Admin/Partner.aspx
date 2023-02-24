<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Partner.aspx.cs" Inherits="project6.Admin.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:project-6ConnectionString %>" DeleteCommand="DELETE FROM [Partners] WHERE [Id_partners] = @Id_partners" InsertCommand="INSERT INTO [Partners] ([Name_partners], [National_number], [Year_partners], [Description_partners]) VALUES (@Name_partners, @National_number, @Year_partners, @Description_partners)" SelectCommand="SELECT [Id_partners], [Name_partners], [National_number], [Year_partners], [Description_partners] FROM [Partners] WHERE ([state] = @state)" UpdateCommand="UPDATE [Partners] SET [Name_partners] = @Name_partners, [National_number] = @National_number, [Year_partners] = @Year_partners, [Description_partners] = @Description_partners WHERE [Id_partners] = @Id_partners">
        <DeleteParameters>
            <asp:Parameter Name="Id_partners" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name_partners" Type="String" />
            <asp:Parameter Name="National_number" Type="Decimal" />
            <asp:Parameter DbType="Date" Name="Year_partners" />
            <asp:Parameter Name="Description_partners" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="3" Name="state" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name_partners" Type="String" />
            <asp:Parameter Name="National_number" Type="Decimal" />
            <asp:Parameter DbType="Date" Name="Year_partners" />
            <asp:Parameter Name="Description_partners" Type="String" />
            <asp:Parameter Name="Id_partners" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>
    <br />
    <h2 style="color:#000443;display:inline-block;" >Partners</h2>
    <asp:DropDownList ID="DropDownList1" class="dropdown" runat="server" style="width:200px;height:50px;border-radius:15px;color:#000443;font-weight:bold;float:right" AutoPostBack="True">
        <asp:ListItem>New Request</asp:ListItem>
        <asp:ListItem>Accepted</asp:ListItem>
        
        <asp:ListItem>Rejected</asp:ListItem>
    </asp:DropDownList>
    <br /><br />
        <asp:PlaceHolder ID="PlaceHoler1" runat="server" >
            <asp:GridView ID="GridView1" CssClass="table table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_partners" DataSourceID="SqlDataSource1" onrowdatabound="GridView1_RowDataBound" style="border-color:#000443;color:#000443">
    <Columns >
        <asp:BoundField DataField="Id_partners" HeaderText="Id_partners" InsertVisible="False" ReadOnly="True" SortExpression="Id_partners"  ControlStyle-BackColor="#000443">
<ControlStyle BackColor="#000443"></ControlStyle>
        </asp:BoundField>
        <asp:BoundField DataField="Name_partners" HeaderText="Name_partners" SortExpression="Name_partners" />
        <asp:BoundField DataField="National_number" HeaderText="National_number" SortExpression="National_number" />
        <asp:BoundField DataField="Year_partners" HeaderText="Year_partners" SortExpression="Year_partners" />
        <asp:BoundField DataField="Description_partners" HeaderText="Description_partners" SortExpression="Description_partners" />
        <asp:HyperLinkField DataNavigateUrlFields="Id_partners" DataNavigateUrlFormatString="partnerDetails?id={0}" HeaderText="More Details" Text="click here" />
    </Columns>
</asp:GridView>
      </asp:PlaceHolder>


    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Project-6ConnectionString %>" DeleteCommand="DELETE FROM [Partners] WHERE [Id_partners] = @Id_partners" InsertCommand="INSERT INTO [Partners] ([Description_partners], [Year_partners], [National_number], [Name_partners]) VALUES (@Description_partners, @Year_partners, @National_number, @Name_partners)" SelectCommand="SELECT [Id_partners], [Name_partners], [National_number], [Year_partners], [Description_partners] FROM [Partners] WHERE ([state] = @state)" UpdateCommand="UPDATE [Partners] SET [Description_partners] = @Description_partners, [Year_partners] = @Year_partners, [National_number] = @National_number, [Name_partners] = @Name_partners WHERE [Id_partners] = @Id_partners">
        <DeleteParameters>
            <asp:Parameter Name="Id_partners" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Description_partners" Type="String" />
            <asp:Parameter DbType="Date" Name="Year_partners" />
            <asp:Parameter Name="National_number" Type="Decimal" />
            <asp:Parameter Name="Name_partners" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="state" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Description_partners" Type="String" />
            <asp:Parameter DbType="Date" Name="Year_partners" />
            <asp:Parameter Name="National_number" Type="Decimal" />
            <asp:Parameter Name="Name_partners" Type="String" />
            <asp:Parameter Name="Id_partners" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:PlaceHolder ID="PlaceHolder2" runat="server" Visible="false">
        <asp:GridView ID="GridView2" runat="server" CssClass="table table-bordered" DataSourceID="SqlDataSource2" onrowdatabound="GridView2_RowDataBound" style="border-color:#000443;color:#000443">
    </asp:GridView>
    </asp:PlaceHolder>
    
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Project-6ConnectionString %>" DeleteCommand="DELETE FROM [Partners] WHERE [Id_partners] = @Id_partners" InsertCommand="INSERT INTO [Partners] ([Name_partners], [National_number], [Year_partners], [Description_partners]) VALUES (@Name_partners, @National_number, @Year_partners, @Description_partners)" SelectCommand="SELECT [Id_partners], [Name_partners], [National_number], [Year_partners], [Description_partners] FROM [Partners] WHERE ([state] = @state)" UpdateCommand="UPDATE [Partners] SET [Name_partners] = @Name_partners, [National_number] = @National_number, [Year_partners] = @Year_partners, [Description_partners] = @Description_partners WHERE [Id_partners] = @Id_partners">
        <DeleteParameters>
            <asp:Parameter Name="Id_partners" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name_partners" Type="String" />
            <asp:Parameter Name="National_number" Type="Decimal" />
            <asp:Parameter DbType="Date" Name="Year_partners" />
            <asp:Parameter Name="Description_partners" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="state" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name_partners" Type="String" />
            <asp:Parameter Name="National_number" Type="Decimal" />
            <asp:Parameter DbType="Date" Name="Year_partners" />
            <asp:Parameter Name="Description_partners" Type="String" />
            <asp:Parameter Name="Id_partners" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:PlaceHolder ID="PlaceHolder3" runat="server" Visible="false">
        <asp:GridView ID="GridView3" CssClass="table table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_partners" DataSourceID="SqlDataSource3" onrowdatabound="GridView3_RowDataBound" style="border-color:#000443;color:#000443">
    <Columns>
        <asp:BoundField DataField="Id_partners" HeaderText="Id_partners" InsertVisible="False" ReadOnly="True" SortExpression="Id_partners" />
        <asp:BoundField DataField="Name_partners" HeaderText="Name_partners" SortExpression="Name_partners" />
        <asp:BoundField DataField="National_number" HeaderText="National_number" SortExpression="National_number" />
        <asp:BoundField DataField="Year_partners" HeaderText="Year_partners" SortExpression="Year_partners" />
        <asp:BoundField DataField="Description_partners" HeaderText="Description_partners" SortExpression="Description_partners" />
    </Columns>
    </asp:GridView>
    </asp:PlaceHolder>

</asp:Content>
