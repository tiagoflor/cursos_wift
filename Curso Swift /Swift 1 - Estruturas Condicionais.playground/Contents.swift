import UIKit

var str = "Hello, playground"

//If - else
var hasHeadshake = false
var humor = ""
if hasHeadshake {
    humor = "Eu to brabo"
} else {
    humor = "Felizão"
}

let number = 11
if number % 2 == 0 {
    print("Ele é par")
} else {
    print("Ele é ímpar")
}

var temperature = 18
var climate = ""
if temperature <= 0 {
    climate = "Frio pra cacete"
} else if temperature < 14 {
    climate = "Está frio"
} else if temperature < 21 {
    climate = "Clima Agradável"
} else {
    climate = "Muiito Quente"
}

let letter = "i"
var letterType = ""
if letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u" {
    letterType = "Vogal"
} else {
    letterType = "Consoante"
}


//Switch
switch letter {
    case "a","e", "i", "o", "u":
        letterType = "Vogal"
    default:
        letterType = "Consoante"
}

let speed = 95.0
switch speed {
    case 0.0..<20.0:    // de 0 até 20
        print("Primeira Marcha")
    case 20.0..<40.0:
        print("Segunda Marcha")
    case 40.0..<50.0:
        print("Terceira Marcha")
    case 50.0..<90.0:
        print("Quarta Marcha")
     default:
        print ("Quinta Marcha")
}

//Closed Range e Half-Closed Range
// Operador com 3 pontos(...) - Closed Range (Range = um intervalo)
//Operador com 2 pontos com sinal de maior ou menor (..<) - Half Closed Range

let range0_10 = 0...10
let range0_9 = 0..<9

//exemplo para pegar aposentadoria
let firstLetter = "e"
switch firstLetter{
case "a" ... "f":
    print("Você está no primeiro semestre")
case "g" ... "l":
    print("Você está no segundo semestre")
case "m" ... "r":
    print("Você está no terceiro semestre")
default:
    print("Você está no quarto semestre")
}
//o switch precisa ser exaurido, ou seja, obrigatoriamente precisa fazer todos os cenários
