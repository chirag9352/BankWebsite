using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class CustomerProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {
            string cusname = Session["name"].ToString();
            //SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\chirag\MY PROJECT\MyBankwebsite\App_Data\Bank.mdf;Integrated Security=True");
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Bankdb"].ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            con.Open();
            cmd.CommandText = "select concat(first_name,' ',last_name) as name from Cus_info where username = '" + cusname + "'";
            name.Text = cmd.ExecuteScalar().ToString();
            con.Close();
            con.Open();
            cmd.CommandText = "select father_name from Cus_info where username = '" + cusname + "'";
            fathername.Text = cmd.ExecuteScalar().ToString();
            con.Close();
            con.Open();
            cmd.CommandText = "select phone from Cus_info where username = '" + cusname + "'";
            phoneno.Text = cmd.ExecuteScalar().ToString();
            con.Close();
            con.Open();
            cmd.CommandText = "select acc_no from acc_info where username = '" + cusname + "'";
            accountno.Text = cmd.ExecuteScalar().ToString();
            con.Close();
            con.Open();
            cmd.CommandText = "select opening_balance from acc_info where username = '" + cusname + "'";
            balance.Text = cmd.ExecuteScalar().ToString();
            con.Close();
            con.Open();
            cmd.CommandText = "select amount from fixed_deposit where acc_no= '" + accountno.Text + "'";
            Fdamount.Text = cmd.ExecuteScalar().ToString();
            con.Close();
            username.Text = cusname;
        }
        else {
            Response.Redirect("Home.aspx");
        }
    }
}