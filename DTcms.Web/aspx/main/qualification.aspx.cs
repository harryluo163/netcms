using DTcms.Web.UI;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DTcms.Web.aspx.main
{
    public partial class qualification : BasePage
    {
        protected Model.article_category model = new Model.article_category();
        int category_id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                category_id = DTcms.Common.DTRequest.GetQueryInt("category_id", 52);
                GetModel();
                BindPic();
            }
        }

        #region 获取分类
        private void GetModel()
        {
            BLL.article_category bll = new BLL.article_category();
            model = bll.GetModel(category_id);
        }
        #endregion

        #region 绑定图片
        private void BindPic()
        {
            BLL.article bll = new BLL.article();
            RepBindList.DataSource = bll.GetList("content", 52, 50, "status=0", "sort_id asc,id desc");
            RepBindList.DataBind();
        }
        #endregion
    }
}