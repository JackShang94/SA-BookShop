<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BookDetails.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="column_center">
  <div class="container">
	<div class="search">
	  <div class="stay">Book Details</div>	  
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
<head>
<title>Lookshop Bootstarp Website Template | Single :: w3layouts</title>
<link href="./css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- Custom Theme files -->
<link href="./css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<link href='http://fonts.googleapis.com/css?family=Oxygen:300,400,700' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="./js/jquery-1.11.1.min.js"></script>
<script src="./js/jquery.easydropdown.js"></script>
<link rel="stylesheet" href="./css/etalage.css">
<script src="./js/jquery.etalage.min.js"></script>
<script>
			jQuery(document).ready(function($){

				$('#etalage').etalage({
					thumb_image_width: 300,
					thumb_image_height: 400,
					source_image_width: 900,
					source_image_height: 1200,
					show_hint: true,
					click_callback: function(image_anchor, instance_id){
						alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
					}
				});

			});
		</script>
<!--initiate accordion-->
<script type="text/javascript">
	$(function() {
	
	    var menu_ul = $('.menu > li > ul'),
	           menu_a  = $('.menu > li > a');
	    
	    menu_ul.hide();
	
	    menu_a.click(function(e) {
	        e.preventDefault();
	        if(!$(this).hasClass('active')) {
	            menu_a.removeClass('active');
	            menu_ul.filter(':visible').slideUp('normal');
	            $(this).addClass('active').next().stop(true,true).slideDown('normal');
	        } else {
	            $(this).removeClass('active');
	            $(this).next().stop(true,true).slideUp('normal');
	        }
	    });
	
	});
</script>
</head>
    <ul class="breadcrumbs">
 <div class="container">
     <li class="home">
        <a href="index.aspx" title="Go to Home Page"><img src="./images/home.png" alt=""/></a>&nbsp;
       &nbsp; <span>&gt;</span>
     </li>
     <li class="home">&nbsp;
         BookDetails&nbsp;&nbsp;
         <span>&gt;</span>
     </li>
  </div>
</ul>
<div class="single_top">
	 <div class="container"> 
	      <div class="single_grid">
				<div class="grid images_3_of_2">
						<ul id="etalage">
							<li>
								<a href="optionallink.html">
									<img class="etalage_thumb_image" src="./BookImages/<%=ISBN%>.jpg" class="img-responsive" />
									<img class="etalage_source_image" src="./BookImages/<%=ISBN%>.jpg" class="img-responsive" title="" />
								</a>
							</li>
						</ul>
						 <div class="clearfix"></div>		
				  </div> 
				  <div class="desc1 span_3_of_2">
				  	<ul class="back">
                	  <li><i class="back_arrow"> </i>Back to <a href="index.aspx">Home Page</a></li>
                    </ul>
					<h1><%=Title%></h1>
					<ul class="price_single">
					  <li class="head"><h2><%=Price %></h2></li>
					  <li class="head_desc"><a href="#"><%=Stock %> left</a><img src="./images/review.png" alt=""/></li>
					  <div class="clearfix"></div>
					</ul>
					<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum</p>
				     <div class="dropdown_top">
				       <div class="dropdown_left">
                           <asp:DropDownList ID="DropDownList1" TabIndex="10" runat="server" CssClass="dropdown" data-settings='{"wrapperClass":"metro1"}'>
                               <asp:ListItem Selected="True" Value="0">Select Quantity</asp:ListItem>
                               <asp:ListItem>1</asp:ListItem>
                               <asp:ListItem>2</asp:ListItem>
                               <asp:ListItem>3</asp:ListItem>
                               <asp:ListItem>4</asp:ListItem>
                               <asp:ListItem>5</asp:ListItem>
                           </asp:DropDownList>
			            </div>
						 <div class="clearfix"></div>
			         </div>
                      <asp:Button ID="Button1" runat="server" Text="Add To Cart" class="btn1 btn2 btn-primary1" OnClick="Button1_Click" />
				</div>
          	    <div class="clearfix"></div>
          	   </div>
          	 <div class="single_social_top">   
          	  <ul class="single_social">
				  <li><a href="#"> <i class="s_fb"> </i> <div class="social_desc">Share<br> on facebook</div><div class="clearfix"> </div></a></li>
				  <li><a href="#"> <i class="s_pin"> </i> <div class="social_desc">Pin<br> this product</div><div class="clearfix"> </div></a></li>
				  <li><a href="#"> <i class="s_twt"> </i><div class="social_desc">Tweet<br> this product</div><div class="clearfix"> </div></a></li>
				  <li class="last"><a href="#"> <i class="s_email"> </i><div class="social_desc">Email<br> a Friend</div><div class="clearfix"> </div></a></li>
			  </ul>
			 </div>
   </div>
</asp:Content>

