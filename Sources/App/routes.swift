import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // "It works" page
//    router.get { req in
//        return try req.view().render("welcome")
//    }
    
    router.get { req in
        return req.redirect(to: "index.html")
    }
    
    // Says hello
//    router.get("hello", String.parameter) { req -> Future<View> in
//        return try req.view().render("hello", [
//            "name": req.parameters.next(String.self)
//        ])
//    }
    
    router.get("questions") { (req) in
        return Question.shared.questions()
    }
    
    
    
}
