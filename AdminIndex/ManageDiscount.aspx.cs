using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ManageDiscount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Submit_Click(object sender, EventArgs e)
    {
        using (BookshopEntities1 bl = new BookshopEntities1())
        {
            //Discount ds = new global::Discount();
            //ds.StartDate = StartMonth.TemplateContr
        }
    }
}