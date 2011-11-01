﻿$(document).ready(function(){
   function cliclick(obj){
       var li=$(obj)
      
       li.parent().find("li").removeClass("selected");
       li.addClass("selected");
       var nul=li.parent().next();
       nul.empty();//清空当前li对应ul的下一个ul的li
       if(li.parent().attr("id")=="c1")//如果点击的是第一个ul则除了第二个外，还要清除第三个ul
            $("#c3").empty();
       if(li.hasClass("hassub")){//点击时如果存在子类目，则进行获取
            $.get("post.aspx",{action:"subcat",pid:li.attr("cid"),rd:Math.random()},
                function (data, textStatus){
                nul.append(data);
                nul.find("li").click(function(){
                   cliclick(this)
                });
            });
       }
       var c1v=$.trim($("#c1 li.selected").text());
       var c2v=$("#c2 li.selected").text();
       var c3v=$("#c3 li.selected").text();
       if(c2v!="")
          c1v+=" > "+c2v;
       if(c3v!="")
          c1v+=" > "+c3v;
       $(".Remind span").text(c1v);
       
       //加载属性
       $(".property").load("post.aspx",{action:"property",cid:li.attr("cid"),rd:Math.random()},function(){
               
       });
   }
   $(".iRight ul li").click(function(){
        cliclick(this)
   });
   
   $("#acatdiy").click(function(){
       $(".catDiy").toggle();
   });
   
   
});