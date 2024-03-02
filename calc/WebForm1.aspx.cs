using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace calc
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public static double CostOfMeals;
        public static double Percent15Tip;
        public static double Percent20Tip;
        public static double Percent25Tip;
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }
        protected void BtnCalculator_Click(object sender, EventArgs e)
        {
            lblError.Text = "";

            // Validate cost of meal input
            if (!double.TryParse(txtCostOfMeals.Text, out double costOfMeals) || costOfMeals <= 0)
            {
                lblError.Text = "Please enter a valid number for cost of meals greater than 0.";
                return; // Exit the function if validation fails
            }

            // Calculate and display tip amounts
            Percent15Tip = (0.15) * costOfMeals;
            Percent20Tip = (0.20) * costOfMeals;
            Percent25Tip = (0.25) * costOfMeals;

            lbl15percentTip.InnerText = "$" + Percent15Tip.ToString("0.00");
            lbl20percentTip.InnerText = "$" + Percent20Tip.ToString("0.00");
            lbl25percentTip.InnerText = "$" + Percent25Tip.ToString("0.00");
        }
        protected void LinkClear_Click(Object sender, EventArgs e)
        {
            lbl15percentTip.InnerText = "$ 0.00";
            lbl20percentTip.InnerText = "$ 0.00";
            lbl25percentTip.InnerText = "$ 0.00";
            txtCostOfMeals.Text = "";
        }
       
    }
}