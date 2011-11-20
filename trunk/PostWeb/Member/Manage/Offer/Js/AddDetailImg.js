﻿$(document).ready(function(){
    $(".menu1 div,.menu2 div").click(function(){
        $(".menu1,.menu2").removeClass("menu1").addClass("menu2");
        var part=$(this).parent();
        part.removeClass("menu2").addClass("menu1");
        $(".ctnshow1,.ctnshow2").hide();
        $(".ctnshow"+$(this).attr("ind")).show()
        
    });
    
    $(".imgList li").hover(function(){
            $(this).css({"border-color":"#f7af0f","background-color":"#f8f3e8"})
        },
        function(){
            $(this).css({"border-color":"#ccc","background-color":"#fff"});
        }
    );
    
    function addimg(src){//添加待插入图片
        var imgl=$(".selImgList li img").length;
        if(imgl<8){
            //var obj=$().appendTo($(".selImgList li").eq(imgl));
            $(".selImgList li").eq(imgl).append("<img onload='changeImg(this,61,61)' src='"+src+"'/>").find("a").css("display","block");
            $(".insnum").text(++imgl)
            $("#insimgsrc").val($("#insimgsrc").val()+src+",");
        }
    }
    
    function reserv(){
        $(".selImgList li img").remove();
        $(".cls").css("display","none");
        var srcs=$("#insimgsrc").val().split(',')
        for(var i=0;i<srcs.length;i++){
            if(srcs[i]!=""){
                $(".selImgList li").eq(i).append("<img onload='changeImg(this,61,61)' src='"+srcs[i]+"'/>").find("a").css("display","block");
            }
        }
    }
    
    //点击相册图片
    $(".imgList li img").click(function(){
        addimg(this.src);
    });
    
    var fc=0;
    //文件上传
    $("#uploadify0").uploadify({
        'uploader': '/js/uploadify/uploadify.swf',
        'script': '/js/uploadify/Upload.aspx',
        'cancelImg': '/js/uploadify/cancel.png',
        'folder': 'UploadFile',
        'queueID':'fileQueue',
        'auto': false,
        'multi':false,
        'width':'74',
        'height':'23',
        'sizeLimit':4096*1024,
        'buttonImg':'/js/uploadify/open.png',
        'fileExt':'*.jpg;*.gif;*.png;*.bmp',
        'fileDesc':'*.jpg;*.gif;*.png;*.bmp',
        'onComplete':function(event, ID, fileObj, response, data){
            fc=0;
            $("#tb0").val("");
            $(".divsub input").removeClass("chgbg").attr("disabled","disabled");
            addimg(response);
        },
        'onSelect':function(event, queueId, fileObj)
        {
            fc++;
            $("#tb0").val(fileObj.name);
            $("#clear0").attr("qid",queueId)
            $(".divsub input").addClass("chgbg").removeAttr("disabled");
        },
        'onCancel':function(event,queueId,fileObj,data){
            $("#tb0").val("")
            if(fc>0)
               fc--;
            if(fc==0)
                $(".divsub input").removeClass("chgbg").attr("disabled","disabled");
        },
        'onError':function(event,queueId,fileObj,errorObj){
            if(errorObj.type=="File Size"){
                alert("不能上传超过4MB的文件。")
                $("#tb0").val("");
            }
        }
   });
   
   
   //清除
   $("#clear0").click(function(){
        var qid=$(this).attr("qid");
        if($("#tb0").val()!=""){
            $('#uploadify0').uploadifyCancel(qid);
            
        }
        return false;
   });
   
   //开始上传
   $(".divsub input").click(function(){
       if(!$(this).attr("disabled")){
           $('#uploadify0').uploadifySettings('script','/js/uploadify/Upload.aspx?albumID='+$("select[name=selAlbum2]").val());　
           $('#uploadify0').uploadifyUpload();
       }
   });
   
    $(".crtAlb").click(function(){
       wbox=$(this).wBox({
                title: "添加相册",
                target:"#cactn",
                opacity:0.1,
                show:true
            });
       return false;
   });
   
   $(".addAlbum").click(function(){
       var album=$(".alname").eq(1).val().trim();
       if(album!=""){
           $.ajax({
               url:"?album="+encodeURI(album),
               cache:false,
               complete:function(req, Status){
                   if(req.responseText.indexOf("id")>-1){
                       var id=req.responseText.split('=')[1];
                       $("#selAlbum2").append("<option value='"+id+"'>"+album+"</option>")
                       $("#selAlbum2 option[value="+id+"]").attr("selected","true")
                       wbox.close();
                   }else
                       alert(req.responseText)
                   $(".cal").attr(" visibility","hidden");
                   $(this).removeAttr("disabled")
               },
               ajaxSend:function(){
                   $(".cal").attr(" visibility","visible");
                   $(this).attr("disabled","disabled")
               },
               error:function(){
                   alert("创建相册出错。");
                   $(".cal").attr(" visibility","hidden");
                   $(this).removeAttr("disabled")
               }
           });
       }
      
       return false;
   });
 
   //插入图片到编辑器
   $(".ctninsert a").click(function(){
       parent.wBox.close();
       var imgl=$(".selImgList li img");
       if(imgl.length>0){
           imgl.each(function(){
               parent.diyimg.insertHtml("<img src='"+this.src+"'/>");
           });
       }
       return false;
   });
   
   //删除待插入图片
   $(".cls").click(function(){
       var img=$(this).parent().find("img");
       $("#insimgsrc").val($("#insimgsrc").val().replace(img.attr("src")+",",""));
       reserv();
       return false;
   });
   
   //回调后还原待插入图片
   reserv()
});