<?php	
	include_once('conexao.php');
?>
<!DOCTYPE html>
<html>
<head>
	<title>Produtos - Consultas</title>
	<link rel="stylesheet" type="text/css" href="novo.css" />
		<style type="text/css">
	.form{
	z-index: -1;
    width: 30%; 
    height: 20%; 
    border: 1px ;
    border-radius: 0px ;
    position: absolute;
    left: 35%;
    font-family: 'Lucida';
    background-color: #e1e1e3; 
	}
	.form input[type="text"]{
		height: 20px;
		font-size: 16px;
		width: 500px;
		padding: 4px;
		border: 1px solid #000000;
		border-radius: 5px;
		margin-left: 10px;
	}
	.form input[type="submit"], input[type="reset"]
	{
    	outline: none;
    	border: none;
    	width: 48%;  
    	height: 30px; 
    	color:  #fff;
    	background-color: #4b5c9c;
    	cursor:pointer; 
    	border-radius: 6px;
    	text-align: center;
    	margin-left: 5px;
	}
	.form h1{
		font-size: 25px;
		background: #c5c5c9;

	}
	.form p{
		font-size: 20px;
		margin-left: 5px;

	}
	.form select{
		height: 20px;
		font-size: 16px;
		width: 500px;

		border: 1px solid #000000;
		border-radius: 5px;
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
<fieldset class="form">
<h1>Produtos registrados</h1>
	
	<form method="post" action="con-produtos-res.php">
					<p>
						<label>
							<!--Vai resgatar na tabela categoria_prod!-->
							Categoria
							<br>
								<select name="id_cat_prod">
									<?php
										/*Selcionando o produto na tabela produto*/
										$sql_categoria = mysqli_query ($conexao, "SELECT * FROM categoria_prod where nome_cat_prod = nome_cat_prod");
										while($row_categoria = mysqli_fetch_array($sql_categoria))
											{
									?>
										<option value= "<?php echo $row_categoria ['id_cat_prod']; /*Atribui ID da categoria*/ ?>">
											<?php 
												/*pega o nome do produto*/
												echo $row_categoria ['nome_cat_prod']; 
												/*fecha o while*/
												}
											?>
									</option>
							</select>
						</label>
					</p><br>
						<p>
							<input type="submit" name="salvar" value="Consultar">
							<input type="reset" name="" value="Limpar">
						</p>
	</form>
</fieldset>
</body>
</html>

<!--
SELECT forn.nome_forn, cat.nome_cat_prod, nome_prod, descri_prod, valor_prod, quantidade_prod, dt_reg_prod
		FROM produto prod
		INNER JOIN fornecedor forn on
		prod.id_forn = forn.id_forn
		INNER JOIN categoria_prod cat on
		prod.id_cat_prod = cat.id_cat_prod 
!-->