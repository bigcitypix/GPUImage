Pod::Spec.new do |s|
  s.name     = 'GPUImage'
  s.version  = '0.1.17'
  s.license  = 'BSD'
  s.summary  = 'Fork of the original GPUImage repo for custom implementation'
  s.homepage = 'https://github.com/zakinaeem/GPUImage'
  s.author   = { 'Zaki Naeem' => 'zakinaeem@gmail.com' }
  s.source   = { :git => 'https://github.com/zakinaeem/GPUImage.git', :tag => "#{s.version}" }
  
  s.source_files = 'framework/Source/**/*.{h,m}'
  #s.resources = 'framework/Resources/*.png'
  s.requires_arc = true
  s.xcconfig = { 'CLANG_MODULES_AUTOLINK' => 'YES' }
  
  s.ios.deployment_target = '5.0'
  s.ios.exclude_files = 'framework/Source/Mac'
  s.ios.frameworks   = ['OpenGLES', 'CoreMedia', 'QuartzCore', 'AVFoundation']
  
  s.osx.deployment_target = '10.6'
  s.osx.exclude_files = 'framework/Source/iOS',
                        'framework/Source/GPUImageFilterPipeline.*',
                        'framework/Source/GPUImageMovie.*',
                        'framework/Source/GPUImageMovieComposition.*',
                        'framework/Source/GPUImageVideoCamera.*',
                        'framework/Source/GPUImageStillCamera.*',
                        'framework/Source/GPUImageUIElement.*'
  s.osx.xcconfig = { 'GCC_WARN_ABOUT_RETURN_TYPE' => 'YES' }
end
