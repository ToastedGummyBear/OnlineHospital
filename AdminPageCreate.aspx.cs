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
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected string admin_Name;
        protected string admin_ID;

        string connstr = @"Server=.;Initial Catalog=MMC; Integrated Security=True;";
        SqlConnection conn;
        SqlCommand cmd;
        string cmdString;
        SqlDataReader reader;

        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            admin_Name = Request.QueryString["doctorName"];
            admin_ID = Request.QueryString["doctorID"];
        }
        // Random ID button
        protected void Random_ID_Click(object sender, EventArgs e)
        {
            const int MaxLength = 5;
            var unique = Guid.NewGuid();
            string uniqueid = unique.ToString();

            if (uniqueid.Length > MaxLength)
                uniqueid = uniqueid.Substring(0, MaxLength);
            string docID = "DOC" + uniqueid;
            ID_TB1.Text = docID.ToString();
        }

        // Random PW button
        protected void Random_PW_Click(object sender, EventArgs e)
        {
            const int MaxLength = 5;
            var unique = Guid.NewGuid();
            string uniquepass = unique.ToString();

            if (uniquepass.Length > MaxLength)
                uniquepass = uniquepass.Substring(0, MaxLength);
            string password = "PASS" + uniquepass;
            PW_TB2.Text = password.ToString();
        }

        // Create New Doctor info
        protected void Create_Doc_Info_Click(object sender, EventArgs e)
        {
            try
            {
                // insert records
                conn = new SqlConnection(connstr);
                conn.Open();
                string insertcmd = $"insert into DoctorTBL values('{ID_TB1.Text}','{PW_TB2.Text}'," +
                    $"'{NOD_TB3.Text}','{S_TB4.Text}','{A_TB5.Text}'" +
                    $",'{CN_TB6.Text}','{RN_TB7.Text}','{RSD_TB8.Text}','{RST_TB9.Text}', 'Active');";
                cmd = new SqlCommand(insertcmd, conn);
                cmd.ExecuteNonQuery();
                DialogResult information = MessageBox.Show("Doctor Information Added.", "Added", MessageBoxButtons.OK,
                MessageBoxIcon.Information);
                if (information == DialogResult.OK)
                {
                    ID_TB1.Text = "";
                    PW_TB2.Text = "";
                    NOD_TB3.Text = "";
                    S_TB4.Text = "";
                    A_TB5.Text = "";
                    CN_TB6.Text = "";
                    RN_TB7.Text = "";
                    RSD_TB8.Text = "";
                    RST_TB9.Text = "";
                }
                conn.Close();
            }
            catch (SqlException ex)
            {
                // if doctorID already exist
                if (ex.Number == 2627)
                {
                    MessageBox.Show("Doctor ID already Exist.", "Try Again", MessageBoxButtons.OK,
                    MessageBoxIcon.Information);
                }
            }
            catch (Exception x)
            {
                MessageBox.Show(x.Message, "Error", MessageBoxButtons.OK,
                    MessageBoxIcon.Warning);
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            ID_TB1.Text = "";
            PW_TB2.Text = "";
            NOD_TB3.Text = "";
            S_TB4.Text = "";
            A_TB5.Text = "";
            CN_TB6.Text = "";
            RN_TB7.Text = "";
            RSD_TB8.Text = "";
            RST_TB9.Text = "";
        }

    }
}