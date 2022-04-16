
Partial Class TicketBooking
    Inherits System.Web.UI.Page

 
    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim conn As System.Data.SqlClient.SqlConnection
        Dim str1 As String
        
        Dim comm As System.Data.SqlClient.SqlCommand


        Dim i As Integer

        conn = New System.Data.SqlClient.SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
        conn.Open()
        str1 = "insert into booked(name,ticketdate,type,address,place) values('" + TextBox3.Text + "','" + DropDownList2.SelectedValue.ToString() + "','" + DropDownList1.SelectedValue + "','" + TextBox6.Text + "','" + TextBox7.Text + "')"

        'select * from admin where username like 'mark' and password like 'henry'
        comm = New System.Data.SqlClient.SqlCommand(str1, conn)

        i = comm.ExecuteNonQuery()
        If (i = 1) Then
            TextBox3.Text = ""

            Label1.Text = "Your request sent to admin"
            Label1.Visible = True
            TextBox6.Text = ""


        End If

        comm.Dispose()
        conn.Close()


    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
End Class
