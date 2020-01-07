<%@ Page Title="" Language="C#" MasterPageFile="~/HeadFoot.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="CrimsonAxis.Blog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="Home.aspx">Crimson<small>Axis</small></a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item"><a href="Home.aspx" class="nav-link">Trang chủ</a></li>
	          <li class="nav-item active"><a href="Blog.aspx" class="nav-link">Guild Blog</a></li>
	          <li class="nav-item"><a href="ThuVien.aspx" class="nav-link">Thư viện</a></li>
              <li class="nav-item"><a href="Boss-Timer.aspx" class="nav-link">World Boss</a></li>
	        </ul>
	      </div>
		  </div>
	  </nav>

    <section class="ftco-gallery ftco-section" style="margin-top:80px">
        <div class="container">
        <div class="row justify-content-center mb-5 pb-3" >
          <div class="col-md-7 heading-section ftco-animate text-center">
          	<span class="subheading" style="margin-bottom:5px">Crimson Axis</span>
            <h2 class="mb-4">Guide</h2>
              <img class="mb-4" style="max-width:300px;" src="https://lh3.googleusercontent.com/hRLkDL15CbsrAzc5T9UV9E6tVM3SA0SLYb2xn6B0fKFX8rr4-hCi0PLbkNgsYfxEWl9z0a5Rq5WTOAk8VbqtMvFcM894mo8OyTcfNY_RIwvN7QwSIYMSzoEOhXPjCvYKquc74iE7=w2400">
          </div>
            <div class="sidebar-box ftco-animate">
              <form action="#" class="search-form">
                <div class="container form-group">
                	<div class="icon">
	                  <div><a href="#"><span class="icon-search"></span></a></div>
                  </div>
                  <input type="text" class="form-control" placeholder="Search..."/>
                </div>
              </form>
            </div>
        </div>
            </div>

        

        <asp:Panel ID="Panel1" runat="server">
    	<div class="container-wrap" style="margin-left:100px; margin-right:100px;" >
    		<div class="row">
                <asp:Repeater ID="rpt_Loai" runat="server">
                <ItemTemplate>
					<div class="blog-entry col-md-3 ftco-animate">
                        <h3 class="text py-4 d-block heading mt-2 text-center">
                            <a style="color:#fff;"><%# Eval("TenLoai") %></a></h3>
						<a id ="lnkA" href ="javascript:"  onclick ="Hide(this);" class="block-20 img d-flex align-items-center" style="<%# Eval("Image") %>"> 
							<div class="icon mb-4 d-flex align-items-center justify-content-center">   
                                <div><h3 class="text-center" style="margin-left: 10px;margin-right:10px; color: #dc3545;"><%# Eval("Title") %></h3>
                                    <h6 class="text-center" style="margin-left: 15px;margin-right:10px; color:#fff;"><%# Eval("Description") %></h6>
                                </div>
    					</div>
						</a>
					</div>
                    </ItemTemplate>
                    </asp:Repeater>
        </div>
    	</div>
            </asp:Panel>

        <asp:Panel ID="Panel2" Style="display: none;" runat="server">
        <div class="container ftco-animate">
        <div class="row d-flex">
         <asp:Repeater ID="rpt_Blog" runat="server">
             <ItemTemplate>
          <div class="col-md-4 d-flex ">
          	<div class="blog-entry align-self-stretch">
              <a href="Blog-Single.aspx" class="Hinh-20" style="<%# Eval("Image") %>"></a>
              <div class="text py-4 d-block">
              	<div class="meta">
                  <div><span class="icon-calendar"> </span><%# Eval("DateAdded") %></div>
                  <div><span class="icon-title"> </span><%# Eval("TenLoai") %></div>
                  <div></div>
                </div>
                <h3 class="heading mt-2"><a href="<%# Eval("Link") %>"><%# Eval("Title") %></a></h3>
                <p><%# Eval("Description") %></p>
              </div>
            </div>
          </div>
                 </ItemTemplate>
          </asp:Repeater>
        </div>
      </div>
            </asp:Panel>

        <script type="text/javascript">
            function Hide(obj) {
                var pnlA = document.getElementById('<%=Panel1.ClientID %>');
                var pnlB = document.getElementById('<%=Panel2.ClientID %>');
                if (obj.id == "lnkA") {
                        pnlA.style.display = 'none';
                        pnlB.style.display = 'block';
                    }
                }
        </script>

        
    </section>
</asp:Content>
