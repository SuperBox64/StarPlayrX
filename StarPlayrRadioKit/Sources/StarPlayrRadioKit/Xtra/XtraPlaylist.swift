//
//  XtraPlaylist.swift
//  Cameo
//
//  Created by Todd on 3/31/19.
//

import Foundation


/// https://priprodtracks.mountain.siriusxm.com/clips/siriushits1/43a39f2d-da53-7761-fe5a-fdccea308af8/aba1ecf7522fbf17b8c2a9dfc785f75e92/audio/43a39f2d-da53-7761-fe5a-fdccea308af8_256k_v3/43a39f2d-da53-7761-fe5a-fdccea308af8_256k_small_v3.m3u8

//func xtraPlaylist( url: String = "", assetGuid: String = "" ) -> (playlist: String, keyUrl: String, key: Data, firstSegment: String, lastSegment: String) {
//    
//    xtraPlaylistCounter += 1
//    
//    var streamUrl = url
//    var playList = ""
//
//    let AIC_Primary_HLS = "https://priprodtracks.mountain.siriusxm.com"
//    let bitrate = "256k" // choices are 256k, 96k, 64k, 32k
//    
//    //We predict the variant, so we don't have to do this
//    //var variant = streamUrl.replacingOccurrences(of: "%AIC_Primary_HLS%" , with: "https://priprodtracks.mountain.siriusxm.com")
//    //print(variant)
//    //var variant2 = TextSync(endpoint: variant, method: "xtra")
//    // print(variant2)
//    
//    var keyUrl = streamUrl.replacingOccurrences(of: "%AIC_Primary_HLS%" , with: "https://player.siriusxm.com/rest/streaming")
//    keyUrl = keyUrl.replacingOccurrences(of: "variant_small_v3.m3u8" , with: bitrate + "_v3/key/4")
//
//    let key = DataSync(endpoint: keyUrl, method: "key") as Data
//
//    var baseStreamUrl = streamUrl.replacingOccurrences(of: "%AIC_Primary_HLS%" , with: "/xtraAudio")
//    baseStreamUrl = baseStreamUrl.replacingOccurrences(of: "_variant_small_v3.m3u8" , with: "_" + bitrate + "_v3/")
//    
//    streamUrl = streamUrl.replacingOccurrences(of: "%AIC_Primary_HLS%", with: AIC_Primary_HLS)
//    let playListURL = streamUrl.replacingOccurrences(of: "variant_small" , with: bitrate + "_v3/" + assetGuid + "_" + bitrate + "_small")
//    
//    
//    //#EXT-X-MEDIA-SEQUENCE:<counter>
//    playList = TextSync(endpoint: playListURL, method: "xtra")
//    //playList = playList.replacingOccurrences(of: "key/4", with: "/key/4")
//    playList = playList.replacingOccurrences(of: "#EXT-X-KEY", with: "##EXT-X-KEY")
//    playList = playList.replacingOccurrences(of: "#EXT-X-ENDLIST", with: "")
//
//    playList = playList.replacingOccurrences(of: "##EXT-X-KEY:METHOD=AES-128,URI=\"key/4\"", with: "")
//    playList = playList.replacingOccurrences(of: "#EXT-X-MEDIA-SEQUENCE", with: "##")
//    playList = playList.replacingOccurrences(of: "#EXT-X-PLAYLIST-TYPE:VOD", with: "#EXT-X-MEDIA-SEQUENCE:" + String(xtraPlaylistCounter))
//    playList = playList.replacingOccurrences(of: "#EXT-X-ALLOW-CACHE:NO", with: "#EXT-X-ALLOW-CACHE:YES")
//    
//
//    playList = playList.replacingOccurrences(of: assetGuid, with: baseStreamUrl + assetGuid)
//    
//    //this keeps the PDF in sync
//    playList = playList.replacingOccurrences(of:"#EXTINF:10", with: "#EXTINF:1")
//    
//    let lines = playList.split { $0.isNewline }
//    
//    var firstSegment = "";
//    var lastSegment = "";
//    
//    if let first = lines.first(where: { $0.contains("/xtraAudio/") }) {
//        firstSegment = String(first)
//    }
//    
//    if let last = lines.last(where: { $0.contains("/xtraAudio/") }) {
//        lastSegment = String(last)
//    }
//    
//    //xtraSongs[String(mediaSequence)] = ["keyUrl":keyUrl, "playlist":playList, "assetGuid":assetGuid]
//    //print(playList)
//    return (playlist: playList, keyUrl: keyUrl, key: key, firstSegment: firstSegment, lastSegment: lastSegment)
//    
//}
//
//
//
//func xtraPlay( song: String = "" ) -> String {
//    var playlist : String? = ""
//    var keyUrl : String? = ""
//    
//    let xs = xtraSongs[song] as! NSDictionary
//    
//    //print(1)
//    playlist = xs.value( forKeyPath: "playlist" ) as? String ?? ""
//
//    
//    if let key = keyUrl {
//        keyData = DataSync(endpoint: key, method: "key") as Data
//    }
//
//    if let p = playlist {
//        return p
//    }
//    
//    return playlist!
//    
//}
