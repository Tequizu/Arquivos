<?php	
	include_once('conexao.php');
?>
<!DOCTYPE html>
<html>
<head>
	<title>Sotore maneger</title>
<style type="text/css">
	*{
    margin: 0;
    padding: 0;
}
#menu{
	height: 50px;
	width: 100%;
	background-color: #4b5c9c;
	font-family: 'Lucida';
	text-align: center;
}
#menu ul{
	list-style: none;
	cursor: pointer;
	text-align: center;
	display: inline-block;

}
#menu ul ul{
	display: none; 
}
#menu ul li{
    width: 150px;
	float: left;
	text-align: center;
	display: inline-block;
	line-height: 41px;
	background-color: #4b5c9c;
}
#menu ul ul li{
	float: none;
	border-bottom: solid 1px #ccc;
}
#menu ul li:hover > ul 
    {
        display: block;
        text-align: center;
        color: black;
        visibility: visible;
    }
#menu ul li:hover
    {
        color: #fff;
        background-color: #6774a8;
     
    }
#menu a{
	display: inline;
	text-decoration: none;
	text-align: center;
	color: #fff;
	font-family: 'Lucida';
}


</style>
</head>
<body>

		<nav id="menu">
			<ul>
				<center>					
					<!--Consultas / Relatórios!-->					
				    <li>
				    	<a href="#">Consultas</a>
				    	<ul>
				    		<li><a href="http://localhost/trabalho/consulta/con-clientes.php">Clientes</a></li>
				    		<li><a href="http://localhost/trabalho/consulta/con-fornecedores.php">Fornecedor</a></li>
				    		<li><a href="http://localhost/trabalho/consulta/con-produtos.php">Produtos</a></li>
				    		<li><a href="http://localhost/trabalho/consulta/con-categoria-produtos.php">Categoria (produtos)</a></li>
				    	</ul>
				    </li>			    
					<!--Cadastros!-->
				    <li>
				    	<a href="#">Cadastros
				    	<ul>
				    		<li><a href="http://localhost/trabalho/cadastro/reg-clientes.php">Clientes</a></li>
				    		<li><a href="http://localhost/trabalho/cadastro/reg-fornecedores.php">Fornecedor</a></li>
				    		<li><a href="http://localhost/trabalho/cadastro/reg-produtos.php">Produtos</a></li>
				    		<li><a href="http://localhost/trabalho/cadastro/reg-categoria-produtos.php">Categoria de produtos</a></li>
				    	</ul>
				    </li>
					<!--Ajuda ao usuário!-->
					<li>
						<a href="#">Ajuda
						<ul>
							<li><a href="http://localhost/trabalho/">Como usar</a></li>
							<li><a href="http://localhost/trabalho/">Para que serve</a></li>
						</ul>
					</li>				    
					<!--Logout!-->
			    	<li><a href="http://localhost/trabalho/logout.php">Logout</a></li>		    	
			    </center>	
			</ul>
		</nav>

</body>
</html>
