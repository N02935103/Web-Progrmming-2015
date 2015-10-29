using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Fitness_Tracker_App_2._0.Startup))]
namespace Fitness_Tracker_App_2._0
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
