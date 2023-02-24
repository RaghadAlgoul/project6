<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="campaign.aspx.cs" Inherits="project_6.WebForm1" %>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     
    
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="animate.css">
    <script src="wow.min.js"></script>
    <script>
        new WOW().init();
    </script>

    <style>
        /* slider start */
.cardd{
    box-shadow: 6px 6px 15px  #aaaaaa;
;
}
 .img img {
    background-image: url(slid.jpg); 
    background-repeat: no-repeat; 
    background-size: cover;  
    
}
/* slider end */

/* about compaing start  */


/* about compaing End  */



.wow2{
    background-color:#e2e9eb;
    height:275px;
    margin-bottom: 25px;
    padding:5px;
    font-family: 'Poppins', sans-serif;
    
}
.img-fluid{
    width:100%;
}

#text-height {
    height : 100px ;
    overflow:hidden;
}
.About-campaigns{
   background-color:#e2e9eb;
   padding:30px 10px;
   font-size:large;
   font-family: 'Poppins', sans-serif;
   border-radius:10px;

   
}
.rzp-button1{margin-left: 0;
                      font-size: 20px ;
                      line-height: 25px;
                      padding: 5px 10px;
                      margin-top: 0px;
                      border-radius: 5px;
                      margin-bottom: 10px;
                      background-color:#FFCA73;
                      color:#FFCA73;
                      }
.rzp-button1:hover{
     background-color:#FFCA73;
                      color: #FFCA73;
}

hr.hr{
    width:20% ;height:2px ; background-color:brown
}
    </style>




     <!-- slider start -->
    <div class="wow fadeInUp " class="slider pb-5" data-wow-delay="0.5s" >
        <div class="img">
            <img class="img-fluid" src="slid.jpg" alt="">
        </div>
    </div>
    <!-- slider end -->
    
    <!-- about compaing start  -->

    <div runat="server" class="text text-center pt-4 pb-4">
         <h3>About Our campaigns</h3>
                <hr class="hr" />

    <div id="our_camp" runat="server"  class="About-campaigns pt-3 wow fadeInUp" >
            <div class="text text-center pt-4 pb-4">
               
                <p class="ms-5 me-5 fs-5 mt-4">For many years, crises continue to weigh heavily on the shoulders of the displaced in Jordan, and those displaced with all their weakness are forced to face these crises and be patient with them, forcing them to stand firm and struggle to survive.</p>
                <p class="ms-5 me-5 fs-5">The displaced people in the camps, who number about a million and a half, are affected by many factors that exacerbate their suffering and increase the scale of the tragedy they live in, until every tent, mud room, or other fragile place of refuge has become a long story about the extent of the daily suffering of a family that the war brought to this situation.<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:project-6ConnectionString5 %>" SelectCommand="SELECT * FROM [Campaigns]" ></asp:SqlDataSource>
                </p>
        </div>
    </div>
        </div>
    <!-- about compaing end  -->

   


    <!-- card start -->

    <div class="current-campaigns text-center mt-5 ">
        <div class="container">
            <div class="mainText">
                <h3>Our current campaigns</h3>
                  <hr class="hr" />
            </div>

            <div class="row pb-5">
              
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" >
                <ItemTemplate>

                    
               <div class="col-ms-12 col-md-6 col-lg-4 mt-3 ">
                <div class="cardd">
                    <asp:Image CssClass="img-fluid" ID="Image1" ImageUrl='<%# "Admin/"+ Eval("Image_campaigns")%>' runat="server" />
                    <div  class="wow2 fadeInUp " data-wow-offset="300" class="card text-center">
                    <h3 class="mt-3"> <%#Eval("Name_campaigns")%> </h3>
                    <p id="text-height" class="ms-4 me-4 "> <%#Eval("Details")%> </p>
                    <p class="text-success">Target <%#Eval("Target_campaigns")%> $</p>
                    <div class="btn d-flex justify-content-center">
                      
                    <span class="rzp-button1" >
                         <a  style="text-decoration:none; color:black;" href="<%# String.Format("donationPage.aspx?id={0}", Eval("Id_campaigns")) %>" >Donate</a>
                    </span>   
                        
                       </div>
                    </div>
                
               </div>
            
                    </div>

                </ItemTemplate>
            </asp:Repeater>
                   
                </div>
           

           

        </div>
    </div>
        <!-- card end -->

           
     

</asp:Content>
