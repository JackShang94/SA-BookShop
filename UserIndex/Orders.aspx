<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Orders.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="column_center">
  <div class="container">
	<div class="search">
	  <div class="stay">My Orders</div>	  
	  <div class="clearfix"> </div>
	</div>
	<ul class="social">
	  <li class="find">Find us here</li>
	  <li><a href="#"> <i class="fb"> </i> </a></li>
	  <li><a href="#"> <i class="tw"> </i> </a></li>
	  <li><a href="#"> <i class="dribble"> </i></a></li>
	  <div class="clearfix"> </div>
	</ul>
	<div class="clearfix"> </div>
  </div>
</div>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-bordered table-condensed" 
            DataKeyNames="OrderID"
            OnRowDeleting="OnRowDeleting"
            OnRowDataBound="OnRowDataBound"
            >
            <Columns>
                <asp:TemplateField HeaderText="Username" SortExpression="UserName">
                    <ItemTemplate>
                        <asp:Label ID="Label" runat="server" Text='<%# Bind("UserName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="OrderID" SortExpression="OrderID">
                    <ItemTemplate>
                        <asp:Label ID="Labe2" runat="server" Text='<%# Bind("OrderID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="BookID">
                    <ItemTemplate>
                        <asp:Label ID="Label2A" runat="server"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Quantity" >
                    <ItemTemplate>
                        <asp:Label ID="Label2B" runat="server"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="OrderDate" SortExpression="OrderDate">
                    <ItemTemplate>
                        <asp:Label ID="Labe3" runat="server" Text='<%# Bind("OrderDate", "{0:dd/MM/yyyy}") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>    
                <asp:TemplateField HeaderText="TotalPrice" SortExpression="TotalPrice">
                    <ItemTemplate>
                        <asp:Label ID="Labe4" runat="server" Text='<%# Bind("TotalPrice") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
</asp:Content>

