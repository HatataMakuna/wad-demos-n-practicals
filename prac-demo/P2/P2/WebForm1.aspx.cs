using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace P2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string msg="";

            foreach (ListItem lstItem in cblInterest.Items) 
            {
                if (lstItem.Selected == true) 
                { 
                    msg += lstItem.Text + "<br/>"; 
                }               

            }

            lblSelect.Text = txtName.Text + "from " + ddlProg.Text +
                "<br/> Area of Interest: " + msg;

        }

       
    }
}