//
//  TimerViewModel.swift
//  CountdownTimer
//
//  Created by Jamorn Suttipong on 5/1/2568 BE.
//

import Foundation

class TimerViewModel: ObservableObject {
    
    @Published var timeLeft: Int = 60
    
    private var timer: Timer?
    let initialTime: Int = 60
    
    func startTimer() {
        if self.timer == nil {
            self.timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { _ in
                self.timeLeft -= 1
                if self.timeLeft <= 0 {
                    self.timer?.invalidate()
                    self.timer = nil
                }
            })
        }
    }
    
    func resetTimer() {
        if self.timer != nil {
            self.timer?.invalidate()
            self.timer = nil
        }
        self.timeLeft = initialTime
    }
}
