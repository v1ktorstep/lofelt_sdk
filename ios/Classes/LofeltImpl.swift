//
//  LofeltImpl.swift
//  lofelt_sdk
//
//  Created by VS on 8/8/23.
//

import Foundation
import LofeltHaptics

class LofeltImpl: Lofelt {
    private var haptics: LofeltHaptics?
    
    func initHaptics() throws {
        haptics = try? LofeltHaptics.init()
    }
    
    func deviceMeetsMinimumRequirements() throws -> Bool {
        return LofeltHaptics.deviceMeetsMinimumRequirement();
    }
    
    func load(data: String) throws {
        try haptics?.load(data);
    }
    
    func play() throws {
        try haptics?.play();
    }
    
    func stop() throws {
        try haptics?.stop();
    }
    
    func seek(time: Double) throws {
        try haptics?.seek(Float(time));
    }
    
    func loop(enabled: Bool) throws {
        try haptics?.loop(enabled)
    }
    
    func setAmplitudeMultiplication(factor: Double) throws {
        try haptics?.setAmplitudeMultiplication(Float(factor))
    }
    
    func setFrequencyShift(shift: Double) throws {
        try haptics?.setFrequencyShift(Float(shift))
    }
    
    func clipDuration() throws -> Double {
        let duration = haptics?.getClipDuration() ?? 0;
        return Double(duration)
    }
}
