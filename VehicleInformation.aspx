<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VehicleInformation.aspx.cs" Inherits="VehicleInformation" %>

<%@ Register Src="WebUserControl.ascx" TagName="WebUserControl" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body bgcolor="silver">
    <form id="form1" runat="server">
    <div>
    <table style="position:absolute;top:250px;left:380px; z-index: 102;">
        <tr>
            <td style="height: 22px">
                <asp:Label ID="lblmake" Text="Make" runat="server"></asp:Label>
            </td>
            <td style="height: 22px">
                <asp:TextBox ID="txtmake" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Make"
                    Height="16px" Style="z-index: 100; left: 328px; position: absolute; top: 8px"
                    Width="104px" ControlToValidate="txtmake"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblmodel" Text="Model" runat="server"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtmodel" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Model "
                    Height="16px" Style="z-index: 100; left: 328px; position: absolute; top: 32px"
                    Width="88px" ControlToValidate="txtmodel"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblpdate" Text="Purchase Date" runat="server"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpdate" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="pdateCompareValidator" runat="server" ErrorMessage="Enter correct date" Operator="DataTypeCheck" ControlToValidate="txtpdate" Type="Date" ></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblbmileage" Text="Beginining Mileage Date" runat="server"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtbmileage" runat="server"></asp:TextBox>&nbsp;
            </td>
        </tr>
        <tr>
            <td style="height: 26px">
                <asp:Label ID="lblemileage" Text="Ending Mileage Date" runat="server"></asp:Label>
            </td>
            <td style="height: 26px">
                <asp:TextBox ID="txtemileage" runat="server"></asp:TextBox>&nbsp;
            </td>
        </tr>
    </table>
    <table style="position:absolute;top:400px;left:450px; z-index: 103;">
        <tr>
            <td>
                <asp:Button ID="btnnext" runat="server" Text="Next" OnClick="btnnext_Click" CausesValidation="False" />
                <asp:Button ID="btnprevious" runat="server" Text="Previous" OnClick="btnprevious_Click" CausesValidation="False" />
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" />
            </td>
        </tr>
    </table>
    
        <uc1:WebUserControl ID="WebUserControl1" runat="server" />
        &nbsp;<br />
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
        &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 512px; position: absolute;
            top: 464px" Font-Bold="True" ForeColor="#C00000"></asp:Label>
        <asp:Button ID="Button1" runat="server" CausesValidation="False" OnClick="Button1_Click"
            Style="z-index: 104; left: 512px; position: absolute; top: 432px" Text="Exit"
            Width="72px" />
       
    
    </div>
    </form>
</body>
</html>
