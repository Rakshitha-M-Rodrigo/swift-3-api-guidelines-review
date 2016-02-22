
enum NSDatePickerStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case textFieldAndStepperDatePickerStyle
  case clockAndCalendarDatePickerStyle
  case textFieldDatePickerStyle
}
enum NSDatePickerMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case singleDateMode
  case rangeDateMode
}
struct NSDatePickerElementFlags : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var hourMinuteDatePickerElementFlag: NSDatePickerElementFlags { get }
  static var hourMinuteSecondDatePickerElementFlag: NSDatePickerElementFlags { get }
  static var timeZoneDatePickerElementFlag: NSDatePickerElementFlags { get }
  static var yearMonthDatePickerElementFlag: NSDatePickerElementFlags { get }
  static var yearMonthDayDatePickerElementFlag: NSDatePickerElementFlags { get }
  static var eraDatePickerElementFlag: NSDatePickerElementFlags { get }
}
class NSDatePickerCell : NSActionCell {
  var datePickerStyle: NSDatePickerStyle
  var drawsBackground: Bool
  @NSCopying var backgroundColor: NSColor
  @NSCopying var textColor: NSColor
  var datePickerMode: NSDatePickerMode
  var datePickerElements: NSDatePickerElementFlags
  @NSCopying var calendar: NSCalendar?
  @NSCopying var locale: NSLocale?
  @NSCopying var timeZone: NSTimeZone?
  @NSCopying var dateValue: NSDate
  var timeInterval: NSTimeInterval
  @NSCopying var minDate: NSDate?
  @NSCopying var maxDate: NSDate?
  unowned(unsafe) var delegate: @sil_unmanaged NSDatePickerCellDelegate?
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
struct __dateCellFlags {
  var elements: UInt32
  var controlStyle: UInt32
  var controlMode: UInt32
  var trackingHand: UInt32
  var reserved2: UInt32
  var drawsBackground: UInt32
  var digitsEntered: UInt32
  var forcesLeadingZeroes: UInt32
  var wrapsDateComponentArithmetic: UInt32
  init()
  init(elements: UInt32, controlStyle: UInt32, controlMode: UInt32, trackingHand: UInt32, reserved2: UInt32, drawsBackground: UInt32, digitsEntered: UInt32, forcesLeadingZeroes: UInt32, wrapsDateComponentArithmetic: UInt32)
}
protocol NSDatePickerCellDelegate : NSObjectProtocol {
  optional func datePickerCell(aDatePickerCell: NSDatePickerCell, validateProposedDateValue proposedDateValue: AutoreleasingUnsafeMutablePointer<NSDate?>, timeInterval proposedTimeInterval: UnsafeMutablePointer<NSTimeInterval>)
}
