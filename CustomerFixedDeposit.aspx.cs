using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class CustomerFixedDeposit : System.Web.UI.Page
{
    string cusname;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {
            cusname = Session["name"].ToString();
        }
        else {
            Response.Redirect("Home.aspx");
        }
    }
    protected void popupalert(string message)
    {
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Alert Message", "alert('" + message + "')", true);
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        //SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\chirag\MY PROJECT\MyBankwebsite\App_Data\Bank.mdf;Integrated Security=True");
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Bankdb"].ConnectionString);
        SqlCommand cmd = new SqlCommand("select acc_no from acc_info where username='"+cusname+"'", con);
        SqlCommand cmd2 = new SqlCommand("select opening_balance from acc_info where username = '"+cusname+"'",con);
        SqlDataReader rd;
        con.Open();
        int a = Convert.ToInt32(cmd2.ExecuteScalar());
        con.Close();
        if (a >= Convert.ToInt32(Amount.Text))
        {
            con.Open();
            string acc = cmd.ExecuteScalar().ToString();
            con.Close();
            
            con.Open();
            cmd.CommandText = "select amount from fixed_deposit where acc_no='"+acc+"'";
            int b = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();

            con.Open();
            int d = Convert.ToInt32(Amount.Text)+b;
            cmd.CommandText = "update fixed_deposit set amount = '" + d.ToString() + "',time='"+DateTime.Now.ToString()+"' where acc_no='" + acc + "'";
            cmd.ExecuteNonQuery();
            con.Close();

            con.Open();
            a = a-Convert.ToInt32(Amount.Text);
            cmd.CommandText = "update acc_info set opening_balance='"+a.ToString()+"' where acc_no='"+acc+"'";
            cmd.ExecuteNonQuery();
            con.Close();
            
            popupalert("Successfull!");
            Amount.Text = "";
            RadioButton1.Checked = false;
            RadioButton2.Checked = false;
        }
        else {
            popupalert("You dont have that much amount!");
        }
    }
    protected void clear_Click(object sender, EventArgs e)
    {
        Amount.Text = "";
        RadioButton1.Checked = false;
        RadioButton2.Checked = false;
    }
}