<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TaxReturn.aspx.cs" Inherits="TaxReturn" %>

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
        <asp:Panel ID="Panel1" runat="server" Height="280px" Style="z-index: 100; left: 200px;
            position: absolute; top: 144px" Width="472px">
            <p><b>Download Tax Return Review:</b>&nbsp;
            </p>
                <p><b>Note:</b>Use last 4 digits of your SSN as passowrd</p>
                <p>for unzipping your Tax Return.</p>
                <p>When your <b>Tax Preparation</b> is complite you can <b>Donload your Tax Return  from here.</b> </p>
                <p><b>Corrections:</b>Please send us an email to with page number and necessary</p>
                <p>corrections.</p>
                <p><b>Questions:</b>Call us at 602-412-3812 for questions about your Tax Return.</p>
                <p><b>Your Next Steps:</b></p>
                <p>1.  <b>Fax/Upload/Email</b>your signed <b>E-file Authorization Form(s)</b> as easly possible.</p>
                        <p>We will efile  your Tax Return on receipt of your Authorization Forms and send you an</p>
                        <p>acknowledgement</p>
                <p>2.  If you case is <b>not eligible to E-File,</b> we will  send your Tax Return  by policy Mail which</p>
                        <p>you have to <b>sign  and mail it to IRS</b> and  State(s) as per the Filling instructions.</p>
            
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
