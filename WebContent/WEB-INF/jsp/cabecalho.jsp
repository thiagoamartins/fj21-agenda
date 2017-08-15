<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- <img src="imagens/caelum.png" /> Este exemplo utiliza caminho absoluto -->
<!-- usando a taglib abaixo, ficamos livres para utilizar caminhos absolutos -->
<img src="<c:url value="/imagens/caelum.png"/>" />

<h2>Agenda de Contatos do Thiago Martins</h2>

<hr />

</body>
</html>