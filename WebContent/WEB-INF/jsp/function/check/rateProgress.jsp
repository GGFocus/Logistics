<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/function/check/rateProgress.js"></script>

<h2 style='padding:0.2em 1em;'>以下是还未完成评分工作的客户经理</h2>

    <div>
        <a class="btn btn-info" id="sendEmail"  style="margin-left: 30px;">发送提醒邮件</a>
    </div>
<table class="layui-hide" id="ratePropressTbl" lay-filter="layuiTable"></table>
