// MIT License
//
// Copyright (c) 2018 Alessio Moiso
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import Foundation

public class SmartISODateFormatter: ISO8601DateFormatter {
  
  public override func date(from string: String) -> Date? {
    formatOptions = .withFullDate
    
    if stringContainsTime(string) {
      self.formatOptions = [.withInternetDateTime]
    }
    if stringContainsMilliseconds(string) {
      self.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
    }
    
    return super.date(from: string)
  }
  
}

private extension SmartISODateFormatter {
  func stringContainsTime(_ string: String) -> Bool {
    string.contains("T")
  }
  
  func stringContainsMilliseconds(_ string: String) -> Bool {
    string.contains(".")
  }
}
