<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="Partners.aspx.cs" Inherits="project_6.WebForm16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        
     
      .marginDiv{ margin-left:275px }
        .table{width:60%;border:solid 0px white}
        h2{color:#000443;position:absolute;margin-left:10%;top:110px}
        @media only screen and (min-device-width:481px)and (max-device-width:768px) {
            .marginDiv{ margin-left:-150px }
            .table{width:45%;}
            h2{margin-left:27%;font-size:25px}
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:project-6ConnectionString %>" DeleteCommand="DELETE FROM [Partners] WHERE [Id_partners] = @Id_partners" InsertCommand="INSERT INTO [Partners] ([Name_partners], [Year_partners]) VALUES (@Name_partners, @Year_partners)" SelectCommand="SELECT [Id_partners], [Name_partners], [Year_partners] FROM [Partners]" UpdateCommand="UPDATE [Partners] SET [Name_partners] = @Name_partners, [Year_partners] = @Year_partners WHERE [Id_partners] = @Id_partners">
        <DeleteParameters>
            <asp:Parameter Name="Id_partners" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name_partners" Type="String" />
            <asp:Parameter DbType="Date" Name="Year_partners" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name_partners" Type="String" />
            <asp:Parameter DbType="Date" Name="Year_partners" />
            <asp:Parameter Name="Id_partners" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <h2 class="marginDiv">Partners</h2>
    <br /><br />
     <div class="marginDiv">
                              
         <br />
         <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" CssClass="table  table-striped" onrowdatabound="GridView1_RowDataBound" AutoGenerateColumns="False" DataKeyNames="Id_partners">
             <Columns>
                 <asp:BoundField DataField="Id_partners" HeaderText="Id_partners" InsertVisible="False" ReadOnly="True" SortExpression="Id_partners" />
                 <asp:BoundField DataField="Name_partners" HeaderText="Name_partners" SortExpression="Name_partners" />
                 <asp:BoundField DataField="Year_partners" HeaderText="Year_partners" SortExpression="Year_partners" />
             </Columns>
         </asp:GridView>
     </div>
</asp:Content>
