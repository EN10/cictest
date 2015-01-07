<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SignUp2.aspx.vb" Inherits="Signup2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="font-family: Arial, Helvetica, sans-serif">
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label>
        <span class="Login">
                <br />
                <asp:TextBox ID="Username" runat="server"></asp:TextBox>
              <br />
        <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
        <br />
        <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
            <br />
        <asp:Label ID="lblCPassword" runat="server" Text="Confirm Password"></asp:Label>
        <br />
        <asp:TextBox ID="CPassword" runat="server" TextMode="Password"></asp:TextBox>
              <br />
        <br />
        <asp:Button ID="Submit" runat="server" Text="Sign up" />
              </span>
    
    </div>
    </form>
</body>
</html>
