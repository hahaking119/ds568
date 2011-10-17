﻿<%@ Page Language="C#" MasterPageFile="~/Member/Manage/MasterPage.master" AutoEventWireup="true" CodeFile="DetailInfo.aspx.cs" Inherits="Member_Manage_CompanyInfo_DetailInfo" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <link href="Css/DetailInfo.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="js/DetailInfo.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<ul class="hmenu">
    <li>
        <div class="mLeft"></div>
        <div class="mMiddle">详细资料</div>
        <div class="mRight"></div>
    </li>
    <li class="request"><span class="red">*</span><span class="gray">表示该项必填</span></li>
</ul>
<div class="Remind">
   <div class="red"> 重要提醒：</div> 
   贵公司的资料上网后会受到其他客户及工商质检部门等多方关注，请如实填写！因此虚假信息产生的相关责任，将由贵公司自行承担！ 
</div>
<ul class="ctList">
    <li><span>法定代表人/负责人：</span><div class="floatL"><input  class="txtbox LegRep" value="<%=ViewState["LegRep"] %>" name="LegRep" maxlength="20" /></div></li>
    <li><span>开户银行：</span><div class="floatL"><input  class="txtbox" value="<%=ViewState["Bank"] %>" name="Bank" maxlength="100" /></div></li>
    <li><span>帐号：</span><div class="floatL"><input  class="txtbox" value="<%=ViewState["Account"] %>" name="Account" maxlength="100" /></div></li>
    <li><span>厂房面积：</span><div class="floatL"><input  class="txtbox" value="<%=ViewState["StorageArea"] %>" name="StorageArea" maxlength="100" />（平方米）</div></li>
    <li><span>员工人数：</span><div class="floatL"> <select name="Employees">
                <option value="0">-- 请选择 --</option>
                 						<option value="1"  >少于5 人</option>
										<option value="2"  >5 - 10 人</option>
										<option value="3"  >11 - 20 人</option>
										<option value="4"  >21 - 30 人</option>
										<option value="5"  >31 - 40 人</option>
										<option value="6"  >41 - 50 人</option>
										<option value="7"  >51 - 60 人</option>
										<option value="8"  >61 - 70 人</option>
										<option value="9"  >71 - 80 人</option>
										<option value="10"  >81 - 90 人</option>
										<option value="11"  >91 - 100 人</option>
										<option value="12"  >101 - 300 人</option>
										<option value="21"  >301 - 500 人</option>
										<option value="22"  >501 - 1000 人</option>
										<option value="23"  >1000 人以上</option>
				              </select>  </div></li>
    <li><span>研发部门人数：</span><div class="floatL">
    <select name="StudyEmployees" >
                <option value="0">--请选择--</option>
					   						<option value="1"  >少于5 人</option>
					   						<option value="2"  >5 - 10 人</option>
					   						<option value="3"  >11 - 20 人</option>
					   						<option value="4"  >21 - 30 人</option>
					   						<option value="5"  >31 - 40 人</option>
					   						<option value="6"  >41 - 50 人</option>
					   						<option value="7"  >51 - 60 人</option>
					   						<option value="8"  >61 - 70 人</option>
					   						<option value="9"  >71 - 80 人</option>
					   						<option value="10"  >81 - 90 人</option>
					   						<option value="11"  >91 - 100 人</option>
					   						<option value="12"  >101 - 300 人</option>
					   						<option value="21"  >301 - 500 人</option>
					   						<option value="22"  >501 - 1000 人</option>
					   						<option value="23"  >1000 人以上</option>
					                 </select>
    </div></li>
    <li><span>品牌名称：</span><div class="floatL"><input  class="txtbox" value="<%=ViewState["BrandName"] %>" name="BrandName" maxlength="32" /></div></li>
    <li><span>月产量：</span><div class="floatL"><input  class="txtbox Monthly" value="<%=ViewState["Monthly"] %>" name="Monthly" maxlength="10" /> <select name="unit">
                <option value="0">--请选择--</option>
