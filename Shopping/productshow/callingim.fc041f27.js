/*! trade */
define(["jquery","Keeper","dialogPP","http://z5.tuanimg.com/im/public/interface/iminject.js?74562"],function(a,b){b("callingim",{Init:function(){Keeper.headQueue||(Keeper.headQueue=new b.Buffers)},imIcon:function(){var b=a(".im_icon");b.length>0&&b.each(function(){var b=a(this),c=""+b.data("seller-jid"),d=b.data("orderid")?""+b.data("orderid"):"",e=b.data("iconStyle"),f=b.data("text"),g=b.data("statetxt"),h=b.data("width"),i=b.data("clickkey"),j={type:"buyer",loginpop:'Keeper("dialogPP").init({id : "dialog_log_qiandao",cls : "dialog_log_qiandao",appid : 3112})',width:20};-1!=c.indexOf("@")?(j.jid=c,j.othersidename=c.split("@")[0],j.host=c.split("@")[1]):j.busUid=c,d&&(j.orderid=d),e&&(j.iconStyle=e),f&&(j.text=f),i&&(j.clickkey=i),j.statetxt=g||"在线咨询:离线留言",j.width=h||80,IMinit(b[0],j),a(this).find("em").remove()})},init:function(){var c=this;c.imIcon();var d=[];d.push(a(".contractKf",".about")),d.push(a(".footer_contractKf","footer")),d.push(a(".refund_contractKf")),Keeper.cookie("ppinf")?c.iminit():(a.each(d,function(a,c){c.click(function(){return b("dialogPP").init({id:"dialog_log_qiandao",cls:"dialog_log_qiandao",appid:3112}),!1})}),Keeper.headQueue.push(function(){c.iminit()}))},iminit:function(){var b=a(".contractKf",".about"),c=a(".footer_contractKf","footer"),d=a(".refund_contractKf");b.length>0&&(b.after('<p class="contractKf_imp"></p>'),IMinit(a(".contractKf_imp")[0],{type:"service"}),b.remove()),c.length>0&&(IMinit(c.parent()[0],{type:"service"}),c.remove()),d.length>0&&(IMinit(d.parent()[0],{type:"service"}),d.remove())},cartinit:function(){this.init();var c=a(".contractKf",".sidepanel");Keeper.cookie("ppinf")?c.length>0&&(IMinit(c.parent()[0],{type:"service"}),c.remove()):(c.attr("href","#").unbind().click(function(){return b("dialogPP").init({id:"dialog_log_qiandao",cls:"dialog_log_qiandao",appid:3112}),!1}),Keeper.headQueue.push(function(){c.length>0&&(IMinit(c.parent()[0],{type:"service"}),c.remove())}))}})});