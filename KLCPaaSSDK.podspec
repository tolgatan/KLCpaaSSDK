Pod::Spec.new do |s|
    s.name              = 'KLCPaaSSDK'
    s.version           = '1.0.2'
    s.summary           = 'KLCPaasSDK'
    s.homepage          = 'https://github.com/Kandy-IO/'
    s.license 		      = { :type => 'MIT', :file => 'mit-license.txt'}
    s.author            = { 'Name' => 'tolgat@netrd.com.tr' }
    s.platform          = :ios
    s.source            = { :git => 'https://github.com/tolgatan/KLCpaaSSDK.git', :tag => '1.0.2'}
    s.dependency 	      'KLCPaaSWebRTC'
    s.source_files      = "CPaaSSDK.framework/Headers/*.h"
    s.ios.deployment_target   = '9.0'
    s.preserve_paths = 'CPaaSSDK.framework/Frameworks/*.framework'
    s.pod_target_xcconfig = {
      # This is needed by all pods that depend on Protobuf:
      "GCC_PREPROCESSOR_DEFINITIONS" => "$(inherited) GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS=1",
      # This is needed by all pods that depend on gRPC-RxLibrary:
      "CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES" => "YES",

      "USE_HEADERMAP" => "NO",
      "ALWAYS_SEARCH_USER_PATHS" => "NO",
      "USER_HEADER_SEARCH_PATHS" => "$(PODS_ROOT)/KLCPaaSSDK",
      "HEADER_SEARCH_PATHS" => "$(PODS_ROOT)/KLCPaaSSDK"
    }



end
