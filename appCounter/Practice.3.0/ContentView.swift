//
//  ContentView.swift
//  Practice.3.0
//
//  Created by StudentPM on 2/24/25.
//

import SwiftUI

struct ContentView: View {
    @State var num: Int = 0
    var body: some View {
        VStack {
      
            Text("Dogs are fantastic")
            Text("\(num)")
            
            HStack{
                
                Button(action: {
                    Increment()
                }, label:{
                    
                    Text("Increment")
                        .padding()
                        .foregroundColor(.white)
                        .background(.blue)
                        .cornerRadius(3.0)
                })
                
                Button(action: {
                    Decrement()
                }, label:{
                    
                    Text("Decrement")
                        .padding()
                        .foregroundColor(.white)
                        .background(.blue)
                        .cornerRadius(3.0)
                })
            }
                
        }
        .padding()
    }
    func Increment(){
        if num < 50{
            num += 1
        }
        
    }
    
    func Decrement(){
        if num > 0{
            num -= 1
        }
    }
}

#Preview {
    ContentView()
}
