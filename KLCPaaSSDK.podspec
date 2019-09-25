Pod::Spec.new do |s|
    s.name              = 'KLCPaaSSDK'
    s.version           = '1.1.0'
    s.summary           = 'KLCPaasSDK'
    s.homepage          = 'https://github.com/Kandy-IO/'
    s.license 		= { :type => 'MIT', :file => 'mit-license.txt'}
    s.author            = { 'Name' => 'tolgat@netrd.com.tr' }
    s.platform          = :ios
    s.source            = { :git => 'https://github.com/tolgatan/KLCpaaSSDK.git', :tag => '1.1.0'}
    #s.dependency 	'KLCPaaSWebRTC'
    #s.source_files      = 'KLCPaaSSDK.framework/Headers/*.h'
    s.ios.deployment_target   = '9.0'
    s.ios.vendored_frameworks = ['CPaaSSDK.framework',
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
    s.pod_target_xcconfig = {}
    s.pod_target_xcconfig = {
      "OTHER_LDFLAGS" => '$(inherited) -framework "WebRTC"',
      "CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES" => 'YES',
      "ENABLE_BITCODE" => 'NO'
      "FRAMEWORK_SEARCH_PATHS" => '$(inherited) "${PODS_ROOT}/KLCPaaSWebRTC/Frameworks"'
    }



end
