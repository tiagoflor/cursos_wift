import UIKit

//Criando um Array

var names = ["Fulano", "Ciclano", "Beltrano"]
var namesB: [String] = ["Fulano", "Ciclano", "Beltrano"]

// Array Vazio
var loterryNumber: [Int] = [] //Só pode iniciar um array VAZIO quando define o tipo dele.
var phoneNumbers: [String]? //Uma forma de iniciar um array NULO utilizando OPTICINAL(?)


var ages: [UInt8] = [9, 7, 12, 15, 22] //UInt8 = Use unsigned 8bit(max 255 caracteres) integer ou Inteiro assinado de 8 bites (nao existe idade negativa e tem número limitado.

var guests = ["João", "Paula", "Alexandre", "Patrícia", "Sandra"]


// Propriedade count
print(guests.count)
// o array possui uma variavel interna chamada "count" que devolve uma    quantidade de itens.
//propriedade é uma variavel que esta dentro de um elemento,

//Propriedade isEmpty
print(guests.isEmpty) //devolve um booleano dizendo se o array está vazio ou não

// Trabalhar com coleções não é apenas o fato de armazenar uma quantidade de dados, mas sim pode MANIPULAR esses dados. Tipo array tem uma série de comandos chamado de métodos.


//Indice para recuperar um elemento
let secondGuest = guests[1] //procura elemento na posição 1, sintaxe de subscript - acessa ele mento de uma array usando []

//modificar elemento de um array

guests[0] = "Henrique" //modifica o primeiro elemento para passar a ser o "Henrique"

print(guests)
guests[0...1] = ["Eric", "Roberto", "Joana", "Bia"] //modifica os elementos usando um range
print(guests)

//Propriedade de array que devolve o primeiro elemento
print(guests.first) //cuidado o first devolve um opticional, voce deve desenbrulhar conforme abaixo

if let first = guests.first{ // opticional bind, recuperando primeiro
    print(first)
}
if let last = guests.last{ //recuperando o último
    print(last)
}

// 1- adicionando elementos em uma array
guests += ["Sandro", "Helena", "Elen"] //adicionando 3 na lista de convidados

//Outro forma de adicionar, chamada "append"
guests.append("Edina") //o append coloca no final do array o novo elemento

//adicionar elemento em outra posicão - chamado insert element
guests.insert("Romildo", at: 2) // insere valor Romildo na posição 2
                                //cuidado!, caso seja colocado elemento em um posição que não
 print(guests)                  // exista, o aplicativo poderá quebrar.

// Remover um elemento do array
//guests.removeFirst() Remove o primeiro elemento
//guests.removeLast()  Remove o último elemento
//guests.remove(at: 2) Remove um elemento selecionado elemento
//guests.removeAll() Remove Todos elementos


//Descobrir um determinado elemento
if guests.contains("Helena") {  //SE o array possuir elemento helena então imprimir
    print("A Helena foi convidada!")  // mensagem: "A Helena foi convidada!"
}



