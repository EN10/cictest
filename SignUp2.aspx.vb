Imports System.Data

Partial Class Signup2
    Inherits System.Web.UI.Page

    Protected Sub Submit_Click(sender As Object, e As EventArgs) Handles Submit.Click
        'create connection to db 
        Dim dbProvider As String = "PROVIDER=Microsoft.Jet.OLEDB.4.0;"
        Dim dbSource As String = "Data Source=|DataDirectory|\etest.mdb"
        Dim con As New OleDb.OleDbConnection(dbProvider & dbSource)

        'query delete user in db        Password is a reserved word so must use []
        Dim SQL As String = "INSERT INTO Student (Username, [Password]) " & _
            "VALUES ('" & Username.Text & "','" & Password.Text & "')"
        Dim cmd As New OleDb.OleDbCommand(SQL, con)

        Try
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            Session("UN") = Username.Text
            Server.Transfer("Test.aspx")
        Catch ex As Exception
            MsgBox("ERROR: " + ex.Message)
        End Try

    End Sub
End Class
