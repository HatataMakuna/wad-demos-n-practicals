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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
           
                SqlConnection con;
                string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

                con = new SqlConnection(strCon);
                con.Open();

                string strSearch = "";
            //   strSearch = "Select ProdName from Products where ProdID = '" + txtProdIDSearch.Text + "'";
            strSearch = "Select ProdName from Products where ProdID = @id";

        
             SqlCommand cmdSelect = new SqlCommand(strSearch, con);
            cmdSelect.Parameters.AddWithValue("@id", txtProdIDSearch.Text);


                string strProdName = cmdSelect.ExecuteScalar().ToString();
                lblMsg.Text = "Product Name: " + strProdName;

                // SqlDataReader dtrProd = cmdSelect.ExecuteReader();

                //if (dtrProd.HasRows)// has record(s)
                // {
                //     while (dtrProd.Read())
                //     {
                //         txtProdID.Text = dtrProd["ProdID"].ToString();
                //         txtProdName.Text = dtrProd["ProdName"].ToString();
                //         txtQuantity.Text = dtrProd["Quantity"].ToString();
                //     }

                // }

                con.Close();

          
            
         

           
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            con = new SqlConnection(strCon);
            con.Open();

            string strUpdate = "";
            strUpdate = "UPDATE Products SET ProdName = @name, Quantity = @q WHERE ProdID = @id; ";
            // strDelete = "DELETE FROM Produts WHERE ProdID=@id";
            string strProdID, strProdName;
            int intQuantity;

            strProdID = txtProdID.Text;
            strProdName = txtProdName.Text;
            intQuantity = int.Parse(txtQuantity.Text);

            SqlCommand cmdUpdate;
            cmdUpdate = new SqlCommand(strUpdate, con);


            cmdUpdate.Parameters.AddWithValue("@name", strProdName);
            cmdUpdate.Parameters.AddWithValue("@q", intQuantity );
            cmdUpdate.Parameters.AddWithValue("@id", strProdID);

            // cmdDelete.Parameters.AddWithValue("@id", strProdID);


            int intInsertStatus = cmdUpdate.ExecuteNonQuery();
            // executenonquery = return noOfRows (records) that are affected in the database table 

            if (intInsertStatus > 0)
            {
                lblMsg.Text = "Update Successfully.";
            }
            else
            {
                lblMsg.Text = "Update Failed.";
            }

            con.Close();
        }
    }
}