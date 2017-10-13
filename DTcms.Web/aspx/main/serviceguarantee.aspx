<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="serviceguarantee.aspx.cs" Inherits="DTcms.Web.aspx.main.serviceguarantee" %>

<%@ Register Src="~/ascx/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/ascx/footer.ascx" TagPrefix="uc1" TagName="footer" %>




<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<meta name="keywords" content="这里是关键词">
    	<meta name="description" content="这里是描述">
		<title>服务保障</title>
		<link rel="icon" href="" type="image/x-icon">
		<link rel="stylesheet" type="text/css" href="/css/common.css"/>
		<link rel="stylesheet" type="text/css" href="/css/index.css"/>
	</head>
	<body>
        <uc1:header runat="server" ID="header" />
		
		<div id="content">
            <%=model.content %>
		</div>
		
        <uc1:footer runat="server" ID="footer" />
		
		<script src="/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="/js/common.js" type="text/javascript" charset="utf-8"></script>
		<script src="/js/serviceGuarantee.js" type="text/javascript" charset="utf-8"></script>
	</body>
</html>
