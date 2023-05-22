using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
namespace C4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            // to import namespace using system.data.sqlclient and using system.configuration
            SqlConnection conn;
            string strCon = ConfigurationManager.ConnectionStrings["AConnectionString"].ConnectionString;


            conn = new SqlConnection(strCon);
            conn.Open();

            string strID = txtID.Text;
            string strPwd = txtPwd.Text;


            // sql statement using + (string concatenation) - expose to sql injection
            // string strRetrieve = "Select * from Products Where ProdID='" + strProdIDSearch + "'";
            //Select* from Products Where ProdID =( 'P003' OR '1' = '1');


            // parameterized query
            //string strRetrieve = "Select * from Products Where ProdID=@pID";
            //string strRetrieve = "Select Count(*) as Number from Users where ID=@id and Password=@pwd";


            string strRetrieve = "Select * from Users where ID=@id and Password=@pwd";

            SqlCommand cmdRetrieve;

            cmdRetrieve = new SqlCommand(strRetrieve, conn);
            cmdRetrieve.Parameters.AddWithValue("@id", strID);
            cmdRetrieve.Parameters.AddWithValue("@pwd", strPwd);

            // int Number = (int)cmdRetrieve.ExecuteScalar();

            SqlDataReader dtrUsers = cmdRetrieve.ExecuteReader();

            string strMsg = "";
            if (dtrUsers.HasRows)
            {

                while (dtrUsers.Read())
                {
                    // txtProdID.Text = dtrUsers["ID"].ToString();
                    strMsg = "Welcome " + dtrUsers["ID"].ToString();

                }
            }

            else
            {
                strMsg = "Please try again!";
            }
                lblMsg.Text = strMsg;

           
                //lblMsg.Text = "Number of Records =" + Number.ToString();


            }
    }
}