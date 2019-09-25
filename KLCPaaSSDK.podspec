Pod::Spec.new do |s|
    s.name              = 'KLCPaaSSDK'
    s.version           = '1.1.4'
    s.summary           = 'KLCPaasSDK'
    s.homepage          = 'https://github.com/Kandy-IO/'
    s.license 		= { :type => 'MIT', :file => 'mit-license.txt'}
    s.author            = { 'Name' => 'tolgat@netrd.com.tr' }
    s.platform          = :ios
    s.source            = { :git => 'https://github.com/tolgatan/KLCpaaSSDK.git', :tag => '1.1.4'}
    s.dependency 	'KLCPaaSWebRTC'
    s.ios.deployment_target   = '9.0'
    s.vendored_frameworks = ['CPaaSSDK.framework','WebRTC.framework',
      'CPaaSSDK.framework/SubFrameworks/CPUtilities.framework',
      'CPaaSSDK.framework/SubFrameworks/CPAddressBookService.framework',
      'CPaaSSDK.framework/SubFrameworks/CPAuthenticationService.framework',
      'CPaaSSDK.framework/SubFrameworks/CPCallService.framework',
      'CPaaSSDK.framework/SubFrameworks/CPMessagingService.framework',
      'CPaaSSDK.framework/SubFrameworks/CPPresenceService.framework',
      'CPaaSSDK.framework/SubFrameworks/CPPushService.framework',
      'CPaaSSDK.framework/SubFrameworks/NotificationEngine.framework',
      'CPaaSSDK.framework/SubFrameworks/RestManager.framework']
    s.preserve_paths = 'CPaaSSDK.framework/SubFrameworks/*.framework'
    s.xcconfig = {
      'ENABLE_BITCODE' => 'NO',
      'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}/KLCPaaSWebRTC/Frameworks"',
      'OTHER_LDFLAGS' => '$(inherited) -framework "WebRTC" -ObjC',
      'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES'
    }



end
