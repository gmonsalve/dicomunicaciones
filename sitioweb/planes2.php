
<?php 
//connect to DB
$conn = mysql_connect("localhost", "root", "");

if (!$conn) {
     die('Could not connect: ' . mysql_error());
}

// Select the database
$er1 = mysql_select_db("dcomunicaciones");
if (!$er1) {
    print "Error - Could not select the POLL database";
    exit;
}

//execute query
$query = "select op.logo, op.nombre, pl.tipo_plan, pl.Valor from operador As op Join planes As pl ON op.id_operador = pl.id_operador"; 
$result = mysql_query($query);
// Get the number of rows in the result, as well as the first row
//  and the number of fields in the rows
$num_rows = mysql_num_rows($result);
$row = mysql_fetch_array($result);
$num_fields = mysql_num_fields($result);

if ($result != NULL)
  {
?>
<div class="col-md-12">
   <table class="table">
      <thead>
        <tr class='col-md-12'>
          <div colspan="4"><h2 class="title text-center">Listado de Planes</h2></div>
        </tr>
        <tr style="background-color: #40403e; color:white">
          <ul>
            <th class='col-md-3'>Logo</th>
            <th class='col-md-3'>Compania</th>
            <th class='col-md-3'>Plan</th>
            <th class='col-md-3'>Precio</th>
          </ul>
        </tr>
      </thead>
      <tbody>
        <!--ul-->
        <?php
        // Produce the column labels
        // Output the values of the fields in the rows
        for ($row_num = 0; $row_num < $num_rows; $row_num++) {
            print "<tr>";
            $values = array_values($row);
            for ($index = 0; $index < $num_fields; $index++) {
              $value = htmlspecialchars($values[2 * $index + 1]);
             
                # code...
                print "<td>" . $value . "</td> ";
             
            
            }

            print "</tr>";
            $row = mysql_fetch_array($result);
            }
        ?>
      </tbody>
   </table>
 </div>  
<?php    
  }else{ 
    //if query is null
    include('../sitioweb/404.html');
  }
?>
