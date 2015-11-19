<%@ Control Language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="DNNLINK" Src="~/Admin/Skins/DnnLink.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LINKTOMOBILE" Src="~/Admin/Skins/LinkToMobileSite.ascx" %>
<%@ Register TagPrefix="dnn" TagName="META" Src="~/Admin/Skins/Meta.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MENU" Src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="fortyfingers" TagName="STYLEHELPER" Src="~/DesktopModules/40Fingers/SkinObjects/StyleHelper/StyleHelper.ascx" %>

<dnn:META ID="META1" runat="server" Name="viewport" Content="width=device-width,initial-scale=1" />

<%--fortyfingers--%>
<fortyfingers:STYLEHELPER ID="STYLEHELPERBODYCLASS" runat="server" BodyClass="[BcName] page[BcId]" />
<fortyfingers:STYLEHELPER ID="REMOVEPORTALCSS" runat="server" RemoveCssFile="portal.css" IfUserMode="None,View" />
<fortyfingers:STYLEHELPER ID="REMOVEDEFAULTCSS" runat="server" RemoveCssFile="default.css" IfUrl="!Login,!Register,!UserProfile" IfUserMode="None" />
<fortyfingers:STYLEHELPER ID="STYLEHELPERADMIN" runat="server" IfRole="Administrators,SuperUsers" AddCssFile="[S]css/bootstrap-dnn-admin.css" />

<dnn:DnnJsInclude ID="customJS" runat="server" FilePath="js/scripts.js" PathNameAlias="SkinPath" AddTag="false" />

<div id="siteWrapper">
    <div class="container">
        <div class="row">
            <div class="col-md-6 pull-left">
                <dnn:LANGUAGE runat="server" id="LANGUAGE1" showMenu="False" showLinks="True" />
                <span class="brand visible-md-*">
                    <dnn:LOGO runat="server" id="dnnLOGO" />
                </span>
                <%--
                <span class="brand hidden-md hidden-lg">
                    <dnn:LOGO runat="server" id="dnnLOGOmobi" />
                </span>
                --%>
            </div>
            <div class="col-md-6 pull-right">
                <div class="row">
                    <ul class="list-inline list-unstyled pull-right">
                        <li>
                            <dnn:USER ID="dnnUser" runat="server" LegacyMode="false" />
                        </li>
                        <li>
                            <dnn:LOGIN ID="dnnLogin" CssClass="LoginLink" runat="server" LegacyMode="false" />
                        </li>
                    </ul>
                </div>
                <div class="row">
                    <ul class="list-inline list-unstyled pull-right link-inverse">
                        <li><a href="https://www.facebook.com/winwebconnect"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="https://www.youtube.com/channel/UCJIxbw0np_eIPuHfkA7-x_w"><i class="fa fa-youtube"></i></a></li>
                        <li><a href="https://www.linkedin.com/company/worldwide-information-network-win-?trk=top_nav_home"><i class="fa fa-linkedin"></i></a></li>
                    </ul>

                </div>
            </div>
        </div>
    </div>

    <nav class="navbar navbar-default">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#exCollapsingNavbar" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="fa fa-bars"></span>
            </button>
        </div>
        <div class="collapse navbar-collapse" id="exCollapsingNavbar">
            <div class="container">
                <dnn:MENU ID="bootstrapNav" MenuStyle="bootstrapNav" runat="server" />
            </div>
        </div>
    </nav>

    <div class="container">
        <div class="row row-eq-height">
            <div class="col-md-9">
                <div id="ContentPane" class="contentPane" runat="server" />
            </div>
            <div class="col-md-3 bg-primary">
                <div id="RightPane" class="contentPane" runat="server" />
            </div>
        </div>

        <footer>
            <div class="row-fluid">
                <div id="footerLeftOuterPane" class="span2 footerPane" runat="server"></div>
                <div id="footerLeftPane" class="span2 footerPane" runat="server"></div>
                <div id="footerCenterPane" class="span2 footerPane" runat="server"></div>
                <div id="footerRightPane" class="span2 footerPane" runat="server"></div>
                <div id="footerRightOuterPane" class="span2 offset2 footerPaneRight" runat="server"></div>
            </div>
            <div class="row-fluid">
                <hr class="span12" />
            </div>
            <div id="copyright" class="row-fluid">
                <div class="pull-right">
                    <dnn:LINKTOMOBILE ID="dnnLinkToMobile" runat="server" />
                    <dnn:TERMS ID="dnnTerms" runat="server" />
                    |
					    <dnn:PRIVACY ID="dnnPrivacy" runat="server" />
                </div>
                <dnn:COPYRIGHT ID="dnnCopyright" runat="server" CssClass="pull-left" />
            </div>
            <div class="row-fluid copyright-container">
                <span class="split"></span>
                <dnn:DNNLINK id="dnnLink" runat="server" CssClass="" Target="_blank" />
                <span class="split"></span>
            </div>
        </footer>
    </div>
</div>
<dnn:DnnJsInclude ID="dttg" runat="server" FilePath="js/doubletaptogo.min.js" PathNameAlias="SkinPath" AddTag="false" />
<script type="text/javascript">
    $(function () {
        $('#navdttg li:has(ul)').doubleTapToGo();
    });
</script>
