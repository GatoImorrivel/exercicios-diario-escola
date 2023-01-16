# JavaScript

1. Percorra o objeto clientes e mostre o nome da cada cliente da seguinte maneira: “ultimoSobrenome, primeiroNome”

```
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
```

2. Formate a variável “numero” para o seguinte formato: “(XX)\_X_XXXX-XXXX”

```
var numero = "5(1)9-876-543-21";

// Regex para selecionar quaisquer caracter que não
// seja um numero
let mascara = /[^0-9]/g;

// Remove os caracteres que não se encaixam no regex
let numeroSanitizado = numero.replace(mascara, "");

// (XX) X XXXX-XXXX
let dd = numeroSanitizado.substring(0, 2);
let numeroExtra = numeroSanitizado.charAt(2);
let esquerda = numeroSanitizado.substring(3, 7);
let direita = numeroSanitizado.substring(7, 11);

let numeroFormatado = `(${dd}) ${numeroExtra} ${esquerda}-${direita}`;

console.log(numeroFormatado);
```

## Bonus

3. **Qual a ordem dos prints no console?**  
   A ordem será: 'A função é: c', e depois 'A função é: d'. Isso se dá
   pois a função 'b' retorna prematuramente antes de chamar a função 'alertUser',
   e o 'alertUser' presente na função 'a' não é chamado pois a função 'c'
   faz uma chamada à função 'resolve';

4. **Existe algum erro nesse código? Se sim, comente sobre?**  
   Não há erros que causem falha no interpretador,
   porem a função 'b' chama a função 'alertUser' apos retornar,
   assim fazendo com que essa chamada não ocorra. Isso pode ser
   considerado um erro, pois a função não cumpre o que é esperado dela.

# PHP

1. Utilizando a variável $arrayDeClientes de um echo no nome do segundo cliente

```
$nomes = ['Francisco Souza', 'Guilherme Rosa', 'Arthur Golveia'];

$cliente1 = new stdClass();
$cliente1->nome = $nomes[0];

$cliente2 = new stdClass();
$cliente2->nome = $nomes[1];

$cliente3 = new stdClass();
$cliente3->nome = $nomes[2];

$arrayDeClientes = [$cliente1, $cliente2, $cliente3];

echo $arrayDeClientes[1]->nome;
```

2. Utilize a estrutura de dados $arrayDeNascimento para adicionar na estrutura $arrayDeClientes a data de nascimento de cada cliente.

```
$nomes = ['Francisco Souza', 'Guilherme Rosa', 'Arthur Golveia'];

$cliente1 = new stdClass();
$cliente1->nome = $nomes[0];

$cliente2 = new stdClass();
$cliente2->nome = $nomes[1];

$cliente3 = new stdClass();
$cliente3->nome = $nomes[2];

$arrayDeClientes = [$cliente1, $cliente2, $cliente3];

$arrayDeNascimento = [
  'Francisco Souza' => '10-12-1996',
  'Arthur Golveia' => '14-01-2000',
  'Guilherme Rosa' => '26-05-1985',
  'Marcelo Planalto' => '26-05-1985'
];

// Iterar sobre todos os clientes
foreach ($arrayDeClientes as $cliente) {
    // Iterar sobre todas datas de nascimento
    foreach ($arrayDeNascimento as $nome => $dataNasc) {
        // Achar um cliente com o nome dado na data de nascimento
        if ($nome == $cliente->nome) {
          $cliente->dataNascimento = $dataNasc;
        }
    }
}

// Vale notar que Marcelo Planalto não aparecera
// pois não foi registrado como cliente

// Mostra todos os clientes e suas datas de nascimento
foreach ($arrayDeClientes as $cliente) {
  echo $cliente->nome . ": ";
  echo $cliente->dataNascimento . "\n";
}
```

3. Faça a ordenação e impressão da estrutura $arrayDeClientes resultante do exercício 2 pela data de nascimento (pode ser ascendente ou descendente)

