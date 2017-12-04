using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        BusinessLogic bl = new BusinessLogic();
        if (UserName.Text!="" && Password.Text!="" && EmailAddress.Text != "" && TextBox1.Text !="" && Address.Text != "") {
            if (Password.Text == ConfirmPassword.Text)
            {
                string RegexStr = @"\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*";
                if (Regex.IsMatch(EmailAddress.Text, RegexStr))
                {
                    Boolean mess = bl.CreateAccount(UserName.Text, Password.Text, EmailAddress.Text, TextBox1.Text, Address.Text);
                    if (mess)
                    {
                        Response.Write("<script>alert('successfully!')</script>");
                        Response.Redirect("/Index.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('exist')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('the format of email is incorrect')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('twice password must be same')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('please finish all empty')</script>");
        }

        //
    }
}