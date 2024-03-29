﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MessageCenter.aspx.cs" Inherits="Member_Manage_Message_MessageCenter" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>消息中心</title>
    <Custom:Header ID="Header1" runat="server" />
    <script type="text/javascript" src="/js/pager/pagination.js"></script>
    <link href="/js/pager/pagination.css" rel="stylesheet" type="text/css" />
    <link href="/Member/Manage/Css/Master.css" rel="stylesheet" type="text/css" />
    <link rel="Stylesheet" type="text/css" href="Css/msgct.css" />
    <script type="text/javascript" src="js/mc.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <input type="hidden" id="msgtid" value="<%=Request.QueryString["tid"] %>" />
    <input type="hidden" id="pc" value="<%=ViewState["pc"] %>" />
    <input type="hidden" id="ps" value="<%=ViewState["ps"] %>" />
     <div class="mainctn">
         <div class="msghd">消息中心</div>
         <ul class="hmenu">
            <li>
                 <div class="mLeft"></div>
                 <div class="mMiddle"><a href="?">最近消息</a></div>
                 <div class="mRight"></div>
            </li>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                      <li tid="<%#(byte)Container.DataItem %>">
                         <div class="mLeft"></div>
                         <div class="mMiddle"><a href="?tid=<%#(byte)Container.DataItem %>"><%#Container.DataItem %></a></div>
                         <div class="mRight"></div>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
            <li class="request"><%--<a href="#">已过滤消息</a>--%></li>
        </ul>
        <div class="listctn">
            <div class="msglist">
                <ul class="ulwrap">
                    <asp:Repeater ID="Repeater2" runat="server">
                        <ItemTemplate>
                             <li msgid="<%#Eval("id") %>"><div class="tlwrap overflowAuto"><div class="floatL"><input value="<%#Eval("id") %>" type="checkbox" name="ch" /><span class="<%#(bool)Eval("IsView")?"isView":"" %>"><%#Eval("title") %></span></div><div class="floatR"><%#((DateTime)Eval("createdate")).ToString("MM-dd") %></div></div></li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
                <div class="tlwrap atbar"><div class="floatL"><input type="checkbox" name="ch" /></div><a href="javascript:;" id="msg_del"><div>删除</div></a><a href="javascript:;" id="msg_nv"><div>标为已读</div></a><a href="javascript:;" id="msg_hv"><div>标为未读</div></a></div>
                <div class="pagerwrap"></div>
            </div>
            <div class="msgdetail"></div>
        </div>
        <div class="tips">提示：所有消息从收到日起，保留28天。</div>
     </div>
    </form>
</body>
</html>
