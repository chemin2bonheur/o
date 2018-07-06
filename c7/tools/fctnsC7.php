<?php
/**
 * Created by PhpStorm.
 * User: cote
 * Date: 31/10/2016
 * Time: 15:40
 */

//exit( 'FixC7 <br>' . __FILE__ . '<br>Lg: ' . __LINE__ );

/**
 * @param $v
 */
function vdl($v) {
  $args = func_get_args();
  echo '<style>pre{background-color: #efefef;color:blue;border:1px solid grey;padding: 2px 5px;-webkit-border-radius: ;-moz-border-radius: ;border-radius: 4px;}</style><pre>';
  foreach ($args as $v) {
    var_dump($v);
  }
  echo '</pre>';
}
/**
 * NumberFormat (à la française)
 * 
 * @param $n Nombre source
 * $d Nombre de décimales - Si omis: 0
 * 
 * Return string Nombre formaté
 */
function nf($n, $d=0){
        return number_format($n, $d, ',',' ');
}
