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
	          <li class="nav-item"><a href="About.aspx" class="nav-link">Thư viện</a></li>
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
              <img class="mb-4" style="max-width:300px;" src="images/underline.png">
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
					<div class="blog-entry col-md-3 ftco-animate">
                        <h3 class="text py-4 d-block heading mt-2 text-center">
                            <a id ="lnkA" href ="javascript:"  onclick ="Hide(this);"  style="color:#fff;">Basic</a></h3>
						<a id ="lnkA" href ="javascript:"  onclick ="Hide(this);" class="block-20 img d-flex align-items-center" style="background-image: url(images/G1.png);">
							<div class="icon mb-4 d-flex align-items-center justify-content-center">   
                                <div><h3 class="text-center" style="margin-left: 10px;margin-right:10px; color: #dc3545;">Hướng dẫn basic về game</h3>
                                    <h6 class="text-center" style="margin-left: 15px;margin-right:10px; color:#fff;">Bạn là người mới ? bạn vẫn mơ hồ về những thứ cơ bản của game ? đây sẽ là hướng dẫn dành cho bạn</h6>
                                </div>
    					</div>
						</a>
					</div>
					<div class="blog-entry col-md-3 ftco-animate">
                        <h3 class="text py-4 d-block heading mt-2 text-center"><a id ="lnkA" href ="javascript:"  onclick ="Hide(this);" style="color:#fff;">Life Skill</a></h3>
						<a id ="lnkA" href ="javascript:"  onclick ="Hide(this);" class="block-20 img d-flex align-items-center" style="background-image: url(images/G2.jpg);">
							<div class="icon mb-4 d-flex align-items-center justify-content-center">
                                <div><h3 class="text-center" style="margin-left: 10px;margin-right:10px; color: #dc3545;">Hướng dẫn về Life Skill</h3>
                                    <h6 class="text-center" style="margin-left: 10px;margin-right:10px; color:#fff;">Bạn là người mới ? bạn vẫn mơ hồ về những thứ cơ bản của game ? đây sẽ là hướng dẫn dành cho bạn</h6>
                                </div>
    					</div>
						</a>
                        
					</div>
                
					<div class="blog-entry col-md-3 ftco-animate">
                        <h3 class="text py-4 d-block heading mt-2 text-center"><a id ="lnkA" href ="javascript:"  onclick ="Hide(this);" style="color:#fff;">Grinding</a></h3>
						<a id ="lnkA" href ="javascript:"  onclick ="Hide(this);" class="block-20 img d-flex align-items-center" style="background-image: url(images/G3.jpg);">
							<div class="icon mb-4 d-flex align-items-center justify-content-center">
                                <div><h3 class="text-center" style="margin-left: 10px;margin-right:10px; color: #dc3545;">Hướng dẫn về Grinding</h3>
                                    <h6 class="text-center" style="margin-left: 10px;margin-right:10px; color:#fff;">Bạn là người mới ? bạn vẫn mơ hồ về những thứ cơ bản của game ? đây sẽ là hướng dẫn dành cho bạn</h6>
                                </div>
    					</div>
						</a>
					</div>
					<div class="blog-entry col-md-3 ftco-animate">
                        <h3 class="text py-4 d-block heading mt-2 text-center"><a id ="lnkA" href ="javascript:"  onclick ="Hide(this);" style="color:#fff;">Boss</a></h3>
						<a id ="lnkA" href ="javascript:"  onclick ="Hide(this);" class="block-20 img d-flex align-items-center" style="background-image: url(images/G4.jpg);">
							<div class="icon mb-4 d-flex align-items-center justify-content-center">
                                <div><h3 class="text-center" style="margin-left: 10px;margin-right:10px;color: #dc3545;">Hướng dẫn về Boss</h3>
                                    <h6 class="text-center" style="margin-left: 10px;margin-right:10px; color:#fff;">Bạn là người mới ? bạn vẫn mơ hồ về những thứ cơ bản của game ? đây sẽ là hướng dẫn dành cho bạn</h6>
                                </div>
    					</div>
						</a>  
					</div>
        </div>
    	</div>
            </asp:Panel>

        <asp:Panel ID="Panel2" Style="display: none;" runat="server">
        <div class="container ftco-animate">
        <div class="row d-flex">
          <div class="col-md-4 d-flex ">
          	<div class="blog-entry align-self-stretch">
              <a href="Blog-Single.aspx" class="Hinh-20" style="background-image: url('images/image_1.jpg');">
              </a>
              <div class="text py-4 d-block">
              	<div class="meta">
                  <div><span class="icon-calendar"> </span>Sept 28, 2018</div>
                  <div><span class="icon-user"> </span>Admin</div>
                  <div></div>
                </div>
                <h3 class="heading mt-2"><a href="#">Grinding spot</a></h3>
                <p>Tổng hợp những khu vực grinding tốt nhất cho các gear từ thấp đến cao</p>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex">
          	<div class="blog-entry align-self-stretch">
              <a href="Blog-Single.aspx" class="Hinh-20" style="background-image: url('images/image_2.jpg');">
              </a>
              <div class="text py-4 d-block">
              	<div class="meta">
                  <div><span class="icon-calendar"> </span>Sept 28, 2018</div>
                  <div><span class="icon-user"> </span>Admin</div>
                  <div></div>
                </div>
                <h3 class="heading mt-2"><a href="#">Bartering</a></h3>
                <p>Hướng dẫn chạy GRAB ship hàng kiếm tiền bằng xuồng</p>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex">
          	<div class="blog-entry align-self-stretch">
              <a href="Blog-Single.aspx" class="Hinh-20" style="background-image: url('images/image_3.jpg');">
              </a>
              <div class="text py-4 d-block">
              	<div class="meta">
                  <div><span class="icon-calendar"> </span>Sept 28, 2018</div>
                  <div><span class="icon-user"> </span>Admin</div>
                  <div></div>
                </div>
                <h3 class="heading mt-2"><a href="#">Worker</a></h3>
                <p>Hướng dẫn chọn Worker Node lợi nhuận cao, AFK kiếm tiền triệu mỗi ngày</p>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex">
          	<div class="blog-entry align-self-stretch">
              <a href="Blog-Single.aspx" class="Hinh-20" style="background-image: url('images/image_4.jpg');">
              </a>
              <div class="text py-4 d-block">
              	<div class="meta">
                  <div><span class="icon-calendar"> </span>Sept 28, 2018</div>
                  <div><span class="icon-user"> </span>Admin</div>
                  <div></div>
                </div>
                <h3 class="heading mt-2"><a href="#">Cooking</a></h3>
                <p>Hướng dẫn nấu ăn, công thức, nguyên liệu chế biến</p>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex">
          	<div class="blog-entry align-self-stretch">
              <a href="Blog-Single.aspx" class="Hinh-20" style="background-image: url('images/image_5.jpg');">
              </a>
              <div class="text py-4 d-block">
              	<div class="meta">
                  <div><span class="icon-calendar"> </span>Sept 28, 2018</div>
                  <div><span class="icon-user"> </span>Admin</div>
                  <div></div>
                </div>
                <h3 class="heading mt-2"><a href="#">Fishing</a></h3>
                <p>Hướng dẫn AFK câu cá, khu vực câu relic tốt nhất, chọn cần câu</p>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex">
          	<div class="blog-entry align-self-stretch">
              <a href="Blog-Single.aspx" class="Hinh-20" style="background-image: url('images/image_6.jpg');">
              </a>
              <div class="text py-4 d-block">
              	<div class="meta">
                  <div><span class="icon-calendar"> </span>Sept 28, 2018</div>
                  <div><span class="icon-user"> </span>Admin</div>
                  <div></div>
                </div>
                <h3 class="heading mt-2"><a href="#">Gathering</a></h3>
                <p>Hướng dẫn thu thập nguyên liệu ,và những nguyên liệu worker ko thể kiếm đc</p>
              </div>
            </div>
          </div>
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
