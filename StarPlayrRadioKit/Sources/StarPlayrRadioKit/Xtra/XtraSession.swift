//
//  Cookies.swift
//  Camouflage
//
//  Created by Todd Bruss on 1/20/19.
//

//carousel
//URL: https://player.siriusxm.com/rest/v4/experience/carousels?page-name=recents&result-template=everest%7Cweb&cacheBuster=1553640589533

//refresh tracks
//URL: https://player.siriusxm.com/rest/v4/aic/refresh-tracks?cacheBuster=1553640744078

//tune
//https://player.siriusxm.com/rest/v4/aic/tune?channelGuid=86d52e32-09bf-a02d-1b6b-077e0aa05200&cacheBuster=1553640887848

import Foundation

///https://player.siriusxm.com/rest/v4/aic/tune?channelGuid=86d52e32-09bf-a02d-1b6b-077e0aa05200&cacheBuster=1567880838396

//internal func XtraSession(channelid: String = "86d52e32-09bf-a02d-1b6b-077e0aa05200", userid: String = "StarPlayrX") -> String {
//
//    //resume
//    let endpoint = "https://player.siriusxm.com/rest/v2/experience/modules/resume?channelId=" + channelid + "&contentType=aic"
//    
//    let request =  ["moduleList": ["modules": [["moduleRequest": ["resultTemplate": "web", "deviceInfo": ["osVersion": "Mac", "platform": "Web", "clientDeviceType": "web", "sxmAppVersion": "3.1802.10011.0", "browser": "Safari", "browserVersion": "11.0.3", "appRegion": "US", "deviceModel": "K2WebClient", "player": "html5", "clientDeviceId": "null"]]]]]] as Dictionary
//    
//    //MARK - for Sync
//    let semaphore = DispatchSemaphore(value: 0)
//    let http_method = "POST"
//    let time_out = 30
//    let url = URL(string: endpoint)
//    var urlReq : URLRequest? = URLRequest(url: url!)
//    
//    urlReq!.httpBody = try? JSONSerialization.data(withJSONObject: request, options: .prettyPrinted)
//    urlReq!.addValue("application/json", forHTTPHeaderField: "Content-Type")
//    urlReq!.httpMethod = http_method
//    
//    urlReq!.timeoutInterval = TimeInterval(time_out)
//    urlReq!.setValue("Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.2 Safari/605.1.15", forHTTPHeaderField: "User-Agent")
//    
//    let task = URLSession.shared.dataTask(with: urlReq! ) { ( rData, resp, error ) in
//        
//    let r = resp as? HTTPURLResponse
//        
//        
//        /*
// 
// moduleResponse =                     {
// additionalChannelData =                         {
// channel =                             {
// channelGuid = "86d52e32-09bf-a02d-1b6b-077e0aa05200";
// channelImageUrl = "%AIC_Image%/images/chan/49/2b02c9-8d6a-c3da-eb82-0b2adee7f56a.png";
// channelLastUpdated = "2019-02-22T15:52:57.671Z";
// dmcaInfo =                                 {
// backSkipDur = 12;
// fwdSkipDur = 12;
// irNavClass = "RESTRICTED_0";
// maxBackSkips = 1;
// maxFwdSkips = 5;
// maxSkipDur = 3600000;
// maxTotalSkips = 6;
// };
// name = "Hits 1 Discovery";
// };
// clipList =                             {
// clips =                                 (
// 
// */
//        if r!.statusCode == 200 {
//            
//            do { let result =
//                try JSONSerialization.jsonObject(with: rData!, options: JSONSerialization.ReadingOptions.mutableContainers) as? [String : Any]
//                
//                let fields = r!.allHeaderFields as? [String : String]
//                let cookies = HTTPCookie.cookies(withResponseHeaderFields: fields!, for: r!.url!)
//                HTTPCookieStorage.shared.setCookies(cookies, for: r!.url!, mainDocumentURL: nil)
//                
//                var everestToken : String? = ""
//                
//                for cookie in cookies {
//                    
//                    //Get Everest Token incase we need it
//                    if cookie.name == "SXM-EVEREST-JWT-TOKEN" {
//                        everestToken = cookie.value
//                        break
//                    }
//                }
//                
//                //print(everestToken)
//                
//                
//                let dict = result as NSDictionary?
//                
//                //print(dict)
//                
//                /*
// 
// moduleResponse =                     {
//   additionalChannelData =                         {
//      channel =                             {
//           channelGuid = "86d52e32-09bf-a02d-1b6b-077e0aa05200";
//           channelImageUrl = "%AIC_Image%/images/chan/49/2b02c9-8d6a-c3da-eb82-0b2adee7f56a.png";
// channelLastUpdated = "2019-02-22T15:52:57.671Z";
// dmcaInfo =                                 {
// backSkipDur = 12;
// fwdSkipDur = 12;
// irNavClass = "RESTRICTED_0";
//           maxBackSkips = 1;
//           maxFwdSkips = 5;
// maxSkipDur = 3600000;
// maxTotalSkips = 6;
// };
//           name = "Hits 1 Discovery";
// };
// clipList =                             {
// clips =                                 (
// 
// */
//                
//                /* get patterns and encrpytion keys */
//             
//                //let clientConfig = dict?.value( forKeyPath: "ModuleListResponse.moduleList.modules.clientConfiguration" ) as? NSArray
//                
//                //let clientFirst = clientConfig?.firstObject as? NSDictionary
//                
//                //let channelLineupId = clientFirst?.value( forKeyPath: "channelLineupId" ) as? String
//                //let clientDeviceId = clientFirst?.value( forKeyPath: "clientDeviceId" ) as? String
//                //let streamingAccess = clientFirst?.value( forKeyPath: "streamingAccess" ) as? Int
//                
//                //print(channelLineupId,clientDeviceId,streamingAccess)
//                
//                //let channelData = dict?.value( forKeyPath: "ModuleListResponse.moduleList.modules.moduleResponse.additionalChannelData.channel" ) as? NSArray
//                
//                //let channelFirst = channelData?.firstObject as? NSDictionary
//
//                //let channelGuid = channelFirst?.value( forKeyPath: "channelGuid" ) as? String
//                //let channelImageUrl = channelFirst?.value( forKeyPath: "channelImageUrl" ) as? String
//                //let name = channelFirst?.value( forKeyPath: "name" ) as? String
//
//                //print("channelGuid",channelGuid)
//                //print("channelImageUrl", channelImageUrl)
//                //print("name",name)
//
//                //let clipList = dict?.value( forKeyPath: "ModuleListResponse.moduleList.modules.clipList" ) as? NSArray
//                
//                
//                //  channelLineupId = 400;
//             //   clientDeviceId = "f9cd46af-c2e9-4349-aa04-b3e302f5494b";
//                
//                /*
//                let p = s as? NSArray
//                let x = p?[0] as! NSDictionary
//                if let customAudioInfos = x.value( forKeyPath: "moduleResponse.liveChannelData.customAudioInfos" ) as? NSArray {
//                    let c = customAudioInfos[0] as? NSDictionary
//                    let chunk = c!.value( forKeyPath: "chunks.chunks") as? NSArray
//                    let d = chunk![0] as! NSDictionary
//                    
//                    user[userid]?.key = (d.value( forKeyPath: "key") as? String)!
//                    user[userid]?.keyurl = (d.value( forKeyPath: "keyUrl") as? String)!
//                    user[userid]?.consumer  = (x.value( forKeyPath: "moduleResponse.liveChannelData.hlsConsumptionInfo" ) as? String)!
//                }
//                
//                if let markerLists = x.value( forKeyPath: "moduleResponse.liveChannelData.markerLists" )  as? NSArray {
//                    
//                    let markerDict = markerLists.lastObject as? NSDictionary
//                    let cutLayer = markerDict!.value( forKeyPath: "layer") as? String
//                    
//                    if cutLayer == "cut" {
//                        let markers = markerDict!.value( forKeyPath: "markers") as? NSArray
//                        
//                        //MemBase saves album art with Artist and Song info
//                        for g in markers! {
//                            let gather = g as? NSDictionary
//                            //grabs the album art code number
//                            if let art = gather!.value( forKeyPath: "cut.album.creativeArts" ) as? NSArray {
//                                
//                                let thumbnail = art.firstObject! as? NSDictionary
//                                let thumb = thumbnail?.value( forKeyPath: "url" ) as? String
//                                
//                                let large = art.lastObject! as? NSDictionary
//                                let image = large?.value( forKeyPath: "url" ) as? String
//                                
//                                let cut = gather!.value( forKeyPath: "cut" ) as? NSDictionary
//                                let song = cut!.value( forKeyPath: "title" ) as? String
//                                let artists = cut!.value( forKeyPath: "artists" ) as? NSArray
//                                let a = artists!.firstObject as? NSDictionary
//                                let artist = a!.value( forKeyPath: "name" ) as? String
//                                
//                                let key = MD5(artist! + song!);
//                                MemBase[key!] = ["thumb": thumb!, "image" : image!, "artist": artist!, "song" : song!]
//                            }
//                        }
//                    }
//                    
//                }
//                */
//                
//                //moduleResponse.liveChannelData.markerLists
//                
//            } catch {
//                //fail on any errors
//            }
//        } else {
//            //we always require 200 on the post, anything else is a failure
//            //
//        }
//        //MARK - for Sync
//        semaphore.signal()
//    }
//    
//    task.resume()
//    _ = semaphore.wait(timeout: .distantFuture)
//    
//    urlReq = nil
//    
//
//    
//    return user.token
//}
//
//
//
