<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="XacMinhEmail.aspx.cs" Inherits="QLBHVanPhongPham.XacMinhEmail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style29 {
            width: 552px;
            padding: 1px 4px;
        }
        .auto-style30 {
            width: 552px;
            color: #FFFFFF;
            font-size: large;
            height: 32px;
            border-style: solid;
            border-width: 1px;
            padding: 1px 4px;
            background-color: #33CCCC;
        }
        .auto-style31 {
            height: 33px;
        }
        .auto-style32 {
            width: 552px;
            height: 33px;
            padding: 1px 4px;
        }
        .auto-style33 {
            color: #000000;
        }
        .auto-style34 {
            height: 32px;
        }
        .auto-style35 {
            height: 32px;
            width: 298px;
        }
        .auto-style36 {
            height: 33px;
            width: 298px;
        }
        .auto-style37 {
            width: 298px;
        }
        .auto-style38 {
            text-align: center;
            color: #009999;
            width: 552px;
            padding: 1px 4px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;</p>
    <p>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style35"></td>
                <td class="auto-style30"><strong>XÁC MINH EMAIL</strong></td>
                <td class="auto-style34"></td>
            </tr>
            <tr>
                <td class="auto-style36"></td>
                <td class="auto-style32"><span class="auto-style33">Nhập mã xác minh : </span>
                    <asp:TextBox ID="txtNhapMaXacMinh" runat="server" Width="300px"></asp:TextBox>
                </td>
                <td class="auto-style31"></td>
            </tr>
            <tr>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style38">
                    <asp:Button ID="btnOK" runat="server" OnClick="btnOK_Click" Text="Nhập mã" Width="120px" />
&nbsp;<asp:Button ID="btnHuyBo" runat="server" OnClick="btnHuyBo_Click" Text="Hủy bỏ" Width="120px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>
