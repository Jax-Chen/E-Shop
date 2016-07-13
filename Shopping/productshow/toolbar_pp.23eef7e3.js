/*! trade */
define(["jquery","Keeper","passport","base64","json2"],function(a,b,c,d){a.fn.extend({tooltip:function(b){var c=a.extend({autoLoc:!0},b),d=this,e=a('<div class="tooltip"><div class="tooltip-content">'+c.msg+'<i class="close"></i></div><div class="tooltip-arrow"></div></div>').insertAfter(d),f=d.position(),g=e.find(".tooltip-arrow"),h=d.outerWidth(),i=(d.outerHeight(),e.width()),j=e.height();return d.length?(c.autoLoc&&e.css({top:f.top-j-g.height(),left:f.left-(i-h)/2}),e.find(".close").bind("click",function(){e.hide()}),this):void 0},dropdown:function(b){var c=a.extend({evt:"click"},b),d=this;return"hover"==c.evt?(d.bind("mouseenter",function(){d.addClass("open")}),d.bind("mouseleave",function(){d.removeClass("open")})):d.find(".trigger").bind(c.evt,function(a){a.preventDefault(),d.toggleClass("open")}),"click"==c.evt&&($global=a(document),$global.data("dropBinded")||($global.bind("click",function(b){var c=a(b.target);c.closest(".dropdown").length||a(".dropdown.open").removeClass("open")}),$global.data("dropBinded","true"))),this}}),a.extend(b,{verification:{mobile:function(b){var c=a.trim(b),d={status:1,msg:""};return""==c?(d.status=1,d.msg="手机号码为空",d):/^1\d{10}$/.test(c)?(d.status=0,d.msg="手机号码正确",d):(d.status=2,d.msg="手机号码格式错误",d)}}}),a.addfavorite=function(b){a.fn.addfavorite(b)},a.fn.addfavorite=function(c){var d=a(this),e=c||{},f=e.url?e.url:"http://www.zhe800.com/",g=e.title?e.title:"折800，每天9块9！",h=[{string:navigator.platform,subString:"Win",identity:"Windows"},{string:navigator.platform,subString:"Mac",identity:"Mac"},{string:navigator.userAgent,subString:"iPhone",identity:"iPhone/iPod"},{string:navigator.platform,subString:"Linux",identity:"Linux"}],i="按 <strong>{{#sys}}+D</strong>，把折800放入收藏夹，每天9块9！",j=b,k="Ctrl",l=function(a){for(var b=0;b<a.length;b++){var c=a[b].string;if(c&&-1!=c.indexOf(a[b].subString))return a[b].identity}};if(("chrome"==a.browser.name||"safari"==a.browser.name||"opera"==a.browser.name||"firefox"==a.browser.name&&parseInt(a.browser.ver)>=23)&&(e=i),j.OS=l(h)||"an unknown OS","Mac"==j.OS&&(k="Command"),a.browser.msie)try{window.external.addFavorite(f,g)}catch(m){try{window.external.addToFavoritesBar(f,g)}catch(n){(0==d.size()?a:d).Dialogs({auto:!1,msg:"加入收藏失败，请您手工加入。",cls:"collection"})}}else window.external&&a.browser.mozilla?11!=a.browser.ver&&window.sidebar&&window.sidebar.addPanel?window.sidebar.addPanel(g,f,""):a.Dialogs({msg:"按Ctrl+D，把折800加入收藏夹。",cls:"collection"}):(0==d.size()?a:d).Dialogs({auto:!1,cls:"collection",msg:b.ParseTpl(i,{sys:k})})},function(a){a.tao_dingyue=function(){var b=a("#subscribe_email"),c=b.val();if(""==c)return alert("请输入您的Email地址。"),!1;var d=/^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i;return d.test(c)?/\yahoo.cn+$/.test(c)||/\yahoo.com.cn+$/.test(c)?(alert("雅虎官方关闭邮箱业务，请换其它邮箱"),!1):(a.ajax({url:"http://www.zhe800.com/email_subscribe",dataType:"jsonp",cache:!0,data:{email:c},type:"get",jsonp:"callback",success:function(b){a.Dialogs({overlay:!1,cls:"dialog_email",auto:!1,closebtn:".close",msg:"<span>"+b.text+"</span>"})}}),!0):(alert("邮件地址格式错误，请检查。"),!1)}}(jQuery),b("toolbar_pp",{Init:function(){b.headQueue||(b.headQueue=new b.Buffers),b.login=function(){var a;return a=b.cookie("ppinf")?JSON.parse(d.decode(b.cookie("ppinf").split("|")[3])):!1}},init:function(d){a("#toolbar .phone-qrcode-down").dropdown({evt:"hover"});var e=this,f=0==a("#prologin").length?"tblogin":"prologin";c.drawPassportNew(f,e.toolbarTpl,{appid:3108,_this:e}),b.headQueue.push(function(){if(b.opts.user&&"yes"==b.opts.user.login_stauts.login){var c=a("#toolbar .right .username"),d=b.opts.user.login_stauts,e=parseInt(d.msg_num);if(c.length){if(!c.find(".icon-level").length){var f=new b.Buffers,g="",h="",i="";f.push('<a class="icon-level level'+(d.grade-1)+'" href="http://www.zhe800.com/profile/my_rank" target="_blank"></a>'),i=e>0?'<i class="msg-num">'+e+"</i>":"",g='|&nbsp;<a href="http://www.zhe800.com/profile/message_box" class="msg" target="_blank">我的消息'+i+"</a>",d.pop_msg&&(h='<div class="msg-tips"><span>'+d.pop_msg+'</span><i class="up-arr"></i><i class="close-tips"></i></div>'),a(".myzhe .icon-level").length<1&&c.after(f.toString()),a("#login em a.msg").length<1&&a("#mytrade").after(g+h);var j=c.parent(".dropdown"),k=a(".msg-tips");k.find(".close-tips");j.dropdown({evt:"hover"}),k.click(function(b){var c=a(this),d=b.target;"close-tips"===d.className?c.hide():"SPAN"===d.nodeName&&window.open("http://www.zhe800.com/profile/message_box"),a.get("/cn/msg/set_pull_time?pop_read=1")})}c.width()>180&&c.addClass("maxuser")}}})},toolbarTpl:function(c,d,e){var f=PassportCardList[c],g=-1==document.location.href.indexOf("login")?"?return_to="+encodeURIComponent(document.location.href):"?return_to="+encodeURIComponent("http://www.zhe800.com");f.rootElement=function(){this.cElement=d,this.sElement=d.after('<div class="hidden"></div>').next()},f.drawLoginForm=function(){var a=new b.Buffers;a.push('<a target="_blank" class="qq" href="'+b.vars.ppz+"/sso/partner_login/qq_connect"+g+'"><i></i>QQ登录</a> | '),a.push('<a class="red" href="'+b.vars.zhe800+"/login"+g+'">登录</a> <a class="red" href="'+b.vars.zhe800+"/signup"+g+'">免费注册</a> | <span></span>'),a.push('<a target="_blank" href="http://shop.zhe800.com/my/orders">我的订单</a>'),this.cElement.html(a.toString())},f.drawPassportWait=function(a){this.cElement.html("登录中，请稍候...")},f._drawPassportCard=function(){var a=this.cookie,c='<span class="username"><a href="http://www.zhe800.com/profile/my_rank" target="_blank">'+a.userid+'</a><i class="icon-arrow arrow-down"></i><em></em></span>',d=new b.Buffers;d.push('<span>您好，</span><div class="dropdown myzhe">'+c+'<ul class="dropdown-menu"><li><a href="http://www.zhe800.com/profile/my_favorites/all" target="_blank">我的收藏</a></li><li><a href="https://passport.zhe800.com/account/safe" target="_blank">账号信息</a></li><li><a href="http://shop.zhe800.com/my/orders" target="_blank">我的订单</a></li><li><a href="http://www.zhe800.com/n/help/zhe800_description" target="_blank">消费保障</a></li><li><a href="http://jifen.zhe800.com/profile/score_histories/all.html" target="_blank">我的积分</a></li><li><a href="http://shop.zhe800.com/my/coupons" target="_blank">优惠券</a></li><li><a href="http://www.zhe800.com/profile/my_rank" target="_blank">我的等级</a></li><li><a class="exit" href="https://passport.zhe800.com/sso/logout'+g+'">退出</a></li><li><a href="http://jifen.zhe800.com/profile/orders/lottery.html" target="_blank">我的抽奖</a></li></ul></div>'),d.push('|&nbsp;<a href="http://shop.zhe800.com/my/orders" id="mytrade" target="_blank">我的订单&nbsp;</a>'),this.cElement.html(d.toString())},"prologin"==d.attr("id")&&(f.logoutRedirectUrl=b.vars.zhe800),f.loginApp=function(b){a("body").trigger("login")},f.logoutApp=function(){a("body").trigger("logout")},f.drawPassport(d)}})});