/*! trade */
define(["jquery","Keeper","dialogs"],function(a,b){var c={img_load:function(b){var c=document.createElement("img"),d=[],e=1===b.src?"http://analysis.tuanimg.com/panda/panda_v0.gif?":"http://analysis.tuanimg.com/click_v0.gif?";a.each(b,function(a,b){"src"!==a&&d.push(a+"="+b)}),c.src=e+d.join("&"),c.onload=function(){a(this).remove()},document.body.appendChild(c)},clickkey0:function(a,d){try{var e=b.cookie("__utma"),f={hiveid:""+e.split(".")[1]+e.split(".")[2],userid:b.login()?b.login().uid.replace("u",""):"",date:(new Date).getTime(),clickkey:a,src:d};c.img_load(f)}catch(g){}},get_img_url:function(a,c,d){var e=[];try{var f=a.split(".");c&&f.splice(f.length-1,0,c);var g=f[1],h=g.charCodeAt(g.length-1)%2;0===h?h=2:1===h&&(h=3),e.push("http://z"),e.push(h),e.push(".tuanimg.com/"),-1===a.indexOf("imagev2/")&&(e.push("imagev2/"),1===d?e.push("trade/"):2===d?e.push("site/"):e.push("zhaoshang/")),e.push(f.join(".")),b.hasWebp()&&e.push(".webp")}catch(i){}return e.length?e.join(""):a},proxy_getJSON:function(b,c,d,e,f,g,h){var i=0,j=null;d=d||{},e=e||1,(j=function(){var k={url:b,data:d,dataType:"json",success:function(a){200===a.status||h===!0?(c(a),clearTimeout(j)):e>i?(setTimeout(j,100),i++):(c(a),clearTimeout(j))},complete:function(a,b){"success"!==b&&(e>i?(setTimeout(j,100),i++):("timeout"===b?c({status:101,message:"请求超时"}):"error"===b&&c({status:101,message:"请求异常"}),clearTimeout(j)))}};f&&(k.dataType="jsonp",k.jsonpCallback=f||"sucess"),g===!1&&(k.async=!1),a.ajax(k)})()},err_msg:function(b){b&&a.Dialogs,a.Dialogs({overlay:!0,cls:"dia_tip_small",closebtn:".close",auto:!0,msg:"<article><div>"+b+"</div></article>"})},run_after_user:function(a){function b(){window.user_load?(clearTimeout(c),a()):c=setTimeout(b,500)}var c=null;c=setTimeout(b,50)},get_deal_price:function(a){return-1!=a.toString().indexOf(".")&&2==a.toString().split(".").length?a.toString().split(".")[0].length>=3?Math.ceil(10*parseFloat(a))/10:1==a.toString().split(".")[1].length?a.toFixed(1):2==a.toString().split(".")[1].length?a.toFixed(2):a.toFixed(1):a}};return a("body").off("click.js_utm_params").on("click.js_utm_params",".js_utm_params",function(b){b.stopPropagation();var c=a(this).attr("href");if(c){var d=a(this).attr("utm_content");return c.indexOf("?")>-1?window.open(c+"&utm_content="+d):window.open(c+"?utm_content="+d),b.preventDefault(),!1}}),function(){a("body").off("click.js_click_v0").on("click",".js_click_v0",function(d){var e="",f="";try{f=b.login().uid.replace("u","");var g=b.cookie("__utma");e=""+g.split(".")[1]+g.split(".")[2]}catch(h){}var i=a(this).attr("clickkey"),j={clickkey:i,hiveid:e,uid:f,date:(new Date).getTime()};"panda_v0"===a(this).attr("panda_v0")&&(j.src=1),i&&c.img_load(j)})}(),function(){a("body").off("blur.inp_num").on("blur.inp_num",".js_inp_num",function(b){var c=a(this),d=parseFloat(c.val().trim());d?c.val(d):c.val("")})}(),function(){a("body").off("blur.inp_month").on("blur.inp_month",".js_inp_month",function(b){var c=a(this),d=/^([0-9]|(1[0-2]))$/,e=c.val().trim();d.test(e)?c.val(e):c.val("")})}(),c});