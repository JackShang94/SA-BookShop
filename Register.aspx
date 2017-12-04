<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

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
                <span class="red">&nbsp;Login&nbsp;</span>
            </li>
        </div>
    </ul>
    <div class="contact">
      	<div class="container">
      	   <div class="register">
		  	  <form> 
				 <div class="register-top-grid">
					<h3>PERSONAL INFORMATION</h3>
					 <div>
						<span>User Name<label>*</label></span>
                         <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
					 </div>
					 <div>
						 <span>Email Address<label>*</label></span>
                         <asp:TextBox ID="EmailAddress" runat="server"></asp:TextBox>
					 </div>
                     <div>
                         <span>Phone Number<label>*</label></span>
                         <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                     </div>
                         <div>
                             <span>Address<label>*</label></span>
                             <asp:TextBox ID="Address" runat="server"></asp:TextBox>
                         </div>
					 <div class="clearfix"> </div>
					 </div>
				     <div class="register-bottom-grid">
						    <h3 >LOGIN INFORMATION</h3>
							 <div>
								<span>Password<label>*</label></span>
                                 <asp:TextBox ID="Password" runat="server"></asp:TextBox>
							 </div>
							 <div>
								<span>Confirm Password<label>*</label></span>
                                 <asp:TextBox ID="ConfirmPassword" runat="server"></asp:TextBox>
							 </div>
							 <div class="clearfix"> </div>
					 </div>
				</form>
				<div class="clearfix"> </div>
				<div class="register-but">
				   <form>
                       
					   <div class="clearfix"> </div>
				   </form>
                    <asp:Button ID="Button1" CssClass="submit" runat="server" Text="Create" OnClick="Button1_Click" />
				</div>
		   </div>
      	 </div>
      </div>
      <div class="grid-2">
       	<div class="container">
       		<p>We accept<img src="./images/paypal.png" class="img-responsive" alt="" align="middle" /></p>
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
					<li class="active"><a href="login.html">Privacy & Cookies</a></li> |
					<li><a href="checkout.html">Terms & Conditions</a></li> |
					<li><a href="checkout.html">Accessibility</a></li> |
					<li><a href="login.html">Store Directory</a></li> |
					<li><a href="register.html">About Us</a></li>
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
