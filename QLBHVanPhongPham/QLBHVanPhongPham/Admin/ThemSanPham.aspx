<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ThemSanPham.aspx.cs" Inherits="QLBHVanPhongPham.Admin.ThemSanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    .auto-style25 {
        text-align: left;
        color: #FFFFFF;
        background-color: #33CCCC;
    }
    .auto-style26 {
        font-size: x-large;
    }
    .auto-style27 {
        text-align: left;
        color: #FFFFFF;
        background-color: #FFFFFF;
    }
    .auto-style28 {
        color: #000000;
    }
    .auto-style29 {
        color: #000000;
        height: 29px;
        width: 277px;
    }
    .auto-style31 {
        width: 162px;
    }
    .auto-style32 {
        height: 29px;
        width: 493px;
    }
    .auto-style33 {
        width: 493px;
    }
    .auto-style34 {
        width: 277px;
        height: 29px;
    }
    .auto-style35 {
        width: 277px;
    }
    .auto-style36 {
        width: 100%;
        height: 188px;
    }
    .auto-style37 {
        height: 35px;
    }
        .auto-style38 {
            width: 162px;
            height: 24px;
        }
        .auto-style39 {
            width: 493px;
            height: 24px;
        }
    .auto-style40 {
        color: #000000;
        height: 29px;
        width: 277px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style25">
    <span class="auto-style26">&nbsp;THÊM SẢN PHẨM </span>
</p>
<p class="auto-style27">
    <table align="center" class="auto-style36">
        <tr>
            <td class="auto-style40" style="font-size: medium">Mã sản phẩm:</td>
            <td class="auto-style32" style="font-size: medium">
                <asp:TextBox ID="txtMaSP" runat="server" Width="230px" CssClass="auto-style13"></asp:TextBox>
            </td>
            <td class="auto-style32">&nbsp;</td>
        </tr>
        <tr class="auto-style28">
            <td class="auto-style34" style="font-size: medium">Tên sản phẩm:</td>
            <td class="auto-style32" style="font-size: medium">
                <asp:TextBox ID="txtTenSP" runat="server" Width="230px" CssClass="auto-style13"></asp:TextBox>
            </td>
            <td class="auto-style32"></td>
        </tr>
        <tr class="auto-style28">
            <td class="auto-style35" style="font-size: medium">Đơn giá:</td>
            <td class="auto-style33" style="font-size: medium">
                <asp:TextBox ID="txtDonGia" runat="server" Width="230px" CssClass="auto-style13"></asp:TextBox>
            </td>
            <td class="auto-style33">&nbsp;</td>
        </tr>
        <tr class="auto-style28">
            <td class="auto-style34" style="font-size: medium">Đơn vị tính:</td>
            <td class="auto-style32" style="font-size: medium">
                <asp:DropDownList ID="drpDonViTinh" runat="server" Width="230px" CssClass="auto-style13">
                </asp:DropDownList>
            </td>
            <td class="auto-style32"></td>
        </tr>
        <tr class="auto-style28">
            <td class="auto-style35" style="font-size: medium">Hình sản phẩm:</td>
            <td class="auto-style33" style="font-size: medium">
                <asp:FileUpload ID="upHinh" runat="server" Width="230px" CssClass="auto-style13" />
            </td>
            <td class="auto-style33">&nbsp;</td>
        </tr>
        <tr class="auto-style28">
            <td class="auto-style35" style="font-size: medium">Loại sản phẩm:</td>
            <td class="auto-style33" style="font-size: medium">
                <asp:DropDownList ID="drpLSP" runat="server" DataTextField="TenLoaiSP" DataValueField="MaLoaiSP" Width="230px" CssClass="auto-style13">
                </asp:DropDownList>
            </td>
            <td class="auto-style33">&nbsp;</td>
        </tr>
    </table>
    <table style="width: 100%;">
        <tr class="auto-style28">
            <td class="auto-style37">&nbsp;&nbsp;
                <asp:Button ID="btnThem" runat="server" OnClick="btnThem_Click" Text="Thêm" Height="30px" Width="80px" />
&nbsp;
                <asp:Button ID="btnHuy" runat="server" OnClick="btnHuy_Click" Text="Hủy bỏ" Height="30px" Width="80px" />
            </td>
            <td class="auto-style37">&nbsp;<asp:Label ID="lblThongBao" runat="server" Font-Size="Medium" ForeColor="Red"></asp:Label>
                &nbsp;</td>
        </tr>
        <tr class="auto-style28">
            <td class="auto-style38"></td>
            <td class="auto-style39"></td>
        </tr>
        <tr class="auto-style28">
            <td colspan="2">
                <asp:GridView ID="GridViewSP" runat="server" AutoGenerateColumns="False" Width="100%" Font-Size="Medium" CellPadding="4" GridLines="Horizontal" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px">
                    <Columns>
                        <asp:BoundField DataField="MaSP" HeaderText="Mã SP" />
                        <asp:BoundField DataField="TenSP" HeaderText="Tên SP" />
                        <asp:BoundField DataField="DonGia" DataFormatString="{0:0,000 VND}" HeaderText="Đơn giá" />
                        <asp:BoundField DataField="DonViTinh" HeaderText="Đơn vị tính" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Image ID="Image6" runat="server" Height="25px" ImageUrl='<%# Eval("HinhSP") %>' Width="25px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="MaLoaiSP" HeaderText="Mã loại SP" />
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
            </td>
        </tr>
        <tr class="auto-style28">
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
        </tr>
    </table>
</p>
</asp:Content>
