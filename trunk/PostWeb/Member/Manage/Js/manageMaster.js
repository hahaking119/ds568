﻿$(document).ready(function(){
    $(".frame").height(Math.max(document.body.clientHeight,document.documentElement.clientHeight)-$(".head").height()-$(".holdspace").height()-$(".toolbar").height()-13);
    $(".tbcon a").click(function(){
        $(".tbcon a").removeClass("menuHover");
        $(this).blur().addClass("menuHover");
    });
});