using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLBHVanPhongPham
{
    public partial class DatHangThanhCong : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.PreviousPage != null)
            {
                TextBox txtName = (TextBox)Session["txtHoTen"];
                TextBox txtMail = (TextBox)Session["txtEmail"];
                TextBox txtDienthoai = (TextBox)Session["txtDienThoai"];
                TextBox txtDiachi = (TextBox)Session["txtDiaChi"];
                string maDH = (string)Session["maDH"];
                lblThongBao.Text = "<br>Xin chào anh/ chị</br>";
                lblThongBao.Text += "Qúy khách vừa đặt hàng thành công mặt hàng của shop.";
                lblThongBao.Text += "<br>Thông tin khách hàng cung cấp như sau.</br>";
                lblThongBao.Text += "Họ tên : " + txtName.Text;
                lblThongBao.Text += "<br>Email : " + txtMail.Text + "</br>";
                lblThongBao.Text += "Số điện thoại : " + txtDienthoai.Text;
                lblThongBao.Text += "<br>Địa chỉ : " + txtDiachi.Text + "</br>";
                lblThongBao.Text += "Mã đơn hàng : " + maDH;
                lblThongBao.Text += "<br>Mặt hàng sẽ được gửi đến địa chỉ trên trong 2-3 ngày tới.</br>";
                lblThongBao.Text += "Vui lòng theo dõi Email để biết thêm thông tin chi tiết.";
                lblThongBao.Text += "<br>Cảm ơn quý khách đã tin tưởng và mua hàng tại CleverBox.</br>";
                lblThongBao.Text += "Mọi thắc mắc vui lòng liên hệ hotline : 0896 918 585 ";
                lblThongBao.Text += "<br></br>";
            }
        }
    }
}