﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Add.aspx.cs" Inherits="DSAdmin_Product_ProValue_Add" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <Custom:Header runat="server" ID="Header1" />
    <link href="/DSAdmin/tab/Css/tab.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table cellpadding=0 cellspacing=1 class="tab">
        <tr>
            <td class="tdtitle">当前属性：</td>
            <td>
                <%=ViewState["proName"]%>
            </td>
        </tr>
        <tr>
            <td class="tdtitle">属性值：</td>
            <td>
                <input class="txtbox" runat="server" id="proVal"  /> 
            </td>
        </tr>
        
    </table>
    <div class="divsub"><span></span><asp:Button ID="Button1" runat="server" CssClass="btn" Text="保存" /> <input type="button" class="btn" onclick="location='list.aspx?ProID=<%=Request.QueryString["ProID"] %>'" value="返回列表" /></div>
    </form>
</body>
</html>
