Imports System.Data.OleDb

Partial Class fill
    Inherits System.Web.UI.Page
    Private Sub btnSubmit_Click(sender As Object, e As EventArgs)
        Dim time As String
        Dim sitr As String
        If rbMorning.Checked Then
            time = "morning"
        ElseIf rbEvening.Checked Then
            time = "evening"
        Else
            time = "fullday"
        End If
        sitr = "insert into event values ('" & txtDate.Text & "','" & txtName.Text & "','" & txtDepartment.Text & "','" & txtProgramName.Text & "','" & time & "')"
        OleDbConnection.Open()
        oleDbCommand1.CommandText = sitr
        oleDbCommand1.ExecuteNonQuery()
        OleDbConnection.Close()
        MsgBox("inserted")
    End Sub
End Class
