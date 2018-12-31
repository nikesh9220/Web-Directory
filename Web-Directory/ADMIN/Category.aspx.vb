Imports System.Data

Partial Class ADMIN_Category
    Inherits System.Web.UI.Page
    Dim obj As New Class1
    Dim ds As New DataSet

    Protected Sub btnsave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsave.Click
        ds = obj.calldata("select Category_name from Category_table where Category_Name='" & txtnm.Text & " '")
        If ds.Tables(0).Rows.Count > 0 Then
            Response.Write(<script> alert('Duplicate Data')</script>)
        Else


            If (btnsave.Text = "Save") Then
                obj.savedata("insert into Category_table(Category_Name) values('" & txtnm.Text & "' )")
                Response.Write(<script> alert('data saved successfully')</script>)
            Else
                obj.savedata("update Category_table set Category_Name='" & txtnm.Text & "'where Category_id=" & grdcat.SelectedRow.Cells(0).Text & "")
                Response.Write(<script> alert('data Updted successfully')</script>)
            End If
        End If

        grdcat.DataSource = obj.calldata("select * from Category_table ")
        grdcat.DataBind()
        txtnm.Text = ""
        btnsave.Text = "Save"
    End Sub

    Protected Sub btnreset_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnreset.Click
        txtnm.Text = ""
        btnsave.Text = "Save"
    End Sub

    Protected Sub btnview_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnview.Click
        Dim str As String
        str = "select * from Category_table"
        grdcat.DataSource = obj.calldata(str)
        grdcat.DataBind()
    End Sub

    Protected Sub grdcat_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles grdcat.SelectedIndexChanged
        txtnm.Text = grdcat.SelectedRow.Cells(1).Text
        btnsave.Text = "Update"
    End Sub

    Protected Sub grdcat_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles grdcat.RowDeleting
        obj.savedata("delete from Category_table where Category_id= " & grdcat.Rows(e.RowIndex).Cells(0).Text & "")
        grdcat.DataSource = obj.calldata("select * from Category_table ")
        grdcat.DataBind()
    End Sub

   
    Protected Sub grdcat_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles grdcat.PageIndexChanging
        grdcat.PageIndex = e.NewPageIndex
        'same as view button coding
        Dim str As String
        str = "select * from Category_table"
        grdcat.DataSource = obj.calldata(str)
        grdcat.DataBind()
    End Sub
End Class
