<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ScheduleInterview.aspx.cs" Inherits="ScheduleInterview" %>

<%@ Register Src="WebUserControl.ascx" TagName="WebUserControl" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Schedule Interview</title>
     <link type="text/css"  href="StyleSheet.css" rel="Stylesheet"  />
</head>
<body bgcolor="silver">
    <form id="form1" runat="server">
    <div>
        <table style="position:absolute;top:220px;left:420px; z-index: 103;">
            <tr>
                <td style="height: 26px">
                    <asp:Label ID="lblselecteddate" CssClass="boxes2" runat="server" Text="Selected Date"></asp:Label>
                </td>
                <td style="height: 26px">
                    <asp:TextBox ID="txtselecteddate" CssClass="boxes" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="btnshowcal" CssClass="text" runat="server" Text=".." OnClick="btnshowcal_Click" CausesValidation="False" />
                </td>     
            </tr>
        </table>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="64px" Style="z-index: 100;
            left: 440px; position: absolute; top: 144px" Width="280px" />
        <table style="position:absolute;top:250px;left:500px; z-index: 104;">
            <tr>
                <td>
                    <asp:Calendar ID="cal" CssClass="boxes" runat="server" OnSelectionChanged="cal_SelectionChanged"></asp:Calendar>
                </td>
            </tr>
        </table>
        <table style="position:absolute;top:250px;left:420px; z-index: 105;">
            <tr>
                <td>
                    <asp:Button ID="btnsubmit" CssClass="text" runat="server" Text="Submit" OnClick="btnsubmit_Click" />
                </td>
            </tr>
        </table>
        <table style="position:absolute;top:200px;left:350px; z-index: 106;">
            <tr>
                <td>
                    <asp:Label ID="lblmsg" CssClass="text" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <uc1:WebUserControl ID="WebUserControl1" runat="server" />
        &nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtselecteddate"
            ErrorMessage="Please Select Date" Style="z-index: 101; left: 656px; position: absolute;
            top: 224px">*</asp:RequiredFieldValidator>
        &nbsp;<br />
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
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" CssClass="text" Font-Bold="True" ForeColor="Red"></asp:Label></div>
    </form>
    
</body>
</html>
