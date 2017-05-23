#
# Be sure to run `pod lib lint DottedCircleProgressView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DottedCircleProgressView'
  s.version          = '1.0.0'
  s.summary          = 'DottedCircleProgressView is a progress view similar to modern Windows prgress indicators (dots running circle)'
  s.description      = 'DottedCircleProgressView is a progress view similar to modern Windows prgress indicators (dots running circle). This pod is written in Swift 3.0. Feel free to check it out and contact me if anything occurs.'

  s.homepage         = 'https://github.com/SergeyPetrachkov/DottedCircleProgressView'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'sergey petrachkov' => 'petrachkovsergey@gmail.com' }
  s.source           = { :git => 'https://github.com/SergeyPetrachkov/DottedCircleProgressView.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'DottedCircleProgressView/Classes/**/*'
end
