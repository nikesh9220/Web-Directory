Imports System.Data

Partial Class Account_Payment
    Inherits System.Web.UI.Page
    Dim obj As New Class1
    Dim ds As New DataSet
    Dim i As Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then

            For i = 1 To 12
                drpmonth.Items.Add(i.ToString())
            Next
            For i = 1 To 31
                drpdate.Items.Add(i.ToString())
            Next
            For i = DateTime.Now.Year To DateTime.Now.Year + 10
                drpyear.Items.Add(i.ToString())
            Next
            ds = obj.calldata("select l.User_id,r.Address,c.Area_id,r.Pincode from Registration_table r,Login_table l,Area_table c,Add_Advertisement a where l.User_id=" & Session("U_ID") & " and l.User_id=r.User_id and a.ad_id=" & Request.QueryString("ad_id") & "")
            If ds.Tables(0).Rows.Count > 0 Then
                lbluname.Text = ds.Tables(0).Rows(0).Item(0).ToString()
                lbladd.Text = ds.Tables(0).Rows(0).Item(1).ToString()
                lblcity.Text = ds.Tables(0).Rows(0).Item(2).ToString()
                lblpincode.Text = ds.Tables(0).Rows(0).Item(3).ToString()
                lblamount.Text = Session("amt").ToString()
                Label1.Text = Session("name").ToString()
            End If

        End If
    End Sub

    Protected Sub btnpayment_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnpayment.Click
        Dim str As String
        str = drpmonth.SelectedValue & "/" & drpdate.SelectedValue & "/" & drpyear.SelectedValue

        obj.savedata("insert into Payment_table(advt_id,user_id,creditcard_type,creditcard_no,expire_date,security_code,amount,person_name) values(" & Request.QueryString("aid") & "," & Session("U_ID") & ",'" & drpcct.SelectedItem.Text & "'," & txtccn.Text & ",'" & str & "'," & txtsecode.Text & "," & lblamount.Text & ",'" & txtphno.Text & "')")
        Response.Write("<script>alert('Payment Done')</script>")



        'Response.Redirect("thanks.aspx")
    End Sub
End Class
