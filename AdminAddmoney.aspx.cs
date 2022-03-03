using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdminAddmoney : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null) {
            Response.Redirect("Home.aspx");
        }
        
    }

    protected void popupalert(string message)
    { 
        ScriptManager.RegisterClientScriptBlock(this,this.GetType(), "Indian Bank","alert('"+message+"')",true);
    }

    protected void deposit_Click(object sender, EventArgs e)
    {
        //SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\chirag\MY PROJECT\MyBankwebsite\App_Data\Bank.mdf;Integrated Security=True");
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Bankdb"].ConnectionString);
        SqlCommand cmd = new SqlCommand("select Opening_Balance from Acc_info where Acc_No='" + AccountNo.Text + "'", con);
        SqlDataReader rd;
        int amount;

        con.Open();
        rd = cmd.ExecuteReader();

        if (rd.Read())
        {
            con.Close();
            con.Open();
            amount = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            amount = amount + Convert.ToInt32(Amount.Text);
            con.Open();
            cmd.CommandText = "update Acc_info set Opening_Balance='" + amount.ToString() + "' where Acc_no='" + AccountNo.Text + "'";
            cmd.ExecuteReader();
            con.Close();
            con.Open();
            cmd.CommandText = "insert into tran_history(acc_no,withdrawn,deposited,time) values('" + AccountNo.Text + "','0','" + Amount.Text + "','" + DateTime.Now.ToString() + "')";
            cmd.ExecuteReader();
            con.Close();
            popupalert("Transaction succesfull");
            AccountNo.Text = "";
            Amount.Text = "";
        }
        else
        {
            con.Close();
            popupalert("Invalid Account Number");
            clear.Text = DateTime.Now.ToString();
        }
    }
    protected void clear_Click(object sender, EventArgs e)
    {
        AccountNo.Text = "";
        Amount.Text = "";
    }
    
}