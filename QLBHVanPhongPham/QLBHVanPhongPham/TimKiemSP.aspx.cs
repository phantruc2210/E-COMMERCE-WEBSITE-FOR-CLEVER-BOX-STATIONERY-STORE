using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLBHVanPhongPham
{
    public partial class TimKiemSP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox txtTimKiem = (TextBox)Session["txtTimKiem"];
            string cmdStr = "SELECT MaSP, TenSP, DonGia, HinhSP FROM SanPham WHERE TenSP LIKE" + "'" + txtTimKiem.Text + "%'"+" ORDER BY TenSP";
            SqlSanPham.SelectCommand = cmdStr;
            DataLstSP.DataBind();

            int soluongsp = DataLstSP.Items.Count; // Đếm số lượng sản phẩm hiển thị

            if (soluongsp == 0)
            {
                string errorMessage = "Sản phẩm không có trong cửa hàng!";
                string script = "alert('" + errorMessage + "');";
                ScriptManager.RegisterStartupScript(this, GetType(), "ErrorAlert", script, true);
                lblThongBao.Text = "Sản phẩm không có trong cửa hàng!";
            }

        }
    }
}