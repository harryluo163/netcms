<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="qualification.aspx.cs" Inherits="DTcms.Web.aspx.main.qualification" %>

<%@ Register Src="~/ascx/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/ascx/footer.ascx" TagPrefix="uc1" TagName="footer" %>




<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<meta name="keywords" content="<%=model.seo_keywords %>">
    	<meta name="description" content="<%=model.seo_description %>">
		<title><%=model.title %>_<%=config.webname %></title>
		<link rel="icon" href="" type="image/x-icon">
		<link rel="stylesheet" type="text/css" href="/css/common.css"/>
		<link rel="stylesheet" type="text/css" href="/css/aboutus.css"/>
	</head>
	<body>
        <uc1:header runat="server" ID="header" />
		<div id="content" class="clearfix">
			<ul class="aboutNav">
				<li><a href="/aboutus.html">公司介绍</a></li>
				<li><a href="/qualification.html" class="active">公司资质</a></li>
				<li><a href="/history.html">发展历程</a></li>
				<li><a href="/partner.html">合作伙伴</a></li>
				<li><a href="/idea.html">久佳理念</a></li>
				<li><a href="/equipment.html">生产车间及设备</a></li>
			</ul>
			<div id="aboutCont">
				<h2>公司资质&nbsp;&nbsp;Company qualification</h2>
				<div class="top_slider" id="qualBanner">
					<div class="ts_inner" node-type="slider">
						<ul class="slider_list" >
                            <asp:Repeater runat="server" ID="RepBindList"><ItemTemplate>
							<li class="slider_item ">
								<img src="<%#Eval("img_url") %>" alt="<%#Eval("title") %>"/>
								<span></span>
							</li></ItemTemplate></asp:Repeater>
						</ul>
						<a class="slider_btn_left" href="javascript:;" title="" node-type="prev"></a>
						<a class="slider_btn_right" href="javascript:;" title="" node-type="next"></a>
					</div>
				</div>
			</div>
		</div>
        <uc1:footer runat="server" ID="footer" />

		
		<script src="/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="/js/common.js" type="text/javascript" charset="utf-8"></script>
		<script src="/js/slider.js" type="text/javascript" charset="utf-8"></script>
		<script src="/js/base.js" type="text/javascript" charset="utf-8"></script>
		<script src="/js/aboutus.js" type="text/javascript" charset="utf-8"></script>
	</body>
</html>
