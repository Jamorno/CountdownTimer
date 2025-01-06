//
//  ContentView.swift
//  CountdownTimer
//
//  Created by Jamorn Suttipong on 5/1/2568 BE.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = TimerViewModel()
    
    var body: some View {
        VStack {
            //time
            Text("\(viewModel.timeLeft)")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            HStack(spacing: 20) {
                //start button
                Button {
                    viewModel.startTimer()
                } label: {
                    Text("Start")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .padding()
                        .background(.black)
                        .clipShape(RoundedRectangle(cornerRadius: 20.0))
                }
                
                //reset button
                Button {
                    viewModel.resetTimer()
                } label: {
                    Text("Reset")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .padding()
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 20.0))
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
