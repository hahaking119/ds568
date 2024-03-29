﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="purchaseList.aspx.cs" Inherits="Order_Purchase_purchaseList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" rev="stylesheet" href="css/order.css" type="text/css"  /> 
    <script type="text/javascript" src="js/purchaselist.js"></script>  
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="order_wrap">
    <div class="pur_logo">我的进货单</div>
    <ul class="navwrap">
        <li class="sthead">&nbsp;</li>
        <li class="step1 curent">1.选择货品</li>
        <li class="step2">2.确认订单信息</li>
        <li class="step3">3.支付宝担保付款</li>
        <li class="step4">4.确认收货</li>
        <li class="step5">5.完成</li>
    </ul>
    <div class="title_bar">
        <div class="filed1">货品</div>
        <div class="filed2">单价(元)</div>
        <div class="filed3">&nbsp;</div>
        <div class="filed4">数量</div>
        <div class="filed5">金额(元)</div>
        <div class="filed6">操作</div>
    </div>
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <div class="title_bar" id="odhd_<%#Eval("id") %>">
                <div class="filed_left">供应商：<a href="http://shop<%#Eval("memberid") %>.ds568.net" target="_blank"><%#Eval("CompanyName") %></a> <a href="http://wpa.qq.com/msgrd?v=3&uin=<%#Eval("qq") %>&site=qq&menu=yes"><img onload="if(this.width>16) $(this).next().text('在线洽谈');" src="http://wpa.qq.com/pa?p=2:<%#Eval("qq") %>:4" alt="给我留言" /><span>给我留言</span></a></div><div class="filed_right"><span>本店不支持混批</span> <a href="http://shop<%#Eval("memberid") %>.ds568.net" target="_blank">继续采购</a></div>
            </div>
            <div class="mid_wrap" id="mdw_<%#Eval("id") %>">
                <asp:Repeater ID="Repeater2" runat="server">
                    <ItemTemplate>
                        <div class="pro_item_wrap" ind="<%#Container.ItemIndex %>">
                            <div class="item_1"><input ind="<%#Container.ItemIndex %>" oid="<%#Eval("orderid") %>" pid="<%#Eval("productid") %>" type="checkbox" checked />&nbsp;</div>
                            <div class="item_2"><img onload="changeImg(this,56,100)" onerror="javascript:this.src='http://img.china.alibaba.com/news/upload/5002027/48x48_1276134613200.gif'" src="<%#Eval("imgurl") %>"  /></div>
                            <div class="item_3"><a href="#"><%#Eval("proname") %></a></div>
                            <div class="item_4">
                                <%#Eval("PriceRang") %>
                            </div>
                            <div class="item_5">×</div>
                            <div class="item_6" oid="<%#Eval("orderid") %>" ind="<%#Container.ItemIndex %>"><a pid="<%#Eval("productid") %>" href="javascript:void(0);"> -</a>&nbsp;<input pid="<%#Eval("productid") %>" value="<%#Eval("proNum") %>" />&nbsp;<a href="javascript:void(0);"  pid="<%#Eval("productid") %>">+</a></div>
                            <div class="item_7"> ＝</div>
                            <div class="item_8"><%#Eval("amount") %></div>
                            <div class="item_9"><a href="javascript:void(0)" oid="<%#Eval("orderid") %>" ind="<%#Container.ItemIndex %>" pid="<%#Eval("productid") %>">删除</a></div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <div class="pro_item_wrap item_bottom" id="odbt_<%#Eval("id") %>">
                <div class="btm_left"><input type="checkbox" oid="<%#Eval("id") %>" id="chk_<%#Container.ItemIndex %>" checked /><label for="chk_1">全选</label> <a class="del_chk" oid="<%#Eval("id") %>" href="javascript:void(0);">删除所选 </a></div>
                <p class="btm_right">货品金额总计(不包含运费)：<span class="amount" id="am_<%#Eval("id") %>"><%#Eval("amount") %></span>元<span class="margin_1em"></span><a class="make_order" oid="<%#Eval("id") %>" href="javascript:void(0);"><span>确认下单</span></a></p>
            </div>
        </ItemTemplate>
    </asp:Repeater>
    <div class="norecord">进货单中没有任何商品。</div>
</div>
</asp:Content>

