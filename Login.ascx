<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Login.ascx.cs" Inherits="WebUserControl2" %>
<table style="position:absolute;top:150px;left:180px; z-index: 106;">
    <tr>
        <td style="width: 299px">
            <p>
                <b>Finalysis</b> is professional financial services company
                established by experienced CPAs and Chartered Accountants to 
                provide costeffective and efficient Financial and Tax 
                Planning solutions to a wide range of clients across the globe.
            </p>    
        </td>
    </tr>
</table>
<asp:LinkButton ID="LinkButton4" runat="server" style="text-decoration:none;color:Black;font-weight:bold ; z-index: 100; left: 261px; position: absolute; top: 83px;" PostBackUrl="~/Login.aspx" CausesValidation="False">Home</asp:LinkButton>
<asp:ImageMap ID="ImageMap1"  
    runat="server" Height="120px" ImageUrl="~/Images/untitled.bmp" Width="752px">
               
</asp:ImageMap>
<asp:Image ID="Image1" runat="server" 
    Height="300px" 
    ImageUrl="~/Images/untitled1.bmp"
    Style="z-index: 109; left: 11px; position: absolute; top: 137px" 
    Width="165px" />

<table style="position:absolute;top:250px;left:180px; z-index: 107;">
    <tr>
        <td style="width: 299px">
            <p>
                <b>TAX PREPARATION</b> Isn't it too expensive to overlook to 
                Deductions that you are entitled to?
                
                Let our Tax Professionals plan and prepare your Tax Return to 
                make sure you get the maximum benefit you deserve.
            </p>
        </td>
    </tr>
</table>
<table style="position:absolute;top:350px;left:180px; z-index: 108;">
    <tr>
        <td style="width: 585px">
            <p>
                <b>Finalysis</b> is providing single window tax service to 
                the Indian Software Consultants having income from both India 
                and USA by minimizing the overall tax burden, claiming Foreign 
                Tax Credits and other Tax Planning Strategies according to the 
                US Internal Revenue Code and Indian Income Tax Act, 1961.
            </p>
        </td>
    </tr>
</table>
<asp:LinkButton ID="LinkButton1" runat="server" 
    style="text-decoration:none;color:Black;font-weight:bold ; z-index: 102; left: 316px; position: absolute; top: 83px;" 
    PostBackUrl="~/aboutUs.aspx" CausesValidation="False">AboutUs</asp:LinkButton>
<asp:LinkButton ID="LinkButton2" runat="server" 
    style="text-decoration:none;color:Black;font-weight:bold ; z-index: 103; left: 391px; position: absolute; top: 83px;" 
    PostBackUrl="~/Contact US.aspx" CausesValidation="False">ContactUs</asp:LinkButton>
<asp:LinkButton ID="LinkButton3" runat="server"   style="text-decoration:none;color:Black;font-weight:bold ; z-index: 104; left: 586px; position: absolute; top: 83px;" PostBackUrl="~/Registration.aspx" CausesValidation="False">SignUp</asp:LinkButton>
<asp:LinkButton ID="LinkButton5" runat="server"   style="text-decoration:none;color:Black;font-weight:bold ; z-index: 105; left: 650px; position: absolute; top: 83px;" PostBackUrl="~/ForgotPassword.aspx" CausesValidation="False">ForgotPassowrd</asp:LinkButton>


