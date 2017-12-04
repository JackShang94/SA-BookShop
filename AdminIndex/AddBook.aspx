<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddBook.aspx.cs" Inherits="AddBook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Lookshop Bootstarp Website Template | Register :: w3layouts</title>
<link href="./css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- Custom Theme files -->
<link href="./css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<link href='http://fonts.googleapis.com/css?family=Oxygen:300,400,700' rel='stylesheet' type='text/css'/>
<script type="text/javascript" src="./js/jquery-1.11.1.min.js"></script>
<script src="./js/jquery.easydropdown.js"></script>
    <style type="text/css">
        .auto-style1 {
            position: relative;
            -webkit-transition: all 150ms ease-in-out;
            -moz-transition: all 150ms ease-in-out;
            -ms-transition: all 150ms ease-in-out;
            transition: all 150ms ease-in-out;
            width: 129px;
            cursor: pointer;
            font-weight: 200;
            color: #fff;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
            padding-top: 8px;
            padding-bottom: 5px;
            background: ;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="header">
        <div class="header_top">
            <div class="container">
                <div class="header_top_left">
                    <p>BookShop</p>
                </div>
                
                <div class="clearfix"> </div>
            </div>
        </div>
        <div class="header_bottom">
            <div class="container">
                <div class="logo">
                    <a href="Index.aspx"><img src="./images/logo.png" /></a>
                </div>
                <div class="header_bottom_right">
                    <div class="h_menu4">
                        <!-- start h_menu4 -->
                        <a class="toggleMenu" href="#">Menu</a>
                        <script type="text/javascript" src="./js/nav.js"></script>
                    </div><!-- end h_menu4 -->
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
    </div>
    <ul class="breadcrumbs">
        <div class="container">
            <li class="home">
                <a href="Index.aspx" title="Go to Home Page"><img src="./images/home.png" alt="" /></a>&nbsp;&nbsp;
                <span>&gt;</span>&nbsp;
            </li>
            <li class="home">
                <span class="red">&nbsp;Add Book&nbsp;</span>
            </li>
        </div>
    </ul>
    <div class="contact">
      	<div class="container">
      	   <div class="register">
				 <div class="register-top-grid">
					<h3>BOOK INFORMATION</h3>
					 <div>
						<span>Book Title<label>*</label></span>
           
                         <asp:TextBox ID="BookTitle" runat="server"></asp:TextBox>
					 </div>
                       <div "dropdown_top">
				       <div class="dropdown_left">
                           <asp:DropDownList ID="DropDownList1" TabIndex="20" runat="server" CssClass="dropdown" data-settings='{"wrapperClass":"metro1"}'>
                               <asp:ListItem Selected="True" Value="0">Category</asp:ListItem>
                               <asp:ListItem Value="1">children</asp:ListItem>
                               <asp:ListItem Value="2">finance</asp:ListItem>
                               <asp:ListItem Value="3">non-fiction</asp:ListItem>
                               <asp:ListItem Value="4">technical</asp:ListItem>
                           </asp:DropDownList>
			            </div>
			         </div>
                     <div>
                         <span>ISBN<label>*</label></span>
                         <asp:TextBox ID="ISBNS" runat="server"></asp:TextBox>
                     </div>
                         <div>
                             <span>Author<label>*</label></span>
                             <asp:TextBox ID="Author" runat="server"></asp:TextBox>
                         </div>
                        <div>
                             <span>Stock<label>*</label></span>
                             <asp:TextBox ID="Stock" runat="server"></asp:TextBox>
                         </div>
                        <div>
                             <span>Price<label>*</label></span>
                             <asp:TextBox ID="Price" runat="server"></asp:TextBox>
                         </div>
					 <div class="clearfix"> </div>
					 </div>
                 <div>
                     <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click1"  CssClass="btn-primary1"/>
                </div>
				<div class="clearfix"> </div>
				<div class="register-but">
                       
					   <div class="clearfix"> </div>

				</div>
		   </div>
      	 </div>
      </div>
      <div class="grid-2">
       	<div class="container">
       		<p>We acceptmages/paypal.png" class="img-responsive" alt="" align="middle" /></p>
       	</div>
       </div>
       <div class="footer_top">
       	<div class="container">
       		<div class="col-sm-2 grid-3">
       			<h3>Customer Service</h3>
       			<ul class="footer_list">
       				<li><a href="contact.html">Contact</a></li>
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
       			<img src="./images/secure.png" alt=""/>
       		</div>
       	</div>
       </div>
       <div class="footer_bottom">
       	<div class="container">
       		<div class="cssmenu">
				<ul>
					<li class="active"><a >Privacy & Cookies</a></li> |
					<li><a >Terms & Conditions</a></li> |
					<li><a >Accessibility</a></li> |
					<li><a >Store Directory</a></li> |
					<li><a >About Us</a></li>
				</ul>
			</div>
			<div class="copy">
			    <p>&copy; 2015 Template by <a href="#" target="_blank">smallseashell</a></p>
		    </div>
		    <div class="clearfix"> </div>
       	</div>
       </div>
    </form>
</body>
</html>