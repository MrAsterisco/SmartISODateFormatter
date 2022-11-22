# SmartISODateFormatter
A date formatter based on ISO8601DateFormatter that can parse all ISO dates. This includes:
- Just dates (eg. `2022-11-11`),
- Full dates (eg `2022-11-11T11:30:00Z`),
- Full dates with milliseconds (eg. `2022-11-11T11:30:00.344Z`).

The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) standard defines a representation of dates and times as an international standard to exchange date and time data in an unambigous way.
This standard is widely used to exchange dates with and without times between APIs and client applications, such as iOS apps.

Apple provides an implementation, as part of Foundation, to parse and write ISO 8601 dates and times called [ISO8601DateFormatter](https://developer.apple.com/documentation/foundation/iso8601dateformatter). This implementation is not very flexible: it requires a set of options to be passed that defines how the date is written and doesn't support parsing multiple formats at the same time.

This subclass fixes this problem by making changes to the `formatOptions` property on the fly before parsing the input string. 

## Installation
Starting with version 2, SmartISODateFormatter is available through [Swift Package Manager](https://swift.org/package-manager).

```swift
.package(url: "https://github.com/MrAsterisco/SmartISODateFormatter", from: "<see GitHub releases>")
```

### Latest Release
To find out the latest version, look at the Releases tab of this repository.

## Usage
SmartISODateFormatter is a subclass of `ISO8601DateFormatter`, so you can use it the same way as the original class.

```swift
let string = "2022-11-11T11:30:00.344Z"
let date = SmartISODateFormatter().date(from: string)
```

## Contributing
You are very welcome to fork this repository, make changes and create a pull request.

## License
SmartISODateFormatter is released under the MIT license. See [LICENSE](https://github.com/MrAsterisco/SmartISODateFormatter/blob/master/LICENSE) for more information.
