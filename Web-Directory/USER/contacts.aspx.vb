Imports System.Net.Mail
Partial Class USER_contacts
    Inherits System.Web.UI.Page


    Protected Sub btnsave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsave.Click
        Try
            Dim Msg As New MailMessage()
            ' Sender e-mail address.
            Msg.From = New MailAddress(txtemail.Text)
            ' Recipient e-mail address.
            Msg.[To].Add("drashti9220@gmail.com")
            Msg.Subject = txtsub.Text
            Msg.Body = txtadd.Text
            ' your remote SMTP server IP.
            Dim smtp As New SmtpClient()
            smtp.Host = "smtp.gmail.com"
            smtp.Port = 587
            smtp.Credentials = New System.Net.NetworkCredential("drashti9220@gmail.com", "Drashti9220")
            smtp.EnableSsl = True
            smtp.Send(Msg)
            'Msg = null;
            Label1.Text = "Thanks for Contact us"
            ' Clear the textbox valuess
            txtname.Text = ""
            txtsub.Text = ""
            txtadd.Text = ""
            txtemail.Text = ""
        Catch ex As Exception
            Console.WriteLine("{0} Exception caught.", ex)
        End Try
    End Sub

    


End Class
