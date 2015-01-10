Imports System.Data

Partial Class Test
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("UN") <> "" Then
            Username.Text = Session("UN")
        Else
            Server.Transfer("Default.aspx")
        End If
    End Sub

    Protected Sub Submit_Click(sender As Object, e As EventArgs) Handles Submit.Click
        If Answer.Text = "" Then
            lblMsg.Text = "ERROR: NO Answer!"
        Else
            'create connection to db 
            Dim dbProvider As String = "PROVIDER=Microsoft.Jet.OLEDB.4.0;"
            Dim dbSource As String = "Data Source=|DataDirectory|\etest.mdb"
            Dim con As New OleDb.OleDbConnection(dbProvider & dbSource)

            'query delete user in db        Password is a reserved word so must use []
            Dim SQL As String = "INSERT INTO Test ([DateTime], StudentID, QuestionID, Ans) " & _
            "VALUES ('" & DateTime.Now & "','" & Username.Text & "','" & Question.Text & "','" & Answer.Text & "')"
            Dim cmd As New OleDb.OleDbCommand(SQL, con)

            Try
                con.Open()
                cmd.ExecuteNonQuery()
                con.Close()
                lblMsg.Text = "Answer Submitted!"
            Catch ex As Exception
                lblMsg.Text = "ERROR: " + ex.Message
            End Try
        End If

    End Sub

    Protected Sub LoadQ_Click(sender As Object, e As EventArgs) Handles LoadQ.Click
        lblMsg.Text = ""
    End Sub

    Protected Sub Logout_Click(sender As Object, e As EventArgs) Handles Logout.Click
        Session("UN") = ""
    End Sub
End Class
