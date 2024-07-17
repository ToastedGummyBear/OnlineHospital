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
    public partial class WebForm4 : System.Web.UI.Page
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

            data1.Visible = false;
            data2.Visible = false;
            data3.Visible = false;
            data4.Visible = false;
            data5.Visible = false;
            data6.Visible = false;
        }
        //Command Method View Appointment section
        protected void ViewAppointment_Button(object sender, CommandEventArgs e)
        {
            if (TextBox1.Text == "")
            {
                MessageBox.Show("No Appointment ID found", "Try Again",
                                MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
            else
            {
                try
                { 
                    conn = new SqlConnection(connstr);
                    conn.Open();

                    switch (e.CommandName)
                    {
                        //Approve Button
                        case "Approve":
                            string searchID_cmd = $"update AppointmentTBL set Status = 'Approved' " +
                                $"where appointmentID ='{TextBox2.Text}' and patientName ='{TextBox3.Text}';";

                            cmd = new SqlCommand(searchID_cmd, conn);
                            cmd.ExecuteNonQuery();

                            MessageBox.Show("Appointment Approved", "Appointment Status Change",
                                MessageBoxButtons.OK, MessageBoxIcon.Information);

                            conn.Close();

                            data1.Visible = false;
                            data2.Visible = false;
                            data3.Visible = false;
                            data4.Visible = false;
                            data5.Visible = false;
                            data6.Visible = false;

                            TextBox1.Text = " ";
                            TextBox2.Text = " ";
                            TextBox3.Text = " ";
                            TextBox24.Text = " ";
                            TextBox25.Text = " ";
                            TextBox28.Text = " ";

                            break;

                        //Cancel Button
                        case "Cancel":
                            searchID_cmd = $"update AppointmentTBL set Status = 'Cancelled' " +
                                $"where appointmentID ='{TextBox2.Text}' and patientName ='{TextBox3.Text}';";

                            cmd = new SqlCommand(searchID_cmd, conn);
                            cmd.ExecuteNonQuery();

                            MessageBox.Show("Appointment Canceled", "Appointment Status Change",
                                MessageBoxButtons.OK, MessageBoxIcon.Information);
                            conn.Close();

                            data1.Visible = false;
                            data2.Visible = false;
                            data3.Visible = false;
                            data4.Visible = false;
                            data5.Visible = false;
                            data6.Visible = false;

                            TextBox1.Text = " ";
                            TextBox2.Text = " ";
                            TextBox3.Text = " ";
                            TextBox24.Text = " ";
                            TextBox25.Text = " ";
                            TextBox28.Text = " ";

                            break;

                        //Clear Button
                        case "Complete":
                            searchID_cmd = $"update AppointmentTBL set Status = 'Complete' " +
                                $"where appointmentID ='{TextBox2.Text}' and patientName ='{TextBox3.Text}';";

                            cmd = new SqlCommand(searchID_cmd, conn);
                            cmd.ExecuteNonQuery();

                            MessageBox.Show("Appointment Completed", "Appointment Status Change",
                                MessageBoxButtons.OK, MessageBoxIcon.Information);
                            conn.Close();

                            data1.Visible = false;
                            data2.Visible = false;
                            data3.Visible = false;
                            data4.Visible = false;
                            data5.Visible = false;
                            data6.Visible = false;

                            TextBox1.Text = " ";
                            TextBox2.Text = " ";
                            TextBox3.Text = " ";
                            TextBox24.Text = " ";
                            TextBox25.Text = " ";
                            TextBox28.Text = " ";

                            break;

                        case "Select":
                            searchID_cmd = $"select appointmentID, patientName, schedule, date, " +
                                $"reason from AppointmentTBL " +
                                $"where appointmentID = '{TextBox1.Text}' and doctorID='{doct_ID}';";

                            conn = new SqlConnection(connstr);
                            cmd = new SqlCommand(searchID_cmd, conn);
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

                                    reader.Read();
                                    // display Appointment id
                                    TextBox2.Text = reader["appointmentID"].ToString();
                                    // display Patient name
                                    TextBox3.Text = reader["patientName"].ToString();
                                    //display Appointment schedule
                                    TextBox24.Text = reader["schedule"].ToString();
                                    //display Appointment Date
                                    TextBox25.Text = reader["date"].ToString();
                                    //display Reason
                                    TextBox28.Text = reader["reason"].ToString();

                                }
                            }
                            catch
                            {
                                MessageBox.Show("No Appointment ID found.", "Try Again", MessageBoxButtons.OK, MessageBoxIcon.Information);
                                data1.Visible = false;
                                data2.Visible = false;
                                data3.Visible = false;
                                data4.Visible = false;
                                data5.Visible = false;
                                data6.Visible = false;
                            }
                            conn.Close();

                            break;
                    }
                }
                catch (SqlException)
                {
                    MessageBox.Show("No Appointment ID found.", "Try Again", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    data1.Visible = false;
                    data2.Visible = false;
                    data3.Visible = false;
                    data4.Visible = false;
                    data5.Visible = false;
                    data6.Visible = false;
                }
                catch (Exception b)
                {
                    MessageBox.Show(b.Message, "Try Again", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    data1.Visible = false;
                    data2.Visible = false;
                    data3.Visible = false;
                    data4.Visible = false;
                    data5.Visible = false;
                    data6.Visible = false;
                }
            }
        }
    }
}