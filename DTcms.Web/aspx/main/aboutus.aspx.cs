using DTcms.Web.UI;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DTcms.Web.aspx.main
{
    public partial class aboutus : BasePage
    {
        protected Model.article_category model = new Model.article_category();
        int category_id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                category_id = DTcms.Common.DTRequest.GetQueryInt("category_id", 25);
                GetModel();
            }
        }

        #region 获取分类
        private void GetModel()
        {
            BLL.article_category bll = new BLL.article_category();
            model = bll.GetModel(category_id);
        }
        #endregion
    }
}