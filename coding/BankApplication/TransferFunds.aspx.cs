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
    public partial class TransferFunds : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["loginSession"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }

        }

        protected void txtSend_Click(object sender, EventArgs e)
        {
            if (txtTAmount.Text != "0")
            {
                con.Open();

                //Check Valid Account Details
                SqlDataAdapter _da = new SqlDataAdapter("Select * From Customer C Inner Join Account A on C.Id = A.CustId Inner Join Branch B on A.BranchId = B.Id  Where A.AccNumber = " + $" '{txtAccountNmber.Text}' and B.IFSC = '{txtIfsc.Text}' and C.Name = '{txtAccountHolder.Text}'", con);
                DataSet ds = new DataSet();
                _da.Fill(ds);

                if (ds != null && ds.Tables[0].Rows.Count != 0)
                {
                    //Balance check
                    SqlCommand oCmd = new SqlCommand("Select Balance from Account A Inner Join Customer C on C.Id = A.CustId Where C.Username = @username", con);
                    oCmd.Parameters.AddWithValue("@username", Session["loginSession"]);
                    SqlDataReader dr = oCmd.ExecuteReader();
                    if (dr.Read())
                    {
                        int bal = Convert.ToInt32(dr["Balance"]);

                        if (bal >= Convert.ToInt32(txtTAmount.Text))
                        {
                            dr.Close();

                            SqlCommand Cmd = new SqlCommand("UPDATE_TRANSACTION", con);
                            Cmd.CommandType = CommandType.StoredProcedure;
                            Cmd.Parameters.AddWithValue("@Username", Session["loginSession"]);
                            Cmd.Parameters.AddWithValue("@AccNumber", txtAccountNmber.Text);
                            Cmd.Parameters.AddWithValue("@IFSC", txtIfsc.Text);
                            Cmd.Parameters.AddWithValue("@AccHolder", txtAccountHolder.Text);
                            Cmd.Parameters.AddWithValue("@Amount", Convert.ToInt32(txtTAmount.Text));
                            Cmd.Parameters.Add("@text", SqlDbType.Char, 500);
                            Cmd.Parameters["@text"].Direction = ParameterDirection.Output;
                            Cmd.ExecuteNonQuery();

                            if (ViewState["transfer"] == null)
                            {
                                SqlCommand cmds = new SqlCommand("ADD_TRANSACTION_RECORD", con);
                                cmds.CommandType = CommandType.StoredProcedure;
                                cmds.Parameters.AddWithValue("@Username", Session["loginSession"]);
                                cmds.Parameters.AddWithValue("@AccNumber", txtAccountNmber.Text);
                                cmds.Parameters.AddWithValue("@Amount", Convert.ToInt32(txtTAmount.Text));
                                cmds.ExecuteNonQuery();
                                Reset();
                                ViewState["transfer"] = "Transaction Successful.";
                                Response.Write("<script>alert('Transaction Successful.')</script>");
                            }
                        }
                        else
                        {
                            ViewState["transfer"] = "You don't have enough Balance !";
                            Response.Write("<script>alert('You don't have enough Balance !')</script>");
                        }
                    }

                }
                else
                {
                    ViewState["transfer"] = "Please Check User Credentials !!!";
                    Response.Write("<script>alert('Please Check User Credentials !!!')</script>");
                }

                con.Close();
            }
            else
            {
                Response.Write("<script>alert('Invailid Amount')</script>");
            }

        }
        public void Reset()
        {
            txtAccountNmber.Text = string.Empty;
            txtIfsc.Text = string.Empty;
            txtAccountHolder.Text = string.Empty;
            txtTAmount.Text = string.Empty;
        }
    }
}