import Vapor

/// Called after your application has initialized.
public func boot(_ app: Application) throws {
    // Your code here
    let workDir = DirectoryConfig.detect().workDir + "Public/"
    Question.config(workDir: workDir)
}
