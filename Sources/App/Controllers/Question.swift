//
//  Question.swift
//  Test
//
//  Created by 谭钧豪 on 2019/5/7.
//

import Foundation

class Question{
    
    static let shared = Question()
    
    var data:QuestionsModel = QuestionsModel()
    
    func initData(workDir: String){
        do{
            let path = workDir + "resources/tiku.json"
            let handle = FileHandle.init(forReadingAtPath: path)
            if let result = handle?.readDataToEndOfFile(){
                var arr = try JSONDecoder().decode([[String]].self, from: result)

                let title = arr.removeFirst()
                let col = arr.removeFirst()

                var curCount = data.count
                var curQs = [QuestionModel]()
                for row in arr{
                    curQs.append(QuestionModel(item: row, serverId: curCount))
                    curCount += 1
                }

                data.title = title
                data.col = col
                data.datas = curQs
            }
        }catch{
            print(error)
        }
    }
    
    static func config(workDir: String){
        shared.initData(workDir: workDir)
    }
    
    func questions() -> String {
        return BaseResponse(data).string()
    }
    
    
}
