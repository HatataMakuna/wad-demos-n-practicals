using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ErrorDemo
{
    public partial class Debug : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnCal_Click(object sender, EventArgs e)
        {
            int a = Convert.ToInt32(TextBox1.Text);
            int b = Convert.ToInt32(TextBox2.Text);
            int answer = sum(a, b);
            Label1.Text = DateTime.Now.Month.ToString();
            //Label1.Text = answer.ToString();
        }

        private int sum(int no1, int no2)
        {
            int res = no1 + no2;
            return res;
        }
    }
}