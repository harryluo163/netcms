using DTcms.Web.UI;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DTcms.Web.aspx.main
{
    public partial class index : BasePage
    {
        protected Model.article_category modelabout = new Model.article_category();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindNews();
                BindKhqt();
                BindCaseType();
                BindCase();
                BindLink();
                GetAboutModel();
            }
        }

        #region 关于我们
        private void GetAboutModel()
        {
            BLL.article_category bll = new BLL.article_category();
            modelabout = bll.GetModel(107);
        }
        #endregion

        #region 绑定新闻
        private void BindNews()
        {
            BLL.article bll = new BLL.article();
            RepBindGsxw.DataSource = bll.GetList("news", 3, 10, "status=0", "sort_id asc,id desc");
            RepBindGsxw.DataBind();

            RepBindYnzx.DataSource = bll.GetList("news", 6, 10, "status=0", "sort_id asc,id desc");
            RepBindYnzx.DataBind();

            RepBindJswd.DataSource = bll.GetList("news", 7, 10, "status=0", "sort_id asc,id desc");
            RepBindJswd.DataBind();
        }
        #endregion

        #region 绑定客户群体
        private void BindKhqt()
        {
            BLL.article bll = new BLL.article();
            RepBindKhqt.DataSource = bll.GetList("kfqt", 4, "status=0 and is_red=1", "sort_id asc,id desc");
            RepBindKhqt.DataBind();
        }
        #endregion

        #region 绑定产品分类
        private void BindCaseType()
        {
            BLL.article_category bll = new BLL.article_category();
            RepBindProType.DataSource = bll.GetList(0, 7);
            RepBindProType.DataBind();
        }
        #endregion

        #region 绑定产品
        private void BindCase()
        {
            BLL.article bll = new BLL.article();
            RepBindPro.DataSource = bll.GetList("goods",12, "status=0 and is_red=1", "sort_id asc,id desc");
            RepBindPro.DataBind();
        }
        #endregion

        #region 友情链接
        private void BindLink()
        {
            RepBindLink.DataSource = new DTcms.Web.UI.BasePage().get_plugin_method("DTcms.Web.Plugin.Link", "link", "get_link_list", 0, "is_lock=0");
            RepBindLink.DataBind();
        }
        #endregion

        #region 判断url
        protected string GetUrl(int id)
        {
            string result = string.Empty;
            if (id == 40)
            {
                result = "show-";
            }
            else if (id == 67)
            {
                result = "show-";
            }
            else if (id == 68)
            {
                result = "show-";
            }
            else if (id == 75)
            {
                result = "show-";
            }
            else if (id == 98)
            {
                result = "show-";
            }
            else
            {
                result = "";
            }

            return result;
        }
        #endregion

        #region 判断url
        protected string GetUrl2(int id)
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