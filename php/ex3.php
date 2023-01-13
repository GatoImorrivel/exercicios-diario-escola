<?php
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
