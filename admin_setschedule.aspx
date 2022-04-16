<%@ Page Language="C#" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="admin_setschedule.aspx.cs" Inherits="admin_setschedule" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        height: 26px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
<h1>Schedule</h1>

    <table style="width: 100%;">
        <tr>
            <td class="style1">
            date
            </td>
            <td class="style1">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td>
             place
            </td>
            <td>
               <asp:TextBox ID="TextBox2" runat="server" Height="23px"></asp:TextBox>
            </td>
           
        </tr>
        <tr>
            <td>
             time
            </td>
            <td>
                   <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
           
        </tr>
        
         <tr>
            <td>
             Ground Name
            </td>
            <td>
                   <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
           
        </tr>
        
         <tr>
           
            <td colspan="2" style="width:100%;text-align:center;">
                <asp:Button ID="Button1" runat="server" Text="Set" onclick="Button1_Click" />
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <br />
            </td>
           
        </tr>
    </table>

</div>

</asp:Content>

