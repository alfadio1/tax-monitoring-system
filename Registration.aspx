<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Registration.aspx.cs" Inherits="_Default" %>

<%@ Register Src="Registration.ascx" TagName="Registration" TagPrefix="uc1" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Registration</title>
    <link type="text/css"  href="StyleSheet.css" rel="Stylesheet"  />
</head>
<body bgcolor="silver">
    <form id="form1" runat="server">
    <div>
        <table style="position:absolute;top:280px;left:420px; z-index: 102;">
            <tr>
                <td>
                    <asp:Label ForeColor="red" CssClass="text" ID="lblmsg" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <table style="position:absolute;top:300px;left:420px; z-index: 103;">
            <tr>
                <td>
                    <asp:Label ID="lbltax" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblfname" runat="server" Text="First Name" CssClass="boxes2"></asp:Label>
                </td>
                <td style="width: 280px">
                    <asp:TextBox ID="txtfname" CssClass="boxes" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblmname" runat="server" CssClass="boxes2" Text="Middle Name" ></asp:Label>
                </td>
                <td style="width: 280px">
                    <asp:TextBox ID="txtmname" CssClass="boxes" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbllname" CssClass="boxes2" runat="server" Text="Last Name"></asp:Label>
                </td>
                <td style="width: 280px">
                    <asp:TextBox ID="txtlname" CssClass="boxes" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblphone" runat="server" CssClass="boxes2" Text="Phone"></asp:Label>
                </td>
                <td style="width: 280px">
                    <asp:TextBox ID="txtphone" CssClass="boxes" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbluserid" CssClass="boxes2" runat="server" Text="UserId"></asp:Label>
                </td>
                <td style="width: 280px">
                    <asp:TextBox ID="txtuserid" CssClass="boxes" runat="server"></asp:TextBox>
                    
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblpwd" runat="server" CssClass="boxes2" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtpwd" CssClass="boxes" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 23px">
                    <asp:Label ID="lblconfirmpwd" runat="server" CssClass="boxes2" Text="Confirm Password"></asp:Label>
                </td>
                <td style="height: 23px">
                    <asp:TextBox ID="txtconfirmpwd" CssClass="boxes" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfname"
                        ErrorMessage="Please Enter First Name" Style="z-index: 100; left: 224px; position: absolute;
                        top: 16px">*</asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtmname"
                        ErrorMessage="Please Enter Middle Name" Style="z-index: 101; left: 224px; position: absolute;
                        top: 48px">*</asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtlname"
                        ErrorMessage="Please Enter Last Name" Style="z-index: 102; left: 224px; position: absolute;
                        top: 72px">*</asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtphone"
                        ErrorMessage="Please Enter Phone Number" Style="z-index: 103; left: 224px; position: absolute;
                        top: 96px">*</asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtuserid"
                        ErrorMessage="Please Enter UserID" Style="z-index: 104; left: 224px; position: absolute;
                        top: 120px">*</asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtpwd"
                        ErrorMessage="Please Enter Password" Style="z-index: 105; left: 224px; position: absolute;
                        top: 144px">*</asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtconfirmpwd"
                        ErrorMessage="Please Enter Confirm  Password" Style="z-index: 107; left: 224px;
                        position: absolute; top: 160px">*</asp:RequiredFieldValidator>
                    
                </td>
            </tr>
        </table>
        <table style="position:absolute;top:500px;left:550px; z-index: 104;">
            <tr>
                <td>
                    <asp:Button ID="register" runat="server" CssClass="text" Text="Register" OnClick="register_Click" />
                </td>
            </tr>
        </table>
        <uc1:Registration ID="Registration1" runat="server" />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="200px" Style="z-index: 100;
            left: 432px; position: absolute; top: 144px" Width="304px" />
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpwd"
            ControlToValidate="txtconfirmpwd" ErrorMessage="Password is Not Match" Style="z-index: 105;
            left: 672px; position: absolute; top: 456px" Width="144px"></asp:CompareValidator>
    </div>
    </form>
</body>
</html>
