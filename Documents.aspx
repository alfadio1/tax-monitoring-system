<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Documents.aspx.cs" Inherits="Documents" %>

<%@ Register Src="WebUserControl.ascx" TagName="WebUserControl" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Upload Documents</title>
    <link type="text/css"  href="StyleSheet.css" rel="Stylesheet"  />
</head>
<body bgcolor="silver">
    <form id="form1" runat="server">
    <div>
        <table style="position:absolute;top:250px;left:380px; z-index: 103;">
            <tr>
                <td>
                   <asp:Label ID="lbldocumenttype" CssClass="boxes2" Text="Document Type" runat="server"></asp:Label> 
                </td>
                <td>
                   <asp:DropDownList ID="dropdocumenttype" CssClass="boxes" runat="server">
                        <asp:ListItem>W-2</asp:ListItem>
                        <asp:ListItem>1099 MSC</asp:ListItem>
                        <asp:ListItem>Interest</asp:ListItem>
                        <asp:ListItem>Student fee Receipt</asp:ListItem>
                        <asp:ListItem>Stock Statement</asp:ListItem>
                        <asp:ListItem>Foreign Tax Certificate</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                   </asp:DropDownList>
                </td>      
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbldocumentfile" CssClass="boxes2" runat="server" Text="Document File"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="uploadfile" CssClass="boxes" runat="server" />
                </td>
            </tr>
        </table>
        <table style="position:absolute;top:300px;left:510px; z-index: 104;">
            <tr>
                <td>
                    <asp:Button ID="btnsubmit" CssClass="text" runat="server" Text="Submit" OnClick="btnsubmit_Click" />
                </td>
            </tr>
        </table >
    </div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="72px" Style="z-index: 100;
            left: 384px; position: absolute; top: 152px" Width="304px" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="dropdocumenttype"
            ErrorMessage="Please Enter Document Type" Style="z-index: 101; left: 616px; position: absolute;
            top: 256px">*</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="uploadfile"
            ErrorMessage="Please Enter Document File" Style="z-index: 105; left: 664px; position: absolute;
            top: 280px">*</asp:RequiredFieldValidator>
        &nbsp;
        <uc1:WebUserControl ID="WebUserControl1" runat="server" />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp;<br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
    </form>
</body>
</html>
