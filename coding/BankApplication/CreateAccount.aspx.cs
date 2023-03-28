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
    public partial class CreateAccount1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnectionString"].ConnectionString);
        SqlCommand cmd;
        SqlDataAdapter da;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                BindBranch();
            }

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("INSERT_INTO_BANK_TABLES", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@name", txtName.Text);
            cmd.Parameters.AddWithValue("@username", txtRUserName.Text);
            cmd.Parameters.AddWithValue("@password", txtRPassword.Text);
            cmd.Parameters.AddWithValue("@phone", txtMobile.Text);
            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@dob", txtDob.Text);
            cmd.Parameters.AddWithValue("@gender", ddlgender.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@address", txtaddress.Text);
            cmd.Parameters.AddWithValue("@branchId", ddlBranch.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@accType", ddlAccounType.SelectedItem.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Registration Successful')</script>");
        }
        protected void BindBranch()
        {
            con.Open();
            cmd = new SqlCommand("Pbranch", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.ExecuteReader();
            con.Close();
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            ddlBranch.DataTextField = "Name";
            ddlBranch.DataValueField = "Id";
            ddlBranch.DataSource = dt;
            ddlBranch.DataBind();
            ddlBranch.Items.Insert(0, "-SELECT-");
        }
    }
}