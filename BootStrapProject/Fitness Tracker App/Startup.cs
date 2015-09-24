using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Fitness_Tracker_App.Startup))]
namespace Fitness_Tracker_App
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
