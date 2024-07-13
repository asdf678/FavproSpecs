Pod::Spec.new do |s|
    s.name             = 'TensorFlowLiteC'
    s.version          = '32.14.0'
    s.authors          = 'Google Inc.'
    s.license          = { :type => 'Apache' }
    s.homepage         = 'https://github.com/tensorflow/tensorflow'
    s.source           = { :http => "file:///Volumes/Storage/project/favpro/tensorfflow_lite/ios2.14.0arm64/TensorFlowLiteC_framework32.14.0.zip" }
    s.summary          = 'TensorFlow Lite'
    s.description      = <<-DESC
  
    An internal-only pod containing the TensorFlow Lite C library that the public
    `TensorFlowLiteSwift` and `TensorFlowLiteObjC` pods depend on. This pod is not
    intended to be used directly. Swift developers should use the
    `TensorFlowLiteSwift` pod and Objective-C developers should use the
    `TensorFlowLiteObjC` pod.
                         DESC
  
    s.cocoapods_version = '>= 1.9.0'
    s.ios.deployment_target = '12.0'
  
    s.module_name = 'TensorFlowLiteC'
    s.library = 'c++'
  
    s.pod_target_xcconfig = {
        'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386 x86_64',  # 排除模拟器下的架构
        'ARCHS' => '$(ARCHS_STANDARD_64_BIT)'  # 设置为仅包含标准的 64 位架构
    }
  
    s.user_target_xcconfig = {
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386 x86_64',  # 排除模拟器下的架构
      'ARCHS' => '$(ARCHS_STANDARD_64_BIT)'  # 设置为仅包含标准的 64 位架构
    }

    s.vendored_frameworks = 'TensorFlowLiteC.framework'
  
    # s.default_subspec = 'Core'
  
    # s.subspec 'Core' do |core|
    #   core.vendored_frameworks = 'Frameworks/TensorFlowLiteC.xcframework'
    # end
  
    # s.subspec 'CoreML' do |coreml|
    #   coreml.weak_framework = 'CoreML'
    #   coreml.dependency 'TensorFlowLiteC/Core'
    #   coreml.vendored_frameworks = 'Frameworks/TensorFlowLiteCCoreML.xcframework'
    # end
  
    # s.subspec 'Metal' do |metal|
    #   metal.weak_framework = 'Metal'
    #   metal.dependency 'TensorFlowLiteC/Core'
    #   metal.vendored_frameworks = 'Frameworks/TensorFlowLiteCMetal.xcframework'
    # end
  end