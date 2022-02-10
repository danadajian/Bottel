import Foundation

struct EnvironmentVariables {
    static var apiUrl: String = ProcessInfo.processInfo.environment["API_URL"] ?? "REPLACE_ME_WITH_API_URL"
    static var apiKey: String = ProcessInfo.processInfo.environment["API_KEY"] ?? "REPLACE_ME_WITH_API_KEY"
}
