/*! trade */
require(["jquery"],function(a){a(function(){function b(){e.height(f*g),d=setInterval(function(){h++,c(),h>=f&&(e.stop().css({top:0}).animate({top:-g},1e3),h=1)},5e3)}function c(){var a=h*g;e.stop().animate({top:-a},1e3)}var d,e=a(".scroll_link");a(e).find("li").eq(0).clone().appendTo(e);var f=e.children().length,g=e.find("li").outerHeight(!0),h=0;return 3>f?!1:(e.hover(function(){clearInterval(d)},function(){b()}),void b())})});