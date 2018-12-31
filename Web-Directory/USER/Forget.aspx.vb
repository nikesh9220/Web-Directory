Imports System.Data
Partial Class USER_Forget
    Inherits System.Web.UI.Page
    Dim obj As New Class1
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (IsPostBack = False) Then
            drpswcque.DataSource = obj.calldata("select * from Security_table")
            drpswcque.DataTextField = "Security_Question"
            drpswcque.DataValueField = "Security_id"
            drpswcque.DataBind()
            drpswcque.Items.Insert(0, "--Select Question--")
        End If
    End Sub

    Protected Sub btnget_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnget.Click
        Dim ds As New DataSet
        ds = obj.calldata("select password from Login_table a , Security_table b where a.User_Name='" & txtuname.Text & "' and b.Security_Question='" & drpswcque.SelectedItem.Text & "' and a.Security_Ans='" & txtsecans.Text & "' ")
        If (ds.Tables(0).Rows.Count < 1) Then
            Response.Write("<script>alert('username or sec que or sec password doesnot match!!!')</script>")
        Else
            Response.Write("<script>alert('" & ds.Tables(0).Rows(0).ItemArray(0).ToString() & "')</script>")

        End If
    End Sub
End Class
