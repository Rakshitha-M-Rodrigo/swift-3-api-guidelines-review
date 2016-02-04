
@available(iOS 9.0, *)
let CNErrorDomain: String
@available(iOS 9.0, *)
enum CNErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case CommunicationError
  case DataAccessError
  case AuthorizationDenied
  case RecordDoesNotExist
  case InsertedRecordAlreadyExists
  case ContainmentCycle
  case ContainmentScope
  case ParentRecordDoesNotExist
  case ValidationMultipleErrors
  case ValidationTypeMismatch
  case ValidationConfigurationError
  case PredicateInvalid
  case PolicyViolation
}

@available(OSX 10.11, iOS 9.0, *)
extension CNErrorCode : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}
@available(iOS 9.0, *)
let CNErrorUserInfoAffectedRecordsKey: String
@available(iOS 9.0, *)
let CNErrorUserInfoAffectedRecordIdentifiersKey: String
@available(iOS 9.0, *)
let CNErrorUserInfoValidationErrorsKey: String
@available(iOS 9.0, *)
let CNErrorUserInfoKeyPathsKey: String
