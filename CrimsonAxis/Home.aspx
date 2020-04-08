<%@ Page Title="" Language="C#" MasterPageFile="~/HeadFoot.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CrimsonAxis.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar" style="position: fixed;">
	    <div class="container">
	      <a class="navbar-brand" href="Home.aspx">Crimson<small>Axis</small></a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item active"><a href="http://crimsonaxis.somee.com/" class="nav-link">Trang chủ</a></li>
	          <li class="nav-item"><a href="ThuVien.aspx" class="nav-link">Thư viện</a></li>
              <li class="nav-item"><a href="Boss-Timer.aspx" class="nav-link">World Boss</a></li>
              <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" id="dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Tools</a>
              <div class="dropdown-menu" aria-labelledby="dropdown">
              	<a class="dropdown-item" href="CalculatorEXP.aspx">Life Skill EXP</a>
              </div>
            </li>
	        </ul>
	      </div>
		  </div>
	  </nav>
    <section class="home-slider owl-carousel">
      <div class="slider-item" style="background-image: url(https://lh3.googleusercontent.com/gqGTHFnB9u7TFgF5hfgQC2fLWp21XWO-nJM7_3xC7ZpfLEuzQ27xkG5xqyP_dSyb0swk_cVKPaMe_dqXWU45dNoF6xsQQm7X7haacwj0r_LXmgtTqV83T7_RrybycKR2vB770FET=w2400);">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row slider-text justify-content-center align-items-center" data-scrollax-parent="true">

            <div class="col-md-8 col-sm-12 text-center ftco-animate">
            	<span class="subheading" style="font-size:50px">Welcome</span>
              <h1 class="mb-4">To the Crimson family</h1>
              <p><a href="https://discord.gg/Fs6y2bP" class="btn btn-primary p-3 px-xl-4 py-xl-3">Tham gia ngay</a></p>
            </div>

          </div>
        </div>
      </div>

      <div class="slider-item" style="background-image: url(https://lh3.googleusercontent.com/v_iOM7hNHs_FFqhQTHuSX1X_tvOfpUIwRFyLYrovqR8TXYEcCDrtATaSaS8znEHLYgvHQDtzz4zBYvaB15VYngbX64RXexzOsqcfHMD8bcsbwWmKtYk9UiPqPjh93kpbW_AyHy7r=w2400);">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row slider-text justify-content-center align-items-center" data-scrollax-parent="true">
            <div class="col-md-8 col-sm-12 text-center ftco-animate">
              <span class="subheading" style="font-size:50px">Welcome</span>
              <h1 class="mb-4">To the Crimson family</h1>
              <p><a href="https://discord.gg/Fs6y2bP" class="btn btn-primary p-3 px-xl-4 py-xl-3">Tham gia ngay</a>
            </div>

          </div>
        </div>
      </div>

      <div class="slider-item" style="background-image: url(https://lh3.googleusercontent.com/M_fX7G0Wi7stt1SnzTgCzalCFZGL-Wrec2nF43c-R3a81UAJGSv_ohQwsGSKpmjycT_JLIoDJXj2f7fhhTb9YwUUvT-5DSIvbKmMASetZqQWopzi0BMXmruxcSfprdCsFW7DxDLj=w2400);">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row slider-text justify-content-center align-items-center" data-scrollax-parent="true">

            <div class="col-md-8 col-sm-12 text-center ftco-animate">
            	<span class="subheading"></span>
              <span class="subheading" style="font-size:50px">Welcome</span>
              <h1 class="mb-4">To the Crimson family</h1>
              <p><a href="https://discord.gg/Fs6y2bP" class="btn btn-primary p-3 px-xl-4 py-xl-3">Tham gia ngay</a>
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
            <img style="max-width:300px;" src="https://lh3.googleusercontent.com/hRLkDL15CbsrAzc5T9UV9E6tVM3SA0SLYb2xn6B0fKFX8rr4-hCi0PLbkNgsYfxEWl9z0a5Rq5WTOAk8VbqtMvFcM894mo8OyTcfNY_RIwvN7QwSIYMSzoEOhXPjCvYKquc74iE7=w2400">
          </div>
        </div>
            </div>
      <div class="container">
        <div class="row">
          <div class="col-md-3 ftco-animate">
            <div class="media d-block text-center block-6 services">
              <div class="icon d-flex justify-content-center align-items-center mb-5">
              	<img style="width:100%;height:100%;" src="https://lh3.googleusercontent.com/dd8VIwrOWp6hPXVNxQKy3ZfPlgaBM6wgmrWKqzhj-qV90oyBdQV2vttXg2NjqDFmPbeKsUxSCwDDzuWHD5iqH0ZyOZ1ceoYiLLKCVWon6JBAuVKTSpbInL8Q3g5RuHt1DYYS2D7I=w2400">
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
                  <img style="width:100%;height:100%;" src="https://lh3.googleusercontent.com/5WoTxc3rXmogyMckHrXdp1dPaaBozpoOAHzx2VjM01D1qQoVq6y4z4YMo2xgpyHSTEjvwpnx0ucBQw-ZI71RMC1pQWr05LmhlS2Hhv_pLMD4gByuJtlQpkiG9QvI_OzsiB-AxXeJ=w2400">
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
                  <img style="width:100%;height:100%;" src="https://lh3.googleusercontent.com/LBK5XoMwCPInD7ZceeteQXfJthdzLEB8iwZwvML-GGVNpv08K77iWETvEZsmo02la8ezerWZ7keB_lC7Y2g_q57m0FR546eR_mt_dJW5tal9zHWh0Gl4AEDvKOwn8wZYsE0E2U9r=s128-p-k">
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
                  <img style="width:100%;height:100%;" src="https://lh3.googleusercontent.com/R2AAZcOepmKfCdCGjD6C5FDR_kmJ2R6WCvu_Glfh6cFlD_JKQ3WJZMv1IrBVSHek_1nwRst3qA6wsAj23xhC3ujLJHC9_bKBZVIo05naLgT2pb5r8QaNAWSNsllRJlF2RPK2-Aoa=w2400">
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
    	<div class="one-half img" style="background-image: url(https://lh3.googleusercontent.com/YFdfJEbBHt5TpXIpn3QQNA8UADUMFNfBXCcpjK3h6AMTBxmv8l-dZLjNd3P71dFOTU9LHE3lKS_wTsWevo1jOaIpvNPdYHZmoH8Pe3AFHuksROjsK89jWrEqqFHV3442PKib0Fcc=w2400);"></div>
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
        <img class="mb-4" style="max-width: 300px;" src="https://lh3.googleusercontent.com/hRLkDL15CbsrAzc5T9UV9E6tVM3SA0SLYb2xn6B0fKFX8rr4-hCi0PLbkNgsYfxEWl9z0a5Rq5WTOAk8VbqtMvFcM894mo8OyTcfNY_RIwvN7QwSIYMSzoEOhXPjCvYKquc74iE7=w2400">
        </div>
        </section>
    <section class="ftco-animate img" style="background-image: url(https://lh3.googleusercontent.com/bPNW50DulOvzz4j07q4ull4ItAX-EIHQbTWPEInbEr80pxOCM3OfRrMJBQ3Li6uLheFhWKmPDf-WYVQj0BP_eu9EJFwYVNVv7LRHvIPG3tnfHNtaO5HDFJp5aj9GNrttVrX2l7sl=w2400);">
        <section class="ftco-section contact-section ftco-animate img" style="background-image: url(https://lh3.googleusercontent.com/yzV4o5PYBV57hC3yvJi_cBdzkDj2N66vKIDjjbNT2twNYTFF_8kBHjD6vGNZRaUlDaHwasXzKxsf5yeb922nCmJfaoOr9y2NrildLsStBkTLrGxXL6KCT6E4ASmd4Hkgzkec-_Xt=w2400);">
            <div class="container">
                <div class="row justify-content-center mb-5 pb-3">
                    <div class="col-md-10 ftco-animate text-center">
                        <iframe class="Video-Contain" src="https://www.youtube.com/embed/uQ5fry5wNAg?modestbranding=1&autohide=1&showinfo=0" frameborder="0" allowfullscreen></iframe>
                    </div>
                </div>
            </div>
        </section>
        </section>

    <section class="ftco-gallery" style="margin-top:80px">
        <div class="container">
        <div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section ftco-animate text-center">
          	<span class="subheading" style="margin-bottom:5px">Crimson Axis</span>
            <h2 class="mb-4">Những kỉ niệm</h2>
            <img class="mb-4" style="max-width:300px;" src="https://lh3.googleusercontent.com/hRLkDL15CbsrAzc5T9UV9E6tVM3SA0SLYb2xn6B0fKFX8rr4-hCi0PLbkNgsYfxEWl9z0a5Rq5WTOAk8VbqtMvFcM894mo8OyTcfNY_RIwvN7QwSIYMSzoEOhXPjCvYKquc74iE7=w2400">
          </div>
        </div>
            </div>
    	<div class="container-wrap">
    		<div class="row no-gutters">
					<div class="col-md-3 ftco-animate">
						<a data-target="#myModal" data-toggle="modal" class="gallery img d-flex align-items-center" style="background-image: url(https://lh3.googleusercontent.com/6TJAzrVbd_c944E0Sz2zs9eD7oMyZsaalLCYpi5tttGkUj0feLEjJVL7dH7cFCzNnFvUMFKUaJPDOoDvTUHfPyZKyAul-US4FqzpE6AseZtDGABEAwbw8s_rOmZwOMsN378dWzEJYA=w2400);" href="#myModal">
							<div class="icon mb-4 d-flex align-items-center justify-content-center">
    						<span class="icon-search"></span>
    					</div>
						</a>
					</div>
					<div class="col-md-3 ftco-animate">
						<a data-target="#myModal2" data-toggle="modal" class="gallery img d-flex align-items-center" style="background-image: url(https://lh3.googleusercontent.com/KaIN1NpF9cYCgTfKnDWIxfEw5oKDvOQTjqOUgbGDNWbgqyiD_ADoOMyCCWSIVVemrBifap19cwVwWX5DEbJPSboIQ8Q-r8Ev9ODAu0_lRA56nbLDyzjXuKOjJppeMG0iss3ZyB2eKQ=w2400);" href="#myModal">
							<div class="icon mb-4 d-flex align-items-center justify-content-center">
    						<span class="icon-search"></span>
    					</div>
						</a>
					</div>
					<div class="col-md-3 ftco-animate">
						<a data-target="#myModal3" data-toggle="modal" class="gallery img d-flex align-items-center" style="background-image: url(https://lh3.googleusercontent.com/DfjqT71ty9SyPnaFZMOHPErZ7udxSstumvOqFEjp6XUnuiGteduzAMm4fJ4vPQ-aQbGt_3DhQyp7GH7rLLSF4CfmfXCTg-mwE4iB9O5HshrWqMmmZuijkf5YFLg3HbMl7Zxi2hyiEQ=w2400);" href="#myModal">
							<div class="icon mb-4 d-flex align-items-center justify-content-center">
    						<span class="icon-search"></span>
    					</div>
						</a>
					</div>
					<div class="col-md-3 ftco-animate">
						<a data-target="#myModal4" data-toggle="modal" class="gallery img d-flex align-items-center" style="background-image: url(https://lh3.googleusercontent.com/IIwvSThradbXRNIifjD5KRPtqWpIFhzeilyCXB3XClCHnUfMD4X1yt5lJZ1lGlIJ_inoMA_T0ziIGV1rph0HSnwAMUTlWhs4PuHAPgOJfrhSu5C1i8GYuMqYcGUMn3mgrSJ9KsTFYw=w2400);" href="#myModal">
							<div class="icon mb-4 d-flex align-items-center justify-content-center">
    						<span class="icon-search"></span>
    					</div>
						</a>
					</div>
        </div>
    	</div>
        

        <div id="myModal" class="container-wrap modal ftco-animate">
       <img style="width:100%;height:100%;" class="modal-content" src="https://lh3.googleusercontent.com/6TJAzrVbd_c944E0Sz2zs9eD7oMyZsaalLCYpi5tttGkUj0feLEjJVL7dH7cFCzNnFvUMFKUaJPDOoDvTUHfPyZKyAul-US4FqzpE6AseZtDGABEAwbw8s_rOmZwOMsN378dWzEJYA=w2400">
            </div>
        <div id="myModal2" class="container-wrap modal ftco-animate">
       <img style="width:100%;height:100%;" class="modal-content" src="https://lh3.googleusercontent.com/KaIN1NpF9cYCgTfKnDWIxfEw5oKDvOQTjqOUgbGDNWbgqyiD_ADoOMyCCWSIVVemrBifap19cwVwWX5DEbJPSboIQ8Q-r8Ev9ODAu0_lRA56nbLDyzjXuKOjJppeMG0iss3ZyB2eKQ=w2400">
            </div>
        <div id="myModal3" class="container-wrap modal ftco-animate">
       <img style="width:100%;height:100%;" class="modal-content" src="https://lh3.googleusercontent.com/DfjqT71ty9SyPnaFZMOHPErZ7udxSstumvOqFEjp6XUnuiGteduzAMm4fJ4vPQ-aQbGt_3DhQyp7GH7rLLSF4CfmfXCTg-mwE4iB9O5HshrWqMmmZuijkf5YFLg3HbMl7Zxi2hyiEQ=w2400">
            </div>
        <div id="myModal4" class="container-wrap modal ftco-animate">
       <img style="width:100%;height:100%;" class="modal-content" src="https://lh3.googleusercontent.com/IIwvSThradbXRNIifjD5KRPtqWpIFhzeilyCXB3XClCHnUfMD4X1yt5lJZ1lGlIJ_inoMA_T0ziIGV1rph0HSnwAMUTlWhs4PuHAPgOJfrhSu5C1i8GYuMqYcGUMn3mgrSJ9KsTFYw=w2400">
            </div>
    </section>

    <section class="ftco-section">
        <div class="container col-md-10 heading-section ftco-animate text-center">
    <a href="ThuVien.aspx" class=" btn btn-white btn-outline-white p-3 px-xl-4 py-xl-3" style="width:200px;font-size:18px;">Xem thêm hình</a>
            </div>
        </section>
    <script>

    </script>
</asp:Content>
