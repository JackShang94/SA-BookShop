using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class modify : System.Web.UI.Page
{
    //protected void Page_Load(object sender, EventArgs e)
    //{
    //    //SqlConnection connection = new SqlConnection("Data Source=.;Initial Catalog=Bookshop;Integrated Security=True");
    //    //connection.Open();
    //    //SqlCommand cmd = new SqlCommand("select * from [Discount]",connection);
    //    //SqlDataReader dr = cmd.ExecuteReader();
    //    GridView1.DataSource = dr;
    //    GridView1.DataBind();
    //    connection.Close();
    //}


    //protected void Button1_Click(object sender, EventArgs e)
    //{
    //   // CompareValidator1.Enabled.ToString();
    //}

    //protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    //{
    //    if (e.CommandName == "Edit")
    //        Response.Redirect("ModifyDiscount.aspx");
    //}
    protected void OnRowEditing(object sender, GridViewEditEventArgs e)
    {
        Response.Redirect("Default2.aspx?username=" + user);
    }

}