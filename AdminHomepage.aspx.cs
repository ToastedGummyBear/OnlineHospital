using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace Group4_A55_IT114
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnNewRec_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminPageCreate.aspx");
        }

        protected void btnUpdateRec_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminPageUpdate.aspx");
        }

        protected void btnArchiveRec_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminPageArchive.aspx");
        }
    }
}