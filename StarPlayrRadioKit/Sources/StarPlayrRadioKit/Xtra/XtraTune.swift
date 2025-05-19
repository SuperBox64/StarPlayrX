//
//  XtraTune.swift
// 
//
//  Created by Todd on 3/28/19.
//

import Foundation

var keyData = Data()

//internal func xtraTuneData(channelGuid: String = "86d52e32-09bf-a02d-1b6b-077e0aa05200", chname: String = "default") {
//
//
//    let AIC_Image = hls_sources["AIC_Image"] ?? "http://pri.art.prod.streaming.siriusxm.com"
//
//    //var returnData = Data()
//
//    //  public typealias User = Dictionary<String, LoginData>
//
//    //typealias itemType = (artist: String, title: String, assetGuid: String, clipImageUrl: String, duration: Double)
//    //typealias channelType = (channelGuid: String, channelImageUrl: String, channelName: String)
//
//    //var channelDict = [String : Any]()
//    let endpoint = "https://player.siriusxm.com/rest/v4/aic/tune?channelGuid=" + channelGuid //Add in data here
//    let xtData = GetSync(endpoint: endpoint, method: "XtraTune")    //MARK - for Sync
//
//    let successMsg = xtData.value( forKeyPath: "ModuleListResponse.messages" ) as? NSArray
//    let messageDict = successMsg?.firstObject as? NSDictionary
//    let message = messageDict?.value( forKeyPath: "message" ) as? String
//    let code = messageDict?.value( forKeyPath: "code" ) as? Int
//
//    if ( code == 100 || message == "successful" ) {
//        if let moduleList = xtData.value( forKeyPath: "ModuleListResponse.moduleList.modules" ) as? NSArray {
//            let mods = moduleList.firstObject as? NSDictionary
//
//            //let chinfo = mods!.value( forKeyPath: "moduleResponse.additionalChannelData.channel" ) as? NSDictionary
//            //let channelGuid = chinfo!.value( forKeyPath: "channelGuid" ) as! String
//            //let channelImageUrl = chinfo!.value( forKeyPath: "channelImageUrl" ) as! String
//            //let channelName = chinfo!.value( forKeyPath: "name" ) as! String
//
//            // let channelinfo = ["channelGuid": channelGuid, "channelImageUrl": channelImageUrl, "channelName": channelName]
//
//            if let clipList = mods!.value( forKeyPath: "moduleResponse.additionalChannelData.clipList.clips" ) as? NSArray {
//
//                for i in clipList  {
//                    if let item = i as? NSDictionary {
//                        let artist = item.value( forKeyPath: "artistName" ) as? String ?? ""
//                        let title = item.value( forKeyPath: "title" ) as? String ?? ""
//                        let assetGuid = item.value( forKeyPath: "assetGuid" ) as? String ?? ""
//
//                        var clipImageUrl = item.value( forKeyPath: "clipImageUrl" ) as? String ?? ""
//                        clipImageUrl = clipImageUrl.replacingOccurrences(of: "%AIC_Image%" , with: AIC_Image)
//                        let consumptionInfo = item.value( forKeyPath: "consumptionInfo" ) as? String ?? ""
//
//                        let contentUrls = item.value( forKeyPath: "contentUrlList.contentUrls" ) as? NSArray
//                        let url1 = contentUrls?.firstObject as? NSDictionary
//                        let streamUrl = url1?.value( forKeyPath: "url" ) as? String ?? ""
//                        let crossfade = item.value( forKeyPath: "crossfade" ) as? Dictionary ?? [:]
//                        let duration = item.value( forKeyPath: "duration" ) as! Double
//
//                        if ( xtraSongQueue.count < 1 && duration > Double(30) ) {
//
//                            //print("----------")
//                            //print(artist)
//
//                            let (playlist, keyUrl, key, firstSegment, lastSegment) = xtraPlaylist(url: streamUrl, assetGuid: assetGuid)
//
//                            let item = ["artist":artist,
//                                        "title": title,
//                                        "assetGuid": assetGuid,
//                                        "clipImageUrl": clipImageUrl,
//                                        "duration": duration,
//                                        "consumptionInfo": consumptionInfo,
//                                        "streamUrl": streamUrl,
//                                        "crossfade": crossfade,
//                                        "playlist": playlist,
//                                        "keyUrl": keyUrl,
//                                        "key": key,
//                                        "firstSegment": firstSegment,
//                                        "lastSegment": lastSegment,
//                                ] as [String : Any]
//
//                            xtraSongQueue.append(item)
//
//
//                        } else {
//
//                            var additem = true;
//                            for x in xtraSongQueue {
//                                let y = x as! [String:Any]
//                                if y["assetGuid"] as? String == item["assetGuid"] as? String {
//                                    //print("item exists")
//                                    additem = false;
//                                    break;
//                                }
//                            }
//
//                            if additem && duration > Double(30) {
//                                //print("----------")
//                                //print(artist)
//
//                                let (playlist, keyUrl, key, firstSegment, lastSegment) = xtraPlaylist(url: streamUrl, assetGuid: assetGuid)
//
//                                let item = ["artist":artist,
//                                            "title": title,
//                                            "assetGuid": assetGuid,
//                                            "clipImageUrl": clipImageUrl,
//                                            "duration": duration,
//                                            "consumptionInfo": consumptionInfo,
//                                            "streamUrl": streamUrl,
//                                            "crossfade": crossfade,
//                                            "playlist": playlist,
//                                            "keyUrl": keyUrl,
//                                            "key": key,
//                                            "firstSegment": firstSegment,
//                                            "lastSegment": lastSegment,
//                                    ] as [String : Any]
//
//                                xtraSongQueue.append(item)
//                            }
//                        }
//                    }
//                }
//            }
//        }
//    }
//}
//
//
///*
// [INFO] Starting HTTP server  on 127.0.0.1:9999
// {
// ModuleListResponse =     {
// messages =         (
// {
// code = 100;
// message = Successful;
// }
// );
// moduleList =         {
// modules =             (
// {
// moduleArea = Discover;
// moduleRespon
//
// */
