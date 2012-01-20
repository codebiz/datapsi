



if($.browser.mozilla||$.browser.opera){document.removeEventListener("DOMContentLoaded",$.ready,false);document.addEventListener("DOMContentLoaded",function(){$.ready()},false)}$.event.remove(window,"load",$.ready);$.event.add( window,"load",function(){$.ready()});$.extend({includeStates:{},include:function(url,callback,dependency){if(typeof callback!='function'&&!dependency){dependency=callback;callback=null}url=url.replace('\n','');$.includeStates[url]=false;var script=document.createElement('script');script.type='text/javascript';script.onload=function(){$.includeStates[url]=true;if(callback)callback.call(script)};script.onreadystatechange=function(){if(this.readyState!="complete"&&this.readyState!="loaded")return;$.includeStates[url]=true;if(callback)callback.call(script)};script.src=url;if(dependency){if(dependency.constructor!=Array)dependency=[dependency];setTimeout(function(){var valid=true;$.each(dependency,function(k,v){if(!v()){valid=false;return false}});if(valid)document.getElementsByTagName('head')[0].appendChild(script);else setTimeout(arguments.callee,10)},10)}else document.getElementsByTagName('head')[0].appendChild(script);return function(){return $.includeStates[url]}},readyOld:$.ready,ready:function(){if($.isReady) return;imReady=true;$.each($.includeStates,function(url,state){if(!state)return imReady=false});if(imReady){$.readyOld.apply($,arguments)}else{setTimeout(arguments.callee,10)}}});

$.include('js/jquery.color.js')

$(function(){
	$('.nav-top li a,.nav-top2 li a').hover(function(){$(this).stop().animate({color:'#fff'})},function(){$(this).stop().animate({color:'#615A59'})})
$('.footer-nav li a').hover(function(){$(this).stop().animate({color:'#fff'})},function(){$(this).stop().animate({color:'#000000'})})
	


$('.plan-1').hover (
		function(){
			$('article.plan-1').addClass('hover-hr');
			$('div.plan-1').addClass('radio-btn-hr');
		},
		function(){
			$('article.plan-1').removeClass('hover-hr');
			$('div.plan-1').removeClass('radio-btn-hr');
		}
	)
	
	
	$('.plan-2').hover (
		function(){
			
			$('article.plan-2').addClass('hover-hr');
			$('div.plan-2').addClass('radio-btn-hr');
			
			
		},
		function(){
			$('article.plan-2').removeClass('hover-hr');
			$('div.plan-2').removeClass('radio-btn-hr');
		}
	)
	
	
		$('.plan-3').hover (
		function(){
			
			$('article.plan-3').addClass('hover-hr');
			$('div.plan-3').addClass('radio-btn-hr');
			
			
		},
		function(){
			$('article.plan-3').removeClass('hover-hr');
			$('div.plan-3').removeClass('radio-btn-hr');
		}
	)
		
		
			$('.plan-4').hover (
		function(){
			
			$('article.plan-4').addClass('hover-hr');
			$('div.plan-4').addClass('radio-btn-hr');
			
			
		},
		function(){
			$('article.plan-4').removeClass('hover-hr');
			$('div.plan-4').removeClass('radio-btn-hr');
		}
	)





})			


