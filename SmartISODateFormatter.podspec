Pod::Spec.new do |s|

  s.name = "SmartISODateFormatter"
  s.summary = "A date formatter based on ISO8601DateFormatter that really understands."
  s.version = "1.0.2"

  s.license = "MIT"

  s.source = { :git => "https://github.com/MrAsterisco/SmartISODateFormatter.git", :tag => "#{s.version}" }
  s.author = { "Alessio Moiso" => "a.moiso@outlook.com" }
  s.homepage = "https://www.pillohealth.com"
  
  s.platform = :ios, "11.0"
  s.swift_version = "4.2"

  s.source_files = "SmartISODateFormatter", "SmartISODateFormatter/**/*.swift"

end
