Pod::Spec.new do |s|
    s.name              = 'KLCPaaSSDK'
    s.version           = '1.0.6'
    s.summary           = 'KLCPaasSDK'
    s.homepage          = 'https://github.com/Kandy-IO/'
    s.license 		= { :type => 'MIT', :file => 'mit-license.txt'}
    s.author            = { 'Name' => 'tolgat@netrd.com.tr' }
    s.platform          = :ios
    s.source            = { :git => 'https://github.com/tolgatan/KLCpaaSSDK.git', :tag => '1.0.6'}
    s.dependency 	'KLCPaaSWebRTC'
    #s.source_files      = 'KLCPaaSSDK.framework/Headers/*.h'
    s.ios.deployment_target   = '9.0'
    s.ios.vendored_frameworks = ['CPaaSSDK.framework',
      'CPaaSSDK.framework/Frameworks/CPUtilities.framework']
    s.preserve_paths = 'CPaaSSDK.framework/Frameworks/*.framework'
    s.pod_target_xcconfig = {'ENABLE_BITCODE' => 'NO'}



end
