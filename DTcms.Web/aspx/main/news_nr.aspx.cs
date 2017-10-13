using DTcms.Web.UI;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DTcms.Web.aspx.main
{
    public partial class news_nr : BasePage
    {
        protected Model.article model = new Model.article();
        int id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                id = DTcms.Common.DTRequest.GetQueryInt("id");
                GetModel(id);
                BindMenu();
                BindHot();
            }
        }

        #region 获取实体
        private void GetModel(int id)
        {
            BLL.article bll = new BLL.article();
            model = bll.GetModel(id);

            if (model != null)
            {
                RepNewsRed(model.category_id);

                BindPrev(model.category_id, model.id);
                BindNext(model.category_id, model.id);
            }
        }
        #endregion

        #region 新闻推荐
        private void RepNewsRed(int category_id)
        {
            BLL.article bll = new BLL.article();
            //RepListRed.DataSource = bll.GetList("news", category_id, 5, "status=0", "sort_id asc,id desc");
            //RepListRed.DataBind();
        }
        #endregion

        #region 绑定分类
        private void BindMenu()
        {
            BLL.article_category bll = new BLL.article_category();
            //RepMenuList.DataSource = bll.GetList(0, 6);
            //RepMenuList.DataBind();
        }
        #endregion


        #region 上一条
        private void BindPrev(int category_id, int id)
        {
            BLL.article bll = new BLL.article();
            //RepBindPrev.DataSource = bll.GetList("news", category_id, 1, "status=0 and id<" + id, "id desc");
            //RepBindPrev.DataBind();
        }
        #endregion

        #region 下一条
        private void BindNext(int category_id, int id)
        {
            BLL.article bll = new BLL.article();
            //RepBindNext.DataSource = bll.GetList("news", category_id, 1, "status=0 and id>" + id, "id asc");
            //RepBindNext.DataBind();
        }
        #endregion

        #region 热点资讯
        private void BindHot()
        {
            BLL.article bll = new BLL.article();
            RepBindHot.DataSource = bll.GetList("news", 100000, "status=0", "sort_id asc,id desc");
            RepBindHot.DataBind();
        }
        #endregion
    }
}