
@available(tvOS 8.0, *)
let kSecSharedPassword: CFString
@available(tvOS 8.0, *)
func SecAddSharedWebCredential(fqdn: CFString, _ account: CFString, _ password: CFString?, _ completionHandler: (CFError?) -> Void)
@available(tvOS 8.0, *)
func SecRequestSharedWebCredential(fqdn: CFString?, _ account: CFString?, _ completionHandler: (CFArray?, CFError?) -> Void)
@available(tvOS 8.0, *)
func SecCreateSharedWebCredentialPassword() -> CFString?