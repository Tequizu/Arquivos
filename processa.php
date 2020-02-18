<?php
session_start();
	include_once("conexao.php");


		$usuario = $_POST['usuario'];
		$email = $_POST['email'];
		$senha = $_POST['senha'];
		$palpasse = $_POST['palpasse'];
	

		$nome = $_POST['nome'];
		$sobrenome = $_POST['sobrenome'];
		$fone = $_POST['fone'];
		$sexo = $_POST['sexo'];
		$cargo = $_POST['cargo'];



		$rua = $_POST['rua'];
		$numero = $_POST['numero'];
		$bairro = $_POST['bairro'];
		$cidade = $_POST['cidade'];
		$estado = $_POST['estado'];
		$cep = $_POST['cep'];
	


		$sql = "insert into usuario
				(usuario, email, senha, palpasse , nome, sobrenome , fone , sexo ,  cargo , rua , numero , bairro , estado , cep , created)
				values
				('$usuario' , '$email' , '$senha' , '$palpasse' , '$nome' , '$sobrenome' , '$fone' , '$sexo' ,  '$cargo' , '$rua' , '$numero' , '$bairro' , '$cidade' , '$estado' , '$cep' )";
	

	$salvar = mysqli_query($conexao,$sql);

	
if(mysqli_insert_id($conexao)){
	$_SESSION['msg'] = "<p style='color:green;'>Usuário cadastrado com sucesso</p>";
	header("Location: index.php");
}else{
	$_SESSION['msg'] = "<p style='color:red;'>Usuário não foi cadastrado, pois deve ter dado algum erro</p>";
	header("Location: index.php");
}