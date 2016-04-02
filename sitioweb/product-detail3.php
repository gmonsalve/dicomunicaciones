
<?php 
//connect to DB
$server = "localhost";
$user = "root";
$pass = "";
$bd = "dcomunicaciones";
$url ="http://localhost/diegocomunicaciones/sitioweb/product-details.php";
//Creamos la conexión
$id_celulares=$_GET['id_celulares'];
$conn = mysqli_connect($server, $user, $pass, $bd) 
or die("Ha sucedido un error inexperado en la conexion de la base de datos");
/**/

//execute query
$query = "select * from celulares where id_celulares= ".$id_celulares; 
if(!$result = mysqli_query($conn, $query)) die();
 
	while($row = mysqli_fetch_array($result)) 
	{// var_dump($row)
    	?><div class="col-sm-6">
			<div class="product-information"><!--/product-information-->
				
				<h2><?php echo $row['nombre'] ?></h2>
				<p>Web ID: 1089772</p>
				<img src="images/product-details/<?php $row['logo'] ?>" alt="" />
				<span>
					<span>$ <?php echo $row['valor'] ?></span>
					<label>Cantidad:</label>
					<input type="text" value="3" />
					<button type="button" class="btn btn-fefault cart">
						<i class="fa fa-shopping-cart"></i>
					 Comprar
					</button>
	     		</span>
				<p><b>Disponible:</b> SI</p>
				<p><b>Estado:</b> Nuevo</p>
				<p><b>Marca:</b><?php echo $row['id_marcacel'] ?>	</p>
				<a href=""><img src="images/product-details/share.png" class="share img-responsive"  alt="" /></a>
			</div><!--/product-information-->
		 </div>
<?php 		
	}
$close = mysqli_close($conn) 
or die("Ha sucedido un error inexperado en la desconexion de la base de datos");

?>
