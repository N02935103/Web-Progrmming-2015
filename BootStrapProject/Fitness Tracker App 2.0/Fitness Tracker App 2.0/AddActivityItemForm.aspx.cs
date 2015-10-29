using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fitness_Tracker_App_2._0
{
    public partial class AddActivityItemForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitButton_onclick(object sender, EventArgs e)
        {
            var activityItems = (ArrayList)Session["ActivityItems"];

            var activityName = ActivityName.Value;
            var startTime = Convert.ToDateTime(StartTime.Value);
            var endTime = Convert.ToDateTime(EndTime.Value);
            var duration = endTime.Subtract(startTime);
            var time = ActivityTime.Value;

            activityItems.Add(new ArrayList { activityName, startTime, endTime, duration, time });
            Session["Activityitems"] = activityItems;
            Response.Redirect("~/ActivityTracker");
        }
    }
}