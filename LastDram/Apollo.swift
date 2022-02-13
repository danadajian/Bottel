import Apollo
import Foundation

class Network {
    static let shared = Network()

    lazy var apollo: ApolloClient? = {
        do {
            let url = URL(string: EnvironmentVariables.apiUrl)
            guard let url = url else {
                throw ApiError.runtimeError(())
            }
            let store = ApolloStore()

            let requestChainTransport = RequestChainNetworkTransport(
                interceptorProvider: DefaultInterceptorProvider(store: store),
                endpointURL: url,
                additionalHeaders: ["x-api-key": EnvironmentVariables.apiKey]
            )
            return ApolloClient(networkTransport: requestChainTransport, store: store)
        } catch {
            print("Missing API_URL environment variable")
        }
        return nil
    }()
}

enum ApiError: Error {
    case runtimeError(Void)
}
