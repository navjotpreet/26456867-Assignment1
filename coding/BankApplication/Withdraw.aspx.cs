using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BankApplication
{
    public partial class Withdraw : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnectionString"].ConnectionString);
        SqlCommand cmd;
        SqlDataAdapter da;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["loginSession"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
            if (!IsPostBack)
            {
                FillFormValue();
            }

        }

        protected void FillFormValue()
        {
            if (Session["loginSession"] != null)
            {
                con.Open();
                da = new SqlDataAdapter("SELECT * FROM Customer C Inner Join Account A on C.Id = A.CustId WHERE c.Username = " + $" '{Session["loginSession"]}'", con);
                dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    txtAccountHolderName.Text = Convert.ToString(dt.Rows[0]["Name"]);
                    txtAccountNumber.Text = Convert.ToString(dt.Rows[0]["AccNumber"]);
                }
                con.Close();
            }
            else
            {
                Response.Redirect("~/Login.aspx");
            }
        }

        protected void btnWithdraw_Click(object sender, EventArgs e)
        {
            if (txtAmount.Text != "0")
            {
                con.Open();
                cmd = new SqlCommand("PWithdraw", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Username", Session["loginSession"]);
                cmd.Parameters.AddWithValue("@Amount", Convert.ToInt32(txtAmount.Text));
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Amount Withdraw Successfully')</script>");
                txtAmount.Text = string.Empty;
            }
            else
            {
                Response.Write("<script>alert('Invailid Amount')</script>");
            }

        }

    }
}