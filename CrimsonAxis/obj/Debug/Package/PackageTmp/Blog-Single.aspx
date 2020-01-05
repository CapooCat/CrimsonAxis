<%@ Page Title="" Language="C#" MasterPageFile="~/HeadFoot.Master" AutoEventWireup="true" CodeBehind="Blog-Single.aspx.cs" Inherits="CrimsonAxis.Blog_Single" %>
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
	        </ul>
	      </div>
		  </div>
	  </nav>

    <section class="ftco-section">
      <div class="container">
        <div class="row">
          <div class="col-md-8 ftco-animate" style="font-size:16px;color:#ced3d6;">
           <h2>A - Những chỉ số cơ bản</h2>
            <img src="images/Basic-1.jpg" class="img-fluid">
            <p style="font-size:16px">(1) Level Cũng như đa số các game MMORPG khác, bạn có thể nhận exp để lên Level thông qua chạy quest, đánh quái và life skill</p>
	        <p>(2) Skill Point Cái tên nói lên tất cả, dùng để tăng skill cho nhân vật, Skill Point sẽ không tăng khi lên Level mà chỉ có thể có được thông qua đánh quái</p>
            <p></p>
            <img src="images/Basic-2.jpg" alt="" class="img-fluid">
            <p>(3) Energy Một chỉ số khá quan trọng trong việc mở node, life skill, thuê worker, … tùy vào việc sử dụng mà sẽ mất 1 lượng energy tương ứng, energy sẽ hồi lại 1 điểm mỗi 3 phút. Bạn có thể tăng lượng energy tối đa bằng cách tìm kiếm knowledge.
            </p><p style="font-size:16px">(4) Contribution Point Một chỉ số nữa cũng quan trọng không kém là CP, chủ yếu dùng để mở node, mua nhà, … Bạn có thể tăng điểm CP thông qua làm quest</p>
          </div> <!-- .col-md-8 -->
          <div class="col-md-4 sidebar ftco-animate">
            <div class="sidebar-box">
              <form action="#" class="search-form">
                <div class="form-group">
                	<div class="icon">
	                  <span class="icon-search"></span>
                  </div>
                  <input type="text" class="form-control" placeholder="Search...">
                </div>
              </form>
            </div>
            <div class="sidebar-box ftco-animate">
              <div class="categories">
                <h3>Categories</h3>
                <li><a href="#">Life Skill <span>(0)</span></a></li>
                <li><a href="#">Grinding <span>(0)</span></a></li>
                <li><a href="#">Boss <span>(0)</span></a></li>
                <li><a href="#">Basic <span>(0)</span></a></li>
              </div>
            </div>

            <div class="sidebar-box ftco-animate">
              <h3>Bài gần đây</h3>
              <asp:Repeater ID="rpt_Recent" runat="server">
              <ItemTemplate>
              <div class="block-21 mb-4 d-flex">
                <a class="blog-img mr-4" style="<%# Eval("Image") %>"></a>
                <div class="text">
                  <h3 class="heading"><a href="<%# Eval("Link") %>"><%# Eval("Description") %></a></h3>
                  <div class="meta">
                    <div><span class="icon-calendar"> </span> <%# Eval("DateAdded") %></div>
                    <div><span class="icon-title"> </span> <%# Eval("TenLoai") %></div>
                  </div>
                </div>
              </div>
              </ItemTemplate>
              </asp:Repeater>
            </div>

            <div class="sidebar-box ftco-animate">
              <h3>Paragraph</h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus itaque, autem necessitatibus voluptate quod mollitia delectus aut, sunt placeat nam vero culpa sapiente consectetur similique, inventore eos fugit cupiditate numquam!</p>
            </div>
          </div>

        </div>
      </div>
    </section>
</asp:Content>
