using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Session
{
    public partial class SessionEx1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strSSID = Session.SessionID.ToString();
            Response.Write("SSID = " + strSSID);

            if (Session["BasketCount"] != null)
            {
                Response.Write("<br/> BasketCount = " + Session["BasketCount"].ToString());
            }

            
            if (Session["BasketCount1"] != null)
            {
                Response.Write("<br/> BasketCount1 = " + Session["BasketCount1"].ToString());
            }
            
           
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (Session["BasketCount"] != null)
            {
                int i = (int)Session["BasketCount"];
                i++;
                Session["BasketCount"] = (object) i;
            }
            else{
                Session["BasketCount"] = 1;

            }
            lblCount.Text = Session["BasketCount"].ToString();
        }

        protected void btnEmpty_Click(object sender, EventArgs e)
        {
            Session["BasketCount"] = 0;
            lblCount.Text = Session["BasketCount"].ToString();
        }

        protected void btnNextPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("SessionEx2.aspx");
        }
    }
}

 

       