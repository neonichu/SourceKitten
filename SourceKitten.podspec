Pod::Spec.new do |s|
  s.name         = "SourceKitten"
  s.version      = "0.3.2"
  s.summary      = "An adorable little framework for interacting with SourceKit."
  s.homepage     = "https://github.com/jpsim/SourceKitten"
  s.license      = "MIT"

  s.author             = { "JP Simard" => "jp@jpsim.com" }
  s.social_media_url   = "http://twitter.com/simjp"

  s.module_name  = 'SourceKittenFramework'
  s.platform     = :osx, "10.10"
  s.source       = { :git => "https://github.com/jpsim/SourceKitten.git", :tag => s.version }

  s.source_files  = "Source/SourceKittenFramework/**/*"
  s.exclude_files = "Source/SourceKittenFramework/SourceKittenFramework.h"
  s.requires_arc  = true

  s.dependency "LlamaKit", '~> 0.5.0'
  s.dependency "SwiftXPC"
  s.dependency "Commandant", '~> 0.3.0'

  s.frameworks  = 'sourcekitd'
  s.libraries   = 'clang'
  s.xcconfig    = { 'LIBRARY_SEARCH_PATHS' => 
                    "#{`xcode-select -p`.strip}/Toolchains/XcodeDefault.xctoolchain/usr/lib",
                    'FRAMEWORK_SEARCH_PATHS' =>
                    "#{`xcode-select -p`.strip}/Toolchains/XcodeDefault.xctoolchain/usr/lib" }
end
