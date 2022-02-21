import Foundation

//exercise 1
func even_odd(a: Int) {
    if a % 2 != 0 {
        print("Число \(a) нечетное")
    } else {
        print("Число \(a) четное")
    }
    
}

even_odd(a: 6)


//exercise 2
func zero_three(b: Int) {
    let c = b % 3
    switch c {
    case 0:
        print("Число \(b) делится на 3 без остатка")
    default:
        print("Число \(b) не делится на 3 без остатка")
    }
}
zero_three(b: 9)

//exercise 3
var numbers: [Int] = []

var i = 0
while i < 100 {
    i+=1
    numbers.append(i)
}

print(numbers)

//exercise 4

var filtredOddNums = numbers.filter({$0 % 2 != 0})

var filtredThreeNums = filtredOddNums.filter({$0 % 3 != 0})
numbers = filtredThreeNums
print(numbers)

//exercise 5
var fibonachiMassiv: [Int] = []

func fibonachi(firstNum: Int){
    var fn1 = 1
    var fn2 = 1
    i = 0
    while i < (firstNum - 2){
        let fn_sum = fn1 + fn2
        fn1 = fn2
        fn2 = fn_sum
        i += 1
        fibonachiMassiv.append(fn2)
}
}
fibonachi(firstNum: 50)
print(fibonachiMassiv)



