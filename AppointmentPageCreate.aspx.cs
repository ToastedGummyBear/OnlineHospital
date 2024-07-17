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
    public partial class WebForm5 : System.Web.UI.Page
    {
        string connstr = @"Server=.;Initial Catalog=MMC; Integrated Security=True;";
        SqlConnection conn;
        SqlCommand cmd;
        string cmdString;
        SqlDataReader reader;

        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            conn = new SqlConnection(connstr);
            cmdString = $"select distinct specialization from DoctorTBL where status='Active';";
            cmd = new SqlCommand(cmdString, conn);
            conn.Open();

            if (!Page.IsPostBack)
            {

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt1 = new DataTable();
                da.Fill(dt1);
                DropDownList3.DataSource = dt1;
                DropDownList3.DataTextField = "specialization";
                DropDownList3.DataValueField = "specialization";
                DropDownList3.DataBind();
                DropDownList3.Items.Insert(0, "Select specialization");

                specsection.Visible = false;
                docsection.Visible = false;
                datesection.Visible = false;
                timesection.Visible = false;
                submitsection.Visible = false;
            }
            conn.Close();

            
        }

        //Create New Appointment
        protected void CreateNewAppointment(object sender, CommandEventArgs e)
        {
            string fullName = $"{TextBox4.Text}, {TextBox5.Text} {TextBox6.Text}";
            conn = new SqlConnection(connstr);

            const int MaxLength = 3;
            var unique = Guid.NewGuid();
            string uniqueid = unique.ToString();

            if (uniqueid.Length > MaxLength)
                uniqueid = uniqueid.Substring(0, MaxLength);

            DateTime now = DateTime.Now;

            string minToday = now.Minute.ToString("00");
            string secToday = now.Second.ToString("00");
            string appointmentID = "APP" + minToday + uniqueid + secToday;

            switch (e.CommandName)
            {
                case "Submit":

                    try
                    {
                        conn.Open();
                        string roomNumber_cmd = $"select roomNumber from DoctorTBL where doctorName = '{DropDownList1.SelectedItem}';";
                        SqlCommand cmd2 = new SqlCommand(roomNumber_cmd, conn);
                        reader = cmd2.ExecuteReader();
                        reader.Read();
                        string roomNumber = reader["roomNumber"].ToString();
                        conn.Close();

                        conn.Open();

                        if (TextBox10.Text == "")
                        {
                            string newPatient_cmd = $"insert into AppointmentTBL values ('{appointmentID}'," +
                       $"'{fullName}', '{TextBox8.Text}','{TextBox9.Text}'," +
                       $"'{TextBox10.Text}','{TextBox11.Text}','{DropDownList1.SelectedValue}'," +
                       $"'{DropDownList1.SelectedItem}','{RadioButtonList1.SelectedItem}'," +
                       $"'{Calendar1.SelectedDate.ToShortDateString()}', " +
                       $"'{roomNumber}','Pending')";

                            cmd = new SqlCommand(newPatient_cmd, conn);
                            cmd.ExecuteNonQuery();
                        }
                        else
                        {
                            string newPatient_cmd = $"insert into AppointmentTBL values ('{appointmentID}'," +
                       $"'{fullName}', '{TextBox8.Text}','{TextBox9.Text}'," +
                       $"'{TextBox10.Text}','{TextBox11.Text}','{DropDownList1.SelectedValue}'," +
                       $"'{DropDownList1.SelectedItem}','{RadioButtonList1.SelectedItem}'," +
                       $"'{Calendar1.SelectedDate.ToShortDateString()}', " +
                       $"'{roomNumber}','Pending')";

                            cmd = new SqlCommand(newPatient_cmd, conn);
                            cmd.ExecuteNonQuery();
                        }

                        conn.Close();

                        DialogResult information = MessageBox.Show($"New Appointment Added Successfully. Please save your appointment ID.\nAPPOINTMENT ID: {appointmentID}", "Added", MessageBoxButtons.OK,
                        MessageBoxIcon.Information);

                        if (information == DialogResult.OK)
                        {

                            //Return to empty fields
                            TextBox4.Text = "";
                            TextBox5.Text = "";
                            TextBox6.Text = "";
                            TextBox8.Text = "";
                            TextBox9.Text = "";
                            TextBox10.Text = "";
                            TextBox11.Text = "";
                            DropDownList1.Items.Clear();
                            RadioButtonList1.Items.Clear();
                            DropDownList3.SelectedIndex = 0;
                            Calendar1.SelectedDates.Clear();

                            for (int i = 0; i < GridView1.Rows.Count; i++)
                            {
                                GridView1.Rows[i].Visible = false;
                            }
                            for (int i = 0; i < GridView1.HeaderRow.Cells.Count; i++)
                            {
                                GridView1.HeaderRow.Cells[i].Visible = false;
                            }

                            specsection.Visible = false;
                            docsection.Visible = false;
                            datesection.Visible = false;
                            timesection.Visible = false;
                            submitsection.Visible = false;
                        }
                    }
                    catch (SqlException a)
                    {
                        MessageBox.Show(a.Message, "Error", MessageBoxButtons.OK,
                        MessageBoxIcon.Warning);
                    }

                    catch (Exception b)
                    {
                        MessageBox.Show(b.Message, "Error", MessageBoxButtons.OK,
                        MessageBoxIcon.Warning);
                    }

                    break;

                case "Clear":

                    //Clear fields
                    TextBox4.Text = "";
                    TextBox5.Text = "";
                    TextBox6.Text = "";
                    TextBox8.Text = "";
                    TextBox9.Text = "";
                    TextBox10.Text = "";
                    TextBox11.Text = "";
                    DropDownList1.Items.Clear();
                    RadioButtonList1.Items.Clear();
                    DropDownList3.SelectedIndex = 0;
                    Calendar1.SelectedDates.Clear();

                    specsection.Visible = false;
                    docsection.Visible = false;
                    datesection.Visible = false;
                    timesection.Visible = false;
                    submitsection.Visible = false;

                    break;
            }
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            specsection.Visible = true;
            docsection.Visible = true;

            if (DropDownList3.SelectedIndex != 0)
            {
                specsection.Visible = true;
                docsection.Visible = true;
                string specialization = DropDownList3.SelectedValue;
                conn = new SqlConnection(connstr);

                cmdString = $"select doctorName as Name, specialization as Specialization, " +
                $"affiliation as Affiliation, roomNumber as Room, roomScheduleDay as Days," +
                $" roomScheduleTime as Time from DoctorTBL where specialization = '{specialization}';";

                cmd = new SqlCommand(cmdString, conn);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt1 = new DataTable();
                da.Fill(dt1);

                GridView1.DataSource = dt1;
                GridView1.DataBind();

                cmdString = $"select * from DoctorTBL where specialization = '{specialization}'";
                cmd = new SqlCommand(cmdString, conn);

                SqlDataAdapter db = new SqlDataAdapter(cmd);
                DataTable dt2 = new DataTable();
                db.Fill(dt2);

                DropDownList1.DataTextField = "doctorName";
                DropDownList1.DataValueField = "doctorID";
                DropDownList1.DataSource = dt2;
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, "Select doctor");
            }
            else
            {
                specsection.Visible = false;
                docsection.Visible = false;
                datesection.Visible = false;
                timesection.Visible = false;
                submitsection.Visible = false;
                DropDownList1.Items.Clear();
                RadioButtonList1.Items.Clear();
                DropDownList3.SelectedIndex = 0;
                Calendar1.SelectedDates.Clear();
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            datesection.Visible = true;
            timesection.Visible = true;
            submitsection.Visible = true;

            if (DropDownList1.SelectedIndex != 0)
            {
                datesection.Visible = true;
                timesection.Visible = true;
                submitsection.Visible = true;

                conn = new SqlConnection(connstr);
                cmdString = $"select roomScheduleTime from DoctorTBL where doctorID = '{DropDownList1.SelectedValue}';";
                cmd = new SqlCommand(cmdString, conn);
                conn.Open();
                using (reader = cmd.ExecuteReader())
                {
                    reader.Read();
                    string str = reader["roomScheduleTime"].ToString();
                    string[] arr = str.Split(',');
                    RadioButtonList1.DataSource = arr;
                    RadioButtonList1.DataBind();
                }
                conn.Close();
            }
            else
            {
                datesection.Visible = false;
                timesection.Visible = false;
                submitsection.Visible = false;
                DropDownList1.SelectedIndex = 0;
                RadioButtonList1.Items.Clear();
                Calendar1.SelectedDates.Clear();
            }
            
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            try
            {
                datesection.Visible = true;
                timesection.Visible = true;
                submitsection.Visible = true;

                conn = new SqlConnection(connstr);
                cmdString = $"select roomScheduleDay from DoctorTBL where doctorID = '{DropDownList1.SelectedValue}';";
                cmd = new SqlCommand(cmdString, conn);
                conn.Open();

                reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    reader.Read();
                    string str = reader["roomScheduleDay"].ToString();
                    string[] arr = str.Split('/');

                    for (int i = 0; i < arr.Length; i++)
                    {
                        if (!arr.Contains(e.Day.Date.DayOfWeek.ToString()))
                        {
                            e.Cell.BackColor = System.Drawing.Color.White;
                            e.Day.IsSelectable = false;
                        }
                    }
                }
                conn.Close();
            }
            catch (SqlException a)
            {
                MessageBox.Show(a.Message, "Error", MessageBoxButtons.OK,
                MessageBoxIcon.Warning);
            }

        }
    }
}