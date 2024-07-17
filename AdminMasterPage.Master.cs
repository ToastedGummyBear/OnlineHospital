using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Group4_A55_IT114
{
    public partial class AdminMasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnCreateRec_Click(object sender, EventArgs e)
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

        protected void Log_Out_Click(object sender, EventArgs e)
        {
            Response.Redirect("Staff_Login.aspx");
        }

        protected void adm_LOGO_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AdminHomepage.aspx");
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