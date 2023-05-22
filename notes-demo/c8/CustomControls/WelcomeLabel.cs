using System;
using System.ComponentModel;
using System.Security.Permissions;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

/// <summary>
/// Source: MSDN
/// ASP.NET
/// Walkthrough: Developing and Using a Custom Server Control
/// http://msdn.microsoft.com/en-us/library/yhzc935f.aspx
/// </summary>
/// 
namespace Samples.AspNet.CS.Controls
{
    [
    AspNetHostingPermission(SecurityAction.Demand,
        Level = AspNetHostingPermissionLevel.Minimal),
    AspNetHostingPermission(SecurityAction.InheritanceDemand,
        Level = AspNetHostingPermissionLevel.Minimal),
    DefaultProperty("Text"),
    ToolboxData("<{0}:WelcomeLabel runat=\"server\"> </{0}:WelcomeLabel>")
    ]
    public class WelcomeLabel : Label
    {

        [
        Bindable(false),
        Category("Appearance"),
        Description("The text to use if the user is not authenticated."),
        DefaultValue(""),
        Localizable(true)
        ]
        public string NameForAnonymousUser
        {
            get
            {
                string s = (string)ViewState["NameForAnonymousUser"];
                return (s == null) ? String.Empty : s;
            }
            set
            {
                ViewState["NameForAnonymousUser"] = value;
            }
        }


        protected override void RenderContents(HtmlTextWriter writer)
        {
            writer.WriteEncodedText(Text);
            if (Context != null)
            {
                string s = Context.User.Identity.Name;
                if (s != null && s != String.Empty)
                {
                    string[] split = s.Split('\\');
                    int n = split.Length - 1;
                    if (split[n] != String.Empty)
                    {
                        writer.Write(", ");
                        writer.Write(split[n]);
                    }
                }
                else
                {
                    if (NameForAnonymousUser != String.Empty)
                    {
                        writer.Write(", ");
                        writer.Write(NameForAnonymousUser);
                    }
                    else
                    {
                        writer.Write("!");
                    }
                }
            }
        }
    }
}
