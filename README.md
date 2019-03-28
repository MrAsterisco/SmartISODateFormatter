# SmartISODateFormatter
A date formatter based on ISO8601DateFormatter that can parse ISO dates with and without milliseconds.

The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) standard defines a representation of dates and times as an international standard to exchange date and time data in an unambigous way.
This standard is widely used to exchange dates with and without times between APIs and client applications, such as iOS apps.

Apple provides an implementation, as part of Foundation, to parse and write ISO 8601 dates and times called [ISO8601DateFormatter](https://developer.apple.com/documentation/foundation/iso8601dateformatter). This implementation is not very flexible: it requires a set of options to be passed that defines how the date is written and doesn't support parsing multiple formats at the same time.

This subclass aims to support this situation, starting by focusing on date+time with and without milliseconds.

## Installation
The latest version of SmartISODateFormatter is built using Swift 5.

### CocoaPods
Copy and paste the following entry in your Podfile:

```ruby
pod 'SmartISODateFormatter, ~> <version>
```

Then run `pod install`.

In any file you'd like to use SmartISODateFormatter in, don't forget to import the framework with `import SmartISODateFormatter`.

### Carthage
Point Carthage to this repository with the following entry in your Cartfile:

```
github "MrAsterisco/SmartISODateFormatter" ~> <version>
```

### Manually
This library is only one simple file: you can include `SmartISODateFormatter.swift` directly in your project or point to it via git submodules.

## Usage
SmartISODateFormatter is a subclass of `ISO8601DateFormatter`, so you can use it the same way as the original class.

```swift
let string = "2019-03-28T00:00:00.000Z"
let date = SmartISODateFormatter().date(from: string)
```

## Contributing
You are very welcome to fork this repository, make changes and create a pull request.

## License
SmartISODateFormatter is released under the MIT license. See LICENSE for more information.