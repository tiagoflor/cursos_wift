import UIKit

var str = "Hello, playground"

//Operadores Binarios

//Operadores de atribuição  =
let gravity = 9.81
var (name,age) = ("Tiago", 25)
print(name)
print(age)


//Operadores Aritiméticos Soma(+), Subtraçao (-), Multiplicação(*), Divisão(/), Módulo(%)

//Soma +
var age1 = 45
var age2 = 26
let sum = age1 + age2
print(sum)

//Subtração -
let minus = age1 - age2
print(minus)

//Multipllicação
let multiply = age1 * age2
print(multiply)

//operacoes de tipo so podem ocorrer entre o mesmo tipo (ex. int + int)
//ex:
let time1 = 12
let time2 = 14.75
//let resultTimes = time1 + time2  //nao irá funcionar tem 2 tipos diferentes (int e double)

//Divisão /  quando divide, resultado sempre será um valor inteiro e nao dizima
let division = age1 / age2
print(division)

//Módulo % (Resto da divisão)
let toys = 35
let kids = 6
let modulus = toys % kids

//Operador composto - Ele atribui valor e opera ao mesmo tempo
age1 = age1 + age2 // idade 1 recebe ele mesmo mais idade 2
//ou
age1 += age2  //Idade 1 recebe a soma dela mesma mais a idade 2

// outras formas de operador composto: -= (subtraindo e atribuindo), *= (multiplicando e atribuindo) , /= (dividindo e atribuindo) ou %= ( tirando modulo e atribuindo)

//exemplo: supondo que voce tenha um estoque de 125 produtos e foram vendidos 22, como ficaria como operador composto?

var products = 125
var lastBuy = 22
products -= lastBuy

// Operadores de comparação - fazem comparaçao entre valores e SEMPRE retornam um booleano
//Maior que: >
let grade1 = 7.0
let grade2 = 9.5
let betterThanFriend = grade1 > grade2

//Menor que: <
let grade = 7.0
let minimumGrade = 7.0
let reproved = grade < minimumGrade

//Maior ou igual: >=
//Menor ou igual: <=
let aproved = grade >= minimumGrade

 //Igualdade: ==
let teacherNAME = "Eric"
let studantName = "eric"
let sameNames = teacherNAME == studantName //Lembrando que ele compara as variaveis, mesmo sendo nomes parecidos eles sao                                                  //diferentes entre sim ja que um é maiusculo e outro minusculo.

