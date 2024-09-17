using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace QLBHVanPhongPham
{
    public partial class LaySanPham : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader reader;
        protected void Page_Load(object sender, EventArgs e)
        {

            // tim ma sp
            string masp = "";
            if (Request.QueryString["MaSP"] != null)
                masp = Request.QueryString["MaSP"];
            Session["MaSP"] = masp;

            string conStr = ("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\QLBHVanPhongPham.mdf;Integrated Security=True");
            SqlConnection con = new SqlConnection(conStr);
            SqlDataAdapter adapt = new SqlDataAdapter("SELECT MaSP, TenSP, DonGia, DonViTinh, HinhSP, MaLoaiSP FROM SanPham WHERE MaSP=" + "'" + masp + "'", con);
            DataTable dt = new DataTable();
            adapt.Fill(dt);
            if (dt.Rows.Count == 0)
                return;
            lblTenSP.Text = "Tên hàng: " + dt.Rows[0]["TenSP"].ToString();
            lblMaSP.Text = "Mã hàng: " + dt.Rows[0]["MaSP"].ToString();
            lblDonViTinh.Text = dt.Rows[0]["DonViTinh"].ToString();
            lblDonGia.Text = "Đơn giá: " + Convert.ToDouble(dt.Rows[0]["DonGia"]).ToString("0,000 VND");
            ImgHinh.ImageUrl = dt.Rows[0]["HinhSP"].ToString();
            ViewState["SanPham"] = dt;
            // hien thi sp cung loai
            string maLoai = dt.Rows[0]["MaLoaiSP"].ToString();
            string cmdStr = "SELECT MaSP, TenSP, DonGia, DonViTinh, HinhSP FROM SanPham WHERE MaLoaiSP = " + maLoai + " ORDER BY TenSP";
            SqlCungLoai.SelectCommand = cmdStr;
            LstCungLoai.DataBind();
            
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            DataTable dtSP = (DataTable)ViewState["SanPham"];
            DataTable dtGH;     // Giỏ hàng
            int Soluong = 0;
            if (Session["GioHang"] == null)    // tạo giỏ hàng
            {
                dtGH = new DataTable();
                dtGH.Columns.Add("MaSP");
                dtGH.Columns.Add("TenSP");
                dtGH.Columns.Add("DonGia");
                dtGH.Columns.Add("SoLuong");
                dtGH.Columns.Add("TongTien");
            }
            else // đã có giỏ hàng từ session
                dtGH = (DataTable)Session["GioHang"];
            string masp = (string)Session["MaSP"];
            int pos = TimSP(masp, dtGH);        // vị trí sản phẩm trong giỏ hàng
            if (pos != -1)  // tìm thấy
            {
                //cập nhật lại số lượng/ tổng tiền
                Soluong = Convert.ToInt32(dtGH.Rows[pos]["SoLuong"]) + Convert.ToInt32(txtSoLuong.Text);
                dtGH.Rows[pos]["SoLuong"] = Soluong;
                dtGH.Rows[pos]["TongTien"] = Convert.ToDouble(dtSP.Rows[0]["DonGia"]) * Soluong;
            }
            else    //chưa có sản phẩm, thêm sản phẩm vào giỏ
            {
                Soluong = Convert.ToInt32(txtSoLuong.Text);
                DataRow dr = dtGH.NewRow();//tạo một dòng mới
                // gán dữ liệu cho từng cột trong dòng mới
                dr["MaSP"] = dtSP.Rows[0]["MaSP"];
                dr["TenSP"] = dtSP.Rows[0]["TenSP"];
                dr["DonGia"] = dtSP.Rows[0]["DonGia"];
                dr["SoLuong"] = Soluong;
                dr["TongTien"] = Convert.ToDouble(dtSP.Rows[0]["DonGia"]) * Soluong;
                //thêm dòng mới vào giỏ hàng
                dtGH.Rows.Add(dr);
            }
            //lưu giỏ hàng vào session
            Session["GioHang"] = dtGH;
            // trả về trang giỏ hàng
            Server.Transfer("GioHang.aspx");
        }

        public static int TimSP(string masp, DataTable dt)
        {
            int pos = -1;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if (dt.Rows[i]["MaSP"].ToString().ToLower() == masp.ToLower())
                {
                    pos = i;
                    break;
                }
            }
            return pos;
        }

        protected void btnHuy_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/TrangChu.aspx");
        }

        protected void btnTru_Click(object sender, EventArgs e)
        {
            int num = Convert.ToInt32(txtSoLuong.Text);
            num--;
            txtSoLuong.Text = num.ToString();
        }

        protected void btnCong_Click(object sender, EventArgs e)
        {
            int num = Convert.ToInt32(txtSoLuong.Text);
            num++;
            txtSoLuong.Text = num.ToString();
        }
    }
}