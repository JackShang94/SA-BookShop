using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class UserInformation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.IsAuthenticated)
        {
            //Label1.Text = Context.User.Identity.Name;
            Response.Write(Context.User.Identity.Name);
        }
        else
        {
            Response.Redirect("/login.aspx");
        }
    }
}