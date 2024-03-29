Pod::Spec.new do |s|
    s.name              = 'KLCPaaS'
    s.version           = '1.2.5'
    s.summary           = 'KLCPaaS'
    s.homepage          = 'https://github.com/Kandy-IO/'
    s.license 		      = { :type => 'MIT', :file => 'mit-license.txt'}
    s.author            = { 'Name' => 'tolgat@netrd.com.tr' }
    s.platform          = :ios
    s.source            = { :git => 'https://github.com/tolgatan/KLCpaaSSDK.git', :tag => '1.2.5'}
    s.dependency 	'KLCPaaSWebRTC'
    s.ios.deployment_target   = '9.0'
    s.library = ['c++','icucore','z','sqlite3','stdc++']
    s.ios.frameworks = ['AvFoundation','SystemConfiguration','CFNetwork','Security','OpenGLES','QuartzCore','CoreAudio','CoreMedia','CoreVideo','CoreGraphics','GLKit','VideoToolbox','AudioToolbox','PushKit']
    s.vendored_frameworks = ['CPaaSSDK.framework','WebRTC.framework']
    s.preserve_paths = 'CPaaSSDK.framework/SubFrameworks/*.framework'
    s.user_target_xcconfig = {
      'ENABLE_BITCODE' => 'NO',
      'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}/KLCPaaS/CPaaSSDK.framework/SubFrameworks"',
      'OTHER_LDFLAGS' => '$(inherited) -framework WebRTC -ObjC',
      'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES'
    }



end
