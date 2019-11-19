<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Spouse.aspx.cs"  Inherits="Spouse" %>

<%@ Register Src="WebUserControl.ascx" TagName="WebUserControl" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Spouse Information</title>
    <link type="text/css"  href="StyleSheet.css" rel="Stylesheet"  />
</head>
<body bgcolor="silver">
    <form id="form1" runat="server">
    <div>
        <table style="position:absolute;top:200px;left:350px; z-index: 107;">
            <tr>
                <td>
                    <asp:Label ID="lblfname" CssClass="boxes"  runat="server" Text="First Name"></asp:Label>
                </td>
                <td style="width: 129px">
                    <asp:TextBox ID="txtfname" CssClass="boxes"  runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblmname" CssClass="boxes"  runat="server" Text="Middle Name"></asp:Label>
                </td>
                <td style="width: 129px">
                    <asp:TextBox ID="txtmname" CssClass="boxes"  runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbllname" CssClass="boxes"  runat="server" Text="Last Name"></asp:Label>
                </td>
                <td style="width: 129px">
                    <asp:TextBox ID="txtlname" CssClass="boxes"  runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbldob" CssClass="boxes"  runat="server" Text="Date of Birth"></asp:Label>
                </td>
                <td style="width: 129px">
                    <asp:TextBox ID="txtdob" CssClass="boxes"  runat="server"></asp:TextBox>
                </td>
               
                <td>
                    <asp:CompareValidator ID="dobcomparevalidator" CssClass="text"  runat="server" ErrorMessage="Enter Data of Birth in the form of mm/dd/yyyy" Operator="DataTypeCheck" ControlToValidate="txtdob" Type="Date" ></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbloccupation" CssClass="boxes"  runat="server" Text="Occupation"></asp:Label>
                </td>
                <td style="width: 129px">
                    <asp:DropDownList ID="occupationdropdownlist" CssClass="boxes"  runat="server">
                        <asp:ListItem>Homemaker</asp:ListItem>
                        <asp:ListItem>Programmer Analyst</asp:ListItem>
                        <asp:ListItem>Business Analyst</asp:ListItem>
                        <asp:ListItem>System Analyst</asp:ListItem>
                        <asp:ListItem>Software Engineer</asp:ListItem>
                        <asp:ListItem>Project Manage</asp:ListItem>
                        <asp:ListItem>Architect</asp:ListItem>
                        <asp:ListItem>DBA</asp:ListItem>
                        <asp:ListItem>Network Engineer</asp:ListItem>
                        <asp:ListItem>Programmer Analyst</asp:ListItem>
                        <asp:ListItem>Student</asp:ListItem>
                        <asp:ListItem>Others</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
             <tr>
                <td style="height: 26px">
                    <asp:Label ID="lblssntax" CssClass="boxes"  runat="server" Text="SSN/TAX"></asp:Label>
                </td>
                <td style="height: 26px; width: 129px;">
                    <asp:CheckBox ID="checkssntax" CssClass="boxes"  runat="server" AutoPostBack="True" OnCheckedChanged="checkssntax_CheckedChanged" />
                </td>
            </tr>
        </table>
        <table style="position:absolute;top:370px;left:350px; z-index: 108;">
            <tr>
                <td>
                    <asp:Button ID="btnsubmit" CssClass="text"  Text="Sumit" runat="server" OnClick="btnsubmit_Click" />
                </td>
            </tr>
        </table>
        <asp:Button ID="itinspouse" runat="server" OnClick="itinspouse_Click" Style="z-index: 109;
            left: 424px; position: absolute; top: 376px" Text="Show ITINSpouse " Visible="False" />
        <uc1:WebUserControl ID="WebUserControl1" runat="server" />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="144px" Style="z-index: 101;
            left: 328px; position: absolute; top: 416px" Width="336px" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter First Name"
            Style="z-index: 102; left: 552px; position: absolute; top: 208px" ControlToValidate="txtfname">*</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Middle Name"
            Style="z-index: 103; left: 552px; position: absolute; top: 232px" ControlToValidate="txtmname">*</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Last Name"
            Style="z-index: 104; left: 552px; position: absolute; top: 256px" ControlToValidate="txtlname">*</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Date of Birch in the Form of mm/dd/yyyy"
            Style="z-index: 105; left: 560px; position: absolute; top: 280px" ControlToValidate="txtdob">*</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Select Any Occupation"
            Style="z-index: 106; left: 552px; position: absolute; top: 320px" ControlToValidate="occupationdropdownlist">*</asp:RequiredFieldValidator>
        &nbsp;<br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    </div>
    </form>
</body>
</html>
