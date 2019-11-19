<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControl.ascx.cs" Inherits="WebUserControl" %>

<asp:ImageMap ID="ImageMap1"  runat="server" 
    Height="120px" 
    ImageUrl="~/Images/untitled.bmp" 
    Width="752px">             
</asp:ImageMap>

<asp:LinkButton ID="LinkButton4" 
    runat="server" 
    style="text-decoration:none;color:Black;font-weight:bold ; 
    z-index: 100; left: 261px; position: absolute; top: 83px;" 
    PostBackUrl="~/Welcome.aspx" CausesValidation="False">Home</asp:LinkButton>

<asp:LinkButton ID="LinkButton1" 
    runat="server" 
    style="text-decoration:none;color:Black;font-weight:bold ; 
    z-index: 101; left: 316px; position: absolute; top: 83px;" 
    PostBackUrl="~/Welcome.aspx" CausesValidation="False">AboutUs</asp:LinkButton>

<asp:LinkButton ID="LinkButton2" 
    runat="server" 
    style="text-decoration:none;color:Black;font-weight:bold ; 
    z-index: 102; left: 391px; position: absolute; top: 83px;" 
    PostBackUrl="~/Welcome.aspx" CausesValidation="False">ContactUs</asp:LinkButton>

<asp:LinkButton ID="LinkButton3" 
    runat="server"   
    style="text-decoration:none;color:Black;font-weight:bold ; 
    z-index: 103; left: 700px; position: absolute; top: 83px;" 
    PostBackUrl="~/Login.aspx" CausesValidation="False">SignOut</asp:LinkButton>
<asp:Panel ID="Panel1" 
    BackImageUrl="~/Images/untitled2.bmp"
    runat="server" 
    Height="700px" Style="z-index: 107; left: 10px;
    position: absolute; top: 135px" Width="180px">
    &nbsp; &nbsp;
    <asp:Menu ID="Menu1"   runat="server" BackColor="LightGray" DynamicHorizontalOffset="2"
        Font-Names="Arial Narrow" Font-Size="12pt" ForeColor="#284E98" StaticSubMenuIndent="50px"
        Style="z-index: 100; left: 8px; position: absolute; top: 176px" Font-Bold="True" OnMenuItemClick="Menu1_MenuItemClick">
        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
        <DynamicMenuStyle BackColor="#B5C7DE" />
        <StaticSelectedStyle BackColor="#507CD1" />
        <DynamicSelectedStyle BackColor="#507CD1" />
        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <Items>
            <asp:MenuItem NavigateUrl="~/Welcome.aspx" Text="Home" Value="Home"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/MyProfile.aspx" Text="My Profile" Value="My Profile">
                <asp:MenuItem NavigateUrl="~/Spouse.aspx" Text="Spouse" Value="Spouse">
                </asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Dependent.aspx" Text="Dependent" Value="Dependent">
                </asp:MenuItem>
                <asp:MenuItem Text="Bank Information" Value="Bank Information">
                </asp:MenuItem>
                <asp:MenuItem Text="Vehicle Information"
                    Value="Vehicle Information"></asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/Documents.aspx" Text="Documents" Value="Documents"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/ScheduleInterview.aspx" Text="Schedule Interview" Value="Schedule Interview">
            </asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/ChangePassword.aspx" Text="Change Password" Value="Change Password">
            </asp:MenuItem>
            <asp:MenuItem Text="acknowledgements" Value="acknowledgements" NavigateUrl="~/ack.aspx"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/Payment.aspx" Text="Payment" Value="Payment"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/TaxSummary.aspx" Text="Tax Summary" Value="Tax Summary">
            </asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/TaxReturn.aspx" Text="Tax Return Review" Value="Tax Return Review">
            </asp:MenuItem>
        </Items>
        <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
    </asp:Menu>
</asp:Panel>
