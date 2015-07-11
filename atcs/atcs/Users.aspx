<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="atcs.Users" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">

    <title>Welcome to myPage</title>
    <style type="text/css">
        #form1
        {
            height: 103px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    

    
    </div>
     <asp:GridView ID="gvUserInfo" runat="server" >
    <HeaderStyle BackColor="#df5015" Font-Bold="true" ForeColor="White"/>
    </asp:GridView> 
        
    <br />
    <p>
        &nbsp;</p>
    <p>
        &nbsp;Total Cost&nbsp; :
        <asp:TextBox ID="TextBox1" runat="server" ontextchanged="TextBox1_TextChanged" ReadOnly></asp:TextBox>
    </p>

    </form>

    <p>
        &nbsp;</p>
</body>
</html>
