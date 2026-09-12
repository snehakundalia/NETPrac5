using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace practical_5a
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //leave apply
            Response.Redirect("WebForm2.aspx");

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            DateTime selectedDt = Calendar1.SelectedDate;
            Label1.Text = "selected date is: " + selectedDt.ToString("dd/MM/yyyy");

            //store the selected date in session variable
            Session["selectedDate"] = selectedDt;
        }
    }
}
