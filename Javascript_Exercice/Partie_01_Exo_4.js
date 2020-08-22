let nbr = "";
let tab = [];

for (let i = 0; i <10; i++) {

    nbr = Number(prompt("saisir 10 chiffre"));
    tab.push(nbr);
}

console.log(tab);
console.log(Math.max(...tab));
console.log(tab.indexOf(Math.max(...tab)));