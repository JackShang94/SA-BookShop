<%@ Page Language="C#" AutoEventWireup="true" CodeFile="modify.aspx.cs" Inherits="modify" Culture="en-GB" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="DISCOUNT PERIOD DETAILS!!"></asp:Label>
&nbsp;&nbsp;
            <br />
&nbsp;<br />
        </div>
        <asp:Label ID="Label2" runat="server" Text="StartDate"></asp:Label>
&nbsp;&nbsp;&nbsp;
        
        
     
        <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowCancelingEdit="OnRowCancelingEdit" OnRowUpdating="OnRowUpdating" OnRowEditing="OnRowEditing">
            <Columns>
                <asp:BoundField DataField="StartDate" HeaderText="StartDate" SortExpression="StartDate" />
                <asp:BoundField DataField="EndDate" HeaderText="EndDate" SortExpression="EndDate" />
                <asp:BoundField DataField="Discount" HeaderText="Discount" SortExpression="Discount" />
                
                    <asp:CommandField ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BookshopConnectionString7 %>" SelectCommand="SELECT * FROM [Discount]"></asp:SqlDataSource>
       <%-- <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BookshopConnectionString %>" SelectCommand="SELECT * FROM [Discount] WHERE (([StartDate] = @StartDate) AND ([EndDate] = @EndDate))">
            <SelectParameters>
                <asp:ControlParameter Name="StartDate" PropertyName="SelectedValue" Type="DateTime" />
                <asp:ControlParameter  Name="EndDate" PropertyName="SelectedValue" Type="DateTime" />
            </SelectParameters>
        </asp:SqlDataSource>--%>
        <br />
        <br />
    </form>
</body>
</html>
