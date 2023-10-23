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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("data source=DESKTOP-AP607JK\\SQLEXPRESS01;initial catalog=RAVI;integrated security=true;");
            con.Open();
            SqlCommand cmd = new SqlCommand("select COUNT(*) from STYLE where USERNAME=@USERNAME AND PASSWORD=@PASSWORD", con);
            cmd.Parameters.AddWithValue("@USERNAME", TextBox1.Text);
            cmd.Parameters.AddWithValue("@PASSWORD", TextBox2.Text);
            int i = (int)cmd.ExecuteScalar();
            if (i == 1)
            {
                Response.Redirect("Register Page.aspx");
            }
            else
            {
                Response.Write("Wrong USERNAME and PASSWORD");

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Change Password.aspx");
        }
    }
}