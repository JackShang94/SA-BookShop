<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <div class="column_center">
  <div class="container">
	<div class="search">
	  <div class="stay">Search Books By Title</div>
	  <div class="stay_right">
          <asp:TextBox ID="TextBox1" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Your email address';}" ></asp:TextBox>
          <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
	  </div>
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
    <div class="brand">
 <div class="container">
	<img src="/images/brands.jpg" class="img-responsive" alt=""/>
 </div>
</div>
          <div class="clearence">
          	<div class="container">
          		<div class="m_3"><span class="left_line1"> </span><i class="clearence"> </i><span class="right_line1"> </span></div>
          	</div>
          </div>
    <div class="container"  >
    <ul id="ul1" runat="Server" style="overflow:hidden;width:100%">
            <%foreach(Book book in booklist) { %>
            <li style="width:25%;float:left;">
                <div >
                     <img src="/BookImages/<%=book.ISBN %>.jpg" class="img-responsive" alt=""/>
                        <div class="product-thumbnail" style="position:relative center;" >
			             <h3 style="width:300px; white-space:nowrap; overflow:hidden; text-overflow:ellipsis;  text-align:center; position:relative center;"><a style="text-align:center; position:relative center" ><%=book.Title%></a></h3>
						<p>$<%=book.Price%>
                            <a href="BookDetails.aspx?ISBN=<%=book.ISBN%>&Title=<%=book.Title %>&Price=<%=book.Price %>&Stock=<%=book.Stock %>"  class="acount-btn" >View Details</a>
						</p>
                         </div>
                        </div>
          </li>
                      <%  } %>
        </ul>
        </div>
       <div class="brands">
       	<div class="m_3"><span class="left_line"> </span><h3>Favourite Brands</h3><span class="right_line"> </span></div>
       	<div class="container">
       		<ul class="brands_list">
       		  <li><img src="/images/br1.jpg" class="img-responsive" alt=""/></li>
       		  <li><img src="/images/br2.jpg" class="img-responsive" alt=""/></li>
       		  <li><img src="/images/br3.jpg" class="img-responsive" alt=""/></li>
       		  <li><img src="/images/br4.jpg" class="img-responsive" alt=""/></li>
       		  <li><img src="/images/br5.jpg" class="img-responsive" alt=""/></li>
       		  <li><img src="/images/br6.jpg" class="img-responsive" alt=""/></li>
       		  <li><img src="/images/br7.jpg" class="img-responsive" alt=""/></li>
       		  <li class="brand_last"><img src="/images/br8.jpg" class="img-responsive" alt=""/></li>
       		  <div class="clearfix"> </div>
       		</ul>
       	</div>
       </div>
</asp:Content>

