<%@ Page Title="" Language="C#" MasterPageFile="~/Site4.Master" AutoEventWireup="true" CodeBehind="WebForm17.aspx.cs" Inherits="project_6.WebForm17" %>
<%@ Register Src="~/paypal.ascx" TagPrefix="uc1" TagName="paypal" %>

<%@ Register Src="~/donateClothes.ascx" TagPrefix="uc1" TagName="donateClothes" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



     <script src="Scripts/sweetalert.min.js"></script>

    <link href="Styles/sweetalert.css" rel="stylesheet" />

    <script type="text/javascript">
        function successalert() {
            swal({
                title: 'Congratulations!',
                text: 'Your message has been succesfully sent',
                type: 'success'
            });
        }
    </script>


      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <style>
        @import 'https://fonts.googleapis.com/css?family=Montserrat:400,700|Raleway:300,400';
/* colors */
/* tab setting */
/* breakpoints */
/* selectors relative to radio inputs */
html {
  width: 100%;
  height: 100%;
}

body {
  background: #efefef;
  color: #333;
  font-family: "Raleway";
  height: 100%;
}
body h1 {
  text-align: center;
  color: #428BFF;
  font-weight: 300;
  padding: 40px 0 20px 0;
  margin: 0;
}

.tabs {
  left: 50%;
  transform: translateX(-50%);
  position: relative;
  background: white;
  padding: 50px;
  padding-bottom: 80px;
  width: 100%;
  height: 1200px;
  box-shadow: 0 14px 28px rgba(0, 0, 0, 0.25), 0 10px 10px rgba(0, 0, 0, 0.22);
  border-radius: 5px;
  min-width: 240px;
}
.tabs input[name=tab-control] {
  display: none;
}
.tabs .content section h2,
.tabs ul li label {
  font-family: "Montserrat";
  font-weight: bold;
  font-size: 18px;
  color: #428BFF;
}
.tabs ul {
  list-style-type: none;
  padding-left: 0;
  display: flex;
  flex-direction: row;
  margin-bottom: 10px;
  justify-content: space-between;
  align-items: flex-end;
  flex-wrap: wrap;
}
.tabs ul li {
  box-sizing: border-box;
  flex: 1;
  width: 25%;
  padding: 0 10px;
  text-align: center;
}
.tabs ul li label {
  transition: all 0.3s ease-in-out;
  color: #929daf;
  padding: 5px auto;
  overflow: hidden;
  text-overflow: ellipsis;
  display: block;
  cursor: pointer;
  transition: all 0.2s ease-in-out;
  white-space: nowrap;
  -webkit-touch-callout: none;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}
