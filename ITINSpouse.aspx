<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ITINSpouse.aspx.cs" Inherits="ITIN" %>

<%@ Register Src="WebUserControl.ascx" TagName="WebUserControl" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>ITIN Spouse Information</title>
    <link type="text/css"  href="StyleSheet.css" rel="Stylesheet"  />
</head>
<body bgcolor="silver">
    <form id="form1" runat="server">
    <div>
        <table style="position:absolute;top:200px;left:350px;">
            <tr>
                <td style="height: 10px">
                    <asp:Label ID="lblfname" CssClass="boxes2" Text="First Name" runat="server"></asp:Label>
                </td>
                <td style="height: 10px">
                    <asp:TextBox ID="txtfname" CssClass="boxes" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblmname" CssClass="boxes2" Text="Middle Name" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtmname" CssClass="boxes" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbllname" CssClass="boxes2" Text="Last Name" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtlname" CssClass="boxes" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblpassportno" CssClass="boxes2" Text="Passport Number" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtpassportno" CssClass="boxes" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblpassportedate" CssClass="boxes2" Text="Passport Expiry Date" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtpassportedate" CssClass="boxes" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblmsg" CssClass="text" runat="server" ForeColor="Aquamarine" Text="mm/dd/yyy"></asp:Label>
                </td>
                <td>
                    <asp:CompareValidator ID="passpostredatecomparevalidator" CssClass="text" runat="server" ErrorMessage="Enter correct date" Operator="DataTypeCheck" ControlToValidate="txtpassportedate" Type="Date" ></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblvisano" CssClass="boxes2" Text="TaxNumber" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtvisano" CssClass="boxes" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 27px">
                    <asp:Label ID="lblvisaedate" CssClass="boxes2" Text="TaxPay Date" runat="server"></asp:Label>
                </td>
                <td style="height: 27px">
                    <asp:TextBox ID="txtvisaedate" CssClass="boxes" runat="server"></asp:TextBox>
                </td>
            <%--    <td>
                    <asp:Label ID="lblmsg1" CssClass="text" runat="server" ForeColor="Aquamarine" Text="mm/dd/yyy"></asp:Label>
                </td>
                <td>
                    <asp:CompareValidator ID="visaedateCompareValidator" CssClass="text" runat="server" ErrorMessage="Enter correct date" Operator="DataTypeCheck" ControlToValidate="txtvisaedate" Type="Date" ></asp:CompareValidator>
                </td>--%>
            </tr>
            <tr>
                <td style="height: 38px">
                    <asp:Label ID="lblplaceofbirth" CssClass="boxes2" Text="Place of Birth" runat="server"></asp:Label>
                </td>
                <td style="height: 38px">
                    <asp:TextBox ID="txtplaceofbirth" CssClass="boxes" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbladdressinthepassport" CssClass="boxes2" Text="Address in the Passoport" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtaddressinthepassport" CssClass="boxes" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 26px">
                    <asp:Label ID="lbldateofentryusa" CssClass="boxes2" Text="Date of entry into USA" runat="server"></asp:Label>
                </td>
                <td style="height: 26px">
                    <asp:TextBox ID="txtdateofentryusa" CssClass="boxes" runat="server"></asp:TextBox>
                </td>
                <td>
                  <asp:Label ID="lblmsg2" runat="server" CssClass="text" ForeColor="Aquamarine" Text="mm/dd/yyy"></asp:Label>
                </td>
                <td>
                    <asp:CompareValidator ID="dateofentryusaCompareValidator" CssClass="text" runat="server" ErrorMessage="Enter correct date" Operator="DataTypeCheck" ControlToValidate="txtdateofentryusa" Type="Date" ></asp:CompareValidator>                
               </td>
            </tr>
        </table>
        <table style="position:absolute;top:510px;left:530px;">
            <tr>
                <td>
                    <asp:Button ID="btnsubmit" runat="server" CssClass="text" Text="Submit" OnClick="btnsubmit_Click" />
                </td>
            </tr>
        </table>    
        <uc1:WebUserControl ID="WebUserControl1" runat="server" />
    </div>
    </form>
</body>
</html>
