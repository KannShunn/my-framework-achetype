<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%@taglib prefix="cui" tagdir="/WEB-INF/tags"%>
		<!--head begin-->
    	<div class="w-head clearfix">
    		<div class="w-h-l">
    			<img src="${ctx}/res/resource/style/css/images/logo.png" class="logo">
    		</div>
    		<div class="w-h-M">
    			<div class="w-h-m-c">
    				<ul id="headMenu" class="headMenu">
   						<li class="current" id="head_auth" onclick="toDisplay('Auth')" title="系统管理"><i class="xt"></i><span>系统管理</span></li>
    				</ul>
    			</div>
    		</div>
    		<div class="w-h-r">

    			<div class="userboxShow">
    				<div class="usernameShow">
    					<span class="userIconspan"></span>
    					<span class="userlengh">某某管理员</span>
    					<span class="dropIconspan down" id="c_drop"></span>
    				</div>
    				<div class="topicBox">
    					<ul>
							<li id="c_changePassword" onclick="changeSelfPassword();">修改密码</li>
							<li id="c_changeInfo" onclick="changeSelfInfo();">修改资料</li>
    						<li id="c_logout" onclick="logout();">退出系统</li>
    					</ul>
    				</div>
    			</div>

    			<div class="dropsel">
    				
    			</div>

    		</div>
		</div>


    	<!--head end-->
	
<script type="text/javascript">

	$.fn['dialog'].defaults = {
			show: {
				effect: "blind",
				duration: 2800
			}
	};
	
	//页面加载完毕后获取下拉框的value值
	$(function(){
		$('.dropsel .coral-combo-arrow').click(function(){
			//选择下拉框样式
			$('#combobox_i1_0').parents('.coral-combo-panel').css('border','0');
		})

		//退出系统
		$('.userboxShow').mouseover(function(e){
			e.stopPropagation();
			$('.dropIconspan').addClass('up').removeClass('down');
			$('.topicBox').show();
		}).mouseleave(function(){
			$('.dropIconspan').addClass('down').removeClass('up');
			$('.topicBox').hide();
		})

		//菜单 多余
		$('.siteMaintenance').mouseover(function(){
			$(this).children('.droparrow').addClass('up2').removeClass('down2');
			$('.moremenudrop').show();
		}).mouseleave(function(){
			$(this).children('.droparrow').addClass('down2').removeClass('up2');
			$('.moremenudrop').hide();
		})

	});


	function logout(){
		$.confirm("确定要退出系统吗？", function(r) {
			if (r) {
				window.location.href="${ctx}/logout";
			}
		});
	}

</script>
