
enum EKEventAvailability : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NotSupported
  case Busy
  case Free
  case Tentative
  case Unavailable
}
enum EKEventStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Confirmed
  case Tentative
  case Canceled
}
@available(iOS 4.0, *)
class EKEvent : EKCalendarItem {
  /*not inherited*/ init(eventStore: EKEventStore)
  var eventIdentifier: String { get }
  var isAllDay: Bool
  @NSCopying var startDate: Date
  @NSCopying var endDate: Date
  @available(iOS 9.0, *)
  @NSCopying var structuredLocation: EKStructuredLocation?
  func compareStartDateWith(other: EKEvent) -> ComparisonResult
  var organizer: EKParticipant? { get }
  var availability: EKEventAvailability
  var status: EKEventStatus { get }
  var isDetached: Bool { get }
  @available(iOS 9.0, *)
  var occurrenceDate: Date { get }
  func refresh() -> Bool
  @available(iOS 9.0, *)
  var birthdayContactIdentifier: String? { get }
  @available(iOS, introduced=5.0, deprecated=9.0, message="Use birthdayContactIdentifier instead")
  var birthdayPersonID: Int { get }
  init()
}
