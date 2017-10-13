<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="case.aspx.cs" Inherits="DTcms.Web.aspx.main._case" %>

<%@ Register Src="~/ascx/footer.ascx" TagPrefix="uc1" TagName="footer" %>
<%@ Register Src="~/ascx/header.ascx" TagPrefix="uc1" TagName="header" %>


<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<meta name="keywords" content="<%=model.seo_keywords %>">
    	<meta name="description" content="<%=model.seo_description %>">
		<title><%=model.title %>_<%=config.webname %></title>
		<link rel="icon" href="" type="image/x-icon">
		<link rel="stylesheet" type="text/css" href="/css/common.css"/>
		<link rel="stylesheet" type="text/css" href="/css/case.css"/>
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
			<div class="caseGoodInfo">
				<h4>产品展示</h4>
				<div class="goodInfo">
					<div class="goodInfoImg clearfix">
						<a href="javascript:;" id="prvo"></a>
						<a href="javascript:;" id="next"></a>
                        <div style="position: relative; top: 0; left: 0; width: 640px; height: 456px; overflow: hidden; float: left;">
						    <div id="goodImg">
                                <asp:Repeater runat="server" ID="RepBindPic2"><ItemTemplate>
                                <b><img src="<%#Eval("img_url") %>"/></b>
                                </ItemTemplate></asp:Repeater>
						    </div>
                        </div>

						<div id="goodImgList">
                            <ul id="goodImg_List">
                            <asp:Repeater runat="server" ID="RepBindPic"><ItemTemplate>
                                <%#Container.ItemIndex%5==0?"</li><li>":"" %>
                                <b><img src="<%#Eval("img_url") %>" onclick="getval('<%#Eval("id") %>');" /></b>
                                <div style="display:none;" id="cont_<%#Eval("id") %>"><%#Eval("content") %></div>
                            </ItemTemplate></asp:Repeater>
                            </ul>
						</div>
						
					</div>
					<div class="goodInfoTxt" id="remark">
						<p><%=model.title %></p>
                        <p><%=model.content %></p>
					</div>
				</div>
			</div>
		</div>
		
        <uc1:footer runat="server" ID="footer" />
		
		<script src="/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="/js/ajax.js" type="text/javascript" charset="utf-8"></script>
		<script src="/js/common.js" type="text/javascript" charset="utf-8"></script>
		<script src="/js/caseCont.js" type="text/javascript" charset="utf-8"></script>
        <script>
            $(function () {
                $("#goodImgList ul b:first img").click();
            })
            function getval(id) {
                $("#remark").html("<p>" + $("#cont_" + id).html() + "</p>");
            }
        </script>
	</body>
</html>
