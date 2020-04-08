<%@ Page Title="" Language="C#" MasterPageFile="~/HeadFoot.Master" AutoEventWireup="true" CodeBehind="CalculatorEXP.aspx.cs" Inherits="CrimsonAxis.Home" %>
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
	          <li class="nav-item"><a href="http://crimsonaxis.somee.com/" class="nav-link">Trang chủ</a></li>
	          <li class="nav-item"><a href="ThuVien.aspx" class="nav-link">Thư viện</a></li>
              <li class="nav-item"><a href="Boss-Timer.aspx" class="nav-link">World Boss</a></li>
              <li class="nav-item active dropdown">
                    <a class="nav-link dropdown-toggle" id="dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Tools</a>
                    <div class="dropdown-menu" aria-labelledby="dropdown">
                        <a class="dropdown-item active" href="CalculatorEXP.aspx">Life Skill EXP</a>
                    </div>
                </li>
	        </ul>
	      </div>
		  </div>
	  </nav>
    <section class="ftco-menu ftco-section" style="margin-top: 40px;">
        <div class="container">
            <div class="row justify-content-center mb-5 pb-3">
                <div class="col-md-7 heading-section ftco-animate text-center">
                    <span class="subheading" style="margin-bottom: 5px">Crimson Axis</span>
                    <h2 class="mb-4">Life Skill EXP</h2>
                    <img class="mb-4" style="max-width: 300px;" src="https://lh3.googleusercontent.com/hRLkDL15CbsrAzc5T9UV9E6tVM3SA0SLYb2xn6B0fKFX8rr4-hCi0PLbkNgsYfxEWl9z0a5Rq5WTOAk8VbqtMvFcM894mo8OyTcfNY_RIwvN7QwSIYMSzoEOhXPjCvYKquc74iE7=w2400">
                </div>
            </div>
            <div class=" col-md-12 nav-link-wrap mb-5">
                <div class="nav ftco-animate nav-pills justify-content-center" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                    <a class="nav-link active" id="v-pills-0-tab" data-toggle="pill" href="#v-pills-0" role="tab" aria-controls="v-pills-0" aria-selected="true">Processing</a>

                    <a class="nav-link" id="v-pills-1-tab" data-toggle="pill" href="#v-pills-1" role="tab" aria-controls="v-pills-1" aria-selected="false">Cooking</a>
                </div>
            </div>

            <%--Processing--%>
            <div class="tab-content ftco-animate" id="v-pills-tabContent">
                <div class="tab-pane fade show active" id="v-pills-0" role="tabpanel" aria-labelledby="v-pills-0-tab">
                    <div class=" mt-5 row d-flex">
                        <div class="col-md-6 d-flex">
                            <div class="cart-detail cart-total ftco-bg-dark p-md-4">
                                <h3 class="billing-heading mb-4">Kết quả</h3>
                                <p class="d-flex">
                                    <span>EXP cần thêm</span>
                                    <span>0</span>
                                </p>
                                <p class="d-flex">
                                    <span>EXP / 1 lần process</span>
                                    <span>0</span>
                                </p>
                                <p class="d-flex">
                                    <span>Số lần cần process</span>
                                    <span>0</span>
                                </p>
                                <p class="d-flex">
                                    <span>Số nguyên liệu yêu cầu</span>
                                    <span>0</span>
                                </p>
                                <hr>
                                <h3 class="billing-heading mb-4">Nguyên liệu giàu EXP nên dùng</h3>
                                <p class="d-flex">
                                    <span>Cotton Yarn (1000 EXP)</span>
                                    <span>Flax Thread (1000 EXP)</span>
                                </p>
                                <p class="d-flex">
                                    <span>Cotton Fabric (1000 EXP)</span>
                                    <span>Flax Fabric (1000 EXP)</span>
                                </p>
                            </div>

                        </div>
                        <div class="col-md-6 billing-form ftco-bg-dark p-3 p-md-4">
                            <h3 class="mb-4 billing-heading">Processing</h3>
                            <div class="row align-items-end">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="country">Level hiện tại</label>
                                        <div class="select-wrap">
                                            <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                                            <select name="" id="" class="form-control">
                                                <option value="">Artisan 1</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="country">Level mong muốn</label>
                                        <div class="select-wrap">
                                            <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                                            <select name="" id="" class="form-control">
                                                <option value="">Artisan 1</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>



                                <div class="w-100"></div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="country">Loại Process</label>
                                        <div class="select-wrap">
                                            <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                                            <select name="" id="" class="form-control">
                                                <option value="">Heating</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <label for="country">Nguyên liệu Process</label>
                                        <div class="select-wrap">
                                            <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                                            <select name="" id="" class="form-control">
                                                <option value="">Zinc ore</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>



                                <div class="w-100"></div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="streetaddress">Phần trăm EXP hiện tại (%)</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="streetaddress">Life Skill EXP Buff (%)</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-12" style="text-align: center;">
                                    <p><a href="#" class="btn btn-primary btn-outline-primary py-3 px-4">Tính toán</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>



                <%--Cooking--%>
                <div class="tab-pane fade" id="v-pills-1" role="tabpanel" aria-labelledby="v-pills-1-tab">
                    <div class=" mt-5 row d-flex">
                        <div class="col-md-6 d-flex">
                            <div class="cart-detail cart-total ftco-bg-dark p-md-4">
                                <h3 class="billing-heading mb-4">Kết quả</h3>
                                <p class="d-flex">
                                    <span>EXP cần thêm</span>
                                    <span>0</span>
                                </p>
                                <p class="d-flex">
                                    <span>EXP / 1 lần Cook</span>
                                    <span>0</span>
                                </p>
                                <p class="d-flex">
                                    <span>Số lần cần Cook</span>
                                    <span>0</span>
                                </p>
                                <p class="d-flex">
                                    <span>Thời gian cook ước tính</span>
                                    <span>0</span>
                                </p>
                                <p class="d-flex">
                                    <span>Số nguyên liệu yêu cầu</span>
                                    <span>0</span>
                                </p>
                                <hr>
                                <h3 class="billing-heading mb-4">Món ăn giàu EXP nên dùng</h3>
                                <p class="d-flex">
                                    <span>Beer (400 EXP)</span>
                                    <span>Date Palm Wine (1000 EXP)</span>
                                </p>
                                <p class="d-flex">
                                    <span>Vineger (400 EXP)</span>
                                    <span>Essence of Liquor (400 EXP)</span>
                                </p>
                                <p class="d-flex">
                                    <span>Grilled Bird Meat (400 EXP)</span>
                                </p>
                                
                            </div>

                        </div>
                        <div class="col-md-6 billing-form ftco-bg-dark p-3 p-md-4">
                            <h3 class="mb-4 billing-heading">Cooking</h3>
                            <div class="row align-items-end">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="country">Level hiện tại</label>
                                        <div class="select-wrap">
                                            <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                                            <select name="" id="" class="form-control">
                                                <option value="">Artisan 1</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="country">Level mong muốn</label>
                                        <div class="select-wrap">
                                            <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                                            <select name="" id="" class="form-control">
                                                <option value="">Artisan 1</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>



                                <div class="w-100"></div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="country">Món ăn</label>
                                        <div class="select-wrap">
                                            <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                                            <select name="" id="" class="form-control">
                                                <option value="">Stir-Fried Meat</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>



                                <div class="w-100"></div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="streetaddress">Phần trăm EXP hiện tại (%)</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="streetaddress">Life Skill EXP Buff (%)</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>

                                <div class="w-100"></div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="streetaddress">Thời gian 1 lần cook (giây)</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="streetaddress">Mastery (chỉ số)</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>


                                <div class="col-md-12" style="text-align: center;">
                                    <p><a href="#" class="btn btn-primary btn-outline-primary py-3 px-4">Tính toán</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>





        </div>
    </section>
</asp:Content>
