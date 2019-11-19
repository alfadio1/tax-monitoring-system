<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControl2.ascx.cs" Inherits="WebUserControl2" %>

<asp:ImageMap ID="ImageMap1"  runat="server" 
    Height="120px" 
    ImageUrl="~/Images/untitled.bmp" 
    Width="752px" onclick="ImageMap1_Click">             
</asp:ImageMap>

<asp:LinkButton ID="LinkButton4" 
    runat="server" 
    style="text-decoration:none;color:Black;font-weight:bold ; 
    z-index: 100; left: 261px; position: absolute; top: 83px;" 
    PostBackUrl="~/Welcome.aspx" CausesValidation="False">Home</asp:LinkButton>

<asp:LinkButton ID="LinkButton1" 
    runat="server" 
    style="text-decoration:none;color:Black;font-weight:bold; 
    z-index: 101; left: 315px; position: absolute; top: 84px; right: 996px;" 
    PostBackUrl="~/aboutUs.aspx" CausesValidation="False">AboutUs</asp:LinkButton>

<asp:LinkButton ID="LinkButton2" 
    runat="server" 
    style="text-decoration:none;color:Black;font-weight:bold ; 
    z-index: 102; left: 391px; position: absolute; top: 83px;" 
    PostBackUrl="~/Contact US.aspx" CausesValidation="False" 
    onclick="LinkButton2_Click">ContactUs</asp:LinkButton>

<asp:LinkButton ID="LinkButton3" 
    runat="server"   
    style="text-decoration:none;color:Black;font-weight:bold ; 
    z-index: 103; left: 700px; position: absolute; top: 83px;" 
    PostBackUrl="~/Login.aspx" CausesValidation="False">SignOut</asp:LinkButton>
