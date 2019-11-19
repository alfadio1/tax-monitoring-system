<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ack.aspx.cs" Inherits="ack" %>

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
        &nbsp;<br />
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;<br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:Panel ID="Panel1" runat="server" Height="308px" Style="z-index: 100; left: 242px;
            position: absolute; top: 200px" Width="484px">
            <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" Style="z-index: 100;
                left: 99px; position: absolute; top: 72px">
                <Columns>
                    <asp:BoundColumn DataField="sender" HeaderText="sender"></asp:BoundColumn>
                    <asp:HyperLinkColumn DataNavigateUrlField="senddate" DataNavigateUrlFormatString="chkack.aspx?sdate={0}"
                        DataTextField="subject" DataTextFormatString="{0}" HeaderText="subject" NavigateUrl="chkack.aspx"
                        Text="subject"></asp:HyperLinkColumn>
                    <asp:BoundColumn DataField="senddate" HeaderText="senddate"></asp:BoundColumn>
                </Columns>
            </asp:DataGrid>
        </asp:Panel>
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        
        
    
    </div>
    </form>
</body>
</html>
