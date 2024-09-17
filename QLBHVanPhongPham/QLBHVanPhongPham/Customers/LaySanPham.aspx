<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="LaySanPham.aspx.cs" Inherits="QLBHVanPhongPham.LaySanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style23 {
            text-align: center;
            height: 32px;
        }
        .auto-style24 {
            color: #000000;
        }
        .auto-style29 {
            text-align: center;
        }
        .auto-style30 {
            color: #0000FF;
        }
        .auto-style31 {
            color: #000000;
        }
        .auto-style32 {
            color: #009999;
            font-size: large;
        }
        .auto-style33 {
            height: 29px;
            text-align: left;
            width: 585px;
        }
        .auto-style34 {
            text-align: center;
            height: 29px;
            width: 379px;
            color: #FFFFFF;
        }
        .auto-style35 {
            width: 344px;
        }
        .auto-style36 {
            width: 344px;
            height: 43px;
        }
        .auto-style37 {
            width: 100%;
        }
        .auto-style38 {
            text-align: left;
            height: 29px;
            width: 370px;
            color: #FFFFFF;
        }
        .auto-style40 {
        width: 585px;
        height: 29px;
        text-align: left;
        color: #000000;
    }
        .auto-style25 {
            color: #FF0000;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style23">
                <br />
                <span class="auto-style24">
                <span class="auto-style15">
                &nbsp;<table class="auto-style37">
                    <tr>
                        <span class="auto-style24">
                        <span class="auto-style15">
                        <td class="auto-style34" rowspan="7">&nbsp;</td>
                        <td class="auto-style38" rowspan="7">
                <asp:Image ID="ImgHinh" runat="server" Height="350px" Width="350px" />
                        </td>
                </span>
                </span>
                        <td class="auto-style36">
                            &nbsp;</td>
                        <span class="auto-style24">
                        <span class="auto-style15">
                        <td rowspan="7">&nbsp;</td>
                </span>
                </span>
                    </tr>
                    <tr>
                        <td class="auto-style36">
                <asp:Label ID="lblTenSP" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#009999"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style36">
                <span class="auto-style24">
                <span class="auto-style15">
                <asp:Label ID="lblMaSP" runat="server" CssClass="auto-style40" style="color: #000000"></asp:Label>
                </span>
                </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style40">
                Số lượng :<span class="auto-style15">
                <asp:Button ID="btnTru" runat="server" OnClick="btnTru_Click" Text="-" Width="20px" />
&nbsp;<asp:TextBox ID="txtSoLuong" runat="server" Width="50px">1</asp:TextBox>
&nbsp;<asp:Button ID="btnCong" runat="server" OnClick="btnCong_Click" Text="+" />
&nbsp;l <span class="auto-style24">
                            <asp:Label ID="lblDonViTinh" runat="server" CssClass="auto-style24"></asp:Label>
                </span>
                </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style40">
                            <span class="auto-style24">
                            <span class="auto-style15">
                <asp:Label ID="lblDonGia" runat="server" CssClass="auto-style25"></asp:Label>
                </span>
                </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style40">
                            <span class="auto-style24">
                            <span class="auto-style15">
                <asp:Button ID="btnThem" runat="server" OnClick="btnThem_Click" Text="Thêm vào giỏ hàng" Height="30px" Width="200px" />
                            <br />
                            <br />
                            <asp:Button ID="btnHuy" runat="server" OnClick="btnHuy_Click" Text="Trở về trang chủ" Height="30px" Width="200px" />
                </span>
                </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style35">
                            &nbsp;</td>
                    </tr>
                </table>
                <br />
                <br />
                </span>
                </span>
                <span class="auto-style33">
                <span class="auto-style32"><strong>SẢN PHẨM CÙNG LOẠI</strong></span></span><span class="auto-style15"><span class="auto-style24"><br />
                <br />
                <asp:DataList ID="LstCungLoai" runat="server" DataSourceID="SqlCungLoai" RepeatColumns="3" Width="1174px">
                    <ItemTemplate>
                        <table style="width:100%;">
                            <tr>
                                <td>&nbsp;</td>
                                <td class="auto-style29">
                                    <asp:Image ID="Image8" runat="server" Height="100px" ImageUrl='<%# Eval("HinhSP") %>' Width="100px" />
                                    <br />
                                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style30" NavigateUrl='<%# "~/Customers/LaySanPham.aspx?MaSP=" + Eval("MaSP") %>' Text='<%# Eval("TenSP") %>'></asp:HyperLink>
                                    <br />
                                    <asp:Label ID="lblDonGia" runat="server" CssClass="auto-style31" Text='<%# Eval("DonGia", "{0:0,000 VND}") %>'></asp:Label>
                                    <br />
                                    <br />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
                </span>
                </span>
                </td>
        </tr>
    </table>
    <br />
    <asp:SqlDataSource ID="SqlCungLoai" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [SanPham]"></asp:SqlDataSource>
</asp:Content>
