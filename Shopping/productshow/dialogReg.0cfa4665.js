/*! trade */
define(["jquery","Keeper","deal_statistics","passport"],function(a,b,c){b("regDialog",{tips:{MOBILE:{DEFAULT:"请输入常用的手机号",NULL:"请输入手机号",INVALID:"手机号格式错误",EXIST:"手机号已存在"},CAPTCHA:{DEFAULT:"验证码",NULL:"请输入验证码",INVALID:"验证码错误，请重试",MAXNUM:"发送验证码过于频繁，请稍后再试",ORIGIN:"发送验证码",REPEAT:"重发验证码"},PASSWORD:{NULL:"请输入密码",MINLENGTH:"密码过短，请输入6-24位字符",MAXLENGTH:"密码过长，请输入6-24位字符",NUMBER:"密码不能使用纯数字",EMPTY:"密码不能包含空格"},CONFIRM:{NULL:"确认密码不能为空",MINLENGTH:"密码过短，请输入6-24位字符",MAXLENGTH:"密码过长，请输入6-24位字符",NUMBER:"密码不能使用纯数字",EMPTY:"密码不能包含空格",NOTEQUAL:"密码不一致，请重试"}},renderForm:function(b,c,d){var e=new Keeper.Buffers,f=this;this.source=b,this.appid=c,this.index=d||0,e.push('<form method="post" name="regform">'),e.push('<input type="hidden" id="voice_step" value="1">'),e.push('<input type="hidden" id="voice_token" value="">'),e.push('<input type="hidden" id="voice_csrf" value="">'),e.push('<div class="signupnewbox">'),e.push('<h3><span>注册折800—享独家折扣</span><a class="loglink statisticalObject" href="javascript:void(0)">立即登录</a></h3>'),e.push('<input type="hidden" id="reg_authenticity_token" value="">'),e.push('<ul class="clear">'),e.push('<li class="name">'),e.push("<div>"),e.push("<label>手机号码</label>"),e.push('<input id="reg_mobile" type="text" class="txt1" value="请输入常用的手机号" title="请输入常用的手机号">'),e.push("<ins></ins></div></li>"),e.push('<li class="password">'),e.push("<div>"),e.push("<label>设置密码</label>"),e.push('<input id="txt_password" type="text" class="txt1" value="6-24位字符，不能是纯数字">'),e.push('<input id="reg_password" type="password" class="txt1" value="" style="display:none" maxlength="24">'),e.push("<ins></ins></div></li>"),e.push('<li class="password">'),e.push("<div>"),e.push("<label>确认密码</label>"),e.push('<input id="txt_confirmpwd" type="text" class="txt1" value="请再次输入密码">'),e.push('<input id="reg_confirmpwd" type="password" class="txt1" value="" style="display:none" maxlength="24">'),e.push("<ins></ins></div></li>"),e.push(' <li id="phone_img_captcha_box" class="captcha_box token" data-allow-captcha="yes">'),e.push("<div>"),e.push('<input type="hidden" name="captcha_keywords" value="" />'),e.push('<input type="text" name="captcha_img" value="" title="验证码" onfocus="this.value==this.title?this.value=\'\':null" onblur="this.value==\'\'?this.value=this.title:null" autocomplete="off" disableautocomplete="" />'),e.push("</div>"),e.push('<img class="captcha-img captchaImg" src="http://z4.tuanimg.com/imagev2/site/80x32.af580ef32919e0ba75c66a1d8ec67ccc.jpg"/>'),e.push('<a href="javascript:void(0)" class="captRefash">换一张</a></li>'),e.push('<li class="captcha_box token">'),e.push("<div>"),e.push('<input id="reg_captcha" type="text" class="txt1" disableautocomplete="" autocomplete="off" name="captcha" title="验证码" value="验证码"></div>'),e.push('<a id="send_reg_captcha" href="javascript:void(0)">发送验证码</a></li>'),e.push('<li class="reg-voice-code-msg voice_code" style="display: none;">未收到短信？使用<span class="voice-code-wrapper"><a href="javascript:;" data-behavior="voice-code" style="color: #00f;">语音验证码</a></span></li>'),e.push('<li class="btn"><input id="reg_submit" type="button" value="同意协议并注册" class="sign statisticalObject"></li>'),e.push('<li class="txt"><span><a href="http://www.zhe800.com/service_terms" target="_blank">《折800用户注册协议》</a></span>'),e.push("</ul></div></form>"),a.Dialogs({id:"dialog_reg_qiandao",overlay:!0,auto:!1,msg:e.toString(),openfun:function(){f.bindEvents()},closefun:function(){a(".dialog-overlay").remove()}})},addValidClass:function(a,b){b?(a.addClass("warn1"),a.removeClass("warn2")):(a.addClass("warn2"),a.removeClass("warn1"))},addUpplerClass:function(a,b){b?a.addClass("warn3"):a.removeClass("warn3")},appendError:function(a,b){a.find("span.err").remove().end().append('<span class="err">'+b+"</span>")},isError:function(a,b){return 1===a.find("span.err").size()&&a.find("span.err").text()===b},removeError:function(a){a.find("span.err").remove()},switchLogin:function(){var b=this;a("#dialog_reg_qiandao").delegate(".loglink","click",function(c){if(a("#dialog_reg_qiandao .close").trigger("click"),"qd"===b.source){var d=Keeper("dialogPP");d.init({appid:b.appid})}else a("#login-panel").parents("div.tab-tip").css({opacity:1,right:"34px",display:"block"});c.preventDefault()})},isMobile:function(b){var c=a.trim(b),d={status:1,msg:""};return""==c?(d.status=1,d):/^1\d{10}$/.test(c)?(d.status=0,d):(d.status=2,d)},checkMobile:function(b){var c=this;b.focus(function(){a(this).val()==c.tips.MOBILE.DEFAULT&&a(this).val(""),a(this).removeClass("change").addClass("change")}).blur(function(){var b=this,d=a(b).val(),e=a(b).parents("li");c.removeError(e),c.addValidClass(e,!0),0===d.length||d==c.tips.MOBILE.DEFAULT?(c.appendError(e,c.tips.MOBILE.NULL),a(b).val(c.tips.MOBILE.DEFAULT),c.addValidClass(e,!1),a(this).removeClass("change")):0!=c.isMobile(d).status?(c.appendError(e,c.tips.MOBILE.INVALID),c.addValidClass(e,!1)):c.ajaxCheckMobile(d,function(a){a&&200===a.status||(c.appendError(e,c.tips.MOBILE.EXIST+'，<a class="loglink" href="javascript:void(0)">立即登录</a>'),c.addValidClass(e,!1))})})},checkPassword:function(b,c,d,e){var f=this;c.removeClass("change").addClass("change"),e.removeClass("change").addClass("change"),b.focus(function(){var b=this,c=a(b).next();a(b).hide(),c.val("").show().focus()}),d.focus(function(){var b=this,c=a(b).next();a(b).hide(),c.val("").show().focus()}),c.blur(function(){var b=this,c=a(b).val(),d=a(b).parents("li"),g=a(b).prev();f.removeError(d),f.addValidClass(d,!0),f.addUpplerClass(d,!1),0===c.length?(a(b).hide(),g.show(),f.appendError(d,f.tips.PASSWORD.NULL),f.addValidClass(d,!1)):c.length<6?(f.appendError(d,f.tips.PASSWORD.MINLENGTH),f.addValidClass(d,!1)):c.length>24?(f.appendError(d,f.tips.PASSWORD.MAXLENGTH),f.addValidClass(d,!1)):/^\d+$/.test(c)?(f.appendError(d,f.tips.PASSWORD.NUMBER),f.addValidClass(d,!1)):e.val().length>0&&e.trigger("blur")}).keyup(function(){var b=this,c=a(b).val(),d=a(b).parents("li");return/\s$/.test(c)?(f.appendError(d,f.tips.PASSWORD.EMPTY),f.addValidClass(d,!1),void a(b).val(c.trim())):(f.isError(d,f.tips.PASSWORD.EMPTY)&&(f.removeError(d),f.addValidClass(d,!0)),void(/[A-Z]/.test(c)?f.addUpplerClass(d,!0):f.addUpplerClass(d,!1)))}),e.blur(function(){var b=this,d=a(b).val(),e=a(b).parents("li"),g=a(b).prev();f.removeError(e),f.addValidClass(e,!0),f.addUpplerClass(e,!1),0===d.length?(a(b).hide(),g.show(),f.appendError(e,f.tips.CONFIRM.NULL),f.addValidClass(e,!1)):d.length<6?(f.appendError(e,f.tips.CONFIRM.MINLENGTH),f.addValidClass(e,!1)):d.length>24?(f.appendError(e,f.tips.CONFIRM.MAXLENGTH),f.addValidClass(e,!1)):/^\d+$/.test(d)?(f.appendError(e,f.tips.CONFIRM.NUMBER),f.addValidClass(e,!1)):d!=c.val()&&(f.appendError(e,f.tips.CONFIRM.NOTEQUAL),f.addValidClass(e,!1))}).keyup(function(){var b=this,c=a(b).val(),d=a(b).parents("li");return/\s$/.test(c)?(f.appendError(d,f.tips.CONFIRM.EMPTY),f.addValidClass(d,!1),void a(b).val(c.trim())):(f.isError(d,f.tips.CONFIRM.EMPTY)&&(f.removeError(d),f.addValidClass(d,!0)),void(/[A-Z]/.test(c)?f.addUpplerClass(d,!0):f.addUpplerClass(d,!1)))})},checkCaptcha:function(b){var c=this;b.focus(function(){a(this).val()==c.tips.CAPTCHA.DEFAULT&&a(this).val(""),a(this).removeClass("change").addClass("change")}).blur(function(){var b=this,d=a(b).val(),e=a(b).parents("li");c.removeError(e),c.addValidClass(e,!0),0!==d.length&&d!=c.tips.CAPTCHA.DEFAULT||(c.appendError(e,c.tips.CAPTCHA.NULL),a(b).val(c.tips.CAPTCHA.DEFAULT),c.addValidClass(e,!1),a(this).removeClass("change"))})},sendCaptcha:function(b,c){var d=this;this.clickable=!0;var e=a("li#phone_img_captcha_box"),f=function(){d.getCaptcha(function(a,b){a?(e.attr("data-allow-captcha","yes"),e.find("img.captcha-img").attr("src",b.captcha_img),e.find('input[name="captcha_keywords"]').val(b.captcha_keywords)):(d.appendError(e,"请重新获取手机动态码"),d.addValidClass(e,!1))})};d.getCaptcha(function(a,b){a?(e.find("img.captcha-img").attr("src",b.captcha_img),e.find('input[name="captcha_keywords"]').val(b.captcha_keywords)):(d.appendError(e,"请重新获取手机动态码"),d.addValidClass(e,!1)),e.find("img.captcha-img,.captRefash").off("click.captcha").on("click.captcha",function(a){f()})}),b.click(function(){var e=this,g=a(e).parents("li"),h=a(e).parents('form[name="regform"]'),i=(c.parents("li"),a("li#phone_img_captcha_box",h));b.hasClass("js_disable")||(b.attr("disabled","disabled"),d.clickable&&(d.clickable=!1,d.removeError(g),d.addValidClass(g,!0),d.removeError(i),d.addValidClass(i,!0),d.ajaxCheckMobile(c.val(),function(h){var j=!0;return h&&400==h.status?j=!1:h&&200==h.status&&(0===c.val().length||c.val()==d.tips.MOBILE.DEFAULT?j=!1:0!=d.isMobile(c.val()).status&&(j=!1)),j?void d.ajaxGetAuthToken(function(h){var j=60,k=1e3;if(!h||!h.authenticity_token)return a(e).val(d.tips.CAPTCHA.ORIGIN),d.addValidClass(g,!1),b.removeAttr("disabled"),void(d.clickable=!0);a("#reg_authenticity_token").val(h.authenticity_token);var l={mobile:c.val(),timestamp:(new Date).getTime(),token:h.authenticity_token};"yes"===i.attr("data-allow-captcha")&&(l.hasCaptcha=!0,l.captcha=i.find('input[name="captcha_img"]').val(),l.captcha_keywords=i.find('input[name="captcha_keywords"]').val()),d.ajaxSendCaptcha(l,function(h){switch(h.status){case 201:window.reg_timer=Keeper.addTimeout(j,k,function(b){a(e).html("重发验证码( "+(10>b?"0".concat(b):b)+"秒 )").css({color:"#ccc",cursor:"default"}),a(".voice-code-wrapper a").css({color:"#666",cursor:"default","text-decoration":"none"}).addClass("vioce_disable")},function(){a(e).css("color","#666"),a(".voice-code-wrapper a").css({color:"#00f",cursor:"pointer","text-decoration":"underline"}).removeClass("vioce_disable"),clearInterval(window.reg_timer),counter=j,a(e).html(d.tips.CAPTCHA.REPEAT).css("cursor","pointer"),b.removeAttr("disabled"),d.clickable=!0,a("li.reg-voice-code-msg").show()}),d.appendError(g,"验证码已经发送到您的手机，请注意查收！");break;case 0:h.errors&&(h.errors.phone_number&&c.trigger("blur"),h.errors.phone_confirmation&&(d.appendError(g,d.tips.CAPTCHA.MAXNUM),a(e).val(d.tips.CAPTCHA.REPEAT),d.addValidClass(g,!1))),clearInterval(window.reg_timer),counter=j,a(e).html(d.tips.CAPTCHA.REPEAT).css("cursor","pointer"),b.removeAttr("disabled"),d.clickable=!0;break;case 401:case 402:h.errors&&(d.appendError(i,h.errors),d.addValidClass(i,!1)),f(),b.removeAttr("disabled"),d.clickable=!0}})}):(c.trigger("blur"),b.removeAttr("disabled"),void(d.clickable=!0))})))})},voice_timer:function(b){var c=a(".send_reg_captchado"),d=a("#send_reg_captcha"),e=a(".voice-code-wrapper");if(window.voice_has_timer){var f=60-Math.floor((Date.now()-window.voice_has_timer)/1e3);f=0>f?0:f}else f=60,window.voice_has_timer=Date.now();f?(clearInterval(window.voice_timer),window.voice_timer=setInterval(function(){f-=1,f>0?(e.html("语音验证码("+f+"秒后重新获取)").css("color","#a9a9a9"),c.css({color:"#ccc",cursor:"default"}).attr("disabled","disabled"),d.css({color:"#ccc",cursor:"default"}).addClass("js_disable")):(c.css({color:"#666",cursor:"pointer"}).removeAttr("disabled"),d.css({color:"#666",cursor:"pointer"}).removeClass("js_disable"),clearInterval(window.voice_timer),window.voice_has_timer=0,b&&b())},1e3)):b&&b()},voice_code_tip:function(a,b,c){var d="";switch(b){case 1:d='<span style="color:#666">未收到短信？使用</span><span class="voice-code-wrapper"><a href="javascript:;" data-behavior="voice-code" style="color: #00f;">语音验证码</a></span><br><span style="color: #ec1611;">电话拨打中.... 请注意来电</span>';break;case 2:c=c||"",d=d='<span style="color:#666">'+c+'  请输入图片验证码后再使用</span><span class="voice-code-wrapper"><a href="javascript:;" data-behavior="voice-code" style="color: #00f;">语音验证码</a></span>';break;case 3:c=c||"",d=d='<span style="color:#666">'+c+', 使用</span><span class="voice-code-wrapper"><a href="javascript:;" data-behavior="voice-code" style="color: #00f;">语音验证码</a></span>';break;default:d='<span style="color:#666">未收到短信？使用</span><span class="voice-code-wrapper"><a href="javascript:;" data-behavior="voice-code" style="color: #00f;">语音验证码</a></span>'}a.html(d)},voiceToken:function(b){var c=this,d=(b.version||"",b.validate_token||b.$form.find("#voice_token").val()),e=b.validate_type||"",f=b.step||b.$form.find("#voice_step").val(),g=b.business_code||b.$form.find("#voice_csrf").val();a.ajax({url:b.url||"https://acode.zhe800.com/t/bundle_verify/token",type:"GET",dataType:"JSONP",jsonpCallback:"success",data:{source_type:19,business_code:g,validate_token:d,validate_type:e,phone_number:b.$mobile.val(),step:f},success:function(a){if(0===a.status)c.voice_code_tip(b.$pperrmsg,3,a.msg&&a.msg.error_content),b.$form.find("#voice_step").val(1),b.$form.find("#voice_token").val(""),b.$form.find('input[name="captcha_img"]').val("");else if(1===a.status)switch(a.validate_type){case 1:break;case 2:b.$form.find("#voice_token").val(a.validate_token),b.$form.find("img.captcha-img").attr("src",a.validate_adds.image_url),b.$form.find('input[name="captcha_img"]').val(""),c.voice_code_tip(b.$pperrmsg,2,b.err_msg||"");break;case 3:break;case 4:break;case 5:c.voice_code_tip(b.$pperrmsg,1),c.voice_timer(function(){c.voice_code_tip(b.$pperrmsg),b.$form.find('input[name="captcha_img"]').val("")})}}})},voiceCode:function(b){var c=this;b.version||"",b.validate_type||"";a.ajax({url:b.url||"https://acode.zhe800.com/t/bundle_verify/validate",type:"GET",dataType:"JSONP",jsonpCallback:"success",data:{source_type:19,business_code:b.business_code,validate_token:b.validate_token,phone_number:b.$mobile.val(),content:b.$imgCpatchaIpt.val(),step:b.step},success:function(d){0===d.status?(b.$form.find("#voice_step").val(1),b.$form.find("#voice_token").val(""),b.$form.find('input[name="captcha_img"]').val(""),c.voice_code_tip(b.$pperrmsg,2,d.msg&&d.msg.error_content),c.voiceToken(a.extend({},b,{validate_type:2,step:1,err_msg:d.msg&&d.msg.error_content}))):1===d.status&&c.voiceToken(a.extend({},b,{validate_type:5,step:2}))}})},voiceCodeReg:function(){var c=this,d=a("#dialog_reg_qiandao");b("deal_statistics").click_stat([{el:a(".voice-code-wrapper a"),clickkey:"yuyin_signuptanchuang"}]),d.find('form[name="regform"]').on("click",'[data-behavior="voice-code"]',function(b){if(b.preventDefault(),!a(".voice-code-wrapper a").hasClass("vioce_disable")){var e=a(this).parents('form[name="regform"]'),f=e.find("#reg_mobile"),g=e.find(".reg-voice-code-msg"),h=e.find("#phone_img_captcha_box"),i=h.find('input[name="captcha_img"]'),j=e.find("#voice_step").val(),k=e.find("#voice_token").val(),l=e.find("#voice_csrf").val();if(d.find("span.err").remove(),d.find(".warn2").addClass("warn1").removeClass("warn2"),f.val()===f.attr("title")||""===f.val())return $parent=f.parents("li"),c.removeError($parent),c.addValidClass($parent,!0),c.appendError($parent,"请输入手机号"),c.addValidClass($parent,!1),!1;if(!/^1\d{10}/.test(f.val()))return $parent=f.parents("li"),c.removeError($parent),c.addValidClass($parent,!0),c.appendError($parent,"手机号格式有误"),c.addValidClass($parent,!1),!1;if(""===l&&(l=(+new Date+""+f.val()).substring(0,16),e.find("#voice_csrf").val(l)),"1"===j)""===k?c.voiceToken({$form:e,$mobile:f,$imgCpatcha:h,$pperrmsg:g,step:1,business_code:l}):c.voiceCode({$form:e,$mobile:f,$imgCpatchaIpt:i,$pperrmsg:g,step:1,validate_token:k,business_code:l});else{var i=h.find('input[name="captcha_img"]');if("yes"===h.attr("data-allow-captcha")&&""===i.val()||i.val()===i.attr("title"))return c.voice_code_tip(g,2),!1;c.voiceCode(e,f,i,g)}}})},startRegister:function(){var b=this;a("#reg_submit").click(function(){var c=a(this),d=a(c).parents("li");b.removeError(d),a(this).attr("disabled","disabled"),b.checkForm()})},checkForm:function(){var b=this,c=b.getElements();for(var d in c)c[d].trigger("blur");return a(".signupnewbox").find(".err")[0]?void a("#reg_submit").removeAttr("disabled"):void b.register()},loginSuccessCall:function(){for(PassportCardList[this.index].autoProcAllDomain("login",a("body")),PassportCardList[this.index].getBottomRow(),PassportCardList[this.index].drawPassportCard(),i=0;i<PassportCardList.length;i++)i!=PassportCardList[this.index].curCardIndex&&(PassportCardList[i].parsePassportCookie(),PassportCardList[i].getBottomRow(),PassportCardList[i].drawPassportCard());a("#dialog_reg_qiandao .close").trigger("click")},register:function(){var b=this;b.ajaxSubmitRegister(b.getRegInfo(),function(c){if(1==c.status&&a.getScript(c.return_to,function(){"success"==login_status&&(b.loginSuccessCall(),a("body").trigger("login"))}),0==c.status){if(c.errors&&c.errors.captcha){var d=b.getElements().captcha,e=(a(d).val(),a(d).parents("li"));b.removeError(e),b.addValidClass(e,!0),b.appendError(e,b.tips.CAPTCHA.INVALID),b.addValidClass(e,!1)}if(c.errors&&c.errors.phone_number){var d=b.getElements().mobile,e=(a(d).val(),a(d).parents("li"));b.removeError(e),b.addValidClass(e,!0),b.appendError(e,b.tips.MOBILE.EXIST+'，<a class="loglink" href="javascript:void(0)">立即登录</a>'),b.addValidClass(e,!1)}if(c.errors&&c.errors.register){var d=a("#reg_submit"),e=a(d).parents("li");b.removeError(e),b.appendError(e,b.errors.register)}}a("#reg_submit").removeAttr("disabled")},"json")},bindEvents:function(){var a=this,b=a.getElements().mobile,c=a.getElements().tipsPwd,d=a.getElements().pwd,e=a.getElements().tipsConfirm,f=a.getElements().confirm,g=a.getElements().captcha,h=a.getElements().sendCaptcha;a.voiceCodeReg(),a.switchLogin(),a.checkMobile(b),a.checkPassword(c,d,e,f),a.checkCaptcha(g),a.sendCaptcha(h,b),a.startRegister()},getElements:function(){return{mobile:a("#reg_mobile"),tipsPwd:a("#txt_password"),pwd:a("#reg_password"),tipsConfirm:a("#txt_confirmpwd"),confirm:a("#reg_confirmpwd"),captcha:a("#reg_captcha"),sendCaptcha:a("#send_reg_captcha")}},getRegInfo:function(){var b=this;return{username:b.getElements().mobile.val(),password:b.getElements().pwd.val(),captcha:b.getElements().captcha.val(),platform:"www",regtype:"mobile",agreement:!0,subscribe_status:0,authenticity_token:a("#reg_authenticity_token").val(),password_confirmation:b.getElements().confirm.val(),domain:"zhe800.com",popup:1,appid:b.appid,business_code:a("#voice_csrf").val(),validate_token:a("#voice_token").val(),step:2}},ajaxCheckMobile:function(b,c){a.getJSON("/users/check_username",{username:b},function(a){c(a)})},ajaxGetAuthToken:function(b){a.getJSON("/users/register_access",function(a){b(a)})},ajaxSendCaptcha:function(b,c){a.extend(b,{});var d={phone_number:b.mobile,timestamp:b.timestamp,authenticity_token:b.token,source:"zhe800"};b.hasCaptcha&&(d.captcha=b.captcha,d.captcha_keywords=b.captcha_keywords),b.type&&(d.type=b.type),a.post("/users/passport/send_phone_confirmations",d,function(a){c(a)})},ajaxSubmitRegister:function(b,c){a.post("/users.json",b,function(a){c(a)})},getCaptcha:function(b){a.ajax("//acode.tuanimg.com/captcha/get_image?jsonp=1&callback=?",{type:"GET",cache:!1,dataType:"jsonp",jsonpCallback:"jsonp_callback",success:function(a){var c={captcha_keywords:a.keywords,captcha_img:a.url};b(!0,c)},error:function(){var a={captcha_keywords:"",captcha_img:""};b(!1,a)},complete:function(a,b){}})}})});