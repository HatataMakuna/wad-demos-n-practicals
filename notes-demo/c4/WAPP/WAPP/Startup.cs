using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WAPP.Startup))]
namespace WAPP
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
