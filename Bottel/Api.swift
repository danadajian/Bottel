//  This file was automatically generated and should not be edited.

import AWSAppSync

public struct CreateBottleInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: String, userId: String, name: String, imageUrl: String? = nil, dateOpened: String? = nil, dateAcquired: String? = nil) {
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

  public var imageUrl: String? {
    get {
      return graphQLMap["imageUrl"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "imageUrl")
    }
  }

  public var dateOpened: String? {
    get {
      return graphQLMap["dateOpened"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "dateOpened")
    }
  }

  public var dateAcquired: String? {
    get {
      return graphQLMap["dateAcquired"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "dateAcquired")
    }
  }
}

public struct UpdateBottleInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: String, name: String? = nil, imageUrl: String? = nil, dateOpened: String? = nil, dateAcquired: String? = nil) {
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

  public var name: String? {
    get {
      return graphQLMap["name"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var imageUrl: String? {
    get {
      return graphQLMap["imageUrl"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "imageUrl")
    }
  }

  public var dateOpened: String? {
    get {
      return graphQLMap["dateOpened"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "dateOpened")
    }
  }

  public var dateAcquired: String? {
    get {
      return graphQLMap["dateAcquired"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "dateAcquired")
    }
  }
}

public struct DeleteBottleInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

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

public struct BottleFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: TableStringFilterInput? = nil, userId: TableStringFilterInput? = nil, name: TableStringFilterInput? = nil, imageUrl: TableStringFilterInput? = nil, dateOpened: TableStringFilterInput? = nil, dateAcquired: TableStringFilterInput? = nil) {
    graphQLMap = ["id": id, "userId": userId, "name": name, "imageUrl": imageUrl, "dateOpened": dateOpened, "dateAcquired": dateAcquired]
  }

  public var id: TableStringFilterInput? {
    get {
      return graphQLMap["id"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var userId: TableStringFilterInput? {
    get {
      return graphQLMap["userId"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userId")
    }
  }

  public var name: TableStringFilterInput? {
    get {
      return graphQLMap["name"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var imageUrl: TableStringFilterInput? {
    get {
      return graphQLMap["imageUrl"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "imageUrl")
    }
  }

  public var dateOpened: TableStringFilterInput? {
    get {
      return graphQLMap["dateOpened"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "dateOpened")
    }
  }

  public var dateAcquired: TableStringFilterInput? {
    get {
      return graphQLMap["dateAcquired"] as! TableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "dateAcquired")
    }
  }
}

public struct TableStringFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: String? = nil, eq: String? = nil, le: String? = nil, lt: String? = nil, ge: String? = nil, gt: String? = nil, contains: String? = nil, notContains: String? = nil, between: [String?]? = nil, beginsWith: String? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith]
  }

  public var ne: String? {
    get {
      return graphQLMap["ne"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: String? {
    get {
      return graphQLMap["eq"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: String? {
    get {
      return graphQLMap["le"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: String? {
    get {
      return graphQLMap["lt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: String? {
    get {
      return graphQLMap["ge"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: String? {
    get {
      return graphQLMap["gt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: String? {
    get {
      return graphQLMap["contains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: String? {
    get {
      return graphQLMap["notContains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [String?]? {
    get {
      return graphQLMap["between"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: String? {
    get {
      return graphQLMap["beginsWith"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }
}

public final class CreateBottleMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateBottle($input: CreateBottleInput!) {\n  createBottle(input: $input) {\n    __typename\n    id\n    userId\n    name\n    imageUrl\n    dateOpened\n    dateAcquired\n  }\n}"

  public var input: CreateBottleInput

  public init(input: CreateBottleInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createBottle", arguments: ["input": GraphQLVariable("input")], type: .object(CreateBottle.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createBottle: CreateBottle? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createBottle": createBottle.flatMap { $0.snapshot }])
    }

    public var createBottle: CreateBottle? {
      get {
        return (snapshot["createBottle"] as? Snapshot).flatMap { CreateBottle(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createBottle")
      }
    }

    public struct CreateBottle: GraphQLSelectionSet {
      public static let possibleTypes = ["Bottle"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("imageUrl", type: .scalar(String.self)),
        GraphQLField("dateOpened", type: .scalar(String.self)),
        GraphQLField("dateAcquired", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, userId: String, name: String? = nil, imageUrl: String? = nil, dateOpened: String? = nil, dateAcquired: String? = nil) {
        self.init(snapshot: ["__typename": "Bottle", "id": id, "userId": userId, "name": name, "imageUrl": imageUrl, "dateOpened": dateOpened, "dateAcquired": dateAcquired])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var imageUrl: String? {
        get {
          return snapshot["imageUrl"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageUrl")
        }
      }

      public var dateOpened: String? {
        get {
          return snapshot["dateOpened"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "dateOpened")
        }
      }

      public var dateAcquired: String? {
        get {
          return snapshot["dateAcquired"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "dateAcquired")
        }
      }
    }
  }
}

public final class UpdateBottleMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateBottle($input: UpdateBottleInput!) {\n  updateBottle(input: $input) {\n    __typename\n    id\n    userId\n    name\n    imageUrl\n    dateOpened\n    dateAcquired\n  }\n}"

  public var input: UpdateBottleInput

  public init(input: UpdateBottleInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateBottle", arguments: ["input": GraphQLVariable("input")], type: .object(UpdateBottle.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateBottle: UpdateBottle? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateBottle": updateBottle.flatMap { $0.snapshot }])
    }

    public var updateBottle: UpdateBottle? {
      get {
        return (snapshot["updateBottle"] as? Snapshot).flatMap { UpdateBottle(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateBottle")
      }
    }

    public struct UpdateBottle: GraphQLSelectionSet {
      public static let possibleTypes = ["Bottle"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("imageUrl", type: .scalar(String.self)),
        GraphQLField("dateOpened", type: .scalar(String.self)),
        GraphQLField("dateAcquired", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, userId: String, name: String? = nil, imageUrl: String? = nil, dateOpened: String? = nil, dateAcquired: String? = nil) {
        self.init(snapshot: ["__typename": "Bottle", "id": id, "userId": userId, "name": name, "imageUrl": imageUrl, "dateOpened": dateOpened, "dateAcquired": dateAcquired])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var imageUrl: String? {
        get {
          return snapshot["imageUrl"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageUrl")
        }
      }

      public var dateOpened: String? {
        get {
          return snapshot["dateOpened"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "dateOpened")
        }
      }

      public var dateAcquired: String? {
        get {
          return snapshot["dateAcquired"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "dateAcquired")
        }
      }
    }
  }
}

public final class DeleteBottleMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteBottle($input: DeleteBottleInput!) {\n  deleteBottle(input: $input) {\n    __typename\n    id\n    userId\n    name\n    imageUrl\n    dateOpened\n    dateAcquired\n  }\n}"

  public var input: DeleteBottleInput

  public init(input: DeleteBottleInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteBottle", arguments: ["input": GraphQLVariable("input")], type: .object(DeleteBottle.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteBottle: DeleteBottle? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteBottle": deleteBottle.flatMap { $0.snapshot }])
    }

    public var deleteBottle: DeleteBottle? {
      get {
        return (snapshot["deleteBottle"] as? Snapshot).flatMap { DeleteBottle(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteBottle")
      }
    }

    public struct DeleteBottle: GraphQLSelectionSet {
      public static let possibleTypes = ["Bottle"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("imageUrl", type: .scalar(String.self)),
        GraphQLField("dateOpened", type: .scalar(String.self)),
        GraphQLField("dateAcquired", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, userId: String, name: String? = nil, imageUrl: String? = nil, dateOpened: String? = nil, dateAcquired: String? = nil) {
        self.init(snapshot: ["__typename": "Bottle", "id": id, "userId": userId, "name": name, "imageUrl": imageUrl, "dateOpened": dateOpened, "dateAcquired": dateAcquired])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var imageUrl: String? {
        get {
          return snapshot["imageUrl"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageUrl")
        }
      }

      public var dateOpened: String? {
        get {
          return snapshot["dateOpened"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "dateOpened")
        }
      }

      public var dateAcquired: String? {
        get {
          return snapshot["dateAcquired"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "dateAcquired")
        }
      }
    }
  }
}

public final class GetBottleQuery: GraphQLQuery {
  public static let operationString =
    "query GetBottle($id: String!, $userId: String!) {\n  getBottle(id: $id, userId: $userId) {\n    __typename\n    id\n    userId\n    name\n    imageUrl\n    dateOpened\n    dateAcquired\n  }\n}"

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
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getBottle", arguments: ["id": GraphQLVariable("id"), "userId": GraphQLVariable("userId")], type: .object(GetBottle.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getBottle: GetBottle? = nil) {
      self.init(snapshot: ["__typename": "Query", "getBottle": getBottle.flatMap { $0.snapshot }])
    }

    public var getBottle: GetBottle? {
      get {
        return (snapshot["getBottle"] as? Snapshot).flatMap { GetBottle(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getBottle")
      }
    }

    public struct GetBottle: GraphQLSelectionSet {
      public static let possibleTypes = ["Bottle"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("imageUrl", type: .scalar(String.self)),
        GraphQLField("dateOpened", type: .scalar(String.self)),
        GraphQLField("dateAcquired", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: String, userId: String, name: String? = nil, imageUrl: String? = nil, dateOpened: String? = nil, dateAcquired: String? = nil) {
        self.init(snapshot: ["__typename": "Bottle", "id": id, "userId": userId, "name": name, "imageUrl": imageUrl, "dateOpened": dateOpened, "dateAcquired": dateAcquired])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return snapshot["id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: String {
        get {
          return snapshot["userId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var imageUrl: String? {
        get {
          return snapshot["imageUrl"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "imageUrl")
        }
      }

      public var dateOpened: String? {
        get {
          return snapshot["dateOpened"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "dateOpened")
        }
      }

      public var dateAcquired: String? {
        get {
          return snapshot["dateAcquired"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "dateAcquired")
        }
      }
    }
  }
}

public final class ListBottlesQuery: GraphQLQuery {
  public static let operationString =
    "query ListBottles($filter: BottleFilterInput, $limit: Int, $nextToken: String) {\n  listBottles(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      userId\n      name\n      imageUrl\n      dateOpened\n      dateAcquired\n    }\n    nextToken\n  }\n}"

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
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listBottles", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListBottle.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listBottles: ListBottle? = nil) {
      self.init(snapshot: ["__typename": "Query", "listBottles": listBottles.flatMap { $0.snapshot }])
    }

    public var listBottles: ListBottle? {
      get {
        return (snapshot["listBottles"] as? Snapshot).flatMap { ListBottle(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listBottles")
      }
    }

    public struct ListBottle: GraphQLSelectionSet {
      public static let possibleTypes = ["Bottles"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "Bottles", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Bottle"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("userId", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("imageUrl", type: .scalar(String.self)),
          GraphQLField("dateOpened", type: .scalar(String.self)),
          GraphQLField("dateAcquired", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: String, userId: String, name: String? = nil, imageUrl: String? = nil, dateOpened: String? = nil, dateAcquired: String? = nil) {
          self.init(snapshot: ["__typename": "Bottle", "id": id, "userId": userId, "name": name, "imageUrl": imageUrl, "dateOpened": dateOpened, "dateAcquired": dateAcquired])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return snapshot["id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var userId: String {
          get {
            return snapshot["userId"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "userId")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var imageUrl: String? {
          get {
            return snapshot["imageUrl"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "imageUrl")
          }
        }

        public var dateOpened: String? {
          get {
            return snapshot["dateOpened"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "dateOpened")
          }
        }

        public var dateAcquired: String? {
          get {
            return snapshot["dateAcquired"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "dateAcquired")
          }
        }
      }
    }
  }
}