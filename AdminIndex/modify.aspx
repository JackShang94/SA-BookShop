<%@ Page Language="C#" AutoEventWireup="true" CodeFile="modify.aspx.cs" Inherits="modify" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr><td>
            Manage Discount
            </td>
        </tr>
        <tr><td>
            <asp:Label ID="Label1" runat="server" Text="Start Date"></asp:Label>
            

            <br />
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>

            </td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="End Date"></asp:Label>
                <br />
                <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>

            </td>
        </tr>
        <tr>
<td>
    <asp:Label ID="Label3" runat="server" Text="Discount"></asp:Label></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
        <asp:Button ID="Button1" runat="server" Text="Add Discount" OnClick="Button1_Click" PostBackUrl="~/modify.aspx" />
        <br />
    </div>
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="discountID" OnRowDeleting="OnRowDeleting">
                <Columns>
                    <asp:TemplateField HeaderText="discountID" SortExpression="discountID">
                        <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("discountID") %>'>></asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="StartDate">
                        <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("StartDate") %>'>></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="StartDate" runat="server" Text='<%# Bind("StartDate") %>'></asp:TextBox>
                    </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="EndDate">
                         <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("EndDate") %>'>></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="EndDate" runat="server" Text='<%# Bind("EndDate") %>'></asp:TextBox>
                    </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Discount">
                         <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("Discount1") %>'>></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="discount" runat="server" Text='<%# Bind("Discount1") %>'></asp:TextBox>
                    </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
