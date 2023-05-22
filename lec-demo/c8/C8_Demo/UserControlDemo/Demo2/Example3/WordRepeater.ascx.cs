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

namespace UserControlDemo.Demo2.Example3
{
    public partial class WordRepeater : System.Web.UI.UserControl
    {
        public string Word;// properties of usercontrol



        public void Repeat(int intNumTimes) // sub procedures = Method of the user control
        {
            int intCounter = 0;

            for (intCounter = 0; intCounter < intNumTimes; intCounter++)
            {
                Response.Write(Word + "<br>");
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}