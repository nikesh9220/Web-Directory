Imports System.Data
Partial Class USER_Submitlisting
    Inherits System.Web.UI.Page
    Dim obj As New Class1
    Dim ds As New DataSet

    
    Protected Sub btnsave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsave.Click
        Dim name = "../photos/"
        Dim name2 = upldimg.FileName
        name2 = name2.TrimEnd(" ")
        If upldimg.HasFile Then
            upldimg.SaveAs(Server.MapPath("../photos/" + upldimg.FileName))
        End If
        '  ds = obj.calldata("select Title from AddBusi_table where Title='" & txttitle.Text & " ' and Sub_id=" + drpsub.SelectedValue + "")
        '  If (ds.Tables(0).Rows.Count >= 0) Then
        'Response.Write("<script>alert('Name is already exists!')</script>")
        ' Else
        ' Dim a = Convert.ToInt32(drpsub.SelectedValue.ToString)
        ' Dim b = Convert.ToInt32(drparea.SelectedValue.ToString)
        ' Dim c = Convert.ToInt32(txtpin.Text)

        If (btnsave.Text = "Submit") Then
            Dim fname = (name.Trim() + name2.Trim()).Trim()
            ' obj.savedata("insert into AddBusi_table values ('" & txttitle.Text & "','" & txturl.Text & "',' + a + '','" & txtadd.Text & "',' + b + ','" + c + "','" & txtno.Text & " ','" & txtemail.Text & "','" & txtshort.Text & "','" & upldimg.FileName & "')")
            obj.savedata("insert into AddBusi_table(Title,Url,Sub_id,Address,Area_id,Pincode,Contact_No,Email_id,Short_Descr,Image) values('" & txttitle.Text & "' ,'" & txturl.Text & "' , '  " & drpsub.SelectedValue & " ','" & txtadd.Text & "'," & drparea.SelectedValue & ",'" & txtpin.Text & "',' " & txtno.Text & " ' ,'" & txtemail.Text & " ','" & txtshort.Text & " ','" & fname & " ')")
            Response.Write(<script> alert('data saved successfully')</script>)

        End If

        '  End If
        txttitle.Text = ""
        txturl.Text = ""
        txtemail.Text = ""
        txtadd.Text = ""
        txtno.Text = ""
        txtshort.Text = ""
        txtpin.Text = ""
        drpsub.SelectedValue = "Select SubCategory"
        drparea.SelectedValue = "Select Area"
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (IsPostBack = False) Then
            drpsub.DataSource = obj.calldata("select * from SubCategory_table")
            drpsub.DataTextField = "SubCategory_Name"
            drpsub.DataValueField = "SubCategory_id"
            drpsub.DataBind()
            drpsub.Items.Insert("0", "Select SubCategory")

            drparea.DataSource = obj.calldata("select * from Area_table ")
            drparea.DataTextField = "Area_Name"
            drparea.DataValueField = "Area_id"
            drparea.DataBind()
            drparea.Items.Insert(0, "Select Area")
            txttitle.Text = ""
            txturl.Text = ""
            txtemail.Text = ""
            txtadd.Text = ""
            txtno.Text = ""
            txtshort.Text = ""
            txtpin.Text = ""
            drpsub.SelectedValue = "Select SubCategory"
            drparea.SelectedValue = "Select Area"
        End If
       
    End Sub

    Protected Sub btnreset_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnreset.Click
        txttitle.Text = ""
        txturl.Text = ""
        txtemail.Text = ""
        txtadd.Text = ""
        txtno.Text = ""
        txtshort.Text = ""
        txtpin.Text = ""
    End Sub

   
End Class
