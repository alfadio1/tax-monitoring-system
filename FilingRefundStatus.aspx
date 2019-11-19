<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FilingRefundStatus.aspx.cs" Inherits="FilingRefundStatus" %>

<%@ Register Src="WebUserControl.ascx" TagName="WebUserControl" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body bgcolor="silver">
    <form id="form1" runat="server">
    <div>
        <uc1:WebUserControl ID="WebUserControl1" runat="server" />
        <asp:Panel ID="Panel1" runat="server" Height="272px" Style="z-index: 100; left: 200px;
            position: absolute; top: 144px" Width="512px">
            <p>From the data of receipt/acknoweledgement of your tax return, IRS issues Tax Refunds as given below:</p>
            <p>1.  E Filling with direct deposit: It will take approximately 7 to 10 days to get your Refund.</p>
            <p>2.  E Filling without Direct Deposit: It will take approximately 3 weeks to get your Reund.</p>
            <p>3.  Paper filing/manual filing: It will tabke approximately 6 weeks  to get your Refund</p>
            <p>To check you Refund status you will need you SSN and Federal Tax Refund amount.</p>
            <p>Click here to check your 
                <asp:LinkButton ID="LinkButton1" runat="server" Style="z-index: 100; left: 152px;
                    position: absolute; top: 264px">Refund Status</asp:LinkButton>
            </p>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
