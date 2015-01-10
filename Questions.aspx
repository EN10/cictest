<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Questions.aspx.vb" Inherits="Questions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="font-family: Arial, Helvetica, sans-serif">
    <form id="form1" runat="server">
    <div>
    
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="ID" DataSourceID="AccessDataSource1">
            <EditItemTemplate>
                ID:
                <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
                <br />
                Q:
                <asp:TextBox ID="QTextBox" runat="server" Text='<%# Bind("Q") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                ID:
                <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' Height="20px" Width="50px" />
                <br />
                Q:
                <asp:TextBox ID="QTextBox" runat="server" Text='<%# Bind("Q") %>' Height="100px" TextMode="MultiLine" Width="350px" />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                ID:
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                <br />
                Q:
                <asp:Label ID="QLabel" runat="server" Text='<%# Bind("Q") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="AccessDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Q" HeaderText="Q" SortExpression="Q" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <br />
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" ConflictDetection="CompareAllValues" DataFile="App_Data\etest.mdb" DeleteCommand="DELETE FROM [Questions] WHERE [ID] = ? AND (([Q] = ?) OR ([Q] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [Questions] ([ID], [Q]) VALUES (?, ?)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [ID], [Q] FROM [Questions]" UpdateCommand="UPDATE [Questions] SET [Q] = ? WHERE [ID] = ? AND (([Q] = ?) OR ([Q] IS NULL AND ? IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_Q" Type="String" />
                <asp:Parameter Name="original_Q" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="Int32" />
                <asp:Parameter Name="Q" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Q" Type="String" />
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_Q" Type="String" />
                <asp:Parameter Name="original_Q" Type="String" />
            </UpdateParameters>
        </asp:AccessDataSource>
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin.aspx">Admin Home</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
