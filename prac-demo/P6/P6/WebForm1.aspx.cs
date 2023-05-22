using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace P6
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["Theme"] != null)
            {
                Session["SelectedCss"] = Request.Cookies["Theme"].Value;
            }

            lblVisitor.Text = Application["noOfVisitor"].ToString();
            lblTime.Text = Session["time"].ToString();  
        }

        protected void btnApply_Click(object sender, EventArgs e)
        {
            Session["SelectedCss"] = ddlTheme.SelectedValue;
            // selectedvalue = css/Standard.css or css/Special.css
            chkRemember_CheckedChanged(sender, e);
        }

        protected void chkRemember_CheckedChanged(object sender, EventArgs e)
        {
            // if checked -> add cookie to store user's preference 
            // if unchecked -> delete cookie

            if (chkRemember.Checked) {

                HttpCookie myCookie = new HttpCookie("Theme", ddlTheme.SelectedValue);
                Response.Cookies.Add(myCookie);
                myCookie.Expires = DateTime.Now.AddDays(7);

            }
            else
            {
                // delete cookie
                Response.Cookies["Theme"].Expires= DateTime.Now.AddDays(-1);
            }

        }

        protected void LBtnNext_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm2.aspx");
        }
    }
}