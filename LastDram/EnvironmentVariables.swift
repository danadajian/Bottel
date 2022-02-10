import Foundation

struct EnvironmentVariables {
    static var apiUrl: String = ProcessInfo.processInfo.environment["API_URL"] ?? CI.apiUrl
    static var apiKey: String = ProcessInfo.processInfo.environment["API_KEY"] ?? CI.apiKey
}
