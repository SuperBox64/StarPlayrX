//
//  XtraRoutes.swift
//
//  Created by Todd on 3/31/19.
//

//import PerfectHTTP
//import PerfectHTTPServer

import Foundation
//import CryptoSwift
//import COpenSSL
//import PerfectCrypto
//import PerfectLib

//xtra session

//Encpytion Key for Xtra Channels Sirius XM
//internal func keyFourRoute() {
//    let key = keyData
//    
//    
//    //print(key)
//   // response.setBody(bytes: [UInt8](key)).setHeader(.contentType, value:"application/octet-stream").completed()
//}
//
//
//
//private let decoderQueue = DispatchQueue(label: "LoginQueue", qos: .userInitiated)
//
//
//
//internal func xtraAudioRoute() {
//    
//    decoderQueue.async {
//        let clip = ""
//        //let clip = request.urlVariables[routeTrailingWildcardKey]
//        let encrypted = Array<UInt8>( xtraAudio( data: clip ) )
//        
//       // let cipher = Cipher.aes_128_cbc
//        let key = Array<UInt8>(keyData)
//    
//        let emptyIV: Array<UInt8> = [0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00]
//        
//        //if  let decrypted = encrypted.decrypt(cipher, key: key, iv: emptyIV) {
//            DispatchQueue.main.async {
//                
//               // let buffer = bytesToAudioBuffer(bytes: Array<UInt8>(decrypted))
//
//                //let newbytes = copyAudioBufferBytes(audioBuffer: buffer)
//                
//                //response.setBody( bytes: [UInt8](newbytes ) ).setHeader(.contentType, value:"audio/aac").completed()
//            }
//        //} else {
//            //so we can give some type of repsonse to prevent hanges
//           // response.setBody( bytes: emptyIV ).setHeader(.contentType, value:"audio/aac").completed()
//        //}
//    }
//}
//
//
//internal func xtraSessionRoute() {
//    
//   // if let body = request.postBodyString {
//        
//        do {
//            let json =  [String:Any]()
//            let channelid = json["channelid"] as? String
//            let userid = json["userid"] as? String
//            
//            if channelid != "" && userid != "" {
//                //Session func
//                let returnData = XtraSession(channelid: channelid ?? "", userid: userid ?? "")
//                let jayson = ["data": returnData, "message": "coolbeans", "success": true] as [String : Any]
//               // try? _ = response.setBody(json: jayson).setHeader(.contentType, value:"application/json").completed()
//            } else {
//                let jayson = ["data": "", "message": "Missing channelid, userid or key.", "success": false] as [String : Any]
//               // try? _ = response.setBody(json: jayson).setHeader(.contentType, value:"application/json").completed()
//            }
//        } catch {
//            let jayson = ["data": "", "message": "Syntax Error or invalid JSON.", "success": false] as [String : Any]
//           // try? _ = response.setBody(json: jayson).setHeader(.contentType, value:"application/json").completed()
//        }
//        
////    } else {
////        let jayson = ["data": "", "message": "Session may be invalid, try logging in first.", "success": false] as [String : Any]
////        //try? _ = response.setBody(json: jayson).setHeader(.contentType, value:"application/json").completed()
////    }
//}
//
////xtra playlist2
//internal func xtraPlaylistRoute() {
//    
//    
//    //.if let body = request.postBodyString {
//        
//        do {
//            let json        =  [String:Any]()
//            
//            let url         = json["url"]          as? String
//            let assetGuid   = json["assetGuid"]    as? String
//            
//            if url != "" && assetGuid != "" {
//                //Session func
//                let returnData = xtraPlaylist(url: url ?? "", assetGuid: assetGuid)
//                let jayson = ["data": returnData, "message": "coolbeans", "success": true] as [String : Any]
//               // try? _ = response.setBody(json: jayson).setHeader(.contentType, value:"application/json").completed()
//            } else {
//                let jayson = ["data": "", "message": "Missing url or assetGuid.", "success": false] as [String : Any]
//             //   try? _ = response.setBody(json: jayson).setHeader(.contentType, value:"application/json").completed()
//            }
//        } catch {
//            let jayson = ["data": "", "message": "Syntax Error or invalid JSON.", "success": false] as [String : Any]
//            //try? _ = response.setBody(json: jayson).setHeader(.contentType, value:"application/json").completed()
//        }
//        
////    } else {
////        let jayson = ["data": "", "message": "Session may be invalid, try logging in first.", "success": false] as [String : Any]
////        try? _ = response.setBody(json: jayson).setHeader(.contentType, value:"application/json").completed()
////    }
//}
//
////xtra Tune Route
///*internal func xtraTuneRoute(request: HTTPRequest, _ response: HTTPResponse) {
//    if let channelGuid = request.urlVariables["channelGuid"] {
//        response.setBody( bytes: [UInt8]( xtraTuneData(channelGuid: channelGuid) )).setHeader(.contentType, value:"application/octet-stream").completed()
//    } else {
//        response.completed()
//    }
//    response.completed()
//}*/
//
//internal func xtraPlayRoute() {
//    //let playlistRequest = request.urlVariables[routeTrailingWildcardKey]
//    //print( playlistRequest)
//    mediaSequence += 1
//
//    xtraTuneData()
//    
//
//    
//    //let filename = String(playlistRequest!.dropFirst())
//    //let songArray = filename.split(separator: ".")
//    //print(xtraSongQueue)
//    
//    /**** Update Now Playing with this stuff ****/
//    //    var playr = xtraSongQueue.first as! [String:Any]
//    //print(playr)
//        //let assetGuid = playr["assetGuid"]!
//        //let streamUrl = playr["streamUrl"]!
//    /**** Update Now Playing with this stuff ****/
//    let p = xtraSongQueue.first as! [String:Any]
//    let q = xtraSongQueue[1] as! [String:Any]
//    
//    print(q)
//    keyData = p["key"] as? Data ?? Data()
//    
//    let artist = p["artist"] as? String ?? ""
//    let title = p["title"] as? String ?? ""
//
//    print(artist,title)
//
//    let playlist = p["playlist"] as? String ?? ""
//    
//    //Segment blender starts here
//    let lastSegment = p["lastSegment"] as? String ?? ""
//    let firstSegment = q["firstSegment"] as? String ?? ""
//    
//  
//    
//    //print("mediaSequence",mediaSequence)
//    //let playlist = xtraPlay(song: String(mediaSequence))
//    
//    //print(playlist)
//    
//    //xtraSongQueue.removeFirst(1)
//    //response.setBody(string: playlist).setHeader(.contentType, value:"application/x-mpegURL").completed()
//    //Fetch the playlist for the AVPlayer
//   
//}
