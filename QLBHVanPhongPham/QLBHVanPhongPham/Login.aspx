<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="QLBHVanPhongPham.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style29 {
            width: 115px;
        }
        .auto-style30 {
            width: 375px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style30">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style30">&nbsp;</td>
            <td>    <asp:Login ID="Login1" runat="server" BackColor="White" BorderColor="#33CCCC" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" FailureText="Đăng nhập không thành công! Thử lại lần sau!" Height="200px" LoginButtonText="Đăng nhập" PasswordLabelText="Mật khẩu :" PasswordRequiredErrorMessage="Phải nhập mật khẩu!" RememberMeText="Ghi nhớ mật khẩu" TitleText="Đăng Nhập" UserNameLabelText="Tên người quản trị :" UserNameRequiredErrorMessage="Phải nhập tên!" Width="300px" CreateUserText="Đăng Ký" CreateUserUrl="~/DangKy.aspx" ForeColor="Black">
        <LayoutTemplate>
            <table cellpadding="4" cellspacing="0" style="border-collapse:collapse;">
                <tr>
                    <td>
                        <table cellpadding="0" style="height:200px;width:300px;">
                            <tr>
                                <td align="center" colspan="2" style="color:White;background-color:#33CCCC;border-style:None;font-size:15pt;font-weight:bold;">Đăng Nhập</td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Tên người quản trị :</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="Phải nhập tên!" ToolTip="Phải nhập tên!" ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Mật khẩu :</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Phải nhập mật khẩu!" ToolTip="Phải nhập mật khẩu!" ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:CheckBox ID="RememberMe" runat="server" Text="Ghi nhớ mật khẩu" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color:Red;">
                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Đăng nhập" ValidationGroup="Login1" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:HyperLink ID="CreateUserLink" runat="server" NavigateUrl="~/DangKy.aspx">Đăng Ký</asp:HyperLink>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
    <TitleTextStyle BackColor="#33CCCC" BorderStyle="None" Font-Bold="True" Font-Size="15pt" ForeColor="White" />
</asp:Login>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style30">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
