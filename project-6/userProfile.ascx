<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="userProfile.ascx.cs" Inherits="project_6.WebUserControl5" %>


<style>
            
     .profile_edit{
             display: flex;
    align-items: flex-start;
     }
     
     body{
    margin-top:20px;
    color: #1a202c;
    text-align: left;
    background-color: #e2e8f0;    
}
.main-body {
    padding: 15px;
}
.card {
    box-shadow: 0 1px 3px 0 rgba(0,0,0,.1), 0 1px 2px 0 rgba(0,0,0,.06);
}

.card {
    position: relative;
    display: flex;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 0 solid rgba(0,0,0,.125);
    border-radius: .25rem;
}

.card-body {
    flex: 1 1 auto;
    min-height: 1px;
    padding: 1rem;
}

.gutters-sm {
    margin-right: -8px;
    margin-left: -8px;
}

.gutters-sm>.col, .gutters-sm>[class*=col-] {
    padding-right: 8px;
    padding-left: 8px;
}
.mb-3, .my-3 {
    margin-bottom: 1rem!important;
}

.bg-gray-300 {
    background-color: #e2e8f0;
}
.h-100 {
    height: 100%!important;
}
.shadow-none {
    box-shadow: none!important;
}

.cert {
  border: 15px solid #0072c6;
  border-right: 15px solid #0894fb;
  border-left: 15px solid #0894fb;
  width: 700px;
  font-family: arial;
  color: #383737;
}

.crt_title {
  margin-top: 30px;
  font-family: "Satisfy", cursive;
  font-size: 40px;
  letter-spacing: 1px;
  color: #0060a9;
}
.crt_logo img {
  width: 130px;
  height: auto;
  margin: auto;
  padding: 30px;
}
.colorGreen {
  color: #27ae60;
}
.crt_user {
  display: inline-block;
  width: 80%;
  padding: 5px 25px;
  margin-bottom: 0px;
  padding-bottom: 0px;
  font-family: "Satisfy", cursive;
  font-size: 40px;
  border-bottom: 1px dashed #cecece;
}

.afterName {
  font-weight: 100;
  color: #383737;
}
.colorGrey {
  color: grey;
}
.certSign {
  width: 200px;
}

@media (max-width: 700px) {
  .cert {
    width: 100%;
  }
}

        </style>


<%--Html --%>

<div class="profile_edit">

 


          
<asp:Repeater ID="Repeater1" runat="server">
    <ItemTemplate>


            <div class="col-md-6">
              <div class="card mb-3">
                <div class="card-body">
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Full Name</h6>
                    </div>


                    <div class="col-sm-9 text-secondary">
                      <%#Eval("Full_name")%>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Email</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <%#Eval("Email")%>
                    </div>
                  </div>
                  <hr>
                        
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Phone</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <%#Eval("Phone")%>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">city</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                       
                        <%#Eval("City")%>




                    </div>
                  </div>
                  <hr>
                     <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Academic Degree</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <%#Eval("Academic_degree")%>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Description</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <%#Eval("Details")%>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-12">
                        <asp:Button Text="Edit" runat="server" class="btn btn-info "  ID="Edit" OnClick="Edit" />
                    </div>
                  </div>
                </div>
              </div>

            </div>                         
                
   </ItemTemplate>                               
</asp:Repeater>






              <asp:Panel runat="server" ID="EditPanel" CssClass="col-md-6">
                  
                  <div class="card mb-3">
                <div class="card-body">
                  <div class="row">
                    <div class="col-sm-3">
                        <h6 class="mb-0">Full Name</h6>
                    </div>
                      
                      <div class="col-xs-10 col-sm-9 text-secondary">
                          <asp:TextBox runat="server" Class="form-control" placeholder="Full Name" required="required"    ID="txt_Edit_Full_NAme" Width="1609px" />                                   
                    </div>
                  </div>
                    
                    <hr>

                       <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Phone</h6>
                    </div>
                      <div class="col-xs-10 col-sm-9 text-secondary">
                          <asp:TextBox runat="server" Class="form-control" placeholder="Phone" required="required"   ID="txt_Edit_Phone" Width="1609px" />                                   
                    </div>
                  </div>

                  <hr>

                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Academic Degree</h6>
                    </div>
                      <div class="col-xs-10 col-sm-9 text-secondary">
                          <asp:TextBox runat="server" Class="form-control" placeholder="Academic Degree" required="required"   ID="txt_Edit_Degree" Width="1609px" />                                 
                    </div>
                  </div>
                  <hr>

               
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">city</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                                            
                        <asp:DropDownList Class="form-control" runat="server" ID="UserDropDown" Width="185px" required="required" >

                             <asp:ListItem Text="Amman" value="Amman" />

                            <asp:ListItem Text="Zarqa" value="Zarqa" />

                            <asp:ListItem Text="Irbid" value="Irbid" />
                   
                            <asp:ListItem Text="Aqaba" value="Aqaba" />

                            <asp:ListItem Text="As-Salt" value="As-Salt" />
                   
                            <asp:ListItem Text="Madaba" value="Madaba" />

                            <asp:ListItem Text="Al-Mafraq" value="Al-Mafraq" />
                   
                            <asp:ListItem Text="Jerash" value="Jerash" />

                            <asp:ListItem Text="Ma'an" value="Ma'an" />
                   
                            <asp:ListItem Text="At-Tafila" value="At-Tafila" />

                            <asp:ListItem Text="Al-Karak" value="Al-Karak" />
                        </asp:DropDownList>



                    </div>
                  </div>
                  <hr>

                        <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Description</h6>
                    </div>
                      <div class="col-xs-10 col-sm-9 text-secondary">
      
                <asp:TextBox runat="server" Class="form-control" placeholder="Description" required="required"   ID="txt_Desc2" Width="278px" Rows="2" TextMode="MultiLine" MaxLength="200" />
       
        
                     
                    </div>
                  </div>
               
                  <hr>
                  <div class="row">
                    <div class="col-sm-12">
                        <asp:Button Text="Submit" runat="server" class="btn btn-info "  ID="Submit" OnClick="submit" />
                    </div>
                  </div>
                </div>
              </div>

                                
              </asp:Panel>
        </div>











