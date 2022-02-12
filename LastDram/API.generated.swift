// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public struct BottleFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - userId
  ///   - name
  ///   - category
  ///   - proof
  ///   - size
  ///   - dateOpened
  ///   - dateAcquired
  public init(userId: Swift.Optional<TableStringFilterInput?> = nil, name: Swift.Optional<TableStringFilterInput?> = nil, category: Swift.Optional<TableStringFilterInput?> = nil, proof: Swift.Optional<TableFloatFilterInput?> = nil, size: Swift.Optional<TableStringFilterInput?> = nil, dateOpened: Swift.Optional<TableStringFilterInput?> = nil, dateAcquired: Swift.Optional<TableStringFilterInput?> = nil) {
    graphQLMap = ["userId": userId, "name": name, "category": category, "proof": proof, "size": size, "dateOpened": dateOpened, "dateAcquired": dateAcquired]
  }

  public var userId: Swift.Optional<TableStringFilterInput?> {
    get {
      return graphQLMap["userId"] as? Swift.Optional<TableStringFilterInput?> ?? Swift.Optional<TableStringFilterInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userId")
    }
  }

  public var name: Swift.Optional<TableStringFilterInput?> {
    get {
      return graphQLMap["name"] as? Swift.Optional<TableStringFilterInput?> ?? Swift.Optional<TableStringFilterInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var category: Swift.Optional<TableStringFilterInput?> {
    get {
      return graphQLMap["category"] as? Swift.Optional<TableStringFilterInput?> ?? Swift.Optional<TableStringFilterInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "category")
    }
  }

  public var proof: Swift.Optional<TableFloatFilterInput?> {
    get {
      return graphQLMap["proof"] as? Swift.Optional<TableFloatFilterInput?> ?? Swift.Optional<TableFloatFilterInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "proof")
    }
  }

  public var size: Swift.Optional<TableStringFilterInput?> {
    get {
      return graphQLMap["size"] as? Swift.Optional<TableStringFilterInput?> ?? Swift.Optional<TableStringFilterInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }

  public var dateOpened: Swift.Optional<TableStringFilterInput?> {
    get {
      return graphQLMap["dateOpened"] as? Swift.Optional<TableStringFilterInput?> ?? Swift.Optional<TableStringFilterInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "dateOpened")
    }
  }

  public var dateAcquired: Swift.Optional<TableStringFilterInput?> {
    get {
      return graphQLMap["dateAcquired"] as? Swift.Optional<TableStringFilterInput?> ?? Swift.Optional<TableStringFilterInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "dateAcquired")
    }
  }
}

