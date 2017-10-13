<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="DTcms.Web.aspx.main.index" %>

<%@ Register Src="~/ascx/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/ascx/footer.ascx" TagPrefix="uc1" TagName="footer" %>



<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title><%=site.seo_title %></title>
		<meta name="keywords" content="<%=site.seo_keyword %>">
    	<meta name="description" content="<%=site.seo_description %>">
		<link rel="icon" href="" type="image/x-icon">
		<link rel="stylesheet" type="text/css" href="/css/common.css"/>
		<link rel="stylesheet" type="text/css" href="/css/index.css"/>
		<link rel="stylesheet" type="text/css" href="/css/new.css"/>
	</head>
	<body>
        <uc1:header runat="server" ID="header" />
		
		<div id="content">
			<div class="index">
				<div class="clearfix" id="introduce">
					<div class="company">
						<div class="title">
							<a href="aboutus.html" target="_blank">公司介绍</a>
							<span>&nbsp;&nbsp;Company introduction</span>
						</div>
						<div class="cont"><%=modelabout.content %>
						</div>
					</div>
					<div class="cstomer">
						<div class="title">
							<a href="customerGroup.html" target="_blank">客户群体</a>
							<span>&nbsp;&nbsp;Customer group</span>
						</div>
						<div class="top_slider" id="cstomerBanner">
							<div class="ts_inner" node-type="slider">
								<ul class="slider_list" >
                                    <asp:Repeater runat="server" ID="RepBindKhqt"><ItemTemplate>
									<li class="slider_item ">
										<img src="<%#Eval("img_url") %>" alt="<%#Eval("title") %>"/>
									</li></ItemTemplate></asp:Repeater>                
								</ul>
								<a class="slider_btn_left" href="javascript:;" title="" node-type="prev"></a>
								<a class="slider_btn_right" href="javascript:;" title="" node-type="next"></a>
							</div>
						</div>
					</div>
				</div>
				
				<div class="clearfix" id="product">
					<div class="classification">
						<div class="title">
							<a href="/case_list/40.html" target="_blank">产品分类</a>
							<span>&nbsp;&nbsp;Product classification</span>
						</div>
						<ul class="cont clearfix">
                            <asp:Repeater runat="server" ID="RepBindProType"><ItemTemplate>
							<li>
								<a href="/<%#GetUrl2(Convert.ToInt32(Eval("id"))) %>/<%#Eval("id") %>.html">
									<div class="imgBox">
										<div>
											<img src="<%#Eval("img_url") %>"/>
										</div>
									</div>
									<p class="active"><%#Eval("title") %></p>
								</a>
							</li></ItemTemplate></asp:Repeater>
						</ul>
					</div>
					<div class="advantage">
						<div class="title">
							<a href="advantage.html" target="_blank">行业优势</a>
							<span>&nbsp;&nbsp;Industrial advantage</span>
						</div>
						<div class="top_slider" id="advantageBanner">
							<div class="ts_inner" node-type="slider">
								<ul class="slider_list" style="margin-left: 0px;" >
									<li class="slider_item ">
										<img src="/images/advantage.png" alt=""/>
									</li>                
									<li class="slider_item ">
										<img src="/images/advantage2.png" alt=""/>
									</li>            
									<li class="slider_item ">
										<img src="/images/advantage3.png" alt=""/>
									</li>
									<li class="slider_item ">
										<img src="/images/advantage4.png" alt=""/>
									</li>  
								</ul>
								<a class="slider_btn_left" href="javascript:;" title="" node-type="prev"></a>
								<a class="slider_btn_right" href="javascript:;" title="" node-type="next"></a>
							</div>
						</div>
					</div>
				</div>
				
				<div class="clearfix case_list">
					<div class="case_bt"><a href="javascript:;">经典案例</a><span>Classic case</span></div>
					<ul class="clearfix">
                        <asp:Repeater runat="server" ID="RepBindPro"><ItemTemplate>
						<li class="<%#Container.ItemIndex%6==0?"ml":"" %>">
							<b><a href="/case/<%#GetUrl(Convert.ToInt32(Eval("category_id"))) %><%#GetUrl(Convert.ToInt32(Eval("category_id")))==""?Eval("category_id"):Eval("id") %>.html"><img src="<%#Eval("img_url") %>" alt="<%#Eval("title") %>"/></a></b>
							<a href="/case/<%#GetUrl(Convert.ToInt32(Eval("category_id"))) %><%#GetUrl(Convert.ToInt32(Eval("category_id")))==""?Eval("category_id"):Eval("id") %>.html"><%#Eval("title") %></a>
						</li></ItemTemplate></asp:Repeater>
					</ul>
				</div>
				
				<div class="clearfix" id="news">
					<div class="company">
						<div class="title">
							<a href="/news/3.html" target="_blank">公司新闻</a>
							<span>&nbsp;&nbsp;Company news</span>
						</div>
						<ul class="cont">
                            <asp:Repeater runat="server" ID="RepBindGsxw"><ItemTemplate>
							<li>
								<a href="/news/show-<%#Eval("id") %>.html">
									<p><%#Eval("title") %></p>
									<span>（<%#Eval("add_time","{0:MM-dd}") %>）</span>
								</a>
							</li></ItemTemplate></asp:Repeater>
						</ul>
					</div>
					<div class="design">
						<div class="title">
							<a href="/news/6.html" target="_blank">业内资讯</a> 
							<span>&nbsp;&nbsp;Design knowledge</span>
						</div>
						<ul class="cont">
                            <asp:Repeater runat="server" ID="RepBindYnzx"><ItemTemplate>
							<li>
								<a href="/news/show-<%#Eval("id") %>.html">
									<p><%#Eval("title") %></p>
									<span>（<%#Eval("add_time","{0:MM-dd}") %>）</span>
								</a>
							</li></ItemTemplate></asp:Repeater>
						</ul>
					</div>
					<div class="printing">
						<div class="title">
							<a href="/news/7.html" target="_blank">技术文档</a> 
							<span>&nbsp;&nbsp;Printing recruitment</span>
						</div>
						<ul class="cont">
                            <asp:Repeater runat="server" ID="RepBindJswd"><ItemTemplate>
							<li>
								<a href="/news/show-<%#Eval("id") %>.html">
									<p><%#Eval("title") %></p>
									<span>（<%#Eval("add_time","{0:MM-dd}") %>）</span>
								</a>
							</li></ItemTemplate></asp:Repeater>
						</ul>
					</div>
				</div>

                <style type="text/css">
				.youlian{ height: 24px; margin: 20px auto 10px; padding: 0 29px; width: 1000px; overflow: hidden; text-align: center; color: #d80c24; font-size: 12px;}
				.youlian span{ padding-right: 15px; font-size: 16px;}
				.youlian a{ padding: 0 5px; font-size: 14px;}
				.youlian a:hover{ color: #d80c24;}
			</style>
			<div class="youlian">
				<span>友情链接：</span>
                <asp:Repeater runat="server" ID="RepBindLink"><ItemTemplate>
				<a href="<%#Eval("site_url") %>" target="_blank"><%#Eval("title") %></a><%#Container.ItemIndex+1==RepBindLink.Items.Count?"|":"" %></ItemTemplate></asp:Repeater>
			</div>


				
			</div>
		</div>

		<uc1:footer runat="server" ID="footer" />

		<script src="/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="/js/common.js" type="text/javascript" charset="utf-8"></script>
		<script src="/js/slider.js" type="text/javascript" charset="utf-8"></script>
		<script src="/js/base.js" type="text/javascript" charset="utf-8"></script>
		<script src="/js/index.js" type="text/javascript" charset="utf-8"></script>
	</body>
</html>
