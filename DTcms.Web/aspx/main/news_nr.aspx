<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="news_nr.aspx.cs" Inherits="DTcms.Web.aspx.main.news_nr" %>

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
		
		<div class="news clearfix">
			<div class="newslist">
				<h4>印刷资讯</h4>
				<div id="newsLis">
					<ul><asp:Repeater runat="server" ID="RepBindHot"><ItemTemplate>
						<li>
							<span><%#Container.ItemIndex+1 %>、</span>
							<a href="/news/show-<%#Eval("id") %>.html" ><%#Eval("title") %></a>
						</li></ItemTemplate></asp:Repeater>
					</ul>
				</div>
			</div>
			<div class="newsCont">
				<h4>新闻详情</h4>
				<div class="newsDetails" id="newsContBox">
					<h2><%=model.title %></h2>
					<div class="describe">
						<span>作者：admin</span>
						<span><%=string.Format("{0:yyyy-MM-dd HH:mm:ss}",model.add_time) %></span>
					</div>
					<div class="new_nr">
                        <%=model.content %>
					</div>
				</div>
			</div>
		</div>

        <uc1:footer runat="server" ID="footer" />
	
		<script src="/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<<!--script src="/js/ajax.js" type="text/javascript" charset="utf-8"></script>-->
		<script src="/js/scrollbar.js" type="text/javascript" charset="utf-8"></script>
		<script src="/js/common.js" type="text/javascript" charset="utf-8"></script>
		<script src="/js/newsCont.js" type="text/javascript" charset="utf-8"></script>
	</body>
</html>
