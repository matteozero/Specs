#
# Be sure to run `pod lib lint CoreBitcoin.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CoreBitcoin'
  s.version          = '1.0.3'
  s.summary          = 'A short description of CoreBitcoin.'
  s.description      = <<-DESC
  TODO: Add long description of the pod here.
    DESC

  s.homepage         = 'https://github.com/matteozero/CoreBitcoin'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'matteo' => '851045786@qq.com' }
  s.source           = { :git => 'https://github.com/matteozero/CoreBitcoin.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
  s.requires_arc          = true
#  s.static_framework = true
  s.swift_versions = ['5.0']



  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }

  s.source_files = 'CoreBitcoin/Classes/**/*'
  
  s.dependency 'libscrypt'
  s.dependency 'OpenSSL-Universal'

  # s.resource_bundles = {
  #   'CoreBitcoin' => ['CoreBitcoin/Assets/*.xcassets']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'libscrypt', '~> 2.3'
end
