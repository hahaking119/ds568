﻿<%@ Page  Language="C#" MasterPageFile="~/Member/Manage/MasterPage.master" AutoEventWireup="true" CodeFile="seller_order_list.aspx.cs" Inherits="Member_Manage_Transaction_seller_order_list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/order_list.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="/js/Calendar1.js"></script>
    <script type="text/javascript" src="/js/pager/pagination.js"></script>
    <link href="/js/pager/pagination.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<ul class="hmenu">
     <li>
         <div class="mLeft"></div>
         <div class="mMiddle">全部订单</div>
         <div class="mRight"></div>
    </li>
    <li class="request"><span class="red"></span><span class="gray"></span></li>
</ul>
<div class="scctn">
    <ul>
        <li><span style="margin-left:1em;"></span><b>订单号：</b><input name="ordernum" class="txtbox keyword" />&nbsp;<b> 货品名称：</b><input name="proname" class="txtbox keyword" /></li>
        <li><b>交易状态：</b><select name="orderstate">
            <option>全部</option>
            <option>等待卖家确认订单</option>
            </select>
        </li>
        <li><b>成交时间：</b><input type="text" name="startDate" readonly="readonly" onfocus="calendar()" maxlength="10" class="txtbox keyword date" /> - <input name="endDate" onfocus="calendar()" readonly="readonly" maxlength="10" class="txtbox keyword date" />&nbsp;&nbsp;[ <a href="javascript:void(0);">最近3天</a> <a href="javascript:void(0);">最近1周</a> <a href="javascript:void(0);">最近1月</a> ] </li>
    </ul>
    <div class="scwrap"><div>&nbsp;</div>
        &nbsp;<input id="btnSearch" type="button" value="搜索" /></div>
    </div>
<div class="proctn">
    <table cellpadding=0 cellspacing=0 class="tblist">
        <tr><th colspan=2>货品</th><th>单价</th><th>数量</th><th>总金额</th><th>订单状态</th><th>操作</th></tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr><td class="tdcb"><input type="checkbox" value="<%#Eval("id") %>" name="chb_pro" /></td><td><img src="<%#Eval("Img1") %>" onload="changeImg(this,80,80)" /></td><td><%#Eval("title") %></td><td>---</td><td><%#Eval("categoryname") %></td><td><%#((DateTime)Eval("ExpiredDate")).ToString("yyyy-MM-dd")%></td><td><a href="post.aspx?id=<%#Eval("id") %>">修改</a> / <a href="#">重发</a></td></tr>        
            </ItemTemplate>
            <AlternatingItemTemplate>
                <tr class="altr"><td class="tdcb"><input type="checkbox" value="<%#Eval("id") %>" name="chb_pro" /></td><td><img src="<%#Eval("Img1") %>" onload="changeImg(this,80,80)" /></td><td><%#Eval("title") %></td><td>---</td><td><%#Eval("categoryname")%></td><td><%#((DateTime)Eval("ExpiredDate")).ToString("yyyy-MM-dd")%></td><td><a href="post.aspx?id=<%#Eval("id") %>">修改</a> / <a href="#">重发</a></td></tr>        
            </AlternatingItemTemplate>
        </asp:Repeater>
    </table>
</div>
</asp:Content>
