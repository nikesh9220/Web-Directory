Imports System.Data

Partial Class USER_login1
    Inherits System.Web.UI.Page
    Dim obj As New Class1
    Dim ds As New DataSet
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        ds = obj.calldata("select * from Login_table where User_Name = '" & TextBox1.Text & "' and Password = '" & TextBox2.Text & "'")
        If ds.Tables(0).Rows.Count > 0 Then
            Session("uname") = TextBox1.Text
            If ds.Tables(0).Rows(0).Item(4).ToString() = "Admin" Then
                Response.Redirect("..\ADMIN\Area.aspx")
            Else
                Session("U_ID") = ds.Tables(0).Rows(0).Item(1).ToString()
                Response.Redirect("../USER/Homepage.aspx")

            End If
        Else
            Response.Write("<script>alert('Invalid UserName and Password')</script>")
        End If

    End Sub
End Class
