using DTcms.Web.UI;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DTcms.Web.aspx.main
{
    public partial class customergroup : BasePage
    {
        protected Model.article_category model = new Model.article_category();
        int category_id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                category_id = DTcms.Common.DTRequest.GetQueryInt("category_id", 0);
                if (category_id != 0)
                {
                    GetModel();
                }

                BindList();
            }
        }

        #region 获取分类
        private void GetModel()
        {
            BLL.article_category bll = new BLL.article_category();
            model = bll.GetModel(category_id);
        }
        #endregion

        #region 绑定列表
        private void BindList()
        {
            BLL.article bll = new BLL.article();
            RepBindList.DataSource = bll.GetList("kfqt", 100, "status=0 and is_red=0", "sort_id asc,id desc");
            RepBindList.DataBind();
        }
        #endregion
    }
}