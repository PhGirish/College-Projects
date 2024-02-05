<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="DentalFinal.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .maindiv
        {
            width:200px;
            height:600px;
        }
        .myDiv1
        {
            width:500px;
            height:450px;
            background-color:lavender;
            display:flex;
            flex-wrap:wrap;
            margin:60px 0px 0px 90px;
            padding:20px 20px 20px 20px;
        }
        .heading
        {
            display:block;
        }
        .about
        {
            display:block;
            padding-top:10px;
        }
        .pic
        {
            position:absolute;
            right:100px;
            top: 180px;
            height: 450px;
            width: 500px;
        }
        .service{
            border:solid 3px;
            border-radius:20px;
            border-color:#457b9d;
            padding:10px 10px 10px 10px;
            color:black;
            
        }
        .service:hover
        {
            background-color:#a8dadc;
            color:#9d8189;
        }
        .just
        {
            color:#457b9d;
        }
        .head3
        {
            margin-top:30px;
            background-color:antiquewhite;
            padding: 2px 2px 2px 2px;
        }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <center>
        <h3 class="head3"><b><u>
           T H E &nbsp;&nbsp; T O O T H   &nbsp;&nbsp; S P A 
           </u> </b></h3>
    </center>
    <div class="maindiv">
         <div class="myDiv1">
           <div class="div2">
               <h1 class="heading"><b> We are a clinic focused <br />
                      <div class="just">on dental hygiene  <br /> and tooth whitening...</div></b>
                </h1>
              
               <p class="about"> 
                    Our goal is to provide each customer with <strong> above-standard services </strong> with an 
                    individual approach. We work in modern premises with <strong>the most modern technologies</strong>. book your appointment today.
                </p>
              <h3>Make an appointment for :</h3> <br />
               <a href="appointment.aspx" class="service"> Teeth Whitening</a>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <a href="appointment.aspx" class="service"> Dental Hygiene </a>
           </div>
            <div>
                 <asp:Image ID="Image1" runat="server" ImageUrl="~/images/home.jpg" class="pic"/>
            </div>
     </div>

    </div>
</asp:Content>
