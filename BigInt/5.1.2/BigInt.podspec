#
# Be sure to run `pod lib lint BigInt.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BigInt'
  s.version          = '5.1.2'
  s.summary          = 'A short description of BigInt.'
  s.description      = <<-DESC
  TODO: Add long description of the pod here.
    DESC

  s.homepage         = 'https://github.com/matteozero/BigInt'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'matteo' => '851045786@qq.com' }
  s.source           = { :git => 'https://github.com/matteozero/BigInt.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
  s.requires_arc          = true
  s.static_framework = true
  s.swift_versions = ['5.0']



  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }

  s.source_files = 'BigInt/Classes/**/*'

  # s.resource_bundles = {
  #   'BigInt' => ['BigInt/Assets/*.xcassets']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
