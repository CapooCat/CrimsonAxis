<%@ Page Title="" Language="C#" MasterPageFile="~/HeadFoot.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="CrimsonAxis.About" %>
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
	          <li class="nav-item"><a href="Blog.aspx" class="nav-link">Guild Blog</a></li>
	          <li class="nav-item active"><a href="About.aspx" class="nav-link">Giới thiệu</a></li>
	        </ul>
	      </div>
		  </div>
	  </nav>
    <section class="home-slider owl-carousel">

      <div class="slider-item" style="background-image: url(images/bg-3.png);">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row slider-text justify-content-center align-items-center">

            <div class="col-md-7 col-sm-12 text-center ftco-animate">
            	<h1 class="mb-3 mt-5 bread">About Us</h1>
	            <p class="breadcrumbs"><span class="mr-2"><a href="Home.aspx">Home</a></span> <span>About</span></p>
            </div>

          </div>
        </div>
      </div>
    </section>
</asp:Content>
