<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<%@ Register Src="Registration.ascx" TagName="Registration" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Forgot Password</title>
     <link type="text/css"  href="StyleSheet.css" rel="Stylesheet"  />
</head>
<body bgcolor="silver">
    <form id="form1" runat="server">
    <div>
        
        <table style="position:absolute;top:180px;left:450px; z-index: 102;">
            <tr>
                <td style="height: 28px">
                    <asp:Label ID="lbluserid" CssClass="boxes2" Text="UserId" runat="server"></asp:Label>
                    <asp:TextBox ID="txtuseid" CssClass="boxes" runat="server"></asp:TextBox>
                    <asp:Button ID="btnshow" CssClass="text" Text="Show" runat="server" OnClick="btnshow_Click" />
                </td>
            </tr>
        </table>
        <table style="position:absolute;top:230px;left:450px; z-index: 103;">
            <tr>
                <td>
                    <asp:Label ID="lblmsg" CssClass="text" ForeColor="red" runat="server" Text="Your Password is:"></asp:Label>
                    <asp:Label ID="lblpwd" CssClass="text" Font-Bold="true" ForeColor="DarkGoldenrod" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <uc1:Registration ID="Registration1" runat="server" />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="1px" Style="z-index: 100;
            left: 432px; position: absolute; top: 144px" Width="296px" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtuseid"
            ErrorMessage="Please Enter UserID" Style="z-index: 104; left: 696px; position: absolute;
            top: 184px">*</asp:RequiredFieldValidator>
    </div>
    </form>
</body>
</html>
