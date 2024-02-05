﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/new_admin.Master" AutoEventWireup="true" CodeBehind="adminManageUser.aspx.cs" Inherits="DentalFinal.Admin.adminManageUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        width: 100%;
    }
    .auto-style4 {
        height: 21px;
    }
    .auto-style5 {
        width: 329px;
    }
    .auto-style6 {
        height: 21px;
        width: 329px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="contact" DataSourceID="SqlDataSource1" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True">
        <Columns>
            <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
            <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
            <asp:BoundField DataField="contact" HeaderText="contact" ReadOnly="True" SortExpression="contact" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [fname], [lname], [contact], [email], [username] FROM [register]"></asp:SqlDataSource>
<table class="auto-style3">
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">fname :</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">lname :</td>
        <td class="auto-style4">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">contact :</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">email&nbsp; :</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">username:</td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="INSERT" />
            <br />
        </td>
    </tr>
</table>
</asp:Content>