//
//  APIClient.swift
//  Weather
//
//  Created by Nithaparan Francis on 2022-08-18.
//

import Foundation


class APIClient {
    var netWorkConfiguration: NetWorkConfiguration
    
    init() {
        var baseURL = ""
        var apiKey = ""
        if let path = Bundle.main.path(forResource: "Info", ofType: "plist") {
                        if let dic = NSDictionary(contentsOfFile: path) {
                            baseURL = dic["BASE_URL"] as! String
                            apiKey = dic["API_KEY"] as! String
                        }
                    }
        self.netWorkConfiguration = NetWorkConfiguration(baseURL: baseURL, apiKey: apiKey)
        
    }
    
    func getBuilder() -> RequestBuilder {
        let req = RequestBuilder(netWorkConfiguration: netWorkConfiguration)
        return req
    }
}
