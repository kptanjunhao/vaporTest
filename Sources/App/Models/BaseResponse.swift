//
//  BaseResponse.swift
//  Gallery
//
//  Created by 谭钧豪 on 2019/5/7.
//

import Foundation
class BaseResponse<T: Codable>: Codable{
    var code: Int
    var msg: String
    var data: T
    
    init(_ data: T){
        self.code = 0
        self.msg = "成功"
        self.data = data
    }
    
    func string() -> String{
        if let jsonD = try? JSONEncoder().encode(self){
            return String(data: jsonD, encoding: .utf8) ?? "{}"
        }
        return "{}"
    }
    
    static func string(data: T) -> String?{
        if let jsonD = try? JSONEncoder().encode(BaseResponse(data)){
            return String(data: jsonD, encoding: .utf8)
        }
        return nil
    }
    
    static func stringE(data: T) -> String{
        if let jsonD = try? JSONEncoder().encode(BaseResponse(data)){
            return String(data: jsonD, encoding: .utf8) ?? "{}"
        }
        return "{}"
    }
    
}

