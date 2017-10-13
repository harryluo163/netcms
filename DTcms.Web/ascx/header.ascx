<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="header.ascx.cs" Inherits="DTcms.Web.ascx.header" %>

		<div id="header" class="clearfix">
			
			
			<a class="logo" href="/index.html">
				<img src="/images/logo.png" alt="久佳印刷"/>
			</a>
			<div class="cont">
				<div class="top">
					<div class="search">
						<input type="" name="" id="" value="" />
						<a href="javascriot:;" class="searchBtn"><img src="/images/serchBtn.png"/></a>
					</div>
					<div class="share">
						<div class="s_top">
							<a href="javascript:;" onclick="jiathis_sendto('tsina');return false;" >
								<img src="/images/wb.png"/>
							</a>
							<a href="javascript:;" onclick="jiathis_sendto('weixin');return false;">
								<img src="/images/wx.png"/>
							</a>
							<a href="javascript:;" onclick="jiathis_sendto('cqq');return false;">
								<img src="/images/qq.png"/>
							</a>
							<p>不错，分享吧</p>
						</div>
						<div class="s_footer">
							7*24小时服务热线：13671199009
						</div>
					</div>
				</div>
				<div class="footer" id="nav">
					<a href="/index.html" class="<%=menuid==0?"active":"" %>">首页</a>
					<a href="/aboutus.html" class="<%=menuid==1?"active":"" %>">关于我们</a>
					<a href="/customergroup.html" class="<%=menuid==2?"active":"" %>">客户群体</a>
					<a href="/case_list/40.html" class="<%=menuid==3?"active":"" %>">产品案例</a>
					<a href="/advantage.html" class="<%=menuid==4?"active":"" %>">行业优势</a>
					<a href="/serviceGuarantee.html" class="<%=menuid==5?"active":"" %>">服务保障</a>
					<a href="/news.html" class="<%=menuid==6?"active":"" %>">新闻资讯</a>
					<a href="/contactus.html" class="<%=menuid==7?"active":"" %>">联系我们</a>
				</div>
			</div>
			
			<div id="slideBox">
				<ul id="show_pic">
                    <asp:Repeater runat="server" ID="RepBindBanner"><ItemTemplate>
				    <li>
				    	<a href="<%#Eval("link_url") %>" target="_blank">
				    		<img alt="<%#Eval("title") %>" title=""src="<%#Eval("img_url") %>">
				    	</a>
				    </li></ItemTemplate></asp:Repeater>
				</ul>
				<div class="iconBallBox">
				  	<ul id="iconBall">
					    <li class=""></li>
					    <li class=""></li>
					    <li class=""></li>
					    <li class=""></li>
					    <li class=""></li>
					</ul>
				</div>  
			</div>

		</div>