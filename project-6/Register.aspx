<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="project_6.WebForm4" %>


<%@ Register src="Account/OpenAuthProviders.ascx" tagname="OpenAuthProviders" tagprefix="uc" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>

        #socialLoginList  button {

            width:150px;    
            background-color:#587bc2;
            color:white;
            text-align:center;

        }

        #socialLoginList h4{
            color:black!important;
            text-align:center;
        }

        hr{
            display:none;

        }

        

          body {
              
              background-image: url('img/clothes-backgrpund.jpg');
              background-size:cover;
              background-position: center center;
          }

          .oneForm{
              background-color:white;
              border-radius:15px;
              padding:25px;
              opacity:3 ;
              
               box-shadow: rgb(255,255, 0) 0px 5px 15px;
          }

          .radio-inline {
              margin-top:15px;
          }
          
       
   
        </style> 
    <link href="Styles/sweetalert.css" rel="stylesheet" />

    <script src="Scripts/sweetalert.min.js"></script>

   

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

      

    <div id="hi" >
        
        </div >
   
    <h2 style="color:white;font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif"><%: Title %></h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>
   

        
  
        <h4 style="color:#ffffff;font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;text-align:center;margin-bottom:40px;font-size:50px;" >Create a new account </h4>


            
       <div class="oneForm">
                    

                    
            <div  class="row"  >
                        
                        
                <div class="col-md-7" >
                            
                    
                    <asp:Panel runat="server" ID="Panel3">



        
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-4 control-label text-white">Email</asp:Label>
            <div class="col-md-8">
                <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="The email field is required." />
            </div>

        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-4 control-label">Password</asp:Label>
            <div class="col-md-8">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="The password field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-4 control-label">Confirm password</asp:Label>
            <div class="col-md-8">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
            </div>
        </div>

                        <p class="text-center" style="color:white"></p>

        <div class="form-group mt-lg-5">
            <asp:Label runat="server" ID="Label1" CssClass="col-md-4 mt-lg-5 control-label" AssociatedControlID="RadioButtonList1" Text="" />
            <div class="col-md-8 mt-lg-5">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Vertical">
                    <asp:ListItem Value="0" Class="radio-inline mt-5">Volunteer</asp:ListItem>
                    <asp:ListItem Value="1" Class="radio-inline mt-5">Partners</asp:ListItem>
                </asp:RadioButtonList>
                <div class="form-group">
                    <div class="col-md-offset-4 col-md-8 ">
                        <asp:Button runat="server" Style="margin-left: 65px" OnClick="CreateUser_Click" Text="Next" CssClass="btn btn-primary " />

                    </div>
                </div>
            </div>
        </div>
        </div>
                
                      

           
       


                    </asp:Panel>
            

           
    
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="RadioButtonList1"  ErrorMessage="Please Fill"></asp:RequiredFieldValidator>
            
              

        

     
       
  <asp:Panel runat="server" ID="reg">
                    <div  class="col-md-5">
            <img src="\img\reg.png" style="width:70% ; height:auto" class="d-flex justify-content-center" alt="Alternate Text" />
        </div>


     
                </asp:Panel>
    </div>
     <%--<div class="col-md">
            <section id="socialLoginForm">
                <uc:OpenAuthProviders runat="server" ID="OpenAuthLogin" />
               
            </section>
        </div>--%>

     
    

           

<%--            
        </div>
       
    </div>
--%>

        

            <asp:Panel runat="server" ID="Panel1">

               <%-- <asp:Label Text="Full Name" runat="server" />
                <asp:TextBox runat="server" ID="txtName" />--%>

               <%-- <br />
                <asp:Label Text="Phone" runat="server" />
                <asp:TextBox runat="server" ID="txtPhone" TextMode="Phone" />

                                <br />--%>
                <div class="row">
                    <div class="col-md-7" >
                               
                <div class="form-group">
    
                    <label for="text" class="control-label col-xs-2">Full Name</label> 
    
                    <div class="col-xs-10">
      
                        <asp:TextBox runat="server" Class="form-control" placeholder="Full Name"   required="required"  ID="txt_Name" Width="1609px" />
       
                    <%--    <input id="text" name="text" placeholder="Phone Number" type="text" required="required" class="form-control"> --%>
        
                     
                    </div>
    
                    </div>

<%--                ________________________--%>

                <br />
                                
                <br />
                                
                <br />

                
                <div class="form-group">
    
                    <label for="text" class="control-label col-xs-2">Phone</label> 
    
                    <div class="col-xs-10">
      
                        <asp:TextBox runat="server" Class="form-control" placeholder="Phone"   required="required"  ID="txtPhone" Width="1609px" />
       
                    <%--    <input id="text" name="text" placeholder="Phone Number" type="text" required="required" class="form-control"> --%>
        
                     
                    </div>
    
                    </div>

               
                <br />
                <br />

  
        <%--                ________________________--%>

        
