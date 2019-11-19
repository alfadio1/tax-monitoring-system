<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" %>

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
        &nbsp;
            <asp:Panel ID="Panel1" runat="server" Height="272px" Style="z-index: 100; left: 200px;
            position: absolute; top: 144px" Width="400px">
        <p>You can pay your <b>Tax Preparation Fees</b> here.</p>    
        <p>please&nbsp; check your Tax Summary and make your payment</p>
        <p>using your <b>Credit/Debit card
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/pay.bmp"
            Style="z-index: 100; left: 368px; position: absolute; top: 56px" />
        </b></p>
                <p>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                </p>
                <p>
                    <asp:Label ID="Label1" runat="server" Style="z-index: 101; left: 17px; position: absolute;
                        top: 134px" Text="Bank Name"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Style="z-index: 102; left: 15px; position: absolute;
                        top: 172px" Text="Debit/Credit Number"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 103; left: 151px; position: absolute;
                        top: 133px"></asp:TextBox>
                    <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 104; left: 154px; position: absolute;
                        top: 170px"></asp:TextBox>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                        ErrorMessage="*"></asp:RequiredFieldValidator></p>
                <p>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
                        ErrorMessage="*"></asp:RequiredFieldValidator>
                </p>
                <p>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                        runat="server" ControlToValidate="TextBox3" ErrorMessage="*"></asp:RequiredFieldValidator></p>
                <p>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="z-index: 106;
                        left: 248px; position: absolute; top: 240px" Text="Submit" />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label></p>
                <p>
                    <b>
                        <asp:TextBox ID="TextBox3" runat="server" Style="z-index: 107; left: 152px; position: absolute;
                            top: 208px"></asp:TextBox>
                    </b>&nbsp;</p>
                <p>
                    <asp:Label ID="Label3" runat="server" Style="z-index: 108; left: 10px; position: absolute;
                        top: 202px" Text="Validity Date"></asp:Label>
                    &nbsp;</p>
                <p>
                    <b>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                    </b></p>
        <p>You can <b>Downlaod your Tax Return for review after making</b></p>
        <p>a payment. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        </p>
        
        </asp:Panel>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox3"
            ErrorMessage=" mm/dd/yyyy" Operator="DataTypeCheck"
            Style="z-index: 102; left: 512px; position: absolute; top: 352px" Type="Date" Width="264px"></asp:CompareValidator>
        
    </div>
    </form>
</body>
</html>
