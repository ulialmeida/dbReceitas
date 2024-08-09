<%-- 
    Document   : excluirReceita
    Created on : 7 de ago. de 2024, 15:57:14
    Author     : Aluno
--%>
<%@page import="com.mycompany.receitas.Receita"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Editar Receita</title>
</head>
<body>
    <h2>Exclui Receita</h2>

<%
    int id = Integer.parseInt(request.getParameter("id"));    
    Receita receita = new Receita();
    receita.setId(id);
    
    boolean sucesso = receita.deletar();

    if (sucesso) {
        out.println("Receita excluida com sucesso!");
    } else {
        out.println("Erro ao excluir a receita.");
    }
%>

<p><a href="listaReceita.jsp">Voltar</a></p>
</body>