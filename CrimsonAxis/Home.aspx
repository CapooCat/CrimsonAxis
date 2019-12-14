<%@ Page Title="" Language="C#" MasterPageFile="~/HeadFoot.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CrimsonAxis.Home" %>
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
	          <li class="nav-item active"><a href="Home.aspx" class="nav-link">Trang chủ</a></li>
	          <li class="nav-item"><a href="Blog.aspx" class="nav-link">Guild Blog</a></li>
	          <li class="nav-item"><a href="About.aspx" class="nav-link">Thư viện</a></li>
	        </ul>
	      </div>
		  </div>
	  </nav>
    <section class="home-slider owl-carousel">
      <div class="slider-item" style="background-image: url(images/bg-1.png);">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row slider-text justify-content-center align-items-center" data-scrollax-parent="true">

            <div class="col-md-8 col-sm-12 text-center ftco-animate">
            	<span class="subheading" style="font-size:50px">Welcome</span>
              <h1 class="mb-4">To the Crimson family</h1>
              <p class="mb-4 mb-md-5"></p>
              <p><a href="#" class="btn btn-primary p-3 px-xl-4 py-xl-3">Tham gia ngay</a>
            </div>

          </div>
        </div>
      </div>

      <div class="slider-item" style="background-image: url(images/bg-2.png);">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row slider-text justify-content-center align-items-center" data-scrollax-parent="true">
            <div class="col-md-8 col-sm-12 text-center ftco-animate">
              <h1 class="mb-4">Come join us</h1>
              <p class="mb-4 mb-md-5">A special home for the newcomer</p>
              <p><a href="#" class="btn btn-primary p-3 px-xl-4 py-xl-3">Tham gia ngay</a>
            </div>

          </div>
        </div>
      </div>

      <div class="slider-item" style="background-image: url(images/bg-3.png);">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row slider-text justify-content-center align-items-center" data-scrollax-parent="true">

            <div class="col-md-8 col-sm-12 text-center ftco-animate">
            	<span class="subheading"></span>
              <h1 class="mb-4">together we'll grow stronger</h1>
              <p class="mb-4 mb-md-5"></p>
              <p><a href="#" class="btn btn-primary p-3 px-xl-4 py-xl-3">Tham gia ngay</a>
            </div>

          </div>
        </div>
      </div>
    </section>

    

    <section class="ftco-section contact-section">
        <div class="container">
        <div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section ftco-animate text-center">
          	<span class="subheading" style="margin-bottom:5px">Crimson Axis</span>
            <h2 class="mb-4">Những người sáng lập</h2>
            <img style="max-width:300px;" src="images/underline.png">
          </div>
        </div>
            </div>
      <div class="container">
        <div class="row">
          <div class="col-md-3 ftco-animate">
            <div class="media d-block text-center block-6 services">
              <div class="icon d-flex justify-content-center align-items-center mb-5">
              	<img style="width:100%;height:100%;" src="images/A1.png">
              </div>
              <div class="media-body">
                <h3 class="heading" style="color: #fff">Putnine</h3>
                <p style="color: #fff">Tiến ốm</p>
              </div>
            </div>      
          </div>
          <div class="col-md-3 ftco-animate">
            <div class="media d-block text-center block-6 services">
              <div class="icon d-flex justify-content-center align-items-center mb-5">
                  <img style="width:100%;height:100%;" src="images/A2.png">
              </div>
              <div class="media-body">
                <h3 class="heading" style="color: #fff">Elden</h3>
                <p style="color: #fff">Hoàng Long</p>
              </div>
            </div>      
          </div>
          <div class="col-md-3 ftco-animate">
            <div class="media d-block text-center block-6 services">
              <div class="icon d-flex justify-content-center align-items-center mb-5">
                  <img style="width:100%;height:100%;" src="images/A3.png">
              	</div>
              <div class="media-body">
                <h3 class="heading" style="color: #fff">Babadin</h3>
                <p style="color: #fff">Tiến mập</p>
              </div>
            </div>    
          </div>
            <div class="col-md-3 ftco-animate">
            <div class="media d-block text-center block-6 services">
              <div class="icon d-flex justify-content-center align-items-center mb-5 ">
                  <img style="width:100%;height:100%;" src="images/A4.png">
              	</div>
              <div class="media-body">
                <h3 class="heading" style="color: #fff">Sugar Daddy</h3>
                <p style="color: #fff">Nguyên Barber</p>
              </div>
            </div>    
          </div>
        </div>
          </div>
    </section>

    <section class=" ftco-about d-md-flex ftco-animate">
    	<div class="one-half img" style="background-image: url(images/about.png);"></div>
    	<div class="one-half ftco-animate">
    		<div class="overlap">
	        <div class="heading-section ftco-animate ">
	        	<span class="subheading" style="margin-bottom: 5px">Crimson Axis</span>
	          <h2 class="mb-4">Về chúng tôi & luật lệ</h2>
	        </div>
	        <div style="font-size:18px; color:#ced3d6;">
	  				<h>Guild mình có những cuộc hành trình phiêu lưu đầy hấp dẫn và những **Mạo hiểm giả **đầy tài năng. Guild hội tụ nhiều thành phần lầy lội, thoải mái, thân thiện với môi trường, yêu hoa lá chim bướm, yêu tổ quốc yêu đồng bào học tập tốt lao động tốt. Giữ gìn vệ sinh thật tốt, thích thì dơ không thích thì dơ. Không nói gì nhiều nữa, Hãy tham gia vào căn nhà nhỏ của bọn mình vì nó không có luật lệ và không có gò bó . còn chừng chờ gì nữa mà không tham già vào guild nào các homie</h>
                    <p></p>
                <p>Yêu cầu nho nhỏ:</p>

