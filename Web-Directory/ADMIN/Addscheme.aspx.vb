Imports System.Data

Partial Class ADMIN_Addscheme
    Inherits System.Web.UI.Page

    Dim obj As New Class1
    Dim ds As New DataSet
    Protected Sub btnsave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsave.Click
        ds = obj.calldata("select Scheme_Name from Scheme_table where Scheme_name='" & TextBox1.Text & " ' and Scheme_Days=" & TextBox2.Text & "  and Scheme_Rate=" & TextBox3.Text & " ")
        If ds.Tables(0).Rows.Count > 0 Then
            Response.Write(<script> alert('Duplicate Data')</script>)
        Else
            If (btnsave.Text = "Save") Then
                obj.savedata("insert into Scheme_table(Scheme_Name,Scheme_Days,Scheme_Rate) values ('" & TextBox1.Text & "','" & TextBox2.Text & "' , '" & TextBox3.Text & "')")
                Response.Write(<script> alert('data saved successfully')</script>)
            Else
                obj.savedata("update Scheme_table set Scheme_Name='" & TextBox1.Text & "',Scheme_Days=" & TextBox2.Text & ",Scheme_Rate=" & TextBox3.Text & " where Scheme_id=" & GridView1.SelectedRow.Cells(0).Text & " ")
                Response.Write(<script> alert('data Updated successfully')</script>)
            End If
        End If

        GridView1.DataSource = obj.calldata("select * from Scheme_table ")
        GridView1.DataBind()
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        btnsave.Text = "Save"
    End Sub

    Protected Sub btnview_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnview.Click
        Dim str As String
        str = "select * from Scheme_table"
        GridView1.DataSource = obj.calldata(str)
        GridView1.DataBind()

    End Sub

    Protected Sub btnreset_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnreset.Click
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        btnsave.Text = "Save"
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        TextBox1.Text = GridView1.SelectedRow.Cells(1).Text
        btnsave.Text = "Update"
    End Sub

    Protected Sub GridView1_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GridView1.RowDeleting
        obj.savedata("delete from Scheme_table where Scheme_id= " & GridView1.Rows(e.RowIndex).Cells(0).Text & "")
        GridView1.DataSource = obj.calldata("select * from Scheme_table ")
        GridView1.DataBind()
    End Sub

    Protected Sub GridView1_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles GridView1.PageIndexChanging
        GridView1.PageIndex = e.NewPageIndex
        'same as view button coding
        Dim str As String
        str = "select * from Scheme_table"
        GridView1.DataSource = obj.calldata(str)
        GridView1.DataBind()
    End Sub
End Class
