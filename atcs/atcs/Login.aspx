<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="atcs.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link href="styles/style.css" rel="stylesheet" type="text/css" />
    <title>Login | ATCS.net.in</title>
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
            text-align: center;
        }
        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 151px;
        }
        .style4
        {
            width: 151px;
            text-align: right;
        }
        .style5
        {
            width: 184px;
        }
        #Reset1
        {
            height: 34px;
            width: 65px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <br />
    
    <div class = "col col89">
    
    <h1 style="text-align:center; font-size:2.5em;">
    
        ATCS | Login Page</h1>
      <br />
        </div>
        <div class = "col col19 topright">
        <a href="#">Home</a> | <a href="Registration.aspx">Register</a>

        </div>
         <hr /><br /><br />
    <table class="style2">
        <tr>
            <td class="style4">
                User Name
            </td>
            <td class="style5">
                <asp:TextBox ID="TextBoxUserName" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBoxUserName" ErrorMessage="Please Enter Username" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Password</td>
            <td class="style5">
                <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" 
                    Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBoxPassword" ErrorMessage="Please Enter Password" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                <asp:Button ID="Button_Login" runat="server" Height="41px" 
                    onclick="Button_Login_Click" Text="Login" Width="72px" />
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration.aspx" 
                    style="float: right; margin-top:10px; margin-right:20px; font-size:large;">Sign Up</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>