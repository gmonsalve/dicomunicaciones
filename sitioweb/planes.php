<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Home | DiegoComunicaciones</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
  <link href="css/main.css" rel="stylesheet">
  <link href="css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
    
</head><!--/head-->

<body>
<?php include('header.php');?>
  
  <section id="slider"><!--slider-->
    <div class="container">
      <div class="row">
        <div class="col-sm-12">
          <div id="slider-carousel" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
              <li data-target="#slider-carousel" data-slide-to="1"></li>
              <li data-target="#slider-carousel" data-slide-to="2"></li>
            </ol>
            
            <div class="carousel-inner">
              <div class="item active">
                <div class="col-sm-6">
                  <h1><span>Diego</span>Comunicaciones</h1>
                  <h2>Los mejores planes de Claro</h2>
                  <p>No esperes más, inicia tu plan ahora desde cero pesos y con elegidos ilimitados. </p>
                  <button type="button" class="btn btn-default get">Ver más</button>
                </div>
                <div class="col-sm-6">
                  <img src="images/home/girl1.jpg" class="girl img-responsive" alt="" />

                </div>
              </div>
              <div class="item">
                <div class="col-sm-6">
                  <h1><span>Diego</span>Comunicaciones</h1>
                  <h2>Mira el último Samsung Galaxy M2</h2>
                  <p>Una excelente camara y un rendimiento optimo son solo algunas de las caracteristicas de este celular. </p>
                  <button type="button" class="btn btn-default get">Comprar Ahora</button>
                </div>
                <div class="col-sm-6">
                  <img src="images/home/girl2.jpg" class="girl img-responsive" alt="" />

                </div>
              </div>
              
              <div class="item">
                <div class="col-sm-6">
                  <h1><span>Diego</span>Comunicaciones</h1>
                  <h2>Accesorios personalizados</h2>
                  <p>Te gustan los accesorios con tu toque personal, con tus colores y diseños favoritos. </p>
                  <button type="button" class="btn btn-default get">Comprar Ahora</button>
                </div>
                <div class="col-sm-6">
                  <img src="images/home/girl3.jpg" class="girl img-responsive" alt="" />

                </div>
              </div>
              
            </div>
            
            <a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
              <i class="fa fa-angle-left"></i>
            </a>
            <a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
              <i class="fa fa-angle-right"></i>
            </a>
          </div>
          
        </div>
      </div>
    </div>
  </section><!--/slider-->
  
  <section>
    <div class="container">
        <div class="row">
			<div class="col-sm-3">
				<?php include('left_sidebar.php');?>
			</div>
			<div class="col-sm-9 padding-right">
				<div class="category-tab"><!--category-tab-->
					 <div class="tab-content">
						<div class="tab-pane fade active in" id="tshirt" >
							<?php include('planes2.php'); ?>   
						</div>	

					</div>
				</div><!--/category-tab-->
			</div>
			</div>
			</div>
  </section>
  
  <?php include('footer.php');?>

  

  
    <script src="js/jquery.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.scrollUp.min.js"></script>
  <script src="js/price-range.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
</body>
</html>