.tabs ul li label br {
  display: none;
}
.tabs ul li label svg {
  fill: #929daf;
  height: 1.2em;
  vertical-align: bottom;
  margin-right: 0.2em;
  transition: all 0.2s ease-in-out;
}
.tabs ul li label:hover, .tabs ul li label:focus, .tabs ul li label:active {
  outline: 0;
  color: #bec5cf;
}
.tabs ul li label:hover svg, .tabs ul li label:focus svg, .tabs ul li label:active svg {
  fill: #bec5cf;
}
.tabs .slider {
  position: relative;
  width: 25%;
  transition: all 0.33s cubic-bezier(0.38, 0.8, 0.32, 1.07);
}
.tabs .slider .indicator {
  position: relative;
  width: 400px;
  max-width: 100%;
  margin: 0 150px;
  height: 4px;
  background: #428BFF;
  border-radius: 1px;
}
.tabs .content {
  margin-top: 30px;
}
.tabs .content section {
  display: none;
  -webkit-animation-name: content;
          animation-name: content;
  -webkit-animation-direction: normal;
          animation-direction: normal;
  -webkit-animation-duration: 0.3s;
          animation-duration: 0.3s;
  -webkit-animation-timing-function: ease-in-out;
          animation-timing-function: ease-in-out;
  -webkit-animation-iteration-count: 1;
          animation-iteration-count: 1;
  line-height: 1.4;
}
.tabs .content section h2 {
  color: #428BFF;
  display: none;
}
.tabs .content section h2::after {
  content: "";
  position: relative;
  display: block;
  width: 30px;
  height: 3px;
  background: #428BFF;
  margin-top: 5px;
  left: 1px;
}
.tabs input[name=tab-control]:nth-of-type(1):checked ~ ul > li:nth-child(1) > label {
  cursor: default;
  color: #428BFF;
}
.tabs input[name=tab-control]:nth-of-type(1):checked ~ ul > li:nth-child(1) > label svg {
  fill: #428BFF;
}
@media (max-width: 600px) {
  .tabs input[name=tab-control]:nth-of-type(1):checked ~ ul > li:nth-child(1) > label {
    background: rgba(0, 0, 0, 0.08);
  }
}
.tabs input[name=tab-control]:nth-of-type(1):checked ~ .slider {
  transform: translateX(0%);
}
.tabs input[name=tab-control]:nth-of-type(1):checked ~ .content > section:nth-child(1) {
  display: block;
}
.tabs input[name=tab-control]:nth-of-type(2):checked ~ ul > li:nth-child(2) > label {
  cursor: default;
  color: #428BFF;
}
.tabs input[name=tab-control]:nth-of-type(2):checked ~ ul > li:nth-child(2) > label svg {
  fill: #428BFF;
}
@media (max-width: 600px) {
  .tabs input[name=tab-control]:nth-of-type(2):checked ~ ul > li:nth-child(2) > label {
    background: rgba(0, 0, 0, 0.08);
  }
}
@media (max-width: 768px) {
    .tabs .slider .indicator {
  position: relative;
  width: 400px;
  max-width: 100%;
  margin: 0 70px;
  height: 4px;
  background: #428BFF;
  border-radius: 1px;
}
  }

.tabs input[name=tab-control]:nth-of-type(2):checked ~ .slider {
  transform: translateX(200%)
}
.tabs input[name=tab-control]:nth-of-type(2):checked ~ .content > section:nth-child(2) {
  display: block;
}
.tabs input[name=tab-control]:nth-of-type(3):checked ~ ul > li:nth-child(3) > label {
  cursor: default;
  color: #428BFF;
}
.tabs input[name=tab-control]:nth-of-type(3):checked ~ ul > li:nth-child(3) > label svg {
  fill: #428BFF;
}
@media (max-width: 600px) {
  .tabs input[name=tab-control]:nth-of-type(3):checked ~ ul > li:nth-child(3) > label {
    background: rgba(0, 0, 0, 0.08);
  }
}
.tabs input[name=tab-control]:nth-of-type(3):checked ~ .slider {
  transform: translateX(200%);
}
.tabs input[name=tab-control]:nth-of-type(3):checked ~ .content > section:nth-child(3) {
  display: block;
}
.tabs input[name=tab-control]:nth-of-type(4):checked ~ ul > li:nth-child(4) > label {
  cursor: default;
  color: #428BFF;
}
.tabs input[name=tab-control]:nth-of-type(4):checked ~ ul > li:nth-child(4) > label svg {
  fill: #428BFF;
}
@media (max-width: 600px) {
  .tabs input[name=tab-control]:nth-of-type(4):checked ~ ul > li:nth-child(4) > label {
    background: rgba(0, 0, 0, 0.08);
  }
}
.tabs input[name=tab-control]:nth-of-type(4):checked ~ .slider {
  transform: translateX(300%);
}
.tabs input[name=tab-control]:nth-of-type(4):checked ~ .content > section:nth-child(4) {
  display: block;
}
@-webkit-keyframes content {
  from {
    opacity: 0;
    transform: translateY(5%);
  }
  to {
    opacity: 1;
    transform: translateY(0%);
  }
}
@keyframes content {
  from {
    opacity: 0;
    transform: translateY(5%);
  }
  to {
    opacity: 1;
    transform: translateY(0%);
  }
}
@media (max-width: 1000px) {
  .tabs ul li label {
    white-space: initial;
  }
  .tabs ul li label br {
    display: initial;
  }
  .tabs ul li label svg {
    height: 1.5em;
  }
}
@media (max-width: 600px) {
  .tabs ul li label {
    padding: 5px;
    border-radius: 5px;
  }
  .tabs ul li label span {
    display: none;
  }
  .tabs .slider {
    display: none;
  }
  .tabs .content {
    margin-top: 20px;
  }
  .tabs .content section h2 {
    display: block;
  }
}

    @media (max-width: 600px) {

.tabs {

    padding: 30px;
    width: 105%;
        height: 1500px;


}
    }
    </style>


    <h1>Choose the type of donation you want</h1>
