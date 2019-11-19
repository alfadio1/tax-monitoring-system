<%@ Page Language="C#" AutoEventWireup="true" CodeFile="chkack.aspx.cs" Inherits="chkack" %>

<%@ Register Src="WebUserControl2.ascx" TagName="WebUserControl2" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link type="text/css" href="StyleSheet.css" rel="stylesheet" />
</head>
<body bgcolor="silver">
    <form id="form1" runat="server">
    <div>
        <uc1:WebUserControl2 ID="WebUserControl2_1" runat="server" />
        <br />
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:Panel ID="Panel1" runat="server" Height="234px" Style="z-index: 100; left: 152px;
            position: absolute; top: 179px" Width="542px" BackColor="Silver">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="z-index: 109;
                left: 160px; position: absolute; top: 231px" Text="ok" Width="47px" BackColor="White" CssClass="boxes" />
            &nbsp;
            <asp:Label ID="Label1" runat="server" Style="z-index: 101; left: 22px; position: absolute;
                top: 16px" Text="from" CssClass="boxes2"></asp:Label>
            <asp:Label ID="Label2" runat="server" Style="z-index: 102; left: 20px; position: absolute;
                top: 55px" Text="subject" CssClass="boxes2"></asp:Label>
            <asp:Label ID="Label3" runat="server" Style="z-index: 103; left: 26px; position: absolute;
                top: 134px" Text="body" CssClass="boxes2"></asp:Label>
            <asp:Label ID="Label4" runat="server" Style="z-index: 104; left: 22px; position: absolute;
                top: 98px" Text="attachments" Visible="False" CssClass="boxes2"></asp:Label>
            <asp:Label ID="Label5" runat="server" Style="z-index: 105; left: 166px; position: absolute;
                top: 22px"></asp:Label>
            <asp:Label ID="Label6" runat="server" Style="z-index: 106; left: 165px; position: absolute;
                top: 62px"></asp:Label>
            &nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Height="75px" Style="z-index: 107; left: 146px;
                position: absolute; top: 131px" TextMode="MultiLine" Width="204px"></asp:TextBox>
            <asp:HyperLink ID="HyperLink1" runat="server" Style="z-index: 108; left: 162px; position: absolute;
                top: 100px" Visible="False">HyperLink</asp:HyperLink>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
