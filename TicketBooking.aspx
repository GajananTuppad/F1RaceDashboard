<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="TicketBooking.aspx.vb" Inherits="TicketBooking" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            color: #FF0000;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <p>
    Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox3" ErrorMessage="Please enter the Name"></asp:RequiredFieldValidator>
</p>
<p>
    Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList2" runat="server">
        <asp:ListItem>12june 2012</asp:ListItem>
        <asp:ListItem>15june 2012</asp:ListItem>
        <asp:ListItem>18june2012</asp:ListItem>
        <asp:ListItem>21june2012</asp:ListItem>
        <asp:ListItem>23june2012</asp:ListItem>
    </asp:DropDownList>
&nbsp;&nbsp;</p>
<p>
    Type Of Ticket 
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>Grand Stand</asp:ListItem>
        <asp:ListItem>Main Stand</asp:ListItem>
        <asp:ListItem>Cetenary Stand</asp:ListItem>
    </asp:DropDownList>
</p>
    <p>
        Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="TextBox6" ErrorMessage="Address cannot be blank"></asp:RequiredFieldValidator>
</p>
    <p>
        Place&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="TextBox7" ErrorMessage="Place cannot be blank"></asp:RequiredFieldValidator>
</p>
    <p>
        &nbsp;</p>
<p class="style1">
    *Please enter the address so admin will post the Ticket to following address</p>
<p>
    &nbsp;</p>
    <p>
        &nbsp;<asp:Button ID="Button2" runat="server" Text="Send" 
            style="height: 26px" />
        &nbsp;<asp:Label ID="Label1" runat="server" ForeColor="#0066FF" Text="Label" 
            Visible="False"></asp:Label>
    </p>



</asp:Content>

