<%@page import="java.sql.Timestamp"%>
<%@page import="com.bjsxt.shopping.*"%>
<%@page import="com.bjsxt.shopping.DAO.*"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.bjsxt.shopping.User"%>
<%@page import="com.bjsxt.shopping.User"%>
<%@page import="com.bjsxt.shopping.User"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    
<%
int id = Integer.parseInt(request.getParameter("id"));
Product p = ProductMgr.getInstance().loadById(id);
%>
    
<!DOCTYPE html>
<!-- saved from url=(0082)http://shop.zhe800.com/products/ze160604212215728082?jump_source=1&qd_key=qyOwt6Jn -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=GB18030">
  <meta charset="utf-8">
  <title>�Ƴ��й������</title>
  <meta name="keywords" content="�¿�����忨���崥��������QQ΢����Ů��ѧ������ͨ���ֱ�,�۸�,ͼƬ,�ۿ�,��ô��">
  <meta name="description" content="��800�����̳����������¿�����忨���崥��������QQ΢����Ů��ѧ������ͨ���ֱ�����ҳ���˽��¿�����忨���崥��������QQ΢����Ů��ѧ������ͨ���ֱ����Ʒ�۸�ͼƬ���ۿ۵���Ϣ���顣">
  <meta name="renderer" content="webkit">
  <link rel="stylesheet" href="./productshow/trade.css">
  <link rel="stylesheet" href="./productshow/new_products.9ce6f386.css">
  <!--[if lte IE 9]>
  <script src="http://i3.tuanimg.com/pub/lib/html5shiv.min.js"></script>
  <![endif]-->

 </head>
<body>
    <div id="toolbar">
      <div class="toolbar area">
        <div class="right flow">
          <a href="#" class="contractKf" target="_blank">��������</a>
          | <a target="_blank" href="#">��������</a>
        </div>
        <div class="right" id="login" data-rendered="yes">
          <em id="tblogin"><a target="_blank" class="qq" href="https://passport.zhe800.com/sso/partner_login/qq_connect?return_to=http%3A%2F%2Fshop.zhe800.com%2Fproducts%2Fze160604212215728082%3Fjump_source%3D1%26qd_key%3DqyOwt6Jn"><i></i>QQ��¼</a> | <a class="red" href="#login?return_to=http%3A%2F%2Fshop.zhe800.com%2Fproducts%2Fze160604212215728082%3Fjump_source%3D1%26qd_key%3DqyOwt6Jn">��¼</a> <a class="red" href="#signup?return_to=http%3A%2F%2Fshop.zhe800.com%2Fproducts%2Fze160604212215728082%3Fjump_source%3D1%26qd_key%3DqyOwt6Jn">���ע��</a> | <span></span><a target="_blank" href="http://shop.zhe800.com/my/orders">�ҵĶ���</a></em><div class="hidden"></div>
        |&nbsp;<div data-behavior="minicart" class="dropdown minicart"><span class="cart"><a target="_blank" href="http://cart.zhe800.com/cart"><i></i>���ﳵ<b data-cart-count-number="cart" class="count">0</b></a></span><div class="dropdown-menu"></div></div>&nbsp;|</div>
    
        <div class="right">
          <a target="_blank" href="#">�Ƴ���</a> |
          <div class="phone-qrcode-down">
            <span class="top_qrcode">
              <a target="_blank" href="#app"><i class="phone-qrcode-icon"></i>�ֻ���</a> |
              <em></em>
            </span>
            <div class="dropdown-menu">
              <a target="_blank" href="#app"></a>
            </div>
          </div>
        </div>
      </div>
    </div><div class="side-panel side_panel"> <div class="side-tab side-tab-top side-tab-cart side-tab-top0"> <div class="tab-icon cart-icon"></div> <a href="http://cart.zhe800.com/cart?utm_content=right_bar" target="_blank"><div class="tab-text">���ﳵ</div> <div class="tab-sup"> <div class="tab-sup-bg"> <span data-cart-count-number="cart" class="tab-sup-bd">0</span> </div> </div> </a> </div> <div class="side-tab side-tab-top side-tab-order side-tab-top1"> <div class="tab-icon order-icon"><a href="http://shop.zhe800.com/my/orders?utm_content=right_bar" target="_blank"></a></div> <div class="tab-tip tab-tip-order"><a href="http://shop.zhe800.com/my/orders?utm_content=right_bar" target="_blank">�ҵĶ���</a><div class="tab-icon arr-icon"></div> </div> </div> <div class="side-tab side-tab-top side-tab-coupons side-tab-top2"> <div class="tab-icon coupons-icon"><a href="http://shop.zhe800.com/my/coupons?utm_content=right_bar" target="_blank"></a></div> <div class="tab-tip"><a href="http://shop.zhe800.com/my/coupons?utm_content=right_bar" target="_blank">�ҵ��Ż�ȯ</a><div class="tab-icon arr-icon"></div> </div> </div> <div class="side-tab side-tab-top side-tab-store side-tab-top3"> <div class="tab-icon store-icon"><a href="#profile/my_favorites/all?utm_content=right_bar" target="_blank"></a></div> <div class="tab-tip"><a href="#profile/my_favorites/all?utm_content=right_bar" target="_blank">�ҵ��ղ�</a><div class="tab-icon arr-icon"></div> </div> </div><a href="javascript:void(0);" target="_blank" class="side-tab-imMessage-link"><div class="side-tab side-tab-top side-tab-imMessage side-tab-top4"> <div class="tab-icon imMessage-icon"><em class="quan_num">0</em></div> <div class="tab-tip">������Ϣ<div class="tab-icon arr-icon"></div> </div> </div></a> <div class="side-tab side-tab-bottom side-tab-checkin side-tab-bottom4 uncheck"> <div class="tab-icon checkin-icon"></div> <div class="tab-tip sign_panel" style="height: 32px; padding-top: 5px; padding-bottom: 5px; line-height: 16px; display: none; opacity: 1; right: 34px;"><span class="signin">����Ǯ����ǩ��<br>���ֵ����ֻ���</span><div class="tab-icon arr-icon"></div> </div> </div> <div class="side-tab side-tab-bottom side-tab-qrcode side-tab-bottom3"> <div class="tab-icon qrcode-icon"><a href="#app?utm_content=right_bar" target="_blank"></a></div> <div class="tab-tip"><a href="#app?utm_content=right_bar" target="_blank"></a><i class="close"></i><div class="tab-icon arr-icon"></div> </div> </div> <div class="side-tab side-tab-bottom side-tab-faq side-tab-bottom2"> <div class="tab-icon faq-icon"><a href="http://help.zhe800.com/?utm_content=right_bar" target="_blank"></a></div> <div class="tab-tip"><a href="http://help.zhe800.com/?utm_content=right_bar" target="_blank">��������</a><div class="tab-icon arr-icon"></div> </div> </div> <div class="side-tab side-tab-bottom side-tab-feedback feedback_popup_handler side-tab-bottom1"> <div class="tab-icon feedback-icon"></div> <div class="tab-tip">�������<div class="tab-icon arr-icon"></div> </div> </div> <div class="side-tab side-tab-bottom side-tab-totop side-tab-bottom0 thide" id="goTop"> <div class="tab-icon totop-icon"></div> <div class="tab-tip">���ض���<div class="tab-icon arr-icon"></div> </div> </div></div>    <header>
      <div class="area">
        <div class="l">
          <a href="#"><img width="198" height="45" src="./productshow/logo2016.png"></a>
          <br>
          ��800����ѡÿ��������Ʒ        </div>
        <div class="links">
          <a target="_blank" rel="nofollow" href="#n/daiyanrenzhuanti"></a>
        </div>
        <div class="search">
          <form action="http://search.zhe800.com/search" target="_self">
            <input type="text" class="txt" name="keyword" autocomplete="off" data-keyword="�ֱ�">
            <input type="submit" class="smt" value="����">
          </form>
        <span class="showkw">�Ƴ��У�</span></div>
      </div>
    </header>    <nav id="head_nav">
      <div class="head_nav area">
        <div class="l">
          <a href="#">��ҳ<i></i></a>
          <a href="http://brand.zhe800.com/">Ʒ����<i></i></a>
          <a href="#n/youpinhui">��Ʒ��<i class="shop_hot"></i></a>
          <a href="#ju_type/baoyou">9��9����</a>
          <a href="#jingxuanyugao">��ѡԤ��<i></i></a>
          <a href="http://shop.zhe800.com/" class="on">�����̳�<i></i></a>
          <a href="#jifen">�����̳�</a>
          <span class="n"></span>
        </div>
        <div class="r_con">
          <div id="signinid" data-holiday="3" class="dropdown sign_panel" info="1-2-3" return_to="#login?return_to=http%3A%2F%2Fwww.zhe800.com%2F" qdscore="1-2"><a class="signin qdicon" href="#login?return_to=http%3A%2F%2Fwww.zhe800.com%2F"></a><div class="dropdown-menu" style="display: none;"><div class="activity"><img src="./productshow/500x360.02453a77a6924241b3302ad0156c5ef1.500x360.jpg"></div></div></div>
          <a href="#n/daiyanrenzhuanti" rel="nofollow" target="_blank"></a>        </div>
      </div>
    </nav>    <div class="side_nav hidden">
    <div class="logo">
    <a href="#" add_params="utm_content=left_menu">
    <img width="145" height="70" src="./productshow/side_logo_min.png" alt="">
    </a>
    </div>
    <div class="content">
    <div id="choose_identify" class="choose_identify"><span style="background-color:#fe6a6a;">�������&nbsp;:&nbsp;��ѡ��</span></div>
    <div class="bd">

    </div>
    <div class="line"></div>
    <div class="bdc">

    <form action="http://search.zhe800.com/search" target="_blank" class="search">
    <input type="text" autocomplete="off" placeholder="����" class="txt" name="keyword"><input type="submit" class="smt" value="">
    </form>
    </div>
    <div class="zhi_guang">
    <ul>
    <li class="zhi_guang0"><a href="http://zhi.zhe800.com/" add_params="utm_content=left_menu" class="">ֵ����</a></li>
    <em>|</em>
    <li class="zhi_guang1"><a href="http://guang.zhe800.com/" add_params="utm_content=left_menu" class="">ֵ�ù�</a></li>
    <em>|</em>
    <li class=""><a href="http://shop.zhe800.com/products/recharge" add_params="utm_content=left_menu" class="" target="_blank">��ֵ</a></li>
    </ul>
    </div>
    </div>
    </div>    
