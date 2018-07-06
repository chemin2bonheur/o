<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>c7</title>
</head>
<body>

<?php
include 'tools/fctnsC7.php';

$servlocal = ['localhost', 'w', 'p', 'c7', 'c2b', 'ass', 'p100'];
echo 'Liste des serveurs locaux / pcliZg (OS Ubu - 1st boot/3):';
vdl($servlocal);

echo '<h1>' . $_SERVER['SERVER_NAME'] . '</h1>';

if (in_array($_SERVER['SERVER_NAME'], $servlocal)) {
    $path = dirname(__FILE__);

//    echo 'Local <b>' . $_SERVER['SERVER_NAME'] . '</b><br>' . $path;

    $pathArr = explode('/', $path);

//    echo '<pre>';
//    var_dump($pathArr);
//    echo '</pre>';

    $replacement = '<b> SG$1 </b>';
    $nch         = preg_replace('/sg(.)/', $replacement, $path);


//    echo 'Serveur local: ' . $nch;
    echo $nch;

}
else {


    echo '<b>c7</b><hr/>';


    $ips = [
        '144.217.92.216',
        '164.132.224.214',
        '164.132.230.55',
        '137.74.173.246',
        '213.32.17.244'
    ];


    $srv = [$_SERVER['SERVER_NAME'], $_SERVER['SERVER_ADDR']];

    printf('URL: <b>%s </b ><br > SG<b >%s </b > (I.P. : %s)', $_SERVER['SERVER_NAME'], (array_search($srv[1], $ips) + 1), $_SERVER['SERVER_ADDR']);
}
echo ' <hr>&copy 2017 - GC7';
?>
<!--<img src="../avatars/Oxygen/smiley.png">-->
</body>
</html>
