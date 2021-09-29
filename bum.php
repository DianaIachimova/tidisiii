<!DOCTYPE html>
<html>
<head>
  <style>
    p{
      color: red;
    }
  </style>
</head>
<body>
<p>primul pe acasa</p>
<?php
$x = 9;
$y = 10;

 echo $A=2+$x-$y , "</br>";
echo $B=$x*$A+$y , "</br>";
echo $A=2*$B+$x;
  ?>

    </br>
    <p>exercitii la instructiuni</p>
    

</br>

<?php

$a = $_GET['a'];
$b = $_GET['b'];
$c = $_GET['c'];

echo "a = " . $_GET['a'] . " b = " . $_GET['b']. " c = " . $_GET['c']."<br>";


if ($a > $b && $a > $c) {echo "a este maxim" , "</br>";}
 elseif ($b > $a && $b > $c) {echo "b este maxim" , "</br>";}
  else {echo "c este maxim", "</br>";}


if ($a < $b && $a < $c) {echo "a este minim" , "</br>";}
 elseif ($b < $a && $b < $c) {echo "b este minim" , "</br>";}
  else {echo "c este minim", "</br>";}

?>

<?php

$a = $_GET['a'];
$b = $_GET['b'];
$c = $_GET['c'];

echo "enumerarea descrescatoare", "<br>"; 


if ($a > $b && $a > $c && $b > $c ) {echo $a , " ",$b , " ",$c , " ";}
 elseif ($b > $a && $b > $c && $a > $c) {echo $b , " ",$a , " ",$c , " ";}
  elseif ($c > $a && $c > $b && $a > $b) {echo $c , " ",$a , " ",$b , " ";}
  else {echo $c , " ",$b , " ",$a , " ";}


  echo "<br>","enumerarea crescatoare ","<br>"; 


if ($a > $b && $a > $c && $b > $c ) {echo $c , " ",$b , " ",$a , " ";}
 elseif ($b > $a && $b > $c && $a > $c) {echo $c , " ",$a , " ",$b , " ";}
  elseif ($c > $a && $c > $b && $a > $b) {echo $b , " ",$a , " ",$c , " ";}
  else {echo $a , " ",$b , " ",$c , " ";}




?>




</body>
</html>
