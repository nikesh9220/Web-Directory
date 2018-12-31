Imports System.Data
Partial Class USER_Register
    Inherits System.Web.UI.Page
    Dim obj As New Class1
     Dim ds As New dataset
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        obj.savedata("insert into Registration_table values('" & txtfname.Text & "','" & txtlname.Text & "','" & txtadd.Text & "'," & drparea.SelectedValue & ", " & txtpincode.Text & ",'" & drpgender.SelectedIndex & "', " & txtphno.Text & "," & txtmobno.Text & ", '" & txtemail.Text & "')")
        ds = obj.calldata("select max(User_id) from Registration_table")
        obj.savedata("insert into Login_table(user_name,Password,security_question,security_ans,type,User_id) values('" & txtusername.Text & "', '" & txtpass.Text & "', " & drpsecurity.SelectedValue & ",'" & txtans.Text & "','User'," & ds.Tables(0).Rows(0).Item(0).ToString() & ")")
        Response.Write(<script> alert('Registered')</script>)
        Response.Redirect("login1.aspx")
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (IsPostBack = False) Then
            drparea.DataSource = obj.calldata("select * from Area_Table")
            drparea.DataTextField = "Area_Name"
            drparea.DataValueField = "Area_id"
            drparea.DataBind()
            drparea.Items.Insert(0, "--Select Area--")

            drpsecurity.DataSource = obj.calldata("select * from Security_Table")
            drpsecurity.DataTextField = "Security_Question"
            drpsecurity.DataValueField = "Security_id"
            drpsecurity.DataBind()
            drpsecurity.Items.Insert(0, "--Select que--")
        End If
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click

    End Sub
End Class
