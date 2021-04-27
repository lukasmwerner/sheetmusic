//
//  VolumeListener.swift
//  sheetmusic
//
//  Created by lukas on 4/26/21.
//

import Foundation
import AVKit

var outputVolumeObserve: NSKeyValueObservation?
let audioSession = AVAudioSession.sharedInstance()

func listenVolumeButton() {
   do {
    try audioSession.setActive(true)
   } catch {
    print("some error")
   }
   audioSession.addObserver(self, forKeyPath: "outputVolume", options: NSKeyValueObservingOptions.new, context: nil)
}


override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
  if keyPath == "outputVolume" {
    print("Hello")
  }
}
