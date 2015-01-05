Partial Class Questions
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("UN") <> "Enio" Then
            Server.Transfer("Default.aspx")
        End If
    End Sub
End Class
