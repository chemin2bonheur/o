export default function ajoutParImport() { 
  $('#testlihp').html('Ok posé par un fichier importé en jQ.');
  $('#testlihp').css('border','1px solid red')
              .css('border-radius', '4px')
              .css('padding', '5px 10px')
              .css('background-color', '#fff');
  $('#testlihp').append(' <span style="font-size:.8em; font-style:italic; color:red">(Et chargé par webpack.)</span>');
}
