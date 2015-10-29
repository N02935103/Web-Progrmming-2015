using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fitness_Tracker_App_2._0
{
    public partial class UpdateActivityItemForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                var item = (ArrayList)Session["EditActivityItem"];
                ActivityName.Value = item[0].ToString();
                StartTime.Value = Convert.ToDateTime(item[1]).TimeOfDay.ToString();
                EndTime.Value = Convert.ToDateTime(item[2]).TimeOfDay.ToString();
                ActivityTime.Value = item[4].ToString();
            }
        }

        protected void SubmitButton_onclick(object sender, EventArgs e)
        {
            var item = (ArrayList)Session["EditActivityItem"];

            item[0] = ActivityName.Value;
            item[1] = StartTime.Value;
            item[2] = EndTime.Value;
            item[3] = Convert.ToDateTime(item[2]).Subtract(Convert.ToDateTime(item[1]));
            item[4] = ActivityTime.Value;

            Session["EditActivityItem"] = item;

            Response.Redirect("~/ActivityTracker");
        }
    }
}