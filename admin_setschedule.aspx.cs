using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
public partial class admin_setschedule : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
        conn.Open();
         string str = "insert into Schedule(date,place,time,groundname)  values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
         SqlCommand comm = new SqlCommand(str, conn);
         int i = comm.ExecuteNonQuery();
         if (i == 1)
         {
             Label2.Text= "schedule is setted";
             Label2.Visible = true;

         }
         else
         {
             Label2.Text = "failed to set";
             Label2.Visible = true;
         }

        
    }
}
