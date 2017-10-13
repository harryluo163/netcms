using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace DTcms.Web.ascx
{
    public partial class footer : System.Web.UI.UserControl
    {
        protected internal Model.siteconfig config = new BLL.siteconfig().loadConfig();
        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    if (!IsPostBack)
        //    {
        //        BindNenu();
        //        BindLink();
        //    }
        //}


        //#region 绑定分类
        //private void BindNenu()
        //{
        //    BLL.article_category bll = new BLL.article_category();
        //    RepMenuAbout.DataSource = bll.GetList(0, 11);
        //    RepMenuAbout.DataBind();

        //    RepMenuProduct.DataSource = bll.GetList(0, 7);
        //    RepMenuProduct.DataBind();

        //    RepMenuZheRen.DataSource = bll.GetList(0, 14);
        //    RepMenuZheRen.DataBind();

        //    RepMenuZhaoPin.DataSource = bll.GetList(0, 12);
        //    RepMenuZhaoPin.DataBind();
        //}
        //#endregion


        //#region 友情链接
        //private void BindLink()
        //{
        //    RepBindLink.DataSource = new DTcms.Web.UI.BasePage().get_plugin_method("DTcms.Web.Plugin.Link", "link", "get_link_list", 0, "is_lock=0");
        //    RepBindLink.DataBind();
        //}
        //#endregion
    }
}