﻿$(function() {

    //-----------验证开始------------
    var fvalid = $(".mstForm").validate({
        focusInvalid: true,
        errorPlacement: function(error, element) { //设置错误提示位置,此函数为默认，可不设置
            error.appendTo(element.parent());  //表示添加到元素后面，
        },
        success: function(label) {
            label.remove();
        },
        rules: {
            //ctfname: { required: true, minlength: 2, maxlength: 50 },
            //startdate: { required: true, dateISO: true },
            //enddate: { dateISO: true },
            //issag: { required: true, minlength: 2, maxlength: 50 },
            ctfimg: { required: true, accept: "jpg,gif" },
            ctfprofile: { minlength: 10, maxlength: 500 }
        },
        messages: {
            ctfimg: { required: "请上传证书", accept: "证书文件格式不正确" }
        }
    });
    //-----------验证结束------------

    //提交
    $(".commBtn").click(function() {
        var b =  fvalid.form();
        if (b) {
            $.ajaxFileUpload({
                url: "action.aspx?time=" + Math.random(),
                type: "POST",
                secureuri: false,
                fileElementId: 'ctfimg',
                data: { myaction: "upload" },
                dataType: "json",
                success: function(data) {
                    //                    if (data.succ) {
                    //                        alert(data.fileName)
                    //                    }
                    //                    else {
                    //                        alert(data.msg);

                    //                    }
                    alert("123")
                },
                error: function(data, status, e) {
                    //alert("上传失败，请检查文件格式和大小是否符合要求。");
                    alert(e)

                },
                complete: function() {
                    //alert("1");
                }
            });
        }
    });
})