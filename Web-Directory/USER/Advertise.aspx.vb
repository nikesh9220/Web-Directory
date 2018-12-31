Imports System.Data
Partial Class USER_Advertise
    Inherits System.Web.UI.Page
    Dim obj As New Class1
    Dim ds As New DataSet

    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then
            drparea.DataSource = obj.calldata("select * from Area_table")
            drparea.DataTextField = "Area_Name"
            drparea.DataValueField = "Area_id"
            drparea.DataBind()
            drparea.Items.Insert(0, "Select Area")

            drpsub.DataSource = obj.calldata("select * from SubCategory_table")
            drpsub.DataTextField = "SubCategory_Name"
            drpsub.DataValueField = "SubCategory_id"
            drpsub.DataBind()
            drpsub.Items.Insert(0, "Select SubCategory")

            drpscheme.DataSource = obj.calldata("select * from Scheme_table")
            drpscheme.DataTextField = "Scheme_Name"
            drpscheme.DataValueField = "Scheme_id"
            drpscheme.DataBind()
            drpscheme.Items.Insert(0, "Select Scheme")

            lblday.Text = "Days"
            lblrate.Text = "Price"
        End If
        
        'If Request.QueryString("Scheme_id") Then

        'ds = obj.calldata("select * from Scheme_table where Scheme_id=" + Request.QueryString("Scheme_id") + " ")
        ' txtscheme.Text = ds.Tables(0).Rows(0).Item(1).ToString()

        'End If
    End Sub

    Protected Sub btnsave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsave.Click
        Dim name = "../photos/"
        Dim name2 = upldimg.FileName
        name2 = name2.TrimEnd(" ")
        If upldimg.HasFile Then
            upldimg.SaveAs(Server.MapPath("../photos/" + upldimg.FileName))
        End If
        If (btnsave.Text = "Submit") Then
            Dim fname = (name.Trim() + name2.Trim()).Trim()
            'obj.savedata("insert into Add_Advertisement(title,header,person,email,url,number,address,area,sub,img,scheme,short) values('" & txttitle.Text & "','" & txtheader.Text & "','" & txtperson.Text & "','" & txtemail.Text & "','" & txturl.Text & "','" & txtno.Text & "','" & txtadd.Text & "'," & drparea.SelectedValue & "," & drpsub.SelectedValue & ",'" & upldimg.FileName & "'," & drpscheme.SelectedValue & ",'" & txtshort.Text & "')")
            obj.savedata("insert into Add_Advertisement(title,header,person,email,url,number,address,area,sub,img,scheme,short) values('" & txttitle.Text & "','" & txtheader.Text & "','" & txtperson.Text & "','" & txtemail.Text & "','" & txturl.Text & "','" & txtno.Text & "','" & txtadd.Text & "'," & drparea.SelectedValue & "," & drpsub.SelectedValue & ",'" & fname & "'," & drpscheme.SelectedValue & ",'" & txtshort.Text & "')")
            Response.Write(<script> alert('data saved successfully')</script>)
        End If
        txttitle.Text = ""
        txtheader.Text = ""
        txtperson.Text = ""
        txtemail.Text = ""
        txturl.Text = ""
        txtno.Text = ""
        txtadd.Text = ""
        txtshort.Text = ""

        'Response.Write("<script>alert('Advertisement Added')</script>")

    End Sub

    Protected Sub btnreset_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnreset.Click
        txttitle.Text = ""
        txtheader.Text = ""
        txtperson.Text = ""
        txtemail.Text = ""
        txturl.Text = ""
        txtno.Text = ""
        txtadd.Text = ""
        txtshort.Text = ""
    End Sub

    
    Protected Sub drpscheme_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles drpscheme.SelectedIndexChanged
        ds = obj.calldata("select * from scheme_table where scheme_id=" & drpscheme.SelectedValue & "")
        If ds.Tables(0).Rows.Count > 0 Then
            lblday.Text = ds.Tables(0).Rows(0).Item(2).ToString()
            lblrate.Text = ds.Tables(0).Rows(0).Item(3).ToString()
        End If
    End Sub
End Class

