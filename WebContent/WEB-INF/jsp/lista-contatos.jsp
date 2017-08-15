<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Listagem de contatos</title>
</head>
<body>
	
	<!-- importando o cabecalho.jsp -->
	<c:import url="cabecalho.jsp" />

	
<h3><a href="mvc?logica=AdicionaContatoLogic">Adicionar novo contato</a></h3>

	<table border="1">
		<!-- monta cabeçalho -->
		<tr>
			<td><b>ID:</b></td>
			<td><b>Nome:</b></td>
			<td><b>E-mail:</b></td>
			<td><b>Endereço:</b></td>
			<td><b>Data de Nascimento:</b></td>
			<td><b>Excluir contato</b></td>
			<td><b>Alterar contato</b></td>
		</tr>

		<!-- percorre contatos montando as linhas da tabela -->
		<c:forEach var="contato" items="${contatos}" varStatus="id">
		
			<tr bgcolor="#${id.count %2 ==0 ? '99ccff' : 'ffffff' }">
				<td>${contato.id}</td>
				<td>${contato.nome}</td>

				<!-- transforma o email em link caso ele não seja vazio -->
				<td><c:if test="${not empty contato.email}">
						<a href="mailto:${contato.email}">${contato.email}</a>
					</c:if> 
					
					<c:if test="${empty contato.email}">
					E-mail não informado
				</c:if></td>

				<td>${contato.endereco}</td>
				
				<!-- exibe data sem formatação -->
				<!-- <td>${contato.dataNascimento.time}</td> -->
				
				<!-- exibindo a data de nascimento formatada -->
				<td> <fmt:formatDate value="${contato.dataNascimento.time}" pattern="dd/MM/yyyy"/> </td>
				
				<!-- adiciona coluna com link para remover contatos -->
				<td> <a href="mvc?logica=RemoveContatoLogic&id=${contato.id}">Excluir</a></td>
				
				<!-- adiciona coluna com link para alter contatos -->
				<td> <a href="mvc?logica=AlteraContatoLogic&id=${contato.id}">Alterar</a></td>
			
			</tr>
		</c:forEach>
	</table>

	<!-- insere o rodapé.jsp -->
	<c:import url="rodape.jsp" />

</body>
</html>