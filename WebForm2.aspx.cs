using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace practical_5a
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //check whther employee name cookie is present or not
                if (Request.Cookies["empName"] != null)
                {
                    TextBox1.Text = Request.Cookies["empName"].Value;
                }
                // Retrieve the selected date from the session variable
                if (Session["selectedDate"] != null)
                {
                    DateTime selectedDt = (DateTime)Session["selectedDate"];
                    Label7.Text = "Selected date is: " + selectedDt.ToString("dd/MM/yyyy");
                }
                else
                {
                    Label7.Text = "No date selected.";
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string empName = TextBox1.Text;
            string leaveType = DropDownList1.SelectedValue;
            string leaveReason = TextBox4.Text;

            //store employee name in cookie
            Session["empName"] = empName;

            //stroe leave type and reason in session variable
            Session["leaveType"] = leaveType;
            Session["leaveReason"] = leaveReason;

            //crete a cookie if checkbox is checked
            if(CheckBox1.Checked)
            {
                Response.Cookies["empName"].Value = empName;

                //cookie will expire in 1 day
                Response.Cookies["empName"].Expires = DateTime.Now.AddDays(1);

            }
            Label6.Text = "<b>Leave application submitted successfully!!!!</b>" +
                "<br/>Employee Name: " + empName +
                "<br/>Leave Type: " + leaveType +
                "<br/>Reason: " + leaveReason;
        }
    }       }
