import Files
import Foundation
import CommandLineToolCore
import XCTest

class CommandLineToolTests: XCTestCase {

    func testCreatingFile() throws {

        let fileSystem = FileSystem()
        let tempFolder = fileSystem.temporaryFolder
        let testFolder = try tempFolder.createSubfolderIfNeeded(withName: "CommandLineToolTests")
        try testFolder.empty()

        let fileManager = FileManager.default
        fileManager.changeCurrentDirectoryPath(testFolder.path)

        let arguments = [
            testFolder.path,
            "Hello.swift"
        ]

        let tool = CommandLineTool(arguments)
        try tool.run()

        XCTAssertNotNil(try? testFolder.file(named: "Hello.swift"))
    }
}
