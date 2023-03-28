using BankApplication.Models;
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
    public partial class AccountSummary : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public List<Statemomentum> tranrecord(DateTime startDate, DateTime endDate)
        {
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnectionString"].ConnectionString);
            con.Open();

            SqlDataAdapter _da = new SqlDataAdapter("Select T.TranDate, T.TranType, T.Amount From Transactions T Inner Join Account A On T.AccId = A.Id Inner Join Customer C On A.CustId = C.Id Where C.Username = " + $" '{Session["loginSession"]}' and T.TranDate Between CAST('{Convert.ToDateTime(startDate).ToString("yyyy-MM-dd")}' as date) And CAST('{Convert.ToDateTime(endDate).ToString("yyyy-MM-dd")}' as date)", con);
            DataTable dt = new DataTable();
            _da.Fill(dt);

            List<Statemomentum> st = new List<Statemomentum>();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                Statemomentum s = new Statemomentum();
                s.TranDate = Convert.ToDateTime(dt.Rows[i]["TranDate"]);
                s.TranType = dt.Rows[i]["TranType"].ToString();
                s.Amount = Convert.ToInt32(dt.Rows[i]["Amount"]);
                st.Add(s);
            }
            con.Close();

            return st;
        }

        protected void btnSubmitStatement_Click(object sender, EventArgs e)
        {
            Statement st = new Statement();
            st.StartDate = Convert.ToDateTime(txtStartDate.Text);
            st.EndDate = Convert.ToDateTime(txtEndDate.Text);
            if (st.StartDate >= Convert.ToDateTime("01-Jan-0002") && st.EndDate <= DateTime.Now)
            {
                st.StatementList = tranrecord(st.StartDate, st.EndDate);
                gvStatement.DataSource = st.StatementList;
                gvStatement.DataBind();

                if (gvStatement.Rows.Count>0)
                {
                    //Required for jQuery DataTables to work.
                    gvStatement.UseAccessibleHeader = true;
                    gvStatement.HeaderRow.TableSection = TableRowSection.TableHeader;
                }
            }
            else
            {
                Response.Write("<script>alert('Please Enter valid Dates !')</script>");
            }
        }
    }
}