<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.List, gerenciador.Empresa"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java Standard Taglib</title>
</head>
<body>

	<c:if test="${not empty empresa}">
		Empresa ${ empresa } cadastrada com sucesso!
	</c:if>
	
		   
	<h1>Lista de Empresas</h1>
	
	<ul>
		<c:forEach items="${empresas}" var="empresa">
			
			<li>nome: <b>${empresa.nome}</b> - data: <b><fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/> </b></li>
			<a href="/gerenciador/mostraEmpresa?id=${empresa.id}">edita</a>
			<a href="/gerenciador/removeEmpresa?id=${empresa.id}">remove</a>
		</c:forEach>
	</ul>
	
</body>
</html>