/*! trade */
define(["jquery","Keeper"],function(a,b){"use strict";a.fn.pagination=function(b){var c=a.extend({totalNumber:3,pageNum:1,pageSize:10,viewStep:1,pageNumMax:99,pages:0,showOneBar:!1,showItems:[]},b||{}),d=parseInt(c.pageNum),e=c.totalNumber,f=c.pageSize,g=c.pageNumMax,h=c.pages,i=c.showOneBar,j=c.showItems,k={step:c.viewStep,size:2*c.viewStep+1};if("number"!=typeof d?d=1:1>d?d=1:g&&d>g&&(d=g),h||(h=parseInt(e%f)>0?parseInt(e/f)+1:parseInt(e/f)),1>=h){if(!i)return""}else g&&h>g&&(h=g);var l=[],m={prev:function(a){return'<a class="np_page" href="javascript:void(0)" info="'+a+'">上页</a> '},no_prev:function(){return'<span class="selected">上页</span> '},next:function(a){return'<a class="np_page" href="javascript:void(0)" info="'+a+'">下页</a> '},no_next:function(){return'<span class="selected">下页</span> '},page:function(a){return'<a href="javascript:void(0)" info="'+a+'">'+a+"</a> "},cu_page:function(a){return"<span>"+a+"</span> "},abbr:function(){return'<span class="dd">...</span> '},total:function(a){return"共"+a+"页，"},gopage:function(a){return'到第<input type="text" class="text" value="'+a+'">页<a href="javascript:void(0)">确定</a> '}};if(l.push(1===d?m.no_prev():m.prev(d-1)),l.push(1===d?m.cu_page(1):m.page(1)),h>1+k.size){k.start=d-k.step,k.end=d+k.step,k.start<2?(k.start=2,k.end=2+2*k.step):k.end>h&&(k.end=h,k.start=h-2*k.step),k.start-1>1&&l.push(m.abbr());for(var n=k.start;n<=k.end;n++)l.push(d===n?m.cu_page(n):m.page(n));k.end+1<=h&&l.push(m.abbr())}else for(var n=2;h>=n;n++)l.push(d===n?m.cu_page(n):m.page(n));return l.push(d+1>h?m.no_next():m.next(d+1)),j.indexOf("total")>-1&&l.push(m.total(h)),j.indexOf("gopage")>-1&&l.push(m.gopage(d)),a(this).length?void a(this).empty().append(l.join("")):l.join("")}});