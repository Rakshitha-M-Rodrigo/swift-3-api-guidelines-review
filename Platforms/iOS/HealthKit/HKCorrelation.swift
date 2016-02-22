
@available(iOS 8.0, *)
class HKCorrelation : HKSample {
  var correlationType: HKCorrelationType { get }
  var objects: Set<HKSample> { get }
  convenience init(type correlationType: HKCorrelationType, start startDate: NSDate, end endDate: NSDate, objects: Set<HKSample>)
  convenience init(type correlationType: HKCorrelationType, start startDate: NSDate, end endDate: NSDate, objects: Set<HKSample>, metadata: [String : AnyObject]?)
  @available(iOS 9.0, *)
  convenience init(type correlationType: HKCorrelationType, start startDate: NSDate, end endDate: NSDate, objects: Set<HKSample>, device: HKDevice?, metadata: [String : AnyObject]?)
  func objects(for objectType: HKObjectType) -> Set<HKSample>
  init?(coder aDecoder: NSCoder)
}