<!--��Ʒ��ϸS-->
<form method="post" action="buy.jsp" id="detail_form">
   <input type="hidden" name="id" value="<%= p.getId()%>">
    <aside class="pos area">
        <a href="http://shop.zhe800.com/" target="_blank">�����̳�</a>
        <i>&gt;</i> <a target="_blank" href="http://shop.zhe800.com/ju_tag/taoshuma"> <em class="classification" data-tagid="3001">����</em></a> 
        <i>&gt;</i> �ֻ��ܱ� 
        <i>&gt;</i> �¿�����忨���崥��������QQ΢...
    </aside>
    <article id="detail" class="area clear">
        <div class="deteilpic l">
                    
            <em class="icon_text_b">��ȯ<br>69��10</em><figure style="height: 400px;">
                <img src="./productshow/700x700.7e7f6548a58ff0f282edc6ccc6225c86.400x.jpg">
            </figure>
        
            
        </div>
        <div class="detailmeta l">

            <aside class="">
                <hgroup>

                    <div class="posab"></div>
                </hgroup>
                <h4>
                    <b><a class="js_utm_params" target="_blank" href="http://store23791.zhe800.com/" utm_content="p_detail_seller_name">�����ֻ�������</a></b>
                        <span></span>                </h4>
                <ol>
                    <li><a class="js_utm_params" target="_blank" href="http://store23791.zhe800.com/seller_prestige.html" utm_content="p_detail_seller_prestige"><label>����������</label><em class="leA A23"></em></a></li>
                    <li style="display:none;"><label>����ʱ�䣺</label><em>2016-03-16 09:00:00</em></li>
                  <li>
                    <a target="_blank" href="http://help.zhe800.com/detail/279">
                        <label>�������ʣ�</label>
                          <em class="ps js_common_ps">
                              <i class="l1"></i><i class="l2"></i><i class="l3"></i>
                              <em class="info">
                                  <sup></sup>
                                  <p><i class="l1"></i>��800��֤�̼�</p>
                                  <p><i class="l2"></i>�ѽ��ɱ�֤��</p>
                                  <p><i class="l3"></i>�����ۺ����</p>
                              </em>                          </em>                      </a>
                    </li>
                    <li>
                        <label>��ϵ�̼ң�</label>
                        <span class="im_icon" data-seller-jid="23791#0" data-clickkey="p_detail_seller_xinxi_contact_service_up"><iframe src="./productshow/init(1).html" frameborder="no" scrolling="no" style="border: none; width: 80px; height: 24px;"></iframe></span>
                    </li>
                </ol>
                <a target="_blank" href="http://store23791.zhe800.com/seller_prestige.html">
                    <dl>
                      <dd class="ms">
                            <label>����</label>
                            <br>
                          <em class="up">
                              <em class="ps js_common_ps">
                                  4.8&nbsp;<b>��</b>
                                  <em class="info">
                                      <sup></sup>����ͬ��ҵƽ��&nbsp;13.13%                                  </em>                          </em>                          </em>                        </dd>
                        <dd class="fw">
                            <label>����</label>
                            <br>
                            <em class="up">
                                <em class="ps js_common_ps">
                                    4.8&nbsp;<b>��</b>
                                    <em class="info">
                                        <sup></sup>����ͬ��ҵƽ��&nbsp;8.73%                                    </em>                            </em>                            </em>                        </dd>
                        <dd class="fh">
                            <label>����</label>
                            <br>
                            <em class="up">
                                <em class="ps js_common_ps">
                                    4.8&nbsp;<b>��</b>
                                    <em class="info">
                                        <sup></sup>����ͬ��ҵƽ��&nbsp;12.56%                                    </em>                                </em>                            </em>                        </dd>
                    </dl>
                </a>
                <div class="rk">
                    <a class="js_utm_params" target="_blank" href="http://store23791.zhe800.com/" utm_content="p_detail_seller"><label>�������</label></a>
                    <a class="button_store" href="javascript:;"><label>�ղر���</label></a>
                </div>
            </aside>
            <div class="wrap l clear">
                
                <!--��Ʒ����-->
                <h1><%= p.getName() %></h1>
                <h3></h3>
            </div>
            

            <div class="panelA">
                <div class="bg_yel clear">
                    <dl class="price">
                        <dd class="colspan">
                            <span class="r js_xl_span"><i class="fontYaHei">90</i>������&nbsp;<i class="red fontYaHei js_xl_i">170</i>&nbsp;��</span>
                            <strong class="red js_price_st" minprice="98.00" maxprice="98.00">�0�6<i info="98.00"><%= p.getMemberprice() %></i></strong>
                            
                                <del class="js_org_price">�0�6<i info="198.00"><%= p.getNormalprice() %></i></del>
                            <i class="icon discount">
                            </i>
                        </dd>
                    </dl>
                    
                    <dl class="time js_time_dl" style="display:none;">
                    </dl>
                    <dl class="jifen js_jifen" style="">
                        <dt><sub>����</sub></dt>
                        <dd>
                            <div class="levelbox">
                                <span class="level level1"><a href="http://help.zhe800.com/detail/452" target="_blank"><i class="fontArial">Z0</i>��෵40����<em>��</em></a></span>
                                <ul>
                                    <li class="cur"><a target="_blank" href="http://help.zhe800.com/detail/452">Z0&nbsp;��෵ <b>40</b> ����</a></li>
                                    
                                </ul>
                            </div>
                            <a target="_blank" href="#jifendixian">���ֿɵֶ������</a>
                        </dd>
                    </dl>
                </div>
                <dl class="address" id="address">
                    <dt>�˷�</dt>
                    <dd>
                        �㶫 ����&nbsp;&nbsp;��
                        <address>
                            <i attr-id="330000">�㽭</i>
                            <em class="down">��</em>
                            <div class="diatip city" style="display: none;">
                                <a href="javascript:;" class="close"></a>
                                <ul>
                                    <li><a attr-id="110000" href="javascript:;">����</a></li>
                                    <li><a attr-id="120000" href="javascript:;">���</a></li>
                                    <li><a attr-id="310000" href="javascript:;">�Ϻ�</a></li>
                                    <li><a attr-id="500000" href="javascript:;">����</a></li>
                                    <li><a attr-id="130000" href="javascript:;">�ӱ�</a></li>
                                    <li><a attr-id="140000" href="javascript:;">ɽ��</a></li>
                                    <li><a attr-id="150000" href="javascript:;">���ɹ�</a></li>
                                    <li><a attr-id="210000" href="javascript:;">����</a></li>
                                    <li><a attr-id="220000" href="javascript:;">����</a></li>
                                    <li><a attr-id="230000" href="javascript:;">������</a></li>
                                    <li><a attr-id="320000" href="javascript:;">����</a></li>
                                    <li><a attr-id="330000" href="javascript:;">�㽭</a></li>
                                    <li><a attr-id="340000" href="javascript:;">����</a></li>
                                    <li><a attr-id="350000" href="javascript:;">����</a></li>
                                    <li><a attr-id="360000" href="javascript:;">����</a></li>
                                    <li><a attr-id="370000" href="javascript:;">ɽ��</a></li>
                                    <li><a attr-id="410000" href="javascript:;">����</a></li>
                                    <li><a attr-id="420000" href="javascript:;">����</a></li>
                                    <li><a attr-id="430000" href="javascript:;">����</a></li>
                                    <li><a attr-id="440000" href="javascript:;">�㶫</a></li>
                                    <li><a attr-id="450000" href="javascript:;">����</a></li>
                                    <li><a attr-id="460000" href="javascript:;">����</a></li>
                                    <li><a attr-id="510000" href="javascript:;">�Ĵ�</a></li>
                                    <li><a attr-id="520000" href="javascript:;">����</a></li>
                                    <li><a attr-id="530000" href="javascript:;">����</a></li>
                                    <li><a attr-id="540000" href="javascript:;">����</a></li>
                                    <li><a attr-id="610000" href="javascript:;">����</a></li>
                                    <li><a attr-id="620000" href="javascript:;">����</a></li>
                                    <li><a attr-id="630000" href="javascript:;">�ຣ</a></li>
                                    <li><a attr-id="640000" href="javascript:;">����</a></li>
                                    <li><a attr-id="650000" href="javascript:;">�½�</a></li>
                                </ul>
                            </div>
                        </address><em>���˷�</em>
                    </dd>
                </dl>
                <dl class="fuwu">
                    <dt>����</dt>
                    <dd>
                        <p><i class="icon zhe800jian">��</i>����Ʒ���Ƴ��д�����</p>
                        <p><i class="icon i24">24</i>֧���ɹ��󣬰�Сʱ���͵���</p>
                    </dd>
                </dl>
                <div class="js_reskubox sku_box">
                    <span class="close"></span>
                    <h3>��ѡ����Ҫ�������Ʒ��Ϣ��</h3>
                    
                    <p class="red attention"></p>
                    <dl class="numb clear">
                        <dt>����</dt>
                        <dd>
                            <p>
                                <i class="decrease no-drop"></i>
                                <input type="text" value="1" name="count">
                                <i class="increase"></i>
                            </p>
                            <span class="kucun">
                                
                                ���<i class="js_kucun_i" stockcount="159">159</i>��
                                                                (ÿ���޹�<i>5</i>��)
                            </span>
                            <span class="red"></span>
                        </dd>
                    </dl>
                    <a href="javascript:;" class="sku_box_btn no">ȷ��</a>
                </div>
                <div class="submit">
                    <span class="s2">
                        <input type="submit" value="��������" class="gbtn direct_buy_is_bind_mobile">
                    </span>
                        <span class="cart">
                            <input type="submit" class="gbtn" value="���빺�ﳵ">
                        </span>
                </div>
                <div class="panelD">
                    <span class="bt">
                        <a rel="nofollow" target="_blank" href="http://help.zhe800.com/detail/104"><i>8</i> 8���������˻�</a>
                    </span>
                    
                    <span class="sq">
                        <a rel="nofollow" target="_blank" href="http://shop.zhe800.com/n/act/yunfeibutieka?utm_content=p_detail_baozhang"><i></i> �˻������Ż�ȯ</a>
                    </span>
                        <span class="picc">
                           <i>��</i> ����Ʒ����800���й��˱���PICC�����ϳб�
                        </span>
                    <span class="no_coupon js_no_zhe_coupon" style="display:none">
                        <i></i> ����Ʒ��֧��ʹ��A���Ż�ȯ
                    </span>
                </div>
            </div>
            
        </div>
    </article>
