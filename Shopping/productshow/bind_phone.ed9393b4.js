/*! trade */
define(["jquery","Keeper","passport","dialogs"],function(a,b,c){b("bind_phone",{tpl_html:["<h4>{{#title}}</h4>","  <article>",'    <div class="reg_box clear">','      <div class="item">',"       <label>请输入手机号：</label>",'       <input type="text" id="mobil" class="itext1">','       <div class="msg_box row1"></div>',"      </div>",'      <div class="item i_code">',"       <label>手机动态码：</label>",'       <input type="text" id="validCodeP" class="itext2">','       <span class="i_codeP"><a href="javascript:void(0);" class="send-idf">获取动态码</a></span>','       <div class="msg_box row1"></div>',"      </div>",'      <div class="item i_code captcha_box" style="height: auto">',"       <label>图片验证码：</label>",'       <input type="hidden" name="captcha_keywords" value="" />','       <input class="itext2" type="text" name="captcha_img" value="" title="验证码" onfocus="this.value==this.title?this.value=\'\':null" onblur="this.value==\'\'?this.value=this.title:null" autocomplete="off" disableautocomplete="" /><img class="captcha-img captchaImg" src="" style="margin-left: 5px;cursor: pointer;"/>','       <a  class="changeCapt" style="line-height: 24px;">换一张</a>','       <div id="captcha_msg_box" class="msg_box row1"></div>',"      </div>","    </div>","  </article>",'<div class="submit"> <i class="i_btn i_btn1"><a href="javascript:void(0);">确认</a></i>  <i class="i_btn i_btn2"><a href="javascript:void(0);">放弃绑定</a></i></div>'].join(""),getCaptcha:function(){var b;return b=this,c.getCaptcha(function(){return a('.reg_box .captcha_box input[name="captcha_keywords"]').val(login_error_result.captcha_keywords),a(".reg_box .captcha_box .captchaImg").attr("src",login_error_result.captcha_img).off("click.captcha").on("click.captcha",function(a){return b.getCaptcha()})})},init:function(c,d,e,f,g){var h;return h=this,a.Dialogs({overlay:!0,cls:"bind_phone",auto:!1,closebtn:".close,.i_btn2",msg:b.ParseTpl(g||h.tpl_html,{title:f||"绑定手机号"}),openfun:function(){return a.isFunction(d)&&d(),a(".changeCapt").on("click",function(a){return a.preventDefault(),h.getCaptcha()}),h.getCaptcha()},closefun:function(){return window.clearInterval(window.timer),a.isFunction(e)?e():void 0}}),a(".bind_phone .send-idf").off("click").on("click",function(){var c,d,e,f,g;return c=a(this),a(this).hasClass("disable")?!1:(f=a.trim(a("#mobil").val()),g=a.trim(a('.reg_box .captcha_box input[name="captcha_keywords"]').val()),d=a.trim(a('.reg_box .captcha_box input[name="captcha_img"]').val()),""===f?(a("#mobil").next().html('<em></em><span class="msg">请输入手机号</span>'),!1):0!==b.verification.mobile(f).status?(a("#mobil").next().html('<em></em><span class="msg">手机号码格式错误</span>'),!1):""===d?(a("#captcha_msg_box").html('<em></em><span class="msg">请输入图片验证码</span>'),!1):(a("#mobil").next().html(""),a("#captcha_msg_box").html(""),a(this).addClass("disable"),c.addClass("disbtn"),e=60,window.sendMobileCode=!0,window.timer=window.setInterval(function(){return 0!==e&&window.sendMobileCode?(c.html(e+"秒后重新获取"),e--):(c.removeClass("disable"),c.removeClass("disbtn"),c.html("获取验证码"),window.clearInterval(timer))},1e3),h.sendMobileCode(f,g,d)))}),a(".bind_phone .i_btn1").off("click").on("click",function(){var d,e,f;return d=a(this),"doing"===d.data("doing")?!1:(e=a.trim(a("#mobil").val()),""===e?(a("#mobil").next().html('<em></em><span class="msg">请输入手机号</span>'),!1):0!==b.verification.mobile(e).status?(a("#mobil").next().html('<em></em><span class="msg">手机号码格式错误</span>'),!1):(a("#mobil").next().html(""),f=a.trim(a("#validCodeP").val()),""===f?(a("#validCodeP").siblings(".msg_box").html('<em></em><span class="msg">请输入短信验证码</span>'),!1):(a("#validCodeP").siblings(".msg_box").html(""),h.submitPhone(e,f,c))))})},sendMobileCode:function(b,c,d){var e,f;return f=this,e=a(".bind_phone"),a.getScript("https://passport.tuan800.com/api/bind_mobiles/phone_confirmations?phone_number="+b+"&id="+ +new Date+"&source=zhe800&captcha_keywords="+c+"&captcha="+d+"&type=force_unbind",{callback:function(){var a;switch(a=window.result||{},window.sendMobileCode=!1,f.getCaptcha(),a.status){case 1:return e.find(".msg_box").html(""),window.sendMobileCode=!0;case 2:return e.find(".msg_box").html("").eq(1).html("<em></em>"+a.message);case 3:return e.find(".msg_box").html("").eq(1).html("<em></em>"+a.message);case 4:return e.find(".msg_box").html("").eq(1).html("<em></em>"+a.message);case 5:return e.find(".msg_box").html("").eq(0).html("<em></em>该手机号已被占用，您可以使用此手机号直接登录");case 10:return e.find(".msg_box").html("").eq(1).html("<em></em>"+a.message);case 11:return e.find(".msg_box").html("").eq(1).html("<em></em>"+a.message);case 403:return e.find(".msg_box").html("").eq(2).html("<em></em>"+a.message);case 200:return e.find(".msg_box").html("").eq(2).html("<em class='yes'></em>"+a.message),window.sendMobileCode=!0;default:return e.find(".msg_box").html("").eq(2).html("<em></em>"+a.message)}},cache:"false"})},submitPhone:function(b,d,e){var f;return f=a(".bind_phone"),a(".bind_phone .i_btn1").data("doing","doing"),a.ajax({url:"https://passport.tuan800.com/api/bind_mobiles/bind_and_unbind?phone_number="+b+"&phone_confirmation="+d,type:"get",dataType:"jsonp",async:!1,cache:!1,complete:function(b){if(b=b||{},200!==b.status||"success"!==b.statusText)return f.find(".msg_box").eq(1).html("<em></em>很抱歉，手机绑定失败");switch(b=window.result||{},a(".bind_phone .i_btn1").data("doing",""),b.status){case 200:if(a(".bind_phone .send-idf").removeClass("disable"),a(".bind_phone .send-idf").removeClass("disbtn"),a(".bind_phone .send-idf").html("获取验证码"),clearInterval(window.timer),c.refreshCookie(),a(".bind_phone .close").trigger("click"),a.isFunction(e))return e();break;case 400:return f.find(".msg_box").eq(1).html("<em></em>"+b.message);case 401:return f.find(".msg_box").eq(1).html("<em></em>"+b.message);case 10:return f.find(".msg_box").eq(1).html("<em></em>"+b.message);case 403:return f.find(".msg_box").eq(1).html("<em></em>"+b.message)}}})}})});