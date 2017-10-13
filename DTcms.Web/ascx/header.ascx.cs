using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using DTcms.Web.UI;
using System.Data;

namespace DTcms.Web.ascx
{
    public partial class header : System.Web.UI.UserControl
    {
        //BLL.article_category bll = new BLL.article_category();
        protected int menuid = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetUrl();
               // BindNenu();
                BindBanner();
            }
        }

        #region 获取url
        private void GetUrl()
        {
            string url = Request.Url.ToString();

            if (url.IndexOf("aboutus") > -1)
            {
                menuid = 1;
            }
            else if (url.IndexOf("qualification") > -1)
            {
                menuid = 1;
            }
            else if (url.IndexOf("history") > -1)
            {
                menuid = 1;
            }
            else if (url.IndexOf("partner") > -1)
            {
                menuid = 1;
            }
            else if (url.IndexOf("idea") > -1)
            {
                menuid = 1;
            }
            else if (url.IndexOf("equipment") > -1)
            {
                menuid = 1;
            }
            else if (url.IndexOf("customergroup") > -1)
            {
                menuid = 2;
            }
            else if (url.IndexOf("case") > -1)
            {
                menuid = 3;
            }
            else if (url.IndexOf("advantage") > -1)
            {
                menuid = 4;
            }
            else if (url.IndexOf("service") > -1)
            {
                menuid = 5;
            }
            else if (url.IndexOf("news") > -1)
            {
                menuid = 6;
            }
            else if (url.IndexOf("contactus") > -1)
            {
                menuid = 7;
            }
        }
        #endregion

        #region banner
        private void BindBanner()
        {
            BLL.article bll = new BLL.article();
            RepBindBanner.DataSource = bll.GetList("home", 5, "status=0", "sort_id asc,id desc");
            RepBindBanner.DataBind();
        }
        #endregion

        //#region 绑定分类
        //private void BindNenu()
        //{
        //    RepMenuAbout.DataSource = bll.GetList(0, 11);
        //    RepMenuAbout.DataBind();

        //    RepMenuProduct.DataSource = bll.GetChildList(0, 7);
        //    RepMenuProduct.DataBind();

        //    RepMenuNews.DataSource = bll.GetList(0, 6);
        //    RepMenuNews.DataBind();

        //    RepMenuGuanli.DataSource = bll.GetList(0, 13);
        //    RepMenuGuanli.DataBind();

        //    RepMenuZheRen.DataSource = bll.GetList(0, 14);
        //    RepMenuZheRen.DataBind();
        //}
        //#endregion

        //protected void RepMenuProduct_ItemDataBound(object sender, RepeaterItemEventArgs e)
        //{
        //    if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        //    {
        //        Repeater rep = e.Item.FindControl("RepMenuProduct2") as Repeater;//找到里层的repeater对象
        //        DataRowView rowv = (DataRowView)e.Item.DataItem;//找到分类Repeater关联的数据项 
        //        int typeid = Convert.ToInt32(rowv["id"]); //获取填充子类的id 
        //        rep.DataSource = bll.GetChildList(typeid, 7);
        //        rep.DataBind();
        //    }
        //}
    }
}