<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html>
<html>
<meta charset="utf-8" http-equiv="X-UA-Compatible" content="IE=edge"/>
<head>
	<link rel="stylesheet" type="text/css" href="/resources/css/bootstrap-3.3.2-dist/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="/resources/css/bootstrap-3.3.2-dist/css/bootstrap-theme.min.css" />
	<link href="/resources/css/custom.css?v=10" rel="stylesheet" type="text/css"/>
	<link href="/resources/SBGrid/css/SBGrid.css" rel="stylesheet" type="text/css"/>
	<link href="/resources/SBGrid/css/SBGrid_Default.css" rel="stylesheet" type="text/css"/>

	<!-- SBGrid -->
	<script type="text/javascript">
        var SBpath = "/resources/";	//SBGrid v2.5 Library인 'SBGrid'폴더 절대경로
	</script>
	<script src="/resources/SBGrid/js/lib/jquery-1.11.3.min.js" type="text/javascript"></script>
	<script src="/resources/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="/resources/SBGrid/SBGrid_Lib.js" type="text/javascript"></script>
	<script src="/resources/SBGrid/SBGrid_min.js" type="text/javascript"></script>
	<script src="/resources/angular-1.6.4/angular.min.js" type="text/javascript"></script>
</head>

<body>
	<div id="content"><tiles:insertAttribute name="content" /></div>
</body>
</html>