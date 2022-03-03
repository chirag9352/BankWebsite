using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
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

    protected void transferbutton_Click(object sender, EventArgs e)
    {
        //SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\chirag\MY PROJECT\MyBankwebsite\App_Data\Bank.mdf;Integrated Security=True");
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Bankdb"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        SqlDataReader rd;
        
        con.Open();
        cmd.CommandText = "select Opening_Balance from Acc_info where Acc_no='"+senderaccount.Text+"'";
        rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            con.Close();
            con.Open();
            int senderamount = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            
            con.Open();
            cmd.CommandText = "select Opening_Balance from Acc_info where Acc_no='" + recieveraccount.Text + "'";
            rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                con.Close();
                con.Open();
                int recieveramount = Convert.ToInt32(cmd.ExecuteScalar());
                con.Close();

                if (senderamount >= Convert.ToInt32(amount.Text))
                {
                    recieveramount = recieveramount + Convert.ToInt32(amount.Text);
                    senderamount = senderamount - Convert.ToInt32(amount.Text);
                    con.Open();
                    cmd.CommandText = "update Acc_info set Opening_Balance = '" + senderamount.ToString() + "' where Acc_no='" + senderaccount.Text + "'";
                    cmd.ExecuteNonQuery();
                    con.Close();
                    con.Open();
                    cmd.CommandText = "update Acc_info set Opening_Balance = '" + recieveramount.ToString() + "' where Acc_no='" + recieveraccount.Text + "'";
                    cmd.ExecuteNonQuery();
                    con.Close();
                    con.Open();
                    cmd.CommandText = "insert into tran_history values('"+senderaccount.Text+"','"+amount.Text+"','0','"+DateTime.Now.ToString()+"')";
                    cmd.ExecuteNonQuery();
                    con.Close();
                    con.Open();
                    cmd.CommandText = "insert into tran_history values('" + recieveraccount.Text + "','0','" + amount.Text + "','" + DateTime.Now.ToString() + "')";
                    cmd.ExecuteNonQuery();
                    con.Close();
                    popupalert("Transaction Successfull!");
                    senderaccount.Text = "";
                    recieveraccount.Text = "";
                    amount.Text = "";
                }
                else {
                    popupalert("Sender do not that much amount!");
                    amount.Text = "";
                }

            }
            else {
                con.Close();
                popupalert("Reciever Account does not exist!");
            }
            
        }
        else {
            con.Close();
            popupalert("Sender Account does not exist!");
        }

    }
    protected void clear_Click(object sender, EventArgs e)
    {

    }
}