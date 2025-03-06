#
# Be sure to run `pod lib lint MKIotCloudManager.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MKIotCloudManager'
  s.version          = '0.0.2'
  s.summary          = 'A short description of MKIotCloudManager.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/MOKO-iOS-Base-Library/IoTCloudManager'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lovexiaoxia' => 'aadyx2007@163.com' }
  s.source           = { :git => 'https://github.com/MOKO-iOS-Base-Library/IoTCloudManager.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '14.0'
  
  s.subspec 'Config' do |ss|
    ss.source_files = 'MKIotCloudManager/Classes/Config/**'
  end
  
  s.subspec 'MKNetwork' do |ss|
    ss.source_files = 'MKIotCloudManager/Classes/MKNetwork/**'
    
    ss.dependency 'MKIotCloudManager/Config'
    
    ss.dependency 'AFNetworking'
    ss.dependency 'MKBaseModuleLibrary'
  end
  
  s.subspec 'NetworkService' do |ss|
    ss.source_files = 'MKIotCloudManager/Classes/NetworkService/**'
        
    ss.dependency 'MKIotCloudManager/Config'
    ss.dependency 'MKIotCloudManager/MKNetwork'
    
    ss.dependency 'AFNetworking'
    ss.dependency 'MKBaseModuleLibrary'
  end
  
end
