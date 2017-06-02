Pod::Spec.new do |s|
  s.name = 'LXTSDKProject'
  s.version = '0.0.1'
  s.summary = '微语言 SDK.'
  s.license = 'MIT'
  s.authors = { "mawei" => "think_ma@126.com" }
  s.homepage = 'http://www.4000669696.com/'
  s.description = '微语言 SDK for iOS.'
  s.requires_arc = true

  s.ios.deployment_target    = '8.0'
  # s.frameworks = ['AssetsLibrary', 'CoreGraphics', 'Foundation', 'UIKit', 'Photos']
  #s.frameworks = ['CoreGraphics', 'Foundation', 'UIKit']

  # git
  s.source = { :git => 'https://github.com/thinkma/LXTSDKProject.git', :tag => s.version }
  s.public_header_files = 'LXTAPIServer/**/*.h'
  s.source_files = 'LXTAPIServer/**/*.h'
  s.vendored_libraries = 'LXTAPIServer/**/*.a'
  s.resources = 'LXTAPIServer/**/*.bundle'
  end
