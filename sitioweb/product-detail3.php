
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
$query = "select * from celulares as cl join marca_celular as mc on cl.id_celulares = cl.id_celulares and cl.id_celulares=".$id_celulares; 
if(!$result = mysqli_query($conn, $query)) die();
 
	while($row = mysqli_fetch_array($result)) 
	{ //var_dump($row)
    	?><div class="col-sm-12 product-information">
			<div class="col-sm-6"><!--/product-information-->
				<h2>Marca: </b><?php echo $row['nombre'] ?></h2>
				<h2>Modelo:<b><?php echo $row['nombre'] ?></b></h2>
			    <img src="data:image/jpeg;base64,<?php echo base64_encode( $row['logo'] );?>"/>
				<span>
					<p>Web ID: 1089772</p>
					<span>$ <?php echo $row['valor'] ?></span>
					<label>Cantidad:</label>
					<input type="text" value="3" />
					<button type="button" class="btn btn-fefault cart">
						<i class="fa fa-shopping-cart"></i>
					 Comprar
					</button>
	     		</span>
	     		<a href="../sitioweb/index.php"><img src="images/back.png" class="share img-responsive"  alt="" /></a>
			</div><!--/product-information-->
			<div class="col-sm-6">
				
				 <p>Tamaño: <?php echo $row['tamano'] ?></p>
			    <p>Procesador: <?php echo $row['procesador'] ?></p>
			    <p>memoria: <?php echo $row['mem_interna'] ?></p>
			    <p>camara:<?php echo $row['camara'] ?></p>
			    <p>Sistema Operativo:<?php echo $row['sistema_operativo'] ?></p>
			    <p><?php echo $row['tamano'] ?></p>
				<p><b>Disponible:</b> SI</p>
				<p><b>Estado:</b> Nuevo</p>
				<a href=""><img src="images/product-details/share.png" class="share img-responsive"  alt="" /></a>
			</div>
		 </div>

<?php 		
	}
$close = mysqli_close($conn) 
or die("Ha sucedido un error inexperado en la desconexion de la base de datos");
?>