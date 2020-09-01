#
# Be sure to run `pod lib lint secp256k1.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'secp256k1'
  s.version          = '0.1.6'
  s.summary          = 'A short description of secp256k1.'
  s.description      = <<-DESC
  TODO: Add long description of the pod here.
    DESC

  s.homepage         = 'https://github.com/matteozero/secp256k1'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'matteo' => '851045786@qq.com' }
  s.source           = { :git => 'https://github.com/matteozero/secp256k1.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
  s.requires_arc          = true
#  s.static_framework = true
  s.swift_versions = ['5.0']


  
  s.module_name = 'secp256k1'

   s.pod_target_xcconfig = {
   'DEFINES_MODULE' => 'YES',
     'SWIFT_INCLUDE_PATHS' => '${PODS_ROOT}',
     'OTHER_CFLAGS' => '-DHAVE_CONFIG_H=1 -pedantic -Wall -Wextra -Wcast-align -Wnested-externs -Wshadow -Wstrict-prototypes -Wno-shorten-64-to-32 -Wno-conditional-uninitialized -Wno-unused-function -Wno-long-long -Wno-overlength-strings -O3',
     'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/secp256k1/Classes"'
   }

   s.source_files = 'secp256k1/Classes/secp256k1/{src,include,contrib}/*.{h,c}', 'secp256k1/Classes/secp256k1/src/modules/{recovery,ecdh}/*.{h,c}', 'secp256k1/Classes/secp256k1-config.h', 'secp256k1/Classes/secp256k1_main.h', 'secp256k1/Classes/secp256k1_ec_mult_static_context.h'
   s.public_header_files = 'secp256k1/Classes/secp256k1/include/*.h'
   s.private_header_files = 'secp256k1/Classes/secp256k1_ec_mult_static_context.h', 'secp256k1/Classes/secp256k1/*.h', 'secp256k1/Classes/secp256k1/{contrib,src}/*.h', 'secp256k1/Classes/secp256k1/src/modules/{recovery, ecdh}/*.h'
   s.exclude_files = 'secp256k1/Classes/secp256k1/src/test*.{c,h}', 'secp256k1/Classes/secp256k1/src/gen_context.c', 'secp256k1/Classes/secp256k1/src/*bench*.{c,h}', 'secp256k1/Classes/secp256k1/src/modules/{recovery,ecdh}/*test*.{c,h}'


  # s.resource_bundles = {
  #   'secp256k1' => ['secp256k1/Assets/*.xcassets']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
