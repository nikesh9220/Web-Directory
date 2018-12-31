Imports System.Collections
Imports System.Collections.Generic
Imports System.Web.UI.WebControls
Partial Class USER_Homepage
    Inherits System.Web.UI.Page
    Dim obj As New Class1

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        DataList1.DataSource = obj.calldata("select title,header,person,email,url,number,address,img,short from Add_Advertisement ")
        DataList1.DataBind()
    End Sub
End Class
