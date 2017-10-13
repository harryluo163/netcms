<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="footer.ascx.cs" Inherits="DTcms.Web.ascx.footer" %>


		<div id="footer">
			<div class="explain clearfix">
			<div class="notice">
				<h3>合作须知</h3>
				<p>
					<a href="serviceGuarantee.html">制作流程</a>
				</p>
				<p>
					<a href="serviceGuarantee.html">配送范围</a>
				</p>
				<p>
					<a href="serviceGuarantee.html">印品重印</a>
				</p>
				<p>
					<a href="serviceGuarantee.html">延保服务</a>
				</p>
			</div>
			<div class="contact">
				<h3>联系我们</h3>
				<p>地址：<%=config.webaddress %></p>
				<p>电话：<%=config.webtel %></p>
				<p>QQ：1015016033/576582402</p>
			</div>
			<div class="follow">
				<h3>关注我们</h3>
				<div class="ewm">
					<img src="/images/wxerm.png" alt=""/>
				</div>
			</div>
			<div class="telePhone">
				<h3></h3>
				<div class="telTxt">
					<p>7*24小时服务热线</p>
					<p class="tel">13671199009</p>
				</div>
			</div>
			</div>
			<div class="websiteInfo">
			<p><%=config.webcompany %> Copyright © <%=DateTime.Now.Year %> <%=config.weburl %>. All Rights Reserved.</p>
			<p><%=config.webcrod %></p>
			</div>

		</div>
		<div id="consulting">
			<div id="rightArrow"></div>
			<div id="floatDivBoxs">
				<div class="floatDtt">在线客服</div>
				<div class="floatShadow">
					<ul class="floatDqq">
						<li style="padding-left:0px;">
							<a target="_blank" href="tencent://message/?uin=1015016033&Site=sc.chinaz.com&Menu=yes"><img src="/images/qq1.png" align="absmiddle">&nbsp;&nbsp;在线客服1号</a>
						</li>
						<li style="padding-left:0px;">
							<a target="_blank" href="tencent://message/?uin=576582402&Site=sc.chinaz.com&Menu=yes"><img src="/images/qq1.png" align="absmiddle">&nbsp;&nbsp;在线客服2号</a>
						</li>
					</ul>
					<div class="floatDtxt">热线电话</div>
					<div class="floatDtel">
						<p>010-57288866</p>
						<p>010-57299977</p>
					</div>
					<div style="text-align:center;padding:10px;background:#EBEBEB;"><img src="/images/wxerm.png" width="100%"><br> 
					</div>
				</div>
			</div>
		</div>
