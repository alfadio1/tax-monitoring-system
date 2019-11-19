<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BankInformation.aspx.cs" Inherits="BankInformation" %>

<%@ Register Src="WebUserControl.ascx" TagName="WebUserControl" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Bank Informaton</title>
    <link type="text/css"  href="StyleSheet.css" rel="Stylesheet"  />
</head>
<body bgcolor="silver">
    <form id="form1" runat="server">
    <div>
    <table style="position:absolute;top:300px;left:350px; z-index: 108;">
        <tr>
            <td style="width: 108px">
                <asp:Label ID="lblbname" CssClass="boxes2" Text="Bank Name" runat="server"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtbname" CssClass="boxes" runat="server"></asp:TextBox>
            </td>
        </tr>
   
    
        <tr>
            <td style="width: 108px">
                <asp:Label ID="lblanumber" CssClass="boxes2" Text="Account Number" runat="server"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtanumber" CssClass="boxes" runat="server"></asp:TextBox>
            </td>
        </tr>
        
        <tr>
            <td style="width: 108px; height: 26px">
                <asp:Label ID="lblrnumber" CssClass="boxes2" Text="Routing Number" runat="server"></asp:Label>
            </td>
            <td style="height: 26px">
                <asp:TextBox ID="txtrnumber" CssClass="boxes" runat="server"></asp:TextBox>
            </td>
        </tr>
    
        <tr>
            <td style="width: 108px">
                <asp:Label ID="lblatype" CssClass="boxes2" Text="Account Type" runat="server"></asp:Label>
            </td>
            <td>
                <asp:RadioButtonList ID="radioatype" CssClass="boxes" runat="server" RepeatDirection="Horizontal" >
                    <asp:ListItem>Current</asp:ListItem>
                    <asp:ListItem>Savings</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
    </table>
     <table style="position:absolute;top:430px;left:420px; z-index: 109;">
        <tr>
            <td>
                <asp:Button ID="btnnext" runat="server" Text="Next" OnClick="btnnext_Click" CausesValidation="False" />
                <asp:Button ID="btnprevious" runat="server" Text="Previous" OnClick="btnprevious_Click" CausesValidation="False" />
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" Width="56px" />
            </td>
        </tr>
    </table>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#C00000" Style="z-index: 100;
            left: 488px; position: absolute; top: 496px"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtbname"
            ErrorMessage="Enter Bank Name" Style="z-index: 101; left: 624px; position: absolute;
            top: 304px">*</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtanumber"
            ErrorMessage="Enter Accout Number" Style="z-index: 102; left: 624px; position: absolute;
            top: 336px">*</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtrnumber"
            ErrorMessage="Enter Routing Number" Style="z-index: 103; left: 624px; position: absolute;
            top: 360px">*</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="radioatype"
            ErrorMessage="Select Account Type" Style="z-index: 104; left: 624px; position: absolute;
            top: 392px">*</asp:RequiredFieldValidator>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="128px" Style="z-index: 105;
            left: 391px; position: absolute; top: 153px" Width="296px" />
        <asp:Button ID="Button1" runat="server" Style="z-index: 106; left: 480px; position: absolute;
            top: 464px" Text="Exit" Width="72px" CausesValidation="False" OnClick="Button1_Click" />
        &nbsp;&nbsp;
        <uc1:WebUserControl ID="WebUserControl1" runat="server" />
        &nbsp;<br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label></div>
    </form>
</body>
</html>
