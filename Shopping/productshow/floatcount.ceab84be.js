/*! trade */
!function($){$.extend(Keeper,{float_accDiv:function(arg1,arg2){var r1,r2,t1=0,t2=0;try{t1=arg1.toString().split(".")[1].length}catch(e){}try{t2=arg2.toString().split(".")[1].length}catch(e){}with(Math)return r1=Number(arg1.toString().replace(".","")),r2=Number(arg2.toString().replace(".","")),r1/r2*pow(10,t2-t1)},float_accMul:function(a,b){var c=0,d=a.toString(),e=b.toString();try{c+=d.split(".")[1].length}catch(f){}try{c+=e.split(".")[1].length}catch(f){}return Number(d.replace(".",""))*Number(e.replace(".",""))/Math.pow(10,c)},float_accAdd:function(a,b){var c,d,e;try{c=a.toString().split(".")[1].length}catch(f){c=0}try{d=b.toString().split(".")[1].length}catch(f){d=0}return e=Math.pow(10,Math.max(c,d)),(a*e+b*e)/e},float_accSub:function(a,b){var c,d,e,f;try{c=a.toString().split(".")[1].length}catch(g){c=0}try{d=b.toString().split(".")[1].length}catch(g){d=0}return e=Math.pow(10,Math.max(c,d)),f=c>=d?c:d,((a*e-b*e)/e).toFixed(f)}})}(jQuery);