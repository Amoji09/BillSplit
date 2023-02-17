//
//  ContentView.swift
//  FirstApp
//
//  Created by Amogh Mantri on 2/16/23.
//

//Goal: Create a app that displays how much money each person has to pay with a given bill amount and amount of people

import SwiftUI

struct ContentView: View {
  @State var billAmount = ""
  var bo : Bool = false
  var numbers : [Int] = [1,2,3,4,5]
  var owns = ["Amogh" : "mac", "Hajin" : "windows"]
  
  @State var sliderAmount = 0.0
  var body: some View {
    ZStack{
      Color("greeen")
      VStack(alignment:.center){
        Image("Money_Cash").resizable().frame(width:300, height:250).cornerRadius(10).padding()
        TextField("Bill Amount", text: $billAmount).padding().background(Color.white).cornerRadius(10).padding()
        Slider(value: $sliderAmount).padding()
        Text("\((Int(ceil(sliderAmount * 20) + 1))) \((Int(ceil(sliderAmount * 20) + 1)) == 1 ? "person" : "people")")
        
        Text(getSplitAmount(amount:billAmount, people:(Int(ceil(sliderAmount * 20) + 1))))
        
      }
    }
    .ignoresSafeArea()
  }
  
  func getSplitAmount(amount : String, people : Int) -> String {
    let castAmount = Double(amount) ?? 0
    var splitAmount = castAmount / Double(people)
    var x = 1
    if(x < 2) {
      print("hello")
    }
    switch x {
      case 1:
        print("d")
      default:
        print("e")
    }
    for i in 0...10 {
      print(i)
    }
    while(x < 10) {
      print(x)
      x+=1
    }
    
    
    
    return String(format: "Split amount: $%.02f",splitAmount)
  }
 
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
