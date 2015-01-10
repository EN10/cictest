<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Test.aspx.vb" Inherits="Test" %>

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
</head>
<body>
    <form id="form1" runat="server">
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
    
        <asp:Label ID="lblUser" runat="server" Text="User: "></asp:Label>
    
                            </td>
                            <td style="text-align: left">
    
        <asp:Label ID="Username" runat="server"></asp:Label>
    
                            </td>
                            <td style="text-align: left">
    
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="text-align: left">
    
                                &nbsp;</td>
                            <td style="text-align: left">
    
                                &nbsp;</td>
                            <td style="text-align: left">
    
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="text-align: left">
    
        <asp:Label ID="lblQ" runat="server" Text="Question ID: "></asp:Label>
    
                            </td>
                            <td style="text-align: left">
    
        <asp:TextBox ID="Question" runat="server" Width="200px"></asp:TextBox>
        <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                Q:
                <asp:TextBox ID="QTextBox" runat="server" Text='<%# Bind("Q") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Q:
                <asp:TextBox ID="QTextBox0" runat="server" Text='<%# Bind("Q") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Q:
                <asp:Label ID="QLabel" runat="server" Text='<%# Bind("Q") %>' />
                <br />

            </ItemTemplate>
        </asp:FormView>
    
                            </td>
                            <td style="text-align: left">
    
        <asp:Button ID="LoadQ" runat="server" Text="Load" OnClick="LoadQ_Click" />
    
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: left">
    
        <asp:Label ID="lblA" runat="server" Text="Answer:"></asp:Label>
    
                            </td>
                            <td style="text-align: left">
    
        <asp:TextBox ID="Answer" runat="server" Height="60px" TextMode="MultiLine" Width="200px"></asp:TextBox>
    
                            </td>
                            <td style="text-align: left">
    
        <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click" />
    
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: left">
    
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
    
                            </td>
                            <td style="text-align: left">
    
                                &nbsp;</td>
                            <td style="text-align: left">
    
                                &nbsp;</td>
                        </tr>
                    </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [Q] FROM [Questions] WHERE ([ID] = ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Question" Name="ID" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
                    <br />
                                <asp:Button ID="Logout" runat="server" Text="Logout" />
    
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