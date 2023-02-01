<?php

function calculate_area_and_perimeter($shape, $a = 0, $b = 0) {
    switch ($shape) {
        case "square":
            $area = $a * $a;
            $perimeter = 4 * $a;
            break;
        case "rectangle":
            $area = $a * $b;
            $perimeter = 2 * ($a + $b);
            break;
        case "triangle":
            if ($a == $b) {
                $area = ($a * $b) / 2;
                $perimeter = 3 * $a;
            } else {
                $area = ($a * $b) / 2;
                $perimeter = $a + $b + sqrt($a*$a + $b*$b);
            }
            break;
        default:
            return "Invalid shape";
    }

    return array("area" => $area, "perimeter" => $perimeter);
}

$result = calculate_area_and_perimeter("square", 5);
print_r($result);

$result = calculate_area_and_perimeter("rectangle", 5, 10);
print_r($result);

$result = calculate_area_and_perimeter("triangle", 5, 5);
print_r($result);

$result = calculate_area_and_perimeter("triangle", 5, 10);
print_r($result);

?>
