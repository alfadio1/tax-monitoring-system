<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TaxSummary.aspx.cs" Inherits="TaxSummary" %>

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
        <asp:Panel ID="Panel1" runat="server" Height="424px" Style="z-index: 100; left: 208px;
            position: absolute; top: 152px" Width="528px">
            <p>You will be able to view your <b>Tax Summary</b> one it is reddy.</p>
            <p>Please check you Tax Summary and make your payment ASAP uing your
            credit/debit card to expedite your tax filing.</p>
            
            
            
           <p> <b>Your Next Setps:</b></p>
               <p> Make <b>Paymnet</b> </p>
                <p> <b>Review</b>your tax Return </p>
               <p> Upload/Fax <b>E File Authorization</b></p>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
