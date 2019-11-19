<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dependent.aspx.cs" Inherits="Dependent" %>

<%@ Register Src="WebUserControl.ascx" TagName="WebUserControl" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Dependent Information</title>
     <link type="text/css"  href="StyleSheet.css" rel="Stylesheet"  />
<script language="javascript" type="text/javascript">
// <!CDATA[

function TABLE1_onclick() {

}

// ]]>
</script>
</head>
<body bgcolor="silver">
    <form id="form1" runat="server">
    <div>
        <table style="position:absolute;top:230px;left:350px; z-index: 109;" id="TABLE1" onclick="return TABLE1_onclick()">
            <tr>
                <td>
                    <asp:Label ID="lblfname" CssClass="boxes2" Text="First Name" runat="server"></asp:Label>
                </td>
                <td style="width: 140px">
                    <asp:TextBox ID="txtfname" CssClass="boxes" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblmname" CssClass="boxes2" Text="Middle Name" runat="server"></asp:Label>
                </td>
                <td style="width: 140px">
                    <asp:TextBox ID="txtmname" CssClass="boxes" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbllname" CssClass="boxes2" Text="Last Name" runat="server"></asp:Label>
                </td>
                <td style="width: 140px">
                    <asp:TextBox ID="txtlname" CssClass="boxes" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 23px">
                    <asp:Label ID="lblrelation" CssClass="boxes2" Text="Relation" runat="server"></asp:Label>
                </td>
                <td style="height: 23px; width: 140px;">
                    <asp:DropDownList ID="droprelation" CssClass="boxes" runat="server" AutoPostBack="True" OnSelectedIndexChanged="droprelation_SelectedIndexChanged">
                        <asp:ListItem>Daughter</asp:ListItem>
                        <asp:ListItem>Son</asp:ListItem>
                        <asp:ListItem>Father</asp:ListItem>
                        <asp:ListItem>Mother</asp:ListItem>
                        <asp:ListItem>Grand Parent</asp:ListItem>
                        <asp:ListItem>Grand Child</asp:ListItem>
                        <asp:ListItem>Mother-in-Law</asp:ListItem>
                        <asp:ListItem>Sister-in-Law</asp:ListItem>
                        <asp:ListItem>Brother-in-Law</asp:ListItem>
                        <asp:ListItem>Sister</asp:ListItem>
                        <asp:ListItem>Brother</asp:ListItem>
                        <asp:ListItem>Aunt</asp:ListItem>
                        <asp:ListItem>Uncle</asp:ListItem>
                        <asp:ListItem>Niece</asp:ListItem>
                        <asp:ListItem>Nephew</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblother" CssClass="boxes2" Text="Other" runat="server"></asp:Label>
                </td>
                <td style="width: 140px">
                    <asp:TextBox ID="txtother" CssClass="boxes" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbldob" CssClass="boxes2" Text="Date of Birth" runat="server"></asp:Label>
                </td>
                <td style="width: 140px">
                    <asp:TextBox ID="txtdob" CssClass="boxes" runat="server"></asp:TextBox>
                </td>
                 
                <td>
                    <asp:CompareValidator ID="dobcomparevalidator" CssClass="text" runat="server" ErrorMessage="Enter Data of Birth is Wrong" Operator="DataTypeCheck" ControlToValidate="txtdob" Type="Date" ></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td style="height: 38px">
                    <asp:Label ID="lblssntax" Text="SSN/TAX" CssClass="boxes2" runat="server"></asp:Label>
                </td>
                <td style="height: 38px; width: 140px;">
                    <asp:CheckBox ID="checkssntax" CssClass="boxes" runat="server" AutoPostBack="True" OnCheckedChanged="checkssntax_CheckedChanged" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblnoofyears" CssClass="boxes2" Text="Number of Years Lived" runat="server"></asp:Label><br />
                    <asp:Label ID="Label1" CssClass="boxes2" Text="with taxpayer in" runat="server"></asp:Label><br />
                    <asp:Label ID="Label2" CssClass="boxes2" Text="the last year" runat="server"></asp:Label>
                </td>
                <td style="width: 140px">
                    <asp:TextBox ID="txtnoofyear" CssClass="boxes" runat="server"></asp:TextBox>
                </td>   
            </tr>
        </table>
        <table style="position:absolute;top:500px;left:330px; z-index: 110;">
            <tr>
                <td>
                    <asp:Button ID="btnnext" CausesValidation="false"  CssClass="text" runat="server" Text="Next" OnClick="btnnext_Click" />
                </td>
                <td>
                    <asp:Button ID="btnprevious" CausesValidation="false" CssClass="text" runat="server" Text="Previous" OnClick="btnprevious_Click" />
                </td>
                <td>
                    <asp:Button ID="btnsubmit" CssClass="text" runat="server" Text="Submit" OnClick="btnsubmit_Click" />
                </td>
            </tr>
        </table>
        <table style="position:absolute;top:600px;left:450px; z-index: 111;">
            <tr>
                <td>
                    <asp:Label ID="lblmsg3" ForeColor="red" CssClass="text" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <uc1:WebUserControl ID="WebUserControl1" runat="server" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfname"
            ErrorMessage="Please Enter First Name" Style="z-index: 100; left: 600px; position: absolute;
            top: 232px">*</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtmname"
            ErrorMessage="Please Enter Middle Name" Style="z-index: 101; left: 600px; position: absolute;
            top: 256px">*</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtlname"
            ErrorMessage="Please Enter Last Name" Style="z-index: 102; left: 600px; position: absolute;
            top: 280px">*</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="droprelation"
            ErrorMessage="Please Enter Relations" Style="z-index: 103; left: 576px; position: absolute;
            top: 312px">*</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtdob"
            ErrorMessage="Please Enter Date Birth in the Form form mm/dd/yyyy" Style="z-index: 104;
            left: 624px; position: absolute; top: 360px">*</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtnoofyear"
            ErrorMessage="Please Enter Number of Years Lived with taxpayer in one last year"
            Style="z-index: 105; left: 600px; position: absolute; top: 440px">*</asp:RequiredFieldValidator>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="176px" Style="z-index: 106;
            left: 280px; position: absolute; top: 640px" Width="520px" />
        <asp:Button ID="itindependent" runat="server" OnClick="itindependent_Click" Style="z-index: 107;
            left: 584px; position: absolute; top: 504px" Text="Show ITINDependent" Visible="False" />
        <asp:Button ID="Button1" runat="server" CausesValidation="False" OnClick="Button1_Click"
            Style="z-index: 112; left: 464px; position: absolute; top: 552px" Text="Exit"
            Width="96px" />
    </div>
    </form>
</body>
</html>
