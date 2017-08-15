<%@ page
	import="java.util.*,
	br.com.caelum.agenda.dao.*,
	br.com.caelum.agenda.modelo.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista de contatos</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>ID:</td>
			<td>Nome:</td>
			<td>E-mail:</td>
			<td>Endereço:</td>
			<td>Data de Nascimento:</td>
		</tr>

		<%
			ContatoDao dao = new ContatoDao();
			List<Contato> contatos = dao.getLista();
			for (Contato contato : contatos) {
		%>


		<tr>
			<td><%=contato.getId()%></td>
			<td><%=contato.getNome()%></td>
			<td><%=contato.getEmail()%></td>
			<td><%=contato.getEndereco()%></td>
			<td><%=contato.getDataNascimento().getTime()%></td>
		</tr>
		<%}%>
	</table>
</body>
</html>