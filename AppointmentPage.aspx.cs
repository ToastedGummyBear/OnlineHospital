using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;

namespace Group4_A55_IT114
{
    public partial class AppointmentPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;  
        }

        protected void btnCreateApp_Click(object sender, EventArgs e)
        {
            Response.Redirect("AppointmentPageCreate.aspx");
        }

        protected void btnViewApp_Click(object sender, EventArgs e)
        {
            Response.Redirect("AppointmentPageView.aspx");
        }
    }
}