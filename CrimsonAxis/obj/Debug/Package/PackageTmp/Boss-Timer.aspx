<%@ Page Title="" Language="C#" MasterPageFile="~/HeadFoot.Master" AutoEventWireup="true" CodeBehind="Boss-Timer.aspx.cs" Inherits="CrimsonAxis.Boss_Timer" %>
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
        <section class="ftco-gallery ftco-section" style="margin-top: 80px">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-7 heading-section ftco-animate text-center">
                        <h2><span>Boss Tiếp theo</span></h2>
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
                                <span><asp:Image ID="AnhWorldBoss" runat="server"/></span>
                                <h1><asp:Label ID="BossName" runat="server"/></h1>
                                <h1 style="font-size: 100px;"><asp:Label ID="Label1" runat="server" ></asp:Label></h1>
                                <div class="row justify-content-center align-items-center"><asp:Image ID="AnhWorldBoss2" style="height:25%; width:25%" runat="server"/><h4><div class="col-sm-6"><asp:Label ID="BossName2" runat="server" Text=""></asp:Label></div><div class="col-sm-6"><asp:Label ID="Label2" runat="server" Text=""></asp:Label></div></div></h4>
                            </ContentTemplate>
                        </asp:UpdatePanel>

                        <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick"></asp:Timer>
                    </div>
                </div>
            </div>
        </section>
    </form>

</asp:Content>
