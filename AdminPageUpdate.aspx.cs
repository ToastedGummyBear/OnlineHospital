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
    public partial class WebForm8 : System.Web.UI.Page
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

            data1.Visible = false;
            data2.Visible = false;
            data3.Visible = false;
            data4.Visible = false;
            data5.Visible = false;
            data6.Visible = false;
            data7.Visible = false;
            data8.Visible = false;
            data9.Visible = false;
            data10.Visible = false;
            data11.Visible = false;
            data12.Visible = false;
            data13.Visible = false;
        }

        protected void Select_Btn_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(connstr);
            conn.Open();

            string searchcmd = $"select * from DoctorTBL where doctorID ='{TextBox1.Text}';";

            cmd = new SqlCommand(searchcmd, conn);

            try
            {
                using (reader = cmd.ExecuteReader())
                {
                    reader.Read();
                    string status = reader["status"].ToString();

                    if (status == "Inactive")
                    {
                        MessageBox.Show("Account inactive.", "Try Again", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                    else
                    {
                        data1.Visible = true;
                        data2.Visible = true;
                        data3.Visible = true;
                        data4.Visible = true;
                        data5.Visible = true;
                        data6.Visible = true;
                        data7.Visible = true;
                        data8.Visible = true;
                        data9.Visible = true;
                        data10.Visible = true;
                        data11.Visible = true;
                        data12.Visible = true;
                        data13.Visible = true;

                        // display doctor name
                        TextBox2.Text = reader["doctorName"].ToString();
                        // display specialization
                        TextBox3.Text = reader["specialization"].ToString();
                        // display affiliation
                        TextBox4.Text = reader["affiliation"].ToString();
                        //display doctorID
                        TextBox5.Text = reader["doctorID"].ToString();
                        // display password
                        TextBox6.Text = reader["password"].ToString();
                        // diplay contact number
                        TextBox7.Text = reader["contactNumber"].ToString();
                        // display room number
                        TextBox8.Text = reader["roomNumber"].ToString();
                        // display room schedule
                        TextBox18.Text = reader["roomScheduleDay"].ToString();
                        TextBox9.Text = reader["roomScheduleTime"].ToString();
                    }
                }
            }
            catch (Exception)
            {
                MessageBox.Show("No Doctor ID found.", "Try Again", MessageBoxButtons.OK,
                MessageBoxIcon.Information);

                data1.Visible = false;
                data2.Visible = false;
                data3.Visible = false;
                data4.Visible = false;
                data5.Visible = false;
                data6.Visible = false;
                data7.Visible = false;
                data8.Visible = false;
                data9.Visible = false;
                data10.Visible = false;
                data11.Visible = false;
                data12.Visible = false;
                data13.Visible = false;
            }

            conn.Close();
        }

        protected void Update_Rec_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "")
            {
                MessageBox.Show("No Doctor ID found.", "Try Again", MessageBoxButtons.OK,
                   MessageBoxIcon.Information);

                data1.Visible = false;
                data2.Visible = false;
                data3.Visible = false;
                data4.Visible = false;
                data5.Visible = false;
                data6.Visible = false;
                data7.Visible = false;
                data8.Visible = false;
                data9.Visible = false;
                data10.Visible = false;
                data11.Visible = false;
                data12.Visible = false;
                data13.Visible = false;
            }
            else
            {
                try
                {
                    // update records
                    conn = new SqlConnection(connstr);

                    string updatecmd = "update DoctorTBL set doctorID = '";

                    string[] arr = {"',password = '", "',doctorName = '", "',specialization = '", "',affiliation = '",
                "',contactNumber = '", "',roomNumber = '", "',roomScheduleDay = '", "',roomScheduleTime = '"};

                    updatecmd += TextBox5.Text + arr[0] + TextBox6.Text + arr[1] + TextBox2.Text +
                        arr[2] + TextBox3.Text + arr[3] + TextBox4.Text + arr[4] + TextBox7.Text + arr[5] +
                        TextBox8.Text + arr[6] + TextBox18.Text + arr[7] + TextBox9.Text + "' where doctorID = '"
                        + TextBox1.Text.ToString() + "';";

                    SqlCommand cmd = new SqlCommand(updatecmd, conn);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    DialogResult information = MessageBox.Show("Doctor Information Updated.",
                        "Updated", MessageBoxButtons.OK,
                    MessageBoxIcon.Information);
                    if (information == DialogResult.OK)
                    {
                        TextBox1.Text = "";
                        TextBox2.Text = "";
                        TextBox3.Text = "";
                        TextBox4.Text = "";
                        TextBox5.Text = "";
                        TextBox6.Text = "";
                        TextBox7.Text = "";
                        TextBox8.Text = "";
                        TextBox18.Text = "";
                        TextBox9.Text = "";

                        data1.Visible = false;
                        data2.Visible = false;
                        data3.Visible = false;
                        data4.Visible = false;
                        data5.Visible = false;
                        data6.Visible = false;
                        data7.Visible = false;
                        data8.Visible = false;
                        data9.Visible = false;
                        data10.Visible = false;
                        data11.Visible = false;
                        data12.Visible = false;
                        data13.Visible = false;
                    }
                }
                catch (SqlException a)
                {
                    MessageBox.Show(a.Message, "Try Again", MessageBoxButtons.OK,
                    MessageBoxIcon.Information);

                    data1.Visible = false;
                    data2.Visible = false;
                    data3.Visible = false;
                    data4.Visible = false;
                    data5.Visible = false;
                    data6.Visible = false;
                    data7.Visible = false;
                    data8.Visible = false;
                    data9.Visible = false;
                    data10.Visible = false;
                    data11.Visible = false;
                    data12.Visible = false;
                    data13.Visible = false;
                }
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox18.Text = "";

            data1.Visible = false;
            data2.Visible = false;
            data3.Visible = false;
            data4.Visible = false;
            data5.Visible = false;
            data6.Visible = false;
            data7.Visible = false;
            data8.Visible = false;
            data9.Visible = false;
            data10.Visible = false;
            data11.Visible = false;
            data12.Visible = false;
            data13.Visible = false;
        }
    }
}