<p>① Có discord càng tốt để đá chứng kút với anh em trong guild</p>

<p>② Offline quá 5 ngày thì tụi mình xin kick ( vì anh em không thể nhịn cảnh chứng kút không được ai đá trong 5 ngày được )</p>
	  			</div>
  			</div>
    	</div>
    </section>
    <section class="ftco-section contact-section">
    <div class="container col-md-10 heading-section ftco-animate text-center">
                    <span class="subheading" style="margin-bottom: 5px">Crimson Axis</span>
                    <h2 class="mb-4">Guild Trailer</h2>
        <img class="mb-4" style="max-width: 300px;" src="images/underline.png">
        </div>
        </section>
    <section class="ftco-animate img" style="background-image: url(images/background-2.jpg);" data-stellar-background-ratio="0.5">
        <section class="ftco-section contact-section ftco-animate img" style=" background-image: url(images/background.png);">
            <div class="container">
                <div class="row justify-content-center mb-5 pb-3">
                    <div class=" col-md-10 heading-section ftco-animate text-center">
                        <iframe class="container" style="margin-top: 100px;" height="502" src="https://www.youtube.com/embed/uQ5fry5wNAg" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

                    </div>
                </div>
            </div>
        </section>
        </section>

    <section class="ftco-section contact-section">
    <div class="container col-md-10 heading-section ftco-animate text-center">
                    <span class="subheading" style="margin-bottom: 5px">Crimson Axis</span>
                    <h2 class="mb-4">Thống kê</h2>
        <img class="mb-4" style="max-width: 300px;" src="images/underline.png">
        </div>
        </section>
    
    
    

    <section class="ftco-counter ftco-bg-dark img" id="section-counter" style="background-image: url(images/bg-4.png);" data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
      <div class="container">
        <div class="row justify-content-center">
        	<div class="col-md-10">
        		<div class="row">
		          <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center">
		              <div class="text">
		              	<div class="icon"><span class="icon-people"></span></div>
		              	<strong class="number" data-number="0">0</strong>
		              	<span>Số lượng Officers</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center">
		              <div class="text">
		              	<div class="icon"><span class="icon-group"></span></div>
		              	<strong class="number" data-number="0">0</strong>
		              	<span>Số lượng Members</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center">
		              <div class="text">
		              	<div class="icon"><span class="icon-user"></span></div>
		              	<strong class="number" data-number="0">0</strong>
		              	<span>Số lượng Guild Master</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center">
		              <div class="text">
		              	<div class="icon"><span class="icon-network_wifi"></span></div>
		              	<strong class="number" data-number="0">0</strong>
		              	<span>Online Members</span>
		              </div>
		            </div>
		          </div>
		        </div>
		      </div>
        </div>
      </div>
    </section>

    <section class="ftco-gallery" style="margin-top:80px">
        <div class="container">
        <div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section ftco-animate text-center">
          	<span class="subheading" style="margin-bottom:5px">Crimson Axis</span>
            <h2 class="mb-4">Những kỉ niệm</h2>
            <img class="mb-4" style="max-width:300px;" src="images/underline.png">
          </div>
        </div>
            </div>
    	<div class="container-wrap">
    		<div class="row no-gutters">
					<div class="col-md-3 ftco-animate">
						<a data-target="#myModal" data-toggle="modal" class="gallery img d-flex align-items-center" style="background-image: url(images/gallery-1.jpg);" href="#myModal">
							<div class="icon mb-4 d-flex align-items-center justify-content-center">
    						<span class="icon-search"></span>
    					</div>
						</a>
					</div>
					<div class="col-md-3 ftco-animate">
						<a data-target="#myModal2" data-toggle="modal" class="gallery img d-flex align-items-center" style="background-image: url(images/gallery-2.jpg);" href="#myModal">
							<div class="icon mb-4 d-flex align-items-center justify-content-center">
    						<span class="icon-search"></span>
    					</div>
						</a>
					</div>
					<div class="col-md-3 ftco-animate">
						<a data-target="#myModal3" data-toggle="modal" class="gallery img d-flex align-items-center" style="background-image: url(images/gallery-3.jpg);" href="#myModal">
							<div class="icon mb-4 d-flex align-items-center justify-content-center">
    						<span class="icon-search"></span>
    					</div>
						</a>
					</div>
					<div class="col-md-3 ftco-animate">
						<a data-target="#myModal4" data-toggle="modal" class="gallery img d-flex align-items-center" style="background-image: url(images/gallery-4.jpg);" href="#myModal">
							<div class="icon mb-4 d-flex align-items-center justify-content-center">
    						<span class="icon-search"></span>
    					</div>
						</a>
					</div>
        </div>
    	</div>
        

        <div id="myModal" class="container-wrap modal ftco-animate">
            <span class="close" data-dismiss="modal">&times;</span>
       <img style="width:100%;height:100%;" class="modal-content" src="images/gallery-1.jpg">
            </div>
        <div id="myModal2" class="container-wrap modal ftco-animate">
            <span class="close" data-dismiss="modal">&times;</span>
       <img style="width:100%;height:100%;" class="modal-content" src="images/gallery-2.jpg">
            </div>
        <div id="myModal3" class="container-wrap modal ftco-animate">
            <span class="close" data-dismiss="modal">&times;</span>
       <img style="width:100%;height:100%;" class="modal-content" src="images/gallery-3.jpg">
            </div>
        <div id="myModal4" class="container-wrap modal ftco-animate">
            <span class="close" data-dismiss="modal">&times;</span>
       <img style="width:100%;height:100%;" class="modal-content" src="images/gallery-4.jpg">
            </div>
    </section>

    <section class="ftco-section">
        <div class="container col-md-10 heading-section ftco-animate text-center">
    <a href="#" class=" btn btn-white btn-outline-white p-3 px-xl-4 py-xl-3" style="width:200px;font-size:18px;">Xem thêm hình</a>
            </div>
        </section>
</asp:Content>
