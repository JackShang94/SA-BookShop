<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModifyDiscount.aspx.cs" Inherits="ModifyDiscount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            &nbsp; START DATE :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList runat="server" ID="dlstartDate">
            
        </asp:DropDownList>
        <asp:DropDownList runat="server" ID="dlstartMonth">
            
        </asp:DropDownList>
         <asp:DropDownList runat="server" ID="dlstartYear">
            
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DISCOUNT:&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
             &nbsp; END DATE :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:DropDownList runat="server" ID="endDate">
            
        </asp:DropDownList>
        <asp:DropDownList runat="server" ID="endMonth">
            
        </asp:DropDownList>
         <asp:DropDownList runat="server" ID="endYear">
            
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;
            <br />
&nbsp;<br />
            <asp:Button ID="btnUpdate" Text="Update" OnClick="btnUpdate_Click" runat="server" />
        </div>
    </form>
</body>
</html>
