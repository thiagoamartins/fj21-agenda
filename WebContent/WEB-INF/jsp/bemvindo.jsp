<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Primeira página JSP</title>
</head>
<body>
	<%-- comentário em JSP aqui: nossa primeira página JSP --%>
	<% String mensagem = "Bem vindo ao sistema de agenda do FJ-21!"; %>
	<% out.println(mensagem); %>
	<%--usa "<%=" que significa out.println() - exemplo no desenvolvido abaixo --%>
	<br />
	<% String desenvolvido = "Desenvolvido por Thiago Martins"; %>
	<%= desenvolvido %>
	<br />
	<% System.out.println("Tudo foi executado! Arquivo bemvindo.jsp - linha 17"); %>

</body>
</html>