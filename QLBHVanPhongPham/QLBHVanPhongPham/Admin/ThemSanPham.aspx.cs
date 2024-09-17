using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace QLBHVanPhongPham.Admin
{
    public partial class ThemSanPham : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader reader;
        protected void Page_Load(object sender, EventArgs e)
        {
            // hien thi ds san pham
            con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\QLBHVanPhongPham.mdf;Integrated Security=True");
            SqlDataAdapter dad = new SqlDataAdapter("SELECT MaSP, TenSP, DonGia, DonViTinh, HinhSP, MaLoaiSP FROM SanPham", con);
            DataTable table = new DataTable();
            dad.Fill(table);
            GridViewSP.DataSource = table;
            GridViewSP.DataBind();
            if(!IsPostBack)
            {
                //don vi tinh
                string[] dvt = { "Cây", "Hộp", "Cái", "Bộ", "Quyển" };
                drpDonViTinh.DataSource = dvt;
                drpDonViTinh.DataBind();
                // loai san pham
                SqlDataAdapter dadLSP = new SqlDataAdapter("SELECT * FROM LoaiSanPham", con);
                DataTable tableLSP = new DataTable();
                dadLSP.Fill(tableLSP);
                drpLSP.DataSource = tableLSP;
                drpLSP.DataBind();
            }

        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            // them san pham
            try
            {
                string strFileUpload = "";
                if (upHinh.HasFile)
                {
                    strFileUpload = "~/images/" + upHinh.FileName;
                    string path = MapPath("/Images/") + upHinh.FileName;
                    upHinh.PostedFile.SaveAs(path);
                }
                con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\QLBHVanPhongPham.mdf;Integrated Security=True");
                cmd = new SqlCommand("INSERT INTO SanPham VALUES(@MaSP, @TenSP, @DonGia, @DonViTinh, @HinhSP, @MaLoaiSP)", con);
                cmd.Parameters.AddWithValue("@MaSP", txtMaSP.Text);
                cmd.Parameters.AddWithValue("@TenSP", txtTenSP.Text);
                cmd.Parameters.AddWithValue("@DonGia", Convert.ToDouble(txtDonGia.Text));
                cmd.Parameters.AddWithValue("@DonViTinh", drpDonViTinh.Text);
                cmd.Parameters.AddWithValue("@HinhSP", strFileUpload);
                cmd.Parameters.AddWithValue("@MaLoaiSP", Convert.ToInt32(drpLSP.SelectedValue));
                using (con)
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    lblThongBao.Text = "Thêm thành công!";
                    Server.Transfer("ThemSanPham.aspx");
                };
                
            }
            catch(Exception ex) 
            {
                lblThongBao.Text = ex.Message;
            }
        }

        protected void btnHuy_Click(object sender, EventArgs e)
        {
            Server.Transfer("ThemSanPham.aspx");
        }
    }
}