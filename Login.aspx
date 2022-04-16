<%@ Page Language="C#" MasterPageFile="~/Login.master" AutoEventWireup="true"
    CodeFile="Login.aspx.cs" Inherits="Login" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">

td
{width:200px;
 height:30px;
font-size:20px;
font-weight:bold;
}

</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="height: 500px; margin-left: 200px; text-align: left;" class="body12">
             
    <div style="margin-top: 100px;">
        <table border="5" ">
            <tr>
            
            <td colspan="2"><br /><h1 style="font-size:30px;">Login Form</h1>
            <br /><br />
            </td>
            </tr>
            
            <tr>
                <td>
                    Username
                </td>
                <td>
                    <asp:TextBox ID="TextBox1"  runat="server" Width="164px" 
                        ontextchanged="TextBox1_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Please enter the username" ControlToValidate="TextBox1">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Password
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="161px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Please enter Password">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <input id="Reset1" type="reset" value="Clear" />
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" />
                </td>
            </tr>
        </table>
        <div >
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
                ForeColor="Red" Text="Label" Visible="False"></asp:Label>
        <br /><br />
            <br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" Width="240px" />
            <br />
       
        
            </div>
    </div>
     </div>
</asp:Content>
