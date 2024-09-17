<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="QLBHVanPhongPham.TrangChu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            width: 100%;
            height: 111px;
        }
        .auto-style29 {
            height: 226px;
        }
        .auto-style30 {
            text-align: center;
            color: #009999;
            height: 226px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:DataList ID="DataLstSP" runat="server" RepeatColumns="4" Width="1178px" DataSourceID="SqlSanPham" Height="166px">
            <ItemTemplate>
                <table style="width:100%;">
                    <tr>
                        <td class="auto-style29"></td>
                        <td class="auto-style30">
                            <asp:Image ID="ImgAnh" runat="server" Height="150px" ImageUrl='<%# Eval("HinhSP") %>' Width="150px" />
                            <br />
                            <br />
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/Customers/LaySanPham.aspx?MaSP=" + Eval("MaSP") %>' Text='<%# Eval("TenSP") %>' CssClass="auto-style13"></asp:HyperLink>
                            <br />
                            &nbsp;&nbsp;
                            <asp:Label ID="lblDonGia" runat="server" Font-Bold="False" Font-Names="Arial" Text='<%# Eval("DonGia", "{0:0,000 VND}") %>' ForeColor="Black" CssClass="auto-style13"></asp:Label>
                            <br />
                        </td>
                        <td class="auto-style29"></td>
                    </tr>
                </table>
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlSanPham" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT MaSP, TenSP, DonGia, HinhSP FROM SanPham WHERE MaLoaiSP = 1 ORDER BY TenSP"></asp:SqlDataSource>
    </p>
</asp:Content>
