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
    public partial class WebForm11 : System.Web.UI.Page
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
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;
            PatientData.Visible = true;

            string appID = row.Cells[1].Text;


                string viewAppointment_cmd = $"select appointmentID, patientName, contactNumber, patientAddress, patientEmail," +
                $"reason from AppointmentTBL " +
                $"where appointmentID = '{appID}';";

            conn = new SqlConnection(connstr);
            cmd = new SqlCommand(viewAppointment_cmd, conn);
            conn.Open();

            using (reader = cmd.ExecuteReader())
            {
                reader.Read();
                //display Patient Name
                ptnName.Text = reader["patientName"].ToString();
                //display date of appointment
                ptnConNo.Text = reader["contactNumber"].ToString();
                //display Appointment Status
                ptnAddress.Text = reader["patientAddress"].ToString();
                //Additional Fields for more details
                //display appointment Schedule
                ptnEmail.Text = reader["patientEmail"].ToString();
                //display doctor Name
                ptnReason.Text = reader["reason"].ToString();
            }
            conn.Close();
        }
    }
}