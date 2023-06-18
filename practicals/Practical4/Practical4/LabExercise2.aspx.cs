using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical4
{
    public partial class LabExercise2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            // Retrieve the selected first name, last name and year
            string firstName = ddlFirstName.SelectedValue;
            string lastName = ddlLastName.SelectedValue;
            string year = rblYear.SelectedValue;

            // Query the database
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                con.Open();
                decimal grandTotalSales = 0;

                using (SqlCommand command = new SqlCommand("SELECT Orders.OrderID, Orders.OrderDate FROM Orders INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID WHERE (Employees.FirstName = @FirstName) AND (Employees.LastName = @LastName) AND (DATEPART(YEAR, Orders.OrderDate) = @Year)", con))
                {
                    // Set the parameter values
                    command.Parameters.AddWithValue("FirstName", firstName);
                    command.Parameters.AddWithValue("LastName", lastName);
                    command.Parameters.AddWithValue("Year", year);

                    // Create a SqlDataAdapter to fetch the data from the command
                    SqlDataAdapter adapter = new SqlDataAdapter(command);

                    // Create a DataTable to hold the fetched data
                    DataTable dataTable = new DataTable();

                    // Fill the DataTable with the data from the command
                    adapter.Fill(dataTable);

                    // Bind the DataTable to the GridView
                    GridView1.DataSource = dataTable;
                    GridView1.DataBind();

                    using (SqlCommand command2 = new SqlCommand("SELECT [Order Details].UnitPrice * [Order Details].Quantity AS Sales FROM [Order Details] INNER JOIN Orders ON [Order Details].OrderID = Orders.OrderID INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID WHERE (Employees.FirstName = @FirstName) AND (Employees.LastName = @LastName) AND (DATEPART(YEAR, Orders.OrderDate) = @Year)", con))
                    {
                        command2.Parameters.AddWithValue("FirstName", firstName);
                        command2.Parameters.AddWithValue("LastName", lastName);
                        command2.Parameters.AddWithValue("Year", year);

                        SqlDataReader reader = command2.ExecuteReader();
                        while (reader.Read())
                        {
                            // Retrieve the value of the "Sales" column from the reader
                            decimal sales = Convert.ToDecimal(reader["Sales"]);

                            // Add the sales value to the total
                            grandTotalSales += sales;
                        }
                        reader.Close();
                    }

                    // Display the selected staff name and year in the label, as well as display the grand total sales
                    lblTitleGridView.Text = "Sales Order by " + firstName + " " + lastName + " in the year of " + year + ". " +
                        "Grand Total Sales:$" + grandTotalSales.ToString("0.00");
                }
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Retrieve the selected OrderId from the GridView
            string orderId = (GridView1.SelectedDataKey.Value).ToString();

            // Set the OrderId as a parameter for the SqlDataSource
            // product name - Products.ProductName
            // unit price - Order Details.UnitPrice
            // quantity - Order Details.Quantity
            // discount - Order Details.Discount
            // sales - Order Details.UnitPrice x Order Details.Quantity

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                con.Open();
                decimal totalSales = 0;

                using (SqlCommand command = new SqlCommand("SELECT Products.ProductName, [Order Details].UnitPrice, [Order Details].Discount, [Order Details].Quantity, [Order Details].UnitPrice * [Order Details].Quantity AS Sales FROM [Order Details] INNER JOIN Products ON [Order Details].ProductID = Products.ProductID WHERE [Order Details].OrderID = @OrderID", con))
                {
                    command.Parameters.AddWithValue("OrderID", orderId);

                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    DataTable dataTable = new DataTable();
                    adapter.Fill(dataTable);
                    DataList1.DataSource = dataTable;
                    DataList1.DataBind();

                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        // Retrieve the value of the "Sales" column from the reader
                        decimal sales = Convert.ToDecimal(reader["Sales"]);

                        // Add the sales value to the total
                        totalSales += sales;
                    }
                    // Close the reader
                    reader.Close();

                    // Assign the total sales value to the lblOldSales label
                    lblOldSales.Text = "Total Sales for <b>OrderId:" + orderId + "=$" + totalSales.ToString("0.00") + "</b>";
                }
            }
        }
    }
}