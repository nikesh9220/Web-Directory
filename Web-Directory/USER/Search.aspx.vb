
Partial Class USER_Search
    Inherits System.Web.UI.Page
    Dim obj As New Class1

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        
        DataList1.DataSource = obj.calldata("select Image,Title,Url,Address,Pincode,Contact_No,Email_id,Short_Descr from AddBusi_table where Sub_id=" + Request.QueryString("Sub_id") + "  And Area_id=" + Request.QueryString("Area_id"))
        DataList1.DataBind()



    End Sub
End Class
