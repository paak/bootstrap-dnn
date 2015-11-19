<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="CONTROLPANEL" Src="~/Admin/Skins/controlpanel.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="JQUERY" Src="~/Admin/Skins/jQuery.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LEFTMENU" Src="~/Admin/Skins/LeftMenu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LINKS" Src="~/Admin/Skins/Links.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MENU" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="META" Src="~/Admin/Skins/Meta.ascx" %>
<%@ Register TagPrefix="dnn" TagName="NAV" Src="~/Admin/Skins/Nav.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="STYLES" Src="~/Admin/Skins/Styles.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TEXT" Src="~/Admin/Skins/Text.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.DDRMenu.TemplateEngine" Assembly="DotNetNuke.Web.DDRMenu" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="fortyfingers" TagName="STYLEHELPER" Src="~/DesktopModules/40Fingers/SkinObjects/StyleHelper/StyleHelper.ascx" %>

<dnn:JQUERY ID="dnnjQuery" jQueryUI="true" runat="server" />

<%--viewport--%>
<dnn:META runat="server" Name="viewport" Content="width=device-width,initial-scale=1" />

<%--fortyfingers--%>
<fortyfingers:STYLEHELPER ID="STYLEHELPERBODYCLASS" runat="server" BodyClass="[BcName] page[BcId]" />
<fortyfingers:STYLEHELPER ID="REMOVEPORTALCSS" runat="server" RemoveCssFile="portal.css" IfUserMode="None,View" />
<fortyfingers:STYLEHELPER ID="REMOVEDEFAULTCSS" runat="server" RemoveCssFile="default.css" IfUrl="!Login,!Register,!UserProfile" IfUserMode="None" />
<fortyfingers:STYLEHELPER ID="STYLEHELPERADMIN" runat="server" IfRole="Administrators,SuperUsers" AddCssFile="[S]css/bootstrap-dnn-admin.css" />

<%--IE--%>
<fortyfingers:STYLEHELPER ID="IE8HTML" runat="server" IfBrowser="IE<9" AddJsFile="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js" />
<fortyfingers:STYLEHELPER ID="IE8CSS3Media" runat="server" IfBrowser="IE<9" AddJsFile="https://oss.maxcdn.com/respond/1.4.2/respond.min.js" />

<dnn:DnnJsInclude runat="server" FilePath="js/skin.js" PathNameAlias="SkinPath" ForceProvider="DnnFormBottomProvider" Priority="10" />