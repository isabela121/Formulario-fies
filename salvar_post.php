<?php
	include_once("conexao.php");
	
	$cpf= $_POST['cpf'];
	$nome= $_POST['nome'];
	$email= $_POST['email'];
	$telefone= $_POST['telefone'];
	$unidade = $_POST['unidade'];
	$faculdade = $_POST['faculdade'];
	$curso = $_POST['curso'];
		
	$result_post = "INSERT INTO leads (cpf,nome,email,telefone,unidade,faculdade,curso) VALUES ('$cpf','$nome','$email','$telefone','$unidade','$faculdade','$curso')";
	$resultado_post = mysqli_query($conn, $result_post);
	
	if(mysqli_affected_rows($conn) > 0){ 
		echo "<script>window.location='index.php';alert('Olá $nome, Seu cadastro foi realizado com sucesso!');</script>";

	}else{
		echo "Error ao cadastrar";	
	}