```
$nomes = ['Francisco Souza', 'Guilherme Rosa', 'Arthur Golveia'];

$cliente1 = new stdClass();
$cliente1->nome = $nomes[0];

$cliente2 = new stdClass();
$cliente2->nome = $nomes[1];

$cliente3 = new stdClass();
$cliente3->nome = $nomes[2];

$arrayDeClientes = [$cliente1, $cliente2, $cliente3];

$arrayDeNascimento = [
    'Francisco Souza' => '10-12-1996',
    'Arthur Golveia' => '14-01-2000',
    'Guilherme Rosa' => '26-05-1985',
    'Marcelo Planalto' => '26-05-1985'
];

// Iterar sobre todos os clientes
foreach ($arrayDeClientes as $cliente) {
    // Iterar sobre todas datas de nascimento
    foreach ($arrayDeNascimento as $nome => $dataNasc) {
        // Achar um cliente com o nome dado na data de nascimento
        if ($nome == $cliente->nome) {
            $cliente->dataNascimento = $dataNasc;
        }
    }
}

// Ordena os clientes de forma mais velho até os mais novos
foreach ($arrayDeClientes as $id => $cliente) {
    foreach ($arrayDeClientes as $outroId => $outroCliente) {
        $dataNasc = new DateTime($cliente->dataNascimento);
        $outraDataNasc = new DateTime($outroCliente->dataNascimento);

        if ($dataNasc < $outraDataNasc) {
            $temp = $arrayDeClientes[$id];
            $arrayDeClientes[$id] = $arrayDeClientes[$outroId];
            $arrayDeClientes[$outroId] = $temp;
        }
    }
}

// Vale notar que Marcelo Planalto não aparecera
// pois não foi registrado como cliente

// Mostra todos os clientes e suas datas de nascimento
foreach ($arrayDeClientes as $cliente) {
    echo $cliente->nome . " nascido em " . $cliente->dataNascimento . "\n";
}
```

# SQL

1. Escreva comandos SQL para inserir os dados abaixo conforme o diagrama
   apresentado.
   a) Pablo é Pai de Lucas
   b) Brenda é Mãe de Lucas

```
-- MySQL
insert into Aluno
(Id, Nome)
VALUES (1, 'Lucas');

insert into Responsavel
(Id, Nome)
VALUES (1, 'Pablo');

insert into Responsavel
(Id, Nome)
VALUES (2, 'Brenda');

insert into Parentesco
(IdResponsavel, IdAluno, Parentesco)
VALUES (1, 1, 'Pai');

insert into Parentesco
(IdResponsavel, IdAluno, Parentesco)
VALUES (2, 1, 'Mãe');
```

2. Escreva uma consulta SQL para retornar dados únicos conforme tabela abaixo.
   Caso o aluno tenha mais de dois responsáveis, traga apenas os dois primeiros
   responsáveis encontrados na tabela.

```
-- MySql
SELECT Aluno.nome as 'Aluno',
SUBSTRING_INDEX(GROUP_CONCAT(DISTINCT Responsavel.nome ORDER BY Parentesco.idaluno, Parentesco.idresponsavel SEPARATOR ','), ',', 1) as 'Responsavel 1',
SUBSTRING_INDEX(GROUP_CONCAT(DISTINCT Parentesco.parentesco ORDER BY Parentesco.idaluno, Parentesco.idresponsavel SEPARATOR ','), ',', 1) as 'Parentesco 1',
SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(DISTINCT Responsavel.nome ORDER BY Parentesco.idaluno, Parentesco.idresponsavel SEPARATOR ','), ',', 2), ',', -1) as 'Responsavel 2',
SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(DISTINCT Parentesco.parentesco ORDER BY Parentesco.idaluno, Parentesco.idresponsavel SEPARATOR ','), ',', 2), ',', -1) as 'Parentesco 2'
FROM Aluno
JOIN Parentesco ON Aluno.id = Parentesco.idaluno
JOIN Responsavel ON Parentesco.idresponsavel = Responsavel.id
GROUP BY Aluno.id;
```

## Bonus

1. Escreva uma consulta para trazer todos os dados

```
-- MySQL
SELECT Aluno.id AS "Id Aluno", Aluno.nome AS "Nome Aluno",
Responsavel.id AS "Id Responsavel", Responsavel.nome AS "Nome Responsavel",
Parentesco.parentesco AS "Parentesco"
FROM Aluno
JOIN Parentesco ON Aluno.id = Parentesco.idAluno
JOIN Responsavel ON Responsavel.id = Parentesco.idResponsavel
ORDER BY Aluno.id
```
