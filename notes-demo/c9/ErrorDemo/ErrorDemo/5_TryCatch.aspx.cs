using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

namespace ErrorDemo
{
    public partial class _5_TryCatch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //pls make sure you have fixed the configuration error
            SqlConnection conNorthwind;
            string conString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            conNorthwind = new SqlConnection(conString);

            try
            {
                conNorthwind.Open();

            }
            catch (Exception)
            {
                Response.Write("<h3 style='color:red'>We're sorry, we are experiencing technical problems..." + "<br>");
                Response.Write("Please contact our support center: support@abc.com</h3>");


                //Response.Write("We're sorry, we are experiencing technical problems...");
                //Response.Write("<hr>");
                //Response.Write("<li> <b style='font-size:large'> Message:</b> " + objException.Message + "</li>");
                //Response.Write("<li> <b style='font-size:large'>Source: </b>" + objException.Source + "</li>");
                //Response.Write("<li> <b style='font-size:large'>Stack Trace: </b>" + objException.StackTrace + "</li>");
                //Response.Write("<li> <b style='font-size:large'>Target Site: </b> " + objException.TargetSite.Name + "</li>");

                Response.Write("<br/><hr/>Redirecting you to Default.aspx now ...");
                Response.Write("<script>setTimeout(\"window.location.href = 'Default.aspx'\",5000)</script>");
            }

            finally
            {
                conNorthwind.Close();
                //the connection is FORCED to be closed irrespective of the catch block has been raised
                //even the user is redirected to another page
            }

            //conNorthwind.Close(); 
            //this statement will not be executed if the catch block is run
            //as the user is redirected to another page

        }
    }
}