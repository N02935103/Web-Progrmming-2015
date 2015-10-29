using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fitness_Tracker_App_2._0
{
    public partial class UpdateFoodItemForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                var item = (ArrayList)Session["EditFoodItem"];
                FoodName.Value = item[0].ToString();
                FoodCalories.Value = item[1].ToString();
                Servings.Value = item[2].ToString();
                FoodTime.Value = item[3].ToString();
            }
        }

        protected void SubmitButton_onclick(object sender, EventArgs e)
        {
            var item = (ArrayList)Session["EditFoodItem"];

            item[0] = FoodName.Value;
            item[1] = FoodCalories.Value;
            item[2] = Servings.Value;
            item[3] = FoodTime.Value; 
            item[4] = Convert.ToInt32(item[1]) * Convert.ToDouble(item[2]);

            Session["EditFoodItem"] = item;

            Response.Redirect("~/CalorieTracker");
        }
    }
}