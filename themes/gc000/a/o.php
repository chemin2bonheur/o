<?php
$title='O';
include 'inc/header.php';

// Exemple de closure simple
// Closure
$double = function ($v = 7) {
  return $v * 2;
};
$triple = function ($v = 7) {
  return $v * 3;
};

$n      = 150;
$p1     = 'Le triple de ' . nf($n) . ' est ' . nf($triple($n)).'.';
echo '<h1>Closure:</h1><p>' . $p1.'</p><hr>';


/**
 * A class Cote
 */
class Cote {

  private $kkk = 159;

  public function setKkk($kkk) {
    $this->kkk = $kkk;
  }

  public function getSetKkk(){
  	return $this->kkk;

  }
}
$pseudo = 'Constructor';
echo '<h2>You\'re a great ' . $pseudo . '.</h2>';
$a = new Cote();
$a->setKkk([123, 456, 789]);
$n = $a->getSetKkk();
echo "\n\n" . '<pre>' . "\n";
var_dump($n);
echo '</pre><hr/>';



//echo '<hr><a href="/themes/gc000/a/tsconfig.json">YouTube Key</a>';
//phpinfo(INFO_ENVIRONMENT | INFO_VARIABLES);


include 'inc/footer.php';
