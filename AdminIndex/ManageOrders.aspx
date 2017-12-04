<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManageOrders.aspx.cs" Inherits="ManageOrders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ManageOrders</title>
    <link href="/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link href="/css/style.css" rel='stylesheet' type='text/css' />
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href='http://fonts.googleapis.com/css?family=Oxygen:300,400,700' rel='stylesheet' type='text/css'/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
   <div class="header_top">
    <div class="container">
	  <div class="header_top_left">
	  	<p>BookShop</p>
	  </div>
	  <div class="header_top_right"> 
          <div class="header_user_info">
            <a class="header_user_info" href="Login.aspx">
			<i class="user"></i> 
			<i class="user_desc" color="white" >My Account</i>
		  </a>
        </div>
          
		  <div class="clearfix"> </div>
	            <div class="clearfix"> </div>
		 </div>
	  <div class="clearfix"> </div>
	</div>
  </div>
  <div class="header_bottom">
	<div class="container">	 			
		<div class="logo">
		  <a href="index.aspx"><img src="/images/logo.png" alt=""/></a>
		</div>	
		<div class="header_bottom_right">			
	        <div class="h_menu4"><!-- start h_menu4 -->
				<a class="toggleMenu" href="#">Menu</a>
				<ul class="nav">
				<li class="active"><a href="/AdminIndex/ManageOrders.aspx">ManageOrders</a></li>
					<li><a href="/AdminIndex/ManageBooks.aspx">ManageBooks</a></li>
					<li><a href="/AdminIndex/modify.aspx">ModifyDiscount</a>
					</li>
				</ul>
	      </div><!-- end h_menu4 -->
	      <div class="clearfix"></div>		   
      </div>
    </div>
  </div>
</div>
<div class="column_center">
  <div class="container">
	<div class="search">
	  <div class="stay">Manage Orders</div>	  
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
        <div>
        <asp:Label ID="Label5" runat="server" Text="Username: "></asp:Label><asp:DropDownList ID="UserList" runat="server" DataSourceID="SqlDataSource1" DataTextField="UserName" DataValueField="UserName" AutoPostBack="True" OnSelectedIndexChanged="UserList_SelectedIndexChanged"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BookshopConnectionString5 %>" SelectCommand="SELECT DISTINCT [UserName] FROM [Order]"></asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Clear Filter" OnClick="Button2_Click" CssClass="acount-btn" />
        </div>
        <asp:GridView ID="GridView1" runat="server"  CssClass="table table-striped table-bordered table-condensed" AutoGenerateColumns="False" css DataKeyNames="OrderID" DataSourceID="SqlDataSource3" OnRowCancelingEdit="OnRowCancelingEdit" OnRowUpdating="OnRowUpdating" OnRowDeleting="OnRowDeleting" OnRowEditing="OnRowEditing">
            <Columns>
                <asp:TemplateField HeaderText="OrderID" InsertVisible="False" SortExpression="OrderID">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("OrderID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("OrderID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="UserName" SortExpression="UserName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("UserName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("UserName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="OrderDate" SortExpression="OrderDate">
                   <%-- <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("OrderDate", "{0:dd/M/yyyy}") %>'></asp:TextBox>
                    </EditItemTemplate>--%>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("OrderDate", "{0:dd/M/yyyy}") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="TotalPrice" SortExpression="TotalPrice">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("TotalPrice") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("TotalPrice") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
    </asp:GridView>
        <div><asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BookshopConnectionString4 %>">
                <SelectParameters>
                    <asp:ControlParameter ControlID="UserList" Name="UserName" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

        </div>
               <div class="grid-1">
       	<div class="container">
       		<h1>About BookShop	<p>Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis</p>
       	</div>
       </div>
       <div class="grid-2">
       	<div class="container">
       		<p>We accept<img src="/images/paypal.png" class="img-responsive" alt="" align="middle" /></p>
       	</div>
       </div>
       <div class="footer_top">
       	<div class="container">
       		<div class="col-sm-2 grid-3">
       			<h3>Customer Service</h3>
       			<ul class="footer_list">
       				<li><a href="#">Contact</a></li>
       				<li><a href="#">FAQ</a></li>
       				<li><a href="#">Terms of payment</a></li>
       				<li><a href="#">Terms of sale</a></li>
       				<li><a href="#">Terms and conditions</a></li>
       				<li><a href="#">Returns and Refunds</a></li>
       			</ul>
       		</div>
       		<div class="col-sm-2 grid-3">
       			<h3>Information</h3>
       			<ul class="footer_list">
       				<li><a href="#">Affiliate</a></li>
       				<li><a href="#">Cookies</a></li>
       				<li><a href="#">How to Shop</a></li>
       				<li><a href="#">About Nelly</a></li>
       				<li><a href="#">Investor relations</a></li>
       			</ul>
       		</div>
       		<div class="col-sm-2 grid-3">
       			<h3>Campaigns</h3>
       			<ul class="footer_list">
       				<li><a href="#">Evening Dresses</a></li>
       				<li><a href="#">Makeup</a></li>
       				<li><a href="#">Fashion forward</a></li>
       				<li><a href="#">Training clothes</a></li>
       				<li><a href="#">Special Occasion Dresses</a></li>
       			</ul>
       		</div>
       		<div class="col-sm-2 grid-3">
       			<h3>Stores</h3>
       			<ul class="footer_list">
       				<li><a href="#">Paris</a></li>
       				<li><a href="#">New York</a></li>
       				<li><a href="#">London</a></li>
       				<li><a href="#">Madrid</a></li>
       				<li><a href="#">Tokio</a></li>
       			</ul>
       		</div>
       		<div class="col-sm-2 grid-3">
       			<h3>Social</h3>
       			<ul class="footer_social">
				  <li><a href="#"> <i class="tw1"> </i> </a></li>
				  <li><a href="#"> <i class="db1"> </i> </a></li>
				  <li><a href="#"> <i class="fb1"> </i></a></li>
				  <li><a href="#"> <i class="g1"> </i></a></li>
				  <li><a href="#"> <i class="thumb"> </i></a></li>
				  <li><a href="#"> <i class="vimeo"> </i></a></li>
				</ul>
       		</div>
       		<div class="col-sm-2">
       			<img src="/images/secure.png" alt=""/>
       		</div>
       	</div>
       </div>
       <div class="footer_bottom">
       	<div class="container">
       		<div class="cssmenu">
				<ul>
					<li class="active"><a href="#">Privacy & Cookies</a></li> |
					<li><a href="#">Terms & Conditions</a></li> |
					<li><a href="#">Accessibility</a></li> |
					<li><a href="#">Store Directory</a></li> |
					<li><a href="#">About Us</a></li>
				</ul>
			</div>
			<div class="copy">
			    <p>&copy; 2017 SA45 Team03 all rights reserved <a href="#" target="_blank">smallseashell</a></p>
		    </div>
		    <div class="clearfix"> </div>
       	</div>
       </div>
    </form>
</body>
</html>
