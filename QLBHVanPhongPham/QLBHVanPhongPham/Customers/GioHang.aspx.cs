using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace QLBHVanPhongPham
{
    public partial class GioHang : System.Web.UI.Page
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
            grdGioHang.DataSource = dt;
            grdGioHang.DataBind();
            grdGioHang.Columns[1].ControlStyle.Width = 80;
            grdGioHang.Columns[2].ControlStyle.Width = 150;
            grdGioHang.Columns[3].ControlStyle.Width = 80;
            grdGioHang.Columns[3].ItemStyle.HorizontalAlign = HorizontalAlign.Right;
            grdGioHang.Columns[4].ControlStyle.Width = 80;
            grdGioHang.Columns[4].ItemStyle.HorizontalAlign = HorizontalAlign.Center;
            grdGioHang.Columns[5].ControlStyle.Width = 100;
            grdGioHang.Columns[5].ItemStyle.HorizontalAlign = HorizontalAlign.Right;
            if (dt != null)
            {
                double tong = TinhTien(dt);
                Session["tong"] = tong;     // lưu dữ liệu tổng tiền để truyền qua DatHang.aspx
                lblTongTien.Text = "Tổng tiền trên giỏ hàng là: " + String.Format("{0:0,000 VND}", tong);
            }
        }

        protected double TinhTien(DataTable dt)
        {
            if (dt == null)
                return 0;
            double sum = 0;
            foreach (DataRow row in dt.Rows)
                sum = sum + Convert.ToDouble(row["TongTien"]);
            return sum;
        }

        protected void grdGioHang_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            // Lấy dữ liệu giỏ hàng từ Session
            dt = (DataTable)Session["GioHang"];
            // Lấy thông tin về hàng đang được cập nhật
            GridViewRow row = grdGioHang.Rows[e.RowIndex];
            TextBox txtSoluong = (TextBox)(row.Cells[4].Controls[0]);
            int Soluong = Convert.ToInt32(txtSoluong.Text);
            // Cập nhật số lượng và tổng tiền của hàng trong csdl
            dt.Rows[row.DataItemIndex]["SoLuong"] = txtSoluong.Text;
            dt.Rows[row.DataItemIndex]["TongTien"] = Convert.ToDouble(dt.Rows[row.DataItemIndex]["DonGia"]) * Soluong;

            // Hủy chế độ chỉnh sửa
            grdGioHang.EditIndex = -1;

            // Cập nhật giỏ hàng trong Session
            Session["GioHang"] = dt;

            // Tải lại dữ liệu
            Load();
        }

        protected void grdGioHang_RowEditing(object sender, GridViewEditEventArgs e)
        {
            // Chuyển sang chế độ chỉnh sửa hàng
            grdGioHang.EditIndex = e.NewEditIndex;
            // Tải lại dữ liệu
            Load();
        }

        protected void grdGioHang_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            // Lấy dữ liệu giỏ hàng từ Session
            dt = (DataTable)Session["GioHang"];

            // Lấy thông tin về hàng đang bị xóa
            GridViewRow row = grdGioHang.Rows[e.RowIndex];

            // Xóa hàng khỏi giỏ hàng
            dt.Rows[row.DataItemIndex].Delete();

            // Hủy chế độ chỉnh sửa
            grdGioHang.EditIndex = -1;

            // Cập nhật giỏ hàng trong Session
            Session["GioHang"] = dt;

            // Tải lại dữ liệu
            Load();
        }

        protected void grdGioHang_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            // Hủy chế độ chỉnh sửa
            grdGioHang.EditIndex = -1;

            // Tải lại dữ liệu
            Load();
        }


    }
}