<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="appointment_2.aspx.cs" Inherits="DentalFinal.appointment_2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
       .main
       {
           background-color:lavender;
           width:900px;
           height:490px;
           margin-top:40px;
           margin-left:200px;
           margin-bottom:20px;
       }
       .btn
       {
           margin:20px 20px 20px 20px;
           border:2px solid black;
           border-radius:5px;
           padding:2px 2px 2px 2px;
       }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link rel="stylesheet" href="css/login.css" />
       <link rel="preconnect" href="https://fonts.googleapis.com"/>
       <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
       <link href="https://fonts.googleapis.com/css2?family=Amatic+SC:wght@700&display=swap" rel="stylesheet"/>
       <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet"/>
   <div class="main">
        <button id="general_dentistry" class="btn">General Dentistry </button>
        <button id="cosmetic_dentistry" class="btn">Cosmetic Dentistry </button>
        <button id="dental_implants" class="btn">Dental Implants  </button> <br />
        <button id="orthodontics" class="btn">Orthodontics </button>
        <button id="teeth_whitening" class="btn">Teeth Whitening </button>
        <button id="gum_training" class="btn">Gum Training </button>
   </div>
</asp:Content>
