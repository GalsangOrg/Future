<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>  
<base href="<%= basePath %>">

<link rel="stylesheet" type="text/css" href="ext/resources/css/ext-all.css" />
<link rel="stylesheet" type="text/css" href="resources/css/m8-common.css" />
<link rel="stylesheet" type="text/css" href="resources/css/m8pcm-common.css" />
<script type="text/javascript" src="ext/adapter/ext/ext-base.js"></script>
<script type="text/javascript" src="ext/ext-all.js"></script>

<script type="text/javascript" src="SSC/core/component/PageSizePlugin.js"></script>
<script type="text/javascript" src="SSC/core/component/BasePagingToolBar.js"></script>

<script type="text/javascript" src="BCM/scripts/render.js"></script>
<script type="text/javascript" src="scripts/common.js"></script>
<script type="text/javascript" src="BCM/scripts/exception.js"></script>
<script type="text/javascript" src="BCM/scripts/common.js"></script>

<script type="text/javascript" src="SSC/core/taskpool/basedata/method/method.js"></script>
<title></title>
</head>

<body>

</body>
</html>