<option value="151"  >公升</option>
<option value="164"  >码</option>
<option value="183"  >升</option>
<option value="218"  >桶</option>
<option value="1"  >面</option>
<option value="2"  >把</option>
<option value="3"  >包</option>
<option value="4"  >本</option>
<option value="5"  >部</option>
<option value="6"  >打</option>
<option value="7"  >袋</option>
<option value="8"  >吊</option>
<option value="9"  >顶</option>
<option value="10"  >对</option>
<option value="12"  >吨</option>
<option value="14"  >幅</option>
<option value="15"  >个</option>
<option value="20"  >根</option>
<option value="21"  >公斤</option>
<option value="22"  >罐</option>
<option value="23"  >毫米</option>
<option value="24"  >毫升</option>
<option value="25"  >盒</option>
<option value="26"  >架</option>
<option value="27"  >件</option>
<option value="29"  >节</option>
<option value="30"  >具</option>
<option value="31"  >卷</option>
<option value="32"  >卡</option>
<option value="33"  >颗</option>
<option value="34"  >棵</option>
<option value="35"  >克</option>
<option value="36"  >块</option>
<option value="37"  >款</option>
<option value="38"  >厘米</option>
<option value="39"  >粒</option>
<option value="41"  >辆</option>
<option value="42"  >枚</option>
<option value="44"  >米</option>
<option value="45"  >盆</option>
<option value="46"  >片</option>
<option value="47"  >平方厘米</option>
<option value="48"  >平方米</option>
<option value="49"  >平方英尺</option>
<option value="50"  >瓶</option>
<option value="51"  >千克</option>
<option value="52"  >束</option>
<option value="53"  >双</option>
<option value="55"  >台</option>
<option value="56"  >套</option>
<option value="58"  >条</option>
<option value="61"  >头</option>
<option value="62"  >箱</option>
<option value="63"  >英寸</option>
<option value="64"  >盏</option>
<option value="65"  >张</option>
<option value="66"  >支</option>
<option value="68"  >只</option>
<option value="71"  >株</option>
<option value="72"  >组</option>
<option value="73"  >尊</option>
<option value="74"  >座</option>
<option value="1035"  >路</option>
<option value="1095"  >票</option>
<option value="1096"  >单</option>
<option value="1135"  >立方</option>
<option value="1175"  >立方根</option>
<option value="1195"  >平方市尺</option>
              </select>      </div></li>
    <li><span>年营业额：</span><div class="floatL"><select name="AnnualTurnover" >
                <option value="0">--请选择--</option>
                							<option value="1"  >人民币 10 万元以下</option>
											<option value="2"  >人民币 10 万元 - 30 万元</option>
											<option value="3"  >人民币 30 万元 - 50 万元</option>
											<option value="4"  >人民币 50 万元 - 100 万元</option>
											<option value="5"  >人民币 100 万元 - 200 万元</option>
											<option value="6"  >人民币 200 万元 - 300 万元</option>
											<option value="7"  >人民币 300 万元 - 500 万元</option>
											<option value="8"  >人民币 500 万元 - 700 万元</option>
											<option value="9"  >人民币 700 万元 - 1000 万元</option>
											<option value="10"  >人民币 1000 万元 - 2000 万元</option>
											<option value="11"  >人民币 2000 万元 - 3000 万元</option>
											<option value="12"  >人民币 3000 万元 - 5000 万元</option>
											<option value="13"  >人民币 5000 万元 - 1 亿元</option>
											<option value="14"  >人民币 1 亿元以上</option>
				              </select></div></li>
    <li><span>年进口额：</span><div class="floatL"><select name="AnnualImports">
			    <option value="0">--请选择--</option>
                 							<option value="1"  >人民币 10 万元以下</option>
											<option value="2"  >人民币 10 万元 - 30 万元</option>
											<option value="3"  >人民币 30 万元 - 50 万元</option>
											<option value="4"  >人民币 50 万元 - 100 万元</option>
											<option value="5"  >人民币 100 万元 - 200 万元</option>
											<option value="6"  >人民币 200 万元 - 300 万元</option>
											<option value="7"  >人民币 300 万元 - 500 万元</option>
											<option value="8"  >人民币 500 万元 - 700 万元</option>
											<option value="9"  >人民币 700 万元 - 1000 万元</option>
											<option value="10"  >人民币 1000 万元 - 2000 万元</option>
											<option value="11"  >人民币 2000 万元 - 3000 万元</option>
											<option value="12"  >人民币 3000 万元 - 5000 万元</option>
											<option value="13"  >人民币 5000 万元 - 1 亿元</option>
											<option value="14"  >人民币 1 亿元以上</option>
				              </select> </div></li>
    <li><span>年出口额：</span><div class="floatL"><select name="AnnualExport" >
                <option value="0">--请选择--</option>
                 							<option value="1"  >人民币 10 万元以下</option>
											<option value="2"  >人民币 10 万元 - 30 万元</option>
											<option value="3"  >人民币 30 万元 - 50 万元</option>
											<option value="4"  >人民币 50 万元 - 100 万元</option>
											<option value="5"  >人民币 100 万元 - 200 万元</option>
											<option value="6"  >人民币 200 万元 - 300 万元</option>
											<option value="7"  >人民币 300 万元 - 500 万元</option>
											<option value="8"  >人民币 500 万元 - 700 万元</option>
											<option value="9"  >人民币 700 万元 - 1000 万元</option>
											<option value="10"  >人民币 1000 万元 - 2000 万元</option>
											<option value="11"  >人民币 2000 万元 - 3000 万元</option>
											<option value="12"  >人民币 3000 万元 - 5000 万元</option>
											<option value="13"  >人民币 5000 万元 - 1 亿元</option>
											<option value="14"  >人民币 1 亿元以上</option>
				              </select> </div></li>
    <li><span>管理体系认证：</span><div class="floatL">
              <input id="Certification1" name="MSCer" type="radio" value="ISO 9000" /><label for="Certification1">ISO 9000</label>
              <input id="Certification2" type="radio" name="MSCer" value="ISO 9001" /><label for="Certification2">ISO 9001</label>
              <input id="Certification3" type="radio" name="MSCer" value="ISO 9002" /><label for="Certification3">ISO 9002</label>
              <input id="Certification4" type="radio" name="MSCer" value="ISO 9003" /><label for="Certification4">ISO 9003</label>
              <input id="Certification5" type="radio" name="MSCer" value="ISO 9004" /><label for="Certification5">ISO 9004</label>
              <input id="Certification6" type="radio" name="MSCer" value="ISO 14000" /><label for="Certification6">ISO 14000</label><br>
              <label for="CertificationOther">其他：</label><input  maxlength="32" name="MSCer" class="txtbox Monthly" value=""/></div></li>
    <li><span>质量控制：</span><div class="floatL"><input id="qc1" type="radio"  value="1" name="qc"  /><label for="qc1">内部</label>
              <input id="qc2" type="radio"  value="2" name="qc"  /><label for="qc2">第三方</label>
              <input id="qc3" type="radio"  value="3" name="qc" /><label for="qc3">无</label></div></li>
    <li><span>主要市场：</span><div class="floatL"> <input id="TradeRegion1" type="checkbox" 
			   value="大陆" name="mainmarket"  /><label for="TradeRegion1">大陆</label>
              <input id="TradeRegion2" type="checkbox"
			   value="港澳台地区" name="mainmarket" /><label for="TradeRegion2">港澳台地区</label>
              <input id="TradeRegion3" type="checkbox"
			   value="北美" name="mainmarket" /><label for="TradeRegion3">北美</label>
              <input id="TradeRegion4" type="checkbox"
			   value="南美" name="mainmarket" /><label for="TradeRegion4">南美</label>
              <input id="TradeRegion5" type="checkbox"
			   value="西欧" name="mainmarket"/><label for="TradeRegion5">西欧</label>
              <input id="TradeRegion6" type="checkbox"
			   value="东欧" name="mainmarket" /><label for="TradeRegion6">东欧</label>
              <input id="TradeRegion7" type="checkbox"
			   value="东亚" name="mainmarket" /><label for="TradeRegion7">东亚</label>
              <input id="TradeRegion8" type="checkbox"
			   value="东南亚" name="mainmarket" /><label for="TradeRegion8">东南亚</label>
              <input id="TradeRegion9" type="checkbox"
			   value="中东" name="mainmarket" /><label for="TradeRegion9">中东</label>
              <input id="TradeRegion10" type="checkbox"
			   value="非洲" name="mainmarket" /><label for="TradeRegion10">非洲</label>
              <input id="TradeRegion11" type="checkbox"
			   value="大洋洲" name="mainmarket" /><label for="TradeRegion11">大洋洲</label>
            </div></li>
    <li><span>主要客户群：</span><div class="floatL"><input  class="txtbox" value="<%=ViewState["MajorCustomers"] %>" name="MajCust" maxlength="200" /> 如：电子厂，电子市场</div></li>
    <li><span>是否提供OEM代加工：</span><div class="floatL"><input id="OemOdmYes" type="radio"    value="1" name="oem" /><label for="OemOdmYes">是</label>
    <input id="OemOdmNo" type="radio"  value="0" name="oem" /><label for="OemOdmNo">否</label></div></li>
    <li><span>&nbsp;</span><asp:Button ID="Button1" CssClass="subBtn" runat="server" Text="保存" /></li>
</ul>
</asp:Content>

