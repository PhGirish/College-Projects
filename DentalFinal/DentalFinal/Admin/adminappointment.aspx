<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/new_admin.Master" AutoEventWireup="true" CodeBehind="adminappointment.aspx.cs" Inherits="DentalFinal.Admin.adminappointment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="patientID" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
        <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
        <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
        <asp:BoundField DataField="patientType" HeaderText="patientType" SortExpression="patientType" />
        <asp:BoundField DataField="patientID" HeaderText="patientID" ReadOnly="True" SortExpression="patientID" />
        <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [appointment]"></asp:SqlDataSource>
</asp:Content>
