﻿<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="Home_index" Title="Untitled Page" %>
<asp:Content ID="Content2" ContentPlaceHolderID="Title" Runat="Server">
    <title>点石IT网ds568.net, 中国最专业的IT产品采购平台、批发市场和商人社区</title>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link href="/home/css/index.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
var ind=0;
var interval;
$(document).ready(function(){
		var obj=$('.list').find('li')
	    obj.each(function(i){
			   $(this).bind('mouseover',function(){
			   	   switch(i){
				      case 0:
						ind=0
						switchAd()
						window.clearInterval(interval)
					  	break;  
					  case 1:
						ind=1
						switchAd()
						window.clearInterval(interval)
					    break;
					  case 2:
						 ind=2
						 switchAd()
						 window.clearInterval(interval)
						 break;
				   };
			   });
			   
			   $(this).bind('mouseout',function(){
					interval=window.setInterval("switchAd()",3000);
				});
		});
	  
	  //定时广告切换开始
	  interval=setInterval(switchAd,3000);	
	  
	  //控制热门产品第一个li的样式
	   $('.hotProducts li:nth-child(1)').css("font-weight","bold");
	   
	   //会员动态第一条
	   $('.cnBody_row1 li:nth-child(1)').addClass("cnBody_row1_li_1");
	   
	   //促销专场，使第一列（即奇数列）与偶数列隔开8像素
	   $('.cnBody_row2 ul li:nth-child(odd)').css("margin-right","8px");
	   
	   //促销专场滚动
	   Scroller();

		 
		//为促销快递切换绑定mouseover和mouseout事件，这样可以当鼠标放上去时暂停切换，离开时重新进行切换
		$('#scrollBody').bind('mouseover',function(){
			clearInterval(intervalCS)
			clearTimeout(timeout)
		});
		
		$('#scrollBody').bind('mouseout',function(){
			Scroller();
		});
	}

);


//广告切换
function switchAd(){
	var obj=$('.list').find('li')
	var divs=$('#js-banner-tab').find('div')
	switch(ind){
		case 0:
			obj[0].className='adCurrent';
			obj[1].className='l2';
			obj[2].className='l3';
			divs[0].className='f-tab-b'
			divs[1].className='f-tab-b fd-hide'
			divs[2].className='f-tab-b fd-hide'
			break;
		case 1:
			obj[0].className='';
			obj[1].className='l2 adCurrent';
			obj[2].className='l3';
			divs[0].className='f-tab-b fd-hide'
			divs[1].className='f-tab-b'
			divs[2].className='f-tab-b fd-hide'
			break;
		case 2:
			obj[0].className='';
			obj[1].className='l2';
			obj[2].className='l3 adCurrent';
			divs[0].className='f-tab-b fd-hide'
			divs[1].className='f-tab-b fd-hide'
			divs[2].className='f-tab-b'
			break;
	}
	ind++;
	if(ind>2)
		ind=0;
}



//鼠标经过一级分类时根据屏幕高度调整二级分类的位置
function setPos(obj){
	var st=$(document.documentElement?document.documentElement:document.body).scrollTop()
	var bh= $(document.documentElement?document.documentElement:document.body)[0].clientHeight
	var ch=$(obj).find('ul').height()
	var offsetH=$(obj).offset().top
	var avH=bh-(offsetH-st)
	if(avH<ch){
		$(obj).find('ul').css('top',avH-ch-4)
    }else{
		$(obj).find('ul').css('top','-1px')
	}
}

//促销专场滚动特效
var ScrollMaxGroup=7 //最大组数
var ScrollGroupIndex=1  //计算当前滚动的是第几组
var ScrollMaxIndex=3  //每组最大记录数
var ScrollIndex=1  //计算当前滚动的是第几条
var uls //要滚动的元素
var GroupDelay=4000 //切换完一组后的延时
var itemDelay=30 //切换一条记录的间隔
var lineHeight=22 //每条记录高度
var step=2 //每次间隔滚动的高度,必须能与lineHeight整除
var intervalCS 
var time=1 //计算滚动次数,当等于lineHeight/step 时,说明一条记录滚动完成
var timeout
var sys=true;
function Scroller(){
	if(!uls)
		uls=$('#scrollBody').find('ul');
	if(ScrollGroupIndex>ScrollMaxGroup){
		ScrollGroupIndex=1;
		if(ScrollIndex==ScrollMaxIndex)
			ScrollIndex=1;
		else
			ScrollIndex++;
	}
	intervalCS=setInterval(scrollByTime,itemDelay); 
}

