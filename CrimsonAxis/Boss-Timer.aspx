<%@ Page Title="" Language="C#" MasterPageFile="~/Timer.Master" AutoEventWireup="true" CodeBehind="Boss-Timer.aspx.cs" Inherits="CrimsonAxis.Boss_Timer" %>
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
	          <li class="nav-item"><a href="ThuVien.aspx" class="nav-link">Thư viện</a></li>
              <li class="nav-item active"><a href="Boss-Timer.aspx" class="nav-link">World Boss</a></li>
	        </ul>
	      </div>
		  </div>
	  </nav>

    
    <form id="form1" runat="server">
        <section class="ftco-gallery ftco-section">
            <div class="container">
                <div class="row justify-content-center align-items-center">
                    <div class="col-md-7 heading-section ftco-animate text-center" style="margin-top:30px;">
                        <h2><span>Boss Tiếp theo</span></h2>
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
                                <div class="row justify-content-center">
                                    <asp:Image ID="AnhWorldBoss" CssClass="col-md-6" runat="server" />
                                    <asp:Image ID="AnhWorldBoss3" CssClass="col-md-6" runat="server"/>
                                </div>
                                <h1 class="row justify-content-center align-items-center">
                                    <asp:Label ID="BossName" CssClass="col-md-6" runat="server"/>
                                    <asp:Label CssClass="col-md-6" ID="BossName3" runat="server"/>
                                </h1>
                                <h1 style="font-size: 100px;"><asp:Label ID="Label1" runat="server" ></asp:Label></h1>
                                
                                <h2 style="margin-bottom: 30px"><span>Boss sau</span></h2>
                                
                                <div class="row justify-content-center align-items-center  col-md-12">
                                            <div class="row align-items-center  col-md-8">
                                            <asp:Image ID="AnhWorldBoss2" Style="height: 100%; width: 100%;" CssClass="col-md-6" runat="server" />
                                            <asp:Image ID="AnhWorldBoss4" Style="height: 100%; width: 100%" CssClass="col-md-6"  runat="server" />
                                        </div>
                                        <h4>
                                                <div class="col-md-12">
                                                <asp:Label ID="BossName2" runat="server"></asp:Label>
                                            </div>
                                            <div class="col-md-12">
                                                <asp:Label ID="BossName4" runat="server"></asp:Label>
                                            </div>
                                            <div class="col-md-12">
                                                <asp:Label ID="Label2" runat="server"></asp:Label>
                                            </div>
                                            </h4>
                                </div>
                                    
                                    
                            </ContentTemplate>
                        </asp:UpdatePanel>

                        <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick"></asp:Timer>
                    </div>
                </div>
            </div>
        </section>
    </form>

</asp:Content>
