/*! trade */
define(["jquery","Keeper","base64"],function(a,b,c){var d,e,f;return d=function(b,c){var e;return e=this,this.$elem=a(b),this.options=a.extend(d.DEFAULT,c||{}),this.is_visibled=!1,this.is_scrolling=!1,this.ssid="SS"+ +new Date+Math.floor(1e4*Math.random()),this.postData={},this.timer=null,this.cache={scroll_top:0},this.count=0,this.init()},d.DEFAULT={params:{uid:"",deviceid:b.cookie("session_id"),cookieid:b.cookie("__utma"),fromsource:1,version:b.cookie("ju_version"),channel:b.cookie("utm_csr"),cdetail:b.cookie("utm_medium")+"|"+b.cookie("utm_term")+"|"+b.cookie("utm_content")+"|"+b.cookie("utm_campaign"),userrole:b.cookie("user_version"),child:b.cookie("maternal"),listversion:b.cookie("ju_rv"),pos_type:"",pos_value:"",url:encodeURIComponent(location.href),refer:encodeURIComponent(document.referrer),page:1,deals:""},topFix:0,bottomFix:0,delay:500,complete:function(){}},d.prototype.init=function(){var c,d;return d=this,c=this.options,this.$elem.attr("data-ssid",this.ssid),this.postData=a.extend({},c.params),this.postData.pos_type=this.$elem.attr("data-stat-pos-type"),this.postData.pos_value=this.$elem.attr("data-stat-pos-value"),this.postData.uid=f(b.cookie("ppinf")).user_id||"",a(document).on("scroll",function(a){return clearTimeout(d.timer),d.timer=setTimeout(function(){return d.detect()},d.options.delay)}),this.detect()},d.prototype.post=function(){var b;return this.postData.deals=JSON.stringify([{id:this.$elem.attr("data-stat-dealid"),n:this.$elem.attr("data-stat-n"),x:this.$elem.attr("data-stat-x"),y:this.$elem.attr("data-stat-y"),time:Date.now(),sourcetype:this.$elem.attr("data-stat-sourcetype"),exposure_num:this.count,zid:this.$elem.attr("data-zid")}]),b=document.createElement("IMG"),b.src="http://analysis.tuanimg.com/bgl_v2.gif?"+a.param(this.postData),a.isFunction(this.options.complete)?this.options.complete():void 0},d.prototype.detect=function(){var a,b;return b=this.is_visibled,a=this.is_visible(),b^a&&a?(this.count+=1,this.post()):void 0},d.prototype.is_visible=function(){var b,c,d,e,f;return c=this.options,f=this.$elem.offset().top,b=f+this.$elem.height(),e=a(document).scrollTop(),d=e+window.innerHeight,this.is_visibled?(e>f&&e>b||f>d&&b>d)&&(this.is_visibled=!1):f>e&&d>f&&b>e&&d>b&&(this.is_visibled=!0),this.is_visibled},f=function(a){var b;return null===a||"string"!=typeof a||""===a?{is_logined:!1,user_id:null}:(b=JSON.parse(c.decode(a.split("|")[3])),{is_logined:!0,user_id:b.uid})},e=a.fn.showstat,a.fn.showstat=function(b){return this.each(function(){var c,e,f;return c=a(this),e=c.data("showstat"),f=a.extend({},"object"==typeof b&&b),null==e&&c.data("showstat",e=new d(this,f)),"string"==typeof b?e[b]():void 0})},a.fn.showstat.Constructor=d,a.fn.showstat.noConflict=function(){return a.fn.showstat=e,this},d});