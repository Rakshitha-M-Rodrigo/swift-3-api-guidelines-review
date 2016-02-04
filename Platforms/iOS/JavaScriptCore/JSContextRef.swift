
@available(iOS 7.0, *)
func JSContextGroupCreate() -> JSContextGroupRef
@available(iOS 7.0, *)
func JSContextGroupRetain(group: JSContextGroupRef) -> JSContextGroupRef
@available(iOS 7.0, *)
func JSContextGroupRelease(group: JSContextGroupRef)
@available(iOS 7.0, *)
func JSGlobalContextCreate(globalObjectClass: JSClassRef) -> JSGlobalContextRef
@available(iOS 7.0, *)
func JSGlobalContextCreateInGroup(group: JSContextGroupRef, _ globalObjectClass: JSClassRef) -> JSGlobalContextRef
func JSGlobalContextRetain(ctx: JSGlobalContextRef) -> JSGlobalContextRef
func JSGlobalContextRelease(ctx: JSGlobalContextRef)
func JSContextGetGlobalObject(ctx: JSContextRef) -> JSObjectRef
@available(iOS 7.0, *)
func JSContextGetGroup(ctx: JSContextRef) -> JSContextGroupRef
@available(iOS 7.0, *)
func JSContextGetGlobalContext(ctx: JSContextRef) -> JSGlobalContextRef
@available(iOS 8.0, *)
func JSGlobalContextCopyName(ctx: JSGlobalContextRef) -> JSStringRef
@available(iOS 8.0, *)
func JSGlobalContextSetName(ctx: JSGlobalContextRef, _ name: JSStringRef)
