<?php
$castka = 3000;

$bankovky = array(5000, 2000, 1000, 500, 200, 100, 50, 20, 10, 5, 2, 1);

$output = array();
foreach ($bankovky as $denomination) {
    if ($bankovky <= $castka) {
        $output[$bankovky] = floor($castka / $bankovky);
        $castka = $castka % $bankovky;
    }
}

foreach ($output as $bankovky => $count) {
    echo $count . 'x ' . $bankovky . ' Kč' . PHP_EOL;
}

?>