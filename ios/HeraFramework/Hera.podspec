
Pod::Spec.new do |s|

  s.name         = "Hera"
  s.version      = "1.0.0"
  s.summary      = "Weixin Small App Framework"
  s.description  = "A Framework For Weixin Small App running"
  s.homepage     = "http://www.weidian.com"
  s.license      = "BSD"
  s.author       = { "sunyu" => "sunyu@weidian.com", "wangyiqiao" => "wangyiqiao@weidian.com", "hexinyu" => "hexinyu@weidian.com" }
  s.platform     = :ios, "9.0"
  s.ios.deployment_target = "9.0"
  s.source       = { :git => "https://github.com/Weidian-developer/hera.git", :tag => s.version.to_s }
  s.source_files  = "ios/HeraFramework/Hera/**/*.{h,m}"
  s.public_header_files = "ios/HeraFramework/Hera/**/*.h"
  s.resource = "ios/HeraFramework/Resources/*.bundle"
  s.requires_arc = true

  s.dependency "Reachability"
  s.dependency "MJRefresh"
  s.dependency "ZipArchive"
  s.dependency "AFNetworking"

end
