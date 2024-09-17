using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLBHVanPhongPham
{
    public partial class XacMinhEmail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string maXacMinh = (string)Session["maXacMinh"];
                if (maXacMinh == null)
                {
                    // Không có mã xác minh trong session, chuyển hướng về trang DatHang.aspx
                    Server.Transfer("DatHang.aspx");
                }
            }
        }

        protected void btnOK_Click(object sender, EventArgs e)
        {
            string maXacMinh = (string)Session["maXacMinh"];
            string nhapMaXacMinh = txtNhapMaXacMinh.Text.Trim();

            TextBox txtHoTen = (TextBox)Session["txtHoTen"];
            TextBox txtEmail = (TextBox)Session["txtEmail"];
            string maDH = (string)Session["maDH"];
            if (nhapMaXacMinh.Equals(maXacMinh))
            {
                // Mã xác minh đúng, gửi email, chuyển hướng đến trang DatHangThanhCong.aspx
                // Gửi email
                using (MailMessage mail = new MailMessage())
                {   
                    mail.To.Add(txtEmail.Text);
                    mail.From = new MailAddress("2121005137@sv.ufm.edu.vn");
                    mail.Subject = "Gởi từ cửa hàng văn phòng phẩm CleverBox";
                    mail.Body = "Mã đơn hàng: " + maDH + ". Đơn hàng có mã trên sẽ được gửi đến anh/ chị " +
                       txtHoTen.Text + ". Cảm ơn anh/ chị đã tin tưởng và mua hàng tại CleverBox!";
                    SmtpClient client = new SmtpClient();
                    client.Host = "smtp.gmail.com";
                    client.Port = 587;
                    client.EnableSsl = true;
                    client.Credentials = new NetworkCredential("2121005137@sv.ufm.edu.vn", "Oin11469");
                    client.Send(mail);
                }
                Server.Transfer("DatHangThanhCong.aspx");
            }
            else
            {
                // Hiển thị thông báo lỗi
                string errorMessage = "Mã xác minh không đúng. Vui lòng nhập lại!";
                string script = "alert('" + errorMessage + "');";
                ScriptManager.RegisterStartupScript(this, GetType(), "ErrorAlert", script, true);
            }

            
        }

        protected void btnHuyBo_Click(object sender, EventArgs e)
        {
            Server.Transfer("DatHang.aspx");
        }
    }
}