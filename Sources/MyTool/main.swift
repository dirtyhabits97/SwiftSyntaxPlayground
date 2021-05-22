import SwiftSyntax

let file = "/Users/user/other_projects/playgrounds/PlaygroundApp/PlaygroundApp/ViewController.swift"
let note = Diagnostic.Message(.note, "Hello, this is a note in your Xcode project.")
let warning = Diagnostic.Message(.warning, "Hello, this is a custom warning in your Xcode project.")
let error = Diagnostic.Message(.error, "Hello, this is a custom error in your Xcode project.")

/// Makes and returns a new configured diagnostic engine.
private func makeDiagnosticEngine() -> DiagnosticEngine {
  let engine = DiagnosticEngine()
  let consumer = PrintingDiagnosticConsumer()
  engine.addConsumer(consumer)
  return engine
}

let loc = SourceLocation(line: 10, column: 0, offset: 0, file: file)
let diagnosticEngine = makeDiagnosticEngine()
diagnosticEngine.diagnose(note, location: loc)
diagnosticEngine.diagnose(warning, location: loc)
diagnosticEngine.diagnose(error, location: loc)
