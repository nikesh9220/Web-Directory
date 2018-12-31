Imports System.Data
Partial Class ADMIN_Subcategory
    Inherits System.Web.UI.Page
    Dim obj As New Class1
     Dim ds As New DataSet
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (IsPostBack = False) Then
            drpsub.DataSource = obj.calldata("select * from Category_table ")
            drpsub.DataTextField = "Category_Name"
            drpsub.DataValueField = "Category_id"
            drpsub.DataBind()
            drpsub.Items.Insert(0, "- select-")
        End If
    End Sub

    Protected Sub btnsave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsave.Click
        ds = obj.calldata("select SubCategory_Name from SubCategory_table where SubCategory_Name='" & txtnm.Text & " ' and Category_id=" + drpsub.SelectedValue + "")
        If ds.Tables(0).Rows.Count > 0 Then
            Response.Write(<script> alert('Duplicate Data')</script>)
        Else

            If (btnsave.Text = "Save") Then
                obj.savedata("insert into SubCategory_table values('" & txtnm.Text & "'," & drpsub.SelectedValue & ")")
                Response.Write(<script> alert('data saved successfully')</script>)

            Else
                obj.savedata("update SubCategory_table set SubCategory_Name='" & txtnm.Text & "',Category_id=" & drpsub.Text & " where SubCategory_id=" & grdsub.SelectedRow.Cells(0).Text & " ")
                Response.Write(<script> alert('data Updated successfully')</script>)

            End If
        End If
        grdsub.DataSource = obj.calldata("select * from SubCategory_table a,Category_table b where a.Category_id=b.Category_id")
        grdsub.DataBind()
        btnsave.Text = "Save"
    End Sub
    

    Protected Sub btnview_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnview.Click
        Dim str As String
        str = "select * from SubCategory_table"
        grdsub.DataSource = obj.calldata(str)
        grdsub.DataBind()
    End Sub
    Protected Sub btnreset_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnreset.Click
        txtnm.Text = ""
        btnsave.Text = "Save"
        drpsub.SelectedIndex = 0
    End Sub

   
    Protected Sub grdsub_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles grdsub.SelectedIndexChanged
        txtnm.Text = grdsub.SelectedRow.Cells(2).Text
        btnsave.Text = "Update"
    End Sub

    Protected Sub grdsub_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles grdsub.RowDeleting
        obj.savedata("delete from SubCategory_table where SubCategory_id= " & grdsub.Rows(e.RowIndex).Cells(0).Text & "")
        grdsub.DataSource = obj.calldata("select * from SubCategory_table ")
        grdsub.DataBind()
    End Sub

    Protected Sub grdsub_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles grdsub.PageIndexChanging
        grdsub.PageIndex = e.NewPageIndex
        'same as view button coding
        Dim str As String
        str = "select * from SubCategory_table"
        grdsub.DataSource = obj.calldata(str)
        grdsub.DataBind()
    End Sub
End Class
