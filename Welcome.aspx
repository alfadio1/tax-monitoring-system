<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Welcome.aspx.cs" Inherits="Welcome" %>

<%@ Register Src="WebUserControl.ascx" TagName="WebUserControl" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Welcome to Tax Information System</title>
    <link type="text/css"  href="StyleSheet.css" rel="Stylesheet"  />
</head>
<body bgcolor="silver">
    <form id="form1" runat="server">
    <div>
        <table style="position:absolute;top:210px;left:250px; z-index: 104;">
    <tr>
        <td style="width: 507px; height: 59px;">
            <p>
                <b>Finalysis</b> is professional financial services company
                established by experienced CPAs and Chartered Accountants to 
                provide costeffective and efficient Financial and Tax 
                Planning solutions to a wide range of clients across the globe.
            </p>    
        </td>
    </tr>
</table>
<table style="position:absolute;top:300px;left:250px; z-index: 105;">
    <tr>
        <td style="width: 507px">
            <p>
                <b>TAX PREPARATION</b> Isn't it too expensive to overlook to 
                Deductions that you are entitled to?
                
                Let our Tax Professionals plan and prepare your Tax Return to 
                make sure you get the maximum benefit you deserve.
            </p>
        </td>
    </tr>
</table>
<table style="position:absolute;top:400px;left:250px; z-index: 106;">
    <tr>
        <td style="width: 509px; height: 66px;">
            <p>
                <b>Finalysis</b> is providing single window tax service to 
                the Indian Software Consultants having income from both India 
                and USA by minimizing the overall tax burden, claiming Foreign 
                Tax Credits and other Tax Planning Strategies according to the 
                US Internal Revenue Code and Indian Income Tax Act, 1961.
            </p>
        </td>
    </tr>
</table>
        <table style="position:absolute;top:130px;left:350px; z-index: 103;">
            <tr>
                <td>
                    <asp:Label ID="lbltax" CssClass="text" runat="server" Text="TAXID :"></asp:Label>
                    <asp:Label ID="lbltaxid" CssClass="text" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <uc1:WebUserControl ID="WebUserControl1" runat="server" />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="15pt" ForeColor="Red"
            Style="z-index: 100; left: 304px; position: absolute; top: 176px" Width="104px"></asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="15pt" Style="z-index: 101;
            left: 256px; position: absolute; top: 176px" Text="Hai "></asp:Label>
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="15pt" Style="z-index: 107;
            left: 400px; position: absolute; top: 176px" Text="Welcome to Tax Inormaton System"
            Width="296px"></asp:Label>
    </div>
    </form>
</body>
</html>
