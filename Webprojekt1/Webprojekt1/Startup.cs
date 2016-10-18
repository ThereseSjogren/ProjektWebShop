using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Webprojekt1.Startup))]
namespace Webprojekt1
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
