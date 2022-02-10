import Foundation
import Apollo

class Network {
    static let shared = Network()

    lazy var apollo: ApolloClient = {
        let url = URL(string: EnvironmentVariables.apiUrl)!
        let store = ApolloStore()

        let requestChainTransport = RequestChainNetworkTransport(
            interceptorProvider: DefaultInterceptorProvider(store: store),
            endpointURL: url,
            additionalHeaders: ["x-api-key": EnvironmentVariables.apiKey]
        )
        return ApolloClient(networkTransport: requestChainTransport, store: store)
    }()
}
