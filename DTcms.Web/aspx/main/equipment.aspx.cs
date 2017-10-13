using DTcms.Web.UI;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DTcms.Web.aspx.main
{
    public partial class equipment : BasePage
    {
        protected Model.article_category model = new Model.article_category();
        int category_id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                category_id = DTcms.Common.DTRequest.GetQueryInt("category_id", 81);
                GetModel();
            }
        }

        #region 获取分类
        private void GetModel()
        {
            BLL.article_category bll = new BLL.article_category();
            model = bll.GetModel(category_id);

            RepBindType.DataSource = bll.GetList(81, 11);
            RepBindType.DataBind();

            RepBindType2.DataSource = bll.GetList(81,11);
            RepBindType2.DataBind();
        }
        #endregion

        protected void RepBindType2_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            //判断里层repeater处于外层repeater的哪个位置（ AlternatingItemTemplate，FooterTemplate，

            //HeaderTemplate，，ItemTemplate，SeparatorTemplate）
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Repeater rep = e.Item.FindControl("RepBindPic") as Repeater;//找到里层的repeater对象
                DataRowView rowv = (DataRowView)e.Item.DataItem;//找到分类Repeater关联的数据项 
                int typeid = Convert.ToInt32(rowv["id"]); //获取填充子类的id 
                BLL.article bll = new BLL.article();
                rep.DataSource = bll.GetList("content", typeid, 20, "status=0", "sort_id asc,id desc");
                rep.DataBind();
            }
        }
    }
}