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
    public partial class WebForm6 : System.Web.UI.Page
    {
        string connstr = @"Server=.;Initial Catalog=MMC; Integrated Security=True;";
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataReader reader;

        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            data1.Visible = false;
            data2.Visible = false;
            data3.Visible = false;
            data4.Visible = false;
            data5.Visible = false;
            data6.Visible = false;
            data7.Visible = false;
            data8.Visible = false;
        }

        //Command method View Appointment thru Appointment ID
        protected void ViewAppointment_buttons(object sender, CommandEventArgs e)
        {
            conn = new SqlConnection(connstr);

            switch (e.CommandName)
            {
                //Search Button for View Appointment
                case "Search":

                    string viewAppointment_cmd = $"select appointmentID, patientName, schedule, date, doctorName," +
                        $"roomNumber, Status from AppointmentTBL " +
                        $"where appointmentID = '{TextBox22.Text}';";

                    cmd = new SqlCommand(viewAppointment_cmd, conn);
                    conn.Open();

                    try
                    {
                        using (reader = cmd.ExecuteReader())
                        {
                            data1.Visible = true;
                            data2.Visible = true;
                            data3.Visible = true;
                            data4.Visible = true;
                            data5.Visible = true;
                            data6.Visible = true;
                            data7.Visible = true;
                            data8.Visible = true;

                            reader.Read();
                            //display AppointmentID
                            TextBox23.Text = reader["appointmentID"].ToString();
                            //display Patient Name
                            TextBox24.Text = reader["patientName"].ToString();
                            //display date of appointment
                            TextBox25.Text = reader["date"].ToString();
                            //display Appointment Status
                            TextBox26.Text = reader["Status"].ToString();
                            //Additional Fields for more details
                            //display appointment Schedule
                            TextBox27.Text = reader["schedule"].ToString();
                            //display doctor Name
                            TextBox28.Text = reader["doctorName"].ToString();
                            //display room number for Appointment
                            TextBox29.Text = reader["roomNumber"].ToString();

                        }
                    }

                    catch (SqlException)
                    {
                        MessageBox.Show("Invalid Appointment ID", "Error", MessageBoxButtons.OK,
                MessageBoxIcon.Warning);
                        data1.Visible = false;
                        data2.Visible = false;
                        data3.Visible = false;
                        data4.Visible = false;
                        data5.Visible = false;
                        data6.Visible = false;
                        data7.Visible = false;
                        data8.Visible = false;
                    }

                    catch (Exception b)
                    {
                        MessageBox.Show(b.Message, "Error", MessageBoxButtons.OK,
                                        MessageBoxIcon.Warning);
                        data1.Visible = false;
                        data2.Visible = false;
                        data3.Visible = false;
                        data4.Visible = false;
                        data5.Visible = false;
                        data6.Visible = false;
                        data7.Visible = false;
                        data8.Visible = false;
                    }
                    break;

                //Clear TextBoxes for View Appointment
                case "Clear":

                    TextBox22.Text = "";
                    TextBox23.Text = "";
                    TextBox24.Text = "";
                    TextBox25.Text = "";
                    TextBox26.Text = "";
                    //Additional Fields for more details
                    TextBox27.Text = "";
                    TextBox28.Text = "";
                    TextBox29.Text = "";

                    data1.Visible = false;
                    data2.Visible = false;
                    data3.Visible = false;
                    data4.Visible = false;
                    data5.Visible = false;
                    data6.Visible = false;
                    data7.Visible = false;
                    data8.Visible = false;

                    break;

                //Cancel Appointment for View Appointment
                case "Cancel":
                    if (TextBox22.Text == "")
                    {
                        MessageBox.Show("No Appointment ID entered",
                            "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                    else
                    {
                        string cancelAppointment_cmd = $"delete from AppointmentTBL " +
                        $"where appointmentID = '{TextBox22.Text}' " +
                        $"and patientName = '{TextBox24.Text}';";

                        cmd = new SqlCommand(cancelAppointment_cmd, conn);
                        conn.Open();
                        DialogResult answer = MessageBox.Show("Are you sure you are cancelling your Appointment?",
                            "Cancel Appointment", MessageBoxButtons.YesNo, MessageBoxIcon.Warning);

                        if (answer.Equals(DialogResult.Yes))
                        {
                            cmd.ExecuteNonQuery();
                            TextBox22.Text = "";
                            TextBox23.Text = "";
                            TextBox24.Text = "";
                            TextBox25.Text = "";
                            TextBox26.Text = "";
                            //Additional Fields for more details
                            TextBox27.Text = "";
                            TextBox28.Text = "";
                            TextBox29.Text = "";

                            data1.Visible = false;
                            data2.Visible = false;
                            data3.Visible = false;
                            data4.Visible = false;
                            data5.Visible = false;
                            data6.Visible = false;
                            data7.Visible = false;
                            data8.Visible = false;
                        }
                    }
                    break;
            }
            conn.Close();
        }
    }
}