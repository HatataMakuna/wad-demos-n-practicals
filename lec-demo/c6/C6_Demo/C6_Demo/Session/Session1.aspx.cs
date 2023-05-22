using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Session
{
    public partial class Session1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if using session.abandon(), all session clear
            //if using session.remove(sessionName), only the particular session is removed.
            if (Session["name"] != null)
            {
                txtName.Text = Session["name"].ToString();
            }
        
            
        }

        protected void btnEmpty_Click(object sender, EventArgs e)
        {
            Session["BasketCount"] = 0;
            lblCount.Text = Session["BasketCount"].ToString();
        }


        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (txtName.Text == "")
            {
                lblName.Text = "Please fill up name before proceed.";
            }
            else
            {
                Session["name"] = txtName.Text;
                if (Session["BasketCount"] != null)
                {

                    int count = (int)Session["BasketCount"];
                    count++;
                    Session["BasketCount"] = (object)count; // with or without (object) casting
                    //     also workable, since any type can be
                    //    assigned to object but be careful,
                    //    because NOT vice versa//    // also workable, since any type can be

                }
                else
                {
                    Session["BasketCount"] = 1;
                }
                lblCount.Text = Session["BasketCount"].ToString();
            }
        }

        protected void btnNextPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("session2.aspx");
        }
    }
}