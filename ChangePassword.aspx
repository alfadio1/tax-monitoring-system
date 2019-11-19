<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" %>

<%@ Register Src="WebUserControl.ascx" TagName="WebUserControl" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Change Password</title>
    <link type="text/css"  href="StyleSheet.css" rel="Stylesheet"  />
</head>
<body bgcolor="silver">
    <form id="form1" runat="server">
    <div>
        <table style="position:absolute;top:250px;left:350px; z-index: 104;">
            <tr>
                <td>
                    <asp:Label ID="lbloldpwd" CssClass="boxes2" Text="Old Password" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtoldpwd" TextMode="Password" CssClass="boxes" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblnewpwd" CssClass="boxes2" Text="New Password" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtnewpwd" CssClass="boxes" TextMode="Password" runat="server" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblconfirmpwd" CssClass="boxes2" Text="Confirm Password" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtconfirmpwd" TextMode="password" CssClass="boxes" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="confirmpwdcomprevalidator" CssClass="text" ControlToCompare="txtnewpwd" ControlToValidate="txtconfirmpwd" ErrorMessage="Password is Not Match" runat="server"></asp:CompareValidator>
                </td>
            </tr>
        </table> 
        <table style="position:absolute;top:330px;left:480px; z-index: 105;">
            <tr>
                <td>
                    <asp:Button ID="btnsubmit" Text="Submit" CssClass="text" runat="server" OnClick="btnsubmit_Click" />
                </td>
            </tr>
        </table>
        <table style="position:absolute;top:380px;left:450px; z-index: 106;">
            <tr>
                <td>
                    <asp:Label ID="lblerror" ForeColor="red" CssClass="text" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <uc1:WebUserControl ID="WebUserControl1" runat="server" />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="80px" Style="z-index: 100;
            left: 352px; position: absolute; top: 137px" Width="312px" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtoldpwd"
            ErrorMessage="Please Enter Old Password" Style="z-index: 101; left: 576px; position: absolute;
            top: 256px">*</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtnewpwd"
            ErrorMessage="Please Enter New Password" Style="z-index: 102; left: 576px; position: absolute;
            top: 280px">*</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtconfirmpwd"
            ErrorMessage="Please Enter Confirm Password" Style="z-index: 107; left: 576px;
            position: absolute; top: 304px">*</asp:RequiredFieldValidator>
    </div>
    </form>
</body>
</html>
