<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>
	Bem vindo ao nosso gerenciador de empresas!
	<c:if test="${not empty usuarioLogado}">
		</br>Voce esta logado como: ${usuarioLogado.email}
	</c:if>
	<br />
	<form action="executa?tarefa=NovaEmpresa" method="POST">
		Nome: <input type="text" name="nome"> <input type="submit"
			value="Enviar">
	</form>
	
	<form action="login" method="POST">
		Email: <input type="email" name="email"/>
		Senha: <input type="password" name="senha"/>
		<input type="submit" value="Enviar"/>
	</form>
	
	<form action="executa?tarefa=Logout" method="POST">
		<input type="submit" value="Deslogar">
	</form>
</body>
</html>