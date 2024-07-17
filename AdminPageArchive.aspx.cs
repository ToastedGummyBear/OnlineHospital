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
    public partial class WebForm9 : System.Web.UI.Page
    {
        string connstr = @"Server=.;Initial Catalog=MMC; Integrated Security=True;";
        SqlConnection conn;
        SqlCommand cmd;
        string cmdString;
        SqlDataReader reader;

        protected void Page_Load(object sender, EventArgs e)
        {
            data1.Visible = false;
            data2.Visible = false;
            data3.Visible = false;
            data4.Visible = false;
            data5.Visible = false;
        }

        protected void Select_Btn_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(connstr);
            conn.Open();

            string searchcmd = "select * from DoctorTBL where doctorID ='" + TextBox10.Text.ToString() + "';";

            cmd = new SqlCommand(searchcmd, conn);

            try
            {
                using (reader = cmd.ExecuteReader())
                {
                    data1.Visible = true;
                    data2.Visible = true;
                    data3.Visible = true;
                    data4.Visible = true;
                    data5.Visible = true;

                    reader.Read();

                    // display doctor name
                    TextBox11.Text = reader["doctorName"].ToString();
                    //display specialization
                    TextBox14.Text = reader["specialization"].ToString();
                    // display affiliation
                    TextBox13.Text = reader["affiliation"].ToString();
                    // display status
                    TextBox12.Text = reader["status"].ToString();
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
            }

            conn.Close();
        }

        protected void Archive_Record_Click(object sender, EventArgs e)
        {
            if (TextBox10.Text == "")
            {
                MessageBox.Show("No Doctor ID found.", "Try Again", MessageBoxButtons.OK,
                   MessageBoxIcon.Information);
            }
            else
            {
                try
                {
                    // update records
                    conn = new SqlConnection(connstr);

                    string updatecmd = $"update DoctorTBL set status = 'Inactive' where doctorID='{TextBox10.Text}'";

                    SqlCommand cmd = new SqlCommand(updatecmd, conn);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    DialogResult information = MessageBox.Show("Doctor Information Status Updated.",
                        "Updated", MessageBoxButtons.OK,
                    MessageBoxIcon.Information);
                    if (information == DialogResult.OK)
                    {
                        TextBox10.Text = "";
                        TextBox11.Text = "";
                        TextBox12.Text = "";
                        TextBox13.Text = "";
                        TextBox14.Text = "";

                        data1.Visible = false;
                        data2.Visible = false;
                        data3.Visible = false;
                        data4.Visible = false;
                        data5.Visible = false;
                    }
                }
                catch (SqlException a)
                {
                    MessageBox.Show(a.Message, "Try Again", MessageBoxButtons.OK,
                    MessageBoxIcon.Information);
                }
            }
        }

        protected void Unarchive_Record_Click(object sender, EventArgs e)
        {
            if (TextBox10.Text == "")
            {
                MessageBox.Show("No Doctor ID found.", "Try Again", MessageBoxButtons.OK,
                   MessageBoxIcon.Information);
            }
            else
            {
                try
                {
                    // update records
                    conn = new SqlConnection(connstr);

                    string updatecmd = $"update DoctorTBL set status = 'Active' where doctorID='{TextBox10.Text}'";


                    SqlCommand cmd = new SqlCommand(updatecmd, conn);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    DialogResult information = MessageBox.Show("Doctor Information Status Updated.",
                        "Updated", MessageBoxButtons.OK,
                    MessageBoxIcon.Information);
                    if (information == DialogResult.OK)
                    {
                        TextBox10.Text = "";
                        TextBox11.Text = "";
                        TextBox12.Text = "";
                        TextBox13.Text = "";
                        TextBox14.Text = "";

                        data1.Visible = false;
                        data2.Visible = false;
                        data3.Visible = false;
                        data4.Visible = false;
                        data5.Visible = false;
                    }
                }
                catch (SqlException a)
                {
                    MessageBox.Show(a.Message, "Try Again", MessageBoxButtons.OK,
                    MessageBoxIcon.Information);
                }
            }
        }
    }
}