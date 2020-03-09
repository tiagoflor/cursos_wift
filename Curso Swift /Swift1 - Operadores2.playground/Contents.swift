import UIKit

var str = "Hello, playground"

//Operadores Logicos

//Operador E ou AND(&&) - O operador && só retorna TRUE se todos os operando forem TRUE
var boughtBanana = true
var boughtTomato = true
var boughtApple = false

var isHappy = boughtBanana && boughtTomato && boughtApple // dará false porque um operando é FALSE, se caso todos os operandos
                                                          // fossem verdadeiros, seria TRUE.
// atributos do operador &&
true && true
true && false
false && false

//Operador OU (or): ||  - Ou gosta disso ou gosta da daquilo
var likesMeat = false
var likesBeer = true
var canInviteBarbecue = likesBeer || likesMeat

// atributos do operador ||
true || false
true || true
false || true
false || false

//uma equeção como exemplo primeiro soma por isso tem parenteses para depois mult ou dividir
var grade1 = 8.5
var grade2 = 7.0
let result = (grade1 + grade2)/2

//Operador unário  NEGACAO (NOT): !Atua somente em um operando
var knowSwift = true
var enrolSwiftCourse = !true  //nesse caso eu posso negar que ele seja TRUE e vira FALSE,
                              // da mesma forma se fosse FALSE com operador ! ficaria TRUE.


//Operador ternário  - Ele atua em mais de uma condição para retornar o resultado pendente
var grade = 7.95
var gradeResult = (grade >= 7.0) ? "Aprovador" : "Reprovado"

//Exemplo 2
let number = 11
let type = (number % 2 == 0) ? "Par" : "Impar"
