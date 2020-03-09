import UIKit

var str = "Hello, playground"


//Dicionario é uma coleção não ordenada de objetos do mesmo tipo, que são acessados através de uma chave
var states = [    //states é a chave
    "AC": "Acre",
    "AL": "Alagoas",
    "AP": "Amapá",
    "AM": "Amazonas",
    "BA": "Bahia",
    "CE": "Ceará",
    "DF": "Distrito Federal",
    "ES": "Espírito Santos"
]

//outra forma de criar um dicionário de maneira explícita
var stundentGrade: [String: Double] = [:] // studentGrade = Nome do dicionario ; [String: Double] = [:] dicionario com valor 0

//adicionar um novo estado
states["GO"] = "Goiaz"  //Chave do states "GO" vai estar vinculada a goiás

// modificar elemento de uma chave
//states["GO"] = "Goiás"


//atualiza uma chave e devolve o valor antigo para compararmos, caso nao tenha valor antigo ele retorna null
let oldGO = states.updateValue("Goias", forKey: "GO" )
//print(oldGO)

let myState = states["AL"]  //ele retornará sempre OPTIONAL caso não seja explícito

// desempacotar o myState
if let state = myState{
    print(state)
}

// Remover um elemento
states["GO"] = nil // remove e retorna nil
print(states)

print("Quantidade de Estados cadastrados é:", states.count)



//como utilizar o dicionario recem criado?
let keys = Array(states.keys) //transforma um dicionario em array
print(keys)

let values = Array(states.values) // mostra todos os valores das chaves
print(values)

// diferente do array, ele não tem ordem. Ou seja, nao ordenado e por isso deve ser acessado através das chaves
