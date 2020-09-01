#
# Be sure to run `pod lib lint CryptoSwift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CryptoSwift'
  s.version          = '1.3.5'
  s.summary          = 'A short description of CryptoSwift.'
  s.description      = <<-DESC
  TODO: Add long description of the pod here.
    DESC

  s.homepage         = 'https://github.com/matteozero/CryptoSwift'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'matteo' => '851045786@qq.com' }
  s.source           = { :git => 'https://github.com/matteozero/CryptoSwift.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
#  s.requires_arc          = true
  s.static_framework = true
  s.swift_versions = ['5.2']



  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }

  s.source_files = 'CryptoSwift/Classes/**/*'

  # s.resource_bundles = {
  #   'CryptoSwift' => ['CryptoSwift/Assets/*.xcassets']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
