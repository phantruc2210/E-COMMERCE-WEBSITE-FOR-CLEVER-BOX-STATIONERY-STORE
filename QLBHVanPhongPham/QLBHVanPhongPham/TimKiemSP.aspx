<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="TimKiemSP.aspx.cs" Inherits="QLBHVanPhongPham.TimKiemSP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style29 {
            height: 226px;
        }
        .auto-style30 {
            color: #009999;
            height: 226px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
<br />
<asp:DataList ID="DataLstSP" runat="server" RepeatColumns="2" Width="1178px" DataSourceID="SqlSanPham" Height="166px">
        <ItemTemplate>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style29"></td>
                    <td class="auto-style30">
                        <asp:Image ID="ImgAnh" runat="server" Height="300px" ImageUrl='<%# Eval("HinhSP") %>' Width="300px" />
                        <br />
                        <br />
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/Customers/LaySanPham.aspx?MaSP=" + Eval("MaSP") %>' Text='<%# Eval("TenSP") %>' CssClass="auto-style13"></asp:HyperLink>
                        <br />
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
    <asp:Label ID="lblThongBao" runat="server" Font-Size="Large" ForeColor="Red"></asp:Label>
    <br />
    <asp:SqlDataSource ID="SqlSanPham" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [SanPham]"></asp:SqlDataSource>
</asp:Content>