public struct TableStringFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - ne
  ///   - eq
  ///   - le
  ///   - lt
  ///   - ge
  ///   - gt
  ///   - contains
  ///   - notContains
  ///   - between
  ///   - beginsWith
  public init(ne: Swift.Optional<String?> = nil, eq: Swift.Optional<String?> = nil, le: Swift.Optional<String?> = nil, lt: Swift.Optional<String?> = nil, ge: Swift.Optional<String?> = nil, gt: Swift.Optional<String?> = nil, contains: Swift.Optional<String?> = nil, notContains: Swift.Optional<String?> = nil, between: Swift.Optional<[String?]?> = nil, beginsWith: Swift.Optional<String?> = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith]
  }

  public var ne: Swift.Optional<String?> {
    get {
      return graphQLMap["ne"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Swift.Optional<String?> {
    get {
      return graphQLMap["eq"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Swift.Optional<String?> {
    get {
      return graphQLMap["le"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Swift.Optional<String?> {
    get {
      return graphQLMap["lt"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Swift.Optional<String?> {
    get {
      return graphQLMap["ge"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Swift.Optional<String?> {
    get {
      return graphQLMap["gt"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: Swift.Optional<String?> {
    get {
      return graphQLMap["contains"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: Swift.Optional<String?> {
    get {
      return graphQLMap["notContains"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: Swift.Optional<[String?]?> {
    get {
      return graphQLMap["between"] as? Swift.Optional<[String?]?> ?? Swift.Optional<[String?]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: Swift.Optional<String?> {
    get {
      return graphQLMap["beginsWith"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }
}

public struct TableFloatFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - ne
  ///   - eq
  ///   - le
  ///   - lt
  ///   - ge
  ///   - gt
  ///   - contains
  ///   - notContains
  ///   - between
  public init(ne: Swift.Optional<Double?> = nil, eq: Swift.Optional<Double?> = nil, le: Swift.Optional<Double?> = nil, lt: Swift.Optional<Double?> = nil, ge: Swift.Optional<Double?> = nil, gt: Swift.Optional<Double?> = nil, contains: Swift.Optional<Double?> = nil, notContains: Swift.Optional<Double?> = nil, between: Swift.Optional<[Double?]?> = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between]
  }

  public var ne: Swift.Optional<Double?> {
    get {
      return graphQLMap["ne"] as? Swift.Optional<Double?> ?? Swift.Optional<Double?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Swift.Optional<Double?> {
    get {
      return graphQLMap["eq"] as? Swift.Optional<Double?> ?? Swift.Optional<Double?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Swift.Optional<Double?> {
    get {
      return graphQLMap["le"] as? Swift.Optional<Double?> ?? Swift.Optional<Double?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Swift.Optional<Double?> {
    get {
      return graphQLMap["lt"] as? Swift.Optional<Double?> ?? Swift.Optional<Double?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Swift.Optional<Double?> {
    get {
      return graphQLMap["ge"] as? Swift.Optional<Double?> ?? Swift.Optional<Double?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Swift.Optional<Double?> {
    get {
      return graphQLMap["gt"] as? Swift.Optional<Double?> ?? Swift.Optional<Double?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: Swift.Optional<Double?> {
    get {
      return graphQLMap["contains"] as? Swift.Optional<Double?> ?? Swift.Optional<Double?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: Swift.Optional<Double?> {
    get {
      return graphQLMap["notContains"] as? Swift.Optional<Double?> ?? Swift.Optional<Double?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: Swift.Optional<[Double?]?> {
    get {
      return graphQLMap["between"] as? Swift.Optional<[Double?]?> ?? Swift.Optional<[Double?]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }
}

public struct CreateBottleInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - id
  ///   - userId
  ///   - name
  ///   - imageUrl
  ///   - dateOpened
  ///   - dateAcquired
  public init(id: String, userId: String, name: String, imageUrl: Swift.Optional<String?> = nil, dateOpened: Swift.Optional<String?> = nil, dateAcquired: Swift.Optional<String?> = nil) {
    graphQLMap = ["id": id, "userId": userId, "name": name, "imageUrl": imageUrl, "dateOpened": dateOpened, "dateAcquired": dateAcquired]
  }

  public var id: String {
    get {
      return graphQLMap["id"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var userId: String {
    get {
      return graphQLMap["userId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userId")
    }
  }

  public var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var imageUrl: Swift.Optional<String?> {
    get {
      return graphQLMap["imageUrl"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "imageUrl")
    }
  }

  public var dateOpened: Swift.Optional<String?> {
    get {
      return graphQLMap["dateOpened"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "dateOpened")
    }
  }

  public var dateAcquired: Swift.Optional<String?> {
    get {
      return graphQLMap["dateAcquired"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "dateAcquired")
    }
  }
}

public struct UpdateBottleInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - id
  ///   - name
  ///   - imageUrl
  ///   - dateOpened
  ///   - dateAcquired
  public init(id: String, name: Swift.Optional<String?> = nil, imageUrl: Swift.Optional<String?> = nil, dateOpened: Swift.Optional<String?> = nil, dateAcquired: Swift.Optional<String?> = nil) {
    graphQLMap = ["id": id, "name": name, "imageUrl": imageUrl, "dateOpened": dateOpened, "dateAcquired": dateAcquired]
  }

  public var id: String {
    get {
      return graphQLMap["id"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: Swift.Optional<String?> {
    get {
      return graphQLMap["name"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var imageUrl: Swift.Optional<String?> {
    get {
      return graphQLMap["imageUrl"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "imageUrl")
    }
  }

  public var dateOpened: Swift.Optional<String?> {
    get {
      return graphQLMap["dateOpened"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "dateOpened")
    }
  }

  public var dateAcquired: Swift.Optional<String?> {
    get {
      return graphQLMap["dateAcquired"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "dateAcquired")
    }
  }
}

public struct DeleteBottleInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - id
  public init(id: String) {
    graphQLMap = ["id": id]
  }

  public var id: String {
    get {
      return graphQLMap["id"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public final class GetBottleQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetBottle($id: String!, $userId: String!) {
      getBottle(id: $id, userId: $userId) {
        __typename
        id
        name
        imageUrl
        userId
        dateOpened
        dateAcquired
      }
    }
    """

  public let operationName: String = "GetBottle"

  public var id: String
  public var userId: String

  public init(id: String, userId: String) {
    self.id = id
    self.userId = userId
  }

  public var variables: GraphQLMap? {
    return ["id": id, "userId": userId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("getBottle", arguments: ["id": GraphQLVariable("id"), "userId": GraphQLVariable("userId")], type: .object(GetBottle.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(getBottle: GetBottle? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "getBottle": getBottle.flatMap { (value: GetBottle) -> ResultMap in value.resultMap }])
    }

    public var getBottle: GetBottle? {
      get {
        return (resultMap["getBottle"] as? ResultMap).flatMap { GetBottle(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "getBottle")
      }
    }

    public struct GetBottle: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["UserBottle"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("imageUrl", type: .scalar(String.self)),
          GraphQLField("userId", type: .nonNull(.scalar(String.self))),
          GraphQLField("dateOpened", type: .scalar(String.self)),
          GraphQLField("dateAcquired", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String, name: String? = nil, imageUrl: String? = nil, userId: String, dateOpened: String? = nil, dateAcquired: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "UserBottle", "id": id, "name": name, "imageUrl": imageUrl, "userId": userId, "dateOpened": dateOpened, "dateAcquired": dateAcquired])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return resultMap["id"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var imageUrl: String? {
        get {
          return resultMap["imageUrl"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "imageUrl")
        }
      }

      public var userId: String {
        get {
          return resultMap["userId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userId")
        }
      }

      public var dateOpened: String? {
        get {
          return resultMap["dateOpened"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "dateOpened")
        }
      }

      public var dateAcquired: String? {
        get {
          return resultMap["dateAcquired"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "dateAcquired")
        }
      }
    }
  }
}

public final class GetUserBottleQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetUserBottle($id: String!, $userId: String!) {
      getUserBottle(id: $id, userId: $userId) {
        __typename
        id
        name
        imageUrl
        userId
        dateOpened
        dateAcquired
      }
    }
    """

  public let operationName: String = "GetUserBottle"

  public var id: String
  public var userId: String

  public init(id: String, userId: String) {
    self.id = id
    self.userId = userId
  }

  public var variables: GraphQLMap? {
    return ["id": id, "userId": userId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("getUserBottle", arguments: ["id": GraphQLVariable("id"), "userId": GraphQLVariable("userId")], type: .object(GetUserBottle.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(getUserBottle: GetUserBottle? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "getUserBottle": getUserBottle.flatMap { (value: GetUserBottle) -> ResultMap in value.resultMap }])
    }

    public var getUserBottle: GetUserBottle? {
      get {
        return (resultMap["getUserBottle"] as? ResultMap).flatMap { GetUserBottle(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "getUserBottle")
      }
    }

    public struct GetUserBottle: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["UserBottle"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("imageUrl", type: .scalar(String.self)),
          GraphQLField("userId", type: .nonNull(.scalar(String.self))),
          GraphQLField("dateOpened", type: .scalar(String.self)),
          GraphQLField("dateAcquired", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String, name: String? = nil, imageUrl: String? = nil, userId: String, dateOpened: String? = nil, dateAcquired: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "UserBottle", "id": id, "name": name, "imageUrl": imageUrl, "userId": userId, "dateOpened": dateOpened, "dateAcquired": dateAcquired])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return resultMap["id"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var imageUrl: String? {
        get {
          return resultMap["imageUrl"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "imageUrl")
        }
      }

      public var userId: String {
        get {
          return resultMap["userId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userId")
        }
      }

      public var dateOpened: String? {
        get {
          return resultMap["dateOpened"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "dateOpened")
        }
      }

      public var dateAcquired: String? {
        get {
          return resultMap["dateAcquired"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "dateAcquired")
        }
      }
    }
  }
}

public final class ListBottlesQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query ListBottles($filter: BottleFilterInput, $limit: Int, $nextToken: String) {
      listBottles(filter: $filter, limit: $limit, nextToken: $nextToken) {
        __typename
        items {
          __typename
          id
          name
          imageUrl
          userId
          dateOpened
          dateAcquired
        }
        nextToken
      }
    }
    """

  public let operationName: String = "ListBottles"

  public var filter: BottleFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: BottleFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("listBottles", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListBottle.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(listBottles: ListBottle? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "listBottles": listBottles.flatMap { (value: ListBottle) -> ResultMap in value.resultMap }])
    }

    public var listBottles: ListBottle? {
      get {
        return (resultMap["listBottles"] as? ResultMap).flatMap { ListBottle(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "listBottles")
      }
    }

    public struct ListBottle: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["UserBottles"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "UserBottles", "items": items.flatMap { (value: [Item?]) -> [ResultMap?] in value.map { (value: Item?) -> ResultMap? in value.flatMap { (value: Item) -> ResultMap in value.resultMap } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (resultMap["items"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Item?] in value.map { (value: ResultMap?) -> Item? in value.flatMap { (value: ResultMap) -> Item in Item(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Item?]) -> [ResultMap?] in value.map { (value: Item?) -> ResultMap? in value.flatMap { (value: Item) -> ResultMap in value.resultMap } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return resultMap["nextToken"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["UserBottle"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("imageUrl", type: .scalar(String.self)),
            GraphQLField("userId", type: .nonNull(.scalar(String.self))),
            GraphQLField("dateOpened", type: .scalar(String.self)),
            GraphQLField("dateAcquired", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: String, name: String? = nil, imageUrl: String? = nil, userId: String, dateOpened: String? = nil, dateAcquired: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "UserBottle", "id": id, "name": name, "imageUrl": imageUrl, "userId": userId, "dateOpened": dateOpened, "dateAcquired": dateAcquired])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return resultMap["id"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var imageUrl: String? {
          get {
            return resultMap["imageUrl"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "imageUrl")
          }
        }

        public var userId: String {
          get {
            return resultMap["userId"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "userId")
          }
        }

        public var dateOpened: String? {
          get {
            return resultMap["dateOpened"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "dateOpened")
          }
        }

        public var dateAcquired: String? {
          get {
            return resultMap["dateAcquired"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "dateAcquired")
          }
        }
      }
    }
  }
}

public final class ListUserBottlesQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query ListUserBottles($filter: BottleFilterInput, $limit: Int, $nextToken: String) {
      listUserBottles(filter: $filter, limit: $limit, nextToken: $nextToken) {
        __typename
        items {
          __typename
          id
          name
          imageUrl
          userId
          dateOpened
          dateAcquired
        }
        nextToken
      }
    }
    """

  public let operationName: String = "ListUserBottles"

  public var filter: BottleFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: BottleFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("listUserBottles", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListUserBottle.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(listUserBottles: ListUserBottle? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "listUserBottles": listUserBottles.flatMap { (value: ListUserBottle) -> ResultMap in value.resultMap }])
    }

    public var listUserBottles: ListUserBottle? {
      get {
        return (resultMap["listUserBottles"] as? ResultMap).flatMap { ListUserBottle(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "listUserBottles")
      }
    }

    public struct ListUserBottle: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["UserBottles"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "UserBottles", "items": items.flatMap { (value: [Item?]) -> [ResultMap?] in value.map { (value: Item?) -> ResultMap? in value.flatMap { (value: Item) -> ResultMap in value.resultMap } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (resultMap["items"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Item?] in value.map { (value: ResultMap?) -> Item? in value.flatMap { (value: ResultMap) -> Item in Item(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Item?]) -> [ResultMap?] in value.map { (value: Item?) -> ResultMap? in value.flatMap { (value: Item) -> ResultMap in value.resultMap } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return resultMap["nextToken"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["UserBottle"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("imageUrl", type: .scalar(String.self)),
            GraphQLField("userId", type: .nonNull(.scalar(String.self))),
            GraphQLField("dateOpened", type: .scalar(String.self)),
            GraphQLField("dateAcquired", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: String, name: String? = nil, imageUrl: String? = nil, userId: String, dateOpened: String? = nil, dateAcquired: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "UserBottle", "id": id, "name": name, "imageUrl": imageUrl, "userId": userId, "dateOpened": dateOpened, "dateAcquired": dateAcquired])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return resultMap["id"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var imageUrl: String? {
          get {
            return resultMap["imageUrl"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "imageUrl")
          }
        }

        public var userId: String {
          get {
            return resultMap["userId"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "userId")
          }
        }

        public var dateOpened: String? {
          get {
            return resultMap["dateOpened"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "dateOpened")
          }
        }

        public var dateAcquired: String? {
          get {
            return resultMap["dateAcquired"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "dateAcquired")
          }
        }
      }
    }
  }
}

public final class CreateBottleMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation CreateBottle($input: CreateBottleInput!) {
      createBottle(input: $input) {
        __typename
        id
        name
        imageUrl
        userId
        dateOpened
        dateAcquired
      }
    }
    """

  public let operationName: String = "CreateBottle"

  public var input: CreateBottleInput

  public init(input: CreateBottleInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("createBottle", arguments: ["input": GraphQLVariable("input")], type: .object(CreateBottle.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(createBottle: CreateBottle? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "createBottle": createBottle.flatMap { (value: CreateBottle) -> ResultMap in value.resultMap }])
    }

    public var createBottle: CreateBottle? {
      get {
        return (resultMap["createBottle"] as? ResultMap).flatMap { CreateBottle(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "createBottle")
      }
    }

    public struct CreateBottle: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["UserBottle"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("imageUrl", type: .scalar(String.self)),
          GraphQLField("userId", type: .nonNull(.scalar(String.self))),
          GraphQLField("dateOpened", type: .scalar(String.self)),
          GraphQLField("dateAcquired", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String, name: String? = nil, imageUrl: String? = nil, userId: String, dateOpened: String? = nil, dateAcquired: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "UserBottle", "id": id, "name": name, "imageUrl": imageUrl, "userId": userId, "dateOpened": dateOpened, "dateAcquired": dateAcquired])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return resultMap["id"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var imageUrl: String? {
        get {
          return resultMap["imageUrl"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "imageUrl")
        }
      }

      public var userId: String {
        get {
          return resultMap["userId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userId")
        }
      }

      public var dateOpened: String? {
        get {
          return resultMap["dateOpened"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "dateOpened")
        }
      }

      public var dateAcquired: String? {
        get {
          return resultMap["dateAcquired"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "dateAcquired")
        }
      }
    }
  }
}

public final class CreateUserBottleMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation CreateUserBottle($input: CreateBottleInput!) {
      createUserBottle(input: $input) {
        __typename
        id
        name
        imageUrl
        userId
        dateOpened
        dateAcquired
      }
    }
    """

  public let operationName: String = "CreateUserBottle"

  public var input: CreateBottleInput

  public init(input: CreateBottleInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("createUserBottle", arguments: ["input": GraphQLVariable("input")], type: .object(CreateUserBottle.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(createUserBottle: CreateUserBottle? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "createUserBottle": createUserBottle.flatMap { (value: CreateUserBottle) -> ResultMap in value.resultMap }])
    }

    public var createUserBottle: CreateUserBottle? {
      get {
        return (resultMap["createUserBottle"] as? ResultMap).flatMap { CreateUserBottle(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "createUserBottle")
      }
    }

    public struct CreateUserBottle: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["UserBottle"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("imageUrl", type: .scalar(String.self)),
          GraphQLField("userId", type: .nonNull(.scalar(String.self))),
          GraphQLField("dateOpened", type: .scalar(String.self)),
          GraphQLField("dateAcquired", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String, name: String? = nil, imageUrl: String? = nil, userId: String, dateOpened: String? = nil, dateAcquired: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "UserBottle", "id": id, "name": name, "imageUrl": imageUrl, "userId": userId, "dateOpened": dateOpened, "dateAcquired": dateAcquired])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return resultMap["id"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var imageUrl: String? {
        get {
          return resultMap["imageUrl"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "imageUrl")
        }
      }

      public var userId: String {
        get {
          return resultMap["userId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userId")
        }
      }

      public var dateOpened: String? {
        get {
          return resultMap["dateOpened"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "dateOpened")
        }
      }

      public var dateAcquired: String? {
        get {
          return resultMap["dateAcquired"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "dateAcquired")
        }
      }
    }
  }
}

public final class UpdateBottleMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation UpdateBottle($input: UpdateBottleInput!) {
      updateBottle(input: $input) {
        __typename
        id
        name
        imageUrl
        userId
        dateOpened
        dateAcquired
      }
    }
    """

  public let operationName: String = "UpdateBottle"

  public var input: UpdateBottleInput

  public init(input: UpdateBottleInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("updateBottle", arguments: ["input": GraphQLVariable("input")], type: .object(UpdateBottle.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updateBottle: UpdateBottle? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "updateBottle": updateBottle.flatMap { (value: UpdateBottle) -> ResultMap in value.resultMap }])
    }

    public var updateBottle: UpdateBottle? {
      get {
        return (resultMap["updateBottle"] as? ResultMap).flatMap { UpdateBottle(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "updateBottle")
      }
    }

    public struct UpdateBottle: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["UserBottle"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("imageUrl", type: .scalar(String.self)),
          GraphQLField("userId", type: .nonNull(.scalar(String.self))),
          GraphQLField("dateOpened", type: .scalar(String.self)),
          GraphQLField("dateAcquired", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String, name: String? = nil, imageUrl: String? = nil, userId: String, dateOpened: String? = nil, dateAcquired: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "UserBottle", "id": id, "name": name, "imageUrl": imageUrl, "userId": userId, "dateOpened": dateOpened, "dateAcquired": dateAcquired])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return resultMap["id"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var imageUrl: String? {
        get {
          return resultMap["imageUrl"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "imageUrl")
        }
      }

      public var userId: String {
        get {
          return resultMap["userId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userId")
        }
      }

      public var dateOpened: String? {
        get {
          return resultMap["dateOpened"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "dateOpened")
        }
      }

      public var dateAcquired: String? {
        get {
          return resultMap["dateAcquired"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "dateAcquired")
        }
      }
    }
  }
}

public final class UpdateUserBottleMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation UpdateUserBottle($input: UpdateBottleInput!) {
      updateUserBottle(input: $input) {
        __typename
        id
        name
        imageUrl
        userId
        dateOpened
        dateAcquired
      }
    }
    """

  public let operationName: String = "UpdateUserBottle"

  public var input: UpdateBottleInput

  public init(input: UpdateBottleInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("updateUserBottle", arguments: ["input": GraphQLVariable("input")], type: .object(UpdateUserBottle.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updateUserBottle: UpdateUserBottle? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "updateUserBottle": updateUserBottle.flatMap { (value: UpdateUserBottle) -> ResultMap in value.resultMap }])
    }

    public var updateUserBottle: UpdateUserBottle? {
      get {
        return (resultMap["updateUserBottle"] as? ResultMap).flatMap { UpdateUserBottle(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "updateUserBottle")
      }
    }

    public struct UpdateUserBottle: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["UserBottle"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("imageUrl", type: .scalar(String.self)),
          GraphQLField("userId", type: .nonNull(.scalar(String.self))),
          GraphQLField("dateOpened", type: .scalar(String.self)),
          GraphQLField("dateAcquired", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String, name: String? = nil, imageUrl: String? = nil, userId: String, dateOpened: String? = nil, dateAcquired: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "UserBottle", "id": id, "name": name, "imageUrl": imageUrl, "userId": userId, "dateOpened": dateOpened, "dateAcquired": dateAcquired])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return resultMap["id"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var imageUrl: String? {
        get {
          return resultMap["imageUrl"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "imageUrl")
        }
      }

      public var userId: String {
        get {
          return resultMap["userId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userId")
        }
      }

      public var dateOpened: String? {
        get {
          return resultMap["dateOpened"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "dateOpened")
        }
      }

      public var dateAcquired: String? {
        get {
          return resultMap["dateAcquired"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "dateAcquired")
        }
      }
    }
  }
}

public final class DeleteBottleMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation DeleteBottle($input: DeleteBottleInput!) {
      deleteBottle(input: $input) {
        __typename
        id
        name
        imageUrl
        userId
        dateOpened
        dateAcquired
      }
    }
    """

  public let operationName: String = "DeleteBottle"

  public var input: DeleteBottleInput

  public init(input: DeleteBottleInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("deleteBottle", arguments: ["input": GraphQLVariable("input")], type: .object(DeleteBottle.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(deleteBottle: DeleteBottle? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "deleteBottle": deleteBottle.flatMap { (value: DeleteBottle) -> ResultMap in value.resultMap }])
    }

    public var deleteBottle: DeleteBottle? {
      get {
        return (resultMap["deleteBottle"] as? ResultMap).flatMap { DeleteBottle(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "deleteBottle")
      }
    }

    public struct DeleteBottle: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["UserBottle"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("imageUrl", type: .scalar(String.self)),
          GraphQLField("userId", type: .nonNull(.scalar(String.self))),
          GraphQLField("dateOpened", type: .scalar(String.self)),
          GraphQLField("dateAcquired", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String, name: String? = nil, imageUrl: String? = nil, userId: String, dateOpened: String? = nil, dateAcquired: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "UserBottle", "id": id, "name": name, "imageUrl": imageUrl, "userId": userId, "dateOpened": dateOpened, "dateAcquired": dateAcquired])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return resultMap["id"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var imageUrl: String? {
        get {
          return resultMap["imageUrl"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "imageUrl")
        }
      }

      public var userId: String {
        get {
          return resultMap["userId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userId")
        }
      }

      public var dateOpened: String? {
        get {
          return resultMap["dateOpened"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "dateOpened")
        }
      }

      public var dateAcquired: String? {
        get {
          return resultMap["dateAcquired"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "dateAcquired")
        }
      }
    }
  }
}

public final class DeleteUserBottleMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation DeleteUserBottle($input: DeleteBottleInput!) {
      deleteUserBottle(input: $input) {
        __typename
        id
        name
        imageUrl
        userId
        dateOpened
        dateAcquired
      }
    }
    """

  public let operationName: String = "DeleteUserBottle"

  public var input: DeleteBottleInput

  public init(input: DeleteBottleInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("deleteUserBottle", arguments: ["input": GraphQLVariable("input")], type: .object(DeleteUserBottle.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(deleteUserBottle: DeleteUserBottle? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "deleteUserBottle": deleteUserBottle.flatMap { (value: DeleteUserBottle) -> ResultMap in value.resultMap }])
    }

    public var deleteUserBottle: DeleteUserBottle? {
      get {
        return (resultMap["deleteUserBottle"] as? ResultMap).flatMap { DeleteUserBottle(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "deleteUserBottle")
      }
    }

    public struct DeleteUserBottle: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["UserBottle"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("imageUrl", type: .scalar(String.self)),
          GraphQLField("userId", type: .nonNull(.scalar(String.self))),
          GraphQLField("dateOpened", type: .scalar(String.self)),
          GraphQLField("dateAcquired", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String, name: String? = nil, imageUrl: String? = nil, userId: String, dateOpened: String? = nil, dateAcquired: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "UserBottle", "id": id, "name": name, "imageUrl": imageUrl, "userId": userId, "dateOpened": dateOpened, "dateAcquired": dateAcquired])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return resultMap["id"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var imageUrl: String? {
        get {
          return resultMap["imageUrl"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "imageUrl")
        }
      }

      public var userId: String {
        get {
          return resultMap["userId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userId")
        }
      }

      public var dateOpened: String? {
        get {
          return resultMap["dateOpened"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "dateOpened")
        }
      }

      public var dateAcquired: String? {
        get {
          return resultMap["dateAcquired"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "dateAcquired")
        }
      }
    }
  }
}
