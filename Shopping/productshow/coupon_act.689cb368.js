/*! serv_item */
define(["jquery","Keeper","tool","dialogs","bind_phone"],function(a,b,c){function d(b,c){var d=[];d.push('<article style="padding-bottom:0;">'),d.push('<div class="text" style="text-align:left;">'),d.push(b),d.push("</div>"),d.push("</article>"),d.push('<div class="submit"><a href="javascript:void(0);" class="button button_s1">确定</a></div>');var e={overlay:!0,cls:"dia_tip_middle",auto:!1,closebtn:".close, .submit .button_s1",msg:d.join("")};a.isFunction(c)&&(e.openfun=c),a.Dialogs(e)}function e(b){a.post("/nnc/coupons/addaccoupon.json",{fKey:b.attr("data-fkey")},function(a){if(200===a.status){var c=[];c.push("<p>恭喜！您已成功领到限商品"+b.attr("data-actDesc")+"券~</p>"),c.push("<p>您可在"+b.attr("data-startTime")+"至"+b.attr("data-endTime")+"期间使用此券</p>"),d(c.join(""))}else 101===a.status&&"20117"===a.failCode?d("<p>抱歉，此活动是新用户专享哦~您可去参加其他给力活动~</p>"):101==a.status&&"20106"==a.failCode?d("<p>抱歉，您已经领过此券，快去选购给力商品吧~</p>"):101==a.status&&"20108"==a.failCode?d("<p>抱歉，您来晚了，此券已被抢光，您可去参加其他给力活动哦~</p>"):101==a.status&&"20111"==a.failCode?d("<p>抱歉，还未达到领券时间哦，请您稍后再来领取~</p>"):101==a.status&&"20112"==a.failCode?d("<p>抱歉，您来晚了，领券活动已经结束快去选购给力商品吧~</p>"):a.message&&d("<p>"+a.message+"</p>")})}var f={};return f.init=function(){var d=this;a(".js_get_coupon").off().on("click",function(f){f.preventDefault();var g=a(this);return Keeper.login()?0!==b.login().idss.id2||d.bind_coupon?void e(g):void b("bind_phone").init(function(){d.bind_coupon=!0,c.clickkey0("xianshangpin_lingquan_button_tie_phone_succeed"),g.trigger("click")},function(){},function(){},"现在绑定手机号，马上获得专享优惠券"):(Keeper("dialogPP",{dback:function(){window.get_coupon_login=!0,a("#dialog_log_qiandao .close").trigger("click")}}),void b("dialogPP").init({id:"dialog_log_qiandao",cls:"dialog_log_qiandao",appid:3116,closefun:function(){if(window.get_coupon_login)var a=setTimeout(function(){clearTimeout(a),g.trigger("click")},100)}}))})},f});