<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="DentalFinal.Admin.adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Styles/Main.css" rel="stylesheet" />
    <style type="text/css">
        .ErrorMsg {
            font-size: 12px;
            color: #851010;
            font-weight: bold;
        }

        input[type="text"] {
            height: 20px;
        }

        fieldset {
            border: 2px solid #808080;
            border-radius: 4px 4px;
            padding: 10px 10px;
            margin-left: 10px;
            margin-right: 10px;
            margin-bottom: 35px;
            margin-top: 10px;
        }

        .adLogin {
            height: 50px;
            width: 50px;
        }

        .invalidlogin {
            color: #851010;
            border: 1px solid black;
            background-color: #e6e6e6;
            position: relative;
            top: 10px;
            left: 115px;
            padding: 0px 5px;
            width: 100px;
        }
        .auto-style1 {
            height: 75px;
        }
        .auto-style2 {
            width: 209px;
        }
        .auto-style3 {
            height: 75px;
            width: 209px;
        }
        .auto-style4 {
            width: 112px;
        }
        .auto-style5 {
            height: 75px;
            width: 112px;
        }
        .auto-style6 {
            margin-left: 0px;
        }
    </style>
</head>
<body style="padding-top: 20px; width: 100%; height: 100%">
    <form id="form1" runat="server">
        <div style="width: 400px; margin: auto; background-color: white; border: double 3px #808080;">
            <fieldset>
                <legend style="font-size: 20px;">
                    <span style="position: relative; top: -15px;">Admin Login</span></legend>
                <table>
                    <tr>
                                     <td class="auto-style4">UserName :
                        </td>
                        <td>
                            <asp:TextBox ID="txtUnameAd" runat="server" placeholder="UserName" CssClass="auto-style6" />
                        </td>
                        <td class="auto-style2">
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtUnameAd" Display="Dynamic" CssClass="ErrorMsg" ErrorMessage="Required" />
                        </td>
                    </tr>
                    <td class="auto-style4">
 Password :
                        </td>
                        <td>
                            <asp:TextBox ID="txtPassAd" runat="server" TextMode="Password" placeholder="Password" />
                        </td>
                        <td class="auto-style2">
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassAd" Display="Dynamic" ErrorMessage="Required" CssClass="ErrorMsg" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5"></td>
                        <td class="auto-style1">
                            <asp:Button ID="btnAdlogin" runat="server" Text="Login" CssClass="button" OnClick="btnAdlogin_Click" BackColor="#2A9D8F" /></td>
                        <td class="auto-style3">
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </fieldset>



        </div>

    </form>
</body>
</html>