using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Configuration;
using System.Drawing;
using System.Drawing.Imaging;
using ZXing;

namespace Student_Registration1
{
    public partial class Register_Page : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source =DESKTOP-AP607JK\\SQLEXPRESS01;initial catalog=RAVI;integrated security=true;");
        int reg = 1230;
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            if (!Page.IsPostBack)
            {
                Session["sessioin"] = true;
                Configuration con = WebConfigurationManager.OpenWebConfiguration("~/Web.config");
                SessionStateSection section = (SessionStateSection)con.GetSection("system.web/sessionState");
                int timeout = (int)section.Timeout.TotalMinutes * 1000 * 60;
                ClientScript.RegisterStartupScript(this.GetType(), "sessionAlert", "sessionExpiredAlert(" + timeout + ");", true);
            }
            if (IsPostBack)
            {
                regidt();
            }

        }
        private void regidt()
        {
            con.Open();
            SqlCommand cmd1 = new SqlCommand("select Count (RegiSter_id) from student_reg2", con);
            int i = Convert.ToInt32(cmd1.ExecuteScalar());
            con.Close();
            i++;
            Label12.Text = reg + i.ToString();
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            regidt();
            con.Open();
            FileUpload1.SaveAs(Server.MapPath("~/i/") + Path.GetFileName(FileUpload1.FileName));
            string photo = "i/" + Path.GetFileName(FileUpload1.FileName);
            SqlCommand cmd = new SqlCommand("insert into student_reg2 values('" + Label12.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + DropDownList1.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + photo + "')", con);
            int i = cmd.ExecuteNonQuery();
            SenduserMail(Label12.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text, DropDownList1.Text, TextBox6.Text, TextBox7.Text, TextBox8.Text, TextBox9.Text, photo);
            if (i == 1)
            {
                Response.Write("INSERTED SUCESSFULLY...");

            }
            string Id = Label12.Text + "" + TextBox2.Text + "" + TextBox3.Text + "" + TextBox4.Text + "" + TextBox5.Text + "" + DropDownList1.Text + "" + TextBox6.Text + "" + TextBox7.Text + "" + TextBox8 + "" + TextBox9.Text + "" + photo;
            var writer = new BarcodeWriter();
            writer.Format = BarcodeFormat.QR_CODE;
            var result = writer.Write(Id);
            string path = Server.MapPath("~/i/QRImage.jpg");
            var barcodebitmap = new Bitmap(result);


            using (MemoryStream memory = new MemoryStream())
            {
                using (FileStream fs = new FileStream(path, FileMode.Create, FileAccess.ReadWrite))
                {
                    barcodebitmap.Save(memory, ImageFormat.Jpeg);
                    byte[] bytes = memory.ToArray();
                    fs.Write(bytes, 0, bytes.Length);
                }
            }
            Image1.Visible = true;
            Image1.ImageUrl = "~/i/QRImage.jpg";
 

        }
        private void SenduserMail(string Register_Id, string Student_Name, string Student_Gender, string Father_Name, string Mother_Name, string Student_Class, string Student_Age, string Student_Address, string Phone_Number, string Date_Of_Birth, string Photo)
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new NetworkCredential("software.trainee1@brihaspathi.com", "RAVI8297");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = "New User Registration Details";
            msg.Body = "New Registration Details \n\n-------------------\n\nStudent_Name : " + Student_Name + "\n\nStudent_Gender :" + Student_Gender + "\n\nFather_Name:" + Father_Name + "\n\nMother_Name:" + Mother_Name + "\n\nStudent_Class:" + Student_Class + "\n\n Student_Age:" + Student_Age + "\n\n Student_Address:" + Student_Address + "\n\n Phone_Number:" + Phone_Number + "\n\n Date_Of_Birth:" + Date_Of_Birth + "\n\n Photo:" + Photo;
            string toaddress = "software.trainee1@brihaspathi.com";
            msg.To.Add(toaddress);
            string fromaddress = "New Registration <software.trainee1@brihaspathi.com>";
            msg.From = new MailAddress(fromaddress);
            try
            {
                smtp.Send(msg);
            }
            catch
            {
                throw;
            }


        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from student_reg2", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            GridView1.Visible = true;
        }
    }

}