using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
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

                var label = new Label();
                label.Text = "  " + count.ToString();

                var editButton = new Button();
                editButton.Text = "Edit";
                editButton.Attributes.Add("class", "btn btn-info btn-xs");
                editButton.ID = "EditButton|" + count;
                editButton.Click += EditButton_Click;

                var deleteButton = new Button();
                deleteButton.Text = "Remove";
                deleteButton.Attributes.Add("class", "btn btn-danger btn-xs");
                deleteButton.ID = "DeleteControl|" + count++;
                deleteButton.Click += DeleteButton_Click;

                cid.Controls.Add(editButton);
                cid.Controls.Add(deleteButton);
                cid.Controls.Add(label);
                r.Cells.Add(cid);

                TableCell cName = new TableCell();
                cName.Text = currentItem[0] as string;
                r.Cells.Add(cName);

                TableCell cTime = new TableCell();
                cTime.Text = currentItem[3].ToString();
                r.Cells.Add(cTime);

                TableCell cCalories = new TableCell();
                cCalories.Text = currentItem[4].ToString();
                r.Cells.Add(cCalories);

                totalCalories += Convert.ToDouble(currentItem[4]);

                CalorieTable.Rows.Add(r);
            }

            TotalCaloriesLabel.InnerText = "Total Calorie Intake: " + totalCalories;
        }

        private void EditButton_Click(object sender, EventArgs e)
        {
            var button = sender as Button;
            var split = button.ID.Split('|');
            var index = Convert.ToInt32(split[1]) - 1;
            var intakeItems = (ArrayList)Session["IntakeItems"];
            var item = intakeItems[index];
            Session["EditFoodItem"] = item;
            Response.Redirect("~/UpdateFoodItemForm.aspx");
        }

        private void DeleteButton_Click(object sender, EventArgs e)
        {
            var button = sender as Button;
            var split = button.ID.Split('|');
            var index = Convert.ToInt32(split[1]) - 1;
            var intakeItems = (ArrayList)Session["IntakeItems"];
            intakeItems.RemoveAt(index);
            Session["IntakeItems"] = intakeItems;
            Response.Redirect("~/CalorieTracker.aspx");
        }

        protected void AddFoodItemButton_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("~/AddFoodItemForm");
        }
    }
}