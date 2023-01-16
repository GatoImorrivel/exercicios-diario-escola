/*
1) Percorra o objeto clientes e mostre o nome da cada cliente da seguinte maneira:
“ultimoSobrenome, primeiroNome”
*/

var clientes = [
  {
    id: 1,
    nome: "Luis Santos Silveira",
    idade: 18,
  },
  {
    id: 2,
    nome: "Ricardo Lopes Alves",
    idade: 30,
  },
  {
    id: 3,
    nome: "Gustavo Silva Junior",
    idade: 26,
  },
];

// Percorre todo o array de clientes de forma funcional
clientes.forEach((cliente) => {
  // Separa o primeiro nome
  let primeiroNome = cliente.nome.split(" ")[0];

  // Separa o sobrenome
  let sobreNome = cliente.nome.split(primeiroNome)[1];

  console.log(`${sobreNome}, ${primeiroNome}`);
});
