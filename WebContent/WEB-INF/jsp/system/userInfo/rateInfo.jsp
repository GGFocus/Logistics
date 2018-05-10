<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script type="text/javascript" src="${ctx}/layui/lay/modules/layer.js"></script>
<script type="text/javascript" src="${ctx}/echarts/echarts.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/system/userInfo/rateInfo.js"></script>
<style type="text/css">
.content{
    overflow: hidden;
}
.top{
    height:300px;
}
.bottomLeft{
    height:400px;
    width: 50%;
    float: left;
}
.bottomright{
    height:400px;
    width: 50%;
    float: left;
}
.clear{
    float: clear;
}
</style>
<input type="hidden" value="${sessionScope.userSessionId}"id="userId"/>
<input type="hidden" value="${ month.id }" id="monthId">
<div id="rateInfo">
<h2 style='padding:0.2em 1em;' id="parentAvg"><span id="monthDescription">${ month.description }</span> — 考评分数<span id="avg" style="color:#2038bf;font-size:45px;"></span></h2>
<h5 style='padding:0.5em 2.5em;color:#a4a5a2;' id="parentAvgPercent">总分60分,换算成百分制为<span id="avgPercent" style="color:#a4a5a2;font-size:20px;"></span>分</h5>
</div>
 <form class="layui-form">
  <div class="layui-form-item" >
    <label class="layui-form-label" style="float: left;font-size: 18px;width:180px;">请选择考评日期:</label>
    <div class="layui-input-block" style="width:150px;float: left;">
      <select name="city" id="month" lay-filter="month" >
        <c:forEach  items="${listCheckMonth}"  var="month" >
           <option value="${ month.id }">${ month.description }</option>
        </c:forEach>
      </select>
    </div>
  </div>
</form>
<div class="content">
    <div id="barMain"  class="top"></div>
    <div id="pieMain"  class="bottomLeft"></div>
    <div id="lineMain"  class="bottomright"></div>
    <div class="clear"></div>
</div>
