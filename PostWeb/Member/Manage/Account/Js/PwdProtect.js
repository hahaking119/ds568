﻿$(document).ready(function () {

    //-----------验证开始------------
    var fvalid = $(".mstForm").validate({
        focusInvalid: true,
        errorPlacement: function (error, element) { //设置错误提示位置,此函数为默认，可不设置
            error.appendTo(element.parent());  //表示添加到元素后面，
        },
        success: function (label) {
            //label.addClass("valid").text("填写正确");//成功时执行的函数
        },

        rules: {
            passsafe_question: { required: true },
            otherQuestion: { required: function () {
                if ($(".safeQuestion").val() == "7")
                    return true;
                else
                    return false;
            }
            },
            answer: { required: true, rangelength: [2, 20] },
            answer2: { required: true, rangelength: [2, 20], equalTo: "#answer" }
        },
        messages: {
            answer2: { equalTo: "两次密保答案输入不一致" }
        }
    });
    //-----------验证结束------------

    //提交按扭事件
    $(".subBtn").click(function () {
        var b = fvalid.form();
        return b;

    });

    //选择问题事件
    $(".safeQuestion").change(function () {
        if ($(this).val() == "7")
            $(".ctnOq").show();
        else
            $(".ctnOq").hide();
    });
    $(".safeQuestion").change();

    //禁止确认密保框进行粘贴
    $("#answer2").bind("paste", function () {
        return false;
    });

    //修改密保弹窗
    var wbox = $("#chgquestion").wBox({
        title: "修改密保问题",
        target: "#popwindow",
        callBack: function () {
            cbev();
        }
    });

    //提交密保弹窗内容事件
    var cbev = function () {
        $(".subque:last").click(function () {
            if ($(".answer3:last").val().trim() == "") {
                $(".info").text("答案不能为空").css("color", "red");
            } else {
                $.ajax({
                    url: 'PwdProtect.aspx?action=modify&q=' + $(".popquestion:last").val() + "&a=" + encodeURI($(".answer3:last").val()),
                    type: 'GET',
                    timeout: 30000,
                    cache: false,
                    error: function () {
                        $(".info:last").text("验证发生错误").css("color", "red");
                    },
                    success: function (xml) {
                        if (xml == "true") {
                            $(".ctList,.validSuccess").toggle();
                            wbox.close();
                        }
                        else
                            $(".info:last").text("答案有误，请重新输入").css("color", "red");
                    }
                });
            }
        });

        //弹窗回车事件
        $(".answer3:last").bind("keydown", function (e) {
            var key = e.which;
            if (key == 13)
                $(".subque").click();
        });
    }

});

window.vlsucc=function(){
    $(".ctList,.validSuccess").toggle();
}

 