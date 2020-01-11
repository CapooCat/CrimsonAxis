<%@ Page Title="" Language="C#" MasterPageFile="~/Timer.Master" AutoEventWireup="true" CodeBehind="Boss-Timer.aspx.cs" Inherits="CrimsonAxis.Boss_Timer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" style="position: fixed;" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="Home.aspx">Crimson<small>Axis</small></a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item"><a href="http://crimsonaxis.somee.com/" class="nav-link">Trang chủ</a></li>
	          <li class="nav-item"><a href="ThuVien.aspx" class="nav-link">Thư viện</a></li>
              <li class="nav-item active"><a href="Boss-Timer.aspx" class="nav-link">World Boss</a></li>
	        </ul>
	      </div>
		  </div>
	  </nav>
    
    <section class="video-container">
        <div style="position: absolute; width: 100%; height: 100%; background-color: black; opacity: 0.5;"></div>
            <video style="min-width: 100%;min-height: 100%;top: 50%;left: 50%;" autoplay loop muted>
                <source src="https://lh3.googleusercontent.com/6dz4bBKHeq-hhxwEIqkP0_Y6o8um-jqxrTGhuXVGK3WmZnbS8swHV6XNU7n4zf3Bye4X-8epbZuCvpAEAm_-FOMCcKYS_Ncg7nV1kMFiOxK91cP9NooUblDiPRlKuSceLBz17VjWXA=m37" type="video/mp4">
            </video>
    </section>
        
    
    
    <form id="form1" runat="server">
        
        <section class="ftco-section" style="margin-top: 30px;">
            <div class="container">
                <div class="row justify-content-center align-items-center">
                    <div class="col-md-7 heading-section ftco-animate text-center">
                        <asp:Label ID="Store1" runat="server" style="display:none;"></asp:Label>
                        <asp:Label ID="Store2" runat="server" style="display:none;"></asp:Label>
                        <asp:Label ID="Store3" runat="server" style="display:none;"></asp:Label>
                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                        
                        <script type="text/javascript">
                            var prm = Sys.WebForms.PageRequestManager.getInstance();
                            prm.add_beginRequest(beginRequest);
                            function beginRequest() {
                                prm._scrollPosition = null;
                            }
                        </script>
                        
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                            
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                            </Triggers>

                            <ContentTemplate>
                                <h2><asp:Label ID="txt_BossTiepTheo" runat="server" Text=""></asp:Label></h2>
                                <div class="row justify-content-center align-items-center">
                                    <asp:Image ID="AnhWorldBoss" style="width: 50%; height: 50%" CssClass="col-md-6" runat="server" />
                                    <asp:Image ID="AnhWorldBoss3" style="width: 50%; height: 50%" CssClass="col-md-6" runat="server"/>
                                </div>
                                <h3 class="row justify-content-center align-items-center Main-Boss-Text">
                                    <asp:Label ID="BossName" CssClass="col-md-6"  style="Color: #fff;width: 50%; height: 50%" runat="server"/>
                                    <asp:Label CssClass="col-md-6" style="Color: #fff;width: 50%; height: 50%" ID="BossName3" runat="server"/>
                                </h3>
                                <h1 class="Timer-Text"><asp:Label ID="Label1" runat="server" ></asp:Label></h1>
                                <h2>
                                    <asp:Label ID="txt_BossSau" runat="server" Text=""></asp:Label>
                                </h2>
                                
                                <div class="row justify-content-center align-items-center col-md-12">
                                            <div class="row align-items-center justify-content-center col-md-12">
                                            <asp:Image ID="AnhWorldBoss2" style="width: 30%; height: 30%;" CssClass="col-md-4" runat="server" />
                                            <asp:Image ID="AnhWorldBoss4" style="width: 30%; height: 30%;" CssClass="col-md-4"  runat="server" />
                                        
                                        <h4 class="Next-Boss" >
                                                <div class="col-md-12">
                                                <asp:Label ID="BossName2" style="Color: #fff;"  runat="server"></asp:Label>
                                            </div>
                                            <div class="col-md-12">
                                                <asp:Label ID="BossName4"  style="Color: #fff;" runat="server"></asp:Label>
                                            </div>
                                            <div class="col-md-12">
                                                <asp:Label ID="Label2"  style="Color: #fff;"  runat="server"></asp:Label>
                                            </div>
                                            </h4>
                                                </div>
                                    
                                </div>
                                <script>
                                    var myVar = setInterval(myTimer, 1000);
                                    function myTimer() {
                                        var Time = document.getElementById('<%=Label1.ClientID%>').innerText;
                                        var Hour = parseInt(Time.slice(0, 2));
                                        var Min = parseInt(Time.slice(3, 5));
                                        var Second = parseInt(Time.slice(6, 8));
                                        if (Hour == 0 && Min ==14 && 55 < Second <= 59) {
                                            var audio = new Audio('play.mp3');
                                            audio.play();
                                            clearInterval(myVar);
                                        }
                                    }
                                    
                                </script>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick"></asp:Timer>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section ftco-cart">
			<div class="container">
                <div class="row justify-content-center mb-5 pb-3">
                    <div class="col-md-7 heading-section ftco-animate text-center">
                        <span class="subheading" style="margin-bottom: 5px">Crimson Axis</span>
                        <h2 class="mb-4">Lịch boss</h2>
                        <img style="max-width: 300px;" src="https://lh3.googleusercontent.com/hRLkDL15CbsrAzc5T9UV9E6tVM3SA0SLYb2xn6B0fKFX8rr4-hCi0PLbkNgsYfxEWl9z0a5Rq5WTOAk8VbqtMvFcM894mo8OyTcfNY_RIwvN7QwSIYMSzoEOhXPjCvYKquc74iE7=w2400">
                    </div>
                </div>
				<div class="row">
    			<div class="ftco-animate disable-scrollbars">
	    				<table class="table">
						    <thead class="thead-primary">
						      <tr class="text-center">
                                <th>Thứ ngày</th>
						        <th>00:30 (12:30 AM)</th>
						        <th>06:00 (06:00 AM)</th>
						        <th>10:00 (10:00 AM)</th>
                                <th>14:00 (02:00 PM)</th>
                                <th>15:00 (03:00 PM)</th>
                                <th>19:00 (7:00 PM)</th>
                                <th>23:00 (11:00 PM)</th>
						      </tr>
						    </thead>
						    <tbody>
                            <asp:Repeater ID="rpt_LichBoss" runat="server">
                                <ItemTemplate>
                            <tr class="text-center">
                                <td class="total"><h6><asp:Label ID="txt_Thu" style="Color: #fff;" CssClass="Thu" runat="server" Text='<%# Eval("Thu") %>'></asp:Label></h6></td>
                                <td class="total"><h6><asp:Label ID="txt_BossTime1" style="Color: #fff;" runat="server" Text='<%# Eval("BossTime1") %>'></asp:Label></h6></td>
                                <td class="total"><h6><asp:Label ID="txt_BossTime2" style="Color: #fff;" runat="server" Text='<%# Eval("BossTime2") %>'></asp:Label></h6></td>
                                <td class="total"><h6><asp:Label ID="txt_BossTime3" style="Color: #fff;" runat="server" Text='<%# Eval("BossTime3") %>'></asp:Label></h6></td>
                                <td class="total"><h6><asp:Label ID="txt_BossTime4" style="Color: #fff;" runat="server" Text='<%# Eval("BossTime4") %>'></asp:Label></h6></td>
                                <td class="total"><h6><asp:Label ID="txt_BossTime5" style="Color: #fff;" runat="server" Text='<%# Eval("BossTime5") %>'></asp:Label></h6></td>
                                <td class="total"><h6><asp:Label ID="txt_BossTime6" style="Color: #fff;" runat="server" Text='<%# Eval("BossTime6") %>'></asp:Label></h6></td>
                                <td class="total"><h6><asp:Label ID="txt_BossTime7" style="Color: #fff;" runat="server" Text='<%# Eval("BossTime7") %>'></asp:Label></h6></td>
                            </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                </tbody>
                </table>
                </div>
                </div>
			</div>    
		</section>
    </form>
</asp:Content>
