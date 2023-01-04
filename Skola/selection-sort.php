<?php
function selection_sort($array) {
    $n = count($array);
    for ($i = 0; $i < $n; $i++) {
        $min = $i;
        for ($j = $i + 1; $j < $n; $j++) {
            if ($array[$j] < $array[$min]) {
                $min = $j;
            }
        }
        if ($min != $i) {
            $tmp = $array[$i];
            $array[$i] = $array[$min];
            $array[$min] = $tmp;
        }
    }
    return $array;
}

$array = [5, 2, 4, 1, 3];
print_r(selection_sort($array));



?>