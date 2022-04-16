using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class admin_add_Participents_details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
        conn.Open();

        string str = "insert into Participents_details(name,country,prev_rank,organization,team_Name)values('"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"','"+TextBox5.Text+"')";
        SqlCommand comm = new SqlCommand(str, conn);
        int i = comm.ExecuteNonQuery();
        if (i == 1)
        {
            Label2.Text = "detials is done";
            Label2.Visible = true;
        }
        else
        {
            Label2.Text = "failed to add";
            Label2.Visible = true;
        }



    }
}