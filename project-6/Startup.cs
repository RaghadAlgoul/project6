using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(project_6.Startup))]
namespace project_6
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
