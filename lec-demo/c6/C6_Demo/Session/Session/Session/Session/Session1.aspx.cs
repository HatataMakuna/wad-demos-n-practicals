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

        }

        protected void btnEmpty_Click(object sender, EventArgs e)
        {
            Session["BasketCount"] = 0;
            lblCount.Text = Session["BasketCount"].ToString();
        }


        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (Session["BasketCount"] != null)
            {
                int i = (int)Session["BasketCount"];
                i++;
                Session["BasketCount"] = (object)i; // with or without (object) casting
                // also workable, since any type can be
                // assigned to object but be careful,
                // because NOT vice versa
            }

            else
                Session["BasketCount"] = 1;
            lblCount.Text = Session["BasketCount"].ToString();

        }

        protected void btnNextPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("session2.aspx");
        }
    }
}