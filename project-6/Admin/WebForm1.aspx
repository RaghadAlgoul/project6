﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="project6.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

      <style media="screen">
  @import url(http://fonts.googleapis.com/css?family=Roboto:400,700,300);



.circle-wrap {
  margin: 25px auto;
  width: 150px;
  height: 150px;
  background: #fefcff;
  border-radius: 50%;
  border: 1px solid #cdcbd0;
}

.circle-wrap .circle .mask,
.circle-wrap .circle .fill {
  width: 150px;
  height: 150px;
  position: absolute;
  border-radius: 50%;
}

.circle-wrap .circle .mask {
  clip: rect(0px, 150px, 150px, 75px);
}

.circle-wrap .inside-circle {
  width: 122px;
  height: 122px;
  border-radius: 50%;
  background: #d2eaf1;
  line-height: 120px;
  text-align: center;
  margin-top: 14px;
  margin-left: 14px;
  color: #1e51dc;
  position: absolute;
  z-index: 100;
  font-weight: 700;
  font-size: 2em;
}

/* color animation */

/* 3rd progress bar */
.mask .fill {
  clip: rect(0px, 75px, 150px, 0px);
  background-color: #227ded;
}

.mask.full,
.circle .fill {
  animation: fill ease-in-out 3s;
  transform: rotate(135deg);
}

@keyframes fill{
  0% {
    transform: rotate(0deg);
  }
  100% {
    transform: rotate(135deg);
  }
}
#containerProgress{display:grid;grid-template-columns:auto auto auto}


  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="containerProgress">
   <div class="circle-wrap">
        <div class="circle">
          <div class="mask full">
            <div class="fill"></div>
          </div>
          <div class="mask half">
            <div class="fill"></div>
          </div>
          <div class="inside-circle" id="c1"> 75% </div>
        </div>
      </div>
        <%--////////////////////////////////////--%>
        <div class="circle-wrap">
        <div class="circle">
          <div class="mask full">
            <div class="fill"></div>
          </div>
          <div class="mask half">
            <div class="fill"></div>
          </div>
          <div class="inside-circle"id="c2"> </div>
        </div>
      </div>
         <%--////////////////////////////////////--%>
        <div class="circle-wrap">
        <div class="circle">
          <div class="mask full">
            <div class="fill"></div>
          </div>
          <div class="mask half">
            <div class="fill"></div>
          </div>
          <div class="inside-circle" id="c3"> 40% </div>
        </div>
      </div>
        </div>
</asp:Content>
