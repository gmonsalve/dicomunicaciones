<?php 
//connect to DB
$server = "localhost";
$user = "root";
$pass = "";
$bd = "dcomunicaciones";
$url ="http://localhost/diegocomunicaciones/sitioweb/indexq.php";
//Creamos la conexión
$conn = mysqli_connect($server, $user, $pass, $bd) 
or die("Ha sucedido un error inexperado en la conexion de la base de datos");
/**/
$query_registros = "SELECT ta.tipo, acc.nombre, acc.valor, acc.referencia, acc.logo from accesorios as acc join tipo_accesorio as ta ON acc.id_tipoacc = ta.id_tipoacc  ";
$rs_noticias = mysqli_query($conn, $query_registros);
$num_total_registros = mysqli_num_rows($rs_noticias);

//Si hay registros
if ($num_total_registros > 0) {
	//Limito la busqueda
	$TAMANO_PAGINA = 9;
        $pagina = false;

	//examino la pagina a mostrar y el inicio del registro a mostrar
        if (isset($_GET["pagina"]))
            $pagina = $_GET["pagina"];
        
	if (!$pagina) {
		$inicio = 0;
		$pagina = 1;
	}
	else {
		$inicio = ($pagina - 1) * $TAMANO_PAGINA;
	}
	//calculo el total de paginas
	$total_paginas = ceil($num_total_registros / $TAMANO_PAGINA);
/**/
//execute query
$query = "SELECT ta.tipo, acc.nombre, acc.valor, acc.referencia, acc.logo from accesorios as acc join tipo_accesorio as ta ON acc.id_tipoacc = ta.id_tipoacc "; 
if(!$result = mysqli_query($conn, $query)) die();
 
	while($row = mysqli_fetch_array($result)) 
	{ 
		?><div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<img src="images/home/<?php echo $row['logo'] ?>" alt="" />
											<h2>$ <?php echo $row['valor'] ?></h2>
											<p><?php echo $row['tipo'] ?></p>
											<p><?php echo $row['nombre'] ?></p>
											<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
										</div>
										<div class="product-overlay">
											<div class="overlay-content">
												<h2>$ <?php echo $row['logo'] ?></h2>
												<p><?php echo $row['tipo'] ?></p>
												<p><?php echo $row['nombre'] ?></p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
											</div>
										</div>
								</div>
							</div>
						</div>
<?php 		
	}
$close = mysqli_close($conn) 
or die("Ha sucedido un error inexperado en la desconexion de la base de datos");

if ($total_paginas > 1) {
		if ($pagina != 1)
			echo '<a href="'.$url.'?pagina='.($pagina-1).'"><span class="glyphicon glyphicon glyphicon-chevron-left"></span></a>';
		for ($i=1;$i<=$total_paginas;$i++) {
			if ($pagina == $i)
				//si muestro el �ndice de la p�gina actual, no coloco enlace
				echo $pagina;
			else
				//si el �ndice no corresponde con la p�gina mostrada actualmente,
				//coloco el enlace para ir a esa p�gina
				echo '  <a href="'.$url.'?pagina='.$i.'">'.$i.'</a>  ';
		}
		if ($pagina != $total_paginas)
			echo '<a href="'.$url.'?pagina='.($pagina+1).'"><span class="glyphicon glyphicon glyphicon-chevron-right"></span></a>';
	}
}	
?>
