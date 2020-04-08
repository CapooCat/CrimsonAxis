<%@ Page Title="" Language="C#" MasterPageFile="~/HeadFoot.Master" AutoEventWireup="true" CodeBehind="ThuVien.aspx.cs" Inherits="CrimsonAxis.About" %>
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
	          <li class="nav-item"><a href="http://crimsonaxis.somee.com/" class="nav-link">Trang chủ</a></li>
	          <li class="nav-item active"><a href="ThuVien.aspx" class="nav-link">Thư viện</a></li>
              <li class="nav-item"><a href="Boss-Timer.aspx" class="nav-link">World Boss</a></li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Tools</a>
                    <div class="dropdown-menu" aria-labelledby="dropdown">
                        <a class="dropdown-item active" href="CalculatorEXP.aspx">Life Skill EXP</a>
                    </div>
                </li>
	        </ul>
	      </div>
		  </div>
	  </nav>
    <section class="ftco-gallery ftco-section" style="margin-top:40px;">
        <div class="container">
        <div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section ftco-animate text-center">
          	<span class="subheading" style="margin-bottom:5px">Crimson Axis</span>
            <h2 class="mb-4">Thư viện</h2>
            <img class="mb-4" style="max-width:300px;" src="https://lh3.googleusercontent.com/hRLkDL15CbsrAzc5T9UV9E6tVM3SA0SLYb2xn6B0fKFX8rr4-hCi0PLbkNgsYfxEWl9z0a5Rq5WTOAk8VbqtMvFcM894mo8OyTcfNY_RIwvN7QwSIYMSzoEOhXPjCvYKquc74iE7=w2400">
          </div>
        </div>
            </div>
        <div class="container-wrap">
            <div class="row" style="margin: 15px">
                <asp:Repeater ID="rpt_Anh" runat="server">
                    <ItemTemplate>
                        <div class="col-md-3 ftco-animate" style="margin-bottom: 30px">
                            <a data-target="#myModal<%# Eval("ImageID") %>" data-toggle="modal" class="gallery img d-flex align-items-center" style="<%# Eval("Code") %><%# Eval("Image") %><%# Eval("End") %>" href="#myModal">
                                <div class="icon mb-4 d-flex align-items-center justify-content-center">
                                    <span class="icon-search"></span>
                                </div>
                            </a>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
        </div>
    	</div>
        
        <asp:Repeater ID="rpt_LoadAnh" runat="server">
            <ItemTemplate>
                <div id="myModal<%# Eval("ImageID") %>" class="container-wrap modal ftco-animate">
                    <img style="width: 100%; height: 100%;" class="modal-content" src="<%# Eval("Image") %>">
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </section>
</asp:Content>
