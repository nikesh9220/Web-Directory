Imports System.Data
Imports System.Data.SqlClient
Partial Class ADMIN_Scheme
    Inherits System.Web.UI.Page
    Dim obj As New Class1
    Dim ds As New DataSet

    Protected Sub btnsave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsave.Click
        ds = obj.calldata("select Security_Question from Security_table where Security_Question='" & TextBox1.Text & " '")
        If ds.Tables(0).Rows.Count > 0 Then
            Response.Write(<script> alert('Duplicate Data')</script>)
        Else
            If (btnsave.Text = "Save") Then
                obj.savedata("insert into Security_table values ('" & TextBox1.Text & "')")
                Response.Write(<script> alert('data saved successfully')</script>)
            Else
                obj.savedata("update Security_table set Security_Question='" & TextBox1.Text & "' where Security_id= " & GridView1.SelectedRow.Cells(0).Text & "")
                Response.Write(<script> alert('data Updated successfully')</script>)
            End If
        End If
        GridView1.DataSource = obj.calldata("select * from Security_table ")
        GridView1.DataBind()
        TextBox1.Text = ""
        btnsave.Text = "Save"
    End Sub

    Protected Sub btnview_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnview.Click
        GridView1.DataSource = obj.calldata("select * from Security_table ")
        GridView1.DataBind()
    End Sub

    Protected Sub btnreset_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnreset.Click
        TextBox1.Text = ""
        btnsave.Text = "Save"
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        TextBox1.Text = GridView1.SelectedRow.Cells(1).Text
        btnsave.Text = "Update"
    End Sub

    Protected Sub GridView1_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GridView1.RowDeleting
        obj.savedata("delete from Security_table where Security_id= " & GridView1.Rows(e.RowIndex).Cells(0).Text & "")
        GridView1.DataSource = obj.calldata("select * from Security_table ")
        GridView1.DataBind()
    End Sub

    Protected Sub GridView1_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles GridView1.PageIndexChanging
        GridView1.PageIndex = e.NewPageIndex
        'same as view button coding
        Dim str As String
        str = "select * from Security_table"
        GridView1.DataSource = obj.calldata(str)
        GridView1.DataBind()
    End Sub
End Class