</form>

    <div style="display:none;">
        <a href="http://shop.zhe800.com/help_center/faq/BPOS0001" id="right_faq"></a>
    </div>
    <div class="area baozheng">
        <a rel="nofollow" target="_blank" href="http://help.zhe800.com/detail/79"></a>
        <a rel="nofollow" target="_blank" href="http://help.zhe800.com/detail/258"></a>
        <a rel="nofollow" target="_blank" href="http://help.zhe800.com/detail/104"></a>
        <a rel="nofollow" target="_blank" href="http://help.zhe800.com/detail/81"></a>
    </div>

<script type="text/javascript">
    var post = {"postType":0,"noFree":"","firstPostPrice":"0.00","addPostPrice":"0.00"};
    var stockInfo = {"m_id_1024":{"prop_1":{"vPicture":"800x800.fd4502e022e1c760bda573c5122f68e0.jpg","vId":"1024","vColor":"#000000","pId":"1","pName":"��ɫ","vName":"��ɫ","vDefault":""},"prop_2":[{"property":{"activeProductCount":"50","orgPrice":"198","curPrice":"98","sellerClassNum":"","shelf":""},"c_id":"0","vPicture":"","vId":"","pId":"0","pName":"����","vName":"","vDefault":""}],"m_id":"1024"},"m_id_1023":{"prop_1":{"vPicture":"800x800.a879d0a1ff8a1577ca616dd118022788.jpg","vId":"1023","vColor":"#ffff00","pId":"1","pName":"��ɫ","vName":"���Ľ�","vDefault":""},"prop_2":[{"property":{"activeProductCount":"50","orgPrice":"198","curPrice":"98","sellerClassNum":"","shelf":""},"c_id":"0","vPicture":"","vId":"","pId":"0","pName":"����","vName":"","vDefault":""}],"m_id":"1023"},"m_id_1012":{"prop_1":{"vPicture":"800x800.a30ec45cfee5035a2fdc1b220d5802ec.jpg","vId":"1012","vColor":"#ffffff","pId":"1","pName":"��ɫ","vName":"��ɫ","vDefault":""},"prop_2":[{"property":{"activeProductCount":"75","orgPrice":"198","curPrice":"98","sellerClassNum":"","shelf":""},"c_id":"0","vPicture":"","vId":"","pId":"0","pName":"����","vName":"","vDefault":""}],"m_id":"1012"}};
    var maxBuyLimit = 5;
    var sellerId = 23791;
    var sellerName = "�����ֻ�������";
    var dealId = '4998805';
    var productId = 'ze160604212215728082';
    var detail_adv = {"top":null,"middle":[],"bottom":null,"dacu":null};
    var discountInfo = {"23791":{"Id":109511,"name":"����","sellerId":23791,"startTime":"2016-06-25 13:18:00","endTime":"2016-07-31 23:59:00","range":1,"productIdlist":null,"type":1,"rule":"80-4","createTime":"2016-06-25 13:17:14","lastUpdateTime":"2016-06-25 13:17:28","state":0}};
    var store_recommend = [{"id":4792265,"title":"�ƶ���ֱͨ�������ֻ�","url_name":"laorenshou","price":7900,"list_price":12900,"baoyou":1,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/zhaoshang/720x480.fdeb56b82a55d9e6a6ad2484d8706238.jpg","wireless_image":"imagev2/zhaoshang/700x700.efcc004b0fbf82d5dfd4edf17a7206fb.640x700+1-1.jpg","sales_count":356,"tb_shop_id":23791,"short_title":"�ƶ���ֱͨ�������ֻ�","begin_time":"2016-06-10 09:00:00","brand_id":-1,"special_deal_type":0,"isyoupinhui":0,"hypermarket":0,"zid":"ze160326142149353463","d90_count":356,"square_image":"imagev2/zhaoshang/700x700.efcc004b0fbf82d5dfd4edf17a7206fb.jpg"},{"id":4894489,"title":"�ƶ�4G������׿�����ֻ�","url_name":"anzhuozhin","price":34800,"list_price":59900,"baoyou":1,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/zhaoshang/720x480.ccf6489865b75e45ada1a58295222311.jpg","wireless_image":"imagev2/zhaoshang/700x700.1df0d603fc023cbf265f9d9944c3e21d.640x700+1-1.jpg","sales_count":174,"tb_shop_id":23791,"short_title":"�ƶ�4G������׿�����ֻ�","begin_time":"2016-06-17 09:00:00","brand_id":-1,"special_deal_type":0,"isyoupinhui":0,"hypermarket":0,"zid":"ze160319154414311878","d90_count":174,"square_image":"imagev2/zhaoshang/700x700.1df0d603fc023cbf265f9d9944c3e21d.jpg"},{"id":4489823,"title":"������ֱ�������������ֻ�","url_name":"zhibanzhon","price":4800,"list_price":9900,"baoyou":1,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/zhaoshang/720x480.ec29d1f556aa15058400e6363936d012.jpg","wireless_image":"imagev2/site/700x700.6be814332405f3dc64bde58e6b1ce997.640x700+1-1.jpg","sales_count":167,"tb_shop_id":23791,"short_title":"������ֱ�������������ֻ�","begin_time":"2016-05-29 09:00:00","brand_id":-1,"special_deal_type":0,"isyoupinhui":0,"hypermarket":0,"zid":"ze160429172231548750","d90_count":167,"square_image":"imagev2/site/700x700.6be814332405f3dc64bde58e6b1ce997.jpg"},{"id":4656277,"title":"Ŧ��M560���������ֻ�","url_name":"niumanM5","price":11900,"list_price":39900,"baoyou":1,"repricing":1,"back_score":0,"sales_volume":3,"imageName":"imagev2/zhaoshang/720x480.2e61575cd5b6558f08cbb13c7abd6fc1.jpg","wireless_image":"imagev2/site/700x700.1d384d2e37a3ae747b73a639c72cff79.640x700+1-1.jpg","sales_count":160,"tb_shop_id":23791,"short_title":"Ŧ��M560���������ֻ�","begin_time":"2016-06-04 09:00:00","brand_id":-1,"special_deal_type":0,"isyoupinhui":0,"hypermarket":0,"zid":"ze160320203111317424","d90_count":158,"square_image":"imagev2/site/700x700.1d384d2e37a3ae747b73a639c72cff79.jpg"},{"id":4652921,"title":"�ƶ�ֱ�������Ů�����ֻ�","url_name":"yidonglaor","price":5800,"list_price":12900,"baoyou":1,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/zhaoshang/720x480.d9c6e9b49931b24efd398237fbaaa7ca.jpg","wireless_image":"imagev2/trade/800x800.23b115001b9a60df4a5f913c51faf2ce.640x700+1-1.jpg","sales_count":97,"tb_shop_id":23791,"short_title":"�ƶ�ֱ�������Ů�����ֻ�","begin_time":"2016-06-02 09:00:00","brand_id":-1,"special_deal_type":0,"isyoupinhui":0,"hypermarket":0,"zid":"ze160310215750258115","d90_count":85,"square_image":"imagev2/trade/800x800.23b115001b9a60df4a5f913c51faf2ce.jpg"},{"id":4998877,"title":"��׿4.7�����ֻ���ͨ�ƶ����������˫��˫��ѧ����Ů�������","url_name":"anzhuo47","price":23800,"list_price":39900,"baoyou":1,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/zhaoshang/720x480.fe026838985896536420549692b23b1e.jpg","wireless_image":"imagev2/zhaoshang/700x700.a06c7305709b92e9d10e356378790c84.640x700+1-1.jpg","sales_count":77,"tb_shop_id":23791,"short_title":"��ͨ�ƶ�4G ��׿�����ֻ�","begin_time":"2016-06-25 09:00:00","brand_id":-1,"special_deal_type":0,"isyoupinhui":0,"hypermarket":0,"zid":"ze160608192613746848","d90_count":77,"square_image":"imagev2/zhaoshang/700x700.a06c7305709b92e9d10e356378790c84.jpg"},{"id":4327881,"title":"Fadar/���ͨ FT C18����CDMA��������ֱ����������ֻ�","url_name":"Fadar","price":19900,"list_price":39900,"baoyou":1,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/zhaoshang/720x480.e78ebf7f7acc0c6978d446dcabf7ab6e.jpg","wireless_image":"imagev2/site/700x700.96fc01827f9477f6c704a6835a0c5486.640x700+1-1.jpg","sales_count":76,"tb_shop_id":23791,"short_title":"�������������������ֻ�","begin_time":"2016-05-16 09:00:00","brand_id":-1,"special_deal_type":0,"isyoupinhui":0,"hypermarket":0,"zid":"ze160319115433310336","d90_count":76,"square_image":"imagev2/site/700x700.96fc01827f9477f6c704a6835a0c5486.jpg"},{"id":4653683,"title":"UniscopE/��˼ US96ֱ�������ֻ����������ִ������˻������ֻ�","url_name":"Unisc","price":10800,"list_price":39900,"baoyou":1,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/zhaoshang/720x480.3b6830627433d46a48103f6d5b16e6b5.jpg","wireless_image":"imagev2/site/700x700.bb3ab974575f42f46741bdd6bec93445.640x700+1-1.jpg","sales_count":50,"tb_shop_id":23791,"short_title":"��˼ֱ�������ֻ�������","begin_time":"2016-06-03 09:00:00","brand_id":-1,"special_deal_type":0,"isyoupinhui":0,"hypermarket":0,"zid":"ze160307114956231476","d90_count":44,"square_image":"imagev2/site/700x700.bb3ab974575f42f46741bdd6bec93445.jpg"},{"id":4792267,"title":"�ƶ�ֱ����������ֻ�","url_name":"yidongzhib","price":6900,"list_price":9900,"baoyou":1,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/zhaoshang/720x480.042dcde64db71ad4b93e013006b4746a.jpg","wireless_image":"imagev2/zhaoshang/700x700.4e694ef089f1d170220fa1500fdd8a01.640x700+1-1.jpg","sales_count":47,"tb_shop_id":23791,"short_title":"�ƶ�ֱ����������ֻ�","begin_time":"2016-06-11 09:00:00","brand_id":-1,"special_deal_type":0,"isyoupinhui":0,"hypermarket":0,"zid":"ze160313200510273140","d90_count":43,"square_image":"imagev2/zhaoshang/700x700.4e694ef089f1d170220fa1500fdd8a01.jpg"},{"id":4894565,"title":"ͨ���ƶ���ͨ�������4G���ĺ˰�׿�����ֻ�˫ģ˫��˫��","url_name":"tongyongyi","price":39900,"list_price":49900,"baoyou":1,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/zhaoshang/720x480.e0760b0a5cb1c1ede27dcb9bdfaa0f35.jpg","wireless_image":"imagev2/zhaoshang/700x700.370bf0edb5f170e68c96b345c75db7df.640x700+1-1.jpg","sales_count":45,"tb_shop_id":23791,"short_title":"����4G�ĺ������ֻ�","begin_time":"2016-06-18 09:00:00","brand_id":-1,"special_deal_type":0,"isyoupinhui":0,"hypermarket":0,"zid":"ze160321151223321393","d90_count":41,"square_image":"imagev2/zhaoshang/700x700.370bf0edb5f170e68c96b345c75db7df.jpg"},{"id":5091817,"title":"��ͨ�������ĸ��ֻ�ͨ���߿����ĸ˿�����������ƻ����׿������","url_name":"qiatongmin","price":990,"list_price":1290,"baoyou":1,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/zhaoshang/720x480.93cb23df4218f9b0f19d827207326aed.jpg","wireless_image":"imagev2/trade/800x800.e955234acec8146a4917f58ae4669584.640x700+1-1.jpg","sales_count":43,"tb_shop_id":23791,"short_title":"��ͨ�����߿����ĸ�","begin_time":"2016-06-23 16:00:00","brand_id":-1,"special_deal_type":0,"isyoupinhui":0,"hypermarket":0,"zid":"ze160620105406792177","d90_count":43,"square_image":"imagev2/trade/800x800.e955234acec8146a4917f58ae4669584.jpg"},{"id":4791507,"title":"׿�� e203 �����˶�����ͷ��ʽ�����ɲ忨�ֻ�����ͨ����","url_name":"zhuoyie2","price":8900,"list_price":19900,"baoyou":1,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/site/720x480.7518cb68a277046d08e19436af5dc124.jpg","wireless_image":"imagev2/site/800x800.74f59b5c995bdeb626c69012c5802cbe.640x700+1-1.jpg","sales_count":30,"tb_shop_id":23791,"short_title":"ͷ��ʽ��������ͨ���Ͷ���","begin_time":"2016-06-07 09:00:00","brand_id":-1,"special_deal_type":0,"isyoupinhui":0,"hypermarket":0,"zid":"ze160526152911683600","d90_count":30,"square_image":"imagev2/site/800x800.74f59b5c995bdeb626c69012c5802cbe.jpg"},{"id":4998913,"title":"4.7�簲׿˫���ĺ������ֻ�","url_name":"47yingcun","price":23800,"list_price":39900,"baoyou":1,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/zhaoshang/720x480.5902e6fbf4343e641c56a0201e95c300.jpg","wireless_image":"imagev2/zhaoshang/700x700.5ee02a9a03c2b60802514c0f081c1541.640x700+1-1.jpg","sales_count":27,"tb_shop_id":23791,"short_title":"4.7�簲׿˫���ĺ������ֻ�","begin_time":"2016-06-26 09:00:00","brand_id":-1,"special_deal_type":0,"isyoupinhui":0,"hypermarket":0,"zid":"ze160607180220741520","d90_count":27,"square_image":"imagev2/zhaoshang/700x700.5ee02a9a03c2b60802514c0f081c1541.jpg"},{"id":5298665,"title":"JKL D3000 ���������ȴ󰴼����ظ����ˤ΢�ų�籦�����ֻ�","url_name":"JKLD","price":13800,"list_price":22900,"baoyou":1,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/zhaoshang/720x480.a181905c1a4f5dfa65a223f2c16fd51f.jpg","wireless_image":"imagev2/trade/600x600.859dc917a660d78ba76a56d4a32a8cb7.640x700+1-1.jpg","sales_count":27,"tb_shop_id":23791,"short_title":"��������΢�ų�籦�ֻ�","begin_time":"2016-07-01 09:00:00","brand_id":26677,"special_deal_type":0,"isyoupinhui":0,"hypermarket":0,"zid":"ze160512091606604595","d90_count":27,"square_image":"imagev2/trade/600x600.859dc917a660d78ba76a56d4a32a8cb7.jpg"},{"id":5145663,"title":"�¿����������ֱ� ��׿���������˶��ֱ� ��ͯ�ֱ�","url_name":"xinkuanlan","price":6900,"list_price":9900,"baoyou":1,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/site/720x480.2e622f582896258f15013e16c14c4b97.jpg","wireless_image":"imagev2/zhaoshang/700x700.9ec7dfdba46b18070472145a97dda0fc.640x700+1-1.jpg","sales_count":25,"tb_shop_id":23791,"short_title":"�¿׿���������ֱ�","begin_time":"2016-06-30 09:00:00","brand_id":-1,"special_deal_type":0,"isyoupinhui":0,"hypermarket":0,"zid":"ze160421203055503117","d90_count":25,"square_image":"imagev2/zhaoshang/700x700.9ec7dfdba46b18070472145a97dda0fc.jpg"},{"id":4998747,"title":"Ŧ��V5�ƶ���ͨ���������ֻ�","url_name":"dazidaanji","price":7200,"list_price":13900,"baoyou":1,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/zhaoshang/720x480.9d87ef3947eb730500bfdc5f19d5b231.jpg","wireless_image":"imagev2/zhaoshang/700x700.b33daceac410bd88601f192ef7417927.640x700+1-1.jpg","sales_count":24,"tb_shop_id":23791,"short_title":"Ŧ��V5�ƶ���ͨ���������ֻ�","begin_time":"2016-06-24 09:00:00","brand_id":-1,"special_deal_type":0,"isyoupinhui":0,"hypermarket":0,"zid":"ze160604205802728022","d90_count":24,"square_image":"imagev2/zhaoshang/700x700.b33daceac410bd88601f192ef7417927.jpg"},{"id":4998761,"title":"��Ůʿ���������ֻ�Ů���ͯѧ���ƶ����갴�����˻����ִ���","url_name":"nannvshifa","price":9900,"list_price":19900,"baoyou":1,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/zhaoshang/720x480.82894e9b65cd2d8aac2bb5c1cf2de89c.jpg","wireless_image":"imagev2/zhaoshang/700x700.44003d3bfc91d0a29d21a72b199a91e8.640x700+1-1.jpg","sales_count":24,"tb_shop_id":23791,"short_title":"��Ůʿ���Ǵ󰴼������ֻ�","begin_time":"2016-06-25 09:00:00","brand_id":-1,"special_deal_type":0,"isyoupinhui":0,"hypermarket":0,"zid":"ze160530214055703340","d90_count":24,"square_image":"imagev2/zhaoshang/700x700.44003d3bfc91d0a29d21a72b199a91e8.jpg"},{"id":4791561,"title":"����ֱ���ƶ���ͨ�����ֻ�","url_name":"dapingzhib","price":8900,"list_price":14900,"baoyou":1,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/zhaoshang/720x480.f99db17fc14be74c056f7a36c1a9b117.jpg","wireless_image":"imagev2/zhaoshang/700x700.ef2b19671ddfcce1d03394590dfedd1d.640x700+1-1.jpg","sales_count":23,"tb_shop_id":23791,"short_title":"����ֱ���ƶ���ͨ�����ֻ�","begin_time":"2016-06-10 09:00:00","brand_id":-1,"special_deal_type":0,"isyoupinhui":0,"hypermarket":0,"zid":"ze160526142043682611","d90_count":23,"square_image":"imagev2/zhaoshang/700x700.ef2b19671ddfcce1d03394590dfedd1d.jpg"},{"id":5298797,"title":"JKL A61 ���ִ󰴼��������������������˶�λ�����������ֻ�","url_name":"JKLA","price":7900,"list_price":19900,"baoyou":1,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/zhaoshang/720x480.537b275e1940b1bb4c7b253bc9415d0c.jpg","wireless_image":"imagev2/trade/600x600.6fbc664068dce00cc94db9bedb8d1223.640x700+1-1.jpg","sales_count":19,"tb_shop_id":23791,"short_title":"���ִ󰴼������ֻ�","begin_time":"2016-07-01 09:00:00","brand_id":26677,"special_deal_type":0,"isyoupinhui":0,"hypermarket":0,"zid":"ze160512084138604528","d90_count":19,"square_image":"imagev2/trade/600x600.6fbc664068dce00cc94db9bedb8d1223.jpg"},{"id":4998737,"title":"Ŧ��K3-S˫4G�����ֻ�","url_name":"niumanK3","price":44800,"list_price":69900,"baoyou":1,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/site/720x480.1907ae231dddbe18954681b43301b1e8.jpg","wireless_image":"imagev2/zhaoshang/700x700.f27002038ac0192237ece3feb814fa59.640x700+1-1.jpg","sales_count":14,"tb_shop_id":23791,"short_title":"Ŧ��K3-S˫4G�����ֻ�","begin_time":"2016-06-24 09:00:00","brand_id":-1,"special_deal_type":0,"isyoupinhui":0,"hypermarket":0,"zid":"ze160605142421729373","d90_count":14,"square_image":"imagev2/zhaoshang/700x700.f27002038ac0192237ece3feb814fa59.jpg"},{"id":5063135,"title":"ZTE/���� BA510 5.0��˫��˫�� �ƶ�4G�ĺ����������ֻ�","url_name":"ZTEzhong","price":39900,"list_price":49900,"baoyou":1,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/site/720x480.9dcef4e3f962ee914d7bef18311df323.jpg","wireless_image":"imagev2/zhaoshang/700x700.bcfa27e72f917761288e1f1e02749775.640x700+1-1.jpg","sales_count":10,"tb_shop_id":23791,"short_title":"����BA510�����ֻ�","begin_time":"2016-06-22 10:00:00","brand_id":-1,"special_deal_type":0,"isyoupinhui":0,"hypermarket":0,"zid":"ze160617095112781331","d90_count":10,"square_image":"imagev2/zhaoshang/700x700.bcfa27e72f917761288e1f1e02749775.jpg"},{"id":5165131,"title":"����X500�ƶ�4G�����ֻ�","url_name":"Daxia","price":43900,"list_price":69900,"baoyou":1,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/site/720x480.4d5f24396ac6cd7fdb97a11d07e3fd18.jpg","wireless_image":"imagev2/zhaoshang/600x600.4fc40e243c0b02b3c4be7ec240ee4ab0.640x700+1-1.jpg","sales_count":10,"tb_shop_id":23791,"short_title":"����X500�ƶ�4G�����ֻ�","begin_time":"2016-06-27 10:00:00","brand_id":-1,"special_deal_type":0,"isyoupinhui":0,"hypermarket":0,"zid":"ze160622204853808058","d90_count":10,"square_image":"imagev2/zhaoshang/600x600.4fc40e243c0b02b3c4be7ec240ee4ab0.jpg"},{"id":4791617,"title":"5.Ӣ�����4G�����ֻ�","url_name":"50yingcun","price":48900,"list_price":69900,"baoyou":1,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/zhaoshang/720x480.7178656f85ae95f5a0816a1f6e0a61f0.jpg","wireless_image":"imagev2/zhaoshang/700x700.061dcc53735e51bbaaa99d9d176e8927.640x700+1-1.jpg","sales_count":8,"tb_shop_id":23791,"short_title":"5.Ӣ�����4G�����ֻ�","begin_time":"2016-06-09 09:00:00","brand_id":-1,"special_deal_type":0,"isyoupinhui":0,"hypermarket":0,"zid":"ze160402150618392251","d90_count":8,"square_image":"imagev2/zhaoshang/700x700.061dcc53735e51bbaaa99d9d176e8927.jpg"},{"id":4998775,"title":"5Ӣ���ƶ���ͨ�����ֻ�","url_name":"50yingcun","price":29900,"list_price":39900,"baoyou":1,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/zhaoshang/720x480.b18c56dd8c7fea09f30b755ab4bfa38e.jpg","wireless_image":"imagev2/trade/700x700.ab98d53b41a0df39b5651c902e1ea31f.640x700+1-1.jpg","sales_count":7,"tb_shop_id":23791,"short_title":"5Ӣ���ƶ���ͨ�����ֻ�","begin_time":"2016-06-21 09:00:00","brand_id":-1,"special_deal_type":0,"isyoupinhui":0,"hypermarket":0,"zid":"ze160529214350697878","d90_count":7,"square_image":"imagev2/trade/700x700.ab98d53b41a0df39b5651c902e1ea31f.jpg"},{"id":5145587,"title":"���������ֻ����������ִ���ֱ�尴��·����籦���˻������ֻ�","url_name":"sanfanglao","price":13900,"list_price":29900,"baoyou":1,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/site/720x480.b25d9ad8c9f6905cc480aa842a385dd1.jpg","wireless_image":"imagev2/zhaoshang/600x600.13109ddc0bbc3cf507ee28a5a7ec3291.640x700+1-1.jpg","sales_count":6,"tb_shop_id":23791,"short_title":"·����Գ�籦�����ֻ�","begin_time":"2016-06-29 09:00:00","brand_id":-1,"special_deal_type":0,"isyoupinhui":0,"hypermarket":0,"zid":"ze160606174350735741","d90_count":6,"square_image":"imagev2/zhaoshang/600x600.13109ddc0bbc3cf507ee28a5a7ec3291.jpg"},{"id":5264491,"title":"����� �˶������۾� ���߳����������� �ֻ�ͨ�������۾�ƫ��","url_name":"dabingbang","price":7800,"list_price":19900,"baoyou":1,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/site/720x480.ea8627327f593fa1975d4c44180a3379.jpg","wireless_image":"imagev2/zhaoshang/700x700.0aca3316bcdd5f3c464609611e4f5a4f.640x700+1-1.jpg","sales_count":3,"tb_shop_id":23791,"short_title":"�������������۾���������","begin_time":"2016-06-30 09:00:00","brand_id":-1,"special_deal_type":0,"isyoupinhui":0,"hypermarket":0,"zid":"ze160613202216763769","d90_count":3,"square_image":"imagev2/zhaoshang/700x700.0aca3316bcdd5f3c464609611e4f5a4f.jpg"},{"id":5145671,"title":"�ƶ�ֱ��������ִ����󰴼������������ֻ�ѧ����Ů��������","url_name":"yidongzhib","price":6800,"list_price":14900,"baoyou":1,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/site/720x480.d0f250d6a25a7844fa38b10e6a1ac57f.jpg","wireless_image":"imagev2/trade/800x800.0b096fd94b0e358ae10d319031a02968.640x700+1-1.jpg","sales_count":3,"tb_shop_id":23791,"short_title":"ֱ������ƶ������ֻ�","begin_time":"2016-07-01 09:00:00","brand_id":-1,"special_deal_type":0,"isyoupinhui":0,"hypermarket":0,"zid":"ze160608171825746412","d90_count":3,"square_image":"imagev2/trade/800x800.0b096fd94b0e358ae10d319031a02968.jpg"},{"id":5298493,"title":"JKL B101�������մ������������������ֵ�Ͳ������������ֻ�","url_name":"JKLB","price":6900,"list_price":9900,"baoyou":1,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/zhaoshang/720x480.4ee8dba1d182aafb31e4b0651f23d40e.jpg","wireless_image":"imagev2/trade/600x600.e2ac4b5d23ce6b0b010c685712bc9710.640x700+1-1.jpg","sales_count":2,"tb_shop_id":23791,"short_title":"�������������ֻ�","begin_time":"2016-07-01 09:00:00","brand_id":26677,"special_deal_type":0,"isyoupinhui":0,"hypermarket":0,"zid":"ze160621202715801951","d90_count":2,"square_image":"imagev2/trade/600x600.e2ac4b5d23ce6b0b010c685712bc9710.jpg"},{"id":5298769,"title":"JKL A353 ˮ����������������������ʱ��Ůʿѧ��ֱ�������ֻ�","url_name":"JKLA","price":7900,"list_price":15800,"baoyou":1,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/zhaoshang/720x480.eff3a9ac2f1e31dfbaf0e2db3018691a.jpg","wireless_image":"imagev2/trade/600x600.6e3f41d1c2f7f65638815392422fbaf5.640x700+1-1.jpg","sales_count":1,"tb_shop_id":23791,"short_title":"ˮ�����������ֻ�","begin_time":"2016-07-01 09:00:00","brand_id":26677,"special_deal_type":0,"isyoupinhui":0,"hypermarket":0,"zid":"ze160616170445779575","d90_count":1,"square_image":"imagev2/trade/600x600.6e3f41d1c2f7f65638815392422fbaf5.jpg"},{"id":5298701,"title":"JKL A322 ˫�����ش��ִ����������ֵ�Ͳ���������������ֻ�","url_name":"JKLA","price":5900,"list_price":9900,"baoyou":1,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/zhaoshang/720x480.9e3cb7f2ca7c18759e142caee734cf20.jpg","wireless_image":"imagev2/trade/600x600.73d77139898d4a6147c1f1d6680637c4.640x700+1-1.jpg","sales_count":0,"tb_shop_id":23791,"short_title":"�������ջ����������ֻ�","begin_time":"2016-07-01 09:00:00","brand_id":26677,"special_deal_type":0,"isyoupinhui":0,"hypermarket":0,"zid":"ze160620143412793675","d90_count":0,"square_image":"imagev2/trade/600x600.73d77139898d4a6147c1f1d6680637c4.jpg"},{"id":5264485,"title":"����� ��׿ƻ���ֻ�U�̵�������16G32G64G������iPhone6/5S/plus","url_name":"dabingbang","price":12900,"list_price":29900,"baoyou":1,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/zhaoshang/720x480.0eb3451774a36ea317fb5cb323dabf86.jpg","wireless_image":"imagev2/zhaoshang/600x600.1dbf0f62bc5d3e0ba8fa25e570c4ef0e.640x700+1-1.jpg","sales_count":0,"tb_shop_id":23791,"short_title":"�ֻ�����ͨ��U�������","begin_time":"2016-06-30 09:00:00","brand_id":-1,"special_deal_type":0,"isyoupinhui":0,"hypermarket":0,"zid":"ze160613220754763986","d90_count":0,"square_image":"imagev2/zhaoshang/600x600.1dbf0f62bc5d3e0ba8fa25e570c4ef0e.jpg"},{"id":5298827,"title":"JKL A311 2.4���������ֱ���ƶ�˫���ֵ�Ͳ�������ֻ�QQ�������","url_name":"JKLA","price":8900,"list_price":19900,"baoyou":1,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/zhaoshang/720x480.0bdbb604e13e76d14df9010d8463ef9b.jpg","wireless_image":"imagev2/trade/600x600.186689ca8c11aefe40a8abcce60ab2ea.640x700+1-1.jpg","sales_count":0,"tb_shop_id":23791,"short_title":"��д���������ֻ�","begin_time":"2016-07-01 09:00:00","brand_id":26677,"special_deal_type":0,"isyoupinhui":0,"hypermarket":0,"zid":"ze160616111540776375","d90_count":0,"square_image":"imagev2/trade/600x600.186689ca8c11aefe40a8abcce60ab2ea.jpg"},{"id":5298861,"title":"JKL A390 ���տ�ѹ��ˤ������ˮ���󰴼�������Ůʿ�����ֻ�","url_name":"JKLA","price":9900,"list_price":13900,"baoyou":1,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/zhaoshang/720x480.52515ed50ce8c0c95fe90db2ccdf7af4.jpg","wireless_image":"imagev2/trade/600x600.88ade3f9e96c21caf4a89f5fa0ac5b63.640x700+1-1.jpg","sales_count":0,"tb_shop_id":23791,"short_title":"��ѹ��ˤ�����ֻ�","begin_time":"2016-07-01 09:00:00","brand_id":26677,"special_deal_type":0,"isyoupinhui":0,"hypermarket":0,"zid":"ze160616164500779395","d90_count":0,"square_image":"imagev2/trade/600x600.88ade3f9e96c21caf4a89f5fa0ac5b63.jpg"},{"id":5298729,"title":"JKL A901 �ƶ���ֱͨ�����Ļ�������������ˤ����˫�������ֻ�","url_name":"JKLA","price":8900,"list_price":19900,"baoyou":1,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/zhaoshang/720x480.2a3fca1e5b8a6f7558a3b6483cf9a072.jpg","wireless_image":"imagev2/trade/600x600.4b1dd7e108c59a93400126c85dc4422a.640x700+1-1.jpg","sales_count":0,"tb_shop_id":23791,"short_title":"�ƶ���ͨ�����ֻ�","begin_time":"2016-07-01 09:00:00","brand_id":26677,"special_deal_type":0,"isyoupinhui":0,"hypermarket":0,"zid":"ze160622172942807207","d90_count":0,"square_image":"imagev2/trade/600x600.4b1dd7e108c59a93400126c85dc4422a.jpg"},{"id":3856843,"title":"�ֻ��߿����ĸ�ƻ��6plus�����Я�Ƹɴ����Ӱ�׿������","url_name":"shoujixian","price":990,"list_price":2990,"baoyou":1,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/site/720x480.1977e3ebce4d7d7697c0ba23ec06386e.jpg","wireless_image":"imagev2/site/700x700.7749a5be1abbb464339ecd578e4a6c69.640x700+1-1.jpg","sales_count":151,"tb_shop_id":23791,"short_title":"���ӱ�Я�ֻ��߿ذ�׿���ĸ�","begin_time":"2016-04-11 17:32:25","brand_id":0,"special_deal_type":0,"isyoupinhui":0,"hypermarket":0,"zid":"ze160407211243419620","d90_count":151,"square_image":"imagev2/site/700x700.7749a5be1abbb464339ecd578e4a6c69.jpg"}];
    var hotrecomment_all = [{"id":2678795,"title":"����Ʒ�㡿��˿�޸�Ȧ��£����","url_name":"liangjianj","price":2990,"list_price":38800,"baoyou":1,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/site/720x480.843bcd83cccade01d71728b992b648bc.jpg","wireless_image":"imagev2/site/700x700.4473be7d87e787b7aa78c55aeaf0683b.640x700+1-1.jpg","sales_count":62259,"tb_shop_id":687086,"short_title":"��˿�޸�Ȧ��£����","begin_time":"2016-01-07 09:00:00","brand_id":18607,"special_deal_type":0,"isyoupinhui":1,"hypermarket":0,"zid":"ze151212135122000551","d90_count":44045,"square_image":"imagev2/site/700x700.4473be7d87e787b7aa78c55aeaf0683b.jpg"},{"id":4471225,"title":"����Ʒ�㡿Ӥ��ҡ���̤���ٽ����","url_name":"xinshenger","price":6900,"list_price":9900,"baoyou":2,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/site/720x480.eb8eb25ac2ba9444fa3bf6834ab91222.jpg","wireless_image":"imagev2/zhaoshang/700x700.bbeddc04b2b3ec223f0625a280f6a550.640x700+1-1.jpg","sales_count":39657,"tb_shop_id":1568075,"short_title":"����Ʒ�㡿Ӥ��ҡ���̤���ٽ����","begin_time":"2016-05-22 09:00:00","brand_id":-1,"special_deal_type":0,"isyoupinhui":1,"hypermarket":0,"zid":"ze160408094138420792","d90_count":39657,"square_image":"imagev2/zhaoshang/700x700.bbeddc04b2b3ec223f0625a280f6a550.jpg"},{"id":2537203,"title":"����Ʒ�㡿������Ͽ�ζ����500g","url_name":"zhongqinga","price":880,"list_price":3800,"baoyou":2,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/site/720x480.d5571d260ff338d36af91e9ff7401efb.jpg","wireless_image":"imagev2/site/700x700.a0a83bc54c0dbc70a6067dec4d2d27d5.640x700+1-1.jpg","sales_count":77982,"tb_shop_id":185581,"short_title":"������Ͽ�ζ����500g","begin_time":"2015-12-30 09:00:00","brand_id":-1,"special_deal_type":0,"isyoupinhui":1,"hypermarket":0,"zid":"ze150331142030000001","d90_count":38820,"square_image":"imagev2/site/700x700.a0a83bc54c0dbc70a6067dec4d2d27d5.jpg"},{"id":2658319,"title":"����Ʒ�㡿ũ�����Ƹ���Ƥ��Ƥ500g","url_name":"nongjiaziz","price":620,"list_price":1590,"baoyou":2,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/site/720x480.ebba2cd81effbc27d79a15e1aadc5d54.jpg","wireless_image":"imagev2/site/700x700.c4628e14dce94df2a2dec9a889ee1142.640x700+1-1.jpg","sales_count":48992,"tb_shop_id":1347515,"short_title":"ũ�����Ƹ���Ƥ��Ƥ500g","begin_time":"2016-01-06 09:00:00","brand_id":-1,"special_deal_type":0,"isyoupinhui":1,"hypermarket":0,"zid":"ze151203103735000239","d90_count":35085,"square_image":"imagev2/site/700x700.c4628e14dce94df2a2dec9a889ee1142.jpg"},{"id":3036151,"title":"�ɰ��������ӾӼ�����Ь","url_name":"keaituziqi","price":790,"list_price":5900,"baoyou":2,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/zhaoshang/720x480.ca191483665c7034b17190cc0860918c.jpg","wireless_image":"imagev2/site/700x700.4ba7b47b8d640498feea4dad2407391e.640x700+1-1.jpg","sales_count":51071,"tb_shop_id":1551095,"short_title":"�ɰ��������ӾӼ�����Ь","begin_time":"2016-02-15 09:00:00","brand_id":-1,"special_deal_type":0,"isyoupinhui":0,"hypermarket":0,"zid":"ze160202113832123945","d90_count":34093,"square_image":"imagev2/site/700x700.4ba7b47b8d640498feea4dad2407391e.jpg"},{"id":3913577,"title":"����Ʒ�㡿���п�����˿��ɹ����","url_name":"bingsifang","price":680,"list_price":5900,"baoyou":2,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/site/720x480.6326aab3b5bd25083ce9657b819d9ad8.jpg","wireless_image":"imagev2/zhaoshang/700x700.20dd2ddff4b3f1e2ba0db27a33bc2dca.640x700+1-1.jpg","sales_count":34286,"tb_shop_id":1566509,"short_title":"���п�����˿��ɹ����","begin_time":"2016-04-17 09:00:00","brand_id":-1,"special_deal_type":0,"isyoupinhui":1,"hypermarket":0,"zid":"ze160302181535205282","d90_count":33577,"square_image":"imagev2/zhaoshang/700x700.20dd2ddff4b3f1e2ba0db27a33bc2dca.jpg"},{"id":1785272,"title":"����Ʒ�㡿ԭ��ľ����Ͳ����ֽ5��","url_name":"wuxiangwan","price":2790,"list_price":5000,"baoyou":2,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/site/720x480.f9bf5a64750da3222fada55d1692c631.jpg","wireless_image":"imagev2/zhaoshang/700x700.6d5f039a2768df58d9635d6b85d4e78d.640x700+1-1.jpg","sales_count":82928,"tb_shop_id":1370479,"short_title":"ԭ��ľ����Ͳ����ֽ5��","begin_time":"2015-10-22 09:00:00","brand_id":-1,"special_deal_type":0,"isyoupinhui":1,"hypermarket":0,"zid":"ze150924150248000588","d90_count":33307,"square_image":"imagev2/zhaoshang/700x700.6d5f039a2768df58d9635d6b85d4e78d.jpg"},{"id":3560905,"title":"����Ʒ�㡿�����֭���ǹ���1000g","url_name":"banrixianj","price":1690,"list_price":8900,"baoyou":2,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/site/720x480.f55e6fa624b9103df175de8b526513bc.jpg","wireless_image":"imagev2/site/700x700.b0f4cba79d8a20c28758936c76843424.640x700+1-1.jpg","sales_count":37355,"tb_shop_id":1543219,"short_title":"�����֭���ǹ���1000g","begin_time":"2016-03-26 09:00:00","brand_id":-1,"special_deal_type":0,"isyoupinhui":1,"hypermarket":0,"zid":"ze160309121018245887","d90_count":32305,"square_image":"imagev2/site/700x700.b0f4cba79d8a20c28758936c76843424.jpg"},{"id":3361751,"title":"�¿��ļ���Ů��������Ь","url_name":"xinkuanxia","price":800,"list_price":7500,"baoyou":2,"repricing":1,"back_score":0,"sales_volume":3,"imageName":"imagev2/zhaoshang/720x480.305b3f007af013f714aa3036767be096.jpg","wireless_image":"imagev2/zhaoshang/700x700.c5d261970237e5c89acc18ca32c06737.640x700+1-1.jpg","sales_count":39823,"tb_shop_id":1200498,"short_title":"�¿��ļ���Ů��������Ь","begin_time":"2016-03-17 09:00:00","brand_id":-1,"special_deal_type":0,"isyoupinhui":0,"hypermarket":0,"zid":"ze160224140825165329","d90_count":29517,"square_image":"imagev2/zhaoshang/700x700.c5d261970237e5c89acc18ca32c06737.jpg"},{"id":4296349,"title":"�����ñ�����Ȫ��Ч��ˮ��Ĥ�� ��ʪ��ˮ���»���ƷһƬװ","url_name":"bisutangbi","price":120,"list_price":300,"baoyou":1,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/zhaoshang/720x480.8cbce07c78f7eae1055de9da0eee9455.jpg","wireless_image":"imagev2/site/700x700.e6b2f96b9b2f8dd59859ff36e0088000.640x700+1-1.jpg","sales_count":34411,"tb_shop_id":1114628,"short_title":"������Ȫ��ˮ��ʪ��Ĥ","begin_time":"2016-05-12 09:00:00","brand_id":-1,"special_deal_type":0,"isyoupinhui":0,"hypermarket":0,"zid":"ze160107161045056883","d90_count":26488,"square_image":"imagev2/site/700x700.e6b2f96b9b2f8dd59859ff36e0088000.jpg"}];
    var hotrecomment_tag = [{"id":1596409,"title":"����Ʒ�㡿��ͨ�����ֶ�������һ","url_name":"BAYAS","price":880,"list_price":6900,"baoyou":2,"repricing":1,"back_score":0,"sales_volume":3,"imageName":"imagev2/site/720x480.811f43fcb5a8c61f1db56aef8c7c41cd.jpg","wireless_image":"imagev2/site/700x700.239f5fa0b62021f92d9be8a27cffd8d0.640x700+1-1.jpg","sales_count":114501,"tb_shop_id":1154090,"short_title":"����Ʒ�㡿��ͨ�����ֶ�������һ","begin_time":"2015-09-15 09:00:00","brand_id":-1,"special_deal_type":0,"isyoupinhui":1,"hypermarket":0,"zid":"ze150817115727000432","d90_count":20113,"square_image":"imagev2/site/700x700.239f5fa0b62021f92d9be8a27cffd8d0.jpg"},{"id":2712457,"title":"����Ʒ�㡿ƻ��ȫϵ�иֻ�����Ĥ","url_name":"pingguoiph","price":520,"list_price":9900,"baoyou":2,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/site/720x480.d8299a7c494ee191075b171c6a2ead0f.jpg","wireless_image":"imagev2/site/700x700.5021db24ce3ff07f3958a90b307b6b97.640x700+1-1.jpg","sales_count":91112,"tb_shop_id":749,"short_title":"ƻ��ȫϵ�иֻ�����Ĥ","begin_time":"2016-01-11 09:00:00","brand_id":-1,"special_deal_type":0,"isyoupinhui":1,"hypermarket":0,"zid":"ze150318162917000001","d90_count":16886,"square_image":"imagev2/site/700x700.5021db24ce3ff07f3958a90b307b6b97.jpg"},{"id":4517247,"title":"����Ʒ�㡿��׿ͨ�üӴ�������4��","url_name":"anzhuoshuj","price":990,"list_price":9900,"baoyou":2,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/site/720x480.98a8200badb532630629de7b823e35ad.jpg","wireless_image":"imagev2/zhaoshang/700x700.d2a124e7274ea86a470c4f87cea49ba3.640x700+1-1.jpg","sales_count":15585,"tb_shop_id":4637,"short_title":"��׿ͨ�üӴ�������4��","begin_time":"2016-05-23 09:00:00","brand_id":-1,"special_deal_type":0,"isyoupinhui":1,"hypermarket":0,"zid":"ze160428130454540534","d90_count":15585,"square_image":"imagev2/zhaoshang/700x700.d2a124e7274ea86a470c4f87cea49ba3.jpg"},{"id":2008823,"title":"����Ʒ�㡿ƻ��ϵ��ǰ��ֻ�Ĥ","url_name":"pingguoxil","price":580,"list_price":5500,"baoyou":1,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/site/720x480.8c63b9dcd92c63e0c6efde6dfa50b533.jpg","wireless_image":"imagev2/site/640x700.827ed64c0c5850ffb36abcca8ad6287e.640x700+1-1.jpg","sales_count":151783,"tb_shop_id":3173,"short_title":"ƻ��ϵ��ǰ��ֻ�Ĥ","begin_time":"2015-11-17 09:00:00","brand_id":-1,"special_deal_type":0,"isyoupinhui":1,"hypermarket":0,"zid":"ze150123003233000001","d90_count":13375,"square_image":"imagev2/site/640x700.827ed64c0c5850ffb36abcca8ad6287e.jpg"},{"id":4345187,"title":"������󰴼����˻������","url_name":"guochandaz","price":4800,"list_price":8800,"baoyou":1,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/zhaoshang/720x480.04e43c1f57a1d74f762093349dea6276.jpg","wireless_image":"imagev2/trade/700x700.fa117c7bce0ef8e8572441bcf31ac604.640x700+1-1.jpg","sales_count":13228,"tb_shop_id":1381391,"short_title":"������󰴼����˻������","begin_time":"2016-05-17 09:00:00","brand_id":-1,"special_deal_type":0,"isyoupinhui":0,"hypermarket":0,"zid":"ze160410145215433445","d90_count":13228,"square_image":"imagev2/trade/700x700.fa117c7bce0ef8e8572441bcf31ac604.jpg"},{"id":2031953,"title":"����Ʒ�㡿�ֻ����������������ĸ� ","url_name":"xinkuansho","price":1130,"list_price":9900,"baoyou":2,"repricing":0,"back_score":0,"sales_volume":3,"imageName":"imagev2/site/720x480.7c25aab502d2f2d2be3ae54665149ac4.jpg","wireless_image":"imagev2/site/700x700.fed1fdf3867b1fc01bf1ac4799a91170.640x700+1-1.jpg","sales_count":49564,"tb_shop_id":5079,"short_title":"�ֻ����������������ĸ�","begin_time":"2015-11-25 09:00:00","brand_id":-1,"special_deal_type":0,"isyoupinhui":1,"hypermarket":0,"zid":"ze150625174358000718","d90_count":12423,"square_image":"imagev2/site/700x700.fed1fdf3867b1fc01bf1ac4799a91170.jpg"}];
    require(['page/deals']);
</script>


    
    
    <footer>
    	<a target="_blank" href="http://www.miibeian.gov.cn/" rel="nofollow">��ICP֤120075��</a> ��ICP��10051110��-5 <a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010502025623" target="_blank" rel="nofollow">����������11010502025623</a> ʳƷ��ͨ���֤SP1101051510352397 Copyright�0�82011-2015 ��Ȩ���� ZHE800.COM
      <br> �Ų����ڣ��������Ƽ����޹�˾ ����������ԣ��·12��A�� 010-82252066
      <br><a target="_blank" href="http://www.itrust.org.cn/yz/pjwx.asp?wm=3571298269" rel="nofollow"><img height="26" width="70" src="./productshow/web_trust.png"></a>
      <a target="_blank" href="https://search.szfw.org/cert/l/CX20150121006886006587" id="___szfw_logo___" rel="nofollow"><img height="26" width="70" style="border:0" src="./productshow/cert.jpg"></a>
      <a target="_blank" href="https://ss.knet.cn/verifyseal.dll?sn=e150522110105588321uva000000&ct=df&a=1&pa=0.14795242729201963" rel="nofollow"><img width="76" height="28" style="border:0" src="./productshow/credit.png"></a>
      <script type="text/javascript">(function(){document.getElementById('___szfw_logo___').oncontextmenu = function(){return false;}})();</script>
    </footer>
    
    
    <script src="./productshow/core_ga.js" type="text/javascript"></script>
    <span style="display:none">
    <script type="text/javascript">
        zhepub.ga.initScripts({ga: true,cnzz: {key: 30081361}});
    </script><div id="cnzz_stat_icon_30081361"></div>
    </span>
    
    <script type="text/javascript">
        var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");
        document.write(unescape("%3Cspan id='cnzz_stat_icon_1253300871'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "w.cnzz.com/c.php%3Fid%3D1253300871' type='text/javascript'%3E%3C/script%3E"));
    </script><span id="cnzz_stat_icon_1253300871"></span><script src="./productshow/c(1).php" type="text/javascript"></script>
<iframe src="./productshow/agent.html" style="position: absolute; width: 1px; height: 1px; left: -9999px;"></iframe><div class="mmz_toolbar_control_small gwd_ns_trend" gwd-subject="open" title="չ��������">								  		<div class="gwd_toolbar_logo_icon">								  			<span style="background-image:url(chrome-extension://dobbgecnokkloebjbcnjpgcopegjabpa/images/background_new.png)"></span>								  		</div>										<div class="price_trend_logo_holder gwd_ns_trend_steady">											<span class="price_trend_logo" style="background-image:url(chrome-extension://dobbgecnokkloebjbcnjpgcopegjabpa/images/background_new.png)"></span>										</div>										<div class="gwd_toolbar_state_switch_btn">											<span style="background-image:url(chrome-extension://dobbgecnokkloebjbcnjpgcopegjabpa/images/background_new.png)"></span>										</div>									</div></body></html>