<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="partnerDetails.aspx.cs" Inherits="project6.Admin.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <h2 style="color:#000443;display:inline-block;" >Partner Details</h2>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="200px" Width="70%" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Id_partners" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
        <EditRowStyle BackColor="#2461BF" />
        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="Id_partners" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="Id_partners" />
            <asp:BoundField DataField="Name_partners" HeaderText="Name" SortExpression="Name_partners" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="National_number" HeaderText="National Number" SortExpression="National_number" />
            <asp:BoundField DataField="Year_partners" HeaderText="Year Founded" SortExpression="Year_partners" />
            <asp:BoundField DataField="Description_partners" HeaderText="Description" SortExpression="Description_partners" />
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:DetailsView>
     <br />
        <div class="row" >
            
                 <asp:Button ID="Button2" runat="server" Text="Reject" style="background-color:#FF1E00;border-radius:15px;color:white;font-weight:bold;width:90px;height:40px;border:solid 0px white;" OnClick="Button2_Click"  />
              <div>   <asp:Button ID="Button1" runat="server" Text="Accept"  style="background-color:#4AA96C;border-radius:15px;color:white;font-weight:bold;width:90px;height:40px;margin-left:5px;border:solid 0px white; " OnClick="Button1_Click" /></div>
           
        </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Project-6ConnectionString %>" SelectCommand="SELECT [Id_partners], [Name_partners], [National_number], [Year_partners], [Description_partners], [Email] FROM [Partners] WHERE ([Id_partners] = @Id_partners)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="0" Name="Id_partners" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br /><br />
     <asp:PlaceHolder ID="PlaceHoler1" runat="server" Visible="false" >
         <div style="border:solid 3px #000443;width:50%;height:fit-content">
             <br />
             <div style="color:#000443;font-weight:bold;font-size:20px;"> &nbsp;&nbsp;Send Email</div><br />
        <div style="color:#000443;font-weight:bold"> &nbsp;&nbsp;From : hopeorganization23@gmail.com</div><br />
        <div id="email" runat="server"  style="color:#000443;font-weight:bold"> &nbsp;&nbsp;To : </div><br />
 &nbsp;&nbsp<asp:TextBox ID="TextBox1"  placeholder="Subject" style="Width:30%;color:#000443" runat="server"></asp:TextBox><br /><br />
         &nbsp;&nbsp<textarea id="TextArea1" style="Width:40%;color:#000443"  rows="2" placeholder="Email Body"></textarea><br />
        &nbsp;&nbsp <asp:Button ID="Button3" runat="server" Text="Send" OnClick="Button3_Click" style="background-color: #000443;cursor: pointer;border-radius: 2px; border: none;color: #f8b739;padding: 10px;text-align: center;text-decoration: none;" /><br />
             </div>
    </asp:PlaceHolder>
</asp:Content>