<div class="tabs">
  
  <input type="radio" id="tab1" name="tab-control" checked>
  <input type="radio" id="tab2" name="tab-control">
  <input type="radio" id="tab3" name="tab-control">  
  <input type="radio" id="tab4" name="tab-control">
  <ul>
    <li title="Donate Clothes"><label for="tab1" role="button"><svg viewBox="0 0 24 24"><path d="M14,2A8,8 0 0,0 6,10A8,8 0 0,0 14,18A8,8 0 0,0 22,10H20C20,13.32 17.32,16 14,16A6,6 0 0,1 8,10A6,6 0 0,1 14,4C14.43,4 14.86,4.05 15.27,4.14L16.88,2.54C15.96,2.18 15,2 14,2M20.59,3.58L14,10.17L11.62,7.79L10.21,9.21L14,13L22,5M4.93,5.82C3.08,7.34 2,9.61 2,12A8,8 0 0,0 10,20C10.64,20 11.27,19.92 11.88,19.77C10.12,19.38 8.5,18.5 7.17,17.29C5.22,16.25 4,14.21 4,12C4,11.7 4.03,11.41 4.07,11.11C4.03,10.74 4,10.37 4,10C4,8.56 4.32,7.13 4.93,5.82Z"/>
</svg><br><span>Donate Clothes</span></label></li>
    <li title="Donate Money"><label for="tab2" role="button"><svg viewBox="0 0 24 24"><path d="M2,10.96C1.5,10.68 1.35,10.07 1.63,9.59L3.13,7C3.24,6.8 3.41,6.66 3.6,6.58L11.43,2.18C11.59,2.06 11.79,2 12,2C12.21,2 12.41,2.06 12.57,2.18L20.47,6.62C20.66,6.72 20.82,6.88 20.91,7.08L22.36,9.6C22.64,10.08 22.47,10.69 22,10.96L21,11.54V16.5C21,16.88 20.79,17.21 20.47,17.38L12.57,21.82C12.41,21.94 12.21,22 12,22C11.79,22 11.59,21.94 11.43,21.82L3.53,17.38C3.21,17.21 3,16.88 3,16.5V10.96C2.7,11.13 2.32,11.14 2,10.96M12,4.15V4.15L12,10.85V10.85L17.96,7.5L12,4.15M5,15.91L11,19.29V12.58L5,9.21V15.91M19,15.91V12.69L14,15.59C13.67,15.77 13.3,15.76 13,15.6V19.29L19,15.91M13.85,13.36L20.13,9.73L19.55,8.72L13.27,12.35L13.85,13.36Z" />
</svg><br><span>Donate Money</span></label></li>
     </ul>
  
  <div class="slider">
      <div class="indicator">
      </div>
  </div>
  <div class="content">
    <section>
              <h2>Donate Clothes</h2>
        <uc1:donateClothes runat="server" id="donateClothes" />

        </section>

        <section>
          <h2>Donate Money</h2>
           
            <uc1:paypal runat="server" ID="paypal" />
        </section>
  </div>
</div>
</asp:Content>
