<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="cui" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/global.jsp"%>

<div class="F-left" style="width:100%;">
	
	<div class="PanelLeft F-left">
    	<div class="BoxLeft">
        	<img src="${ctx}/res/resource/style/images/icon05Hit.png" width="40" height="38" alt="" />
            <h4><b>系统管理平台</b></h4>
        </div>
        <div class="clear"></div>
		<div class="menuLeftFirst">
			<ul>
				<li no="0" onclick="" >
					<img src="${ctx}/res/resource/style/css/images/iconsmall/iconyh.png">
					<span>用户管理</span>
				</li>
			</ul>
		</div>
		
		<div class="menuLeftSecond">
			<div class="menuLeftSecondHead clearfix">
				<div class="menuLeftSecondHead2">
					<div class="BackFirst">返回</div>
					<div class="firstName"></div>
				</div>
			</div>
			<!-- 二级树beigin -->
			<div class="treebox">
				<div class="leftTree">
					<div no="0">
						
					</div>
				</div>	
			</div>
			<!-- 二级树end -->
    </div>
</div>
</div>
<script>


/***************************************************日志模块开始******************************************/

function sysLogClick(){
	refreshCenter('${ctx}/auth/log/sysLog/index');
}
function operateLogClick(){
	refreshCenter('${ctx}/auth/log/operateLog/index');
}
/***************************************************日志模块结束******************************************/

</script>
