using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class HomeMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void loginbutton_Click(object sender, EventArgs e)
    {
        
        //SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\chirag\MY PROJECT\MyBankwebsite\App_Data\Bank.mdf;Integrated Security=True");
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Bankdb"].ConnectionString);
        SqlCommand cmd = new SqlCommand("select password from login where username='" + username.Text + "' and password='"+password.Text+"'", con);
        SqlDataReader rd;
        con.Open();
        rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            Session["name"] = username.Text;
            loginfail.Visible = false;

            if ((username.Text == "chirag") || (username.Text == "harsh"))
            {
                username.Text = "";
                Response.Redirect("AdminHome.aspx");
            }
            else
            {
                Response.Redirect("CustomerProfile.aspx");
            }
        }
        else
        {
            loginfail.Visible = true;
            
        }
        
        con.Close();

    }
}
