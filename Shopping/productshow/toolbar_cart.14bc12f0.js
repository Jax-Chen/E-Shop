/*! trade */
define(["jquery","Keeper"],function(a,b){b("toolbar_cart",{init:function(c){var d='|&nbsp;<div data-behavior="minicart" class="dropdown minicart"><span class="cart"><a target="_blank" href="http://cart.zhe800.com/cart"><i></i>购物车<b data-cart-count-number="cart" class="count">0</b></a></span><div class="dropdown-menu"></div></div>&nbsp;|';return a("#login span.cart").length<1&&(a("#login").append(d),a("#login").attr("data-rendered","yes"),a("#login").trigger("rendered")),b.opts.cartcount?(a('[data-cart-count-number="cart"]').text(b.opts.cartcount.num),!1):(b.opts.cartcount={},void a.getJSON("http://cart.zhe800.com/cart/items_count.jsonp?callback=?",function(c){if(b.opts.cartcount.num=c.data,c&&c.data&&""!=c.data){var d;d=c.data>99?"···":c.data,a("#login .cart .count").text(c.data),a(".side-panel .side-tab-cart span.tab-sup-bd").text(d)}}))}})});