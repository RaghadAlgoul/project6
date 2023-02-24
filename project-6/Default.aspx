<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="project_6._Default" %>

    <%@ Register Src="~/homeSlider.ascx" TagPrefix="uc1" TagName="homeSlider" %>

        <asp:Content ID="ContentPlaceHolder1" ContentPlaceHolderID="MainContent" runat="server">


            <script
                type="text/javascript">window.$crisp = []; window.CRISP_WEBSITE_ID = "9331f54f-9335-4ef0-92e6-a7ddd6e6f0dd"; (function () { d = document; s = d.createElement("script"); s.src = "https://client.crisp.chat/l.js"; s.async = 1; d.getElementsByTagName("head")[0].appendChild(s); })();</script>

            <style>
                :root {
                    --xxdarkblue: #21273D;
                    --xxorange: #FFCA73;
                    --xxlightblue: #F1F6F8;

                }

                .big-heading {
                    font-size: 35px;
                }


                /** TITLE  SECTION **/
                #title {
                    background-image: url("images/head1.png");
                    background-size: cover;
                    color: #fff;
                    margin-top: 5rem;
                }

                .container-fluid {
                    height: 500px;
                    display: flex;
                    flex-direction: row-reverse;
                    align-items: center;
                    padding-right: 5%;
                }

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
                    margin-top: 25px;
                    border: 2px solid transparent;
                    background: var(--xxorange);
                    border-radius: 30px !important;
                    margin-left: 307px;
                }

                .rzp-button1:hover {
                    background-color: var(--xxdarkblue);
                    color: var(--xxlightblue);
                    box-shadow: inset 5px 5px 10px black, inset -5px -5px 10px darkblue;
                }

                .rowss {
                    width: 55%;
                }



                /** FEATURES **/
                .features_2 {
                    padding: 7% 6%;
                    z-index: 1;
                    position: relative;
                    background-color: var(--xxlightblue);
                }

                .featuresxx {
                    background-color: white;

                }

                .secf {
                    display: flex;
                    justify-content: center;
                    margin-top: -20px;
                    padding: 50px 0;

                }

                .secf h2 {
                    display: block;
                    align-items: center;
                    text-align: center;
                    font-size: 40px;
                    font-weight: bolder;
                    letter-spacing: 0.5px;
                    border-bottom: solid var(--xxorange) 4px;
                    padding: 10px 0;
                    color: var(--xxdarkblue);
                }


                .secf h3 {
                    display: block;
                    align-items: center;
                    text-align: center;
                    font-size: 35px;
                    font-weight: bolder;
                    letter-spacing: 0.5px;
                    padding: 10px 0;
                    color: var(--xxlightblue);
                }


                .sec-feature {
                    border-left: 1px solid green;
                    height: 40px;
                    margin-top: 50px;
                    position: absolute;
                    left: 50%;
                    right: 50%;
                    top: 0;
                }

                .sec-feature label {
                    border: 2px solid green;
                    margin-top: 40px;
                    margin-left: -50px;
                    font-size: 18px;
                    font-weight: 500;
                    letter-spacing: 0.5px;
                    position: relative;
                    padding: 10px 15px;
                    display: inline-block;
                }

                .cards {
                    display: flex;
                    justify-content: space-around;
                }

                .image_2 {
                    width: 100%;
                }


                .workBox {
                    border: solid 0.5px gray;
                    width: 90%;
                    padding: 20px 40px;
                    display: flex;
                    justify-content: space-between;
                    align-items: center;
                }

                .workBox:hover {
                    background-color: #FFCA73;
                }

                .workBox_big {
                    display: flex;
                    flex-direction: column;
                    align-items: center;

                }

                .small_img {
                    width: 100%;
                }

                .small_img2 {
                    width: 60%;

                }



                .flip-box {
                    background-color: transparent;
                    width: 300px;
                    height: 200px;
                    perspective: 1000px;
                }

                .flip-box-inner {
                    position: relative;
                    width: 100%;
                    height: 100%;
                    text-align: center;
                    transition: transform 0.8s;
                    transform-style: preserve-3d;
                }

                .flip-box:hover .flip-box-inner {
                    transform: rotateY(180deg);
                }

                .flip-box-front,
                .flip-box-back {
                    position: absolute;
                    width: 100%;
                    height: 100%;
                    -webkit-backface-visibility: visible;
                    backface-visibility: visible;
                }

                .flip-box-front {
                    color: black;
                }

                .flip-box-back {
                    color: white;
                    transform: rotateY(180deg);
                }

                .section_3 {
                    background-color: #e2e9eb;
                }

                .section_4 {
                    background-color: #21273D;
                    color: white;
                }


                .type3 {
                    display: flex;
                    flex-direction: column;
                    align-items: center;
                }

                .pics_4 {
                    padding: 20px;
                    width: 80%;
                }

                .row_divs {
                    display: flex;
                    flex-direction: column;
                    align-items: center;

                }

                .disc_pc {
                    font-size: 16px !important;
                    padding: 20px 0;

                }

                .thumbnail_1 {
                    display: flex;

                }

                .sponser_box {
                    width: 100%;
                }

                li {
                    list-style-type: none;
                }


                .carousel-inner {
                    width: 90%;
                    background: rgba(255, 255, 255, 0.2);
                    border-radius: 16px;
                    box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
                    backdrop-filter: blur(5px);
                    border: 1px solid rgba(255, 255, 255, 0.3);
                }


                .carousel {
                    display: flex;
                    flex-direction: column;
                    align-items: center;
                }

                .Sponsor_11 {
                    background-color: #F1F6F8;
                }


                p {
                    font-size: large;
                }


                @import url('https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&display=swap');





                details {
                    background-color: #F1F6F8;
                    color: black;
                    font-size: 1.5rem;
                    padding: 5px 160px;

                }

                summary {
                    border-bottom: 3px solid #aaa;
                    padding: 10px 10px;
                    list-style: none;
                    display: flex;
                    justify-content: space-between;
                    transition: height 1s ease;
                }

                summary::-webkit-details-marker {
                    display: none;
                }

                summary:after {
                    content: "\002B";
                }

                details[open] summary {
                    margin-bottom: .5em;
                }

                details[open] summary:after {
                    content: "\00D7";
                }

                details[open] div {
                    padding: 10px 10px;
                    border-bottom: 1px solid #aaa;


                }

                .summary_me {
                    font-weight: 700;
                }

                /*--------------------------------------------------------------------------------------------------------------------------
*/

                @media only screen and (min-device-width: 481px) and (max-device-width:768px) {


                    .rowss {
                        width: 50%;
                    }

                    .big-heading {
                        font-size: 25px;
                    }


                    .rzp-button1 {
                        margin-left: 70px;
                    }

                    p {
                        font-size: 15px;
                    }

                    .secf h2 {
                        font-size: 40px;
                    }

                    .workBox {
                        width: 80%;
                    }

                    .small_img {
                        width: 100%;
                        float: right;
                    }

                    .col-md-2 {
                        width: 20%;
                    }

                    .secf h3 {
                        font-size: 28px;
                    }

                    .features_2 {
                        padding: 0 6%;
                    }

                    .pics_4 {
                        display: grid;
                        grid-template-columns: repeat(2, 1fr);
                        width: 40%;
                        justify-content: center
                    }

                    details {
                        font-size: 1.5rem;
                        padding: 1px 85px;
                    }

                    .flip-box {
                        width: 220px;
                        height: 120px;
                    }


                }

                /*--------------------------------------------------------------------------------------------------------------------------
*/
                @media only screen and (min-device-width: 0px) and (max-device-width:480px) {

                    .col-md-2 {
                        width: 40%;
                    }

                    .workBox {
                        width: 95%;
                        padding: 10px 17px;
                        flex-wrap: wrap;
                        justify-content: end;
                    }

                    p {
                        font-size: 15px;
                    }

                    .secf h3 {
                        font-size: 21px;
                    }

                    .secf {
                        padding: 0;
                    }

                    .pics_4 {
                        padding: 0;
                    }

                    .flip-box {
                        background-color: transparent;
                        width: 180px;
                        height: 100px;
                        perspective: 1000px;
                    }

                    .disc_pc {
                        font-size: 15px !important;
                        padding: 15px 0;
                    }

                    .cards {
                        flex-wrap: wrap;
                    }

                    .secf {
                        padding-top: 5px;
                        margin: 15px;
                    }


                    .container-fluid {
                        height: auto;
                    }

                    .big-heading {
                        font-size: 15px;
                    }

                    .rzp-button1 {
                        margin-left: 0;
                        font-size: 7px !important;
                        line-height: 25px;
                        padding: 0px 10px;
                        margin-top: 0px;
                        border-radius: 20px !important;
                        margin-bottom: 10px;
                    }

                    details {
                        padding: 5px 0;
                    }

                    .secf h2 {
                        font-size: 20px;
                    }

                    p {
                        font-size: 12px;
                    }

                    .row {
                        margin-right: 0px;
                        margin-left: 0px;
                    }

                    .thumbnail_1s {
                        margin-right: 40px;
                    }


                }
            </style>


            <div>
                <!--** Title **-->
                <uc1:homeSlider runat="server" ID="homeSlider" />

                <!--** Features **-->



                <section class="features features_2">
                    <div class="secf">
                        <h2>Hope Organization</h2>
                    </div>
                    <div class="cards">
                        <div>
                            <div>
                                <p><b>Hope Organization is a team of charitable youth to make the oppressed and needy
                                        happy, driven by love and faith.
                                        <br>We will bring your used clothes and use them to support the poor.</b></p>
                            </div>
                            <p>Hope directs its marketing efforts into boosting the livelihoods of people,
                                those who are incapable of keeping up with the demands of life.
                                Seeing that external looks matter, we aim at providing used/old clothes in the best
                                possible shape for those in need.</p>
                            <p><a style="text-decoration: none;" href="aboutUs.aspx"><b>Get to know us more..</b></a>
                            </p>
                        </div>

                        <div>
                            <img src="images/2.png" class="image_2">
                        </div>
                    </div>
                </section>


                <div class="section_3" id="work">
                    <div class="secf">
                        <h2>Steps in our process of donating clothing.</h2>
                    </div>
                    <div class="workBox_big">

                        <div class="workBox">
                            <p><b>1. Ask for service</b>
                                <br>Submit a donation request through the website or application
                            </p>
                            <div class="col-md-2"><img src="images/queries.png" class="small_img" /></div>
                        </div>

                        <div class="workBox">
                            <p><b>2. Confirmation</b>
                                <br>We will contact you to confirm the date and address of receipt
                            </p>
                            <div class="col-md-2"><img src="images/confirmation.png" class="small_img" /></div>
                        </div>


                        <div class="workBox">
                            <p><b>3. Receipt of donations</b>
                                <br>Receive your donations from your home for free within 24 hours
                            </p>
                            <div class="col-md-2"><img src="images/bill.png" class="small_img" /></div>
                        </div>

                        <div class="workBox">
                            <p><b>4. Recycling</b>
                                <br>Sorting and recycling donations by our specialized team
                            </p>
                            <div class="col-md-2"><img src="images/recycle.png" class="small_img" /></div>
                        </div>

                        <div class="workBox">
                            <p><b>5. Distribution</b>
                                <br>Distributing donations to the needy through the <b>Hope</b> volunteer team <br />and
                                under the supervision of approved charities
                            </p>
                            <div class="col-md-2"><img src="images/ruck.png" class="small_img" /></div>
                        </div>
                        <br />
                        <br />
                    </div>
                </div>




                <div class="section_4">
                    <div class="row row_divs">

                        <div class="secf">
                            <h3>What you can donate to Hope organization ?</h3>
                        </div>



                        <div class="pics_4">


                            <div class="col-md-3 type3">



                                <div class="flip-box">
                                    <div class="flip-box-inner">
                                        <div class="flip-box-front">
                                            <img src="images/clothes.png" class="small_img2" />
                                        </div>
                                    </div>
                                </div>
                                <p class="disc_pc">All kinds of clothes</p>
                            </div>


                            <div class="col-md-3 type3">



                                <div class="flip-box">
                                    <div class="flip-box-inner">
                                        <div class="flip-box-front">
                                            <img src="images/shoes.png" class="small_img2" />
                                        </div>
                                    </div>
                                </div>



                                <p class="disc_pc">All kinds of shoes</p>
                            </div>

                            <div class="col-md-3 type3">
                                <div class="flip-box">
                                    <div class="flip-box-inner">
                                        <div class="flip-box-front">
                                            <img src="images/bags.png" class="small_img2" />
                                        </div>
                                    </div>
                                </div>


                                <p class="disc_pc">All kinds of bags</p>
                            </div>

                            <div class="col-md-3 type3">
                                <div class="flip-box">
                                    <div class="flip-box-inner">
                                        <div class="flip-box-front">
                                            <img src="images/blankets.png" class="small_img2" />
                                        </div>
                                    </div>
                                </div>


                                <p class="disc_pc">Mattresses and blankets</p>
                            </div>
                        </div>


                    </div>
                </div>


                <%-- ------------ Sponsor ------------%>

                    <%-- ------------ Sponsor ------------%>



                        <div class="Sponsor_11">
                            <div class="row">

                                <div class="secf">
                                    <h2>Sponsors</h2>
                                </div>

                                <div>







                                    <div class="col-xs-12">



                                        <div class="carousel slide" id="myCarousel">
                                            <div class="carousel-inner">
                                                <div class="item active">



                                                    <ul class="thumbnail_1s">
                                                        <li class="col-sm-3">
                                                            <div class="fff">
                                                                <div class="thumbnail_1">
                                                                    <a href="https://nafa.org.sa/"><img
                                                                            src="images/sponser6.png"
                                                                            class="sponser_box" /></a>
                                                                </div>
                                                                <div class="caption">



                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="col-sm-3">
                                                            <div class="fff">
                                                                <div class="thumbnail_1">
                                                                    <a href="https://asnasstore.com/"><img
                                                                            src="images/sponser2.png"
                                                                            class="sponser_box" /></a>
                                                                </div>
                                                                <div class="caption">



                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="col-sm-3">
                                                            <div class="fff">
                                                                <div class="thumbnail_1">
                                                                    <a href="https://molhamteam.com/"><img
                                                                            src="images/sponser3.png"
                                                                            class="sponser_box" /></a>
                                                                </div>
                                                                <div class="caption">



                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="col-sm-3">
                                                            <div class="fff">
                                                                <div class="thumbnail_1">
                                                                    <a href="https://www.tua.jo/ar"><img
                                                                            src="images/sponser4.png"
                                                                            class="sponser_box" /></a>
                                                                </div>
                                                                <div class="caption">



                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div><!-- /Slide1 -->
                                                <div class="item">
                                                    <ul class="thumbnail_1s">
                                                        <li class="col-sm-3">
                                                            <div class="fff">
                                                                <div class="thumbnail_1">
                                                                    <a href="https://www.unicef.org/ar"><img
                                                                            src="images/sponser5.png"
                                                                            class="sponser_box" /></a>
                                                                </div>
                                                                <div class="caption">



                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="col-sm-3">
                                                            <div class="fff">
                                                                <div class="thumbnail_1">
                                                                    <a href="https://asnasstore.com/"><img
                                                                            src="images/sponser1.png"
                                                                            class="sponser_box" /></a>
                                                                </div>
                                                                <div class="caption">



                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="col-sm-3">
                                                            <div class="fff">
                                                                <div class="thumbnail_1">
                                                                    <a href="https://www.bloomingwear.com/"><img
                                                                            src="images/sponser7.png"
                                                                            class="sponser_box" /></a>
                                                                </div>
                                                                <div class="caption">



                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="col-sm-3">
                                                            <div class="fff">
                                                                <div class="thumbnail_1">
                                                                    <a href="https://www.nrc.no/"><img
                                                                            src="images/sponser8.png"
                                                                            class="sponser_box" /></a>
                                                                </div>
                                                                <div class="caption">



                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div><!-- /Slide2 -->
                                                <div class="item">
                                                    <ul class="thumbnail_1s">
                                                        <li class="col-sm-3">
                                                            <div class="fff">
                                                                <div class="thumbnail_1">
                                                                    <a href="https://www.joud.org.sa/"><img
                                                                            src="images/sponser9.png"
                                                                            class="sponser_box" /></a>
                                                                </div>
                                                                <div class="caption">



                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="col-sm-3">
                                                            <div class="fff">
                                                                <div class="thumbnail_1">
                                                                    <a href="https://khairuk.org/en/"><img
                                                                            src="images/sponser10.png"
                                                                            class="sponser_box" /></a>
                                                                </div>
                                                                <div class="caption">



                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="col-sm-3">
                                                            <div class="fff">
                                                                <div class="thumbnail_1">
                                                                    <a href="https://ershadabha.org.sa/"><img
                                                                            src="images/sponser11.png"
                                                                            class="sponser_box" /></a>
                                                                </div>
                                                                <div class="caption">



                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="col-sm-3">
                                                            <div class="fff">
                                                                <div class="thumbnail_1">
                                                                    <a
                                                                        href="http://www.civilsociety-jo.net/ar/organization/953"><img
                                                                            src="images/sponser12.png"
                                                                            class="sponser_box" /></a>
                                                                </div>
                                                                <div class="caption">



                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div><!-- /Slide3 -->
                                            </div>


                                            <nav>
                                                <ul class="control-box pager">
                                                    <li><a data-slide="prev" href="#myCarousel" class=""><i
                                                                class="glyphicon glyphicon-chevron-left"></i></a></li>
                                                    <li><a data-slide="next" href="#myCarousel" class=""><i
                                                                class="glyphicon glyphicon-chevron-right"></i></a></li>
                                                </ul>
                                            </nav>
                                            <!-- /.control-box -->

                                        </div><!-- /#myCarousel -->








                                    </div>


                                </div>
                            </div>


                            <%-- --------------- End -------------%>




                                <script
                                    src="https://code.iconify.design/iconify-icon/1.0.2/iconify-icon.min.js"></script>




                        </div>
            </div>
        </asp:Content>
