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
    
    <section id="Timer" class="video-container">
        <div style="position: absolute; width: 100%; height: 100%; background-color: black; opacity: 0.5;"></div>
            <img src="https://lh3.googleusercontent.com/UkWLBD6q1nTRe6ZWVnIzJOdJ5lT9-7FCSdHjFt4hVnQHHqtw1vejjIH_Z76Scy5DqIaWJYNT3bA3rneS8Bc4389xTbSQLm4qC9IPGfnOd2saDHsjcxIlFJefX97_uGoFpOPq0-bX2A=w2400">
    </section>
        
    
    
        
        <section class="ftco-section" style="margin-top: 30px;">
            <div class="container">
                <div class="row justify-content-center align-items-center">
                    <div class="col-md-7 heading-section ftco-animate text-center">
                        <asp:Label ID="Store1" runat="server" style="display:none;"></asp:Label>
                        <asp:Label ID="Store2" runat="server" style="display:none;"></asp:Label>
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
                                <h2><asp:Label ID="txt_BossTiepTheo" runat="server" Text="BOSS TIẾP THEO (SEA)"></asp:Label></h2>
                                <div class="row justify-content-center align-items-center">
                                    <asp:Image ID="AnhWorldBoss" ImageUrl='images/empty.png' style="width: 50%; height: 50%" CssClass="col-md-6" runat="server" />
                                    <asp:Image ID="AnhWorldBoss3" ImageUrl='images/empty.png' style="width: 50%; height: 50%" CssClass="col-md-6" runat="server"/>
                                </div>
                                <h3 class="row justify-content-center align-items-center Main-Boss-Text">
                                    <asp:Label ID="BossName" CssClass="col-md-6" style="Color: #fff;width: 50%; height: 50%" Text="..." runat="server"/>
                                    <asp:Label CssClass="col-md-6" style="Color: #fff;width: 50%; height: 50%" ID="BossName3" Text="..." runat="server"/>
                                </h3>
                                <h1 class="Timer-Text"><asp:Label ID="Label1" style="Color: #fff;" runat="server" Text="..."></asp:Label></h1>
                                <h2>
                                    <asp:Label ID="txt_BossSau" runat="server" Text="BOSS SAU"></asp:Label>
                                </h2>
                                
                                <div class="row justify-content-center align-items-center col-md-12">
                                            <div class="row align-items-center justify-content-center col-md-12">
                                            <asp:Image ID="AnhWorldBoss2" ImageUrl='images/empty.png'  style="width: 30%; height: 30%;" CssClass="col-md-4" runat="server" />
                                            <asp:Image ID="AnhWorldBoss4" ImageUrl='images/empty.png' style="width: 30%; height: 30%;" CssClass="col-md-4"  runat="server" />
                                        <h4 class="Next-Boss">
                                                <div class="col-md-12">
                                                <asp:Label ID="BossName2" style="Color: #fff;" Text="..."  runat="server"></asp:Label>
                                            </div>
                                            <div class="col-md-12">
                                                <asp:Label ID="BossName4"  style="Color: #fff;" Text="..." runat="server"></asp:Label>
                                            </div>
                                            <div class="col-md-12">
                                                <asp:Label ID="Label2"  style="Color: #fff;" Text="..."  runat="server"></asp:Label>
                                            </div>
                                            </h4>
                                                </div>
                                    
                                </div>
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
                        <img id="Calendar" style="max-width: 300px;" src="https://lh3.googleusercontent.com/hRLkDL15CbsrAzc5T9UV9E6tVM3SA0SLYb2xn6B0fKFX8rr4-hCi0PLbkNgsYfxEWl9z0a5Rq5WTOAk8VbqtMvFcM894mo8OyTcfNY_RIwvN7QwSIYMSzoEOhXPjCvYKquc74iE7=w2400">
                    </div>
                </div>
                <h2 class="row justify-content-center pb-3" style="color: #dc3545">Thời gian VN hiện tại</h2>
                <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                </Triggers>
            <ContentTemplate>
                <h2 class="row justify-content-center"><asp:Label ID="TimeNow" runat="server" style="color: #fff" Text="..."></asp:Label></h2>
                <h2 class="row justify-content-center mb-5"><asp:Label ID="TimeNow24h" runat="server" style="color: #fff" Text="..."></asp:Label></h2>
            </ContentTemplate>
            </asp:UpdatePanel>
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
        <section id="Setting" class="ftco-section">
    	<div class="container">
        <div class="row">
        	<div class="col-md-6 mb-5 pb-3">
        		<h3 class="mb-5 heading-pricing ftco-animate">Cài Đặt</h3>
        		<div class="pricing-entry d-flex ftco-animate">
	        			<div class="d-flex text align-items-center">
	        				<h3>Thông báo khi còn 00:30:00 <%--<asp:Button ID="Button1" runat="server" OnClientClick="play1(); return false;" CssClass="MyButton" Text="Scooby Doo" />--%></h3>
	        				<label class="SettingCheck"><asp:CheckBox ID="chk_30min" runat="server" Checked="true" OnCheckedChanged="Save" /><span class="Checkmark"></span></label>
	        			</div>
        		</div>
                <div class="pricing-entry d-flex ftco-animate">
	        			<div class="d-flex text align-items-center">
	        				<h3>Thông báo khi còn 00:15:00 <%--<asp:Button ID="Button2" runat="server" OnClientClick="play2(); return false;" CssClass="MyButton" Text="Ok let's go" />--%></h3>
	        				<label class="SettingCheck"><asp:CheckBox ID="chk_15min" OnCheckedChanged="Save" Checked="true" runat="server" /><span class="Checkmark"></span></label>
	        			</div>
        		</div>
                <div class="pricing-entry d-flex ftco-animate">
	        			<div class="d-flex text align-items-center">
	        				<h3>Thông báo khi còn 00:05:00 <%--<asp:Button ID="Button3" runat="server" OnClientClick="play3(); return false;" CssClass="MyButton" Text="Come on get happy" />--%></h3>
	        				<label class="SettingCheck"><asp:CheckBox ID="chk_05min" OnCheckedChanged="Save" Checked="true" runat="server" /><span class="Checkmark"></span></label>
	        			</div>
        		</div>
                <div class="pricing-entry d-flex ftco-animate">
	        			<div class="d-flex text align-items-center">
	        				<h3>Thông báo khi còn 00:01:00 <%--<asp:Button ID="Button4" runat="server" OnClientClick="play4(); return false;" CssClass="MyButton" Text="Clock tick" />--%></h3>
	        				<label class="SettingCheck"><asp:CheckBox ID="chk_01min" OnCheckedChanged="Save" Checked="true" runat="server" /><span class="Checkmark"></span></label>
	        			</div>
        		</div>
                <div class="pricing-entry d-flex ftco-animate">
	        			<div class="d-flex text align-items-center">
	        				<h3>Thông báo khi LIVE <%--<asp:Button ID="Button5" OnClientClick="play5(); return false;" runat="server" CssClass="MyButton" Text="War horn" />--%></h3>
	        				<label class="SettingCheck"><asp:CheckBox ID="chk_live" OnCheckedChanged="Save" Checked="true" runat="server" /><span class="Checkmark"></span></label>
	        			</div>
        		</div>
                <div class="pricing-entry d-flex ftco-animate">
	        			<div class="d-flex text align-items-center">
	        				<h3>Âm lượng</h3>
                             <div class="slidecontainer">
	        				<input type="range" min="0" max="100" value="50" class="slider" id="Volume"> </div>
	        			</div>
        		</div>
        	</div>

        	<div class="col-md-6 mb-5 pb-3">
        		<h3 class="mb-5 heading-pricing ftco-animate">Cài đặt Boss</h3>
        		<div class="pricing-entry d-flex ftco-animate">
	        			<div class="d-flex text align-items-center">
	        				<h3>Thông báo khi có Kzarka</h3>
	        				<label class="SettingCheck"><asp:CheckBox ID="chk_Kzarka" OnCheckedChanged="Save" Checked="true" runat="server" /><span class="Checkmark"></span></label>
	        			</div>
	        		</div>
                <div class="pricing-entry d-flex ftco-animate">
	        			<div class="d-flex text align-items-center">
	        				<h3>Thông báo khi có Garmoth</h3>
	        				<label class="SettingCheck"><asp:CheckBox ID="chk_Garmoth" OnCheckedChanged="Save" Checked="true" runat="server" /><span class="Checkmark"></span></label>
	        			</div>
	        		</div>
                <div class="pricing-entry d-flex ftco-animate">
	        			<div class="d-flex text align-items-center">
	        				<h3>Thông báo khi có Nouver</h3>
	        				<label class="SettingCheck"><asp:CheckBox ID="chk_Nouver" OnCheckedChanged="Save" Checked="true" runat="server" /><span class="Checkmark"></span></label>
	        			</div>
	        		</div>
                <div class="pricing-entry d-flex ftco-animate">
	        			<div class="d-flex text align-items-center">
	        				<h3>Thông báo khi có Karanda</h3>
	        				<label class="SettingCheck"><asp:CheckBox ID="chk_Karanda" OnCheckedChanged="Save" Checked="true" runat="server" /><span class="Checkmark"></span></label>
	        			</div>
	        		</div>
                <div class="pricing-entry d-flex ftco-animate">
	        			<div class="d-flex text align-items-center">
	        				<h3>Thông báo khi có Offin</h3>
	        				<label class="SettingCheck"><asp:CheckBox ID="chk_Offin" OnCheckedChanged="Save"  Checked="true" runat="server" /><span class="Checkmark"></span></label>
	        			</div>
	        		</div>
                <div class="pricing-entry d-flex ftco-animate">
	        			<div class="d-flex text align-items-center">
	        				<h3>Thông báo khi có Kutum</h3>
	        				<label class="SettingCheck"><asp:CheckBox ID="chk_Kutum" OnCheckedChanged="Save" Checked="true" runat="server" /><span class="Checkmark"></span></label>
	        			</div>
	        		</div>
                <div class="pricing-entry d-flex ftco-animate">
	        			<div class="d-flex text align-items-center">
	        				<h3>Thông báo khi có Quint & Muraka</h3>
	        				<label class="SettingCheck"><asp:CheckBox ID="chk_Quint_Muraka" OnCheckedChanged="Save" Checked="true" runat="server" /><span class="Checkmark"></span></label>
	        			</div>
	        		</div>
                <div class="pricing-entry d-flex ftco-animate">
	        			<div class="d-flex text align-items-center">
	        				<h3>Thông báo khi có Vell</h3>
	        				<label class="SettingCheck"><asp:CheckBox ID="chk_Vell" OnCheckedChanged="Save" Checked="true" runat="server" /><span class="Checkmark"></span></label>
	        			</div>
	        		</div>
        	</div>
        </div>
    	</div>
    </section>

      
    <script>
        function getCookie(cname) {
            var name = cname + "=";
            var decodedCookie = decodeURIComponent(document.cookie);
            var ca = decodedCookie.split(';');
            for (var i = 0; i < ca.length; i++) {
                var c = ca[i];
                while (c.charAt(0) == ' ') {
                    c = c.substring(1);
                }
                if (c.indexOf(name) == 0) {
                    return c.substring(name.length, c.length);
                }
            }
            return "";
        }
        var j = 0;
        var playlist = new Array();

        var Skip = false;
        var audio = new Audio('Hello.mp3');
        var audio2 = new Audio('Hello.mp3');
        var AudioVolume = document.getElementById("Volume");
        var Cookie = getCookie("Volume");
        if(Cookie != "")
        {
            AudioVolume.value = Cookie;
        }
        var ConvertVolume = AudioVolume.value / 100;
        AudioVolume.oninput = function () {
            ConvertVolume = AudioVolume.value / 100;
            audio.volume = ConvertVolume;
            var expires = new Date();
            expires.setTime(expires.getTime() + 31536000000);
            document.cookie = "Volume" + "=" + (ConvertVolume * 100) + ";expires=" + expires.toUTCString(); + ";path=/";
        }
        AudioVolume.onchange = function () {
            audio.pause();
            audio = new Audio('Hello.mp3');
            audio.volume = ConvertVolume;
            audio.play();
        }

        function MIN30(a) {
            if (a == "1") {
                audio.addEventListener('ended', function () {
                    audio2 = new Audio('30min.mp3');
                    audio2.play();
                })
            } else {
                audio2 = new Audio('30min.mp3');
            }
        }
        function MIN15(a) {
            if (a == "1") {
                audio.addEventListener('ended', function () {
                    audio2 = new Audio('15min.mp3');
                    audio2.play();
                })
            } else {
                audio2 = new Audio('15min.mp3');
            }
        }
        function MIN5(a) {
            if (a == "1") {
                audio.addEventListener('ended', function () {
                    audio2 = new Audio('5min.mp3');
                    audio2.play();
                })
            } else {
                audio2 = new Audio('5min.mp3');
            }
        }
        function MIN1(a) {
            if (a == "1") {
                audio.addEventListener('ended', function () {
                    audio2 = new Audio('1min.mp3');
                    audio2.play();
                })
            } else {
                audio2 = new Audio('1min.mp3');
            }
        }
        function SUMMON(a) {
            if (a == "1") {
                audio.addEventListener('ended', function () {
                    audio2 = new Audio('Summoning.mp3');
                    audio2.play();
                })
            } else {
                audio2 = new Audio('Summoning.mp3');
            }
        }

        //Kzarka
        function Kzarka() {
            if (!audio.paused) {
                audio.addEventListener('ended', function () {
                    audio = new Audio('Kzarka.mp3');
                    audio.volume = ConvertVolume;
                    audio.play();
                    audio.addEventListener('ended', function () {
                        audio2.volume = ConvertVolume;
                        audio2.play();
                    })
                })
            }
            else {
                audio = new Audio('Kzarka.mp3');
                audio.volume = ConvertVolume;
                audio.play();
            }
        }

        //Nouver
        function Nouver() {
            if (!audio.paused) {
                audio.addEventListener('ended', function () {
                    audio = new Audio('Nouver.mp3');
                    audio.volume = ConvertVolume;
                    audio.play();
                    audio.addEventListener('ended', function () {
                        audio2.volume = ConvertVolume;
                        audio2.play();
                    })
                })
            }
            else {
                audio = new Audio('Nouver.mp3');
                audio.volume = ConvertVolume;
                audio.play();
            }
        }

        //Kutum
        function Kutum() {
            if (!audio.paused) {
                audio.addEventListener('ended', function () {
                    audio = new Audio('Kutum.mp3');
                    audio.volume = ConvertVolume;
                    audio.play();
                    audio.addEventListener('ended', function () {
                        audio2.volume = ConvertVolume;
                        audio2.play();
                    })
                })
            }
            else {
                audio = new Audio('Kutum.mp3');
                audio.volume = ConvertVolume;
                audio.play();
            }
        }

        //Garmoth
        function Garmoth() {
            if (!audio.paused) {
                audio.addEventListener('ended', function () {
                    audio = new Audio('Garmoth.mp3');
                    audio.volume = ConvertVolume;
                    audio.play();
                    audio.addEventListener('ended', function () {
                        audio2.volume = ConvertVolume;
                        audio2.play();
                    })
                })
            }
            else {
                audio = new Audio('Garmoth.mp3');
                audio.volume = ConvertVolume;
                audio.play();
            }
        }

        //Karanda
        function Karanda() {
            if (!audio.paused) {
                audio.addEventListener('ended', function () {
                    audio = new Audio('Karanda.mp3');
                    audio.volume = ConvertVolume;
                    audio.play();
                    audio.addEventListener('ended', function () {
                        audio2.volume = ConvertVolume;
                        audio2.play();
                    })
                })
            }
            else {
                audio = new Audio('Karanda.mp3');
                audio.volume = ConvertVolume;
                audio.play();
            }
        }

        //Offin
        function Offin() {
            if (!audio.paused) {
                audio.addEventListener('ended', function () {
                    audio = new Audio('Offin.mp3');
                    audio.volume = ConvertVolume;
                    audio.play();
                    audio.addEventListener('ended', function () {
                        audio2.volume = ConvertVolume;
                        audio2.play();
                    })
                })
            }
            else {
                audio = new Audio('Offin.mp3');
                audio.volume = ConvertVolume;
                audio.play();
            }
        }

        //Vell
        function Vell() {
            if (!audio.paused) {
                audio.addEventListener('ended', function () {
                    audio = new Audio('Vell.mp3');
                    audio.volume = ConvertVolume;
                    audio.play();
                    audio.addEventListener('ended', function () {
                        audio2.volume = ConvertVolume;
                        audio2.play();
                    })
                })
            }
            else {
                audio = new Audio('Vell.mp3');
                audio.volume = ConvertVolume;
                audio.play();
            }
        }

        //Muraka
        function Muraka() {
            if (!audio.paused) {
                audio.addEventListener('ended', function () {
                    audio = new Audio('Muraka.mp3');
                    audio.volume = ConvertVolume;
                    audio.play();
                    audio.addEventListener('ended', function () {
                        audio2.volume = ConvertVolume;
                        audio2.play();
                    })
                })
            }
            else {
                audio = new Audio('Muraka.mp3');
                audio.volume = ConvertVolume;
                audio.play();
            }
        }

        //Quint
        function Quint() {
            if (!audio.paused) {
                audio.addEventListener('ended', function () {
                    audio = new Audio('Quint.mp3');
                    audio.volume = ConvertVolume;
                    audio.play();
                    audio.addEventListener('ended', function () {
                        audio2.volume = ConvertVolume;
                        audio2.play();
                    })
                })
            }
            else {
                audio = new Audio('Quint.mp3');
                audio.volume = ConvertVolume;
                audio.play();
            }
        }
        
    </script>
    
    <div class="sidenav" style="left: 0;padding-left: 25px;">
        <div style="padding-bottom: 8px;">
            <asp:Label ID="Imperial_Text" runat="server" Style="width: 200px; height: 70px;" CssClass="BoxedText ftco-animate px-xl-4">Imperial Delivery
                <div>
                    <asp:UpdatePanel ID="Life1" runat="server" UpdateMode="Conditional">
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                        </Triggers>

                        <ContentTemplate>
                            <asp:Label Style="color: #fff;" ID="Imperial" runat="server" Text="00:00:00"></asp:Label>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </asp:Label>
        </div>
        <div style="padding-bottom: 8px;">
            <asp:Label ID="ImperialTrade_Text" runat="server" Style="width: 200px; height: 70px;" CssClass="BoxedText ftco-animate px-xl-4">Imperial Trade
                <div>
                    <asp:UpdatePanel ID="Life2" runat="server" UpdateMode="Conditional">
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                        </Triggers>

                        <ContentTemplate>
                            <asp:Label Style="color: #fff;" ID="ImperialTrade" runat="server" Text="00:00:00"></asp:Label>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </asp:Label>

           
        </div>
        <div style="padding-bottom: 8px;">
            <asp:Label ID="Bartering_Text" runat="server" Style="width: 200px; height: 70px;" CssClass="BoxedText ftco-animate px-xl-4">Bartering
                <div>
                    <asp:UpdatePanel ID="Life3" runat="server" UpdateMode="Conditional">
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                        </Triggers>

                        <ContentTemplate>
                            <asp:Label Style="color: #fff;" ID="Bartering" runat="server" Text="00:00:00"></asp:Label>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </asp:Label>
        </div>
        <div style="padding-bottom: 8px;">
            <asp:Label ID="Night_Text" runat="server" Style="width: 200px;; height: 70px;" CssClass="BoxedText ftco-animate px-xl-4">Đêm bắt đầu vào
                <div>
                    <asp:UpdatePanel ID="Life4" runat="server" UpdateMode="Conditional">
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                        </Triggers>

                        <ContentTemplate>
                            <asp:Label Style="color: #fff;" ID="Night" runat="server" Text="00:00:00"></asp:Label>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </asp:Label>
        </div>
            
    </div>
    
    <div class="sidenav" style="right: 25px;padding-right: 25px;">
        <div style="padding-bottom: 8px;">
            <button onclick="location.href='#Timer';return false" style="width: 70px; height: 70px;" class="btn btn-primary ftco-animate icon-clock-o "></button>
        </div>
        <div style="padding-bottom: 8px;">
            <button onclick="location.href='#Calendar';return false" style="width: 70px; height: 70px;" class="btn btn-primary ftco-animate icon-calendar"></button>
        </div>
        <div style="padding-bottom: 8px;">
            <button onclick="location.href='#Setting';return false" style="width: 70px; height: 70px;" class="btn btn-primary ftco-animate icon-settings "></button>
        </div>
    </div>
    
</asp:Content>
