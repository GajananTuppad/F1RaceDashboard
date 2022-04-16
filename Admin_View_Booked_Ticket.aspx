<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="Admin_View_Booked_Ticket.aspx.cs" Inherits="Admin_View_Booked_Ticket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height:600px;">


    <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="ticketdate" HeaderText="ticketdate" 
                    SortExpression="ticketdate" />
                <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                <asp:BoundField DataField="address" HeaderText="address" 
                    SortExpression="address" />
                <asp:BoundField DataField="place" HeaderText="place" SortExpression="place" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [booked]"></asp:SqlDataSource>
        <br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="id" 
            DataSourceID="SqlDataSource2" onitemdeleted="FormView1_ItemDeleted1" 
            onitemupdated="FormView1_ItemUpdated">
            <EditItemTemplate>
                id:
                <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                <br />
                name:
                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                <br />
                ticketdate:
                <asp:TextBox ID="ticketdateTextBox" runat="server" 
                    Text='<%# Bind("ticketdate") %>' />
                <br />
                type:
                <asp:TextBox ID="typeTextBox" runat="server" Text='<%# Bind("type") %>' />
                <br />
                address:
                <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                <br />
                place:
                <asp:TextBox ID="placeTextBox" runat="server" Text='<%# Bind("place") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                name:
                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                <br />
                ticketdate:
                <asp:TextBox ID="ticketdateTextBox" runat="server" 
                    Text='<%# Bind("ticketdate") %>' />
                <br />
                type:
                <asp:TextBox ID="typeTextBox" runat="server" Text='<%# Bind("type") %>' />
                <br />
                address:
                <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                <br />
                place:
                <asp:TextBox ID="placeTextBox" runat="server" Text='<%# Bind("place") %>' />
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
                ticketdate:
                <asp:Label ID="ticketdateLabel" runat="server" 
                    Text='<%# Bind("ticketdate") %>' />
                <br />
                type:
                <asp:Label ID="typeLabel" runat="server" Text='<%# Bind("type") %>' />
                <br />
                address:
                <asp:Label ID="addressLabel" runat="server" Text='<%# Bind("address") %>' />
                <br />
                place:
                <asp:Label ID="placeLabel" runat="server" Text='<%# Bind("place") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                    CommandName="Edit" onclick="EditButton_Click" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                    CommandName="Delete" Text="Delete" />
                &nbsp;
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [booked] WHERE [id] = @id" 
            InsertCommand="INSERT INTO [booked] ([name], [ticketdate], [type], [address], [place]) VALUES (@name, @ticketdate, @type, @address, @place)" 
            SelectCommand="SELECT * FROM [booked] WHERE ([id] = @id)" 
            UpdateCommand="UPDATE [booked] SET [name] = @name, [ticketdate] = @ticketdate, [type] = @type, [address] = @address, [place] = @place WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int64" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="ticketdate" Type="String" />
                <asp:Parameter Name="type" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="place" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="id" 
                    PropertyName="SelectedValue" Type="Int64" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="ticketdate" Type="String" />
                <asp:Parameter Name="type" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="place" Type="String" />
                <asp:Parameter Name="id" Type="Int64" />
            </UpdateParameters>
        </asp:SqlDataSource>


</div>

</asp:Content>

