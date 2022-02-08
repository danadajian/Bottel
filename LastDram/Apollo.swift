import Foundation
import Apollo

class Network {
    static let shared = Network()
    
    lazy var apollo: ApolloClient = {
        let url = URL(string: "https://qb5c77sbpbez5i7zv6ygbygrwy.appsync-api.us-east-1.amazonaws.com/graphql")!
        let store = ApolloStore()
        
        let requestChainTransport = RequestChainNetworkTransport(
            interceptorProvider: DefaultInterceptorProvider(store: store),
            endpointURL: url,
            additionalHeaders: ["x-api-key": ProcessInfo.processInfo.environment["API_KEY"]!]
        )
        return ApolloClient(networkTransport: requestChainTransport, store: store)
    }()
}
