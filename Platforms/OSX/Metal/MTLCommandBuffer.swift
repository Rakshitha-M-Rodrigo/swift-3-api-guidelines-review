
@available(OSX 10.11, *)
enum MTLCommandBufferStatus : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NotEnqueued
  case Enqueued
  case Committed
  case Scheduled
  case Completed
  case Error
}
@available(OSX 10.11, *)
let MTLCommandBufferErrorDomain: String
@available(OSX 10.11, *)
enum MTLCommandBufferError : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case None
  case Internal
  case Timeout
  case PageFault
  case Blacklisted
  case NotPermitted
  case OutOfMemory
  case InvalidResource
}
typealias MTLCommandBufferHandler = (MTLCommandBuffer) -> Void
@available(OSX 10.11, *)
protocol MTLCommandBuffer : ObjectProtocol {
  var device: MTLDevice { get }
  var commandQueue: MTLCommandQueue { get }
  var retainedReferences: Bool { get }
  var label: String? { get set }
  func enqueue()
  func commit()
  func addScheduledHandler(block: MTLCommandBufferHandler)
  func present(drawable: MTLDrawable)
  func present(drawable: MTLDrawable, atTime presentationTime: CFTimeInterval)
  func waitUntilScheduled()
  func addCompletedHandler(block: MTLCommandBufferHandler)
  func waitUntilCompleted()
  var status: MTLCommandBufferStatus { get }
  var error: Error? { get }
  func blitCommandEncoder() -> MTLBlitCommandEncoder
  func renderCommandEncoderWith(renderPassDescriptor: MTLRenderPassDescriptor) -> MTLRenderCommandEncoder
  func computeCommandEncoder() -> MTLComputeCommandEncoder
  func parallelRenderCommandEncoderWith(renderPassDescriptor: MTLRenderPassDescriptor) -> MTLParallelRenderCommandEncoder
}
