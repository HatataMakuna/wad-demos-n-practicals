using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cookies1
{
    public partial class SearchHistory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {   

            if (Request.Cookies["LastSearch"] != null)
                {
                    lblSearch.Text = Request.Cookies["LastSearch"].Value;
                }
            else
                {
                    lblSearch.Text = "";
                } 
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {

        //HttpCookie cookie = new HttpCookie("LastSearch", txtSearch.Text);
        //cookie.Expires = DateTime.Now.AddDays(7);
        //Response.Cookies.Add(cookie);

        // first method, or
        HttpCookie myCookie = new HttpCookie("LastSearch");
        myCookie.Value = txtSearch.Text;
        Response.Cookies.Add(myCookie);
        myCookie.Expires = DateTime.Now.AddDays(7);
        

        // second method 
        //HttpCookie myCookie = new HttpCookie("LastSearch", txtSearch.Text);
        //myCookie.Expires = DateTime.Now.AddDays(7);
        //Response.Cookies.Add(myCookie);
       
    }
        
    }
}