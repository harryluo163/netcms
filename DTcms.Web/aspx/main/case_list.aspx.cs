using DTcms.Web.UI;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DTcms.Web.aspx.main
{
    public partial class case_list : BasePage
    {
        protected Model.article_category model = new Model.article_category();

        protected string pageHtmlStr = string.Empty;
        protected int recordCount = 0;

        protected int category_id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                category_id = DTcms.Common.DTRequest.GetQueryInt("category_id", 0);
                if (category_id != 0)
                {
                    GetModel();
                }

                BindMenu();

                Display();

                BindHot();
            }
        }

        #region 热点资讯
        private void BindHot()
        {
            BLL.article bll = new BLL.article();
            //RepBindHot.DataSource = bll.GetList("news", 50, "status=0", "sort_id asc,id desc");
            //RepBindHot.DataBind();
        }
        #endregion

        #region 获取分类
        private void GetModel()
        {
            BLL.article_category bll = new BLL.article_category();
            model = bll.GetModel(category_id);
        }
        #endregion

        #region 绑定分类
        private void BindMenu()
        {
            BLL.article_category bll = new BLL.article_category();
            RepMenuList.DataSource = bll.GetList(0, 7);
            RepMenuList.DataBind();
        }
        #endregion

        #region 列表
        private void Display()
        {
            BLL.article bll = new BLL.article();


            int pageIndex = 1;
            if (!string.IsNullOrWhiteSpace(Request.QueryString["page"]))
            {
                pageIndex = Convert.ToInt32(Request.QueryString["page"]);
            }
            int pageSize = 9;

            //绑定页码
            string pageUrl = "/case_list/" + category_id + "/__id__.html";

            string whereStr = "status=0";


            RepBindList.DataSource = bll.GetList("goods", category_id, pageSize, pageIndex, whereStr, "sort_id asc,id desc", out recordCount);
            RepBindList.DataBind();


            pageHtmlStr = OutPageList(pageSize, pageIndex, recordCount, pageUrl, 6);
        }
        #endregion

        #region 显示分页
        /// <summary>
        /// 返回分页页码
        /// </summary>
        /// <param name="pageSize">页面大小</param>
        /// <param name="pageIndex">当前页</param>
        /// <param name="totalCount">总记录数</param>
        /// <param name="linkUrl">链接地址，__id__代表页码</param>
        /// <param name="centSize">中间页码数量</param>
        /// <returns></returns>
        private string OutPageList(int pageSize, int pageIndex, int totalCount, string linkUrl, int centSize)
        {
            //计算页数
            if (totalCount < 1 || pageSize < 1)
            {
                return "";
            }
            int pageCount = totalCount / pageSize;
            if (pageCount < 1)
            {
                return "";
            }
            if (totalCount % pageSize > 0)
            {
                pageCount += 1;
            }
            if (pageCount <= 1)
            {
                return "";
            }
            StringBuilder pageStr = new StringBuilder();
            string pageId = "__id__";

            string firstBtn = string.Empty;
            if (pageIndex > 1)
            {
                firstBtn = "<a href=\"" + ReplaceStr(linkUrl, pageId, (pageIndex - 1).ToString()) + "\" >«</a>";
            }
            string lastBtn = string.Empty;
            if (pageIndex < pageCount)
            {
                lastBtn = "<a href=\"" + ReplaceStr(linkUrl, pageId, (pageIndex + 1).ToString()) + "\" >»</a>";
            }

            string firstStr = "<a href=\"" + ReplaceStr(linkUrl, pageId, "1") + "\">1</a>";
            string lastStr = "<a href=\"" + ReplaceStr(linkUrl, pageId, pageCount.ToString()) + "\">" + pageCount.ToString() + "</a>";

            //firstBtn = "<li><a href=\"" + ReplaceStr(linkUrl, pageId, "1") + "\">首页</a></li>" + firstBtn;
            //lastBtn += "<li><a href=\"" + ReplaceStr(linkUrl, pageId, pageCount.ToString()) + "\">尾页</a></li>";

            if (pageIndex == 1)
            {
                firstStr = "<a class=\"col_253885\">1</a>";
            }
            if (pageIndex == pageCount)
            {
                lastStr = "<a class=\"col_253885\">" + pageCount.ToString() + "</a>";
            }
            int firstNum = pageIndex - (centSize / 2); //中间开始的页码
            if (pageIndex < centSize)
                firstNum = 2;
            int lastNum = pageIndex + centSize - ((centSize / 2) + 1); //中间结束的页码
            if (lastNum >= pageCount)
                lastNum = pageCount - 1;
            //pageStr.Append("<span>共" + totalCount + "记录</span>");
            pageStr.Append(firstBtn + firstStr);
            if (pageIndex >= centSize)
            {
                pageStr.Append("<a>...</a>\n");
            }
            for (int i = firstNum; i <= lastNum; i++)
            {
                if (i == pageIndex)
                {
                    pageStr.Append("<a class=\"col_253885\">" + i + "</a>");
                }
                else
                {
                    pageStr.Append("<a href=\"" + ReplaceStr(linkUrl, pageId, i.ToString()) + "\">" + i + "</a>");
                }
            }
            if (pageCount - pageIndex > centSize - ((centSize / 2)))
            {
                pageStr.Append("<a>...</a>");
            }
            pageStr.Append(lastStr + lastBtn);
            return pageStr.ToString();
        }
        #endregion

        #region 替换指定的字符串
        /// <summary>
        /// 替换指定的字符串
        /// </summary>
        /// <param name="originalStr">原字符串</param>
        /// <param name="oldStr">旧字符串</param>
        /// <param name="newStr">新字符串</param>
        /// <returns></returns>
        private string ReplaceStr(string originalStr, string oldStr, string newStr)
        {
            if (string.IsNullOrEmpty(oldStr))
            {
                return "";
            }
            return originalStr.Replace(oldStr, newStr);
        }
        #endregion


        #region 判断url
        protected string GetUrl(int id)
        {
            string result = string.Empty;
            if (id == 40)
            {
                result = "case_list";
            }
            else if (id == 67)
            {
                result = "case_list";
            }
            else if (id == 68)
            {
                result = "case_list";
            }
            else if (id == 75)
            {
                result = "case_list";
            }
            else if (id == 98)
            {
                result = "case_list";
            }
            else
            {
                result = "case";
            }

            return result;
        }
        #endregion
    }
}