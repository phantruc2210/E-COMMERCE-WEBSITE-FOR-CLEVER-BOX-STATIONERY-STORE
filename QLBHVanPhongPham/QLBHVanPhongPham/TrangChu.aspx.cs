using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLBHVanPhongPham
{
    public partial class TrangChu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Menu menu = (Menu)this.Master.FindControl("menu1");
            if (menu.SelectedValue != "")
            {
                string cmdStr = "SELECT MaSP, TenSP, DonGia, HinhSP FROM SanPham WHERE MaLoaiSP = " +
                    Convert.ToInt32(menu.SelectedValue).ToString() + " ORDER BY TenSP";
                SqlSanPham.SelectCommand = cmdStr;
                DataLstSP.DataBind();
            }
        }
    }
}