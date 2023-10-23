using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Student_Registration1
{
    public partial class Change_Password : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("data source=DESKTOP-AP607JK\\SQLEXPRESS01;initial catalog=RAVI;integrated security=true;");
            SqlCommand cmd = new SqlCommand("select PASSWORD from STYLE where PASSWORD='" + TextBox1.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count.ToString() == "1")
            {
                if (TextBox2.Text == TextBox2.Text)
                {
                    con.Open();
                    SqlCommand cmd1 = new SqlCommand("update STYLE set PASSWORD='" + TextBox3.Text + "' where PASSWORD='" + TextBox1.Text + "'", con);
                    cmd1.ExecuteNonQuery();
                    con.Close();
                    Label4.Text = "UPDATED SUCCESSFULLY";
                    Label4.ForeColor = System.Drawing.Color.Green;
                    Label4.Text = "new password and confirm password should be same";
                }
                else
                {
                    Label4.Text = "new password and confirm password should not be same";
                }
            }
            else
            {
                Label4.Text = "Please check your old password";
                Label4.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect(".aspx");
        }
    }
}