using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_manage_P_Details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void FormView1_ItemDeleted(object sender, FormViewDeletedEventArgs e)
    {
        GridView1.DataBind();
    }
    protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        GridView1.DataBind();
    }
    protected void FormView1_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
    {
        GridView1.DataBind();
    }
    protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}