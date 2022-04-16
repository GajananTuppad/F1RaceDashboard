<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="admin_teams.aspx.cs" Inherits="admin_teams" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height:600px;">



    <br />
    Teams<br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" CellSpacing="2" DataKeyNames="id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="country" HeaderText="country" 
                SortExpression="country" />
            <asp:BoundField DataField="prev_rank" HeaderText="prev_rank" 
                SortExpression="prev_rank" />
            <asp:BoundField DataField="organization" HeaderText="organization" 
                SortExpression="organization" />
            <asp:BoundField DataField="team_Name" HeaderText="team_Name" 
                SortExpression="team_Name" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Participents_details]"></asp:SqlDataSource>
    <br />
    <br />
    <asp:FormView ID="FormView1" runat="server" BackColor="#DEBA84" 
        BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        CellSpacing="2" DataKeyNames="id" DataSourceID="SqlDataSource2" 
        GridLines="Both" onitemdeleted="FormView1_ItemDeleted" 
        oniteminserted="FormView1_ItemInserted">
        <EditItemTemplate>
            id:
            <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
            <br />
            name:
            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
            <br />
            country:
            <asp:TextBox ID="countryTextBox" runat="server" Text='<%# Bind("country") %>' />
            <br />
            prev_rank:
            <asp:TextBox ID="prev_rankTextBox" runat="server" 
                Text='<%# Bind("prev_rank") %>' />
            <br />
            organization:
            <asp:TextBox ID="organizationTextBox" runat="server" 
                Text='<%# Bind("organization") %>' />
            <br />
            team_Name:
            <asp:TextBox ID="team_NameTextBox" runat="server" 
                Text='<%# Bind("team_Name") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            name:
            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
            <br />
            country:
            <asp:TextBox ID="countryTextBox" runat="server" Text='<%# Bind("country") %>' />
            <br />
            prev_rank:
            <asp:TextBox ID="prev_rankTextBox" runat="server" 
                Text='<%# Bind("prev_rank") %>' />
            <br />
            organization:
            <asp:TextBox ID="organizationTextBox" runat="server" 
                Text='<%# Bind("organization") %>' />
            <br />
            team_Name:
            <asp:TextBox ID="team_NameTextBox" runat="server" 
                Text='<%# Bind("team_Name") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            id:
            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
            <br />
            name:
            <asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>' />
            <br />
            country:
            <asp:Label ID="countryLabel" runat="server" Text='<%# Bind("country") %>' />
            <br />
            prev_rank:
            <asp:Label ID="prev_rankLabel" runat="server" Text='<%# Bind("prev_rank") %>' />
            <br />
            organization:
            <asp:Label ID="organizationLabel" runat="server" 
                Text='<%# Bind("organization") %>' />
            <br />
            team_Name:
            <asp:Label ID="team_NameLabel" runat="server" Text='<%# Bind("team_Name") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="New" />
        </ItemTemplate>
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [Participents_details] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [Participents_details] ([name], [country], [prev_rank], [organization], [team_Name]) VALUES (@name, @country, @prev_rank, @organization, @team_Name)" 
        onupdated="SqlDataSource2_Updated" 
        SelectCommand="SELECT * FROM [Participents_details] WHERE ([id] = @id)" 
        UpdateCommand="UPDATE [Participents_details] SET [name] = @name, [country] = @country, [prev_rank] = @prev_rank, [organization] = @organization, [team_Name] = @team_Name WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="country" Type="String" />
            <asp:Parameter Name="prev_rank" Type="String" />
            <asp:Parameter Name="organization" Type="String" />
            <asp:Parameter Name="team_Name" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="id" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="country" Type="String" />
            <asp:Parameter Name="prev_rank" Type="String" />
            <asp:Parameter Name="organization" Type="String" />
            <asp:Parameter Name="team_Name" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>



</div>
</asp:Content>

