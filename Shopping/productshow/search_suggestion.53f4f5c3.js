/*! trade */
define(["jquery","Keeper","cd_storage"],function(a,b,c){b("search_suggestion",{init:function(){var d=b.cookie("screenversion"),e=a("header .search .txt");return e.length<1?!1:(e.attr("autocomplete","off"),a("header .search form").attr("target","_self"),opts=Keeper.opts,opts.sugg={val:a("header .search .txt").val(),upval:"",show:function(b){var c=this;38!=b&&40!=b&&39!=b&&37!=b&&(c.i=-1),c.i=c.i||0,c.list=c.list||a("#JS_query li:not(.close)");var d=a("#JS_history");if(c.list.length>0&&d&&0==d.length)switch(b){case 38:return c.clear(),c.i<1&&(c.i=c.list.length),c.i--,c.list.eq(opts.sugg.i).addClass("hover"),c.vals(c.list.eq(c.i)),!1;case 40:return c.clear(),c.i==c.list.length-1&&(c.i=-1),c.i++,c.list.eq(opts.sugg.i).addClass("hover"),c.vals(c.list.eq(c.i)),!1}c.getjson()},getjson:function(){var c=this,d=a("header .search .txt").val();return c.url="http://search.zhe800.com/zhe800-search/suggestion/searchJsonp",""==d?(c.outkeys(),opts.sugg.showHistory(),!1):(a("#JS_history").remove(),void a.ajax({type:"GET",url:c.url,dataType:"jsonp",jsonpCallback:"search_sug",data:{word:d,limit:10,offset:0},success:function(c){var d=Keeper.opts.sugg,e=c.response.docs||[],f=new b.Buffers,g='<li class="close"><a href="javascript:void(0);" class="close_query">关闭</a></li>',h="";return 0==e.length?(d.outkeys(),!1):(a.each(e,function(a,b){f.append('<li info="'+b.word+'"><span>约<i>'+b.count+"</i>条结果</span>"+b.word+"</li>")}),h=f.toString(),a("#JS_query").size()>0?a("#JS_query").empty().prepend(h+g):(a(".search").css({"z-index":"9908",position:"relative"}),a("header .search form").after('<div id="JS_query" class="search_query">'+h+"</li>"+g+"</div>")),b("deal_statistics").pic_stat("search_relate_pop_up_window"),a("#JS_query .close_query").click(function(){b("deal_statistics").pic_stat("click_search_relate_close"),d.outkeys()}),a("#JS_query li").unbind().bind("mouseover",function(){Keeper.opts.sugg.hovers(this)}).bind("click",function(){b("deal_statistics").pic_stat("click_relate_recommend"),d.vals(a(this)),a("header .search form").attr("target","_self").submit()}),a("#JS_query .close").unbind().css("cursor","default"),void(d.list=a("#JS_query li:not(.close)")))},error:function(){console.log("jsonp error")}}))},keys:function(a){var b=opts.sugg,a=window.event||a,c=a.keyCode||a.which;b.show(c)},hovers:function(a){var b=this;b.clear(),b.list.each(function(c){a==b.list.get(c)&&(b.i=c,b.list.eq(c).addClass("hover"))})},vals:function(b){a("header .search .txt").val(b.attr("info"))},focusHandler:function(c){var d=opts.sugg,e=a("header .search .txt").val();-1==location.href.indexOf("search.zhe800.com")&&e==d.val&&(a("header .search .txt").attr("data-keyword",e),a("header .search .txt").val(""));var c=window.event||c;c.keyCode||c.which;if(b.cookie("ppinf")){d.first_data||d.loadHistory();var f=setInterval(function(){d.flag_time&&(d.getjson(),clearInterval(f))},200)}else d.getjson()},blurHandler:function(b){var c=a("header .search .txt"),d=c.data("keyword");""==c.val()&&d&&(a("header .search .showkw").show(),c.val(d)),opts.sugg.outkeys()},outkeys:function(){a("header .search").removeAttr("style"),a("#JS_query").remove()},clear:function(){var a=opts.sugg;a.list.removeClass("hover")},submitForm:function(b){var c=opts.sugg,b=window.event||b,d=b.keyCode||b.which;if(13==d){if(a("#JS_history").length>0){var e=a(".header .search form");e.append("<input type='hidden' name='utm_content' value='zuijinsousuo' />")}return a("header .search form").submit(),c.outkeys(),!1}},defaultSenKws:function(){function b(a){var b={sentence:"",keyword:""},c=a.length,d=Math.floor(Math.random()*c);return b.keyword=a[d].keyword,b.sentence=a[d].sentence?a[d].sentence:b.keyword,b}var c=this;a.ajax({url:"http://www.zhe800.com/n/default_sen_and_kws",type:"GET",dataType:"JSONP",jsonpCallback:"get_default_sen_and_kws",success:function(e){var f={};if(e.length){if(d)f=b(e);else{for(var g=[],h=0;h<e.length;h++)e[h].sentence&&g.push(e[h]);f=b(g.length?g:e)}var i=a("header .search .txt"),j='<span class="showkw">'+f.sentence+"</span>";c.val=f.keyword,i.attr("data-keyword",f.keyword),i.val(f.keyword),a("header .search").append(j),a("header .search .showkw").click(function(){a(this).hide(),i.focus()})}}})},flag_time:!1,first_data:!1,historyData:[],loadHistory:function(){a.ajax({type:"get",url:"http://search.zhe800.com/cn/n/history/json",dataType:"jsonp",jsonp:"callback",jsonpCallback:"history_search",success:function(a){var b=opts.sugg.my_localStorageData;a&&a.search_history&&0!=b.length?opts.sugg.historyData=b.concat(a.search_history):a&&a.search_history&&(opts.sugg.historyData=a.search_history),opts.sugg.flag_time=!0}}),opts.sugg.first_data=!0},burn_ssData:[],burn_ss:function(){a.ajax({type:"get",url:"http://search.zhe800.com/n/search/hot_search_words",dataType:"jsonp",jsonp:"callback",jsonpCallback:"hotWordSearch",success:function(a){opts.sugg.burn_ssData=a||[],a.length>12?a.length=12:a.length=a.length}})},burn_ss_del:function(){if(opts.sugg.historyData=[],opts.sugg.my_localStorageData=[],window.localStorage){var d=new c("http://search.zhe800.com","/n/agent.html");d.clearValue(function(){})}b.cookie("ppinf")&&a.ajax({type:"get",url:"http://search.zhe800.com/cn/n/del_all",dataType:"jsonp",jsonp:"callback",jsonpCallback:"del_search",success:function(a){}}),a("#his_recent_tit .del_zjss").remove(),a(".JS_history_a #his_recent_tit").siblings().remove(),a(".JS_history_a").append('<li><span class="sousuo_nohis"></span></li>')},my_localStorageData:[],my_localStorage:function(){if(window.localStorage){var a=new c("http://search.zhe800.com","/n/agent.html");a.getValue("search_history_list",function(a,b){var c=[];b=b?b.split(","):[];for(var d=0;d<b.length;d++)c.push(decodeURIComponent(b[d]));opts.sugg.my_localStorageData=c})}},dellocalStorage:function(b,d){var e=b.closest("li.history_item"),f=e.index(),g=e.attr("info");if(window.localStorage){var h=encodeURIComponent(g),i=new c("http://search.zhe800.com","/n/agent.html");i.getValue("search_history_list",function(b,c){c=c?c.split(","):[];var d=a.inArray(h,c);d>-1&&c.splice(d,1),i.setValue("search_history_list",c.join(","))})}if("yes"==d){if(a.each(opts.sugg.historyData,function(a,b){opts.sugg.historyData[a]===g&&opts.sugg.historyData.splice(opts.sugg.historyData.indexOf(g),1)}),0==opts.sugg.historyData.length&&a("#JS_history #noValue").length<1)return a("#JS_history .JS_history_a #his_recent_tit").siblings().remove(),void(a(window).width()>1262?(a(".del_zjss")?a(".del_zjss").remove():[],a("#JS_history .JS_history_a #his_recent_tit").after('<li><span class="sousuo_nohis"></span></li>')):a("#JS_history .JS_history_a #his_recent_tit").after('<li id="noValue">您还没有搜索过这里</li>'))}else if("no"==d){if(e.remove(),opts.sugg.my_localStorageData.splice(f-1,1),a("header .search .txt").focus(),0==opts.sugg.my_localStorageData.length&&a("#JS_history #noValue").length<1)return a("#JS_history .JS_history_a #his_recent_tit").siblings().remove(),void(a(window).width()>1262?(a(".del_zjss")?a(".del_zjss").remove():[],a("#JS_history .JS_history_a #his_recent_tit").after('<li><span class="sousuo_nohis"></span></li>')):a("#JS_history .JS_history_a #his_recent_tit").after('<li id="noValue">您还没有搜索过这里</li>'));var j=a("#JS_history .JS_history_a li.history_item:visible").length;j<opts.sugg.my_localStorageData.length&&a("#JS_history .JS_history_a li.history_item").eq(j).show()}},delRemoteData:function(b){var c=b.closest("li.history_item"),d=c.index(),e=opts.sugg.historyData,f=c.attr("info");c.remove(),e.splice(d-1,1),a("header .search .txt").focus(),a.ajax({type:"get",url:"http://search.zhe800.com/cn/n/del",dataType:"jsonp",jsonp:"callback",jsonpCallback:"del_search",data:{keyword:f},success:function(a){}});var g=a("#JS_history .JS_history_a li.history_item:visible").length;g<e.length&&a("#JS_history .JS_history_a li.history_item").eq(g).show()},historyHover:function(){var b=null;a("#JS_history li.history_item").on("mouseover",function(){a(this).addClass("hover_style"),a(this).siblings().removeClass("hover_style")}),a(".search").off("mouseleave.aa").on("mouseleave.aa",function(){b=setTimeout(function(){a("header .search .txt").blur(),a("header .search .txt").off("focus"),opts.sugg.blurHandler(),opts.sugg.removeHistory()},2e3)}).on("mouseenter",function(){a("header .search .txt").on("focus",opts.sugg.focusHandler),clearTimeout(b)})},Widescreen_opt:function(b){function c(){b.length>0&&(e.html('历史记录<i class="del_zjss">清除</i>'),a(".JS_history_a").on("click","#his_recent_tit .del_zjss",function(a){a.stopPropagation(),opts.sugg.burn_ss_del()}))}function d(){f.html("正在热搜"),e.html("历史记录"),c()}var e=a(".JS_history_a #his_recent_tit"),f=a(".burn #his_recent_tit");a(window).width()>1262&&d(),a(window).resize(function(){a(this).width()<=1262?(f.html("热门搜索"),e.html("最近搜索")):a(this).width()>1262&&d()})},no_log:function(){if(!(a("#JS_history").length>0)){b("deal_statistics").pic_stat("search_pop_up_window");var c=opts.sugg.my_localStorageData,d=opts.sugg.burn_ssData,e=[],f=(a("header .search .txt"),a(window).width()>1262),g=0;e.push("<div id='JS_history' class='search_history'>"),e.push("<ul class='burn clear'>"),e.push("<li id='his_recent_tit'>热门搜索</li>"),d.length>0&&a.each(d,function(a,b){e.push("<li class='history_item burn' info='"+b.word+"'><a class='hisinfo sp' href='"+(b.url+"&utm_content=zhe800_topsearch_hot")+"'>"+b.word+"</a></li>")}),e.push("</ul>"),e.push("<ul class='JS_history_a'>"),e.push("<li id='his_recent_tit'>最近搜索</li>");var h=[];a.each(c,function(a,b){-1==h.indexOf(c[a])&&h.push(c[a])}),c=h,g=f?10:8,c.length<1&&(f?e.push('<li><span class="sousuo_nohis"></span></li>'):e.push('<li id="noValue">您还没有搜索过这里</li>'));for(var i=0;i<c.length;i++)g>i?e.push("<li class='history_item' info='"+c[i]+"'><span class='del'>删除</span><span class='hisinfo'>"+c[i]+"</span></li>"):e.push("<li class='history_item hidden' info='"+c[i]+"'><span class='del'>删除</span><span class='hisinfo'>"+c[i]+"</span></li>");e.push("</ul>"),e.push("</div>"),a("header .search form").after(e.join("")),opts.sugg.Widescreen_opt(c),a("#JS_history li.history_item").on("click",function(){opts.sugg.vals(a(this));var b=a("header .search form");b.append("<input type='hidden' name='utm_content' value='zuijinsousuo' />"),b.submit()}),a("#JS_history .JS_history_a li.history_item").on("click",function(){b("deal_statistics").pic_stat("click_recent_search")}),a("#JS_history .burn .history_item span").on("click",function(){b("deal_statistics").pic_stat("click_recommend")}),a("#JS_history li span.del").on("click",function(b){b.stopPropagation(),opts.sugg.dellocalStorage(a(this),"no")}),opts.sugg.historyHover()}},showHistory:function(){if(0!=opts.sugg.burn_ssData.length)if(""==b.cookie("ppinf"))opts.sugg.no_log();else{if(a("#JS_history").length>0)return;b("deal_statistics").pic_stat("search_pop_up_window");var c=opts.sugg.historyData,d=opts.sugg.burn_ssData,e=[],f=(a("header .search .txt"),a(window).width()>1262),g=0;e.push("<div id='JS_history' class='search_history'>"),e.push("<ul class='burn clear'>"),e.push("<li id='his_recent_tit'>热门搜索</li>"),d.length>0&&a.each(d,function(a,b){e.push("<li class='history_item burn' info='"+b.word+"'><a class='hisinfo sp' href='"+(b.url+"&utm_content=zhe800_topsearch_hot")+"'>"+b.word+"</a></li>")}),e.push("</ul>"),e.push("<ul class='JS_history_a'>"),e.push("<li id='his_recent_tit'>最近搜索</li>");var h=[];a.each(c,function(a,b){-1==h.indexOf(c[a])&&h.push(c[a])}),c=h,opts.sugg.historyData=c,c.length<1&&(f?e.push('<li><span class="sousuo_nohis"></span></li>'):e.push('<li id="noValue">您还没有搜索过这里</li>')),g=f?10:8;for(var i=0;i<c.length;i++)g>i?e.push("<li class='history_item' info='"+c[i]+"'><span class='del'>删除</span><span class='hisinfo'>"+c[i]+"</span></li>"):e.push("<li class='history_item hidden' info='"+c[i]+"'><span class='del'>删除</span><span class='hisinfo'>"+c[i]+"</span></li>");e.push("</ul>"),e.push("</div>"),a("header .search form").after(e.join("")),opts.sugg.Widescreen_opt(c),a("#JS_history li.history_item").on("click",function(){opts.sugg.vals(a(this));var b=a("header .search form");b.append("<input type='hidden' name='utm_content' value='zuijinsousuo' />"),b.submit()}),a("#JS_history .JS_history_a li.history_item").on("click",function(){b("deal_statistics").pic_stat("click_recent_search")}),a("#JS_history .burn .history_item span").on("click",function(){b("deal_statistics").pic_stat("click_recommend")}),a("#JS_history li span.del").on("click",function(b){b.stopPropagation(),opts.sugg.delRemoteData(a(this)),opts.sugg.dellocalStorage(a(this),"yes")}),opts.sugg.historyHover()}},removeHistory:function(){a("#JS_history").remove()}},-1==location.href.indexOf("search.zhe800.com")?opts.sugg.defaultSenKws():a("header .search .txt").val(a("#custumize_word").text()),""==b.cookie("ppinf")&&(opts.sugg.burn_ss(),opts.sugg.my_localStorage()),Keeper.headQueue.push(function(){opts.sugg.burn_ss(),opts.sugg.my_localStorage()}),a("header .search .txt").bind("keyup",opts.sugg.keys).bind("paste",opts.sugg.keys).bind("cut",opts.sugg.keys).bind("focus",opts.sugg.focusHandler).bind("keypress",opts.sugg.submitForm),void a(document.body).bind("click",function(b){var c=a("header .search .txt"),d=a("header .search .showkw");a("#JS_history li.history_item");if($recentTit=a("#his_recent_tit"),b.target==c[0])c.focus();else{if(b.target==$recentTit[0])return;b.target==d[0]?d.hide():(opts.sugg.blurHandler(),opts.sugg.removeHistory())}}))}})});