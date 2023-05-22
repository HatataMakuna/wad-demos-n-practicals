using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chapter9_Demo
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
       //   int x;
          //  x = Convert.ToInt16(txtX.Text);
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            // int z = Convert.ToInt32("abc");
            int x, y;
            double z= 0.00;

            //try
            //{
            //    x = Convert.ToInt16(txtX.Text);
            //    y = Convert.ToInt16(txtY.Text);
            //    z = x / y;
            //    lblMsg.Text = z.ToString();
            //}

            //catch (Exception)
            //{
            //    Response.Write("X & Y must be numeric!");

            //}

            x = Convert.ToInt16(txtX.Text);
            y = Convert.ToInt16(txtY.Text);
            z = x / y;
            lblMsg.Text = z.ToString();
        }

        void Page_Error()
        {
            Response.Write("<p><h1>Sorry, there was an error:<br />");
            Response.Write(Server.GetLastError().Message + "</h1></p>");
           //Server.ClearError(); //comment this line to see the difference

        }
    }
}