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
    public partial class ChangePassword : System.Web.UI.Page
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

        }

        protected void btnChangePassword_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand("select * from Customer where Username='" + Session["loginSession"].ToString() + "'", con);
            da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                con.Open();
                string str = "update Customer set Password=@Password where Username='" + Session["loginSession"].ToString() + "'";
                cmd = new SqlCommand(str, con);
                cmd.Parameters.AddWithValue("@Password", txtNewPassword.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Password changed Successfully')</script>");
            }
            else
            {
                Response.Write("<script>alert('Please enter correct Current password')</script>");
            }

        }
    }
}