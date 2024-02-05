<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/new_admin.Master" AutoEventWireup="true" CodeBehind="addAdmin.aspx.cs" Inherits="DentalFinal.Admin.addAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <fieldset class="fieldsetmain">
        <legend style="font-size: 16px;">ORDER MANAGEMENT
        </legend>
        <div style="overflow: auto">
            <div align="center" style="height: 30px;">
                <asp:Label ID="lblMsg" runat="server" CssClass="lblresponse" />
            </div>
            <div align="center" style="margin-bottom:10px;">
                <fieldset class="fieldsetsub">
                    <legend>Create Admin Login
                    </legend>

                    <table>
                        <tr>
                            <td class="auto-style3">Admin UserName :
                            </td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtAuser" runat="server" />
                            </td>
                            <td class="auto-style3">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAuser" ForeColor="#990000" ErrorMessage="UserName Required" />
                            </td>
                        </tr>
                        <tr>
                            <td>Admin Password :
                            </td>
                            <td>
                                <asp:TextBox ID="txtApwd" runat="server" TextMode="Password"/>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtApwd" ForeColor="#990000" ErrorMessage="Password Required" />
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <asp:Button ID="btnAddAdmin" runat="server" Text="Add Admin" CssClass="button" OnClick="btnAddAdmin_Click" />
                            </td>
                        </tr>
                    </table>
                </fieldset><br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="AdminID" DataSourceID="SqlDataSource1" Width="632px">
                    <Columns>
                        <asp:BoundField DataField="AdminID" HeaderText="AdminID" InsertVisible="False" ReadOnly="True" SortExpression="AdminID" />
                        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [AdminUsers]"></asp:SqlDataSource>
                <br />
            </div>
        </div>
    </fieldset>
</asp:Content>
