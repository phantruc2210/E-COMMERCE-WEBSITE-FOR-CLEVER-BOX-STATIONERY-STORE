using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLBHVanPhongPham
{
    public partial class DatHang : System.Web.UI.Page
    {
        DataTable dt = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Load();
            }
        }
        protected void Load()
        {
            dt = (DataTable)Session["GioHang"];
            grdDonDH.DataSource = dt;
            grdDonDH.DataBind();
            if (dt != null)
            {
                double tong = (double)Session["tong"];
                lblTongTien.Text = "Tổng tiền trên giỏ hàng là: " + String.Format("{0:0,000 VND}", tong);
            }
        }

        protected void btnOK_Click(object sender, EventArgs e)
        {

            DateTime d = DateTime.Now;
            string maDonHang = d.Day.ToString() + d.Month.ToString() +
                (d.Year % 100).ToString() + d.Hour.ToString() +
                d.Minute.ToString() + d.Second.ToString();
            Session["txtHoTen"] = txtHoTen;
            Session["txtEmail"] = txtEmail;
            Session["txtDienThoai"] = txtDienThoai;
            Session["txtDiaChi"] = txtDiaChi;
            Session["maDH"] = maDonHang;
            Session["txtEmail"] = txtEmail;
            // Gửi email
            /*
             MailMessage mail = new MailMessage();
             mail.To.Add(txtEmail.Text);
             mail.From = new MailAddress("2121005137@sv.ufm.edu.vn");
             mail.Subject = "Gởi từ cửa hàng văn phòng phẩm CleverBox";
             mail.Body = "Mã đơn hàng: " + maDonHang + ". Đơn hàng có mã trên sẽ được gửi đến anh/ chị " +
                txtHoTen.Text + ". Cảm ơn anh/ chị đã tin tưởng và mua hàng tại CleverBox!";
             SmtpClient client = new SmtpClient();
             client.Host = "smtp.gmail.com";
             client.Port = 587;
             client.EnableSsl = true;
             client.Credentials = new NetworkCredential("2121005137@sv.ufm.edu.vn", "Oin11469");
             client.Send(mail);

            Server.Transfer("DatHangThanhCong.aspx");
            */

            // Gửi email xác minh
            string maXacMinh = TaoMaXacMinh();
            bool result = GuiEmailXacMinh(txtEmail.Text, maXacMinh);
            if (result)
            {
                Session["maXacMinh"] = maXacMinh;
                Server.Transfer("XacMinhEmail.aspx");
            }
            else
            {
                // Hiển thị thông báo lỗi
                string errorMessage = "Đã xảy ra lỗi khi gửi email xác minh!";
                string script = "alert('" + errorMessage + "');";
                ScriptManager.RegisterStartupScript(this, GetType(), "ErrorAlert", script, true);
            }

        }

        // Phương thức tạo mã xác minh duy nhất
        private string TaoMaXacMinh()
        {
            // Tạo một mã xác minh ngẫu nhiên, ví dụ:
            //string ma = Guid.NewGuid().ToString("N");
            //return ma;
            Random random = new Random();
            int ma = random.Next(100000, 1000000); // Tạo mã số ngẫu nhiên từ 100000 đến 999999 (6 chữ số)
            return ma.ToString();
        }
        private bool GuiEmailXacMinh(string email, string maXacMinh)
        {

            // Gửi email xác minh
            using (MailMessage mail = new MailMessage())
            {
                mail.To.Add(email);
                mail.From = new MailAddress("2121005137@sv.ufm.edu.vn");
                mail.Subject = "Xác minh địa chỉ email";
                string body = "Mã xác minh của bạn là: " + maXacMinh+ 
                    ". Không chia sẻ mã này với bất cứ ai. Xin cảm ơn!";
                mail.Body = body;
                SmtpClient client = new SmtpClient();
                client.Host = "smtp.gmail.com";
                client.Port = 587;
                client.EnableSsl = true;
                client.Credentials = new NetworkCredential("2121005137@sv.ufm.edu.vn", "Oin11469");
                try
                {
                    client.Send(mail);
                    return true;
                }
                catch (Exception ex)
                {
                    string errorMessage = "Đã xảy ra lỗi khi xác minh!";
                    string script = "alert('" + errorMessage + "');";
                    ScriptManager.RegisterStartupScript(this, GetType(), "ErrorAlert", script, true);
                    return false;
                }
            }
        }


         protected void btnHuy_Click(object sender, EventArgs e)
        {
            Server.Transfer("GioHang.aspx");
        }
    }
}