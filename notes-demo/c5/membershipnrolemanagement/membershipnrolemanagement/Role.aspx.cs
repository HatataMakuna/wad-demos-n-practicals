using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace MembershipNRoleManagement
{
    public partial class Role : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ListBoxDataBind();
                DropDownDataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Roles.CreateRole(TextBox1.Text.ToString());
            ListBoxDataBind();
            GridView1.DataSource = Roles.GetUsersInRole(DropDownList1.SelectedValue);
            GridView1.DataBind();
            DropDownDataBind();
        }

        protected void ListBoxDataBind()
        {
            ListBox1.DataSource = Roles.GetAllRoles();
            ListBox1.DataBind();
        }

        protected void DropDownDataBind()
        {
            DropDownList1.DataSource = Roles.GetAllRoles();
            DropDownList1.DataBind();
        }

        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            foreach (ListItem li in ListBox1.Items)
            {
                if (li.Selected == true)
                {
                    Roles.DeleteRole(li.ToString());
                }
            }
            ListBoxDataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            GridView1.DataSource = Roles.GetRolesForUser(DropDownList1.SelectedValue);
            GridView1.DataBind();
        }
    }
}
