/*! trade */
define(["jquery","Keeper","base64","async","signin"],function(a,b,c,d){b("toolbar_user",{init:function(c){var e=this;return a("body").on("login",function(){e.init()}),b.login()?(b.user=b.login(),0!==a("#signinid").length&&b("signin").getPanelAdData(),void d.parallel({login_stauts:function(b){a.get("/cn/z_key/user_infos",function(a){b(null,a)}).error(function(){b(null,{})})},checkin_status:function(b){a.ajax({type:"GET",url:"http://www.zhe800.com/cn/z_key/checkin_status?d=10",dataType:"jsonp",jsonpCallback:"checkin_status_callback",success:function(a){b(null,a)},error:function(a){b(null,{})}})},favorite_deal_ids:function(b){a.ajax({type:"GET",url:"http://www.zhe800.com/cn/user_favorite",dataType:"jsonp",jsonpCallback:"favorite_deal_ids_callback",success:function(a){b(null,a)},error:function(a){b(null,{})}})},msg:function(b){a.ajax({type:"GET",url:"http://www.zhe800.com/cn/msg",dataType:"jsonp",jsonpCallback:"msg_deal_ids_callback",success:function(a){b(null,a)},error:function(a){b(null,{})}})}},function(c,d){b.opts.user=d||{},a.extend(b.opts.user,{login:b.opts.user.login_stauts.login,score:b.opts.user.login_stauts.score}),a.extend(b.opts.user.login_stauts,{login:1==b.opts.user.login_stauts.login?"yes":"no",ck_times:b.opts.user.checkin_status.ck_times},d.msg),delete d.msg;var e=b.opts.user.checkin_status;if(e){var f=new Date;f.setHours(23,59,59,0),1==e.is_double&&1==e.channels.mobile&&0==e.channels.web&&(e.status=0),b.cookie("qd",e.status+"-"+e.day+"-"+b.opts.user.score,{path:"/",expires:f,domain:".zhe800.com"})}var g=a("#signinid a.signin"),h=a(".side_panel .side-tab-checkin");if(("1"===g.data("click-show-dialog")||"1"===h.data("click-show-dialog"))&&0==e.status){var i=b.login(),j=i.idss.id2;0==j&&b.opts.user.login_stauts.ck_times<=3?b("bindPhoneMod").init():(b.opts.user.checkin_status.channels.web=1,a.qdpost("/cn/checkin?checkin=1"),g.data("click-show-dialog","0"),h.data("click-show-dialog","0"))}a.each(b.headQueue.toArray(),function(b,c){"function"===a.type(c)&&c.call()})})):!1}})});