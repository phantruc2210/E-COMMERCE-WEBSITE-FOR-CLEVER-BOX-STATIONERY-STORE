using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLBHVanPhongPham
{
    public partial class Main : System.Web.UI.MasterPage
    {
        DataTable dt = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["GioHang"] != null)
            {
                dt = (DataTable)Session["GioHang"];
                lblSL.Text = dt.Rows.Count.ToString();
            }
        }

        protected void Imgfb_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.facebook.com/CleverBoxVN");
        }

        protected void Imgig_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.instagram.com/cleverboxvn/");
        }

        protected void Imgtiktok_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.tiktok.com/@cleverboxvn");
        }

        protected void ImgTimKiem_Click(object sender, ImageClickEventArgs e)
        {
            /*
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\QLBHVanPhongPham.mdf;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("SELECT MaSP, TenSP FROM SanPham WHERE TenSP = @TenSP", con);
            cmd.Parameters.AddWithValue("@TenSP", txtTimKiem.Text);
            using (con)
            {
                con.Open();
                Object kq = cmd.ExecuteScalar();
                if (kq != null)
                    lblKQ.Text = "Sản phẩm " + txtTimKiem.Text + " có mã " +kq + " có trong cửa hàng!";
                else
                    lblKQ.Text = "Không tìm thấy sản phẩm!";
            }
            */
            Session["txtTimKiem"] = txtTimKiem;
            string timkiem = ResolveUrl("~/TimKiemSP.aspx");
            Response.Redirect(timkiem);
        }
    }
}