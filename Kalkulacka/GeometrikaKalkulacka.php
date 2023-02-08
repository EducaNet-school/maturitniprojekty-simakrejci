<?php

// Definice funkce na výpočet obvodu a obsahu
function calc_shape($shape, $a, $b = 0) {
    switch ($shape) {
        case "square":
            $perimeter = 4 * $a;
            $area = pow($a, 2);
            break;
        case "rectangle":
            $perimeter = 2 * ($a + $b);
            $area = $a * $b;
            break;
        case "triangle":
            if ($b == 0) {
                $perimeter = 3 * $a;
                $area = (sqrt(3) / 4) * pow($a, 2);
            } else {
                $perimeter = $a + $b + sqrt(pow($a, 2) + pow($b, 2));
                $area = 0.5 * $a * $b;
            }
            break;
        default:
            return "Shape not supported";
    }

    return array("perimeter" => $perimeter, "area" => $area);
}

// Volání funkce s výpočtem
$shape = "square";
$a = 5;
$b = 0;
$result = calc_shape($shape, $a, $b);

// Výpis výsledku
echo "Shape: " . $shape . "\n";
echo "Perimeter: " . $result["perimeter"] . "\n";
echo "Area: " . $result["area"] . "\n";

?>
