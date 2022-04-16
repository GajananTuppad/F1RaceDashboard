<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="admin_add_Participents_details.aspx.cs" Inherits="admin_add_Participents_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style>
td
{
    width:150px;
}

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="height:600px;margin-left:150px;">
<table>
<tr>
<td>Name</td>
<td>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td>Country</td>
<td>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td>Previous Rank</td>
<td>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td>Organization</td>
<td>
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td>Team Name</td>
<td>
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
</tr>

<tr>
<td colspan="2" style="width:100%;">
    <asp:Button ID="Button1" runat="server" Text="Add" onclick="Button1_Click" />
</td>
</tr>


</table>



    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>



</div>

</asp:Content>

