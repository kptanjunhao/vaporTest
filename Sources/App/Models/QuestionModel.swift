//
//  QuestionModel.swift
//  COpenSSL
//
//  Created by 谭钧豪 on 2019/5/7.
//

import Foundation
struct QuestionsModel: Codable{
    var title = [String]()
    var col = [String]()
    var datas = [QuestionModel]()
    
    var count: Int{
        return datas.count
    }
}
///["序号", "所属等级", "题型", "题干", "选项A", "选项B", "选项C", "选项D", "选项E", "选项F", "答案"]
class QuestionModel: Codable{
    var serverId = 0
    var id = ""
    var level = ""
    var type = ""
    var title = ""
    var optionA = ""
    var optionB = ""
    var optionC = ""
    var optionD = ""
    var optionE = ""
    var optionF = ""
    var answer = ""
    
    // 做题临时字段
    var tempAnswer = ""
    
    init(item: [String], serverId sid: Int) {
        serverId = sid
        id = getString(item, 0)
        level = getString(item, 1)
        type = getString(item, 2)
        title = getString(item, 3)
        optionA = getString(item, 4)
        optionB = getString(item, 5)
        optionC = getString(item, 6)
        optionD = getString(item, 7)
        optionE = getString(item, 8)
        optionF = getString(item, 9)
        answer = getString(item, 10)
    }
    
    func getString(_ arr: [String], _ index: Int) -> String{
        if arr.count > index{
            return arr[index]
        }
        return ""
    }
}
