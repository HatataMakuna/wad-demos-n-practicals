using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Chap4
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
          


        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            SqlConnection conn;
            string strCon = ConfigurationManager.ConnectionStrings["AConnectionString"].ConnectionString;


            conn = new SqlConnection(strCon);
            conn.Open();

            string strProdIDSearch;
            strProdIDSearch = txtProdID.Text;

            // sql statement using + (string concatenation) - expose to sql injection
            // string strRetrieve = "Select * from Products Where ProdID='" + strProdIDSearch + "'";
            //Select* from Products Where ProdID =( 'P003' OR '1' = '1');


            // parameterized query
            //string strRetrieve = "Select * from Products Where ProdID=@pID";
            string strRetrieve = "Select Count(*) as Number from Products";
           
            
            SqlCommand cmdRetrieve;

            cmdRetrieve = new SqlCommand(strRetrieve,conn);

            int Number = (int) cmdRetrieve.ExecuteScalar();
            lblMsg.Text = "Number of Records =" + Number.ToString();


            //cmdRetrieve.Parameters.AddWithValue("@pID", strProdIDSearch);

           // SqlDataReader drProducts;
           //drProducts = cmdRetrieve.ExecuteReader();

            //if (drProducts.HasRows)
            //{

            //    while (drProducts.Read())
            //    {
            //       // txtProdID.Text = drProducts["ProdID"].ToString();
            //        txtProdName.Text = drProducts["ProdName"].ToString();
            //        txtQuantity.Text = drProducts["Quantity"].ToString();
            //    }

            //}
            //else
            //{
            //    txtProdName.Text = "";
            //    txtQuantity.Text = "";
            //}



        }
    }
}