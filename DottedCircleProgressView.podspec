#
# Be sure to run `pod lib lint DottedCircleProgressView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DottedCircleProgressView'
  s.version          = '0.3.0'
  s.summary          = 'DottedCircleProgressView is a progress view similar to modern Windows prgress indicators (dots running circle)'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'DottedCircleProgressView is a progress view similar to modern Windows prgress indicators (dots running circle). This pod is written in Swift 3.0. Feel free to check it out and contact me if anything occurs.'

  s.homepage         = 'https://github.com/Petrachkov/DottedCircleProgressView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'sergey petrachkov' => 'petrachkovsergey@gmail.com' }
  s.source           = { :git => 'https://github.com/Petrachkov/DottedCircleProgressView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'DottedCircleProgressView/Classes/**/*'
  
  # s.resource_bundles = {
  #   'DottedCircleProgressView' => ['DottedCircleProgressView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
