<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> CIC Messenger </title>
    <style type="text/css">
        body {color:orange;font-family:arial;text-align:center;}
        .style1
        {
            text-align: right;
            font-size: xx-small;
            font-family: "Trebuchet MS";
            color:black;
        }
        </style>
    <script type="text/javascript">
        function validate(theform) {
            if (theform.Username == null || theform.Username.value == "")
            { alert("ERROR: Please enter Username"); return false; }
            else if (theform.Password == null || theform.Password.value == "")
            { alert("ERROR: Please enter Password"); return false; }
            else
            { return true; }
        }
	</script>
</head>
<body>
    <form id="form1" onsubmit="return validate(this)" runat="server">
    <div>
    
        <table align="center" style="height: 600px; width: 640px" border="1" 
            cellspacing="0">
            <tr>
                <td colspan="2">
                    <img height="77" src="Images/cic_logo.jpg" width="524" /></td>
            </tr>
            <tr>
                <td colspan="2">
                    <br />
                    <table align="center">
                        <tr>
                            <td>
    
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
    
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <p class="style1">
                        <span>CIC Test</span><br />
                        <span>Please report issues to <a href="mailto:itsupport@cic.ac">ict@cic.ac</a></span><br />
                        EF</p>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
    <br />
    <p>
        &nbsp;</p>
</body>
</html>
