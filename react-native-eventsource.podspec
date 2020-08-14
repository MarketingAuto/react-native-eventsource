require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-eventsource"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  A react-native component for EventSource: Server-Sent Events (SSE) for iOS and Android
                   DESC
  s.homepage     = "https://github.com/MarketingAuto/react-native-eventsource"
  s.license      = "MIT"
  s.authors      = { "MarketingAuto" => "info@marketingauto.ca", "João" => "jonnybgod@gmail.com" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/MarketingAuto/react-native-eventsource.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,swift}"
  s.requires_arc = true

  s.dependency "React"
end

