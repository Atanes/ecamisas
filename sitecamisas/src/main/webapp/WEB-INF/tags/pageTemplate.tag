<%@ tag language="java" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ attribute name="titulo" required="true" %>
<%@ attribute name="bodyClass" required="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>${titulo} - eCamisas</title>
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/estilo.css">
<link rel="stylesheet" href="resources/css/navbar.css">

<c:url value="<%=request.getContextPath()%>" var="contexto" />
<c:url value="resources/img/" var="imagem" />

</head>
<body class="${bodyClass}">

<%@ include file="/WEB-INF/views/template/cabecalho.jsp" %>

<jsp:doBody />

<%@ include file="/WEB-INF/views/template/rodape.jsp" %>

</body>
</html>