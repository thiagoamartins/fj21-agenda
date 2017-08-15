<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- taglib para declaração da taglib customizada no diretório abaixo -->
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum" %> 
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>

<!-- importando o jQuery -->
<link href="css/jquery.css" rel="stylesheet">
<script src="js/jquery.js"></script>
<script src="js/jquery-ui.js"></script>

<meta charset="UTF-8">
<title>Altera contato</title>
</head>
<body>
<c:import url="cabecalho.jsp" />

	<h2>Altera Contato</h2>
	<hr />
	<form action="mvc?logica=AlteraContatoLogic" method="get">
	
	<c:forEach var="contato" items="${contato}">
	
		Id: <input type="text" name="id" value="${param.id}" disabled="disabled"placeholder="id"/> <br />
		Nome: <input type="text" name="nome" value="${contato.nome}"placeholder="nome"/> <br />
		E-mail: <input type="text" name="email" value="${contato.email}"placeholder="email"/> <br /> 
		Endereço: <input type="text" name="endereco" value="${contato.endereco}"placeholder="endereco"/> <br /> 
		Data de Nascimento: <input type="text" name="dataNascimento" value="<fmt:formatDate value='${contato.dataNascimento.time}' pattern="dd/MM/yyyy"/>" placeholder="dataNascimento" /> <br /><!-- este input não utiliza o calendário do jQuery <input type="text" name="dataNascimento"> --> 
	
		<input type="hidden" name="logica" value="AlteraContatoLogic"/>
		<input type="submit" value="Alterar" />

</c:forEach>
	</form>
<c:import url="rodape.jsp" />

</body>
</html>