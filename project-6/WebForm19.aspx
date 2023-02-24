<%@ Page Title="" Language="C#" MasterPageFile="~/Site4.Master" AutoEventWireup="true" CodeBehind="WebForm19.aspx.cs" Inherits="project_6.WebForm19" %>
<%@ import Namespace="System.Data.SqlClient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet">
	  <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

	  <style>
				
/*****************globals*************/
body {
  font-family: 'open sans';
  overflow-x: hidden; }

img {
  max-width: 100%; }

.preview {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  -webkit-flex-direction: column;
      -ms-flex-direction: column;
          flex-direction: column; }
  @media screen and (max-width: 996px) {
    .preview {
      margin-bottom: 20px; } }

.preview-pic {
  -webkit-box-flex: 1;
  -webkit-flex-grow: 1;
      -ms-flex-positive: 1;
          flex-grow: 1; }

.preview-thumbnail.nav-tabs {
  border: none;
  margin-top: 15px; }
  .preview-thumbnail.nav-tabs li {
    width: 18%;
    margin-right: 2.5%; }
    .preview-thumbnail.nav-tabs li img {
      max-width: 100%;
      display: block; }
    .preview-thumbnail.nav-tabs li a {
      padding: 0;
      margin: 0; }
    .preview-thumbnail.nav-tabs li:last-of-type {
      margin-right: 0; }

.tab-content {
  overflow: hidden; }
  .tab-content img {
    width: 100%;
    -webkit-animation-name: opacity;
            animation-name: opacity;
    -webkit-animation-duration: .3s;
            animation-duration: .3s; }
  .allText{
      font-size: larger;
      padding:10px 0;
  }
.card {
  margin-top: 50px;
  background: #eee;
  padding: 3em;
  line-height: 1.5em; }

.baar{
        padding: 50px 0;
}


       

@media screen and (min-width: 997px) {
  .wrapper {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex; } }

.details {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  -webkit-flex-direction: column;
      -ms-flex-direction: column;
          flex-direction: column; }

.colors {
  -webkit-box-flex: 1;
  -webkit-flex-grow: 1;
      -ms-flex-positive: 1;
          flex-grow: 1; }

.product-title, .price, .sizes, .colors {
  text-transform: UPPERCASE;
  font-weight: bold; }

.checked, .price span {
  color: #ff9f1a; }

.product-title, .rating, .product-description, .price, .vote, .sizes {
  margin-bottom: 15px; }

.product-title {
  margin-top: 0; }

.size {
  margin-right: 10px; }
  .size:first-of-type {
    margin-left: 40px; }

.color {
  display: inline-block;
  vertical-align: middle;
  margin-right: 10px;
  height: 2em;
  width: 2em;
  border-radius: 2px; }
  .color:first-of-type {
    margin-left: 20px; }

.add-to-cart, .like {
  background: #ff9f1a;
  padding: 1.2em 1.5em;
  border: none;
  text-transform: UPPERCASE;
  font-weight: bold;
  color: #fff;
  -webkit-transition: background .3s ease;
          transition: background .3s ease; }
  .add-to-cart:hover, .like:hover {
    background: #b36800;
    color: #fff; }

.not-available {
  text-align: center;
  line-height: 2em; }
  .not-available:before {
    font-family: fontawesome;
    content: "\f00d";
    color: #fff; }

.orange {
  background: #ff9f1a; }

.green {
  background: #85ad00; }

.blue {
  background: #0076ad; }

.tooltip-inner {
  padding: 1.3em; }

@-webkit-keyframes opacity {
  0% {
    opacity: 0;
    -webkit-transform: scale(3);
            transform: scale(3); }
  100% {
    opacity: 1;
    -webkit-transform: scale(1);
            transform: scale(1); } }

@keyframes opacity {
  0% {
    opacity: 0;
    -webkit-transform: scale(3);
            transform: scale(3); }
  100% {
    opacity: 1;
    -webkit-transform: scale(1);
            transform: scale(1); } }

/*# sourceMappingURL=style.css.map */

.progress-outer{
    background: #dadada;
    border-radius: 50px;
    padding: 25px;
    margin: 10px 0;
    box-shadow: 0 0  10px rgba(209, 219, 231,0.7);
}
.progress{
    height: 27px;
    margin: 0;
    overflow: visible;
    border-radius: 50px;
    background: #eaedf3;
    box-shadow: inset 0 10px  10px rgba(244, 245, 250,0.9);
}
.progress .progress-bar{
    border-radius: 50px;
}
.progress .progress-value{
    position: relative;
    left: -45px;
    top: 4px;
    font-size: 14px;
    font-weight: bold;
    color: #fff;
    letter-spacing: 2px;
}
.progress-bar.active{
    animation: reverse progress-bar-stripes 0.40s linear infinite, animate-positive 2s;
}
@-webkit-keyframes animate-positive{
    0% { width: 0%; }
}
@keyframes animate-positive {
    0% { width: 0%; }
}

 @media only screen and (min-device-width: 0px) and (max-device-width:480px) {


	          .progress-outer {
	              border-radius: 25px;
	              padding: 15px;
	              margin: 0px 0;
	          }
	      }
	  </style>


</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     
     <%

        string id = Request.QueryString["id"];

            string con = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection conn = new SqlConnection(con);
            SqlCommand com = new SqlCommand($"select * from campaigns where Id_campaigns='{id}'", conn);
        conn.Open();
            SqlDataReader rdr = com.ExecuteReader();
            rdr.Read();
           
%>




    <div class="container">
		<div class="card">
			<div class="container-fliud">
				<div class="wrapper row">
					<div class="preview col-md-6"> <img src="<%=rdr[3]%>" />
					</div>
					<div class="details col-md-6">
						<h3 class="product-title"><%=rdr[1]%></h3>
						<div class="rating">
                        </div>
						<p class="product-description allText"><%=rdr[2]%></p>
						<p class="vote allText">The Target of this campaign is <strong> <%=rdr[4].ToString()%>$</strong></p>									
						<div class="action">
                            <asp:Button ID="Button1" runat="server" Text="Donate here" CssClass="add-to-cart btn btn-default" />
                            <asp:Label ID="Label1" runat="server" Text="" Width="25%" Height="20px" CssClass="sd"></asp:Label>
						</div>
					</div>
				</div>
			</div>






              <div class="baar">
    
    <div class="progress-outer">
                <div class="progress">
                    <div class="progress-bar progress-bar-warning progress-bar-striped active" style="width:40%; box-shadow:-1px 10px 10px rgba(240, 173, 78,0.7);"></div>
                    <div class="progress-value">40%</div>
                </div>
            </div>
        </div>
    
   	</div>
	</div> 











    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:project-6ConnectionString6 %>" SelectCommand="SELECT * FROM [Campaigns]"></asp:SqlDataSource>
   



</asp:Content>
