$(function(){
	$('.tabs').each(function(){$(this).find('.tab-content').not($(this).find('ul.tabs-nav .selected a').attr('href')).hide();
	$(this).find('ul.tabs-nav a').click(function(){
		if($(this).parent().hasClass('selected')){return false}
		else{
			$(this).parent().addClass('selected').siblings().removeClass('selected');$(this).parents('.tabs').height($('ul.tabs-nav').height()+$($(this).attr('href')).height()).find('.tab-content').hide();$($(this).attr('href')).fadeIn(300);return false}
			
			Cufon.refresh();
		})
	})
})	