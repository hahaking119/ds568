﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Member_Manage_Offer_Post :  BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
       var mst= this.Master as Member_Manage_MasterPage;
       mst.SetMenuTitle("供应管理", "发布供应信息");
    }
}