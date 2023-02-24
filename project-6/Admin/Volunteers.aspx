<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Volunteers.aspx.cs" Inherits="project6.Admin.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <h2 style="color:#000443;display:inline-block;" >Volunteers</h2>
    <asp:DropDownList ID="DropDownList1" class="dropdown" runat="server" style="width:200px;height:50px;border-radius:15px;color:#000443;font-weight:bold;float:right" AutoPostBack="True">
        <asp:ListItem>New Request</asp:ListItem>
        <asp:ListItem>Accepted</asp:ListItem>
        
        <asp:ListItem>Rejected</asp:ListItem>
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Project-6ConnectionString %>" DeleteCommand="DELETE FROM [Volunteer] WHERE [Id_volunteer] = @Id_volunteer" InsertCommand="INSERT INTO [Volunteer] ([Full_name], [City], [Academic_degree]) VALUES (@Full_name, @City, @Academic_degree)" SelectCommand="SELECT [Id_volunteer], [Full_name], [City], [Academic_degree] FROM [Volunteer] WHERE ([State_volunteer] = @State_volunteer)" UpdateCommand="UPDATE [Volunteer] SET [Full_name] = @Full_name, [City] = @City, [Academic_degree] = @Academic_degree WHERE [Id_volunteer] = @Id_volunteer">
        <DeleteParameters>
            <asp:Parameter Name="Id_volunteer" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Full_name" Type="String" />
            <asp:Parameter Name="City" Type="Int32" />
            <asp:Parameter Name="Academic_degree" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="3" Name="State_volunteer" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Full_name" Type="String" />
            <asp:Parameter Name="City" Type="Int32" />
            <asp:Parameter Name="Academic_degree" Type="String" />
            <asp:Parameter Name="Id_volunteer" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Project-6ConnectionString %>" SelectCommand="SELECT [Id_volunteer], [Full_name], [City], [Academic_degree] FROM [Volunteer] WHERE ([State_volunteer] = @State_volunteer)">
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="State_volunteer" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:PlaceHolder ID="PlaceHolder1" runat="server" Visible="false">
        <br />
    <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered" AutoGenerateColumns="False" DataKeyNames="Id_volunteer" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Id_volunteer" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="Id_volunteer" />
            <asp:BoundField DataField="Full_name" HeaderText="Name" SortExpression="Full_name" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="Academic_degree" HeaderText="Academic Degree" SortExpression="Academic_degree" />
            <asp:HyperLinkField DataNavigateUrlFields="Id_volunteer" DataNavigateUrlFormatString="volunteerDetails.aspx?id={0}" HeaderText="More Details" Text="Click here" />
        </Columns>
    </asp:GridView>

        </asp:PlaceHolder>
    <asp:PlaceHolder ID="PlaceHolder2" runat="server" Visible="false">
        <asp:GridView ID="GridView2" runat="server" CssClass="table table-bordered" AutoGenerateColumns="False" DataKeyNames="Id_volunteer" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="Id_volunteer" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="Id_volunteer" />
                <asp:BoundField DataField="Full_name" HeaderText="Name" SortExpression="Full_name" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="Academic_degree" HeaderText="Academic Degree" SortExpression="Academic_degree" />
            </Columns>
    </asp:GridView>
        </asp:PlaceHolder>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Project-6ConnectionString %>" SelectCommand="SELECT [Id_volunteer], [Full_name], [City], [Academic_degree] FROM [Volunteer] WHERE ([State_volunteer] = @State_volunteer)">
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="State_volunteer" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:PlaceHolder ID="PlaceHolder3" runat="server" Visible="false">
        <asp:GridView ID="GridView3" runat="server" CssClass="table table-bordered" AutoGenerateColumns="False" DataKeyNames="Id_volunteer" DataSourceID="SqlDataSource3">
            <Columns>
                <asp:BoundField DataField="Id_volunteer" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="Id_volunteer" />
                <asp:BoundField DataField="Full_name" HeaderText="Name" SortExpression="Full_name" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="Academic_degree" HeaderText="Academic Degree" SortExpression="Academic_degree" />
            </Columns>
    </asp:GridView>
        </asp:PlaceHolder>
</asp:Content>
