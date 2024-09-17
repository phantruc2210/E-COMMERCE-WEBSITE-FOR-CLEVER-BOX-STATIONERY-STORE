<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ChiTietSanPham.aspx.cs" Inherits="QLBHVanPhongPham.Admin.ChiTietSanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    .auto-style17 {
        text-align: left;
        color: #FFFFFF;
        font-size: x-large;
        font-family: Arial, Helvetica, sans-serif;
        background-color: #33CCCC;
    }
        .auto-style18 {
            text-align: left;
            color: #000000;
        }
        .auto-style19 {
            color: #000000;
        }
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
        height: 29px;
        width: 286px;
        margin-bottom: 0px;
    }
    .auto-style29 {
        font-size: medium;
        height: 29px;
        width: 286px;
        margin-bottom: 0px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style23">
        &nbsp;
        DANH MỤC SẢN PHẨM</p>
    <p class="auto-style9">
        <span class="auto-style19">Loại sản phẩm :</span>
        <asp:DropDownList ID="drpLSP" runat="server" AutoPostBack="True" DataSourceID="SqlLoaiSP" DataTextField="TenLoaiSP" DataValueField="MaLoaiSP">
        </asp:DropDownList>
    </p>
    <p class="auto-style9">
        <asp:SqlDataSource ID="SqlLoaiSP" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [LoaiSanPham]"></asp:SqlDataSource>
    </p>
    <asp:GridView ID="GridViewSP" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlSanPham" PageSize="4" Width="100%" CssClass="auto-style29" DataKeyNames="MaSP" CellPadding="4" GridLines="Horizontal" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px">
        <Columns>
            <asp:CommandField CancelText="Hủy" DeleteText="Xóa" EditText="Sửa" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Cập nhật">
            <ControlStyle ForeColor="Blue" />
            <ItemStyle ForeColor="Blue" />
            </asp:CommandField>
            <asp:BoundField DataField="MaSP" HeaderText="Mã SP" />
            <asp:BoundField DataField="TenSP" HeaderText="Tên SP" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Image ID="Image6" runat="server" Height="70px" ImageUrl='<%# Eval("HinhSP") %>' Width="70px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="DonGia" DataFormatString="{0:0,000 VND}" HeaderText="Đơn giá" />
            <asp:BoundField DataField="DonViTinh" HeaderText="Đơn vị tính" />
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
    <p class="auto-style18">
        <asp:SqlDataSource ID="SqlSanPham" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT MaSP, TenSP, DonGia, DonViTinh, HinhSP FROM SanPham WHERE MaLoaiSP = @MaLoaiSP" DeleteCommand="DELETE FROM SanPham WHERE MaSP = @MaSP" UpdateCommand="UPDATE SanPham SET TenSP=@TenSP, DonGia=@DonGia, DonViTinh=@DonViTinh WHERE MaSP=@MaSP">
            <DeleteParameters>
                <asp:Parameter Name="MaSP" />
            </DeleteParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="drpLSP" Name="MaLoaiSP" PropertyName="SelectedValue" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="TenSP" />
                <asp:Parameter Name="DonGia" />
                <asp:Parameter Name="DonViTinh" />
                <asp:Parameter Name="MaSP" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
