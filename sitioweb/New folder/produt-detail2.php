
<?php 
//connect to DB
$server = "localhost";
$user = "root";
$pass = "";
$bd = "dcomunicaciones";
$url ="http://localhost/diegocomunicaciones/sitioweb/product-details.php";
//Creamos la conexión
$conn = mysqli_connect($server, $user, $pass, $bd) 
or die("Ha sucedido un error inexperado en la conexion de la base de datos");
/**/
$query_registros = "SELECT * FROM celulares";
$rs_noticias = mysqli_query($conn, $query_registros);
$num_total_registros = mysqli_num_rows($rs_noticias);

//Si hay registros
if ($num_total_registros > 0) {
	//Limito la busqueda
	$TAMANO_PAGINA = 10;
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
$query = "select * from celulares"; 
if(!$result = mysqli_query($conn, $query)) die();
 
	while($row = mysqli_fetch_array($result)) 
	{ 
    	?><div class="col-sm-6 col-md-6">
			<div class="product-information"><!--/product-information-->
				<img src="images/product-details/<?php $row=['id_celular'] ?>" class="newarrival" alt="" />
				<h2><?php $row=['id_marcacel'] ?></h2>
				<p>Web ID: 1089772</p>
				<img src="images/product-details/<?php $row=['nombre'] ?>" alt="" />
				<span>
					<span>US <?php $row=['valor'] ?></span>
					<label>Quantity:</label>
					<input type="text" value="3" />
					<button type="button" class="btn btn-fefault cart">
						<i class="fa fa-shopping-cart"></i>
						Add to cart
					</button>
	     		</span>
				<p><b>Availability:</b> In Stock</p>
				<p><b>Condition:</b> New</p>
				<p><b>Brand:</b> E-SHOPPER</p>
				<a href=""><img src="images/product-details/share.png" class="share img-responsive"  alt="" /></a>
			</div><!--/product-information-->
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