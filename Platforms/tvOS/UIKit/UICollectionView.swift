
struct UICollectionViewScrollPosition : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var none: UICollectionViewScrollPosition { get }
  static var top: UICollectionViewScrollPosition { get }
  static var centeredVertically: UICollectionViewScrollPosition { get }
  static var bottom: UICollectionViewScrollPosition { get }
  static var left: UICollectionViewScrollPosition { get }
  static var centeredHorizontally: UICollectionViewScrollPosition { get }
  static var right: UICollectionViewScrollPosition { get }
}
typealias UICollectionViewLayoutInteractiveTransitionCompletion = (Bool, Bool) -> Void
@available(tvOS 9.0, *)
class UICollectionViewFocusUpdateContext : UIFocusUpdateContext {
  var previouslyFocusedIndexPath: NSIndexPath? { get }
  var nextFocusedIndexPath: NSIndexPath? { get }
  init()
}
protocol UICollectionViewDataSource : NSObjectProtocol {
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, cellForItemAt indexPath: NSIndexPath) -> UICollectionViewCell
  @available(tvOS 6.0, *)
  optional func numberOfSections(in collectionView: UICollectionView) -> Int
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: NSIndexPath) -> UICollectionReusableView
  @available(tvOS 9.0, *)
  optional func collectionView(collectionView: UICollectionView, canMoveItemAt indexPath: NSIndexPath) -> Bool
  @available(tvOS 9.0, *)
  optional func collectionView(collectionView: UICollectionView, moveItemAt sourceIndexPath: NSIndexPath, to destinationIndexPath: NSIndexPath)
}
protocol UICollectionViewDelegate : UIScrollViewDelegate {
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, shouldHighlightItemAt indexPath: NSIndexPath) -> Bool
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, didHighlightItemAt indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, didUnhighlightItemAt indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, shouldSelectItemAt indexPath: NSIndexPath) -> Bool
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, shouldDeselectItemAt indexPath: NSIndexPath) -> Bool
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, didSelectItemAt indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, didDeselectItemAt indexPath: NSIndexPath)
  @available(tvOS 8.0, *)
  optional func collectionView(collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: NSIndexPath)
  @available(tvOS 8.0, *)
  optional func collectionView(collectionView: UICollectionView, willDisplaySupplementaryView view: UICollectionReusableView, forElementKind elementKind: String, at indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, didEndDisplaying cell: UICollectionViewCell, forItemAt indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, didEndDisplayingSupplementaryView view: UICollectionReusableView, forElementOfKind elementKind: String, at indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: NSIndexPath) -> Bool
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: NSIndexPath, withSender sender: AnyObject?)
  @available(tvOS 7.0, *)
  optional func collectionView(collectionView: UICollectionView, transitionLayoutForOldLayout fromLayout: UICollectionViewLayout, newLayout toLayout: UICollectionViewLayout) -> UICollectionViewTransitionLayout
  @available(tvOS 9.0, *)
  optional func collectionView(collectionView: UICollectionView, canFocusItemAt indexPath: NSIndexPath) -> Bool
  @available(tvOS 9.0, *)
  optional func collectionView(collectionView: UICollectionView, shouldUpdateFocusIn context: UICollectionViewFocusUpdateContext) -> Bool
  @available(tvOS 9.0, *)
  optional func collectionView(collectionView: UICollectionView, didUpdateFocusIn context: UICollectionViewFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator)
  @available(tvOS 9.0, *)
  optional func indexPathForPreferredFocusedView(in collectionView: UICollectionView) -> NSIndexPath?
  @available(tvOS 9.0, *)
  optional func collectionView(collectionView: UICollectionView, targetIndexPathForMoveFromItemAt originalIndexPath: NSIndexPath, toProposedIndexPath proposedIndexPath: NSIndexPath) -> NSIndexPath
  @available(tvOS 9.0, *)
  optional func collectionView(collectionView: UICollectionView, targetContentOffsetForProposedContentOffset proposedContentOffset: CGPoint) -> CGPoint
}
@available(tvOS 6.0, *)
class UICollectionView : UIScrollView {
  init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout)
  init?(coder aDecoder: NSCoder)
  var collectionViewLayout: UICollectionViewLayout
  weak var delegate: @sil_weak UICollectionViewDelegate?
  weak var dataSource: @sil_weak UICollectionViewDataSource?
  var backgroundView: UIView?
  func register(cellClass: AnyClass?, forCellWithReuseIdentifier identifier: String)
  func register(nib: UINib?, forCellWithReuseIdentifier identifier: String)
  func register(viewClass: AnyClass?, forSupplementaryViewOfKind elementKind: String, withReuseIdentifier identifier: String)
  func register(nib: UINib?, forSupplementaryViewOfKind kind: String, withReuseIdentifier identifier: String)
  func dequeueReusableCell(reuseIdentifier identifier: String, for indexPath: NSIndexPath) -> UICollectionViewCell
  func dequeueReusableSupplementaryView(ofKind elementKind: String, withReuseIdentifier identifier: String, for indexPath: NSIndexPath) -> UICollectionReusableView
  var allowsSelection: Bool
  var allowsMultipleSelection: Bool
  func indexPathsForSelectedItems() -> [NSIndexPath]?
  func selectItem(at indexPath: NSIndexPath?, animated: Bool, scrollPosition: UICollectionViewScrollPosition)
  func deselectItem(at indexPath: NSIndexPath, animated: Bool)
  func reloadData()
  func setCollectionViewLayout(layout: UICollectionViewLayout, animated: Bool)
  @available(tvOS 7.0, *)
  func setCollectionViewLayout(layout: UICollectionViewLayout, animated: Bool, completion: ((Bool) -> Void)? = nil)
  @available(tvOS 7.0, *)
  func startInteractiveTransition(to layout: UICollectionViewLayout, completion: UICollectionViewLayoutInteractiveTransitionCompletion? = nil) -> UICollectionViewTransitionLayout
  @available(tvOS 7.0, *)
  func finishInteractiveTransition()
  @available(tvOS 7.0, *)
  func cancelInteractiveTransition()
  func numberOfSections() -> Int
  func numberOfItems(inSection section: Int) -> Int
  func layoutAttributesForItem(at indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForSupplementaryElement(ofKind kind: String, at indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func indexPathForItem(at point: CGPoint) -> NSIndexPath?
  func indexPath(for cell: UICollectionViewCell) -> NSIndexPath?
  func cellForItem(at indexPath: NSIndexPath) -> UICollectionViewCell?
  func visibleCells() -> [UICollectionViewCell]
  func indexPathsForVisibleItems() -> [NSIndexPath]
  @available(tvOS 9.0, *)
  func supplementaryView(forElementKind elementKind: String, at indexPath: NSIndexPath) -> UICollectionReusableView
  @available(tvOS 9.0, *)
  func visibleSupplementaryViews(ofKind elementKind: String) -> [UICollectionReusableView]
  @available(tvOS 9.0, *)
  func indexPathsForVisibleSupplementaryElements(ofKind elementKind: String) -> [NSIndexPath]
  func scrollToItem(at indexPath: NSIndexPath, at scrollPosition: UICollectionViewScrollPosition, animated: Bool)
  func insertSections(sections: NSIndexSet)
  func deleteSections(sections: NSIndexSet)
  func reloadSections(sections: NSIndexSet)
  func moveSection(section: Int, toSection newSection: Int)
  func insertItems(at indexPaths: [NSIndexPath])
  func deleteItems(at indexPaths: [NSIndexPath])
  func reloadItems(at indexPaths: [NSIndexPath])
  func moveItem(at indexPath: NSIndexPath, to newIndexPath: NSIndexPath)
  func performBatchUpdates(updates: (() -> Void)?, completion: ((Bool) -> Void)? = nil)
  @available(tvOS 9.0, *)
  func beginInteractiveMovementForItem(at indexPath: NSIndexPath) -> Bool
  @available(tvOS 9.0, *)
  func updateInteractiveMovementTargetPosition(targetPosition: CGPoint)
  @available(tvOS 9.0, *)
  func endInteractiveMovement()
  @available(tvOS 9.0, *)
  func cancelInteractiveMovement()
  @available(tvOS 9.0, *)
  var remembersLastFocusedIndexPath: Bool
  convenience init(frame: CGRect)
  convenience init()
}
extension NSIndexPath {
  @available(tvOS 6.0, *)
  convenience init(forItem item: Int, inSection section: Int)
  @available(tvOS 6.0, *)
  var item: Int { get }
}
