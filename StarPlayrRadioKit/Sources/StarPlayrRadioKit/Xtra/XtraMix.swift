//
//  XtraMix.swift
//  COpenSSL
//
//  Created by Todd Bruss on 9/11/19.
//

//import UIKit
import AVKit
import AVFoundation

//func mixAudio(backtrack: String, nexttrack: String) {
//    let composition = AVMutableComposition()
//    let tracks: [String] = [backtrack, nexttrack]
//    var _: String = "wav"
//    for trackName: String in tracks {
//        let url = URL(string:trackName)
//        let audioAsset = AVURLAsset(url: url!)
//        let audioTrack: AVMutableCompositionTrack? =
//            composition.addMutableTrack(
//                withMediaType: AVMediaType.audio,
//                preferredTrackID: kCMPersistentTrackID_Invalid)
//        
//        do {
//            try audioTrack?.insertTimeRange(CMTimeRangeMake(
//                start: CMTime.zero, duration: audioAsset.duration),
//                                            of: audioAsset.tracks(withMediaType: AVMediaType.audio)[0],
//                                            at: CMTime.zero)
//        } catch  {
//            print(error)
//        }
//        
//    }
//    
//    let assetExport = AVAssetExportSession(asset: composition, presetName: AVAssetExportPresetAppleM4A)!
//    
//
//    //  Converted with Swiftify v1.0.6355 - https://objectivec2swift.com/
//    let mixedAudio: String = "mixedAudio.m4a"
//    let exportPath: String = NSTemporaryDirectory() + (mixedAudio)
//    let exportURL = URL(fileURLWithPath: exportPath)
//    if FileManager.default.fileExists(atPath: exportPath) {
//        try? FileManager.default.removeItem(atPath: exportPath)
//    }
//    assetExport.outputFileType = AVFileType.m4a
//    assetExport.outputURL = exportURL
//    assetExport.shouldOptimizeForNetworkUse = true
//    assetExport.exportAsynchronously(completionHandler: {() -> Void in
//        print(assetExport.outputURL as Any)
//        print("Completed Sucessfully")
//    })
//    
//}
//
//
//
//func copyAudioBufferBytes(audioBuffer: AVAudioPCMBuffer) -> [UInt8] {
//    let srcLeft = audioBuffer.floatChannelData![0]
//    let bytesPerFrame = audioBuffer.format.streamDescription.pointee.mBytesPerFrame
//    let numBytes = Int(bytesPerFrame * audioBuffer.frameLength)
//    
//    // initialize bytes to 0 (how to avoid?)
//    var audioByteArray = [UInt8](repeating: 0, count: numBytes)
//    
//    // copy data from buffer
//    srcLeft.withMemoryRebound(to: UInt8.self, capacity: numBytes) { srcByteData in
//        audioByteArray.withUnsafeMutableBufferPointer {
//            $0.baseAddress!.initialize(from: srcByteData, count: numBytes)
//        }
//    }
//    
//    return audioByteArray
//}
//
//
//func bytesToAudioBuffer(bytes: [UInt8]) -> AVAudioPCMBuffer {
//
//    //options 2 channels and not interleave
//    //or 1 channel and interleave
//    let fmt = AVAudioFormat(commonFormat: .pcmFormatFloat32, sampleRate: 44100, channels: 2, interleaved: false)
//    let frameLength = UInt32(bytes.count) / fmt!.streamDescription.pointee.mBytesPerFrame
//    
//    var audioBuffer = AVAudioPCMBuffer(pcmFormat: fmt!, frameCapacity: frameLength)
//    audioBuffer!.frameLength = frameLength
//    
//
//   
//    if let leftspeaker = audioBuffer?.floatChannelData?[0], let rightspeaker = audioBuffer?.floatChannelData?[1] {
//        bytes.withUnsafeBufferPointer {
//            let src = UnsafeRawPointer($0.baseAddress!).bindMemory(to: Float.self, capacity: Int(frameLength))
//            leftspeaker.initialize(from: src, count: Int(frameLength))
//            rightspeaker.initialize(from: src, count: Int(frameLength))
//
//        }
//    }
// 
//    //let audioEngine = AVAudioEngine()
//    // let audioMixer = AVAudioMixerNode()
//    
//   // let x = audioEngine.connect(audioMixer, to: audioEngine.mainMixerNode, format: fmt)
//    
//
//    return audioBuffer!
//}
//
//
//func mixme (bufferOne:AVAudioPCMBuffer, bufferTwo: AVAudioPCMBuffer) {
//    let x = AVAudioMix.init()   
//}
