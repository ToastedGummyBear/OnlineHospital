using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace Group4_A55_IT114
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected string doct_Name;
        protected string doct_ID;
        string connstr = @"Server=.;Initial Catalog=MMC;Integrated Security = True;";
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataReader reader;
        string cmdString;

        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            doct_Name = Request.QueryString["doctorName"];
            doct_ID = Request.QueryString["doctorID"];
            this.Session["doctorID"] = doct_ID;

        }

        protected void btnManageGo_Click(object sender, EventArgs e)
        {
            string url = $"DoctorPageAppointment.aspx?doctorName={doct_Name}&doctorID={doct_ID}";
            Response.Redirect(url);
        }

        protected void btnListGo_Click(object sender, EventArgs e)
        {
            string url = $"DoctorPageList.aspx?doctorName={doct_Name}&doctorID={doct_ID}";
            Response.Redirect(url);
        }
    }
}