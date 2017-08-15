<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!-- taglib para declara��o da taglib customizada no diret�rio abaixo -->
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum" %> 
<html>
<head>

<!-- importando o jQuery -->
<link href="css/jquery.css" rel="stylesheet">
<script src="js/jquery.js"></script>
<script src="js/jquery-ui.js"></script>

<meta charset="UTF-8">
<title>Adicionar contatos</title>
</head>
<body>
<c:import url="cabecalho.jsp" />

	<h2>Adicionar Contatos</h2>
	<hr />
	<form action="adicionaContato" method="post">
		Nome: <input type="text" name="nome" /> <br />
		E-mail: <input type="text" name="email" /> <br /> 
		Endere�o: <input type="text" name="endereco" /> <br /> 
		Data de Nascimento: <caelum:campoData id="dataNascimento" /> <br /><!-- este input n�o utiliza o calend�rio do jQuery <input type="text" name="dataNascimento"> --> 

		<input type="submit" value="Salvar" />

	</form>
<c:import url="rodape.jsp" />

</body>
</html>