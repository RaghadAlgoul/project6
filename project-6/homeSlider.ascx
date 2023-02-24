<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="homeSlider.ascx.cs" Inherits="project_6.WebUserControl2" %>

 

<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->


<style>
    @import url(https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css);

    /*CAROUSEL*/
    :root {
        --xxdarkblue: #21273D;
        --xxorange: #FFCA73;
        --xxlightblue: #F1F6F8;}

    .discrebtion_head {display: block; font-size: large;}

    .rzp-button1 {
        background-color: var(--xxorange);
        color: var(--xxdarkblue);
        font-family: 'Poppins', sans-serif;
        cursor: pointer;
        font-size: 15px !important;
        text-transform: uppercase;
        line-height: 30px;
        text-align: center;
        padding: 7px 12px;
        border: 2px solid transparent;
        background: var(--xxorange);
        border-radius: 30px !important;
        margin: 10px;

    }

        .rzp-button1:hover {
            background-color: var(--xxdarkblue);
            color: var(--xxlightblue);
            box-shadow: inset 5px 5px 10px black, inset -5px -5px 10px darkblue;
        }

    .main-text {
        position: absolute;
        top: 100px;
        width: 100%;
        color: #FFF;
    }

    .carousel-btns {margin-top: 2em;}

    .carousel-btns .btn {width: 150px;}

    .carousel-inner .imgOverlay {
        position: absolute;
        top: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(6, 28, 38, 0.5);
    }

    .carousel-inner img {width: 100%;}

    .carousel-control {width: auto;}

        .carousel-control .icon-prev,
        .carousel-control .icon-next,
        .carousel-control .fa-chevron-left,
        .carousel-control .fa-chevron-right {
            position: absolute;
            top: 47%;
            right: 0;
            z-index: 5;
            display: inline-block;
            background-color: #000;
            width: 38px;
            height: 38px;
            line-height: 40px;
            font-size: 14px;
        }

        .carousel-control .icon-prev,
        .carousel-control .fa-chevron-left {left: 0;}

    .carousel-indicators li {
        width: 12px;
        height: 12px;
        margin: 0 1px;
        border: 2px solid #fff;
        opacity: .8;
    }

    .carousel-indicators .active {background-color: #28ace2;border-color: #28ace2;}

    .carousel-control .icon-prev, .carousel-control .fa-chevron-left,
    .carousel-control .icon-right, .carousel-control .fa-chevron-right {border-radius: 50px;}

    .carousel-control .icon-prev, .carousel-control .fa-chevron-left {left: 30px;}

    .carousel-control .icon-right, .carousel-control .fa-chevron-right {right: 30px;}


    @media only screen and (min-device-width: 0px) and (max-device-width:480px) {

        .rzp-button1 {
            font-size: 7px !important;
            line-height: 25px;
            padding: 0px 10px;
            border-radius: 20px !important;
        }

        .discrebtion_head {font-size: small;}

        .carousel-control .icon-right, .carousel-control .fa-chevron-right {
            right: 10px;     
            font-size: 10px;
            width: 20px;
            height: 40px;}
       .carousel-control .icon-prev, .carousel-control .fa-chevron-left {
           left: 10px;
           font-size: 10px;
            width: 20px;
            height: 40px;}

       .main-text {top: 0px; width: 100%; color: #FFF; font-size:small;}

        h3, .h3 {font-size: small;}


    }

    @media only screen and (min-device-width: 481px) and (max-device-width:768px) {

               .main-text {top: 20px; width: 100%; color: #FFF; font-size:small;}
               
               }
</style>



<div id="themeSlider" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#themeSlider" data-slide-to="0" class="active"></li>
        <li data-target="#themeSlider" data-slide-to="1"></li>
        <li data-target="#themeSlider" data-slide-to="2"></li>
    </ol>

    <div class="carousel-inner">
        <div class="item active">
            <div class="imgOverlay"></div>
            <img src="/images/a.png" alt="First slide" class="labtob">
            <div class="carousel-caption">
                <asp:Button ID="Button1" runat="server" Text="Donate here" CssClass="rzp-button1" OnClick="Button1_Click" />
                <p class="discrebtion_head">If you want to donate money or clothes, click above.</p>
            </div>
        </div>
        <div class="item">
            <div class="imgOverlay"></div>
            <img src="/images/b.png" alt="Second slide" class="labtob">
            <div class="carousel-caption">
                <asp:Button ID="Button2" runat="server" Text="Volunteer here" CssClass="rzp-button1"  OnClick="Button2_Click"/>
                <p class="discrebtion_head">You can become our volunteer, you just need to join.</p>
            </div>
        </div>
        <div class="item">
            <div class="imgOverlay"></div>
            <img src="/images/c.png" alt="Third slide" class="labtob">
            <div class="carousel-caption">
                <asp:Button ID="Button3" runat="server" Text="Join now" CssClass="rzp-button1"  OnClick="Button3_Click" />
                <p class="discrebtion_head">If you are the owner of a volunteer organization, you can join us here.</p>
            </div>
        </div>
    </div>
    <a class="left carousel-control" href="#themeSlider" data-slide="prev">
        <span class="fa fa-chevron-left"></span>
    </a>
    <a class="right carousel-control" href="#themeSlider" data-slide="next">
        <span class="fa fa-chevron-right"></span>
    </a>


<%--    hidden-xs hidden-sm--%>
    <div class="main-text ">
        <div class="col-md-12 text-center back_text">
            <h1 class="hidden-xs">Hope Organization</h1>
            <h3 class="hidden-xs">“Giving to others will not take away from what you have but will in fact add to your life”</h3>
            <div class="clearfix"></div>
            <div class="carousel-btns">
            </div>
        </div>
    </div>
</div>
