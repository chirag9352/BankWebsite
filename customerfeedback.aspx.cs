using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class customerfeedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null)
        {
            Response.Redirect("Home.aspx");
        }
     
    }
    protected void popupalert(string message)
    {
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Alert Message", "alert('" + message + "')", true);
    }
    protected void send_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        popupalert("Message sent");
    }
}