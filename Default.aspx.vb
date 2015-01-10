Imports System.Data

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub SignIn_Click(sender As Object, e As EventArgs) Handles SignIn.Click
        'create connection to db 
        Dim dbProvider As String = "PROVIDER=Microsoft.Jet.OLEDB.4.0;"
        Dim dbSource As String = "Data Source=|DataDirectory|\etest.mdb"
        Dim con As New OleDb.OleDbConnection(dbProvider & dbSource)

        'query delete user in db Password is a reserved word so must use []
        'query find username and password in th db
        Dim SQL = "SELECT Username " & _
              "FROM Student " & _
              "WHERE Username = '" & Username.Text & "'" & _
              "AND Password = '" & Password.Text & "'"

        ' dataadapter which execute the sql query on the connection
        Dim dAdaptor = New OleDb.OleDbDataAdapter(SQL, con)

        ' table data structure that hold the result of the query
        Dim dSet = New DataSet
        dAdaptor.Fill(dSet, "Student")

        'match found or not found
        If dSet.Tables("Student").Rows.Count > 0 Then
            Session("UN") = Username.Text
            If Session("UN") = "Enio" Then
                Server.Transfer("Admin.aspx")
            Else
                Server.Transfer("Test.aspx")
            End If
            MsgBox.Text = ""
        Else
            MsgBox.Text = "ERROR!"
            'Server.Transfer("Error.aspx")
        End If
    End Sub

End Class