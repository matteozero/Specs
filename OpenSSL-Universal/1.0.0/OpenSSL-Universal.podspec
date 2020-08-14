#
# Be sure to run `pod lib lint OpenSSL-Universal.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'OpenSSL-Universal'
  s.version          = '1.0.0'
  s.summary          = 'A short description of OpenSSL-Universal.'
  s.description      = <<-DESC
  TODO: Add long description of the pod here.
    DESC

  s.homepage         = 'https://github.com/matteozero/OpenSSL-Universal'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'shaochuan' => '851045786@qq.com' }
  s.source           = { :git => 'https://github.com/matteozero/OpenSSL-Universal.git', :tag => s.version.to_s }

  s.static_framework = true


  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }

  
  s.requires_arc = false
  s.default_subspec = 'Framework'
  s.ios.deployment_target = '6.0'

  s.subspec 'Static' do |sp|
    sp.ios.deployment_target = '6.0'
    sp.ios.source_files        = 'OpenSSL-Universal/Classes/ios/include/openssl/**/*.h'
    sp.ios.public_header_files = 'OpenSSL-Universal/Classes/ios/include/openssl/**/*.h'
    sp.ios.header_dir          = 'openssl'
    sp.ios.preserve_paths      = 'OpenSSL-Universal/Classes/ios/lib/libcrypto.a', 'ios/lib/libssl.a'
    sp.ios.vendored_libraries  = 'OpenSSL-Universal/Classes/ios/lib/libcrypto.a', 'ios/lib/libssl.a'
  end

  s.subspec 'Framework' do |sp|
    sp.ios.deployment_target = '8.0'
    sp.ios.vendored_frameworks = 'Frameworks/ios/OpenSSL.framework'
  end

  # s.resource_bundles = {
  #   'OpenSSL-Universal' => ['OpenSSL-Universal/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
