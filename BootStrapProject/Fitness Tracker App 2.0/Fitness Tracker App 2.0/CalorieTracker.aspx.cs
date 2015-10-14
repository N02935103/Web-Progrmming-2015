using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fitness_Tracker_App_2._0
{
    public partial class CalorieTracker : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var intakeItems = (ArrayList)Session["IntakeItems"];

            if (intakeItems == null)
            {
                intakeItems = new ArrayList();
                Session["IntakeItems"] = intakeItems;
            }
            var totalCalories = 0.00;
            var count = 1;
            foreach (var item in intakeItems)
            {
                var currentItem = item as ArrayList;
                TableRow r = new TableRow();
                TableCell cid = new TableCell();
                cid.Text = count++.ToString();
                r.Cells.Add(cid);
                TableCell cName = new TableCell();
                cName.Text = currentItem[0] as string;
                r.Cells.Add(cName);

                TableCell cTime = new TableCell();
                cTime.Text = currentItem[1].ToString();
                r.Cells.Add(cTime);

                TableCell cCalories = new TableCell();
                cCalories.Text = currentItem[2].ToString();
                r.Cells.Add(cCalories);

                totalCalories += Convert.ToDouble(currentItem[2]);

                CalorieTable.Rows.Add(r);
            }

            TotalCaloriesLabel.InnerText = "Total Calorie Intake: " + totalCalories;
        }

        protected void AddFoodItemButton_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("~/AddFoodItemForm");
        }
    }
}