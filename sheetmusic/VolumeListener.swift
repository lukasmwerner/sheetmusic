//
//  VolumeListener.swift
//  sheetmusic
//
//  Created by lukas on 4/26/21.
//

import Foundation
import JPSVolumeButtonHandler


func volumeListener(handler: @escaping (Float)->Void) {
    let handler = JPSVolumeButtonHandler()
    handler.upBlock = {
        print("volume up")
    }
    handler.downBlock = {
        print("volume down")
    }
}


