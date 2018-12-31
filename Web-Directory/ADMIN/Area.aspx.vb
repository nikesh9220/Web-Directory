Imports System.Data

Partial Class ADMIN_Area
    Inherits System.Web.UI.Page
    Dim obj As New Class1
    Dim ds As New DataSet


    Protected Sub btnsave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsave.Click
        ds = obj.calldata("select Area_Name from  Area_table where  Area_Name='" & txtnm.Text & " '")
        If ds.Tables(0).Rows.Count > 0 Then
            MsgBox("duplicate data")
        Else
            If (btnsave.Text = "Save") Then
                obj.savedata("insert into Area_table(Area_Name) values('" & txtnm.Text & "' )")


            Else
                obj.savedata("update Area_table set Area_Name='" & txtnm.Text & "'where Area_id=" & grdarea.SelectedRow.Cells(0).Text & "")

            End If
        End If

        grdarea.DataSource = obj.calldata("select * from Area_table ")
        grdarea.DataBind()
        txtnm.Text = ""
        btnsave.Text = "Save"
    End Sub
    Protected Sub btnview_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnview.Click
        Dim str As String
        str = "select * from Area_table"
        grdarea.DataSource = obj.calldata(str)
        grdarea.DataBind()
    End Sub
    Protected Sub btnreset_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnreset.Click
        txtnm.Text = ""
        btnsave.Text = "Save"
    End Sub
    Protected Sub grdarea_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles grdarea.SelectedIndexChanged
        txtnm.Text = grdarea.SelectedRow.Cells(1).Text
        btnsave.Text = "Update"
    End Sub

    Protected Sub grdarea_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles grdarea.RowDeleting
        obj.savedata("delete from Area_table where Area_id= " & grdarea.Rows(e.RowIndex).Cells(0).Text & "")
        grdarea.DataSource = obj.calldata("select * from Area_table ")
        grdarea.DataBind()
    End Sub
    Protected Sub grdarea_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles grdarea.PageIndexChanging
        grdarea.PageIndex = e.NewPageIndex
        'same as view button coding
        Dim str As String
        str = "select * from Area_table"
        grdarea.DataSource = obj.calldata(str)
        grdarea.DataBind()
    End Sub
End Class
