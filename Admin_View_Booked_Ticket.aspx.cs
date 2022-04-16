using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_View_Booked_Ticket : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void FormView1_ItemDeleted(object sender, FormViewDeletedEventArgs e)
    {
        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
    {

    }
    protected void EditButton_Click(object sender, EventArgs e)
    {

    }
    protected void FormView1_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
    {
        GridView1.DataBind();
    }
    protected void FormView1_ItemDeleted1(object sender, FormViewDeletedEventArgs e)
    {
        GridView1.DataBind();
    }
}