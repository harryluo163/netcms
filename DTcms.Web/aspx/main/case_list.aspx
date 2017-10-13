<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="case_list.aspx.cs" Inherits="DTcms.Web.aspx.main.case_list" %>

<%@ Register Src="~/ascx/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/ascx/footer.ascx" TagPrefix="uc1" TagName="footer" %>




<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<meta name="keywords" content="<%=model.seo_keywords %>">
    	<meta name="description" content="<%=model.seo_description %>">
		<title><%=model.title!=null?model.title+"_":"" %>产品案例_<%=config.webname %></title>
		<link rel="icon" href="" type="image/x-icon">
		<link rel="stylesheet" type="text/css" href="/css/common.css"/>
		<link rel="stylesheet" type="text/css" href="/css/case.css"/>
		<link rel="stylesheet" type="text/css" href="/css/new.css"/>
	</head>
	<body>
        <uc1:header runat="server" ID="header" />
		<div class="case clearfix">
			<div id="caseType">
				<h4>产品分类</h4>
				<div class="caseWarpBox">
					<ul class="clearfix">
                        <asp:Repeater runat="server" ID="RepMenuList"><ItemTemplate>
						<li>
							<a class="<%#Eval("id").ToString()==category_id.ToString()?"active":""  %>" href="/<%#GetUrl(Convert.ToInt32(Eval("id"))) %>/<%#Eval("id") %>.html" ><%#Eval("title") %></a>
						</li></ItemTemplate></asp:Repeater>
					</ul>
					<div class="caseAddrInfo">
						<p><%=config.webcompany %></p>
						<p>地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址：<%=config.webaddress %></p>
						<p>联系方式：13671199009(崔先生)</p>
					</div>
				</div>
			</div>
			<div id="caseExhibition">
				<h4>产品展示</h4>
				<ul class="clearfix caseList">
					<!--此处不加链接-->
                    <asp:Repeater runat="server" ID="RepBindList"><ItemTemplate>
					<li>
						<a href="/case/show-<%#Eval("id") %>.html">
							<img src="<%#Eval("img_url") %>"/>
						</a>
					</li></ItemTemplate></asp:Repeater>
				</ul>
				<div class="center1 page">
                    <%=pageHtmlStr %>
				</div>
			</div>
		</div>
		
        <uc1:footer runat="server" ID="footer" />
		
		<script src="/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="/js/common.js" type="text/javascript" charset="utf-8"></script>
		<script src="/js/case.js" type="text/javascript" charset="utf-8"></script>
	</body>
</html>
