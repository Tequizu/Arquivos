<?php	
	include_once('conexao.php');
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Clientes - Consultas</title>
	<link rel="stylesheet" type="text/css" href="novo.css" />
	<style type="text/css">
	span{
    margin: 0;
    padding: 0;
    float: left;
    width: 15%; 
    height: 20%; 
  	margin-left: 15px;
    font-family: 'Lucida';
    background-color: #e1e1e3; 
	}
	h2{
		font-size: 25px;
		background: #c5c5c9;
	}
	p{
		font-size: 20px;
		margin-left: 5px;
	}
	h1{

	}

	</style>


</head>
<body>
<!--MasterPage!-->
		<nav id="menu">
			<ul>
				<center>					
					<!--Consultas / Relatórios!-->					
				    <li>
				    	<a href="#">Consultas</a>
				    	<ul>
				    		<li>
				    			<a href="http://localhost/trabalho/consulta/con-clientes.php">Clientes</a>				    			
				    		</li>
				    		<li>
				    			<a href="http://localhost/trabalho/consulta/con-fornecedores.php">Fornecedor</a>
				    		</li>
				    		<li>
				    			<a href="http://localhost/trabalho/consulta/con-produtos.php">Produtos</a>
				    		</li>
				    		<li>
				    			<a href="http://localhost/trabalho/consulta/con-categoria-produtos.php">Categoria (produtos)</a>
				    		</li>
				    		<li>
				    			<a href="http://localhost/trabalho/consulta/con-venda.php">Venda produto</a>
				    		</li>
				    		<li>
				    			<a href="http://localhost/trabalho/consulta/con-compra-cli.php">Cliente compra</a>
				    		</li>
				    	</ul>
				    </li>			    
					<!--Cadastros!-->
				    <li>
				    	<a href="#">Cadastros</a>
				    	<ul>
				    		<li>
				    			<a href="http://localhost/trabalho/cadastro/reg-clientes.php">Clientes</a>
				    		</li>
				    		<li>
				    			<a href="http://localhost/trabalho/cadastro/reg-venda-clientes.php">Vendas</a>
				    		</li>
				    		<li>
				    			<a href="http://localhost/trabalho/cadastro/reg-fornecedores.php">Fornecedor</a>
				    		</li>
				    		<li>
				    			<a href="http://localhost/trabalho/cadastro/reg-produtos.php">Produtos</a>
				    		</li>
				    		<li>
				    			<a href="http://localhost/trabalho/cadastro/reg-categoria-produtos.php">Categoria de produtos</a>
				    		</li>
				    	</ul>
				    </li>
					<!--Ajuda ao usuário!-->
					<li>
						<a href="#">Ajuda</a>
						<ul>
							<li>
								<a href="http://localhost/trabalho/">Como usar</a>
							</li>
							<li>
								<a href="http://localhost/trabalho/">Para que serve</a>
							</li>
						</ul>
					</li>				    
					<!--Logout!-->
			    	<li><a href="http://localhost/trabalho/logout.php">Logout</a></li>		    	
			    </center>	
			</ul>
		</nav><br>

<h1>Fornecedores registrados</h1><br>

	<?php
		/*Selcionando os campos na tabela cliente*/
		$sql_forn = mysqli_query ($conexao, 
			'SELECT * FROM fornecedor f 
			inner join categoria_prod cp on 
			f.id_cat_prod = cp.id_cat_prod'
		);
		while ($row_forn = mysqli_fetch_array($sql_forn))
		{
	?>

	<div class="clientes">

      <span>
      
		<h2>Dados</h2>   
		<p>  	
	      	<?php
	      		echo "Nome: ";
	      		echo $row_forn ['nome_forn'];
	      	?>
				<br>
	      	<?php
	      		echo "Categoria: ";
	      		echo $row_forn ['nome_cat_prod'];
	      	?>
	      
				<br>
			</p>
      	</span>
   </div>
   <?php
	   /*Fechando o while*/
		}
	?>

</body>
</html>