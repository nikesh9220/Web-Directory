
Imports System.Data
Imports System.Data.SqlClient
Imports Microsoft.VisualBasic


Public Class Class1
    Dim con As New SqlConnection
    Public Sub New()
        con.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\nikes\Documents\Visual Studio 2010\WebSites\WebSite1\App_Data\Database1.mdf;Integrated Security=True;User Instance=True;Integrated Security=True;Connect Timeout=30;User Instance=True"
    End Sub
    Public Sub savedata(ByVal str As String)
        Dim cmd As New SqlCommand(str, con)
        con.Open()
        cmd.ExecuteNonQuery()
        con.Close()


    End Sub
    Public Function calldata(ByVal str As String) As DataSet
        Dim adp As New SqlDataAdapter(str, con)
        Dim ds As New DataSet
        adp.Fill(ds)
        Return ds

    End Function
End Class