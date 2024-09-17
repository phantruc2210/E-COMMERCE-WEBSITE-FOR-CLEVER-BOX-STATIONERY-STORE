<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="QLBHVanPhongPham.GioHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    .auto-style23 {
        color: #FFFFFF;
        text-align: left;
        height: 37px;
        width: 1175px;
        font-size: x-large;
        font-family: Arial, Helvetica, sans-serif;
        background-color: #33CCCC;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style23">
    &nbsp; GIỎ HÀNG</p>
    <div>
<asp:GridView ID="grdGioHang" runat="server" AutoGenerateColumns="False" OnRowCancelingEdit="grdGioHang_RowCancelingEdit" OnRowDeleting="grdGioHang_RowDeleting" OnRowEditing="grdGioHang_RowEditing" OnRowUpdating="grdGioHang_RowUpdating" Width="100%" CellPadding="4" GridLines="Horizontal" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px">
    <Columns>
        <asp:CommandField CancelText="Hủy" DeleteText="Xóa" EditText="Sửa" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Cập nhật">
        <ItemStyle ForeColor="Blue" />
        </asp:CommandField>
        <asp:BoundField DataField="MaSP" HeaderText="Mã SP" />
        <asp:BoundField DataField="TenSP" HeaderText="Tên SP" />
        <asp:BoundField DataField="DonGia" DataFormatString="{0:0,000 VND}" HeaderText="Đơn Giá" />
        <asp:BoundField DataField="SoLuong" HeaderText="Số Lượng" />
        <asp:BoundField DataField="TongTien" DataFormatString="{0:0,000 VND}" HeaderText="Tổng Tiền" />
    </Columns>
    <FooterStyle BackColor="White" ForeColor="#333333" />
    <HeaderStyle BackColor="#33CCCC" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#33CCCC" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="White" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F7F7F7" />
    <SortedAscendingHeaderStyle BackColor="#487575" />
    <SortedDescendingCellStyle BackColor="#E5E5E5" />
    <SortedDescendingHeaderStyle BackColor="#275353" />
</asp:GridView>
    </div>
<div class="auto-style9">
    <br />
&nbsp;&nbsp;
    <asp:Label ID="lblTongTien" runat="server" ForeColor="Red"></asp:Label>
    <br />
    <br />
    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/TrangChu.aspx">&lt;&lt;Tiếp tục mua hàng</asp:LinkButton>
&nbsp;
    <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Customers/DatHang.aspx">&lt;&lt;Tiến hành đặt hàng</asp:LinkButton>
</div>
</asp:Content>
