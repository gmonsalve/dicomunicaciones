
<?php 
//connect to DB
$server = "localhost";
$user = "root";
$pass = "";
$bd = "dcomunicaciones";
 
//Creamos la conexión
$conn = mysqli_connect($server, $user, $pass, $bd) 
or die("Ha sucedido un error inexperado en la conexion de la base de datos");

//execute query
$query = "select * from celulares"; 
if(!$result = mysqli_query($conn, $query)) die();
 
	while($row = mysqli_fetch_array($result)) 
	{ 
    	?><div class="col-sm-6">
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
?>
