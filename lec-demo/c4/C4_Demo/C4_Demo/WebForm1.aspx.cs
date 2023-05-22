using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace C4_Demo
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            con = new SqlConnection(strCon);
            con.Open();

            string strInsert = "";
            strInsert = "Insert Into Products (ProdId, ProdName, Quantity) Values (@pid, @name, @quantity)";

            //string strProdID, strProdName;
            //int intQuantity;

            //strProdID = txtProdID.Text;
            //strProdName = txtProdName.Text;
            //intQuantity = int.Parse(txtQuantity.Text);

            SqlCommand cmdInsert;
            cmdInsert = new SqlCommand(strInsert, con);


           cmdInsert.Parameters.AddWithValue("@pid", txtProdID.Text);
           cmdInsert.Parameters.AddWithValue("@name", txtProdName.Text);
           cmdInsert.Parameters.AddWithValue("@quantity", int.Parse(txtQuantity.Text));

            int intInsertStatus = cmdInsert.ExecuteNonQuery();
            // executenonquery = return noOfRows (records) that are affected in the database table 

            if (intInsertStatus > 0)
            {
                lblMsg.Text = "Insert Successfully.";
            }
            else
            {
                lblMsg.Text = "Insertion Failed.";
            }

            con.Close();







        }
    }
}