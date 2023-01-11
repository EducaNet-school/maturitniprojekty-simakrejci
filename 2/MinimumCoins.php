<?php
$castka = 3000;

$money = array(5000, 2000, 1000, 500, 200, 100, 50, 20, 10, 5, 2, 1);

$output = array();
foreach ($money as $money) {
    if ($money <= $castka) {
        $output[$money] = floor($castka / $money);
        $castka = $castka % $money;
    }
}

foreach ($output as $money => $count) {
    echo $count . 'x ' . $money . ' Kč' . PHP_EOL;
}

?>