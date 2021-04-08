//
//  main.swift
//  test
//
//  Created by Student on 26/3/2564 BE.
//  Copyright © 2564 Student. All rights reserved.
//

import Foundation

 //mid-term Exam 1: 10 to 2
func ch1(){
    print("Choice 1: Base 10 to base 2 \nInput your number ( > 0 and < 1,000)")
    var stock:[Int] = []
    var ans:[Int] = []
    var numberInput:Int = 0
    while  numberInput <= 0 ||  numberInput > 1000 {
        numberInput = Int(readLine()!)!
    }
    while numberInput >= 2{
        stock.append(numberInput%2)
        numberInput = numberInput / 2
    }
    stock.append(numberInput)
    ans = stock.reversed()
    print("Base 2 is ",ans)
}

//mid-term Exam 2: 2 to 10

func power(n1:Int,n2:Int) -> Int {
  var rs:Int = n1
  for i in 0...n2 {
    if n2==0{
      rs=1
      break
    }
      if i>1{
      rs=rs*n1
    }
  }
  return rs

}
func ch2(){
    //print("Choice 2: Base 2 to base 10 \nจดไม่ทันโว้ยยยยย")
    var x = ""
    var num = 0
    var output:[Int] = []
    print("Choice 2: Base 2 to base 10 \nInput your number: ")
    let s = readLine()!
    num = s.count-1
    for c in s{
        x = String(c)
        output.append(Int(x)!*power(n1: 2, n2: num))
        num-=1
        
    }
    print(output,"Method1")
    var n:Int=0
    for z in output {
      n+=z
    }
    print(n)
}

//.Main
while 1 != 0{
    print("\nWelcome to my lecture \n")
    print("Type 1 for choice 1 \n and 2 for choice 2 \n any key to exit")
    let a = readLine()!
    if a == "1" {
        ch1()
    } else if a == "2"{
        ch2()
    } else {
        print("\nThe End")
        break
    }
}
