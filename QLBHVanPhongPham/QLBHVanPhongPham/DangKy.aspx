<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="QLBHVanPhongPham.DangKy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style29 {
            height: 33px;
        }
        .auto-style30 {
            width: 374px;
        }
        .auto-style31 {
            text-align: right;
            color: #009999;
            height: 33px;
        }
        .auto-style32 {
            color: #000000;
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
            <td>    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" AnswerLabelText="Câu trả lời bảo mật" AnswerRequiredErrorMessage="Câu trả lời bảo mật là bắt buộc." BackColor="White" BorderColor="#33CCCC" BorderStyle="Solid" BorderWidth="1px" CompleteSuccessText="Bạn đã tạo tài khoản thành công!" ConfirmPasswordCompareErrorMessage="Mật khẩu và Mật khẩu xác nhận phải khớp nhau." ConfirmPasswordLabelText="Xác nhận mật khẩu :" ConfirmPasswordRequiredErrorMessage="Xác nhận mật khẩu là bắt buộc." ContinueButtonText="Tiếp tục" CreateUserButtonText="Tạo tài khoản" DuplicateEmailErrorMessage="Email đã có. Nhập email khác!" DuplicateUserNameErrorMessage="Tên người dùng đã có. Nhập tên khác!" EmailRegularExpressionErrorMessage="Vui lòng nhập một e-mail khác." EmailRequiredErrorMessage="E-mail là bắt buộc." FinishCompleteButtonText="Hoàn tất" FinishPreviousButtonText="Quay lại" InvalidAnswerErrorMessage="Nhập câu trả lời bảo mật khác!" InvalidEmailErrorMessage="Nhập e-mail!" InvalidPasswordErrorMessage="Mật khẩu phải từ 7 kí tự đổ lên và có 1 kí tự đặc biệt!" InvalidQuestionErrorMessage="Nhập câu hỏi bảo mật khác!" PasswordLabelText="Mật khẩu :" PasswordRegularExpressionErrorMessage="Vui lòng nhập mật khẩu khác." PasswordRequiredErrorMessage="Mật khẩu là bắt buộc." QuestionLabelText="Câu hỏi bảo mật :" QuestionRequiredErrorMessage="Câu hỏi bảo mật là bắt buộc." StartNextButtonText="Tiếp tục" StepNextButtonText="Tiếp tục" StepPreviousButtonText="Quay lại" UnknownErrorMessage="Tài khoản không được tạo! Thử lại!" UserNameLabelText="Tên người dùng :" UserNameRequiredErrorMessage="Tên người dùng là bắt buộc." ForeColor="Black" ContinueDestinationPageUrl="~/TrangChu.aspx">
        <MailDefinition BodyFileName="~/DangKy.txt" From="2121005137@sv.ufm.edu.vn" Subject="ĐĂNG KÝ TÀI KHOẢN">
        </MailDefinition>
        <TitleTextStyle BorderColor="#33CCCC" Font-Bold="True" Font-Size="15pt" ForeColor="White" BackColor="#33CCCC" />
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" >
                <ContentTemplate>
                    <table style="color:Black;background-color:White;font-size:100%;">
                        <tr>
                            <td align="center" colspan="2" style="color:White;background-color:#33CCCC;border-color:#33CCCC;font-size:15pt;font-weight:bold;">Đăng ký tài khoản</td>
                        </tr>
                        <tr>
                            <td align="right" class="auto-style31">
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" CssClass="auto-style32">Tên người dùng :</asp:Label>
                            </td>
                            <td class="auto-style29">
                                <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="Tên người dùng là bắt buộc." ToolTip="Tên người dùng là bắt buộc." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Mật khẩu :</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Mật khẩu là bắt buộc." ToolTip="Mật khẩu là bắt buộc." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Xác nhận mật khẩu :</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Xác nhận mật khẩu là bắt buộc." ToolTip="Xác nhận mật khẩu là bắt buộc." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" ErrorMessage="E-mail là bắt buộc." ToolTip="E-mail là bắt buộc." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question">Câu hỏi bảo mật :</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Question" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" ControlToValidate="Question" ErrorMessage="Câu hỏi bảo mật là bắt buộc." ToolTip="Câu hỏi bảo mật là bắt buộc." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer">Câu trả lời bảo mật</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Answer" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" ControlToValidate="Answer" ErrorMessage="Câu trả lời bảo mật là bắt buộc." ToolTip="Câu trả lời bảo mật là bắt buộc." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="Mật khẩu và Mật khẩu xác nhận phải khớp nhau." ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2" style="color:Red;">
                                <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:CreateUserWizardStep>
            <asp:CompleteWizardStep runat="server" >
                <ContentTemplate>
                    <table style="color:Black;background-color:White;font-size:100%;">
                        <tr>
                            <td align="center" colspan="2" style="color:White;background-color:#33CCCC;border-color:#33CCCC;font-size:15pt;font-weight:bold;">Hoàn tất</td>
                        </tr>
                        <tr>
                            <td>Bạn đã tạo tài khoản thành công!</td>
                        </tr>
                        <tr>
                            <td align="right" colspan="2">
                                <asp:Button ID="ContinueButton" runat="server" CausesValidation="False" CommandName="Continue" PostBackUrl="~/TrangChu.aspx" Text="Tiếp tục" ValidationGroup="CreateUserWizard1" />
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:CompleteWizardStep>
        </WizardSteps>
        <HeaderStyle BorderColor="#33CCCC" ForeColor="White" />
    </asp:CreateUserWizard>
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
