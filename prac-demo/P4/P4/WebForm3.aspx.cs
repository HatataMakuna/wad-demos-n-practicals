using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


namespace P4
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            // need to get connectionstring path from web.config file and 
            // open the connection to db

            SqlConnection con;
            string strCon = 
                ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            con = new SqlConnection(strCon);
            con.Open(); 

            // write sql statement
            string strSelect = "Select SUM((UnitPrice*Quantity) * (1-Discount))" +
                " as [Total Price] from [Order Details]" +
                " Inner Join Orders" +
                " ON Orders.OrderID = [Order Details].OrderID" +
                " Where Orders.EmployeeID=@empID and YEAR(Orders.Orderdate)=@Yr";

            // need sqlcommand to execute sql query
            SqlCommand cmdSelect = new SqlCommand(strSelect, con);
            cmdSelect.Parameters.AddWithValue("@empID", ddlName.SelectedValue.ToString());
            cmdSelect.Parameters.AddWithValue("@Yr", rblYear.SelectedValue.ToString());

            double TP =(double)cmdSelect.ExecuteScalar();

            

            lblTitleGridView.Text = "Grand Total Sales = " + TP.ToString("C2");

            // remember to close connection 
            con.Close();

            GridView1.AutoGenerateColumns = true;
            GridView1.AutoGenerateSelectButton= true;

            // in design gridview1.datasource must be = none
            GridView1.DataSource = SqlDataSource3;
            GridView1.DataBind();   

        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

            GridView1.DataSource = SqlDataSource3;
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();  

        }
    }
}