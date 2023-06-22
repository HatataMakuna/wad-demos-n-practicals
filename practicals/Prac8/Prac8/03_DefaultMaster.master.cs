using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Net.Cache;

public partial class DefaultMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Retrieve Gender from Cookie 
        //and display different advertisement banner based on gender
        //place your code here...
        string strGender = "";

        if (Request.Cookies["Gender"] != null)
        {
            strGender = Request.Cookies["Gender"].Value;
        }
        if (strGender == "M")
        {
            Control ctrlAdvertisement;
            ctrlAdvertisement = LoadControl("male.ascx");
            contentAd.Controls.Add(ctrlAdvertisement);
        }
        else if (strGender == "F")
        {
            Control ctrlAdvertisement;
            ctrlAdvertisement = LoadControl("female.ascx");
            contentAd.Controls.Add(ctrlAdvertisement);
        }
        else
        {
            Control ctrlAdvertisement;
            ctrlAdvertisement = LoadControl("general.ascx");
            contentAd.Controls.Add(ctrlAdvertisement);
        }

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Shop.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Contact.aspx");
    }
}
