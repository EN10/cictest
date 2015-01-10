Imports System.Data

Partial Class Admin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("UN") <> "Enio" Then
            Server.Transfer("Default.aspx")
        End If
    End Sub

    Protected Sub Logout_Click(sender As Object, e As EventArgs) Handles Logout.Click
        Session("UN") = ""
    End Sub
End Class
