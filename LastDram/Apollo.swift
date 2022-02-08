import Foundation
import Apollo

class Network {
    static let shared = Network()
    
    lazy var apollo: ApolloClient = {
        let url = URL(string: ProcessInfo.processInfo.environment["API_URL"]!)!
        let store = ApolloStore()
        
        let requestChainTransport = RequestChainNetworkTransport(
            interceptorProvider: DefaultInterceptorProvider(store: store),
            endpointURL: url,
            additionalHeaders: ["x-api-key": ProcessInfo.processInfo.environment["API_KEY"]!]
        )
        return ApolloClient(networkTransport: requestChainTransport, store: store)
    }()
}
