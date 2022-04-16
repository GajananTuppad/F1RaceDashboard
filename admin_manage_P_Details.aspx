<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="admin_manage_P_Details.aspx.cs" Inherits="admin_manage_P_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div style="height:600px">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
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
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Participents_details]"></asp:SqlDataSource>
    <br />
    <asp:FormView ID="FormView1" runat="server" BackColor="White" 
        BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        DataKeyNames="id" DataSourceID="SqlDataSource2" ForeColor="Black" 
        GridLines="Vertical" onitemdeleted="FormView1_ItemDeleted" 
        oniteminserted="FormView1_ItemInserted" onitemupdated="FormView1_ItemUpdated">
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
        <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
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
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [Participents_details] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [Participents_details] ([name], [country], [prev_rank], [organization], [team_Name]) VALUES (@name, @country, @prev_rank, @organization, @team_Name)" 
        SelectCommand="SELECT * FROM [Participents_details]" 
        
        UpdateCommand="UPDATE [Participents_details] SET [name] = @name, [country] = @country, [prev_rank] = @prev_rank, [organization] = @organization, [team_Name] = @team_Name WHERE [id] = @id" 
        onselecting="SqlDataSource2_Selecting">
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

