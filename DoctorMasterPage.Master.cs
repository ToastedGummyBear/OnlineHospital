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
    public partial class DoctorMasterPage1 : System.Web.UI.MasterPage
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
            lblDoctor.Text = $" Account of Dr. {doct_Name}";
            this.Session["doctorID"] = doct_ID;
            conn = new SqlConnection(connstr);
            cmdString = $"select roomScheduleTime from DoctorTBL where doctorID = '{doct_ID}';";
            cmd = new SqlCommand(cmdString, conn);
            conn.Open();
            conn.Close();
        }

        protected void btnManage_Click(object sender, EventArgs e)
        {
            string url = $"DoctorPageAppointment.aspx?doctorName={doct_Name}&doctorID={doct_ID}";
            Response.Redirect(url);
        }

        protected void btnList_Click(object sender, EventArgs e)
        {
            string url = $"DoctorPageList.aspx?doctorName={doct_Name}&doctorID={doct_ID}";
            Response.Redirect(url);
        }

        protected void Log_Out_Click(object sender, EventArgs e)
        {
            Response.Redirect("Staff_Login.aspx");
        }

        protected void doc_LOGO_Click(object sender, ImageClickEventArgs e)
        {
            string url = $"DoctorHomepage.aspx?doctorName={doct_Name}&doctorID={doct_ID}";
            Response.Redirect(url);
        }

        protected void SiteMapPath1_ItemCreated(object sender, SiteMapNodeItemEventArgs e)
        {
            if (e.Item.ItemType == SiteMapNodeItemType.Root || (e.Item.ItemType == SiteMapNodeItemType.PathSeparator && e.Item.ItemIndex == 1))
            {
                e.Item.Visible = false;
            }
        }
    }
}