<%--                <asp:Label Text="City" runat="server" />

                <asp:DropDownList runat="server" ID="DropDownList1">
                    <asp:ListItem Text="Amman" value="1" />
                    <asp:ListItem Text="Irbid" value="2" />
                </asp:DropDownList>--%>


                
                
                <div class="form-group">
    
                
                    <label class="control-label col-xs-2"  for="DropDpwnList1">City</label> 
   
                
                    <div class="col-xs-3">
      
       
                    
                        <asp:DropDownList  Class="form-control" runat="server" ID="DropDownList1">
                    
                            <asp:ListItem Text="Amman" value="Amman" />

                            <asp:ListItem Text="Zarqa" value="Zarqa" />

                            <asp:ListItem Text="Irbid" value="Irbid" />
                   
                            <asp:ListItem Text=" Aqaba" value="Aqaba" />

                            <asp:ListItem Text=" As-Salt" value=" As-Salt" />
                   
                            <asp:ListItem Text="Madaba" value="Madaba" />

                            <asp:ListItem Text="Al-Mafraq" value="Al-Mafraq" />
                   
                            <asp:ListItem Text="Jerash" value="Jerash" />

                            <asp:ListItem Text="Ma'an" value="Ma'an" />
                   
                            <asp:ListItem Text="At-Tafila" value="At-Tafila" />

                            <asp:ListItem Text=" Al-Karak" value="Al-Karak" />
                   
                        </asp:DropDownList>

                    
    
                
                    </div>
  
                
                
                </div>

       

                <br />
                 <br />
                        

                 <div class="form-group">
    
                    <label for="text" class="control-label col-xs-2">Street</label> 
    
                    <div class="col-xs-10">
      
                        <asp:TextBox runat="server" Class="form-control" placeholder="Street"   required="required"  ID="txt_street" Width="1609px" />
       
                    <%--    <input id="text" name="text" placeholder="Phone Number" type="text" required="required" class="form-control"> --%>
        
                     
                    </div>
    
                    </div>

               
                <br />
                <br />

                        

                 <div class="form-group">
    
                    <label for="text" class="control-label col-xs-2">Academic Degree</label> 
    
                    <div class="col-xs-10">
      
                        <asp:TextBox runat="server" Class="form-control" placeholder="Academic Degree"   ID="txt_Degree" Width="1609px" />
       
                    <%--    <input id="text" name="text" placeholder="Phone Number" type="text" required="required" class="form-control"> --%>
        
                     
                    </div>
    
                    </div>

               
                <br />
                <br />
        <div class="form-group">
    
            <label  class="control-label col-xs-2">Description</label> 
    
            <div class="col-xs-10">
     
                                        
                <asp:TextBox runat="server" Class="form-control" placeholder="Description"   ID="txtDetalis" Width="278px" Rows="2" TextMode="MultiLine" MaxLength="200" />

<%--                <textarea id="textarea" name="textarea" cols="40" rows="10" required="required" class="form-control"></textarea>--%>
   
                </div>
            </div> 
                        
                  
                <br />
                <br />
                <br />

               
</div>
                
         <div class="form-group row">
   
             <div class="col-xs-offset-2 col-xs-10" style="left: 32px; top: 0px; width: 81%">


      
                <asp:Button  Text="Register"  runat="server" ID="btn_vol"   CssClass="btn btn-primary" OnClick="btn_vol_Click" style="margin-left: 0"   />
    
             </div>
  
         </div>

                <div>

                </div>
                        </div>
                

<%--                               <br />

                <asp:Label Text="Detalis" runat="server" />

                <asp:TextBox runat="server" id="txtDetalis" />


                <asp:Button Text="Save" runat="server" ID="btn_vol" OnClick="btn_vol_Click" style="height: 26px"  />
--%>


             
            </asp:Panel>

           

     
    
        <%--____________________________________--%>



        <asp:Panel runat="server" ID="Panel2">

             <div class="row">
                 <div class="col-md-6">
            <div class="form-group">
    
                <label for="" class="control-label col-xs-2"> Full Name</label> 
    
                <div class="col-xs-10">
     
                                       
                        <asp:TextBox runat="server" ID="txtName2" placeholder="Full Name" required="required" class="form-control"  />
                    
       
                </div>
  
         </div>
            
            <br />
            <%--<br />
            
            <br />
                   --%>  

             <%--<div class="form-group">
    
                 <label for="text" class="control-label col-xs-2">Phone</label> 
    
                 <div class="col-xs-10">
      
                    
                       <asp:TextBox runat="server" ID="txtNumber" placeholder="Phone Number" TextMode="Phone"  required="required" class="form-control"/>

       
   
                     </div>
  
             </div>--%>


            

            <br />
            <br />
              <div class="form-group">
    
                <label for="" class="control-label col-xs-2"> National Number </label> 
    
                <div class="col-xs-10">
     
                                       
                        <asp:TextBox runat="server" ID="txt_NationalNumber" placeholder="National Number" required="required" class="form-control"  />

       
       
                       
    
                </div>
  
            </div>

            
            <br />
            <br />

            
               <div class="form-group">
    
            <label  class="control-label col-xs-2">Year Founded</label> 
    
            <div class="col-xs-10">
                     <asp:TextBox runat="server" ID="txtYear"  TextMode="Date" Class="form-control"   Height="34px" Width="278px"/>

                </div>
            </div> 
                   
            
            <br />
            <br />

                  
            

             <div class="form-group">
    
            <label  class="control-label col-xs-2">Description</label> 
    
            <div class="col-xs-10">
     
                                        
                <asp:TextBox runat="server" Class="form-control" placeholder="Description"   ID="txtDescrption2" Width="278px" Rows="2" TextMode="MultiLine" MaxLength="250" />

<%--                <textarea id="textarea" name="textarea" cols="40" rows="10" required="required" class="form-control"></textarea>--%>
   
                </div>
            </div> 

            <br />
            <br />

            
            
                         
            <asp:Button Text="Register" runat="server" ID="btn_Par" OnClick="btn_Par_Click" CssClass="btn btn-primary" />
                     
                     </div>
                 
           
                    <div  class="col-md-6">
            <img src="\img\83 [Converted].png" style="width:100% ; height:auto" class="d-flex justify-content-center" alt="Alternate Text" />
        </div>

        </div>
           
               
        </asp:Panel>
                                </div>
    
  
    
    
    </div>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
