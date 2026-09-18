Pod::Spec.new do |s|
  s.name = 'DaroBid'
  s.version = '26.9.1800'
  s.summary = 'Daro standalone ad rendering SDK.'
  s.homepage = 'https://github.com/delightroom/daro-rtb-ios-sdk'
  s.license = { :type => 'Custom', :file => 'Artifacts/DaroBid.xcframework/LICENSE.txt' }
  s.author = { 'Delightroom' => 'dev@delightroom.com' }
  s.source = { :http => 'https://github.com/delightroom/daro-rtb-ios-sdk/releases/download/26.9.1800/DaroBid-26.9.1800-pods.zip' }
  s.ios.deployment_target = '13.0'
  s.swift_version = '5.0'
  s.static_framework = true
  s.vendored_frameworks = 'Artifacts/DaroBid.xcframework'
  s.resources = 'Resources/PrebidMobile_PrebidMobile.bundle'
  s.frameworks = 'UIKit', 'WebKit', 'AVFoundation', 'CoreMedia', 'AdSupport', 'AppTrackingTransparency', 'CoreLocation', 'CoreTelephony', 'SystemConfiguration', 'StoreKit'
end
