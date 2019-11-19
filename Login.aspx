<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<%@ Register Src="Login.ascx" TagName="Login" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Login</title>
     <link type="text/css"  href="StyleSheet.css" rel="Stylesheet"  />
</head>
<body bgcolor="silver">
    <form id="form1" runat="server">
    <div> 
       
        <table style="position:absolute;top:250px;left:500px; z-index: 103;">
            <tr>
                <td>
                    <asp:Label ID="lbluserid" Text="UserId" CssClass="boxes2" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtuserid" CssClass="boxes" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 26px">
                    <asp:Label ID="lblpwd" Text="Password" CssClass="boxes2" runat="server"></asp:Label>
                </td>
                <td style="height: 26px">
                    <asp:TextBox ID="txtpwd" runat="server" CssClass="boxes" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table style="position:absolute;top:300px;left:610px; z-index: 104;">
            <tr>
                <td>
                    <asp:Button ID="btnlogin" runat="server" CssClass="text" Text="Login" OnClick="btnlogin_Click" />
                </td>
            </tr>
        </table>
        <table style="position:absolute;top:330px;left:500px; z-index: 105;">
            <tr>
                <td style="height: 21px">
                    <asp:Label ForeColor="red" ID="lblmsg" CssClass="text" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <uc1:Login ID="Login1" runat="server" OnLoad="Login1_Load" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter UserID"
            Style="z-index: 100; left: 688px; position: absolute; top: 256px" ControlToValidate="txtuserid">*</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpwd"
            ErrorMessage="Please Enter Password" Style="z-index: 101; left: 688px; position: absolute;
            top: 280px">*</asp:RequiredFieldValidator>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="64px" Style="z-index: 106;
            left: 504px; position: absolute; top: 161px" Width="232px" />
    </div>
    </form>
</body>
</html>
