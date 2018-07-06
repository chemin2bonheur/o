<?php
$envoiEnVrai = 0;

//$to = "lio181@yahoo.fr";
//$to = "grcote7@gmail.com";

/**
 * @param $v
 */
function vdl($v)
{
    $args = func_get_args();
    echo '<style>pre{background-color: #efefef;color:blue;border:1px solid grey;padding: 2px 5px;-webkit-border-radius: ;-moz-border-radius: ;border-radius: 4px;}</style><pre>';
    foreach ($args as $v) {
        var_dump($v);
    }
    echo '</pre>';
}

?>

<?php
if (isset($to)) {

$mymsg = "noMail";
$dmn   = $_SERVER["SERVER_NAME"];

$parts  = explode('.', $dmn);
$subDmn = 'root';

//echo 'Dmn: ' . $dmn . '<hr>';
if (count($parts) > 2) {
//    vdl($parts);
    $subDmn = ucfirst($parts[0]);
    $nb     = count($parts) - 1;
    array_shift($parts);
//    vdl($parts);
    $dmn = implode('.', $parts);
}
else {
    $parts  = explode('.', $dmn);
    $subDmn = ucfirst($parts[0]);
}

$from = 'zadmin@' . $dmn;

$subject = "[" . $subDmn . "] -> " . $from . ' => ' . $to;
$txt     = "<h1>Exemple</h1><p style=\"color:blue;\">My txt</p>";
//    $headers = "From: example@example.com" . "\r\n" . "CC: example@example.com";
$headers = "From: " . $dmn . "<" . $from . ">\n";
$headers .= "Reply-To: " . $from . "\n";
$headers .= "Content-Type: text/html; charset=\"iso-8859-1\"";

if ($envoiEnVrai) {

    if (mail($to, $subject, $txt, $headers)) {
        $rep   = '<hr>Mail envoyé :' . $from . ' => <b>' . $to . '</b><hr>' . $txt;
        $mymsg = 'Mail OK';
    }
    else {
        $rep = '<hr>Mail demandé mais pas envoyé.';
    }
}
?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><?= isset($mymsg) ? $mymsg : 'Test' ?> | C2B</title>
</head>
<body>
<?php

echo 'Test de la fonction mail().' . (isset($rep) ? $rep : '') . '<hr>Prêt à envoyer : ' . $from . ' => <b > ' . $to . '</b ><hr > ' . $headers . '<hr > ' . $subDmn;
//phpinfo();
}
else {
    ?>
    <meta charset="UTF-8">
    <?php
    die('Pas de destinataire défini.');
}
?>
</body>
</html>
