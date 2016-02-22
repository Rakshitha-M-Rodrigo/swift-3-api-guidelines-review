
typealias MDLVoxelIndex = vector_int4
struct MDLVoxelIndexExtent {
  var minimumExtent: MDLVoxelIndex
  var maximumExtent: MDLVoxelIndex
  init()
  init(minimumExtent: MDLVoxelIndex, maximumExtent: MDLVoxelIndex)
}
@available(iOS 9.0, *)
class MDLVoxelArray : NSObject {
  init(asset: MDLAsset, divisions: Int32, interiorShells: Int32, exteriorShells: Int32, patchRadius: Float)
  init(asset: MDLAsset, divisions: Int32, interiorNBWidth: Float, exteriorNBWidth: Float, patchRadius: Float)
  init(data voxelData: NSData, boundingBox: MDLAxisAlignedBoundingBox, voxelExtent: Float)
  func mesh(using allocator: MDLMeshBufferAllocator?) -> MDLMesh?
  func voxelExists(atIndex index: MDLVoxelIndex, allowAnyX: Bool, allowAnyY: Bool, allowAnyZ: Bool, allowAnyShell: Bool) -> Bool
  func setVoxelAtIndex(index: MDLVoxelIndex)
  func setVoxelsFor(mesh: MDLMesh, divisions: Int32, interiorShells: Int32, exteriorShells: Int32, patchRadius: Float)
  func setVoxelsFor(mesh: MDLMesh, divisions: Int32, interiorNBWidth: Float, exteriorNBWidth: Float, patchRadius: Float)
  func voxels(within extent: MDLVoxelIndexExtent) -> NSData?
  func voxelIndices() -> NSData?
  func union(voxels: MDLVoxelArray)
  func difference(with voxels: MDLVoxelArray)
  func intersect(voxels: MDLVoxelArray)
  func indexOf(spatialLocation location: vector_float3) -> MDLVoxelIndex
  func spatialLocationOf(index index: MDLVoxelIndex) -> vector_float3
  func voxelBoundingBox(atIndex index: MDLVoxelIndex) -> MDLAxisAlignedBoundingBox
  var count: Int { get }
  var voxelIndexExtent: MDLVoxelIndexExtent { get }
  var boundingBox: MDLAxisAlignedBoundingBox { get }
  init()
}
