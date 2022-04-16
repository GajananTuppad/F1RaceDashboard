<%@ Page Language="C#" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="admin_manage_result.aspx.cs" Inherits="admin_manage_result" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height:600px">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            <asp:BoundField DataField="place" HeaderText="place" SortExpression="place" />
            <asp:BoundField DataField="rank" HeaderText="rank" SortExpression="rank" />
            <asp:BoundField DataField="team" HeaderText="team" SortExpression="team" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [result]"></asp:SqlDataSource>
    <br />
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="id" 
        DataSourceID="SqlDataSource2">
        <EditItemTemplate>
            id:
            <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
            <br />
            date:
            <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
            <br />
            place:
            <asp:TextBox ID="placeTextBox" runat="server" Text='<%# Bind("place") %>' />
            <br />
            rank:
            <asp:TextBox ID="rankTextBox" runat="server" Text='<%# Bind("rank") %>' />
            <br />
            team:
            <asp:TextBox ID="teamTextBox" runat="server" Text='<%# Bind("team") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            date:
            <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
            <br />
            place:
            <asp:TextBox ID="placeTextBox" runat="server" Text='<%# Bind("place") %>' />
            <br />
            rank:
            <asp:TextBox ID="rankTextBox" runat="server" Text='<%# Bind("rank") %>' />
            <br />
            team:
            <asp:TextBox ID="teamTextBox" runat="server" Text='<%# Bind("team") %>' />
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
            date:
            <asp:Label ID="dateLabel" runat="server" Text='<%# Bind("date") %>' />
            <br />
            place:
            <asp:Label ID="placeLabel" runat="server" Text='<%# Bind("place") %>' />
            <br />
            rank:
            <asp:Label ID="rankLabel" runat="server" Text='<%# Bind("rank") %>' />
            <br />
            team:
            <asp:Label ID="teamLabel" runat="server" Text='<%# Bind("team") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [result] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [result] ([date], [place], [rank], [team]) VALUES (@date, @place, @rank, @team)" 
        SelectCommand="SELECT * FROM [result] WHERE ([id] = @id)" 
        UpdateCommand="UPDATE [result] SET [date] = @date, [place] = @place, [rank] = @rank, [team] = @team WHERE [id] = @id">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="id" 
                PropertyName="SelectedValue" Type="Int64" />
        </SelectParameters>
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int64" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="date" Type="String" />
            <asp:Parameter Name="place" Type="String" />
            <asp:Parameter Name="rank" Type="String" />
            <asp:Parameter Name="team" Type="String" />
            <asp:Parameter Name="id" Type="Int64" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="date" Type="String" />
            <asp:Parameter Name="place" Type="String" />
            <asp:Parameter Name="rank" Type="String" />
            <asp:Parameter Name="team" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
</div>
</asp:Content>

