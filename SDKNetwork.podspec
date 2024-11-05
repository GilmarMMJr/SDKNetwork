#
#  Be sure to run `pod spec lint SDKNetwork.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "SDKNetwork"
  s.version      = "1.0.0"
  s.summary      = "A simple network SDK using URLSession"
  s.description  = "SDKNetwork is a generic layer for making network requests using URLSession."
  s.homepage     = "https://github.com/yourusername/NetworkSDK"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Your Name" => "your.email@example.com" }
  s.source       = { :git => "https://github.com/yourusername/NetworkSDK.git", :tag => s.version.to_s }
  s.ios.deployment_target = "10.0"
  s.source_files  = "SDKNetwork/**/*.{swift}"
end