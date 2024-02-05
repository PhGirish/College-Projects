<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="DentalFinal.Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<style>
		*{
	box-sizing:border-box;
}
body{
	font-family:verdana;
	margin:15px,30px;
	font-size:17px;
	padding:8px;
}
.container{
	background-color:#f2f2f2;
	padding:20px;
	border:1px solid lightgray;
	border-radius:40px;
}
input[type="text"],
input[type="email"],
input[type="number"],
input[type="password"],
input[type=date],
select,
textarea{
	width:100%;
	padding:12px;
	border:1px solid #ccc;
	border-radius:50px;
	margin:10px;
}
input[type="submit"]{
	background-color:#4daea1;
	padding:20px;
	border:none;
	border-radius:4px;
	cursor:zoom-in;
	width:100%;
}
input[type="submit"]:hover{
	background-color:4caf84;
}

.button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin-top: 10px;
  margin-right: 10px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  width: 100px;
  transition: background-color 0.3s;
}

.button:hover {
  background-color: #3e8e41;
}


 


	</style>
</head>
<body>
	       
	<div class ="container">
    <form id="form1" runat="server">
		<center>
          <h1>Payment</h1>
		<hr>
		<h2>contact Information</h2>
			</center>
		<p>
				<asp:RequiredFieldValidator ID="nameRequiredFieldValidator1" ControlToValidate="name" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
			</p>
		<p>NAME*<asp:TextBox ID="name" placeholder="Name" runat="server"></asp:TextBox>
			
		<br>
		<fieldset>		
			<legend>Gender</legend>
		<p><asp:RadioButton ID="male"  runat="server" Checked="true" GroupName="gender" Text="Male" />
			
		<asp:RadioButton ID="female"  runat="server" Checked="false" GroupName="gender" Text="Female" />
		</p>
		</fieldset>
		<hr/>
		<h2>PAYMENT INFORMATION</h2>
			<p>
				<asp:RequiredFieldValidator ID="cardNameRequiredFieldValidator1"  ControlToValidate="card_name" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
			</p>
		<p>Card Number:*<asp:TextBox ID="card_name" runat="server" MaxLength="16" placeholder="6529XXXXXXXXX"></asp:TextBox>
			<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Card No. should be of 16 digits" ValidationExpression="^[0-9]{16}$" ForeColor="Red" ControlToValidate="card_name"></asp:RegularExpressionValidator>
		</p>
			
			<p>
				<asp:RequiredFieldValidator ID="expDateRequiredFieldValidator1" ControlToValidate="expDate" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
			</p>
		<p>Expiration date<asp:TextBox ID="expDate" runat="server" MaxLength="5" placeholder="MM/YY" ></asp:TextBox>
			<asp:RegularExpressionValidator ID="regExpirationDate" runat="server"
    ControlToValidate="expDate"
    ValidationExpression="^(0[1-9]|1[0-2])\/([0-9]{2})$"
    ErrorMessage="Please enter a valid expiration date in the format MM/YY" ForeColor="Red"></asp:RegularExpressionValidator>
			
		</p>
			
			<p>
				<asp:RequiredFieldValidator ID="cvvRequiredFieldValidator1" ControlToValidate="cvv" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
			</p>
		<p>CVV<asp:TextBox ID="cvv" runat="server" MaxLength="3" placeholder="*" TextMode="Password"></asp:TextBox>
			
		</p>
			
	<asp:Button ID="Button1" runat="server" Text="Pay" Font-Bold="True" Font-Size="X-Large" ForeColor="White" OnClick="Button1_Click" />
		</select>
   
        <br />
        <br />
			<b><a href="appointment.aspx">Back to appointment</a></b>
        <br />
        <br />
   
    </form>
		</div>
</body>
</html>
