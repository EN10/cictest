<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Admin.aspx.vb" Inherits="Signup" %>

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
                    <a href="Default.aspx">
                    <img height="77" src="Images/cic_logo.jpg" width="524" style="border-width: 0px" /></a></td>
            </tr>
            <tr>
                <td colspan="2">
                    <br />
                    <table align="center">
                        <tr>
                            <td style="text-align: left">
    
        <asp:HyperLink ID="UsersLink" runat="server" NavigateUrl="~/Questions.aspx">Users</asp:HyperLink>
    
                                <br />
                                <br />
                                <br />
        <asp:HyperLink ID="QuestionsLink" runat="server" NavigateUrl="~/Questions.aspx">Questions</asp:HyperLink>
    
                                <br />
                                <br />
                                <br />
        <asp:HyperLink ID="ResultsLink" runat="server" NavigateUrl="~/Results.aspx">Results</asp:HyperLink>
    
                                <br />
                                <br />
                                <br />
                                <asp:Button ID="Logout" runat="server" Text="Logout" />
    
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
