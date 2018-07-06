<?php
$title = 'Décomposeur N 1ers';
include 'inc/header.php';

function decomposition_nombres_premiers($n) {
    if (!$n || $n < 2) {
        return [$n];
    }
    $f = [];
    for ($i = 2; $i <= $n; $i++) {
        while (($n % $i) === 0) {
            array_push($f, '<b>' . nf($i) . '</b>');
            $n /= $i;
        }
    }
    return $f;
}

;

$n = 4096000;

echo nf($n) . ' = ' . implode(' x ', decomposition_nombres_premiers($n));


include 'inc/footer.php';
