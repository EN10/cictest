<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Test.aspx.vb" Inherits="Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="font-family: Arial, Helvetica, sans-serif">
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblUser" runat="server" Text="User: "></asp:Label>
        <asp:Label ID="Username" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Label ID="lblQ" runat="server" Text="Question ID: "></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Question" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="LoadQ" runat="server" Text="Load" />
        <br />
        <br />
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
                <asp:TextBox ID="QTextBox" runat="server" Text='<%# Bind("Q") %>' />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [Q] FROM [Questions] WHERE ([ID] = ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Question" Name="ID" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:Label ID="lblA" runat="server" Text="Answer:"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Answer" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Submit" runat="server" Text="Submit" />
        <br />
        <br />
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