function scrollByTime(){
		sys=true;
		uls[ScrollGroupIndex-1].scrollTop+=step
		if(time<lineHeight/step){
			sys=false
			time++
		}
		else{
			sys=true
			time=1
			clearInterval(intervalCS)
			if(ScrollIndex>=ScrollMaxIndex){
			  uls[ScrollGroupIndex-1].scrollTop=0;
			}
			ScrollGroupIndex++
			if(ScrollGroupIndex>ScrollMaxGroup)
				timeout=setTimeout(Scroller,GroupDelay);
			else
				Scroller()
		}
}
 
</script>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!--==========数据信息开始===============-->
<div class="dataInfo">
当前共10000个会员，最新注册会员19，更新产品报价1000，新添产品2000
</div>
<!--==========数据信息结束===============-->

<!--==========主体开始=======================-->
<div  class="mainContent">
	<!--=========主体第一行开始============-->
    <div class="mcRow1">
	<!--=========主体第一行左边开始============-->
    <div class="contentLeftFather">
	<div  id="contentLeft">
        <div id="CategoryTitle">产品分类</div>
        <ul id="categoryContainer">
            <li onmouseover="setPos(this)" ><a  href="#">数码产品</a><ul>
                <li><a href="#">MP3</a></li>
                <li><a href="#">MP4</a></li>
                <li><a href="#">U盘</a></li>
                <li><a href="#">摄像头</a></li>
                <li><a href="#">移动硬盘</a></li>
                <li><a href="#">PDA</a></li>
                <li><a href="#">DC</a></li>
                <li><a href="#">DV</a></li>
                <li><a href="#">数码相框</a></li>
                <li><a href="#">便携式碟机</a></li>
                <li><a href="#">MP3</a></li>
                <li><a href="#">MP4</a></li>
                <li><a href="#">U盘</a></li>
                <li><a href="#">摄像头</a></li>
                <li><a href="#">移动硬盘</a></li>
                <li><a href="#">PDA</a></li>
                <li><a href="#">DC</a></li>
                <li><a href="#">DV</a></li>
                <li><a href="#">数码相框</a></li>
                <li><a href="#">便携式碟机</a></li>
                </ul><div></div>
            </li>
            <li onmouseover="setPos(this)"><a href="#">手机通讯</a><ul>
                <li><a href="#">手机</a></li>
                <li><a href="#">小灵通</a></li>
                <li><a href="#">固定电话</a></li>
                <li><a href="#">对讲机</a></li>
                <li><a href="#">电话卡</a></li>
                <li><a href="#">诺基亚</a></li>
                <li><a href="#">三星</a></li>
                <li><a href="#">摩托罗拉</a></li>
                <li><a href="#">索爱</a></li>
                <li><a href="#">多普达</a></li>
                <li><a href="#">手机</a></li>
                <li><a href="#">小灵通</a></li>
                <li><a href="#">固定电话</a></li>
                <li><a href="#">对讲机</a></li>
                <li><a href="#">电话卡</a></li>
                <li><a href="#">诺基亚</a></li>
                <li><a href="#">三星</a></li>
                <li><a href="#">摩托罗拉</a></li>
                <li><a href="#">索爱</a></li>
                <li><a href="#">多普达</a></li>
                </ul><div></div>
            </li>
            <li onmouseover="setPos(this)"><a href="#">数码配件</a><ul>
                <li><a href="#">闪存卡</a></li>
                <li><a href="#">读卡器</a></li>
                <li><a href="#">数码伴侣</a></li>
                <li><a href="#">耳机</a></li>
                <li><a href="#">视频卡</a></li>
                <li><a href="#">电池</a></li>
                <li><a href="#">转接卡/线</a></li>
                <li><a href="#">数码眼镜</a></li>
                <li><a href="#">外壳</a></li>
                <li><a href="#">麦克风</a></li>
                <li><a href="#">镜头</a></li>
                <li><a href="#">三角架</a></li>
                <li><a href="#">相机包</a></li>
                <li><a href="#">电源适配器</a></li>
                <li><a href="#">更多&gt;&gt;</a></li>
                </ul><div></div></li>
            <li><a href="#">手机配件</a></li>
            <li><a href="#">笔记本电脑及配件</a></li>
            <li><a href="#">电脑配件</a></li>
            <li><a href="#">台式机服务器</a></li>
            <li><a href="#">电脑相关用品</a></li>
            <li><a href="#">笔记本电脑及配件</a></li>
            <li><a href="#">网络设备</a></li>
            <li><a href="#">办公设备</a></li>
            <li><a href="#">无线网络</a></li>
            <li><a href="#">耗材</a></li>
            <li><a href="#">加工合作</a></li>
            <li><a href="#">软件</a></li>
            <li><a href="#">库存/二手电脑</a></li>
            <li><a href="#">其他未分类</a></li>
        </ul>
    </div>
    <img class="A04" src="http://img.alibaba.com/images/cms/upload/viframe/country/usa.gif" />
    </div>
    <!--=========主体第一行左边结束============-->
    
    <!--=========主体第一行右边开始============-->
    	<div id="contentRight">
        	  <!--===========第一行开始===========-->
                <div>
           <div class="mod-banner-tab" id="js-banner-tab">
                            <div class="f-tab-b">
                                <a  href="http://view.china.alibaba.com/cms/xsppf/xiaojiadiancs.html?tracelog=xsp_zhongwenshouye_lunbo1_366_198" title="生活小家电专场">
                                    <img width="552" src="http://img.alibaba.com/images/cms/upload/banners/201009/100921_usbflash_550x210.jpg" alt="生活小家电专场"/>
                                </a>
                            </div>
                            <div class="f-tab-b fd-hide">
                                <a href="http://view.china.alibaba.com/cms/shichang/freeny/index.html"title="免费拿样">
                                    <img width="552" src="http://i03.i.aliimg.com/images/cms/upload/seller/banner/550_210_20100820.jpg" alt="免费拿样"/>

                                </a>
                            </div>
                            <div class="f-tab-b fd-hide">
                                <a  href="http://view.china.alibaba.com/cms/promotion/anfang0920/index.html?tracelog=shouye-af0920-dlb" title="品牌监控专场">
                                    <img width="552" src=" http://img.alibaba.com/images/cms/upload/wholesale/promotion/2010/halloween/halloween_sale550x210_100921.jpg" alt="品牌监控专场"/>
                                </a>
                            </div>
                            <ul class="list">
                                <li class="adCurrent"><a href="#">生活小家电专场</a></li>
                                <li class="l2"><a href="#">免费拿样</a></li>
                                <li class="l3"><a href="#">品牌监控专场</a></li>
                            </ul>
                           
                        </div>
                        <div class="login">
                        	<div class="loginHead">
                            	<ul>
                                	<li class="loginLi1"><a href="#">免费注册</a></li>
                                    <li><a href="#">用户登陆</a></li>
                                </ul>
                            </div>
                            <ul class="useListen">
                                <li><a href="#">本站能为我提供什么服务&nbsp;[详情]</a></li>
                                <li><a href="#">如何在本站推广您的产品&nbsp;[详情]</a></li>
                                <li><a href="#">我们的七大技术优势&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[详情]</a></li>
                            	<li><a href="#">网站使用流程全功略&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[详情]</a></li> 
                            </ul>
                            <div class="sepriTitle"><span class="seleft">最新公告</span><span class="seright"><a href="#">更多<span>&gt;</span></a></span></div>
                            <ul class="bulletin">
                            	<li><a href="#">IT供应商互动平台隆重上线</a></li>
                                <li><a href="#">IT供应商互动平台隆重上线</a></li>
                                <li><a href="#">IT供应商互动平台隆重上线</a></li>
                                <li><a href="#">IT供应商互动平台隆重上线</a></li>
                            </ul>
                        </div>  
                     </div>
                        <!--===========第一行结束===========-->
                      
                        <!--===========第二行开始===========-->
                        <div class="mainRightRow2">
                        	<div class="mrr2Head">
                           <div class="mrr2Head_1"><strong class="marketers-title-bg">卖家</strong><strong class="s2">最新供应</strong><a href="#">更多</a></div>
                           <div class="mrr2Head_1"><strong class="marketers-title-bg">买家</strong><strong class="s2">最新求购</strong><a  href="#">更多</a></div>
                           <div class="mrr2Head_1"><strong class="s2 mg5">最新加盟商家</strong><a class="more3" href="#">更多</a></div>
                            </div>
                            <div>
                                <div class="newSupply">
                                    <ul>
                                    	<li><a href="#">欧美人气扎染磨白显瘦弹力打底裤...</a></li>
                                        <li><a href="#">4126女式打底裤 网络爆款 网店分...</a></li>
                                        <li><a href="#">美国原单 300G冰丝加绒显瘦超强...</a></li>
                                        <li class="liSpri"><a href="#">F06387黑裙 灰裤 踩脚 秋冬 连裙...</a></li>
                                        
                                        <li><a href="#">欧美人气扎染磨白显瘦弹力打底裤...</a></li>
                                        <li><a href="#">4126女式打底裤 网络爆款 网店分...</a></li>
                                        <li><a href="#">美国原单 300G冰丝加绒显瘦超强...</a></li>
                                        <li class="liSpri"><a href="#">F06387黑裙 灰裤 踩脚 秋冬 连裙...</a></li>
                                       
                                        <li><a href="#">939服装代理瑞丽韩版踩脚裤R</a></li>
                                        <li><a href="#">批发中高档韩版品牌童装 纯棉女...</a></li>
                                        <li><a href="#">82LAND女童打底裤贴布绣打底裤20...</a></li>
                                        <li class="liSpri"><a href="#">最新特价热卖韩流帅气白铆钉短裙...</a></li>
                                        
                                        <li><a href="#">瑞丽韩版2506#新款别致裙裤</a></li>
                                        <li><a href="#">新款热卖不规则图案针织弹力女式...</a></li>
                                        <li><a href="#">L601批发韩版女装黑白竖条纹超显...</a></li>
                                        <li><a href="#">甜美女孩006梦幻星星月亮图案优...</a></li>
                                    </ul>
                                </div>
                                <div class="newBuy">
                                 <ul>
                                <li><a href="#">求购打底裤</a></li>
                                <li><a href="#">求购 棉氨纶 九分裤 蕾丝印花...</a></li>
                                <li><a href="#">求购 女装</a></li>
                                <li class="liSpri"><a href="#">求购 打底裤</a></li>
                              
                                <li><a href="#">求购九分童装打底裤 袜裤 毛衣...</a></li>
                                <li><a href="#">求购女装外贸服饰打底衫打底裤</a></li>
                                <li><a href="#">求购 卡通袜 棉袜 短袜 连裤袜...</a></li>
                                <li class="liSpri"><a href="#">求购库存打底裤</a></li>
                                
                                <li><a href="#">求购女打底裤</a></li>
                                <li><a href="#">求购打底裤</a></li>
                                <li><a href="#">求购提花毛线打底裤</a></li>
                                <li class="liSpri"><a href="#">求购毛裤</a></li>
                              
                                <li><a href="#">求购女打底裤</a></li>
                                <li><a href="#">求购打底裤</a></li>
                                <li><a href="#">求购提花毛线打底裤</a></li>
                                <li><a href="#">求购毛裤</a></li>
                                </ul>
                                </div>
                                <div class="newMember">
                                	<ul>
                                    	<li><a href="#">张丽利（个体经营）</a></li>
                                        <li><a href="#">义乌欣美百货贸易有限公司</a></li>
                                        <li><a href="#">汕头市恩尼贝贝制衣厂</a></li>
                                        <li class="liSpri"><a href="#">义乌可菲贸易有限公司</a></li>
                                        <li><a href="#">朱慧娟（个体经营）</a></li>
                                        <li><a href="#">陈加发(个体经营)</a></li>
                                        <li><a href="#">丁华兵（个体经营）</a></li>
                                  <li class="liSpri"><a href="#">义乌欣美百货贸易有限公司一部</a></li>
                                        <li><a href="#">张丽利（个体经营）</a></li>
                                        <li><a href="#">义乌欣美百货贸易有限公司</a></li>
                                        <li><a href="#">汕头市恩尼贝贝制衣厂</a></li>
                                        <li class="liSpri"><a href="#">义乌可菲贸易有限公司</a></li>
                                        <li><a href="#">朱慧娟（个体经营）</a></li>
                                        <li><a href="#">陈加发(个体经营)</a></li>
                                        <li><a href="#">丁华兵（个体经营）</a></li>
                                        <li><a href="#">义乌欣美百货贸易有限公司一部</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                     <!--===========第二行结束===========-->
        </div>
    <!--=========主体第一行右边结束============-->
       </div>
  
  
   <div class="mcRow2">     
   	   <div class="mcRow2Left"></div>
       <div class="mcRow2Middle">
           <div>
           	  <div class="hotProductsTitle">
              </div>
           </div>
           <div class="hpSpre"></div>
           <div class="hotProducts">
           <img src="http://i03.i.aliimg.com/images/cms/upload/homepage_hot_products_cm/100728/145x120_bathroom_products.jpg" width="145" height="120" />
           <ul>
           	<li><a href="#">Bathroom Products</a></li>
            <li><a href="#">Cast Iron Bathtubs</a></li>
 			<li><a href="#">Thermostatic Faucets</a></li>
            <li><a href="#">Bathroom Vanities</a></li>
           </ul>
           </div>
           <div class="hpSpre"></div>
            <div class="hotProducts">
            <ul>
            	<li><a href="#">Quality Machine Tools</a></li>
                <li><a href="#">CNC Milling Machines</a></li>
                <li><a href="#">Gear Cutting Machines</a></li>
                <li><a href="#">Machine Centers</a></li>
            </ul>
 <img src="http://i03.i.aliimg.com/images/cms/upload/homepage_hot_products_cm/personalized_marketing/100817/machinery.jpg" width="145" height="120" />
           </div>
           <div class="hpSpre"></div>
            <div class="hotProducts">
 <img src="http://i03.i.aliimg.com/images/cms/upload/promotional/products/novelty/moto2.jpg" width="145" height="120" />
 			  <ul>
            	<li><a href="#">Quality Machine Tools</a></li>
                <li><a href="#">CNC Milling Machines</a></li>
                <li><a href="#">Gear Cutting Machines</a></li>
                <li><a href="#">Machine Centers</a></li>
            </ul>
           </div>
           <div class="hpSpre"></div>
            <div class="hotProducts">
            <ul>
            	<li><a href="#">Quality Machine Tools</a></li>
                <li><a href="#">CNC Milling Machines</a></li>
                <li><a href="#">Gear Cutting Machines</a></li>
                <li><a href="#">Machine Centers</a></li>
            </ul>
 <img src="http://i02.i.aliimg.com/images/cms/upload/homepage_hot_products_cm/personalized_marketing/100905/hot_products_0903.jpg" width="145" height="120" />
           </div>
           <div class="hpSpre"></div>
            <div class="hotProducts">
              <img src="http://i03.i.aliimg.com/images/cms/upload/homepage_hot_products_cm/100728/145x120_bathroom_products.jpg" width="145" height="120" />
           <ul>
           	<li><a href="#">Bathroom Products</a></li>
            <li><a href="#">Cast Iron Bathtubs</a></li>
 			<li><a href="#">Thermostatic Faucets</a></li>
            <li><a href="#">Bathroom Vanities</a></li>
           </ul>
           </div>
       </div>
       <div class="mcRow2Right"></div>
    </div><!--=========主体第二行结束============-->
    
   <div class="mcRow3" ><!--=========主体第三行开始============-->
   <!--========会员动态开始==========-->
   <div>
   	<div class="companyNews" >
    	<div class="cnHead"><div class="cnHead_1"></div><div class="cnHead_2">&nbsp;&nbsp;会员动态</div><div class="cnHead_3"></div></div>
        <div class="cnBody">
          <div class="cnBody_row1"><a href="#"><img src="http://i05.c.aliimg.com/news/upload/11/1_1286530825431.jpg" alt="" width="72" height="72" /></a>
            <ul>
              <li><a href="#">揭秘贝尔兰童装制作过程（多图）</a></li>
              <li><a href="#">[曝光]</a><a href="#">揭珍珠暴利链：成本400元可卖万元</a></li>
              <li><a href="#">[商机]</a><a href="#">千年极寒来袭   家居保暖提前准备</a></li>
            </ul>
          </div>
          <div class="cnBody_row2">
            <ul class="useListen">
              <li><a href="#">义乌电热水袋进入批发潮</a></li>
              <li><a href="#">微凉天VIVI西装让你赚大钱</a></li>
              <li><a href="#">15款创意型热卖玩具大搜罗</a></li>
              <li><a href="#">瞧！绝美皮衣淘宝店主抢疯</a></li>
              <li><a href="#">84元挥泪甩卖韩式折叠餐桌</a></li>
              <li><a href="#">年底2万辆新能源汽车上路</a></li>
            </ul>
          </div>
        </div>
    </div>
    <!--========会员动态结束==========-->
    <div class="cnSpre">&nbsp;</div>
    <!--========促销专场开始==========-->
    	<div class="companyNews"  >
    	<div class="cnHead"><div class="cnHead_1"></div><div class="cnHead_2">&nbsp;&nbsp;促销专场</div><div class="cnHead_3"></div></div>
        <div class="cnBody" >
        <div class="cnBody_row2" id="scrollBody" >
            <ul class="useListen scroller">
              <li><a href="#">1乌电热水袋进入批发潮</a></li>
              <li><a href="#">1凉天VIVI西装让你赚大钱</a></li>
              <li><a href="#">2款创意型热卖玩具大搜罗</a></li>
              <li><a href="#">2！绝美皮衣淘宝店主抢疯</a></li>
              <li><a href="#">3元挥泪甩卖韩式折叠餐桌</a></li>
              <li><a href="#">3底2万辆新能源汽车上路</a></li>
                <li><a href="#">4乌电热水袋进入批发潮</a></li>
              <li><a href="#">4凉天VIVI西装让你赚大钱</a></li>
           </ul>
           
          <ul class="useListen scroller">
              <li><a href="#">1乌电热水袋进入批发潮</a></li>
              <li><a href="#">1凉天VIVI西装让你赚大钱</a></li>
              <li><a href="#">2款创意型热卖玩具大搜罗</a></li>
              <li><a href="#">2！绝美皮衣淘宝店主抢疯</a></li>
              <li><a href="#">3乌电热水袋进入批发潮</a></li>
              <li><a href="#">3凉天VIVI西装让你赚大钱</a></li>
                <li><a href="#">4乌电热水袋进入批发潮</a></li>
              <li><a href="#">4凉天VIVI西装让你赚大钱</a></li>
           </ul>
           
           <ul class="useListen scroller">
               <li><a href="#">1凉天VIVI西装让你赚大钱</a></li>
               <li><a href="#">1乌电热水袋进入批发潮</a></li>
               <li><a href="#">2发供应戒指 浪漫玫瑰花</a></li>
               <li><a href="#">2银戒指 银饰批发 纯银饰品</a></li>
               <li><a href="#">3-0807 韩版饰品 韩国饰品</a></li>
               <li><a href="#">3然水晶批发/ 8mm紫晶圆珠</a></li>
                <li><a href="#">4凉天VIVI西装让你赚大钱</a></li>
               <li><a href="#">4乌电热水袋进入批发潮</a></li>
            </ul>
            
              <ul class="useListen scroller">
              <li><a href="#">1A5050藏银粉色滴油合金珠</a></li>
              <li><a href="#">1华复古泰银戒指/925纯</a></li>
               <li><a href="#">2新款】拉丝戒指 合金</a></li>
              <li><a href="#">2星饰品 高贵优雅黑白珠闪</a></li>
              <li><a href="#">3B能量平衡手环厂家大货直</a></li>
              <li><a href="#">3t950白金钻石对戒-时光</a></li>
               <li><a href="#">4A5050藏银粉色滴油合金珠</a></li>
              <li><a href="#">4华复古泰银戒指/925纯</a></li>
             </ul>
             
              <ul class="useListen scroller">
               <li><a href="#">1款潮流戒时尚韩版饰品简</a></li>
               <li><a href="#">1凉天VIVI西装让你赚大钱</a></li>
               <li><a href="#">2凉天VIVI西装让你赚大钱</a></li>
               <li><a href="#">2乌电热水袋进入批发潮</a></li>
               <li><a href="#">3购以下两款戒指，有生产过</a></li>
               <li><a href="#">3购表带扣，7mm铜表带扣</a></li>
               <li><a href="#">4款潮流戒时尚韩版饰品简</a></li>
                <li><a href="#">4凉天VIVI西装让你赚大钱</a></li>
            </ul>
            
              <ul class="useListen scroller">
              <li><a href="#">1购不锈钢手链，excel手链</a></li>
              <li><a href="#">1购负离子二代硅胶手表</a></li>
              <li><a href="#">2购硅胶手表表带，宽表表带</a></li>
              <li><a href="#">2购硅胶果冻表求购精美首饰</a></li>
               <li><a href="#">3购能量手环(实单前来洽谈)</a></li>
              <li><a href="#">3求购手镯6万</a></li>
              <li><a href="#">4求购不锈钢手链，excel手链</a></li>
               <li><a href="#">4购负离子二代硅胶手表</a></li>
              </ul>
              
               <ul class="useListen scroller">
              <li><a href="#">1求购手镯10万套</a></li>
              <li><a href="#">1求购手镯20万套</a></li>
               <li><a href="#">2求购硅胶手环</a></li>
              <li><a href="#">2微凉天VIVI西装让你赚大钱</a></li>
               <li><a href="#">3凉天VIVI西装让你赚大钱</a></li>
               <li><a href="#">3义乌电热水袋进入批发潮</a></li>
               <li><a href="#">4求购手镯10万套</a></li>
               <li><a href="#">4求购手镯20万套</a></li>
            </ul>
          </div>
        </div>
    </div>
    <!--========促销专场结束==========-->
    <div class="cnSpre">&nbsp;</div>
    </div>
    <!--========执门产品开始==========-->
    	<div class="interest">
    	<div class="cnHead inHead">&nbsp;&nbsp;您可能感兴趣</div>
        <div class="inBody">
       <ul>
            <li><a title="供应名片MP3  外贸礼品首选,全球最薄MP3" href="#" target="_blank"><img src="http://img.china.alibaba.com/img/offer/18/43/39/50/4/184339504.summ.jpg" alt="" onerror="javascript:this.src='http://img.china.alibaba.com/news/upload/5002027/48x48_1276134613200.gif'" />供应名片M</a></li>
            <li><a title="推荐日本大牌 SOUP 豹纹 百搭T恤 瑞丽 女装" href="#" target="_blank"><img src="http://img.china.alibaba.com/img/ibank/2010/783/741/128147387_400024101.summ.jpg" alt="" onerror="javascript:this.src='http://img.china.alibaba.com/news/upload/5002027/48x48_1276134613200.gif'" />推荐日本</a></li>
            <li><a  title="供应台式计算器，礼品计算器" href="#" target="_blank"><img src="http://img.china.alibaba.com/img/ibank/2010/450/709/180907054_1291013015.summ.jpg" alt="" onerror="javascript:this.src='http://img.china.alibaba.com/news/upload/5002027/48x48_1276134613200.gif'" />供应台式</a></li>
            <li><a  title="款号38 diorT恤字母印花T恤dior男装批发" href="#" target="_blank"><img src="http://img.china.alibaba.com/img/ibank/2010/560/931/130139065_108624389.summ.jpg" alt="" onerror="javascript:this.src='http://img.china.alibaba.com/news/upload/5002027/48x48_1276134613200.gif'" />款号38   di</a></li>
            <li><a  title="厂家直销批发供应假两件套长袖t恤 秋装批发" href="#" target="_blank"><img src="http://img.china.alibaba.com/img/ibank/2010/069/809/158908960_1445528723.summ.jpg" alt="" onerror="javascript:this.src='http://img.china.alibaba.com/news/upload/5002027/48x48_1276134613200.gif'" />厂家直销</a></li>
            <li><a  title="供应五金冲压件【冲压五金制品】" href="#" target="_blank"><img src="http://img.china.alibaba.com/img/product/54/06/56/54065673.summ.jpg" alt="" onerror="javascript:this.src='http://img.china.alibaba.com/news/upload/5002027/48x48_1276134613200.gif'" />供应五金冲</a></li>
          </ul> 
        </div>
        </div>
        <!--========执门产品结束==========-->
   </div>

   <div class="mcRow4">
     <div class="AdFrame" onclick="alert(this.clientWidth)">
     	<div class="AdHead"><img src="http://img.mmcdn.cn/t/20100926/201009260934351542.jpg" width="710" height="70" /></div>
       <div class="FriendLink">
            <ul class="useListen">
              <li><a href="http://news.alibaba.com/specials/aboutalibaba/index.html?tracelog=24581_foot_company_info" target="_blank" rel="nofollow">Company Information</a></li>
              <li><a href="http://news.alibaba.com/specials/aboutalibaba/partnership_with_alibaba.html?tracelog=24581_foot_partner_us" target="_blank" rel="nofollow">Partner with Us</a></li>
              <li><a href="http://www.alibaba.com/sitemap.html" target="_blank">Site Map</a></li>
              <li><a href="http://www.alibaba.com/trade/servlet/page/help/new_to_alibaba/alibaba_user_guide/alibaba_user_guide?showtour=on&amp;tracelog=24581_foot_user_guide" target="_blank" rel="nofollow">User Guide</a></li>
          
        
              <li><a href="http://us.my.alibaba.com/product/buyoffer/post_buying_lead.htm?tracelog=24581_foot_post_buying_leads" target="_blank" rel="nofollow">Post Buying Leads</a></li>
              <li><a href="http://www.alibaba.com/Products?cd=buyhome&amp;tracelog=24581_foot_browse_cate" target="_blank" rel="nofollow">Browse Categories</a></li>
              <li><a href="http://www.alibaba.com/countrysearch/continent.html" target="_blank">Browse by Country</a></li>
              <li><a href="http://www.aliexpress.com/" target="_blank">Buy on AliExpress</a></li>
              <li><a href="http://www.alibaba.com/help/buying-on-alibaba.html?tracelog=24581_foot_howtobuy" target="_blank">How to Buy</a></li>
         
              <li><a href="http://www.alibaba.com/trade/servlet/page/static/paid_memberships/index?tracelog=24581_foot_pre_membership" target="_blank" rel="nofollow">Premium Membership</a></li>
              <li><a href="http://us.my.alibaba.com/product/post_product.htm?tracelog=24581_foot_display_product" target="_blank" rel="nofollow">Display Products</a></li>
              <li><a href="http://us.my.alibaba.com/?tracelog=24581_foot_myalibaba" target="_blank" rel="nofollow">My Alibaba</a></li>
              <li><a href="http://www.alibaba.com/help/selling-on-alibaba.html?tracelog=24581_foot_howtosell" target="_blank">How to Sell</a></li>
           
              <li><a href="http://trademanager.alibaba.com/?tracelog=24581_foot_trade_manager" target="_blank" rel="nofollow">TradeManager</a></li>
              <li><a href="http://ask.alibaba.com/" target="_blank">Ask It!</a></li>
              <li><a href="http://price.alibaba.com/?tracelog=24581_foot_price_watch" target="_blank" rel="nofollow">Price Watch</a></li>
            </ul>
        </div>
     </div>
     <div class="Comment">
    	<div class="sugHead">&nbsp;&nbsp;&nbsp;&nbsp;您对本站的建议</div>
        <div class="sugBody">
       		<div>标题：<input id="sugTitle" name="" type="text" /></div>
            <div>内容：<textarea id="sugContent" name="" cols="" rows=""></textarea></div>
            <div class="sugBtn"><input  name="" type="button" value="提  交" />&nbsp;&nbsp;<input  name="" type="button" value="重 置" /></div>
        </div>
     </div>
   </div>
   <!--=======主体第四行结束===========-->
   
</div>
<!--==========主体结束=======================-->
</asp:Content>



