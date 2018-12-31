Imports System.Data

Partial Class ADMIN_Addbusiness
    Inherits System.Web.UI.Page
    Dim obj As New Class1
    Dim ds As New DataSet

    
    Protected Sub btnsave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsave.Click
        If (btnsave.Text = "Save") Then
            obj.savedata("insert into AddBusi_table values('" & TextBox1.Text & "' , '  " & DropDownList1.SelectedValue & " ','" & TextBox2.Text & "'," & DropDownList2.SelectedValue & ",'" & TextBox3.Text & "',' " & TextBox4.Text & " ' ,'" & TextBox5.Text & " ')")

        Else
            obj.savedata("update AddBusi_table set Title= '" & TextBox1.Text & " ' where Sub_id =" & GridView1.SelectedRow.Cells(2).Text & "")

        End If
        GridView1.DataSource = obj.calldata("select * from AddBusi_table ")
        GridView1.DataBind()
        TextBox1.Text = ""
        DropDownList1.SelectedIndex = 0
        TextBox2.Text = ""
        DropDownList2.SelectedIndex = 0
        TextBox3.Text = ""
        TextBox4.Text = ""
        TextBox5.Text = ""
        btnsave.Text = "Save"
    End Sub


    Protected Sub btnview_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnview.Click
        Dim str As String
        str = "select * from AddBusi_Table"
        GridView1.DataSource = obj.calldata(str)
        GridView1.DataBind()
    End Sub
    Protected Sub GridView1_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GridView1.RowDeleting
        obj.savedata("delete from AddBusi_table where Business_id=" & GridView1.Rows(e.RowIndex).Cells(0).Text & "")
        GridView1.DataSource = obj.calldata("select * from AddBusi_table ")
        GridView1.DataBind()

    End Sub

    Protected Sub GridView1_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles GridView1.PageIndexChanging
        GridView1.PageIndex = e.NewPageIndex
        'same as view button coding
        Dim str As String
        str = "select * from AddBusi_Table"
        GridView1.DataSource = obj.calldata(str)
        GridView1.DataBind()

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        TextBox1.Text = GridView1.SelectedRow.Cells(1).Text
        btnsave.Text = "update"
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (IsPostBack = False) Then
            DropDownList1.DataSource = obj.calldata("select * from SubCategory_Table")
            DropDownList1.DataTextField = "SubCategory_Name"
            DropDownList1.DataValueField = "SubCategory_id"
            DropDownList1.DataBind()
            DropDownList1.Items.Insert(0, "--Select Sub_Category--")

            DropDownList2.DataSource = obj.calldata("select * from Area_Table")
            DropDownList2.DataTextField = "Area_Name"
            DropDownList2.DataValueField = "Area_id"
            DropDownList2.DataBind()
            DropDownList2.Items.Insert(0, "--Select Area--")
        End If


    End Sub

    Protected Sub btnreset_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnreset.Click
        TextBox1.Text = ""
        DropDownList1.SelectedIndex = 0
        TextBox2.Text = ""
        DropDownList2.SelectedIndex = 0
        TextBox3.Text = ""
        TextBox4.Text = ""
        TextBox5.Text = ""
        btnsave.Text = "Save"
    End Sub
End Class
