
var kAuthorizationRightRule: String { get }
var kAuthorizationRuleIsAdmin: String { get }
var kAuthorizationRuleAuthenticateAsSessionUser: String { get }
var kAuthorizationRuleAuthenticateAsAdmin: String { get }
var kAuthorizationRuleClassAllow: String { get }
var kAuthorizationRuleClassDeny: String { get }
var kAuthorizationComment: String { get }
func AuthorizationRightGet(rightName: UnsafePointer<Int8>, _ rightDefinition: UnsafeMutablePointer<CFDictionary?>) -> OSStatus
func AuthorizationRightSet(authRef: AuthorizationRef, _ rightName: UnsafePointer<Int8>, _ rightDefinition: CFTypeRef, _ descriptionKey: CFString?, _ bundle: CFBundle?, _ localeTableName: CFString?) -> OSStatus
func AuthorizationRightRemove(authRef: AuthorizationRef, _ rightName: UnsafePointer<Int8>) -> OSStatus
