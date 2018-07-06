/**
 * Created by cote on 11/03/17.
 */

function count_eleves(eleves) {
    return "Il y a " + eleves.length + " élèves !";
}

function ajouterEleve(eleves, eleve) {
    // eleves.push(eleve);
    return [,...eleves, eleve
]
    ;

}

var eleves = ['Jean', 'Marc'];

console.log(count_eleves(eleves));
console.log(ajouterEleve(eleves, 'Demo'));
console.log(eleves);
