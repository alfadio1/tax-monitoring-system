<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyProfile.aspx.cs" Inherits="MyProfile" %>

<%@ Register Src="WebUserControl.ascx" TagName="WebUserControl" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>My Profile</title>
     <link type="text/css"  href="StyleSheet.css" rel="Stylesheet"  />
</head>
<body bgcolor="silver">
    <form id="form1" runat="server">
    <div>
        <table style="position:absolute;top:170px;left:200px; z-index: 119;">
            <tr>
                <td>
                    <asp:Label ID="lbltax" Text="TAXID: " CssClass="boxes2" runat="server"></asp:Label>
                </td>
                <td style="width: 156px">
                    <asp:Label ID="lbltaxid" CssClass="text" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblfname" Text="First Name" CssClass="boxes2" runat="server"></asp:Label>
                </td>
                <td style="width: 156px">
                    <asp:TextBox ID="txtfname" CssClass="boxes" runat="server"></asp:TextBox>
                </td>
                <td style="width: 11px">
                    <asp:RequiredFieldValidator ID="req1" runat="server" Text="*" 
                    ErrorMessage="Please Enter First Name" ControlToValidate="txtfname"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblmname" Text="Middle Name" CssClass="boxes2" runat="server"></asp:Label>
                </td>
                <td style="width: 156px">
                    <asp:TextBox ID="txtmname" CssClass="boxes" runat="server"></asp:TextBox>
                </td>
                <td style="width: 11px">
                    <asp:RequiredFieldValidator ID="req2" runat="server" Text="*" 
                    ErrorMessage="Please Enter Middle Name" ControlToValidate="txtmname"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbllname" Text="Last Name" CssClass="boxes2" runat="server"></asp:Label>
                </td>
                <td style="width: 156px">
                    <asp:TextBox ID="txtlname" CssClass="boxes" runat="server"></asp:TextBox>
                </td>
                <td style="width: 11px">
                    <asp:RequiredFieldValidator ID="req3" runat="server" Text="*" 
                    ErrorMessage="Please Enter Last Name" ControlToValidate="txtlname"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblgender" Text="Gender" CssClass="boxes2" runat="server"></asp:Label>
                </td>
                <td style="width: 156px">
                    <asp:RadioButtonList ID="radiogender" CssClass="boxes" RepeatDirection ="Horizontal" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList> 
                </td>
                <td style="width: 11px">
                    <asp:RequiredFieldValidator ID="req4" runat="server" Text="*" 
                    ErrorMessage="Please Select Gender" ControlToValidate="radiogender"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbldob" Text="Date of Birth" CssClass="boxes2" runat="server"></asp:Label>
                </td>
                <td style="width: 156px">
                    <asp:TextBox ID="txtdob" CssClass="boxes" runat="server"></asp:TextBox>
                </td>
                <td style="width: 11px">
                    <asp:RequiredFieldValidator ID="req5" runat="server" Text="*" 
                    ErrorMessage="Please Enter Date of Birth" ControlToValidate="txtdob"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:CompareValidator ID="comp1" runat="server"
                        ControlToValidate="txtdob" Text="*"  
                         ErrorMessage="Pleae Enter Date in the Form of mm/dd/yyyy" 
                         Type="Date" Operator="DataTypeCheck" >
                    </asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblssn" Text="SSN" CssClass="boxes2" runat="server"></asp:Label>
                </td>
                <td style="width: 156px">
                    <asp:TextBox ID="txtssn" CssClass="boxes" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbladdress" CssClass="boxes2" Text="Address" runat="server"></asp:Label>
                </td>
                <td style="width: 156px">
                    <asp:TextBox ID="txtaddress" CssClass="boxes" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td style="width: 11px">
                    <asp:RequiredFieldValidator ID="req6" runat="server" Text="*" 
                    ErrorMessage="Please Enter Address" ControlToValidate="txtaddress"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblcity" Text="City" CssClass="boxes2" runat="server"></asp:Label>
                </td>
                <td style="width: 156px">
                    <asp:TextBox ID="txtcity" CssClass="boxes" runat="server"></asp:TextBox>
                </td>
                <td style="width: 11px">
                    <asp:RequiredFieldValidator ID="req7" runat="server" Text="*" 
                    ErrorMessage="Please Enter City" ControlToValidate="txtcity"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblstate" Text="State" CssClass="boxes2" runat="server"></asp:Label>
                </td>
                <td style="width: 156px">
                    <asp:TextBox ID="txtstate" CssClass="boxes" runat="server"></asp:TextBox>
                </td>
                <td style="width: 11px">
                    <asp:RequiredFieldValidator ID="req8" runat="server" Text="*" 
                    ErrorMessage="Please Enter State" ControlToValidate="txtstate"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblzip" Text="Zip" CssClass="boxes2" runat="server"></asp:Label>
                </td>
                <td style="width: 156px">
                    <asp:TextBox ID="txtzip" CssClass="boxes" runat="server"></asp:TextBox>
                </td>
                <td style="width: 11px">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtzip"
                        ErrorMessage="Please enter correct ZIP code" Text="*" Style="z-index: 100; left: 240px; position: absolute; top: 296px"
                        ValidationExpression="\d{6}">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblemail" CssClass="boxes2" Text="Email" runat="server"></asp:Label>
                </td>
                <td style="width: 156px">
                    <asp:TextBox ID="txtemail" CssClass="boxes" runat="server"></asp:TextBox>
                </td>
                <td style="width: 11px">
                    
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtemail"
                        ErrorMessage="Enter correct mailid" Text="*" Style="z-index: 100; left: 240px; position: absolute;
                        top: 320px" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            
       </table>
       <table style="position:absolute;top:170px;left:470px; z-index: 120;">
            <tr>
                <td>
                    <asp:Label ID="lbloccuiption" CssClass="boxes2" Text="Occuiption" runat="server"></asp:Label>
                </td>
                <td style="width: 158px">
                    <asp:ListBox ID="listoccuiption" CssClass="boxes" runat="server">
                        <asp:ListItem>Programming Analysist</asp:ListItem>
                        <asp:ListItem>Business Analysist</asp:ListItem>
                        <asp:ListItem>System Analysist</asp:ListItem>
                        <asp:ListItem>Software Engineer</asp:ListItem>
                        <asp:ListItem>Project Manager</asp:ListItem>
                        <asp:ListItem>Architect</asp:ListItem>
                        <asp:ListItem>DBA</asp:ListItem>
                        <asp:ListItem>Network Engineer</asp:ListItem>
                        <asp:ListItem>Student</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:ListBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="req11" runat="server" Text="*" 
                    ErrorMessage="Please Select Occuiption" ControlToValidate="listoccuiption"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblpassno" CssClass="boxes2" Text="Passport Number" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtpassno" CssClass="boxes" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="req12" runat="server" Text="*" 
                    ErrorMessage="Please Enter Passport Number" ControlToValidate="txtpassno"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblpassexp" CssClass="boxes2" Text="Passport Expiry Date" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtpassexp" CssClass="boxes" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="req13" runat="server" Text="*" 
                    ErrorMessage="Please Enter Passport Expirty Date" ControlToValidate="txtpassexp"></asp:RequiredFieldValidator>
                </td>
                 <td>
                    <asp:CompareValidator ID="comp2" runat="server"
                        ControlToValidate="txtpassexp" Text="*"  
                         ErrorMessage="Pleae Enter Date in the Form of mm/dd/yyyy" 
                         Type="Date" Operator="DataTypeCheck" >
                    </asp:CompareValidator>
                </td>
                 <td>
                    <asp:CompareValidator ID="comp4" runat="server"
                        ControlToValidate="txtpassexp" Text="*"
                         ControlToCompare="txtdob"
                          Operator="GreaterThanEqual"  
                         ErrorMessage="Pleae Enter Passpoert Expiry Date is Greater Than Date of Birth" 
                         Type="Date" >
                    </asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblvisano" CssClass="boxes2" Text="Visa Number" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtvisano" CssClass="boxes" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="req14" runat="server" Text="*" 
                    ErrorMessage="Please Enter Visa Number" ControlToValidate="txtvisano"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblvisaexp" CssClass="boxes2" Text="Visa Expiry Date" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtvisaexp" CssClass="boxes" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="req15" runat="server" Text="*" 
                    ErrorMessage="Please Enter Visa Expiry Date" ControlToValidate="txtvisaexp"></asp:RequiredFieldValidator>
                </td>
                 <td>
                    <asp:CompareValidator ID="comp3" runat="server"
                        ControlToValidate="txtvisaexp" Text="*"  
                         ErrorMessage="Pleae Enter Date in the Form of mm/dd/yyyy" 
                         Type="Date" Operator="DataTypeCheck" >
                    </asp:CompareValidator>
                </td>
                <td>
                    <asp:CompareValidator ID="comp5" runat="server"
                        ControlToValidate="txtvisaexp" Text="*"
                         ControlToCompare="txtdob"
                          Operator="GreaterThanEqual"  
                         ErrorMessage="Pleae Enter Visa Expiry Date is Greater Than Date of Birth" 
                         Type="Date" >
                    </asp:CompareValidator>
                </td>
            </tr>
            <tr>        
                <td>
                    <asp:Label ID="lblmaritalstatus" CssClass="boxes2" Text="Marital Status" runat="server"></asp:Label>
                </td>
                <td style="width: 158px">
                    <asp:RadioButtonList ID="radiomaritalstatus" CssClass="boxes" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="radiomaritalstatus_SelectedIndexChanged" AutoPostBack="True">
                        <asp:ListItem>Single</asp:ListItem>
                        <asp:ListItem>Marrried</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="req16" runat="server" Text="*" 
                    ErrorMessage="Please Select Marital Status" ControlToValidate="radiomaritalstatus"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbldependency" CssClass="boxes2" runat="server" Text="Dependency"></asp:Label>
                </td>
                <td style="width: 158px">
                    <asp:RadioButtonList ID="radiodependency" CssClass="boxes" RepeatDirection="Horizontal" runat="server" AutoPostBack="True" OnSelectedIndexChanged="radiodependency_SelectedIndexChanged">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="req17" runat="server" Text="*" 
                    ErrorMessage="Please Select Dependency" ControlToValidate="radiodependency"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="height: 51px">
                    <asp:Label ID="lblbank" CssClass="boxes2" Text="Bank Information" runat="server"></asp:Label>
                </td>
                <td style="width: 158px; height: 51px;">
                    <asp:RadioButtonList ID="radiobank" CssClass="boxes" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="radiobank_SelectedIndexChanged">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                 <td>
                    <asp:RequiredFieldValidator ID="req18" runat="server" Text="*" 
                    ErrorMessage="Please Select Bank" ControlToValidate="radiobank"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblvehicle" CssClass="boxes2" Text="Vehicle Information" runat="server"></asp:Label>
                </td>
                <td style="width: 158px">
                    <asp:RadioButtonList ID="radiovehicle" CssClass="boxes" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="radiovehicle_SelectedIndexChanged">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                 <td>
                    <asp:RequiredFieldValidator ID="req19" runat="server" Text="*" 
                    ErrorMessage="Please Select Vehicle" ControlToValidate="radiovehicle"></asp:RequiredFieldValidator>
                </td>
            </tr> 
        </table>
        <table style="position:absolute;top:550px;left:430px; z-index: 121;">
            <tr>
                <td>
                    <asp:Button ID="btnregister" CssClass="text" Text="Register" runat="server" OnClick="btnregister_Click" />
                </td>
            </tr>
        </table>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="248px" Style="z-index: 122;
            left: 240px; position: absolute; top: 584px" Width="464px" />
        &nbsp;
        <uc1:WebUserControl ID="WebUserControl1" runat="server" OnLoad="WebUserControl1_Load" /> 
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp;
        <asp:Label ID="Label1" runat="server" CssClass="text" Font-Bold="True" ForeColor="Red"></asp:Label>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp;
    </div>
    </form>
   </body>
</html>
