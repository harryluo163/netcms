<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customergroup.aspx.cs" Inherits="DTcms.Web.aspx.main.customergroup" %>

<%@ Register Src="~/ascx/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/ascx/footer.ascx" TagPrefix="uc1" TagName="footer" %>




<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<meta name="keywords" content="<%=model.seo_keywords %>">
    	<meta name="description" content="<%=model.seo_description %>">
		<title><%=model.title!=null?model.title+"_":"" %>客户群体_<%=config.webname %></title>
		<link rel="icon" href="" type="image/x-icon">
		<link rel="stylesheet" type="text/css" href="/css/common.css"/>
		<link rel="stylesheet" type="text/css" href="/css/index.css"/>
	</head>
	<body>
        <uc1:header runat="server" ID="header" />

		<div class="customerGroup">
			<div class="startAndStop">
				<div class="customerTt">客户群体　<span>Customer group</span></div>
				<a href="javascript:;" class="auto-scrolling-toggle">自动滚动/停止</a>
			</div>
			<div id="scrollBox">
				<div id="box1">
					<ul class="clearfix">
                        <asp:Repeater runat="server" ID="RepBindList"><ItemTemplate>
						<li>
							<img src="<%#Eval("img_url") %>" alt="<%#Eval("title") %>" />
							<span></span>
						</li></ItemTemplate></asp:Repeater>
					</ul>
				</div>
			</div>
		</div>
		
        <uc1:footer runat="server" ID="footer" />
		
		<script src="/js/ajax.js" type="text/javascript" charset="utf-8"></script>
		<script src="/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="/js/common.js" type="text/javascript" charset="utf-8"></script>
		<script src="/js/scrollbar.js" type="text/javascript" charset="utf-8"></script>
		<script src="/js/customerGroup.js" type="text/javascript" charset="utf-8"></script>
	</body>
</html>
