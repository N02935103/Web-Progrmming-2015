using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fitness_Tracker_App_2._0
{
    public partial class ActivityTracker : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var activityItems = (ArrayList)Session["ActivityItems"];

            if (activityItems == null)
            {
                activityItems = new ArrayList();
                Session["ActivityItems"] = activityItems;
            }
            TimeSpan totalActivity = new TimeSpan();
            var count = 1;
            foreach (var item in activityItems)
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
                cTime.Text = currentItem[4].ToString();
                r.Cells.Add(cTime);

                TableCell cDuration = new TableCell();
                cDuration.Text = currentItem[3].ToString();
                r.Cells.Add(cDuration);

                totalActivity += (TimeSpan)currentItem[3];

                ActivityTable.Rows.Add(r);
            }

            TotalActivityLabel.InnerText = "Total Activity Duration: " + totalActivity;
        }

        private void EditButton_Click(object sender, EventArgs e)
        {
            var button = sender as Button;
            var split = button.ID.Split('|');
            var index = Convert.ToInt32(split[1]) - 1;
            var activityItems = (ArrayList)Session["ActivityItems"];
            var item = activityItems[index];
            Session["EditActivityItem"] = item;
            Response.Redirect("~/UpdateActivityItemForm.aspx");
        }

        private void DeleteButton_Click(object sender, EventArgs e)
        {
            var button = sender as Button;
            var split = button.ID.Split('|');
            var index = Convert.ToInt32(split[1]) - 1;
            var activityItems = (ArrayList)Session["ActivityItems"];
            activityItems.RemoveAt(index);
            Session["ActivityItems"] = activityItems;
            Response.Redirect("~/ActivityTracker.aspx");
        }

        protected void AddActivityItemButton_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("~/AddActivityItemForm");
        }
    }
}