using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fitness_Tracker_App_2._0
{
    public partial class AddFoodItemForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitButton_onclick(object sender, EventArgs e)
        {
            var intakeItems = (ArrayList)Session["IntakeItems"];

            var foodName = FoodName.Value;
            var calories = FoodCalories.Value;
            var servings = Servings.Value;
            var totalCalories = Convert.ToInt32(calories) * Convert.ToDouble(servings);
            var time = FoodTime.Value;

            intakeItems.Add(new ArrayList { foodName, time, totalCalories });
            Session["IntakeItems"] = intakeItems;
            Response.Redirect("~/CalorieTracker");
        }
    }
}