using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UserControlDemo
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                string gender = "female";

                Control ctlControl;
                if (gender == "male") { 
                    ctlControl = LoadControl("WebUserControl1.ascx");
                }
                else { 
                    ctlControl = LoadControl("WebUserControl2.ascx");
                }
                plhControl.Controls.Add(ctlControl);
            }

            //// public variable in user control = property 
            //Label1.Text = ctlTest.PageTitle; // ID.Property
            //// public function/sub procedure in user control = method
            //ctlTest.Repeat(10); // ID.method


        }


    }
}