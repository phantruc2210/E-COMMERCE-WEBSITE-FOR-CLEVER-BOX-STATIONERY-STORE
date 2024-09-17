<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="DatHang.aspx.cs" Inherits="QLBHVanPhongPham.DatHang" %>
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
    .auto-style28 {
        text-align: left;
        color: #0000FF;
    }
    .auto-style30 {
        height: 29px;
    }
    .auto-style33 {
        height: 29px;
        width: 632px;
    }
    .auto-style34 {
        width: 632px;
    }
    .auto-style37 {
        height: 21px;
    }
    .auto-style39 {
        width: 156px;
        color: #000000;
        font-size: medium;
    }
    .auto-style40 {
        font-size: medium;
        color: #000000;
    }
    .auto-style41 {
        font-size: large;
    }
    .auto-style42 {
        height: 29px;
        width: 156px;
        color: #000000;
        font-size: medium;
    }
        .auto-style43 {
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style23">
    &nbsp; ĐẶT HÀNG</p>
<div class="auto-style28">
    <span class="auto-style41">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; THÔNG TIN ĐƠN ĐẶT HÀNG<br />
    <br />
    </span>
    <asp:GridView ID="grdDonDH" runat="server" AutoGenerateColumns="False" CssClass="auto-style40" Width="100%" CellPadding="4" GridLines="Horizontal" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px">
        <Columns>
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
    <span class="auto-style41">
    <br />
    <asp:Label ID="lblTongTien" runat="server" ForeColor="Red" CssClass="auto-style13"></asp:Label>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; THÔNG TIN KHÁCH HÀNG<br />
    </span>
    <table style="width: 100%;">
        <tr>
            <td class="auto-style42">Họ tên(*):</td>
            <td class="auto-style33">
                <asp:TextBox ID="txtHoTen" runat="server" Width="200px" CssClass="auto-style13"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtHoTen" ErrorMessage="Nhập họ tên!" CssClass="auto-style13">Nhập họ tên!</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style30"></td>
        </tr>
        <tr>
            <td class="auto-style42">Email(*):</td>
            <td class="auto-style33">
                <asp:TextBox ID="txtEmail" runat="server" Width="200px" CssClass="auto-style13"></asp:TextBox>
&nbsp;<span class="auto-style13"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Nhập email!">Nhập email!</asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email sai định dạng!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Email sai định dạng!</asp:RegularExpressionValidator>
                </span>
            </td>
            <td class="auto-style30"></td>
        </tr>
        <tr>
            <td class="auto-style39">Điện thoại(*):</td>
            <td class="auto-style34">
                <asp:TextBox ID="txtDienThoai" runat="server" Width="200px" CssClass="auto-style13"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDienThoai" ErrorMessage="Nhập số điện thoại!" CssClass="auto-style13">Nhập số điện thoại!</asp:RequiredFieldValidator>
                <span class="auto-style13">&nbsp;</td>
            <td></span></td>
        </tr>
        <tr>
            <td class="auto-style39">Địa chỉ(*):</td>
            <td class="auto-style34">
                <asp:TextBox ID="txtDiaChi" runat="server" Width="200px" CssClass="auto-style13"></asp:TextBox>
&nbsp;<span class="auto-style13"><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDiaChi" ErrorMessage="Nhập địa chỉ!">Nhập địa chỉ!</asp:RequiredFieldValidator>
            </td>
            <td></span></td>
        </tr>
        <tr>
            <td class="auto-style37" colspan="2">
                <asp:Button ID="btnOK" runat="server" OnClick="btnOK_Click" Text="Thanh toán khi nhận hàng" Width="233px" />
&nbsp;<asp:Button ID="btnHuy" runat="server" OnClick="btnHuy_Click" Text="Hủy đặt hàng" />
            </td>
            <td class="auto-style37"></td>
        </tr>
        <tr>
            <td class="auto-style43" colspan="2"></td>
            <td class="auto-style43"></td>
        </tr>
    </table>
</div>
<br />
</asp:Content>
