using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BankApplication
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["loginSession"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
            string constring = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(constring);
            SqlDataAdapter _da = new SqlDataAdapter("Select A.Balance From Account A Inner Join Customer C On A.CustId = C.Id Where C.Username = " + $" '{Convert.ToString(Session["loginSession"])}'", con);
            DataTable dt = new DataTable();
            _da.Fill(dt);

            lblBalance.Text = Convert.ToString(dt.Rows[0]["Balance"]);

        }
    }
}